#include <avr/io.h>

#include "../../libs/ps2_keyboard/ps2_keyboard.h"
#include "../../libs/usart/usart.h"

int main() {

  USARTInit(8);
  init_keyboard(); 

  USARTWriteChar('r');
  
  //debug LED - output
  DDRD |= (1<<PD6);

  uint8_t key_code = 0;

  char str_buf[21];
  uint8_t buf_pos = 0;

  str_buf[0] = str_buf[1] = 0x00;
  USARTWriteChar('R');

  while(1) {
	key_code = read_char();
    USARTWriteChar(render_scan_code(key_code));
  }
  
  return 0;
}

