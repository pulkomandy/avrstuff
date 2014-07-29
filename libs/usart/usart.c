/* AVR USART acces functions - stolen from Extreme Electronics */

#include <avr/io.h>
#include <inttypes.h>

#ifndef BAUD
	#error You must define BAUD to use libuart.
#endif

//This function is used to initialize the USART
void USARTInit()
{
	//Set Baud rate
	#include <util/setbaud.h>
	UBRRH = UBRRH_VALUE;
	UBRRL = UBRRL_VALUE;
	#if USE_2X
		UCSRA |= (1 << U2X);
	#else
		UCSRA &= ~(1 << U2X);
	#endif

	/*Set Frame Format
	  >> Asynchronous mode
	  >> No Parity
	  >> 1 StopBit
	  >> char size 8
	  */
#ifdef __AVR_ATtiny2313__
	UCSRC = (1 << UCSZ1) | (1 << UCSZ0);
#else
	UCSRC = (1 << URSEL) | (3 << UCSZ0);
#endif

	//Enable The receiver and transmitter
	UCSRB = (1 << RXEN) | (1 << TXEN);
}


//This fuction writes the given "data" to
//the USART which then transmit it via TX line
void USARTWriteChar(char data)
{
	//Wait untill the transmitter is ready
	while(!(UCSRA & (1<<UDRE)))
	{
		//Do nothing
	}

	//Now write the data to USART buffer

	UDR=data;
}


//This function is used to read the available data
//from USART. This function will wait untill data is
//available.
char USARTReadChar()
{
	//Wait untill a data is available
	while(!(UCSRA & (1<<RXC)))
	{
		//Do nothing
	}

	//Now USART has got data from host
	//and is available is buffer

	return UDR;
}


void USARTWriteHex(unsigned char i)
{
	unsigned char k = i>>4;
	if (k <=9) k+='0';
	else k+=('A'-10);

	USARTWriteChar(k);

	k = i&0xF;
	if (k <=9) k+='0';
	else k+=('A'-10);

	USARTWriteChar(k);
}
