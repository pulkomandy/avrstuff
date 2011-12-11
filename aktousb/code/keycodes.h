/**
 * \file firmware/keycodes.h
 * \brief This file contains modifier- and keycode definitions according to the
 * USB-specifications for human interface devices.
 *
 * See usb.org's HID-usage-tables document, chapter 10 Keyboard/Keypad Page for
 * more codes: http://www.usb.org/developers/devclass_docs/Hut1_12.pdf
 * \author Ronald Schaten <ronald@schatenseite.de>
 * \version $Id: keycodes.h,v 1.1 2008-07-09 20:47:12 rschaten Exp $
 *
 * License: GNU GPL v2 (see License.txt)
 */

#ifndef __keycodes_h_included__
#define __keycodes_h_included__

/// Codes for modifier-keys.
enum modifiers {
    MOD_NONE          = 0,
    MOD_CONTROL_LEFT  = (1 << 0),
    MOD_SHIFT_LEFT    = (1 << 1),
    MOD_ALT_LEFT      = (1 << 2),
    MOD_GUI_LEFT      = (1 << 3),
    MOD_CONTROL_RIGHT = (1 << 4),
    MOD_SHIFT_RIGHT   = (1 << 5),
    MOD_ALT_RIGHT     = (1 << 6),
    MOD_GUI_RIGHT     = (1 << 7),
};

/// Codes for non-modifier-keys.
enum keycodes {
    KEY_Reserved = 0,     // unused
    KEY_ErrorRollOver,
    KEY_POSTFail,
    KEY_ErrorUndefined,
    KEY_A,                // 0x04
    KEY_B,
    KEY_C,
    KEY_D,
    KEY_E,
    KEY_F,
    KEY_G,
    KEY_H,
    KEY_I,
    KEY_J,
    KEY_K,
    KEY_L,
    KEY_M,                // 0x10
    KEY_N,
    KEY_O,
    KEY_P,
    KEY_Q,
    KEY_R,
    KEY_S,
    KEY_T,
    KEY_U,
    KEY_V,
    KEY_W,
    KEY_X,
    KEY_Y,
    KEY_Z,
    KEY_1,                //       1 and !
    KEY_2,                //       2 and @
    KEY_3,                // 0x20  3 and #
    KEY_4,                //       4 and $
    KEY_5,                //       5 and %
    KEY_6,                //       6 and ^
    KEY_7,                //       7 and &
    KEY_8,                //       8 and *
    KEY_9,                //       9 and (
    KEY_0,                // 0x27  0 and )
    KEY_Return,           // 0x28  enter
    KEY_ESCAPE,           // 0x29
    KEY_DELETE,           // 0x2A  backspace
    KEY_Tab,              // 0x2B
    KEY_Spacebar,         // 0x2C
    KEY_minus,            // 0x2D  - and _
    KEY_equals,           // 0x2E  = and +
    KEY_lbracket,         // 0x2F  [ and {
    KEY_rbracket,         // 0x30  ] and }
    KEY_backslash,        // 0x31  \ and |
    KEY_hash,             // 0x32  non-US # and ~
    KEY_semicolon,        // 0x33  ; and :
    KEY_apostroph,        // 0x34  ' and "
    KEY_grave,            // 0x35  grave accent and tilde
    KEY_comma,            // 0x36  , and <
    KEY_dot,              // 0x37  . and >
    KEY_slash,            // 0x38  / and ?
    KEY_capslock,         // 0x39
    KEY_F1,
    KEY_F2,
    KEY_F3,
    KEY_F4,
    KEY_F5,
    KEY_F6,
    KEY_F7,               // 0x40
    KEY_F8,
    KEY_F9,
    KEY_F10,
    KEY_F11,
    KEY_F12,
    KEY_PrintScreen,
    KEY_ScrollLock,
    KEY_Pause,            //       Break
    KEY_Insert,
    KEY_Home,
    KEY_PageUp,
    KEY_DeleteForward,
    KEY_End,
    KEY_PageDown,
    KEY_RightArrow,
    KEY_LeftArrow,        // 0x50
    KEY_DownArrow,
    KEY_UpArrow,
    KEY_NumLock,          //       Clear
    KEY_KPslash,
    KEY_KPasterisk,
    KEY_KPminus,
    KEY_KPplus,
    KEY_KPenter,
    KEY_KP1,              //       End
    KEY_KP2,              //       Down Arrow
    KEY_KP3,              //       Page Down
    KEY_KP4,              //       Left Arrow
    KEY_KP5,
    KEY_KP6,              //       Right Arrow
    KEY_KP7,              //       Home
    KEY_KP8,              // 0x60  Up Arrow
    KEY_KP9,              //       Page Up
    KEY_KP0,              //       Insert
    KEY_KPcomma,          //       Delete
    KEY_Euro,             //       non-US \ and |
    KEY_Application,

	KEY_Help = 0x75,
	KEY_KPLParen, // should be 0x182, but windows XP doesn't accept keycodes above 7F...
   KEY_KPRParen,	
};

#endif /* __keycodes_h_included__ */

