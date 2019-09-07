# User configurable variables
MCU=atmega8
FCPU=16000000
PROG=stk500 -P /dev/ports/usb0

# You should not need to change anything below
# -----------------------------------------------------------------------------
COMPILE = avr-gcc -Wall -Wextra -Werror -Os -std=c99 -mmcu=$(MCU) -DF_CPU=$(FCPU)

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

flash: $(MCU).hex
	avrdude -c $(PROG) -p $(MCU) -Uflash:w:$(MCU).hex

clean:
	rm *.bin *.o *.hex
