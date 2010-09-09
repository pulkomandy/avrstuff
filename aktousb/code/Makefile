#Set vars
COMPILE = avr-gcc -Wall -Os -Iusbdrv -I. -std=c99 -mmcu=atmega8 -DF_CPU=16000000 

#Rules
keyboard.hex: keyboard.bin
	avr-objcopy -j .text -j .data -O ihex keyboard.bin keyboard.hex

keyboard.bin: keyboard.o main.o usbdrv/usbdrv.o usbdrv/usbdrvasm.o
	$(COMPILE) keyboard.o main.o usbdrv/usbdrvasm.o usbdrv/usbdrv.o -o keyboard.bin

main.o: main.c ../../libs/amiga_keyboard/amiga_keyboard.h
	$(COMPILE) -c main.c -mmcu=atmega8 -Os -o main.o -mmcu=atmega8 -Os -I../../libs/ -I.

keyboard.o: ../../libs/amiga_keyboard/amiga_keyboard.c ../../libs/amiga_keyboard/amiga_keyboard.h ../../libs/amiga_keyboard/keymap.h
	$(COMPILE) -c ../../libs/amiga_keyboard/amiga_keyboard.c -mmcu=atmega8 -Os -o keyboard.o

#Generic rules
.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

.c.o:
	$(COMPILE) -std=c99 -c $< -o $@

flash:
	avrdude -c usbasp -p atmega8 -Uflash:w:keyboard.hex
