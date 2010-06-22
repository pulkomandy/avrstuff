#include <inttypes.h>


void init_keybard();
	// Call this to set up the I/O pins
uint8_t read_char();
	// Wait for a char to come from the keyboard 
char render_scan_code(uint8_t);
	// Convert a keycode to a printable ASCII char
