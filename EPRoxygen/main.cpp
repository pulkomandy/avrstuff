#define _XOPEN_SOURCE 700

// C99
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// POSIX/XSI
#include <getopt.h>

#include "device.h"
#include "27c020.h"
#include "at29c040.h"


int main(int argc, char* argv[])
{
	char c;
	const char* file = NULL;
	char opcode = 0;
	int port_base = 0x378;
	Device* device = NULL;
	int error = 0;

	fprintf(stderr, "EPRoxygen - UNIX driver for SEEIT EPR-02 ROM programmer\n"
		"Copyright 2012, Adrien Destugues <pulkomandy@pulkomandy.tk>\n"
		"Distributed under the terms of the MIT licence\n"
	);

	while((c = getopt(argc, argv, "p:d:r:w:e")) >= 0)
	{
		switch(c)
		{
			case '?':
			case ':':
				fprintf(stderr, "Unrecognized option -%c\n", optopt);
				// TODO print help
				error = -1;
				goto abort;
			case 'p':
				// Set port
				if(sscanf(optarg, "%d", &port_base) != 1)
				{
					fprintf(stderr, "Invalid I/O port address\n");
					error = -4;
					goto abort;
				}
				break;
			case 'd':
				// TODO Set device
				if (strcmp(optarg, "AT29C040") == 0)
				{
					device = new AT29C040();
				} else if(strcmp(optarg, "27C020") == 0)
				{
					device = new x27C020();
				} else {
					fprintf(stderr,"Unknown device (only AT29C040 is supported)\n");
					error = -3;
					goto abort;
				}
				break;
			case 'r':
			case 'w':
				// Set file
				file = optarg;
				// Fallthrough
			case 'e':
				// Set operation
				if (opcode != 0)
				{
					fprintf(stderr, "Multiple operations requested (only one of r,w,e is allowed)\n");
					error = -2;
					goto abort;
				}
				opcode = c;
		}
	}

	if (optind < argc)
	{
		fprintf(stderr, "Error parsing the command line before \"%s\"\n", argv[optind]);
		error = -7;
		goto abort;
	}

	if (opcode == 0)
	{
		fprintf(stderr, "No operation specified (one of r,w,e). Aborting.\n");
		error = -5;
		goto abort;
	}

	if (device == NULL)
	{
		fprintf(stderr, "No device specified.\n");
		error = -6;
		goto abort;
	}

	// Configure voltage and powerpins according to device
	if(device->setup(port_base) != 0)
	{
		error = -7;
		goto abort;
	}

	fprintf(stderr,"Now insert chip into socket, then press any key...\n");
	getchar();

	device->power();

	// Do action (program/erase/write)	
	switch(opcode)
	{
		case 'r':
			device->read(file);
			break;
		case 'w':
			device->write(file);
			break;
		case 'e':
			device->erase();
			break;
		default:
			fprintf(stderr, "!!? invalid operation ?!\n");
	}

abort:
	// TODO in case ioperm failed, delete will try to shutdown() and give a bus error...
	delete device;

	exit(error);
}

int Device::port;

