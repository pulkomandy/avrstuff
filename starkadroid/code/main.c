#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

#include "usbdrv/usbdrv.h"

#define DDRIN DDRB
#define PORTIN PORTB
#define PININ PINB

#define DDROUT DDRC
#define PORTOUT PORTC

static uint8_t reportBuffer[5];
static uint8_t buttons[6];
static uint8_t idleRate;

void main() {
	wdt_enable(WDTO_2S);

	// USB
	usbInit();
	sei();
	bool doReport;

	DDROUT = 0; // Keyboard matrix out
	PORTOUT = 255; // Enable pull up
		// We put all pins as input then output a 0 in only one at a time.
		// All the other pins are high-Z to avoid short circuits when many
		// buttons are pressed.
	DDRIN = 0; // Keyboard matrix in
	PORTIN = 255; // Enable pull up

    // configure timer 0 for a rate of 16M/(256 * 256) = ~244Hz
    TCCR0 = 4;          // timer 0 prescaler: 256

	reportBuffer[0] = 0;
	doReport = false;

	while(1) {
		wdt_reset();
		usbPoll();

		for(int i = 0; i != 6; i++) {
			DDROUT = 1<<i;
			PORTOUT = ~(1<<i);
			_delay_us(63);
			if (buttons[i] != ((~PININ)&0x3F))
			{
				doReport = true;
				buttons[i] = (~PININ)&0x3F;
			}
		}
		DDROUT = 0;
		PORTOUT = 255;

		// Copy lines 1 to 3 to the same lines in the report
		for(int i=1; i != 4; i++) {
			reportBuffer[i] = buttons[i];
		}

		// Dispatch line 0 to report 1,2,3 (2 buttons each)
		reportBuffer[1] |= (buttons[0] << 4)&0xC0;
		reportBuffer[2] |= (buttons[0] << 2)&0xC0;
		reportBuffer[3] |= (buttons[0])&0xC0;

		// Copy part line 6
		reportBuffer[4] = buttons[5]; // 2 btns left here
		//reportBuffer[0] = buttons[4]; // this line is unused anyway, report as
									  // axis

		if (doReport && usbInterruptIsReady()) {
			usbSetInterrupt(reportBuffer, sizeof(reportBuffer));
			doReport = false;
		}
	}
}


static uint8_t protocolVer = 1;
uint8_t expectReport = 0;


char PROGMEM usbHidReportDescriptor[USB_CFG_HID_REPORT_DESCRIPTOR_LENGTH] = {
	0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
    0x09, 0x04,                    // USAGE (Joystick)
    0xa1, 0x01,                    // COLLECTION (Application)
    0xa1, 0x02,                    //   COLLECTION (Logical)

    0x75, 0x04,	                   //     REPORT_SIZE (8)
    0x95, 0x02,                    //     REPORT_COUNT (2)
    0x15, 0x00,                    //     LOGICAL_MINIMUM (0)
    0x25, 0x0F,                    //     LOGICAL_MAXIMUM (15)
    0x35, 0x00,                    //     PHYS_MINIMUM (0)
    0x45, 0x0F,                    //     PHYS_MAXIMUM (15)
    0x09, 0x30,                    //     USAGE (X)
    0x09, 0x31,                    //     USAGE (Y)
    0x81, 0x02,                    //     INPUT (Data,Var,Abs)

    0x75, 0x01,                    //     REPORT_SIZE (1)
    0x95, 0x20,                    //     REPORT_COUNT (32)
    0x25, 0x01,                    //     LOGICAL_MAXIMUM (1)
    0x45, 0x01,                    //     PHYSMAX (1)
    0x05, 0x09,                    //     USAGE_PAGE (Button)
    0x19, 0x01,                    //     USAGE_MINIMUM (Button 1)
    0x29, 0x20,                    //     USAGE_MAXIMUM (Button 32)
    0x81, 0x02,                    //     INPUT (Data,Var,Abs)
    0xc0,                          //   END_COLLECTION
    0xc0                           // END_COLLECTION
};


uint8_t usbFunctionSetup(uint8_t data[8]) {
    usbRequest_t *rq = (void *)data;
    usbMsgPtr = reportBuffer;
    if ((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS) {
        // class request type
        if (rq->bRequest == USBRQ_HID_GET_REPORT) {
            // wValue: ReportType (highbyte), ReportID (lowbyte)
            // we only have one report type, so don't look at wValue
            return sizeof(reportBuffer);
        } else if (rq->bRequest == USBRQ_HID_SET_REPORT) {
            if (rq->wLength.word == 1) {
                // We expect one byte reports
                expectReport = 1;
                return 0xff; // Call usbFunctionWrite with data
            }
        } else if (rq->bRequest == USBRQ_HID_GET_IDLE) {
            usbMsgPtr = &idleRate;
            return 1;
        } else if (rq->bRequest == USBRQ_HID_SET_IDLE) {
            idleRate = rq->wValue.bytes[1];
        } else if (rq->bRequest == USBRQ_HID_GET_PROTOCOL) {
            if (rq->wValue.bytes[1] < 1) {
                protocolVer = rq->wValue.bytes[1];
            }
        } else if(rq->bRequest == USBRQ_HID_SET_PROTOCOL) {
            usbMsgPtr = &protocolVer;
            return 1;
        }
    } else {
        // no vendor specific requests implemented
    }
    return 0;
}

uint8_t usbFunctionWrite(uchar *data, uchar len) {
    expectReport = 0;
    return 0x01;
}

