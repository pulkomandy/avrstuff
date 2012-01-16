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
static uint8_t cksum;

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
	readPos = 13;

	// Generate sync header (this never changes)
	int i;
	for (i = 0; i< 16; i++)
	{
		ioblock[i] = 1;
	}
	ioblock[16] = 0x3C;
	ioblock[17] = 0x5A;

	// Setup TIMER 1 for MFM pulses generation
	TCCR1A = (1<<COM1A0); // Enable OC1A output
	TCCR1A |= (1<<COM1A1); // Compare match will always SET OC1A instead of toggling it. Thus the output is always high.
	// CTC mode with OCR1A as MAXregister
	TCCR1B = (1<<WGM12);
	// "Official" values : 13063/6532 (closest to MO5 specified rate)
	// 9580 NOK
	// 9582 OK
	OCR1A = 9582; // 800us bit clock
	OCR1B = 4750; // Half-clock for 1 bits
	TIMSK = (1 << OCIE1B) | (1 << OCIE1A); // interrupts on both timer matches.
	TCCR1A |= (bit << FOC1A); // Force toggle of A (make sure output is a logic 1 to allow MO5 to detect tapedrive)

	DDRB |= 2; // OC1A/PB1 as output


	while(1) {
		wdt_reset();
		usbPoll();
		// TODO watch for motor on/off
	}
}


static inline void startGen()
{
	TCCR1A &= ~(1<<COM1A1);	// Toggle output on compare match
	TCCR1B |= (1<<CS10);	// Enable timer clock (prescaler = 1)
}


uint8_t usbFunctionSetup(uint8_t data[8]) {
	usbRequest_t *rq = (void *)data;

	switch(rq->bRequest)
	{
		case 0:
			{  /* CONFIGURE */
				status = rq->wValue.bytes[0];
				return 0;
			}
		case 1:
			{  /* RECEIVE/POLL DATA (TAPE > USB) */
				usbMsgPtr = ioblock;
				return 254; 
			}
		case 2:
			{
				/* SEND DATA (USB > TAPE) */
				/* Get ready, actual data will come in usbFunctionWrite */

				// store type of MO5 block + size in ioblock
				writePos = 20; // Leave space for Sync header, block type, and block size.
				ioblock[18] = rq->wValue.word;
				ioblock[19] = rq->wLength.word + 2; // Add blktype and cksum to data length
				blksz = rq->wLength.word + 21;
				cksum = 0;
				if (rq->wLength.word == 0)
				{
					// No data in this block - start generating now !
					ioblock[20] = 0; // checksum
					startGen();
				} else {
					return USB_NO_MSG; // Call usbFunctionWrite to send the data
				}
			}
		case 3:
			{
				// Read status
				status = PINC;
				usbMsgPtr = &status;
				return 1;
			}
	}
	return 0;
}

uint8_t usbFunctionWrite(uint8_t* data, uint8_t len)
{
	// The data for a single request will be sent as slices of up to 8 bytes.
	for (int i = 0; i < len; i++)
	{
		ioblock[writePos] = data[i];
		cksum -= data[i];
		writePos++;
	}

	ioblock[writePos] = cksum;

	if (writePos >= blksz - 1)
	{
		// start generating
		startGen();
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
			// Make sure output is high step 1: match action = force high level
			TCCR1A |= (1<<COM1A1);

			// Stop generating (and interrupts)
			TCCR1B &= ~(1<<CS10);
			readPos = 14;

			// make sure output is high step 2 : force a match.
			TCCR1A |= (1 << FOC1A);
		}
	}
}

ISR (TIMER1_COMPB_vect, ISR_NOBLOCK)
{
	TCCR1A |= (bit << FOC1A); // Force toggle of A on B compare when generating a 1 bit
}
