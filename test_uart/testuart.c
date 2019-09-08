#include "../libs/usart/usart.h"

void main(void)
{
	USARTInit();
	USARTWriteChar('Z');
	while(1);
}
