/**********************************************************************
 * Music Player for the ATMega8
 * Uses all 3 timers for generating a 2voices, 1bit sound.
 * Copyright 2010, Adrien Destugues <pulkomandy@pulkomandy.ath.cx>
 * Distributed under the terms of the MIT licence
 **********************************************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <string.h>
#include <stdbool.h>

#define C2_SoundOn() TCCR2 |= (1<<CS22)|(1<<CS20) /* enable timer */
#define C2_SoundOff() TCCR2 &= ~((1<<CS22)|(1<<CS20)) /* disable timer */
#define C2_SetFreq(f) OCR2 = (f) 

#define C1_SoundOn() TCCR1B |= (1<<CS12) /* enable timer */
#define C1_SoundOff() TCCR1B &= ~(1<<CS12) /* disable timer */
#define C1_SetFreq(f) OCR1A = (f)

typedef enum {
	S, // silence
	N, // normal
	A, // arpeggio
	V, // vibrato
	T, // tremolo
} FX;

// A note is made of frequency, duration, and a boolean indicating if it is 
// silence or a real note. Things that should be changed here :
//  * Have a note value instead of an hardcoded frequency,and have an octave
//  * Allow for effects (arpegio, vibrato for example)
typedef struct {
	unsigned char n; // note
	unsigned char d; // length
	FX f;			 // FX
	unsigned char p; // params
} C2_Note;

// Mapping of notes to OCR2 values for timer 2.
static const char Note2Reg[] = {
	0xEC,
	0xE0,
	0xD1,
	0xC4,
	0xB8,
	0xAF,
	0xA6,
	0x9F,
	0x97,
	0x8D,
	0x84,
	0x7E,
	
	0x76,
	0x6F,
	0x6A,
	0x64,
	0x5E,
	0x58,
	0x53,
	0x4F,
	0x4A,
	0x45,
	0x42,
	0x3F,

	0x3B, // C
	0x37, // C#
	0x34, // D
	0x32, // D#
	0x2F, // E
	0x2C, // F
	0x29, // F#
	0x27, // G
	0x25, // G#
	0x23, // A
	0x21, // A#
	0x1F, // B

	0x1D, // C
	0x1B, // C#
	0x1A, // D
	0x18, // D#
	0x17, // E
	0x16, // F
	0x14, // F#
	0x13, // G
	0x12, // G#
	0x11, // A
	0x10, // A#
	0xF  // B
	//0xE,  // C
	//0xD   // C#
};

#define C(n) 12*n
#define Cs(n) C(n)+1
#define D(n) C(n)+2
#define Ds(n) C(n)+3
#define E(n) C(n)+4
#define F(n) C(n)+5
#define Fs(n) C(n)+6
#define G(n) C(n)+7
#define Gs(n) C(n)+8
#define A(n) C(n)+9
#define As(n) C(n)+10
#define B(n) C(n)+11

// Song data. A list of notes. Looped.
/*
static const C2_Note song[] = {
	{ G(2),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ G(2),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ G(2),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ Ds(2),  7, N, 0x00 },
	{ As(2),  4, N, 0x00 },
	{ G(2),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ Ds(2),  7, N, 0x00 },
	{ As(2),  4, N, 0x00 },
	{ G(2),  10, N, 0x00 },
	{ 0,      7, S, 0x00 },

	{ D(3),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ D(3),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ D(3),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ Ds(3),  7, N, 0x00 },
	{ As(2),  4, N, 0x00 },
	{ Fs(2), 10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ Ds(2),  7, N, 0x00 },
	{ As(2),  4, N, 0x00 },
	{ G(2),  10, N, 0x00 },
	{ 0,      7, S, 0x00 },

	{ G(3),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ G(3),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ G(3),  10, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ G(3),   6, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ Fs(3),  2, N, 0x00 },
	{ F(3),   2, N, 0x00 },
	{ E(3),   3, N, 0x00 },
	{ Ds(3),  7, N, 0x00 },
	{ 0,      1, S, 0x00 },
	{ E(2),   4, N, 0x00 },
	{ Gs(2), 10, N, 0x00 },
	{ 0,      4, S, 0x00 },

	{ Cs(3),  4, N, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ B(2),   4, N, 0x00 },
	{ As(2),  4, N, 0x00 },
	{ A(2),   4, N, 0x00 },


	{ 0,     40, S, 0x00 },
	{0,0,0} // Song end marker - zero-length note
};
*/

