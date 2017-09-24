#include <usart.h>

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

// Cnfigure the I/Os. We will use port C for columns (we put one of those to 0
// at a time) and port ?? for lines (we read this one and look for pressed keys
// in the column).
#define DDRCOL DDRC
#define PORTCOL PORTC
#define PINCOL PINC

#define PORTLINE PORTA
#define PINLINE PINA
#define DDRLINE DDRA

static uint8_t matrix[8];

int main() {
	// Enable the watchdog to reboot in case of crashes.
	wdt_enable(WDTO_2S);

	// By default, columns are configured as input (high impedance). We force
	// just one column at a time to the output low state. This way, even in
	// case of keyboard interferences, there is no short-circuit situation.
	PORTCOL = 0;
	DDRCOL = 0;

	// configure lines as inputs, with pull-up resistors.
	DDRLINE = 0;
	PORTLINE = 0xFF;

	// Let's configure the USART.
	USARTInit();

	// Let's rock!
	uint8_t column = 0;
	for(;;) {
		// We are alive
		wdt_reset();

		// Scan a column
		DDRCOL = 1 << column;

		// Let things settle after setting up the pin. We rely on internal
		// pull-ups to raise pins which are left unconnected, and this takes
		// some time.
		_delay_us(6);

		// - Read input (8 rows) - we invert is so that pressed key are "1"
		uint8_t read = ~PINLINE;

		// Check if there were any changes since previous scan
		if (read ^ matrix[column]) {
			// There was a change in this colum!
			// TODO scan each set bit and report press/release according to
			// the keyboard matrix
			USARTWriteChar('c');
			USARTWriteHex(column);
			USARTWriteChar(':');
			USARTWriteHex(read);

			// Update the matrix for next time so we don't re-report the same keys
			matrix[column] = read;

			if (read == 0) {
				USARTWriteChar('\r');
				USARTWriteChar('\n');
			} else
				USARTWriteChar(' ');
		}

		// Prepare next column
		column++;
		if (column > 7) {
			column = 0;
		}
	}

	return 0;
}

