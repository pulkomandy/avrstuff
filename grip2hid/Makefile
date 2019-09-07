#Set vars
MCU=at90usb1287
COMPILE = avr-gcc -Wall -Wextra -Werror -Os -Iusbdrv -I. -mmcu=$(MCU) -DF_CPU=16000000 
PROJECT=grip2hid

#Rules
$(PROJECT).hex: $(PROJECT).bin
	avr-objcopy -j .text -j .data -O ihex $^ $@

$(PROJECT).bin: main.o
	$(COMPILE) $^ -o $@

#Generic rules
.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

.cpp.o:
	$(COMPILE) -c $< -o $@

flash: $(PROJECT).hex
	avrdude -u -c flip1 -p $(MCU) -Uflash:w:$^

clean:
	rm *.bin *.hex *.o
