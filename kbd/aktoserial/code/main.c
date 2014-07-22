#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>

#include "amiga_keyboard/amiga_keyboard.h"
#include "usbdrv/usbdrv.h"
#include "keycodes.h"

static uint8_t pressingCaps = 0;

const uint8_t PROGMEM keymatrix[0x70] = {
// 0         1            2            3            4          5          6           7            8            9              A             B             C             D             E              F
KEY_grave,   KEY_1,       KEY_2,       KEY_3,       KEY_4,     KEY_5,     KEY_6,      KEY_7,       KEY_8,       KEY_9,         KEY_0,        KEY_minus,    KEY_equals,   KEY_F11,       KEY_Reserved,  KEY_KP0,      //0
KEY_Q,       KEY_W,       KEY_E,       KEY_R,       KEY_T,     KEY_Y,     KEY_U,      KEY_I,       KEY_O,       KEY_P,         KEY_lbracket, KEY_rbracket, KEY_Reserved, KEY_KP1,       KEY_KP2,       KEY_KP3,      //1
KEY_A,       KEY_S,       KEY_D,       KEY_F,       KEY_G,     KEY_H,     KEY_J,      KEY_K,       KEY_L,       KEY_semicolon, KEY_apostroph,KEY_hash,     KEY_Reserved, KEY_KP4,       KEY_KP5,       KEY_KP6,      //2
KEY_Euro,    KEY_Z,       KEY_X,       KEY_C,       KEY_V,     KEY_B,     KEY_N,      KEY_M,       KEY_comma,   KEY_dot,       KEY_slash,    KEY_Reserved, KEY_KPcomma,  KEY_KP7,       KEY_KP8,       KEY_KP9,      //3
KEY_Spacebar,KEY_DELETE,  KEY_Tab,     KEY_KPenter, KEY_Return,KEY_ESCAPE,KEY_DeleteForward,KEY_Reserved,KEY_Reserved,KEY_Reserved,  KEY_KPminus,  KEY_Reserved, KEY_UpArrow,  KEY_DownArrow, KEY_RightArrow,KEY_LeftArrow,//4
KEY_F1,      KEY_F2,      KEY_F3,      KEY_F4,      KEY_F5,    KEY_F6,    KEY_F7,     KEY_F8,      KEY_F9,      KEY_F10,       KEY_Home, KEY_End, KEY_KPslash,  KEY_KPasterisk,KEY_KPplus,    KEY_F12,     //5
KEY_Reserved,KEY_Reserved,KEY_capslock,KEY_Reserved,KEY_Reserved,KEY_Reserved,KEY_Reserved,KEY_Reserved,KEY_Reserved,KEY_Reserved,KEY_Reserved,KEY_Reserved,KEY_Reserved,KEY_Reserved,  KEY_Reserved,  KEY_Reserved, //6
};

/**
 * The modmatrix-array contains positions of the modifier-keys in the matrix.
 * It is built in the same way as the keymatrix-array.
 * \sa keymatrix
 */
const uint8_t PROGMEM modmatrix[8] = { // contains positions of modifiers in the matrix
  // 0             1               2                 3         4         5         6                  7
MOD_SHIFT_LEFT,MOD_SHIFT_RIGHT,MOD_NONE,MOD_CONTROL_LEFT,MOD_ALT_LEFT,MOD_ALT_RIGHT, MOD_GUI_LEFT, MOD_GUI_RIGHT,
};

static uint8_t idleRate;
static uint8_t reportIndex = 2;
static uint8_t reportBuffer[8]; 

void fillReportBuffer(uint8_t key_code) {
	uint8_t key, modifier;
	key = pgm_read_byte(&keymatrix[key_code]);
	if (key_code >= 0x60 && key_code < 0x68)
		modifier = pgm_read_byte(&modmatrix[key_code - 0x60]);
	else
		modifier = MOD_NONE;
	if (key != KEY_Reserved && reportIndex < 8) {
		reportBuffer[reportIndex] = key; // set next available entry
		reportIndex++;
		if (key == KEY_capslock)
			pressingCaps = 1;
	}
	reportBuffer[0] |= modifier;
}


void emptyReportBuffer(uint8_t key_code) {
	
	uint8_t key, modifier;
	uint8_t i;
	key = pgm_read_byte(&keymatrix[key_code]);
	if (key_code >= 0x60 && key_code < 0x68)
		modifier = pgm_read_byte(&modmatrix[key_code - 0x60]);
	else
		modifier = MOD_NONE;
	if (key != KEY_Reserved) {
		for (i = 2; i < reportIndex; i++) {
			if (reportBuffer[i] == key) {
				for (; i < 7; i++)
					reportBuffer[i] = reportBuffer[i+1];
				reportBuffer[7] = 0;
				reportIndex--;
			}
		}
	}
	reportBuffer[0] &= ~modifier;
}