static const C2_Note song[] PROGMEM = {
	{ E(3),   8, N, 0x00 },
	{ B(2),   4, N, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ D(3),   4, N, 0x00 },
	{ 0   ,   4, S, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ B(2),   4, N, 0x00 },
	{ A(2),   4, N, 0x00 },
	{ 0   ,   4, S, 0x00 },
	{ A(2),   4, N, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ E(3),   4, N, 0x00 },
	{ 0   ,   4, S, 0x00 },
	{ D(3),   4, N, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ B(2),   4, N, 0x00 },
	{ 0   ,   8, S, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ D(3),   8, N, 0x00 },
	{ E(3),   8, N, 0x00 },
	{ C(3),   8, N, 0x00 },
	{ A(2),   7, N, 0x00 },
	{ 0   ,   1, S, 0x00 },
	{ A(2),   8, N, 0x00 },
	{ 0   ,   8, S, 0x00 },

	{ D(3),  12, N, 0x00 },
	{ F(3),   4, N, 0x00 },
	{ A(3),   8, N, 0x00 },
	{ G(3),   4, N, 0x00 },
	{ F(3),   4, N, 0x00 },
	{ E(3),   8, N, 0x00 },
	{ 0   ,   4, S, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ E(3),   8, N, 0x00 },
	{ D(3),   4, N, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ B(2),   4, N, 0x00 },
	{ 0   ,   8, S, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ D(3),   8, N, 0x00 },
	{ E(3),   8, N, 0x00 },
	{ C(3),   8, N, 0x00 },
	{ A(2),   7, N, 0x00 },
	{ 0   ,   1, S, 0x00 },
	{ A(2),   8, N, 0x00 },
	{ 0   ,   8, S, 0x00 },

/*
	{ E(3),   8, N, 0x00 },
	{ B(2),   4, N, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ D(3),   4, N, 0x00 },
	{ 0   ,   4, S, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ B(2),   4, N, 0x00 },
	{ A(2),   4, N, 0x00 },
	{ 0   ,   4, S, 0x00 },
	{ A(2),   4, N, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ E(3),   4, N, 0x00 },
	{ 0   ,   4, S, 0x00 },
	{ D(3),   4, N, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ B(2),   4, N, 0x00 },
	{ 0   ,   8, S, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ D(3),   8, N, 0x00 },
	{ E(3),   8, N, 0x00 },
	{ C(3),   8, N, 0x00 },
	{ A(2),   7, N, 0x00 },
	{ 0   ,   1, S, 0x00 },
	{ A(2),   8, N, 0x00 },
	{ 0   ,   8, S, 0x00 },

	{ D(3),  12, N, 0x00 },
	{ F(3),   4, N, 0x00 },
	{ A(3),   8, N, 0x00 },
	{ G(3),   4, N, 0x00 },
	{ F(3),   4, N, 0x00 },
	{ E(3),   8, N, 0x00 },
	{ 0   ,   4, S, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ E(3),   8, N, 0x00 },
	{ D(3),   4, N, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ B(2),   4, N, 0x00 },
	{ 0   ,   8, S, 0x00 },
	{ C(3),   4, N, 0x00 },
	{ D(3),   8, N, 0x00 },
	{ E(3),   8, N, 0x00 },
	{ C(3),   8, N, 0x00 },
	{ A(2),   7, N, 0x00 },
	{ 0   ,   1, S, 0x00 },
	{ A(2),   8, N, 0x00 },
	{ 0   ,   8, S, 0x00 },
*/
	{ E(3),  16, N, 0x00 },
	{ C(3),  16, N, 0x00 },
	{ D(3),  16, N, 0x00 },
	{ B(2),  16, N, 0x00 },
	{ C(3),  16, N, 0x00 },
	{ A(2),  16, N, 0x00 },
	{ G(2),  16, N, 0x00 },
	{ Gs(2), 16, N, 0x00 },

	{ 0   ,   8, S, 0x00 },

	{ E(3),  16, N, 0x00 },
	{ C(3),  16, N, 0x00 },
	{ D(3),  16, N, 0x00 },
	{ B(2),  16, N, 0x00 },

	{ C(3),   8, N, 0x00 },
	{ D(3),   8, N, 0x00 },

	{0,0,S,0} // Song end marker - zero-length note
};

static const C2_Note song2[] PROGMEM = {
	{ C(2), 4, N, 0x00 },
	{ C(3), 4, N, 0x00 },
	{ C(2), 4, N, 0x00 },
	{ C(3), 4, N, 0x00 },
	{ C(2), 4, N, 0x00 },
	{ C(3), 4, N, 0x00 },
	{ C(2), 4, N, 0x00 },
	{ C(3), 4, N, 0x00 },

	{ G(2), 4, N, 0x00 },
	{ G(3), 4, N, 0x00 },
	{ G(2), 4, N, 0x00 },
	{ G(3), 4, N, 0x00 },
	{ G(2), 4, N, 0x00 },
	{ G(3), 4, N, 0x00 },
	{ G(2), 4, N, 0x00 },
	{ G(3), 4, N, 0x00 },

	{ E(2), 4, N, 0x00 },
	{ E(3), 4, N, 0x00 },
	{ E(2), 4, N, 0x00 },
	{ E(3), 4, N, 0x00 },
	{ B(1), 4, N, 0x00 },
	{ B(2), 4, N, 0x00 },
	{ B(1), 4, N, 0x00 },
	{ B(2), 4, N, 0x00 },

	{ C(2), 4, N, 0x00 },
	{ C(3), 4, N, 0x00 },
	{ C(2), 4, N, 0x00 },
	{ C(3), 4, N, 0x00 },
	{ C(2), 16, N, 0x00 },

	{0,0,S,0} // Song end marker - zero-length note
};

