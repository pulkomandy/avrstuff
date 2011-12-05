#Set vars
COMPILE = avr-gcc -Wall -Os -Iusbdrv -I. -std=c99 -mmcu=atmega8 -DF_CPU=16000000 

#Rules
starkadroid.hex: starkadroid.bin
	avr-objcopy -j .text -j .data -O ihex starkadroid.bin starkadroid.hex

starkadroid.bin: main.o usbdrv/usbdrv.o usbdrv/usbdrvasm.o
	$(COMPILE) main.o -o starkadroid.bin

main.o: main.c
	$(COMPILE) -c main.c -mmcu=atmega8 -Os -o main.o -mmcu=atmega8 -Os -I../../libs/ -I.

#Generic rules
.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

.c.o:
	$(COMPILE) -std=c99 -c $< -o $@

flash:
	avrdude -c usbasp -p atmega8 -Uflash:w:starkadroid.hex
