/* USART i/o library
 * Copyright 2010-2019, Adrien Destugues <pulkomandy@pulkomandy.tk>
 * Distributed under the terms of the MIT Licence */

/** Initialize the USART.
 *
 * Baudrate is set according to the BAUD define.
 * Currently the USART is set to 8N1, except on ATmega128 where it's set to 7E1
 * (don't ask why, I don't remember). This should be made configurable.
 *
 * On ATmega128, this always uses the first USART.
 */
void USARTInit();

/** Write a byte to the USART.
 *
 * This function blocks if the USART is not ready to accept any data. There is
 * no IO buffering.
 */
void USARTWriteChar(char data);

/** Write an 8bit integer as hex to the USART.
 */
void USARTWriteHex(unsigned char i);

/** This function is used to read the available data from USART.
 *
 * It waits untill data is available.
 */
char USARTReadChar();
