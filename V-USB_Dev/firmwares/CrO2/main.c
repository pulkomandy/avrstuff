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
	bitpos = 7;
	readPos = 0;

	// Generate sync header (this never changes)
	int i;
	for (i = 0; i< 16; i++)
	{
		ioblock[i] = 1;
	}
	ioblock[i++] = 0x3C;
	ioblock[i++] = 0x5A;

	// HEAD block
	ioblock[i++] = 0x0;
	ioblock[i++] = 0x10;

	int j = i;
	ioblock[i++] = 'C';
	ioblock[i++] = 'r';
	ioblock[i++] = 'O';
	ioblock[i++] = '2';
	ioblock[i++] = ' ';
	ioblock[i++] = ' ';
	ioblock[i++] = ' ';
	ioblock[i++] = ' ';
	ioblock[i++] = 'B';
	ioblock[i++] = 'A';
	ioblock[i++] = 'S';
	ioblock[i++] = 0;
	ioblock[i++] = 0;
	ioblock[i++] = 0;
	uint8_t s = 0;
	for (;j<i;j++) s -= ioblock[j];
	ioblock[i++] = s;


	// Setup TIMER 1 for MFM pulses generation
	TCCR1A = (1<<COM1A0); // Enable OC1A output
	TCCR1A |= (1<<COM1A1); // Compare match will always SET OC1A instead of toggling it. Thus the output is always high.
	// CTC mode with OCR1A as MAXregister
	TCCR1B = (1<<WGM12);
	OCR1A = 13063; // 800us bit clock
	OCR1B = 6532; // Half-clock for 1 bits
	TIMSK = (1 << OCIE1B) | (1 << OCIE1A); // interrupts on both timer matches.
	TCCR1A |= (bit << FOC1A); // Force toggle of A (make sure output is a logic 1 to allow MO5 to detect tapedrive)

	DDRB |= 2; // OC1A/PB1 as output


	while(1) {
		wdt_reset();
		usbPoll();
		// TODO watch for motor on/off
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
//		ioblock[writePos] = data[i];
		writePos++;
	}

	// TODO compute checksum as we go

	if (writePos >= blksz)
	{
		// start generating
		TCCR1A &= ~(1<<COM1A1);
		TCCR1B |= (1<<CS10);
		blksz = 35;
		return 1;
	} else {
		return 0;
	}
	// returns 0: "needs more data"
	// returns 1: "done"
	// returns FF: "error"
}

ISR (TIMER1_COMPA_vect, ISR_NOBLOCK)
{
	// generate next bit
	bit = (ioblock[readPos] >> bitpos) & 1;
	bitpos--;
	if (bitpos > 7) // overflow ?
	{
		bitpos = 7;
		readPos++;
		if (readPos > blksz)
		{
			// Make sure output is high
			TCCR1A |= (1<<COM1A1);
			// Stop generating (and interrupts)
			TCCR1B &= ~(1<<CS10);
			readPos = 0;
			TCCR1A |= (1 << FOC1A);
		}
	}
}

ISR (TIMER1_COMPB_vect, ISR_NOBLOCK)
{
	TCCR1A |= (bit << FOC1A); // Force toggle of A on B compare when generating a 1 bit
}
