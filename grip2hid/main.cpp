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
	uint8_t count = 0;
	uint8_t state = 0;
};

int main() {
	wdt_enable(WDTO_2S);

	// debug LEDs - output
	DDRD |= 0xF0;
	PORTD = 0;

	// GrIP input
	DDRB = 0;
	uint8_t oldv = PINB;

	GrIP pad;

	for (;;) {
		wdt_reset();

		uint8_t newv = PINB;

		if (!(newv & 2)) { // clock is down
			if (oldv & 2) { // and it was up at previous read
				// Read bit
				uint32_t bit = (newv & 1) != 0;
				pad.PushBit(bit);
			}
		}
		oldv = newv;
	}

	return 0;
}


