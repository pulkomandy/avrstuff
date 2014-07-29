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
#define DDRLED DDRB
#define PORTLED PORTB
#define LEDBIT (1 << PB2)

#define BAUD 9600 // Safe value even for low clocks. (used by setbaud.h)

int main() {
	wdt_enable(WDTO_2S);
    // configure timer 0 for a rate of FCPU/(256 * 256)
    TCCR0A = 0;          // timer 0 prescaler: 256
	TCCR0B = 4;

	//debug LED - output
	DDRLED |= LEDBIT;
	PORTLED &= ~LEDBIT;

	USARTInit();

	// Let's rock!
	uint8_t counter = 0;
	for(;;) {
		wdt_reset();

		// Wait for timer overflow...
		if (TIFR & (1 << TOV0)) {
			TIFR = (1 << TOV0); // reset flag
			counter++;

			if (counter == 0)
			{
				PORTLED ^= LEDBIT; // Toggle the LED
				USARTWriteChar('H'); // Send a byte to the UART
			}
		}
	}

	return 0;
}

