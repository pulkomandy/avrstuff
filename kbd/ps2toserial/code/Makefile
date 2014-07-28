MCU=atmega8

include ../../common.mk

all: keyboard.hex

keyboard.bin: keyboard.o usart.o main.o
	$(CC) $^ -o $@ -mmcu=$(MCU) -Os

main.o: main.c $(LIBS)/usart/usart.h $(LIBS)/ps2_keyboard/ps2_keyboard.h
	$(CC) -c $< -Os -o $@ -mmcu=$(MCU) -Os

usart.o: $(LIBS)/usart/usart.c $(LIBS)/usart/usart.h
	$(CC) -c $< -o $@ -mmcu=$(MCU) -Os

keyboard.o: $(LIBS)/ps2_keyboard/ps2_keyboard.c $(LIBS)/ps2_keyboard/ps2_keyboard.h $(LIBS)/ps2_keyboard/keymap.h
	$(CC) -c $< -mmcu=$(MCU) -Os -o $@
