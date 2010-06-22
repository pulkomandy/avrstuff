/* USART i/o library
 * Copyright 2010, Adrien Destugues <pulkomandy@pulkomandy.ath.cx>
 * Distributed under the terms of the MIT Licence */

void USARTInit(uint16_t ubrr_value);
void USARTWriteChar(char data);
void USARTWriteHex(unsigned char i);
