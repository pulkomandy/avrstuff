MCU=atmega48p

include ../../common.mk

all: keyboard.hex

keyboard.bin: keyboard.o main.o
	$(CC) $^ -o $@ -mmcu=$(MCU) -Os

main.o: main.c $(LIBS)/ps2_keyboard/ps2_keyboard.h
	$(CC) -std=c99 -c $< -mmcu=$(MCU) -Os -o $@ -Os

keyboard.o: $(LIBS)/ps2_keyboard/ps2_keyboard.c $(LIBS)/ps2_keyboard/ps2_keyboard.h $(LIBS)/ps2_keyboard/keymap.h
	$(CC) -DCALLBACK="callback();" -c $< -mmcu=$(MCU) -Os -o $@

clean:
	rm *.o *.bin *.hex

flash: keyboard.hex
	$(AVRDUDE) -c usbasp -p $(MCU) -Uflash:w:$^
