#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

#include "usbdrv/usbdrv.h"

#define DDRIN DDRB
#define PORTIN PORTB
#define PININ PINB

#define DDROUT DDRC
#define PORTOUT PORTC

int state;
int step;

int main() {
//	wdt_enable(WDTO_2S);

	// USB
	sei();

	DDROUT = 255; // Keyboard matrix out
	PORTOUT = 255; // Enable pull up
		// We put all pins as input then output a 0 in only one at a time.
		// All the other pins are high-Z to avoid short circuits when many
		// buttons are pressed.
	DDRIN = 0; // Keyboard matrix in
	PORTIN = 255; // Enable pull up

	state = 0;
	step = 0;

	for(;;) {
		switch(state)
		{
			case 0:
				for(int i = 5; --i>=0;) {
					PORTOUT = ~(1<<i);
					_delay_ms(100);
					PORTOUT = 255;
					_delay_ms(300);
				}
				_delay_ms(500);
				break;
			case 1:
#define PWM 10000
				for(int j = PWM; j > 0; j -= 100)
				{
					PORTOUT = 255;
					_delay_us(j);
					PORTOUT = 0;
					_delay_us(PWM - j);
				}
				for(int j = PWM; j > 0; j -= 100)
				{
					PORTOUT = 0;
					_delay_us(j);
					PORTOUT = 255;
					_delay_us(PWM - j);
				}

				_delay_ms(500);
				break;

			case 2:
				for(int i = 16; --i>= 0;)
				{
					PORTOUT = i;
					_delay_ms(200);
				}
				break;

			case 3:
				for(int j = PWM; j > 0; j -= 100)
				{
					PORTOUT = ~3;
					_delay_us(j);
					PORTOUT = 3;
					_delay_us(PWM - j);
				}
				for(int j = PWM; j > 0; j -= 100)
				{
					PORTOUT = 3;
					_delay_us(j);
					PORTOUT = ~3;
					_delay_us(PWM - j);
				}

				_delay_ms(500);
				break;

			default: state = 0;
		}

		if (++step > 5) {
			step = 0;
			++state;
		}
	}
}


