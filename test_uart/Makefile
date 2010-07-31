testusart.hex: testusart.bin
	avr-objcopy -j .text -j .data -O ihex testusart.bin testusart.hex

testusart.bin: usart.o main.o
	avr-gcc usart.o main.o -o testusart.bin -mmcu=atmega8 -Os

main.o: testuart.c ../libs/usart/usart.h
	avr-gcc -c testuart.c -mmcu=atmega8 -Os -o main.o -mmcu=atmega8 -Os

usart.o: ../libs/usart/usart.c ../libs/usart/usart.h
	avr-gcc -c ../libs/usart/usart.c -o usart.o -mmcu=atmega8 -Os
