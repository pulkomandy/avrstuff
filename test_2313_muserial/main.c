#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

int main() {
	wdt_enable(WDTO_2S);
    // configure timer 0 for a rate of 16M/(256 * 256) = ~244Hz
    TCCR0A = 0;          // timer 0 prescaler: 256
	TCCR0B = 4;

	//debug LED - output
	DDRD |= 255;

	PORTD = 0;

	// Serial PORT
	UBRRH = 10;
	UBRRL = 0;

	UCSRB = (1<<RXEN) |(1<<TXEN);

	while(1) {
		wdt_reset();


		// check timer if we need periodic reports
		if (TIFR & (1 << TOV0)) {
			TIFR = (1 << TOV0); // reset flag
			PORTD ^= (1<<PD6);

			UDR = 'H';
		}
	}

	return 0;
}

