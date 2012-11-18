SECTIONS {
	.text: { *(.text) }
	. = MAX(.,0x3FFC);
	.romcalls: { *(.romcalls) }
}
