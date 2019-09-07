#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

#if defined(__AVR_ATmega8__)
#define _TCCA TCCR1A
#define _TCCB TCCR1B
#define _TIFR TIFR
#define _TOV  TOV1
#elif defined(__AVR_ATmega48P__)
#define _TCCA TCCR0A
#define _TCCB TCCR0B
#define _TIFR TIFR0
#define _TOV  TOV0
#else
#error Unknown device! Add it to main.c and set the timer properly
#endif

int main() {
	wdt_enable(WDTO_2S);
    // configure timer 0 for a rate of 16M/(256 * 256) = ~244Hz
    _TCCA = 0;          // timer 0 prescaler: 256
	_TCCB = 4;

	//debug LED - output
	DDRD |= (1<<PD6);

	PORTD = 0;

	while(1) {
		wdt_reset();


		// check timer if we need periodic reports
		if (_TIFR & (1 << _TOV)) {
			_TIFR = (1 << _TOV); // reset flag
			PORTD ^= (1<<PD6);
		}
	}

	return 0;
}

