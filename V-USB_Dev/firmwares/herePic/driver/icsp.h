/* HEREPIC - AVR-based ICSP programmer for microchip PIC16F6xx and 16F8xx devices
 * Copyright 2012, Adrien Destugues <pulkomandy@pulkomandy.tk>
 *
 * This file is distributed under the terms of the MIT licence.
 */

#include <string.h>

class ICSP
{
	public:
		ICSP(BUSBDevice& device)
			: fDevice(device)
		{
		}

		uint16_t Execute(ICSPCommands command, uint16_t param = 0)
		{
			// TODO send the command to the device
			uint16 length;
			uint8 reqType = USB_REQTYPE_VENDOR;
			if(command == ReadCodeWord || command == ReadDataWord)
			{
				length = 2;
				reqType |= USB_REQTYPE_DEVICE_OUT;
			} else {
				length = 0;
				reqType |= USB_REQTYPE_DEVICE_IN;
			}

			ssize_t result = fDevice.ControlTransfer(reqType, command, param, 0,
				length, &param);
			if (result == length) {
				// We transferred as much bytes as we wanted.
				// Everyone is happy !
				return param;
			} else {
				// Not enough bytes transferred, or the result is an error code
				std::cerr << "USB communication error " << result
					<< "(" << strerror(result) << ")" << std::endl;;
				return result;
			}
		}

		void Write(const char* filename)
		{
			std::cerr << "Sorry, this doesn't work yet !" << std::endl;
			exit(-4);
		}

		void Read(const char* filename)
		{
			std::cerr << "Sorry, this doesn't work yet !" << std::endl;
			exit(-4);
		}

		void Erase()
		{
			// Let's test some stuff...
			std::cout << std::hex;

			Execute(LoadConfigWord); // sets PC to 0x2000 to read CFG words
			for(int i = 8; --i >= 0;)
			{
				uint16_t word = Execute(ReadCodeWord);
				Execute(NextAddress);

				std::cout << word << " ";
			}
			std::cout << std::endl;
		}

	private:
		BUSBDevice& fDevice;
};
