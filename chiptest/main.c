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

#define BAUD 9600 // Safe value even for low clocks. (used by setbaud.h)

int main() {
	wdt_enable(WDTO_2S);
    // configure timer 0 for a rate of FCPU/(256 * 256)
    TCCR0A = 0;          // timer 0 prescaler: 256
	TCCR0B = 4;

	//debug LED - output
	DDRLED |= 255;

	PORTLED = 0;

	// Serial baudrate - use avrlibc magic to compute the baudrate register
	// values.
	#include <util/setbaud.h>
	UBRRH = UBRRH_VALUE;
	UBRRL = UBRRL_VALUE;
	#if USE_2X
		UCSRA |= (1 << U2X);
	#else
		UCSRA &= ~(1 << U2X);
	#endif

	// Enable the serial port.
	UCSRB = (1<<RXEN) |(1<<TXEN);
	UCSRC = (1 << UCSZ1) | (1 << UCSZ0);

	// Let's rock!
	uint8_t counter = 0;
	for(;;) {
		wdt_reset();

		// Wait for timer overflow...
		if (TIFR & (1 << TOV0)) {
			TIFR = (1 << TOV0); // reset flag
			counter++;
		}

		if (counter == 0)
		{
			PORTLED ^= LEDBIT; // Toggle the LED
			UDR = 'H'; // Send a byte to the UART
		}
	}

	return 0;
}

