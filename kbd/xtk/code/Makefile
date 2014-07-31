# Board settings

# K4KUSB
MCU=attiny2313
F_CPU=12000000

# Generic settings
BAUD=9600


include ../../common.mk

$(MCU).bin: $(MCU)/keyboard.o $(MCU)/main.o
	$(CC) $^ -o $@ -mmcu=$(MCU) -Os

$(MCU)/main.o: main.c $(LIBS)/ps2_keyboard/ps2_keyboard.h $(MCU)
	$(CC) $(CFLAGS) -std=c99 -c $< -o $@

$(MCU)/keyboard.o: $(LIBS)/ps2_keyboard/ps2_keyboard.c $(LIBS)/ps2_keyboard/ps2_keyboard.h $(LIBS)/ps2_keyboard/keymap.h $(MCU)
	$(CC) $(CFLAGS) -DCALLBACK="callback();" -c $< -o $@
