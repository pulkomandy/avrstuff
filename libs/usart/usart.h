/* USART i/o library
 * Copyright 2010-2014, Adrien Destugues <pulkomandy@pulkomandy.tk>
 * Distributed under the terms of the MIT Licence */

#include <stdint.h>

void USARTInit();
void USARTWriteChar(char data);
void USARTWriteHex(unsigned char i);
