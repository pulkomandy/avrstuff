; ---------------------------------------------------------------
; Copyright 2010, Adrien Destugues <pulkomandy@pulkomandy.ath.cx>
; Distributed under the terms of the MIT Licence
.INCLUDE "2313def.inc"

; Firmware for µSerial expansion board

.EQU ALL_OUT = 255
.EQU ALL_IN = 0

.EQU DATADIR = DDRB
.EQU DATAOUT = PORTB
.EQU DATAIN = PINB

.EQU CTRLIN = PIND
.EQU A0 = PIND4

.EQU curregbak = SRAM_START

.CSEG
; Vectors
; reset
	RJMP init
; int0
	RJMP cpc_write
; int1
	RJMP cpc_read
; ...

; Interrupt vectors for external INT pins (read and write).
; we have to react very quick.
; A read operation for the CPC lasts 3 clock cycles at 4MHz, that's 15
; AVR cycles. But the interrupt latency is as follow :
; Lowlevel detection			; 2 cycles 
; End of running instruction 	; up to 2 cycles
; Save PC						; 4 cycles
;Vector RJMP					; 2 cycles
								; TOTAL => 10 cycles

; --- READ INTERRUPT ---
cpc_read:
; That means we only have 5 cycles left to output the value on the BUS!
; We have no time to do anything, so we assume that X is already pointing at
; the right place and we just OUT it to the data port. We have no time for
; PUSHing and loading it, anyway.

; Note you can read from either port and get the same result. Two reasons to
; that : you can already access all the registers and part of the SRAM,
; and there's no time to do something more clever.

; There is no time to push/pop regs, so we just use X as is. R27 is part of X.

; We assume X (R26:R27) points to the current reg
; So we can load it and react fast enough to the interrupt
	LDI R16,ALL_OUT ; 1 ; peut être économisé si on sacrifie un reg
	OUT DATADIR,R0 ; 1
	LD R27,X			; 2 cycles ; peut être économisé si un reg. contient
									; déjà la valeur à envoyer
									; (mais qui l'update ?)
	OUT DATAOUT, R27		; 1 cycle

; Here data is sent, the CPC read operation is handled.
; We now wait for the end of the read cycle.
; This is not the end of the time-constrained nightmare, however :
; In the worst case, the CPC can do another OUT or IN right after,
; so we don't have an infinite number of cycles to handle the interrupt.
; it is much more relaxed, as we have 12 CPC cycles = 60 AVR cycles free.

; Restore R27
	LDI R27,curregbak
	LD R27,X

; release the bus
	LDI R16,ALL_IN
	OUT DATADIR, R16

; Restore R27 to selected reg. (we erased it to do the OUT)
	RETI


; --- WRITE INTERRUPT ---
cpc_write:
; The timing is a bit less constraining here.
	PUSH R0
	IN R0,DATAIN
; we also need to know A0 state...
	SBIS CTRLIN,A0
		; This was actually a reg select operation!
		; Jump to the proper code
	RJMP regSel
; We have read the CPC data. End of the heavy-constraint area

; Register write
	ST X,R0 ; Normal register write
	RJMP intEnd

regSel:
	LDI R27,curregbak
	ST X,R0
	MOV R27,R0

intEnd:
	POP R0
	RETI


; --- RESET VECTOR ---
; Here we perform the hardware initialization.
; At a bare minimum :
; * Set up the INT0 and INT1 so the CPC can do the rest of the setup itself
init:
	RJMP init
