CC := $(shell { which avr-gcc || which avr-gcc-x86; } 2>/dev/null)
OBJCOPY := $(shell { which avr-objcopy || which avr-objcopy-x86; } 2>/dev/null)
AVRDUDE := $(shell { which avrdude || which avrdude-x86; } 2>/dev/null)

MCU=atmega48p

keyboard.hex: keyboard.bin
	$(OBJCOPY) -j .text -j .data -O ihex $^ $@

keyboard.bin: keyboard.o main.o
	$(CC) $^ -o $@ -mmcu=$(MCU) -Os

main.o: main.c ../../../libs/ps2_keyboard/ps2_keyboard.h
	$(CC) -std=c99 -c $< -mmcu=$(MCU) -Os -o $@ -Os

keyboard.o: ../../../libs/ps2_keyboard/ps2_keyboard.c ../../../libs/ps2_keyboard/ps2_keyboard.h ../../../libs/ps2_keyboard/keymap.h
	$(CC) -DCALLBACK="callback();" -c $< -mmcu=$(MCU) -Os -o $@

clean:
	rm *.o *.bin *.hex

flash: keyboard.hex
	$(AVRDUDE) -c usbasp -p $(MCU) -Uflash:w:$^
