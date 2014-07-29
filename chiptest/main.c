#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

// muSerial: ATTiny2313 - LED = PD6
// K4KUSB: ATTiny2313 - LED = PB2
#define DDRLED DDRB
#define PORTLED PORTB
#define LEDBIT 1 << PB2

int main() {
	wdt_enable(WDTO_2S);
    // configure timer 0 for a rate of 16M/(256 * 256) = ~244Hz
    TCCR0A = 0;          // timer 0 prescaler: 256
	TCCR0B = 4;

	//debug LED - output
	DDRLED |= 255;

	PORTLED = 0;

	// Serial PORT
	UBRRH = 0;
	UBRRL = 10;

	UCSRB = (1<<RXEN) |(1<<TXEN);
	UCSRC = (1 << UCSZ1) | (1 << UCSZ0);

	while(1) {
		wdt_reset();


		// check timer if we need periodic reports
		if (TIFR & (1 << TOV0)) {
			TIFR = (1 << TOV0); // reset flag
			PORTLED ^= LEDBIT;

			UDR = 'H';
		}
	}

	return 0;
}

