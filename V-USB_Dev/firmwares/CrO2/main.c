#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

#include "usbdrv/usbdrv.h"

static uint8_t ioblock[275]; // Max. Size of an MO5 standard block including sync header
static uint8_t status; // status bits
static uint16_t writePos;
static uint16_t blksz;

static uint16_t readPos;
static uint8_t bitpos;
static uint8_t bit; // Currently generated bit

int main() {
	// Init
	status = 0;
	writePos = 0;
	blksz = 0;

	wdt_enable(WDTO_2S);

	// USB
	usbInit();
	sei();

	bit = 1;
	bitpos = 0;
	readPos = 0;

	// Setup TIMER 1 for MFM pulses generation
	TCCR1A = (1<<COM1A0); // Enable OC1A output
	// CTC mode with OCR1A as MAXregister
	TCCR1B = (1<<WGM12) | (1<<CS10);
	OCR1A = 12800; // 800us bit clock
	OCR1B = 6400; // Half-clock for 1 bits
	TIMSK = (1 << OCIE1B) | (1 << OCIE1A); // interrupts on both timer matches.

	// TODO only start the timer when actually needed (start of block)
	// and stop it when done.
	DDRB |= 2; // OC1A/PB1 as output


	while(1) {
		wdt_reset();
		usbPoll();

		// TODO send data to tape !
	}
}


uint8_t usbFunctionSetup(uint8_t data[8]) {
	usbRequest_t *rq = (void *)data;

	usbMsgPtr = ioblock;
	switch(rq->bRequest)
	{
		case 0:
			{  /* CONFIGURE */
				status = rq->wValue.bytes[0];
				return 0;
			}
		case 1:
			{  /* RECEIVE/POLL DATA (TAPE > USB) */
				return 254; 
			}
		case 2:
			{
				/* SEND DATA (USB > TAPE) */
				/* Get ready, actual data will come in usbFunctionWrite */
				// TODO store type of MO5 block + size in ioblock
				writePos = 0;
				blksz = rq->wLength.word;
				return USB_NO_MSG; // Call usbFunctionWrite to send the data
			}
	}
	return 0;
}

uint8_t usbFunctionWrite(uint8_t* data, uint8_t len)
{
	// The data for a single request will be sent as slices of up to 8 bytes.
	for (int i = 0; i < len; i++)
	{
		// TODO leave place for sync header and block type+size
		ioblock[writePos++] = data[i];
	}

	// TODO compute checksum as we go

	return writePos>= blksz ? 1:0;
	// returns 0: "needs more data"
	// returns 1: "done"
	// returns FF: "error"
}

ISR (TIMER1_COMPA_vect)
{
	// generate next bit
	bit = (ioblock[readPos] >> bitpos) & 1;
	bitpos++;
	if (bitpos > 7)
	{
		bitpos = 0;
		readPos++;
		if (readPos > 270)
			readPos = 0; // TODO stop timer
	}
}

ISR (TIMER1_COMPB_vect)
{
	TCCR1A |= (bit << FOC1A); // Force toggle of A on B compare when generating a 1 bit
}
