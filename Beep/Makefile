#Set vars
COMPILE = avr-gcc -Wall -Os -std=c99 -mmcu=atmega8535 -DF_CPU=4000000

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
	avrdude -c usbasp -p atmega8535 -Uflash:w:blinkdel.hex

clean:
	rm *.bin *.o *.hex
