keyboard.hex: keyboard.bin
	avr-objcopy -j .text -j .data -O ihex keyboard.bin keyboard.hex

keyboard.bin: keyboard.o usart.o main.o
	avr-gcc keyboard.o usart.o main.o -o keyboard.bin -mmcu=atmega8 -Os

main.o: main.c ../../libs/usart/usart.h ../../libs/ps2_keyboard/ps2_keyboard.h
	avr-gcc -c main.c -mmcu=atmega8 -Os -o main.o -mmcu=atmega8 -Os

usart.o: ../../libs/usart/usart.c ../../libs/usart/usart.h
	avr-gcc -c ../../libs/usart/usart.c -o usart.o -mmcu=atmega8 -Os

keyboard.o: ../../libs/ps2_keyboard/ps2_keyboard.c ../../libs/ps2_keyboard/ps2_keyboard.h ../../libs/ps2_keyboard/keymap.h
	avr-gcc -c ../../libs/ps2_keyboard/ps2_keyboard.c -mmcu=atmega8 -Os -o keyboard.o
