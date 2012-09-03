/* HEREPIC - AVR-based ICSP programmer for microchip PIC16F6xx and 16F8xx devices
 * Copyright 2012, Adrien Destugues <pulkomandy@pulkomandy.tk>
 *
 * This file is distributed under the terms of the MIT licence.
 */

// ICSP commands are 6-bit wide, for most of them (but not all) the 2 MSb are
// ignored.
// We also use these as USB commands for now, but we may do otherwise, since
// transferring only 14 data bytes in an USB frame is quite a bit of waste.
// We need some custom commands on USB side as well, to reset the PIC, blink
// leds, and such things.
typedef enum
{
	// HOST to DEVICE
	LoadConfigWord 		=  0x0,
	LoadCodeWord 		=  0x2,
	LoadDataWord 		=  0x3,

	// Configuration
	NextAddress			=  0x6,
	BeginEraseProgram 	= 0x08,
	BeginProgramOnly 	= 0x18,
	BulkEraseCode		=  0x9,
	BulkEraseData		=  0xB,
	BulkEraseConfig1	= 0x01,
	BulkEraseConfig2	= 0x07,

	// DEVICE to HOST
	ReadCodeWord 		=  0x4,
	ReadDataWord		=  0x5,
} ICSPCommands;
