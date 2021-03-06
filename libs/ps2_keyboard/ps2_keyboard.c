// ps/2 keyboard decoder on ATMega8, ATMega48
// Copyright 2010-2014, Adrien Destugues <pulkomandy@pulkomandy.tk>
// This file is distributed under the terms of the MIT Licence.

// Parts borrowed from :
// keyboard.c
// for NerdKits with ATmega168
// hevans@nerdkits.com

#include <avr/io.h>
#include <avr/interrupt.h>


//ps/2 Keyboard pin out
//pin 5 - clock
//pin 3 - GND
//pin 1 - data
//pin 4 - VCC

//PIN configuration
#define PS2_PORT PIND
#define PS2_CLK PD3 /* Also INT1 */

#ifdef __AVR_ATtiny2313__
// K4KUSB modified board
#define PS2_DATA PD5
#else
// ENSSAT IR modified board
#define PS2_DATA PD4
#endif

static volatile uint8_t char_waiting;
static uint8_t started;
static uint8_t bit_count;
static uint8_t extended;

volatile uint8_t kbd_data;
uint8_t release;

// Interrupt vector - Triggered when there is activity on the clock line
ISR(INT1_vect)
{
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
  } else { //not a special character
#ifdef CALLBACK
	  CALLBACK
#endif
    if(release){ //we were in release mode - exit release mode
      release = 0;
    } else {
	  // Notify callback that there's a new char waiting
      char_waiting = 1;
    }
  }
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
  DDRD &= ~((1<<PS2_CLK) | (1<<PS2_DATA));
  //turn on pullup resistor
  PS2_PORT |= (1<<PS2_CLK);

  // FIXME we can use the "pin change" interrupt rather than INT0/INT1 when not
  // on the old clumsy ATMega8. This would allow for any pin to be used.
  // PCMSK |= (1<<PIND3);
  MCUCR |= (1<<ISC11); // Falling edge
  MCUCR &= ~(1<<ISC10);
#ifdef __AVR_ATmega48P__
  EIMSK |= (1<<INT1);
#else // ATmega8
  GIMSK |= (1<<INT1);
#endif

  sei();
}