// This allows us to know where we are in the song.
volatile int tick;

// Timer 0 interrupt handler
ISR(TIMER0_OVF_vect)
{
	tick++;
}

void main() {
	// WATCHDOG
	wdt_enable(WDTO_2S);

	// TIMER 0 : timebase, 1 tick every 1ms
	TCCR0 =(1<<CS02) | (1<<CS00); // prescaler /1024
	TIMSK = 1 << TOIE0; // enable timer interrupt
	tick = 0;
	
	// TIMER 1 : Freq generator
	TCCR1A = (1<<COM1A0);
	TCCR1B = (1<<WGM12);

	OCR1A = 0x5E;

	// TIMER 2 : Frequency generator (on OC2)
	// CTC mode allows us to set the frequency through OCR2 register
	// Prescaler is set to 1024 in C2_SoundOn.
    TCCR2 = (1<<WGM21) // CTC
		|(1<<COM20); // toggle output on match
	ASSR = 0; // Disable async mode

	// Port B as output so we can use the timers
	DDRB = 255;

	// Enable interrupts
	sei();


	// TEST
	//OCR2 = 0xFF;
	//C2_SoundOn();

	int step = 0;
	int step2 = 0;
	long nexttime = 0;
	long nexttime2 = 0;
	long time = 0;
	char subtick = 0;
	char subtick2 = 0;
	C2_Note current = song[0];
	C2_Note current2 = song2[0];

	PORTB = 0xFF;

	// Main loop
	while(1) {
		wdt_reset();

		// PLAYER CODE
		if (tick) {
			tick--;
			

			// CHANNEL 1 ---------------------------------
			if (nexttime <= time) {
		   		current = song2[step];
				step++;
				subtick = 0;
				// Go to next step
				nexttime = time + current.d;
				if(current.f != 0) C1_SoundOn();
				else C1_SoundOff();

				// Test if song is finished, if so loop over
				if (current.p == S && current.d == 0) {
					step = 0;
					time = 0;
					nexttime = 1;
				}
			}

			subtick++;
			switch (current.f) {
				default: case N: C1_SetFreq(Note2Reg[current.n]); break;
				case A: 
					switch(subtick) {
						case 0: C1_SetFreq(Note2Reg[current.n + ((current.p&0xF0)>>8)]); break;
						case 1: C1_SetFreq(Note2Reg[current.n]); break;
						case 2: C1_SetFreq(Note2Reg[current.n + (current.p&0xF)]); subtick = 0; break;
					}
					break;
				case V: C1_SetFreq(Note2Reg[current.n]-current.p/2+subtick%current.p); break;
				case T: if(subtick%current.p == 0) { C1_SoundOn(); C1_SetFreq(Note2Reg[current.n]); } else C1_SoundOff(); break;
			}


			// CHANNEL 2 -------------------------------
			if (nexttime2 <= time) {
		   		current2 = song[step2];
				step2++;
				subtick2 = 0;
				// Go to next step
				nexttime2 = time + current2.d;
				if(current2.f != 0) C2_SoundOn();
				else C2_SoundOff();

				// Test if song is finished, if so loop over
				if (current2.p == S && current2.d == 0) {
					step2 = 0;
					time = 0;
					nexttime2 = 1;
				}
			}

			subtick2++;
			switch (current2.f) {
				default: case N: C2_SetFreq(Note2Reg[current2.n]); break;
				case A: 
					switch(subtick2) {
						case 0: C2_SetFreq(Note2Reg[current2.n + ((current2.p&0xF0)>>8)]); break;
						case 1: C2_SetFreq(Note2Reg[current2.n]); break;
						case 2: C2_SetFreq(Note2Reg[current2.n + (current2.p&0xF)]); subtick2 = 0; break;
					}
					break;
				case V: C2_SetFreq(Note2Reg[current2.n]-current2.p/2+subtick2%current2.p); break;
				case T: if(subtick2%current2.p == 0) { C2_SoundOn(); C2_SetFreq(Note2Reg[current2.n]); } else C2_SoundOff(); break;
			}


			time++;
		}
	}
}

