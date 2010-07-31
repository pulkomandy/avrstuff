#include "../libs/usart/usart.h"

void main(void)
{
	USARTInit(51);
	USARTWriteChar('Z');
	while(1);
}
