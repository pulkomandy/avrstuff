#include "at29c040.h"

#include <stdio.h>
#include <unistd.h>


AT29C040::AT29C040()
	: Device()
{
}

void AT29C040::power()
{
	Device::write(CTRL, 0b10011111 | CTRLmask);
	Device::write(VOLT, 0b11001000 | VOLTmask);
}

void Device::shutdown()
{
	// All pins of the ROM are put either in high-Z, or 0V when it's not
	// possible
	Device::write(CTRL, 0x62);
	Device::write(VOLT, 0x7F);
	outb(port + 2, NONE);
}

void AT29C040::read(const char* filename)
{
	if (!checkId()) {
		return;
	}
}

void AT29C040::write(const char* filename)
{
	if (!checkId()) {
		return;
	}
}

void AT29C040::erase(void)
{
	if (!checkId()) {
		return;
	}

	puts("Perfomring chip erase...");
}

bool AT29C040::checkId(void)
{
	// Chip enable
	Device::write(CTRL, CTRLmask | CE);
		// Address bits low, WE = 1, CE = 0, OE = 1
		// TC and TD = 1
	Device::write(VOLT, VOLTmask);
		// D and A OE = 0
		// VPP config ?
		// TA, TB, TE, TF = ?

	wr16(0x5555, 0xAA);
	wr16(0x2AAA, 0x55);
	wr16(0x5555, 0x90);

	// clear DOE for reading
	Device::write(VOLT, DOE | VOLTmask);
	
	usleep(10000);

	// Read the result now
	Device::write(ADR0, 0x00);
	Device::write(ADR1, 0x00);
	Device::write(CTRL, WE | CE | CTRLmask);
	uint8_t manufacturer = Device::read();

	getchar();

	Device::write(CTRL, OE | WE | CE | CTRLmask);
	Device::write(ADR0, 0x01);
	Device::write(CTRL, WE | CE | CTRLmask);

	uint8_t product = Device::read();

	// re enable DOE, we are going to write again...
	Device::write(CTRL, WE | OE | CE | CTRLmask);
	Device::write(VOLT, VOLTmask);

	wr16(0x5555, 0xAA);
	wr16(0x2AAA, 0x55);
	wr16(0x5555, 0xF0);
	usleep(10000);

	// Chip disable - we're done !
	Device::write(CTRL, 0xFF | CTRLmask);
	
	bool ok = (manufacturer == 0x1F && product == 0xA4);

	if (!ok)
	{
		fprintf(stderr, "Chip ID %X:%X does not match expected %X:%X\n",
			manufacturer, product, 0x1F, 0xA4);
	} else {
		fprintf(stderr, "AT29C040 detected successfully!\n");
	}

	return ok;
}
