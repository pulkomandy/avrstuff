# STK500
F_CPU=3800000
MCU=atmega128

# K4KUSB
#F_CPU=12000000
#MCU=attiny2313

# muSerial
# F_CPU=20000000
#MCU=attiny2313

# Common
BAUD=9600

all: blinkdel.hex

include ../kbd/common.mk

COMPILE = $(CC) -Wall -std=c99 $(CFLAGS) -I../libs/usart/

VPATH=../libs/usart/

#Rules

$(MCU).bin: main.o usart.o
	$(COMPILE) $^ -o $@

main.o: main.c
	$(COMPILE) -c $^ -o $@

#Generic rules
.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

.c.o:
	$(COMPILE) -std=c99 -c $< -o $@

