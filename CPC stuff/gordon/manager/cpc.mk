# Amstrad CPC generic makefile rules
# Copyright 2011-2012, Shinra Team
# Distributed under the terms of the MIT Licence
# 
# Targets the vasm compiler (z80,oldstyle) and vlink tool.
# Also uses cpcfs, png2crtc, exomizer, caprice
#
# Just make a dsk file depend on some BIN files, and these depend on some .o files.
# Don't forget to set START for each BIN file (used as the start address for linking
# and put in the AMSDOS header)

.DEFAULT_GOAL := $(NAME).dsk

# Nice header for doing something
BECHO = @echo -e "\x1B[7m\t$(1)\t\x1B[0m"

# Build the DSK-File (main rule)
%.dsk:
	$(call BECHO, "Putting files in DSK...")
	cpcfs $@ f
	for i in $^;do cpcfs $@ p $$i;done;

# Run the emulator
emu: $(NAME).dsk
	$(call BECHO,"Running caprice...")
	caprice -a $< &

# Link the sources ($^ means "all dependencies", so all of them should be .o 
# files - which is good, since anything else should be incbined somewhere)
%.BIN:
	$(call BECHO,"Linking $@")
	vlink -Ttext $(START) -Tlink.ld -b amsdos -o $@ $^
	
#-Ttext $(START)

# Assemble the sources
%.o: %.z80
	$(call BECHO,"Assembling $<...")
	vasmz80_oldstyle -Fvobj -o $@ $<

# Crunch a screen
%.exo: %.scr
	$(call BECHO,"Crunching $<...")
	exoraw -o $@ $<

# convert png to cpc screen format
# SCREENMODE can force the screenmode, otherwise it's guessed from the png 
# bitdepth
%.scr: %.png
	$(call BECHO,"Converting $<...")
	png2crtc $< $@ 7 $(SCREENMODE)

clean:
	$(call BECHO,"Cleaning...")
	rm *.exo *.BIN *.dsk *.o
