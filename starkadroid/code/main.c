#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

#include "usbdrv/usbdrv.h"

static uint8_t reportBuffer[5]; 
static uint8_t idleRate;

void main() {
	uint8_t idleCounter = 0;

	wdt_enable(WDTO_2S);

	// USB
	usbInit();
	sei();
	bool doReport;

	DDRB = 0; // Keyboard matrix out
	PORTB = 255; // Enable pull up
		// We put all pins as input then output a 0 in only one at a time.
		// All the other pins are high-Z to avoid short circuits when many buttons are pressed.
	DDRC = 0; // Keyboard matrix in
	PORTC = 255; // Enable pull up

    // configure timer 0 for a rate of 16M/(256 * 256) = ~244Hz
    TCCR0 = 4;          // timer 0 prescaler: 256
	
	while(1) {
		wdt_reset();
		usbPoll();

		doReport = false;
		for(int i=0; i < 5; i++) {
			DDRB = ~(1<<i);
			PORTB = ~(1<<i);
			reportBuffer[i] = (~PINC)&0x3F;
		}

		DDRB = ~(1<<5);
		PORTB = ~(1<<5);
		reportBuffer[0] |= (~PINC)<<6 & 0xC0;
		reportBuffer[1] |= (~PINC)<<4 & 0xC0;
		reportBuffer[2] |= (~PINC)<<2 & 0xC0;
		// reportBuffer[3] |= (~PINC)<<0 & 0xC0; // These are not existing pins...

		DDRB = 255;
		PORTB = 255;

		if (usbInterruptIsReady()) {
			usbSetInterrupt(reportBuffer, sizeof(reportBuffer));
//			LEDOFF;
			doReport = false;
		}

		if (TIFR & (1 << TOV0)) {
			TIFR = (1 << TOV0); // reset flag

			if(++idleCounter > 4){ // yes, but not yet
				idleCounter -= 5; // 22ms in units of 4ms
			} else { // yes, it is time now
				idleCounter = idleRate;
				if (usbInterruptIsReady()) {
					usbSetInterrupt(reportBuffer, sizeof(reportBuffer));
				}
			}
		}
	}
}


static uint8_t protocolVer = 1;
uint8_t expectReport = 0;


char PROGMEM usbHidReportDescriptor[USB_CFG_HID_REPORT_DESCRIPTOR_LENGTH] = {
    0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
    0x09, 0x05,                    // USAGE (Game Pad)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x09, 0x01,                    //   USAGE (Pointer)
    0xa1, 0x00,                    //   COLLECTION (Physical)
    0x09, 0x30,                    //     USAGE (X)
    0x09, 0x31,                    //     USAGE (Y)
    0x15, 0xff,                    //     LOGICAL_MINIMUM (-1)
    0x25, 0x01,                    //     LOGICAL_MAXIMUM (1)
    0x75, 0x02,                    //     REPORT_SIZE (2)
    0x95, 0x02,                    //     REPORT_COUNT (2)
    0x81, 0x02,                    //     INPUT (Data,Var,Abs)
    0xc0,                          //   END_COLLECTION
    0x05, 0x09,                    //   USAGE_PAGE (Button)
    0x19, 0x01,                    //   USAGE_MINIMUM (Button 1)
    0x29, 0x24,                    //   USAGE_MAXIMUM (Button 36)
    0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
    0x25, 0x01,                    //   LOGICAL_MAXIMUM (1)
    0x75, 0x01,                    //   REPORT_SIZE (1)
    0x95, 0x24,                    //   REPORT_COUNT (36)
    0x81, 0x02,                    //   INPUT (Data,Var,Abs)
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

