/* AVR USART acces functions - stolen from Extreme Electronics */

#include <avr/io.h>
#include <inttypes.h>

#ifndef BAUD
	#error You must define BAUD to use libuart.
#endif

// FIXME there are two USARTs in this case and we should be able to drive either

// Compatibility for devices with single USART only
#ifdef __AVR_ATmega8__
#define UBRR0H UBRRH
#define UBRR0L UBRRL
#define UCSR0A UCSRA
#define UCSR0C UCSRC
#define UCSR0B UCSRB
#define UDR0   UDR
#define UDRE0  UDRE
#define RXC0   RXC
#endif

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
#elif defined __AVR_ATmega128__
	UCSR0C = (2 << UCSZ0) | (2 << UPM0) ; /* 7 bits + even parity.
											TODO make this configurable. */
#else
	UCSRC = (1 << URSEL) | (3 << UCSZ0);
#endif

	//Enable The receiver and transmitter
	UCSRB = (1 << RXEN) | (1 << TXEN);
}


void USARTWriteChar(char data)
{
	//Wait untill the transmitter is ready
	while(!(UCSR0A & (1<<UDRE0)))
	{
		//Do nothing
	}

	//Now write the data to USART buffer

	UDR=data;
}


char USARTReadChar()
{
	//Wait untill a data is available
	while(!(UCSR0A & (1<<RXC0)))
	{
		//Do nothing
	}

	//Now USART has got data from host
	//and is available is buffer

	return UDR0;
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
