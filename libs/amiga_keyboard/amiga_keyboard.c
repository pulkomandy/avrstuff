/* Amiga Keyboard reading on Atmel AVR
 * Copyright 2010, Adrien Destugues <pulkomandy@pulkomandy.ath.cx>
 * Distributed under the terms of the MIT Licence */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include "amiga_keyboard.h"
// #include "keymap.h"


//PIN configuration
#define AK_CLK PD3 /* Also INT1 */
#define AK_PORT PIND
#define AK_DATA PD4

volatile uint8_t kbd_data;
volatile uint8_t char_waiting;
uint8_t started;
uint8_t bit_count;
uint8_t shift;


// Notify the keyboard we got the last char right
static inline void acknowledge_char()
{
	// We have to pull down the "DATA" line
	
	// Set it as an input
	DDRD |= (1<<AK_DATA);

	// Down for 85 us
	PORTD &= ~(1<<AK_DATA);
	_delay_us(85);

	// Up again to let the keybord talk
	PORTD |= (1<<AK_DATA);

	// And it's now an input again
	DDRD &= ~(1<<AK_DATA);
}


// Interrupt vector - Triggered when there is activity on the clock line
ISR(INT1_vect)
{
	static char tmp_kdata;
	//make sure clock line is low, if not ignore this transition
	if(AK_PORT & (1<<AK_CLK)){
		return;
	}

	// First bit, reset everything then continue below
	if(!started){
		started = 1;
		bit_count = 0;
		tmp_kdata = 0;
	} 

	if(bit_count < 8) { //we started, read in the new bit
		//put a 1 in the right place of kdb_data if PC2 is high, leave
		//a 0 otherwise
		if(!(AK_PORT & (1<<AK_DATA))) tmp_kdata |= (128>>bit_count);
		bit_count++;
	} 
	
	if(bit_count >= 8)
	{  // enough bits
		started = 0;
		bit_count = 0;

		/*
		if(kbd_data == 0xF0){ //release code
			release = 1;
			kbd_data = 0;
			return;
		} else if (kbd_data == 0x12) { //hanlde shift key
			if(release == 0){
				shift = 1;
			} else {
				shift = 0;
				release = 0;
			}
			return;
		} else { //not a special character
			if(release){ //we were in release mode - exit release mode
				release = 0;
				//ignore that character
			} else {
				char_waiting = 1;
			}
		}*/
		kbd_data = tmp_kdata;
		char_waiting=1;
	}
}


/*
char ak_scancode_to_ascii(uint8_t data){
	char to_ret = pgm_read_byte(&(keymap[data])); //grab character from array
	if(shift) to_ret -= 0x20;
	return to_ret;
}
*/

uint8_t ak_wait_scancode(){
	while(!char_waiting);
	return ak_read_scancode();
}


uint8_t ak_read_scancode() {
	while ((AK_PORT & (1<<AK_CLK)) == 0);
	_delay_us(30);
	acknowledge_char();

	char_waiting = 0;
	return kbd_data;
}


void ak_init_keyboard(){
	started = 0;
	kbd_data = 0;
	bit_count = 0;

	//make AK_CLK input pin
	DDRD &= ~(1<<AK_CLK);
	//turn on pullup resistor
	AK_PORT |= (1<<AK_CLK);

	// Interrupt configuration
	// We use INT1 falling edge
	MCUCR |= (1<<ISC11);
	MCUCR &= ~(1<<ISC10);

	// Enable INT1
	GIMSK |= (1<<INT1);

	// Enable interrupts
	sei();

	acknowledge_char();
}


