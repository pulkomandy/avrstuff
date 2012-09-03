
/* This project is targetted at the VUSBDev hacking board. */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

#include "usbdrv/usbdrv.h"
#include "shared.h"

// IO pins:
// PIC <> AVR
// PGC    PB3
// PGD    PB2
// PGM    PB1
// VPP    PB0
// VDD    VCC
// VSS    GND
#define PGC 8
#define PGD 4
#define PGM 2
#define VPP 1


// TODO is it wise to use a timer or two for bit patterns generation ? (see
// CrO2 architecture)
//
// As usual the SPI, TWI and USART are not useable, because we need 6 and 16 bit
// communcations in the ICSP protocol. So we are bit banging bhe ICSP protocol.
// Timers may make it easier to do that in parallel with the USB handling, since
// timings are in the nanosecond range.


uint8_t command;
uint16_t ICSP_data;


int main() {
	// Init
	wdt_enable(WDTO_2S);

	// USB
	usbInit();
	sei();

	// Enter Low Voltage ICSP mode on the PIC
	PORTB &= ~(VPP|PGM|PGD|PGC); // Start with all pin low
	DDRB |= VPP|PGM|PGD|PGC;	// set them as outputs
	_delay_us(4); // Wait for some time
	PORTB |= PGM; // Enable low voltage programming
	PORTB |= VPP; // Enter programming mode

	while(1) {
		wdt_reset();
		usbPoll();
	}
}


void ICSP_command(uint8_t cmd)
{
	for(int i = 6; --i>= 0;)
	{
		PORTB |= PGC;
		if(cmd & 1)
			PORTB |= PGD;
		else
			PORTB &= ~PGD;
		PORTB &= ~PGC;

		cmd >>= 1;
	}

	_delay_us(1);
}


void ICSP_write(uint8_t cmd, uint16_t data)
{
	ICSP_command(cmd);

	// send data
	for(int i = 16; --i>= 0;)
	{
		PORTB |= PGC;
		if(data & 1)
			PORTB |= PGD;
		else
			PORTB &= ~PGD;
		PORTB &= ~PGC;

		data >>= 1;
	}
	_delay_us(1);
}


void ICSP_read(uint8_t cmd, uint16_t *const data)
{
	ICSP_command(cmd);

	// get data
	for(int i = 16; --i>= 0;)
	{
		PORTB |= PGC;
		*data |= (PORTB & PGD) / PGD;
		PORTB &= ~PGC;

		*data <<= 1;
	}
	_delay_us(1);
}


uint8_t usbFunctionSetup(uint8_t data[8]) {
	usbRequest_t *rq = (void *)data;

	switch(rq->bRequest)
	{
		/* HOST to DEVICE data transfers requests */
		case LoadConfigWord:
		case LoadCodeWord:
		case LoadDataWord:
		{
			// TODO check there is only and exactly 16 bits of data

			/* Read the 16-bit data */
			ICSP_data = (rq->wValue.bytes[0] << 8) | rq->wValue.bytes[0];
			command = rq->bRequest;

			// send the command and data
			ICSP_write(command, ICSP_data);

			// Return the number of bytes we wrote (none here)
			return 0;
		}

		/* CONFIGURATION commands (no data is transferred) */
		case NextAddress:
		case BeginEraseProgram:
		case BeginProgramOnly:
		case BulkEraseCode:
		case BulkEraseData:
		case BulkEraseConfig1:
		case BulkEraseConfig2:
		{
			command = rq->bRequest;

			// send the command
			ICSP_command(command);

			return 0; 
		}

		/* DEVICE to HOST data transfers requests */
		case ReadCodeWord:
		case ReadDataWord:
		{
			command = rq->bRequest;
			// TODO send the command and get the result
			ICSP_read(command, &ICSP_data);
			usbMsgPtr = (uint8_t*)&ICSP_data;

			return 2; // We send 2 bytes back
		}
	}
	return 0;
}

