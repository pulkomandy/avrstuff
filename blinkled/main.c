#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

#ifdef __AVR_ATmega48P__
#define TIFR TIFR0
#endif

int main() {
	wdt_enable(WDTO_2S);
    // configure timer 0 for a rate of 16M/(256 * 256) = ~244Hz
    TCCR0A = 0;          // timer 0 prescaler: 256
	TCCR0B = 4;

	//debug LED - output
	DDRD |= (1<<PD6);

	PORTD = 0;

	while(1) {
		wdt_reset();


		// check timer if we need periodic reports
		if (TIFR & (1 << TOV0)) {
			TIFR = (1 << TOV0); // reset flag
			PORTD ^= (1<<PD6);
		}
	}

	return 0;
}

