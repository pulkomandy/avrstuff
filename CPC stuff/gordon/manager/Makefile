# Requires uppercase because CPCFS is buggy
NAME:=GORDON

# Set disk contents
$(NAME).dsk:: $(NAME).BIN

# List the sourcefiles for your main code. This is currently statically linked
# at &300 and (hopefully) loaded there by the loader code.
# TODO use a target variable for the address, and get it from VASM/VLINK somehow
$(NAME).BIN:: gordon.o
$(NAME).BIN: START = 0x2000

include cpc.mk
