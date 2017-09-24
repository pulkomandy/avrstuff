# Executables (with Haiku hybrids support)
CC := $(shell { which avr-gcc || which avr-gcc-x86; } 2>/dev/null)
OBJCOPY := $(shell { which avr-objcopy || which avr-objcopy-x86; } 2>/dev/null)
AVRDUDE := $(shell { which avrdude || which avrdude-x86; } 2>/dev/null)

# Some useful paths (relative to each project)
LIBS=../../../libs

CFLAGS=-DF_CPU=$(F_CPU) -DBAUD=$(BAUD) -mmcu=$(MCU) -Os

# default target
all: $(MCU).hex

# Generic rules
%.hex: %.bin
	$(OBJCOPY) -j .text -j .data -O ihex $^ $@

$(MCU):
	mkdir -p $(MCU)

flash: $(MCU).hex
	$(AVRDUDE) -c stk500 -P /dev/ports/usb0 -p $(MCU) -Uflash:w:$^

clean:
	rm *.bin *.o *.hex
