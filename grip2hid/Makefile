#Set vars
PROJECT=grip2hid
FCPU=1000000
BAUD=9600

PROG=flip1 -u
MCU=at90usb1287

#MCU=atmega8
#PROG=avr109 -P /dev/ports/usb0 -b $(BAUD) -u

# You should not need to change anything below
# -----------------------------------------------------------------------------
COMPILE = avr-g++ -Wall -Wextra -Werror -O3 -mmcu=$(MCU) -DF_CPU=$(FCPU) -DBAUD=$(BAUD)

#Rules
$(PROJECT).hex: $(PROJECT).bin
	avr-objcopy -j .text -j .data -O ihex $^ $@

$(PROJECT).bin: main.o usart.o
	$(COMPILE) $^ -o $@

#Generic rules
.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

.cpp.o:
	$(COMPILE) -c $< -o $@

usart.o: ../libs/usart/usart.c
	$(COMPILE) -c $< -o $@

flash: $(PROJECT).hex
	avrdude -u -c $(PROG) -p $(MCU) -Uflash:w:$^

clean:
	rm *.bin *.hex *.o
