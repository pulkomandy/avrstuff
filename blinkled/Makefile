#Set vars
MCU=atmega48p
FCPU=16000000
COMPILE = avr-gcc -Wall -Os -std=c99 -mmcu=$(MCU) -DF_CPU=20000000

#Rules
$(MCU).hex: blinkdel.bin
	avr-objcopy -j .text -j .data -O ihex $^ $@

blinkdel.bin: main.o
	$(COMPILE) main.o -o blinkdel.bin

#Generic rules
.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

.c.o:
	$(COMPILE) -mmcu=$(MCU) -std=c99 -c $< -o $@

flash:
	avrdude -c usbasp -p $(MCU) -Uflash:w:$(MCU).hex

clean:
	rm *.bin *.o *.hex
