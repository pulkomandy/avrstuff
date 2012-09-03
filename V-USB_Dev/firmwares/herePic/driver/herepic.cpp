/* HEREPIC - AVR based ICSP programmer for 16F6xx and 16F8xx chips
 * Copyright 2012, Adrien Destugues <pulkomandy@gmail.com>
 *
 * This file is distributed under the terms of the MIT licence
 */

// C++
#include <iostream>

// POSIX
#include <semaphore.h>
#include <unistd.h>

// Haiku
#include <USBKit.h>

#include "../shared.h"
#include "icsp.h"


// We need a subclass of USBRoster to enumerate devices.
class MyUSBRoster: public BUSBRoster {
	public:
		MyUSBRoster(BUSBDevice*& device, sem_t& deviceLock)
			: fDevice(device)
			, fDeviceLock(deviceLock)
		{
			Start();
		}

		~MyUSBRoster()
		{
			sem_destroy(&fDeviceLock);
			Stop();
		}

		/* The DeviceAdded hook will be called for all plugged devices.
		If we don't find the correct one, the method will also be called later,
		as devices are plugged. So we can wait for the right device to come in!
		*/
		status_t DeviceAdded(BUSBDevice* device)
		{
			if(device->VendorID() == 0x16c0 && device->ProductID() == 0x05DC
				&& strcmp(device->ManufacturerString(), "pulkomandy.tk") == 0
				&& strcmp(device->ProductString(), "HerePic") == 0)
			{
				fDevice = device;
				// Notify main thread it's ok to continue
				sem_post(&fDeviceLock);
			}
			return B_OK;
		}

		void DeviceRemoved(BUSBDevice* device)
		{
			// TODO send message to main app to tell there's a problem !
			// or we may even commit suicide at this point...
		}
	private:
		BUSBDevice*& fDevice;
		sem_t& fDeviceLock;
};


void usage(const char* progname)
{
	// print usage
	std::cout << progname << " - AVR based ICSP programmer for "
		"PIC16F62x and PIC16F87x" << std::endl <<
		"Written by Adrien Destugues <pulkomandy@gmail.com>"
		<< std::endl << std::endl <<
		"Usage:" << std::endl <<
		" -w file.hex    Write file to device" << std::endl <<
		" -r file.hex    Read device to file" << std::endl <<
		" -e             Erase device" << std::endl <<
		" -h             Display this help message" << std::endl;
}


int main(int argc, char** argv)
{
	// parse CLI args
	static const char* optstring = ":w:r:eh";

	int nextopt;
	signed char action = 0;
	const char* filename;

	do {
		nextopt = getopt(argc,argv, optstring);

		switch(nextopt)
		{
			case 'w':
			case 'r':
			case 'h':
			case 'e':
				// We get the filename in all cases, for h and e it will give
				// meaningless results but we won't be using it anyway
				filename = optarg;
				// store the action, but make sure we do it only once
				if (action > 0)
				{
					std::cerr << "multiple actions specified (only one of w,r,e is allowed)" << std::endl;
					action = -1;
				} else {
					action = nextopt;
				}
				break;
			case ':':
				std::cout << "option -" << (char)optopt << " needs an argument" << std::endl;
				break;
			case '?':
				std::cerr << "Unknown option: -" << (char)optopt << std::endl;
				break;
			case -1:
				// end of options
				break;
			default:
				std::cerr << "Command-line format error at argument " << optind
					<< std::endl;
				break;
		}
	} while(nextopt != -1);

	// If we found no valid action request, print usage and exit
	if (action <= 0 || action == 'h')
	{
		usage(argv[0]);
		// Exit code is EXIT_SUCCESS if we reach this by -h option. Otherwise
		// the arguments are incorrect
		exit(action < 0 ? action : 0);
	}

	// TODO handle the boring usb stuff... (might be nice to abstract it so we
	// can use both libusb and haiku usb kit)

	BUSBDevice* theDevice = NULL;
	sem_t deviceLock;

	sem_init(&deviceLock, false, 0);

	MyUSBRoster usbRoster(theDevice, deviceLock);
	usbRoster.Start();

	int deviceAvailable;
	// TODO we rely on the initial device scan being done when we get here. Is
	// that always true ? If not, we may print this message in cases where it
	// is not needed.
	sem_getvalue(&deviceLock, &deviceAvailable);
	if(deviceAvailable == 0)
	{
		std::cout << "Programmer hardware not detected. Please connect it now..." << std::endl;
	}

	// Wait for the device
	sem_wait(&deviceLock);

	ICSP icsp(*theDevice);

	// take action depending on command request in CLI
	switch(action)
	{
		case 'r':
			// read the chip
			icsp.Read(filename);
			break;
		case 'w':
			icsp.Write(filename);
			// Here, perform the programming cycle !
			break;
		case 'e':
			icsp.Erase();
			// erase the chip
			break;
	}

	exit(0);
}
