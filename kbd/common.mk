# Executables (with Haiku hybrids support)
CC := $(shell { which avr-gcc || which avr-gcc-x86; } 2>/dev/null)
OBJCOPY := $(shell { which avr-objcopy || which avr-objcopy-x86; } 2>/dev/null)
AVRDUDE := $(shell { which avrdude || which avrdude-x86; } 2>/dev/null)

# Some useful paths (relative to each project)
LIBS=../../../libs

# Generic rules
%.hex: %.bin
	$(OBJCOPY) -j .text -j .data -O ihex $^ $@

clean:
	rm *.bin *.o *.hex
