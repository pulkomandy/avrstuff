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
    TCCR0 = 4;          // timer 0 prescaler: 256

	//debug LED - output
	DDRB |= 255;

	PORTB = 0xAA;

	while(1) {
		wdt_reset();


		// check timer if we need periodic reports
		if (TIFR & (1 << TOV0)) {
			TIFR = (1 << TOV0); // reset flag
			PORTB++;
		}
	}

	return 0;
}

