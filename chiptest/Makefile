# K4KUSB
F_CPU=12000000

# muSerial
# F_CPU=20000000

# Common
MCU=attiny2313
BAUD=9600

all: blinkdel.hex

include ../kbd/common.mk

COMPILE = $(CC) -Wall -Os -std=c99 -mmcu=$(MCU) -DF_CPU=$(F_CPU) -DBAUD=$(BAUD) \
	-I../libs/usart/

VPATH=../libs/usart/

#Rules

blinkdel.bin: main.o usart.o
	$(COMPILE) $^ -o $@

main.o: main.c
	$(COMPILE) -c $^ -o $@

#Generic rules
.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

.c.o:
	$(COMPILE) -std=c99 -c $< -o $@

flash:
	avrdude -c usbasp -p $(MCU) -Uflash:w:blinkdel.hex

