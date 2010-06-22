keyboard.hex: keyboard.bin
	avr-objcopy -j .text -j .data -O ihex keyboard.bin keyboard.hex

keyboard.bin: keyboard.o usart.o main.o
	avr-gcc keyboard.o usart.o main.o -o keyboard.bin -mmcu=atmega8 -Os

main.o: main.c ../../libs/usart/usart.h ../../libs/amiga_keyboard/amiga_keyboard.h
	avr-gcc -c main.c -mmcu=atmega8 -Os -o main.o -mmcu=atmega8 -Os -I../../libs/

usart.o: ../../libs/usart/usart.c ../../libs/usart/usart.h
	avr-gcc -c ../../libs/usart/usart.c -o usart.o -mmcu=atmega8 -Os

keyboard.o: ../../libs/amiga_keyboard/amiga_keyboard.c ../../libs/amiga_keyboard/amiga_keyboard.h ../../libs/amiga_keyboard/keymap.h
	avr-gcc -c ../../libs/amiga_keyboard/amiga_keyboard.c -mmcu=atmega8 -Os -o keyboard.o
