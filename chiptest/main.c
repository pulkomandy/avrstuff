#include <usart.h>

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

// muSerial: ATTiny2313 - LED = PD6
// K4KUSB: ATTiny2313 - LED = PB2
// STK500: anything, PORTD is convenient if available.
#define DDRLED DDRC
#define PORTLED PORTC
#define LEDBIT (1 << PC2)

int main() {
	wdt_enable(WDTO_2S);
    // configure timer 0 for a rate of FCPU/(256 * 256)
#ifdef __AVR_ATtiny2313__
    TCCR0A = 0;          // timer 0 prescaler: 256
	TCCR0B = 4;
#else
	TCCR0 = 6; // timer 0 prescaler: 256
#endif

	//debug LED - output
	DDRLED |= LEDBIT;
	PORTLED &= ~LEDBIT;

	USARTInit();

	// Let's rock!
	uint8_t counter = 0;
	char c = 'a';
	for(;;) {
		wdt_reset();

		// Wait for timer overflow...
		if (TIFR & (1 << TOV0)) {
			TIFR = (1 << TOV0); // reset flag
			counter++;

			if (counter == 0)
			{
				PORTLED ^= LEDBIT; // Toggle the LED
				USARTWriteChar(c++); // Send a byte to the UART
				if (c > 'z')
					c = 'a';
			}
		}
	}

	return 0;
}

