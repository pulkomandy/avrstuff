MCU=attiny2313

all: $(MCU).hex

include ../../common.mk

$(MCU):
	mkdir -p $(MCU)

$(MCU).bin: $(MCU)/keyboard.o $(MCU)/usart.o $(MCU)/main.o
	$(CC) $^ -o $@ -mmcu=$(MCU) -Os

$(MCU)/main.o: main.c $(LIBS)/usart/usart.h $(LIBS)/ps2_keyboard/ps2_keyboard.h $(MCU)
	$(CC) -c $< -Os -o $@ -mmcu=$(MCU) -Os

$(MCU)/usart.o: $(LIBS)/usart/usart.c $(LIBS)/usart/usart.h $(MCU)
	$(CC) -c $< -o $@ -mmcu=$(MCU) -Os

$(MCU)/keyboard.o: $(LIBS)/ps2_keyboard/ps2_keyboard.c $(LIBS)/ps2_keyboard/ps2_keyboard.h $(LIBS)/ps2_keyboard/keymap.h $(MCU)
	$(CC) -c $< -mmcu=$(MCU) -Os -o $@
