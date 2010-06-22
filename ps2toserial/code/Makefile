keyboard.hex: keyboard.bin
	avr-objcopy -j .text -j .data -O ihex keyboard.bin keyboard.hex

keyboard.bin: keyboard.o usart.o main.o
	avr-gcc keyboard.o usart.o main.o -o keyboard.bin -mmcu=atmega8 -Os

main.o: main.c usart.h keyboard.h
	avr-gcc -c main.c -mmcu=atmega8 -Os -o main.o -mmcu=atmega8 -Os

usart.o: usart.c usart.h
	avr-gcc -c usart.c -o usart.o -mmcu=atmega8 -Os

keyboard.o: keyboard.c keyboard.h keymap.h
	avr-gcc -c keyboard.c -mmcu=atmega8 -Os -o keyboard.o
