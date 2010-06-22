// keyboard.c
// ps/2 keyboard decoder on ATMega8
// copyright 2010, Adrien Destugues <pulkomandy@pulkomandy.ath.cx>
// MIT Licence

// Parts borrowed from :
// keyboard.c
// for NerdKits with ATmega168
// hevans@nerdkits.com
//
// Designed for use with the USB NerdKit running with ATMega168. Datasheet page
// numbers refer to ATMega168 datasheet.

#define F_CPU 16000000UL

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include "keymap.h"


//ps/2 Keyboard pin out
//pin 5 - clock
//pin 3 - GND
//pin 1 - data
//pin 4 - VCC

//PIN configuration
#define PS2_CLK PD3 /* Also INT1 */
#define PS2_PORT PIND
#define PS2_DATA PD4

volatile uint8_t kbd_data;
volatile uint8_t char_waiting;
uint8_t started;
uint8_t bit_count;
uint8_t shift;
uint8_t caps_lock;
uint8_t extended;
uint8_t release;

// Interrupt vector - Triggered when there is activity on the clock line
ISR(INT1_vect)
{
  PORTD ^= (1<<PD6);
  //make sure clock line is low, if not ignore this transition
  if(PS2_PORT & (1<<PS2_CLK)){
    return;
  }

  //if we have not started, check for start bit on DATA line
  if(!started){
    if ( (PS2_PORT & (1<<PS2_DATA)) == 0 ) {
      started = 1;
      bit_count = 0;
      kbd_data = 0;
      //printf_P(PSTR("%d"),started);
      return;
    }
  } else if(bit_count < 8) { //we started, read in the new bit
    //put a 1 in the right place of kdb_data if PC2 is high, leave
    //a 0 otherwise
    if(PS2_PORT & (1<<PS2_DATA)){
      kbd_data |= (1<<bit_count);
    }
    bit_count++;
    return;
  } else if(bit_count == 8){ //pairty bit 
    //not implemented
    bit_count++;
    return;
  } else {  //stop bit
    //should check to make sure DATA line is high, what to do if not?
    started = 0;
    bit_count = 0;
  }

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
  }
}


char render_scan_code(uint8_t data){
  char to_ret = pgm_read_byte(&(keymap[data])); //grab character from array
  if(shift) to_ret -= 0x20;
  return to_ret;
}


uint8_t read_char(){
  while(!char_waiting);
  char_waiting = 0;
  return kbd_data;
}


void init_keyboard(){
  started = 0;
  kbd_data = 0;
  bit_count = 0;

  //make PS2_CLK input pin
  DDRD &= ~(1<<PS2_CLK);
  //turn on pullup resistor
  PS2_PORT |= (1<<PS2_CLK);

 // PCMSK |= (1<<PIND3);
  MCUCR |= (1<<ISC11); // Falling edge
  MCUCR &= ~(1<<ISC10);
  GIMSK |= (1<<INT1);

  sei();
}


