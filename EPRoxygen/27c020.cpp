#include "27c020.h"

#include <stdio.h>
#include <unistd.h>


x27C020::x27C020()
	: Device()
{
}

void x27C020::power()
{
	Device::write(CTRL, 0b10011111 | CTRLmask);
	Device::write(VOLT, 0b11001000 | VOLTmask);
	outb(port + 2, NONE);
}

void x27C020::read(const char* filename)
{
	for (int address = 0; address < 256*1024; address++)
	{
		Device::write(VOLT, DOE | VOLTmask);
		Device::write(CTRL, CE | OE | WE | A17 | CTRLmask);
			usleep(1000);
		
		Device::write(ADR0, address);
			usleep(1000);
		Device::write(ADR1, address >> 8);
			usleep(1000);
		// TODO A16, A17
		Device::write(CTRL, WE | A17 | CTRLmask);
			usleep(1000);
		uint8_t val = Device::read();
		Device::write(CTRL, CE | OE | WE | A17 | CTRLmask);

		// TODO write to file, or stdout if file is null
		putc(val, stdout);
		// TODO flush every 512 bytes or so
		fflush(stdout);
	}
}

void x27C020::write(const char* filename)
{
	// TODO support it !
	puts("Writing not supported");
}

void x27C020::erase(void)
{
	// TODO return error
	puts("Erasing not supported");
}

