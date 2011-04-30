#Set vars
MCU=attiny2313
COMPILE = avr-gcc -Wall -Os -std=c99 -mmcu=$(MCU) -DF_CPU=20000000

#Rules
blinkdel.hex: blinkdel.bin
	avr-objcopy -j .text -j .data -O ihex blinkdel.bin blinkdel.hex

blinkdel.bin: main.o
	$(COMPILE) main.o -o blinkdel.bin

main.o: main.c
	$(COMPILE) -c main.c -o main.o

#Generic rules
.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

.c.o:
	$(COMPILE) -std=c99 -c $< -o $@

flash:
	avrdude -c usbasp -p $(MCU) -Uflash:w:blinkdel.hex

clean:
	rm *.bin *.o *.hex
