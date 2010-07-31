/* Amiga Keyboard reading on Atmel AVR
 * Copyright 2010, Adrien Destugues <pulkomandy@pulkomandy.ath.cx>
 * Distributed under the terms of the MIT Licence */

#include <inttypes.h>

extern volatile uint8_t char_waiting;

void ak_init_keyboard();
	// Call this to set up the I/O pins
uint8_t ak_wait_scancode();
	// Wait for a char to come from the keyboard 
uint8_t ak_read_scancode();
	// Get char from keyboard. Only call this if char_waiting  is set !
char ak_scancode_to_ascii(uint8_t);
	// Convert a keycode to a printable ASCII char
