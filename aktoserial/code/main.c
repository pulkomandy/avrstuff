#define F_CPU 16000000UL

#include <avr/io.h>

#include "amiga_keyboard/amiga_keyboard.h"
#include "usart/usart.h"

int main() {
  //debug LED - output
  DDRD |= (1<<PD6);

  USARTInit(51);
  ak_init_keyboard(); 

  uint8_t key_code = 0;

  // Ready!
  USARTWriteChar('R');

  while(1) {
	key_code = ak_read_scancode();
    //USARTWriteChar(ak_scancode_to_ascii(key_code));
	USARTWriteHex((key_code >> 1) |(key_code << 7));
	USARTWriteChar(' ');
  }
  
  return 0;
}