void usbSendReport(uint8_t mode, uint8_t key) {
    // buffer for HID reports. we use a private one, so nobody gets disturbed
    uint8_t repBuffer[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
    repBuffer[0] = mode;
    repBuffer[2] = key;
    while (!usbInterruptIsReady()); // wait
    usbSetInterrupt(repBuffer, sizeof(repBuffer)); // send
}


int main() {
	uint8_t idleCounter = 0;
    uint8_t updateNeeded = 0;

	wdt_enable(WDTO_2S);
    // configure timer 0 for a rate of 12M/(1024 * 256) = 45.78Hz (~22ms)
    TCCR0 = 5;          // timer 0 prescaler: 1024

	//debug LED - output
	DDRC |= (1<<PC5);
	DDRC |= (1<<PC4);

	// Keyboard
	uint8_t key_code = 255;
	memset(reportBuffer, 0, sizeof(reportBuffer)); // clear report buffer

	// USB
	usbInit();
	ak_init_keyboard(); 
	sei();

	while(1) {
		wdt_reset();
		usbPoll();

		updateNeeded = char_waiting;

		if (char_waiting) {
			key_code = ak_read_scancode();
			PORTC ^= (1<<PC4);
			PORTC ^= (1<<PC5);
			// if an update is needed, send the report
			if ((key_code & 1) == 0)
				fillReportBuffer(key_code>>1);
			else
				emptyReportBuffer(key_code>>1);
			if (usbInterruptIsReady())
				usbSetInterrupt(reportBuffer, sizeof(reportBuffer));
		}

		// check timer if we need periodic reports
		if (TIFR & (1 << TOV0)) {
			TIFR = (1 << TOV0); // reset flag
			if (idleRate != 0) { // do we need periodic reports?
				if(idleCounter > 4){ // yes, but not yet
					idleCounter -= 5; // 22ms in units of 4ms
				} else { // yes, it is time now
					idleCounter = idleRate;
					if (pressingCaps) {
						emptyReportBuffer(0x62);
						pressingCaps = 0;
					}
					if (usbInterruptIsReady())
						usbSetInterrupt(reportBuffer, sizeof(reportBuffer));
				}
			}

		}
	}

	return 0;
}

static uint8_t protocolVer = 1;
uint8_t expectReport = 0;

#define LED_NUM     0x01  ///< num LED on a boot-protocol keyboard
#define LED_CAPS    0x02  ///< caps LED on a boot-protocol keyboard
#define LED_SCROLL  0x04  ///< scroll LED on a boot-protocol keyboard
#define LED_COMPOSE 0x08  ///< compose LED on a boot-protocol keyboard
#define LED_KANA    0x10  ///< kana LED on a boot-protocol keyboard
uint8_t LEDstate = 0;     ///< current state of the LEDs


char PROGMEM usbHidReportDescriptor[USB_CFG_HID_REPORT_DESCRIPTOR_LENGTH] = {
	0x05, 0x01,   // USAGE_PAGE (Generic Desktop)
	0x09, 0x06,   // USAGE (Keyboard)
	0xa1, 0x01,   // COLLECTION (Application)
	0x05, 0x07,   //   USAGE_PAGE (Keyboard)
	0x19, 0xe0,   //   USAGE_MINIMUM (Keyboard LeftControl)
	0x29, 0xe7,   //   USAGE_MAXIMUM (Keyboard Right GUI)
	0x15, 0x00,   //   LOGICAL_MINIMUM (0)
	0x25, 0x01,   //   LOGICAL_MAXIMUM (1)
	0x75, 0x01,   //   REPORT_SIZE (1)
	0x95, 0x08,   //   REPORT_COUNT (8)
	0x81, 0x02,   //   INPUT (Data,Var,Abs)
	0x95, 0x01,   //   REPORT_COUNT (1)
	0x75, 0x08,   //   REPORT_SIZE (8)
	0x81, 0x03,   //   INPUT (Cnst,Var,Abs)
	0x95, 0x05,   //   REPORT_COUNT (5)
	0x75, 0x01,   //   REPORT_SIZE (1)
	0x05, 0x08,   //   USAGE_PAGE (LEDs)
	0x19, 0x01,   //   USAGE_MINIMUM (Num Lock)
	0x29, 0x05,   //   USAGE_MAXIMUM (Kana)
	0x91, 0x02,   //   OUTPUT (Data,Var,Abs)
	0x95, 0x01,   //   REPORT_COUNT (1)
	0x75, 0x03,   //   REPORT_SIZE (3)
	0x91, 0x03,   //   OUTPUT (Cnst,Var,Abs)
	0x95, 0x06,   //   REPORT_COUNT (6)
	0x75, 0x08,   //   REPORT_SIZE (8)
	0x15, 0x00,   //   LOGICAL_MINIMUM (0)
	0x25, 0x65,   //   LOGICAL_MAXIMUM (101)
	0x05, 0x07,   //   USAGE_PAGE (Keyboard)
	0x19, 0x00,   //   USAGE_MINIMUM (Reserved (no event indicated))
	0x29, 0x65,   //   USAGE_MAXIMUM (Keyboard Application)
	0x81, 0x00,   //   INPUT (Data,Ary,Abs)
	0xc0          // END_COLLECTION
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

/**
 * The write function is called when LEDs should be set. Normally, we get only
 * one byte that contains info about the LED states.
 * \param data pointer to received data
 * \param len number ob bytes received
 * \return 0x01
 */
uint8_t usbFunctionWrite(uchar *data, uchar len) {
    if (expectReport && (len == 1)) {
        LEDstate = data[0]; // Get the state of all 5 LEDs
		/* TODO
        if (LEDstate & LED_NUM) { // light up caps lock
            PORTLEDS &= ~(1 << LEDNUM);
        } else {
            PORTLEDS |= (1 << LEDNUM);
        }
        if (LEDstate & LED_CAPS) { // light up caps lock
            PORTLEDS &= ~(1 << LEDCAPS);
        } else {
            PORTLEDS |= (1 << LEDCAPS);
        }
        if (LEDstate & LED_SCROLL) { // light up caps lock
            PORTLEDS &= ~(1 << LEDSCROLL);
        } else {
            PORTLEDS |= (1 << LEDSCROLL);
        }
		*/
    }
    expectReport = 0;
    return 0x01;
}

