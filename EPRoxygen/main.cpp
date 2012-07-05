#define _XOPEN_SOURCE 700

// C99
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// POSIX/XSI
#include <getopt.h>

// FreeBSD
#include <osreldate.h>
#include <sys/types.h>
#include <machine/cpufunc.h>
#include <machine/sysarch.h>

#include "device.h"
#include "at29c040.h"

/* TODO
Linux compatibility (ioperm, reversed outb)
wrap IOs in a class to hide the mess (BSD/Linux)
wrap ROM access in a class as well (read or write a byte/block, and so on)
*/

int main(int argc, char* argv[])
{
	char c;
	const char* file;
	char opcode = 0;
	int port_base = 0x378;
	Device* device = NULL;

	puts("EPRoxygen - UNIX driver for SEEIT EPR-02 ROM programmer\n"
		"Copyright 2012, Adrien Destugues <pulkomandy@pulkomandy.tk>\n"
		"Distributed under the terms of the MIT licence\n"
	);

	while(c = getopt(argc, argv, "p:d:r:w:e"))
	{
		switch(c)
		{
			case '?':
			case ':':
				fprintf(stderr, "Unrecognized option -%c\n", optopt);
				// TODO print help
				exit(-1);
			case 'p':
				// Set port
				if(sscanf(optarg, "%d", &port_base) != 1)
				{
					fprintf(stderr, "Invalid I/O port address\n");
					exit(-4);
				}
				break;
			case 'd':
				// TODO Set device
				if (strcmp(optarg, "AT29C040"))
				{
					fprintf(stderr,"Unknown device (only AT29C040 is supported)\n");
					exit(-3);
				}
				device = new AT29C040();
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
					exit(-2);
				}
				opcode = c;
		}
	}

	if (opcode == 0)
	{
		fprintf(stderr, "No operation specified (one of r,w,e). Aborting.\n");
		exit(-5);
	}

	i386_set_ioperm(port_base, 3, true);

	// Configure voltage and powerpins according to device

	// Ask user to put ROM on socket

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
	}

	exit(0);
}



