#define F_CPU 16000000UL

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include "../../../libs/ps2_keyboard/ps2_keyboard.h"

static uint8_t key;

const uint8_t pcw[128] PROGMEM = {
// 0   1   2   3    4    5    6    7    8    9    A    B    C    D    E    F
'?' ,0x20,'?' ,0xA0,0x00,0x02,'?' ,0x12,'?' ,0x03,0xA4,'?' ,'?' ,0x84,0x26,'?', // 0
'?' ,0xA7,0x26,'?' ,0xA1,0x83,0x80,'?' ,'?' ,'?' ,0x87,0x74,0x85,0x73,0x81,'?', // 1
'?' ,0x76,0x77,0x75,0x72,0x70,0x71,'?' ,'?' ,0x57,0x67,0x65,0x63,0x62,0x61,'?', // 2
'?' ,0x56,0x66,0x54,0x64,0x53,0x60,'?' ,'?' ,'?' ,0x46,0x55,0x52,0x51,0x50,'?', // 3
'?' ,',' ,0x45,0x43,0x42,0x40,0x41,'?' ,'?' ,0x37,0x23,0x44,0x35,0x33,0x31,'?', // 4
'?' ,'?' ,'?' ,0x11,0x32,0x30,'?' ,'?' ,0x86,0x25,0x22,0x21,0x36,0x34,'?' ,'?', // 5
'?' ,'?' ,'?' ,'?' ,'?' ,'?' ,0x97,'?' ,'?' ,0x17,'?' ,0x15,0x24,'?' ,'?' ,'?', // 6
0x01,0xA6,0x07,0x16,0x05,0x14,0x82,0xA5,0x13,0x27,0x06,0xA3,0xA2,0x04,0x10,'?'  // 7
};


void callback()
{
	uint8_t key_code = 0;
	key_code = read_char(); // TODO this function is blocking. Can it disturb main?

	key = 0 /*pgm_read_byte(&(pcw[key_code]))*/;
	if(release)
		key |= 0x80;
}


int main() {
	key = 0xFF;
	init_keyboard(); // PS/2 KBD handler

	// PCW init - configure pins directions
	PORTB = 0;
	DDRB = 0; // PB2 and PB1 as inputs (floating)

	//debug LED - output
	DDRD |= (1<<PD6);

	static const int PCLK = 2;
	static const int PDAT = 4;

	uint8_t k;
	while(1) {
#if 0
		while ((PINB & 2) == 0)
			; // Wait for PC to be ready to receive data
#endif

PORTD ^= (1<<PD6);
		while(key == 0xFF)
			; // Wait for data to send

		k = k+1; /*key;*/ // local copy so we can receive another code from PS/2
		// before we're done sending this one.
		key = 0xFF;

		// SEND START BIT
		DDRB |= PCLK; // CLK LOW
		_delay_us(23);
		DDRB &= ~PDAT; // DAT HI
		_delay_us(9);

		for(int i = 0; i < 8; i++)
		{
			DDRB &= ~PCLK; // CLK HI
			_delay_us(66);
			DDRB |= PCLK; // CLK LOW
			_delay_us(23);
			if (k & 1)
				DDRB &= ~PDAT;
			else
				DDRB |= PDAT;

			_delay_us(9);

			k >>= 1;
		}

		DDRB &= ~PCLK; // CLK HI
		_delay_us(66);

	}

	return 0;
}

