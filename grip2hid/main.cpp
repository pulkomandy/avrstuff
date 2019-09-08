#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

#include "../libs/usart/usart.h"

#define GRIP_PORT PORTB
#define GRIP_DDR  DDRB
#define GRIP_PIN  PINB
#define GRIP_DAT_A  (1 << 0)
#define GRIP_CLK_A  (1 << 1)
#define GRIP_DAT_B  (1 << 3)
#define GRIP_CLK_B  (1 << 2)

class GrIP
{
public:
	GrIP()
	{
		word = 0;
		count = 0;
		state = 0;
	}

	bool PushBit(uint32_t bit)
	{
		word = (word << 1) | (bit & 1);
		count++;

		switch (state) {
			case 0:
				if ((word & 0x3F) != 0x1F) return false;
				count = 6;
				state = 1;
				break;
			case 1:
				if (count == 24) {
					state = 0;
					count = 0;
					return true;
				}
				break;
		}

		return false;
	}

	void Dump() {
		USARTWriteHex(word >> 16);
		USARTWriteHex(word >> 8);
		USARTWriteHex(word);
	}

private:
	uint32_t word;
	uint8_t count;
	uint8_t state;
};


int main() {
	GrIP pad[2];

	wdt_enable(WDTO_2S);

	// debug LEDs - output
	DDRD |= 0x7C;
	PORTD = 0;

	// GrIP input
	GRIP_PORT = 0; // Disable pull-ups
	GRIP_DDR = 0;  // Port as input
	uint8_t oldv = GRIP_PIN;

	USARTInit();
	USARTWriteChar('h');
	USARTWriteChar('\r');
	USARTWriteChar('\n');


	for (;;) {
		// Because the CPU is too slow, if we try to scan all pads at once we
		// don't manage to decode them (missed transitions). So we scan them
		// one at a time.
		// To scan all 4 gamepads this will take about 4 milliseconds, which
		// is not the best we could do, but is okay. When we have the real
		// hardware (with the CPU running at full 16MHz speed instead of crappy
		// 1MHz here), we can try to interleave them again (one just has to put
		// them all into a single for loop instead of separate loops for each).
		// Then we get to 1ms to scan all 4 pads in parallel, cool! And it
		// also fixes the problem mentionned below that when less pads are
		// connected, it will not slowdown waiting for one of them to timeout.

		// FIXME the loop to 255 here to wait for a bit isn't too nice. We
		// should rather use a timer with a known period?
		// Process pad1
		uint8_t i;
		for (i = 0; i < 255; i++) {
			wdt_reset();

			uint8_t newv = GRIP_PIN;

			if (!(newv & GRIP_CLK_A)) { // clock is down
				if (oldv & GRIP_CLK_A) { // and it was up at previous read
					// Read bit
					uint32_t bit = (newv & GRIP_DAT_A) != 0;
					i = 0;
					if (pad[0].PushBit(bit)) {
						pad[0].Dump();
						USARTWriteChar(' ');
						break;
					}
				}
			}
			oldv = newv;
		}

		// Process pad 2
		for (i = 0; i < 255; i++) {
			wdt_reset();

			uint8_t newv = GRIP_PIN;
			if (!(newv & GRIP_CLK_B)) { // clock is down
				if (oldv & GRIP_CLK_B) { // and it was up at previous read
					// Read bit
					uint32_t bit = (newv & GRIP_DAT_B) != 0;
					i = 0;
					if (pad[1].PushBit(bit)) {
						pad[1].Dump();
						USARTWriteChar(' ');
						break;
					}
				}
			}
			oldv = newv;
		}
		USARTWriteChar('\r');
		USARTWriteChar('\n');
	}

	return 0;
}


