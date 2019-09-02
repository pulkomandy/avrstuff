#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

class GrIP
{
public:
	GrIP()
	{
		word = 0;
		count = 0;
		state = 0;
	}

	void PushBit(uint32_t bit)
	{
		word = (word << 1) | (bit & 1);
		count++;

		switch (state) {
			case 0:
				if ((word & 0x3F) != 0x1F) return;
				count = 6;
				state = 1;
				break;
			case 1:
				if (count == 11 || count == 16 || count == 21 || count == 24) {
					PORTD = word << 4;
				}
				if (count == 24) {
					state = 0;
					count = 0;
				}
				break;
		}
	}

private:
	uint32_t word = 0;
	uint32_t count = 0;
	uint32_t state = 0;
};

int main() {
	wdt_enable(WDTO_2S);
    // configure timer 0 for a rate of 16M/(256 * 256) = ~244Hz
    TCCR0A = 0;          // timer 0 prescaler: 256
	TCCR0B = 4;

	// debug LEDs - output
	DDRD |= 0xF0;

	// GrIP input
	DDRB = 0;

	PORTD = 0;
	GrIP pad;

	for (;;) {
		wdt_reset();

		// Wait for next bit
		while(!(PINB & 2));
		while(PINB & 2);

		// Read bit
		uint32_t bit = (PINB & 1) != 0;
		pad.PushBit(bit);
	}

	return 0;
}


