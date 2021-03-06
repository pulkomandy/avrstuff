#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include "../../../libs/ps2_keyboard/ps2_keyboard.h"

static volatile uint8_t key;

const uint8_t at2xt[128] PROGMEM = {
// 0   1   2   3    4    5    6    7    8    9    A    B    C    D    E    F
'?' ,0x43,'?' ,0x3F,0x3D,0x3B,0x3C,0x58,0x64,0x44,0x42,0x40,0x3E,0x0F,0x29,'?', // 0
0x65,0x38,0x2A,0x70,0x1D,0x10,0x02,'?' ,0x66,0x71,0x2C,0x1F,0x1E,0x11,0x03,0x5B, // 1
0x67,0x2E,0x2D,0x20,0x12,0x05,0x04,0x5C,0x68,0x39,0x2F,0x21,0x14,0x13,0x06,0x5D, // 2
0x69,0x31,0x30,0x23,0x22,0x15,0x07,0x5E,0x6A,0x72,0x32,0x24,0x16,0x08,0x09,0x5F, // 3
0x6B,0x33,0x25,0x17,0x18,0x0B,0x0A,0x6C,'?' ,0x34,0x35,0x26,0x27,0x19,0x0C,'?', // 4
0x6D,0x73,0x28,0x74,0x1A,0x0D,'?' ,'?' ,0x3A,0x36,0x1C,0x1B,0x75,0x2B,0x63,0x76, // 5
'?' ,0x56,0x77,'?' ,0x79,'?' ,0x0E,0x7B,'?' ,0x4F,0x7D,0x4B,0x47,0x7E,'?' ,0x6F, // 6
0x52,0x53,0x50,0x4C,0x4D,0x48,0x01,0x45,0x57,0x4E,0x51,0x4A,0x37,0x49,0x46,'?'  // 7
};

// 83 > 41 (F7)
// 84 > 54 (SysRq)

void callback()
{
	// Ignore all keys above 0x80, and importantly ignore 0xE0 from extended keys.
	if (kbd_data < 0x80) {
		key = pgm_read_byte(&(at2xt[kbd_data]));
		if(release)
			key |= 0x80;
	}
}


int main() {
	key = 0xAA;
	init_keyboard(); // PS/2 KBD handler


#ifdef __AVR_ATtiny2313__
#define PORTXT PORTD
#define DDRXT DDRD
#define PINXT PIND
	static const int PCLK = (1<<PD0);
	static const int PDAT = (1<<PD1);
#else
#define PORTXT PORTB
#define DDRXT DDRB
#define PINXT PINB
	static const int PCLK = (1<<PB1);
	static const int PDAT = (1<<PB2);
#endif

	static const int delay = 12;

	// XT init - configure pins directions
	PORTXT &= ~(PCLK | PDAT);
	DDRXT &= ~(PCLK | PDAT); // both pins as inputs (floating)

	uint8_t k;
	while(1) {
		while ((PINXT & (PDAT|PCLK)) != (PDAT|PCLK))
			; // Wait for PC to be ready to receive data

		while(key == 0xFF)
			; // Wait for data to send

		k = key; // local copy so we can receive another code from PS/2
		// before we're done sending this one.
		key = 0xFF;

		// SEND START BIT
		DDRXT &= ~PDAT; // DAT HI
		_delay_us(delay);
		DDRXT |= PCLK; // CLK LOW
		_delay_us(delay);
		DDRXT &= ~PCLK; // CLK HI

		for(int i = 0; i < 8; i++)
		{
			if (k & 1)
				DDRXT &= ~PDAT;
			else
				DDRXT |= PDAT;

			_delay_us(delay);
			DDRXT |= PCLK; // CLK LOW
			_delay_us(delay);
			DDRXT &= ~PCLK; // CLK HI

			k >>= 1;
		}

		DDRXT &= ~PDAT; // DAT HI

		_delay_us(delay * 2);
	}

	return 0;
}

