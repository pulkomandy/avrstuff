; -------------------------------------
;  PS/2 Mouse to Amiga Mouse Converter
; -------------------------------------
;
; Version: V1.0 (30-Jun-2001) Author : N. Baricevic <nogoth@yahoo.com>
; Version: V1.1 (26-mai-2006) modified by sundance
; version v1.2 (28/06/2006) modified by sundance
; V1.3 19/06/08 by PulkoMandy
;-------------------------------------------
;
;modif : standard mplab project 
;	configuration pic
;	support wheel mouse
;	sync xa/xb and ya/yb
;	compatibility with atari st
;	auto-detect amiga/atari
;V1.3
;	Some more optimisations/reorganisation
;	New parity code (smaller)
;	16f628 compatibility
;-------------------------------------------

; ------------------------------------------
;  includes
; ------------------------------------------;
	list f=inhx8m  ;Enter device name 
	LIST  p=16F628
	IFDEF __16F628
		include p16f628.inc
		__config _PWRTE_ON &  _WDT_OFF  & _CP_OFF & _BODEN_OFF & _DATA_CP_OFF & _INTRC_OSC_NOCLKOUT & _MCLRE_ON & _LVP_OFF
		#define VAR_BEGIN 0x20
		MESSG "Compiling for 16f628"
	ELSE
		include p16f84a.inc
		#define VAR_BEGIN 0x0C
		MESSG "Compiling for 16f84"
	ENDIF
; ------------------------------------------

; ---------- registers definition -----------

byte    equ     VAR_BEGIN            ; byte to receive or send
parity  equ     VAR_BEGIN+1            ; parity bit is held here
parcnt  equ     VAR_BEGIN+2     ; counter for calculating parity
roller  equ     VAR_BEGIN+3     ; help for 8 data bits to byte conversion
pack1   equ     VAR_BEGIN+4     ; 1st byte of mouse data packet
pack2   equ     VAR_BEGIN+5     ; 2nd byte of mouse data packet
pack3   equ     VAR_BEGIN+6     ; 3rd byte of mouse data packet
togglex	equ     VAR_BEGIN+7
toggley	equ	VAR_BEGIN+8
delcnt  equ     VAR_BEGIN+9     ; delay counter
tempxa	equ	VAR_BEGIN+0xA	; temp to sync xa and xb
tempxb	equ	VAR_BEGIN+0xB
tempya	equ	VAR_BEGIN+0xC	; temp to sync ya and yb
tempyb	equ	VAR_BEGIN+0xD
temp	equ	VAR_BEGIN+0xE
maskx	equ	VAR_BEGIN+0xF
masky	equ	VAR_BEGIN+0x10
delay	equ	VAR_BEGIN+0x11
savb	equ	VAR_BEGIN+0x12
bitya	equ	VAR_BEGIN+0x13
bityb	equ	VAR_BEGIN+0x14
bitxa	equ	VAR_BEGIN+0x15
bitxb	equ	VAR_BEGIN+0x16

; --------- main routine -----------
        org     0x0
	goto main

;EN 0x04 il y a les vecteurs d'interruption !
	ORG 0x04
	goto inter ;interrupt handler

	ORG 0x05
main:
;set port direction
	bsf     STATUS,RP0      ; page 1

	movlw	0xFB		; OUT ON RA2 FOR ERROR LED 
        movwf   TRISA           ; port A, bit 0 and  1 is input

	movlw	b'00000010'
	movwf	TRISB           ; port B is all outputs

; Set port values
        bcf     STATUS,RP0      ; page 0

	;Pour désactiver le CNA du 16f628
	IFDEF __16F628
		movlw 0x07
		movwf CMCON
	ENDIF

	movlw	b'11111111'
	movwf	PORTB	
	clrf	PORTA		; port A out pins to 0
	movlw	b'01111111'	;PULL UP ON on portb for detect amiga or atari 
	movwf	OPTION_REG

; set port out level

	clrf	byte
	clrf 	parity
	clrf	parcnt
	clrf	roller
	clrf	togglex
	clrf	toggley
	clrf	pack1
	clrf 	pack2
	clrf	pack3

check_mouse_init
        call    REC             ; receive byte from mouse
        call    INHIB           ; pull CLK low to inhibit furhter sending
        movf    byte,W
        xorlw   0xaa            ; if it's $AA mouse self test passed
        btfss   STATUS,Z
	goto 	check_mouse_init ;If error, restart the init

;check mouse id =00
        call    REL             ; release CLK (allow mouse to send)
        call    REC             ; receive byte from mouse
        call    INHIB
        movf    byte,W
        xorlw   0x00            ; mouse ID code should be $00
        btfss   STATUS,Z
	goto 	check_mouse_init ; restart the init

;allow mouse to send the data
        movlw   0xf4            ; "Enable Data Reporting" command to mouse
        movwf   byte
        call    NEWPAR          ; calculate parity for $F4
        call    REL             ; release CLK (allow mouse to send)

;wait
        call    DEL200		;wait 200µs

;receive ack = fa
        call    SEND            ; send command to mouse
        call    REC             ; receive acknowledge ($FA) from mouse)
        call    INHIB
        movf    byte,W
        xorlw   0xfa
        btfss   STATUS,Z
	goto 	check_mouse_init ;restart init if wrong

	movlw	0x40
	movwf	masky
	clrf	temp
megatempo
	call	DEL200		; WAIT INSERTION
	decfsz	temp,f
	goto	megatempo
	
	btfsc	PORTB,1		;MIDDLE BUTTON CONNECTED ?
	goto	amiga_pattern

;atari_pattern
	movlw	0x7C
	movwf	delay
; pattern atari xa b'00100000'
; pattern atari xb b'00010000'
	movlw	b'00010000'
	movwf	tempxa
	movlw	b'00100000'
	movwf	tempxb
; pattern atari ya b'00001000'
; pattern atari yb b'00000100'
	movlw	b'00001000'
	movwf	tempyb
	movlw	b'00000100'
	movwf	tempya
;mask atari x/y
	movlw	b'11001111'
	movwf	maskx
	movlw	b'11110011'
	movwf	masky
	movlw	b'00010000'
	movwf	bitxa
	movlw	b'00100000'
	movwf	bitxb
	movlw	b'00000100'
	movwf	bitya
	movlw	b'00001000'
	movwf	bityb

	goto	start

amiga_pattern
	movlw	0x3B
	movwf	delay
; pattern amiga xa b'00000100'
; pattern amiga xb b'00010000'
	movlw	b'00000100'
	movwf	tempxb
	movlw	b'00010000'
	movwf	tempxa
; pattern amiga ya b'00001000'
; pattern amiga yb b'00100000'
	movlw	b'00001000'
	movwf	tempyb
	movlw	b'00100000'
	movwf	tempya
;mask amiga x/y
	movlw	b'11101011'
	movwf	maskx
	movlw	b'11010111'
	movwf	masky
	movlw	b'00010000'
	movwf	bitxa
	movlw	b'00000100'
	movwf	bitxb
	movlw	b'00100000'
	movwf	bitya
	movlw	b'00001000'
	movwf	bityb
start
	bsf     STATUS,RP0      ; page 1
	clrf	TRISB           ; port B is all outputs
        bcf     STATUS,RP0      ; page 0	
;main loop
CHK: 
; lecture trame de 3 octets
        call    REL
 	call    REC             ; receive byte1 from mouse packet
        call    INHIB
        movf    byte,W
        movwf   pack1
        call    REL
        call    REC             ; receive byte2 from mouse packet
        call    INHIB
        movf    byte,W
        movwf   pack2
        call    REL
        call    REC             ; receive byte3 from mouse packet
        call    INHIB
        movf    byte,W
        movwf   pack3
;convertion ps2 > amiga
        call    CONV
        goto    CHK             ; receive another packet


; --------------------------------------------------------


DEL200: movfw	delay
        movwf   delcnt
DEL2:   decfsz  delcnt,f
        goto    DEL2
DEL10:  nop                     ; delay 10us
	nop
	nop
	nop
	nop
        return

; --------- byte receiving subroutine -------------
REC:    btfsc   PORTA,0         ; wait clock (start bit)
        goto    REC
RL1:    btfss   PORTA,0
        goto    RL1
        call    RECBIT          ; receive 8 data bits
        call    RECBIT
        call    RECBIT
        call    RECBIT
        call    RECBIT
        call    RECBIT
        call    RECBIT
        call    RECBIT
RL2:    btfsc   PORTA,0         ; receive parity bit
        goto    RL2
        btfsc   PORTA,1
        goto	RL3
        bcf     parity,0
RL4:
	call	wait_h
RL8:    btfss   PORTA,0
        goto    RL8
        return

RL3:    bsf     parity,0
        goto    RL4

; ---------- bit receiving subroutine ------------

RECBIT: btfsc   PORTA,0		;Attend que l'horloge passe à 0
        goto    RECBIT
        movf    PORTA,W		;Lit le port A
        movwf   roller		;Ne garde que le bit intéressant
        rrf     roller,f
        rrf     roller,f
        rrf     byte,f		
RL5:    btfss   PORTA,0		;Attend que l'horloge repasse à 1
        goto    RL5
        return

; ---------- subroutines -----------------

INHIB:  call	CLKLO		; inhibit mouse sending (CLK low)
        call    DEL200
        return

REL:    			; allow mouse to send data
CLKHI:  bsf     STATUS,RP0      ; CLK high
        bsf     TRISA,0
        bcf     STATUS,RP0
        return

CLKLO:  bsf     STATUS,RP0      ; CLK low
        bcf     TRISA,0
        bcf     STATUS,RP0
        bcf     PORTA,0
	return

DATLO:  bsf     STATUS,RP0      ; DATA low
        bcf     TRISA,1
        bcf     STATUS,RP0
        bcf     PORTA,1
        return

DATHI:  bsf     STATUS,RP0      ; DATA high
        bsf     TRISA,1
        bcf     STATUS,RP0
        return

send_bit
	rrf     byte,f            ; send data bit
        btfsc   STATUS,C
        goto    DHIGH
        call    DATLO
	goto 	wait_h
DHIGH:  call    DATHI
wait_h: btfss   PORTA,0
        goto    wait_h
wait_l: btfsc   PORTA,0
        goto    wait_l
		return
; ------------- send to mouse --------------

SEND:   call    INHIB           ; CLK low
        call    DEL10
        call    DATLO           ; DATA low
        call    DEL10
        call    REL             ; CLK high
SL1:    btfsc   PORTA,0         ; wait for CLK
        goto    SL1
	call 	send_bit
	call 	send_bit
	call 	send_bit
	call 	send_bit
	call 	send_bit
	call 	send_bit
	call 	send_bit
	call 	send_bit
        call    SNDPAR          ; send parity bit
	call	wait_h
        call    DATHI           ; release bus
	call	wait_h
SL7:    btfss   PORTA,0
        goto    SL7
SL8:    btfss   PORTA,1
        goto    SL8
        return

; -------------- subroutines --------------


SNDPAR: btfsc   parity,0        ; send parity bit
        goto    DATHI
        goto    DATLO

NEWPAR:               		; calculate parity bit
        clrf	parcnt
        btfsc   byte,0
        incf    parcnt,f
        btfsc   byte,1
        incf    parcnt,f
        btfsc   byte,2
        incf    parcnt,f
        btfsc   byte,3
        incf    parcnt,f
        btfsc   byte,4
        incf    parcnt,f
        btfsc   byte,5
        incf    parcnt,f
        btfsc   byte,6
        incf    parcnt,f
        btfsc   byte,7
        incf    parcnt,f
        bcf     parity,0
        btfss   parcnt,0
        bsf     parity,0
        return

; --------------- conversion to Amiga format --------------

CONV:
	bcf     savb,6
	btfss   pack1,0         ; left button
        bsf     savb,6
	bcf     savb,0
	btfss   pack1,1         ; right button
	bsf     savb,0
	bcf     savb,1
	btfss   pack1,2         ; middle button
        bsf     savb,1

	movf	PORTB,w		;read port b
        andlw   b'10111100' ;keep button state
	iorwf	savb,w		;merge with new x and y patterns
	movwf	PORTB		;ouput patterns

 	movf    pack2,W         ; mouvement conversion
        andlw   0xff
        btfss   STATUS,Z
        call    MOVEX
        movf    pack3,W
        andlw   0xff
        btfsc   STATUS,Z
        return

MOVEY:  btfss   pack1,5
        goto    DOWN

UP:     call    DEL200          ; send V and VQ for up movement
	incf	toggley,f
	btfsc	toggley,0
	swapf	tempya,f
	movfw	tempya
	andwf   bitya,w
	movwf	temp
	btfss	toggley,0
	swapf	tempyb,f
	movfw	tempyb
	andwf	bityb,w
	addwf	temp,f
	movfw	savb
	andwf	masky,w		;b'11001111'
	addwf	temp,w
	movwf	PORTB		;ouput patterns
	movwf	savb
	incfsz  pack3,f
        goto    UP
        return

DOWN:   call    DEL200          ; send V and VQ for down movement
	incf	toggley,f
	btfss	toggley,0
	swapf	tempya,f
	movfw	tempya
	andwf	bitya,w
	movwf	temp
	btfsc	toggley,0
	swapf	tempyb,f
	movfw	tempyb
	andwf	bityb,w
	addwf	temp,f
	movfw	savb
	andwf	masky,w		;b'11001111'
	addwf	temp,w
	movwf	PORTB		;ouput patterns
	movwf	savb
	decfsz  pack3,f
        goto    DOWN
        return
		
MOVEX:  btfss   pack1,4
        goto    LEFT

RIGHT:  call    DEL200          ; send H and HQ for right movement
	incf	togglex,f	; bon la c'est bobo la tete !
	btfss	togglex,0	; le pattern est sur un nibble
	swapf	tempxa,f        ; nibble = 4 bits
	movfw	tempxa		; seul un bit est urilisé dans le pattern
	andwf	bitxa,w
	movwf	temp		; donc on swap les nibble un fois sur deux avec un decalage 
	btfsc	togglex,0       ; entre x et y (c'est la le bobo la tete)
	swapf	tempxb,f	; de facon a se retouvé avec le pattern suivant
	movfw	tempxb		; 00 , 01, 11 puis  10 aye!
	andwf	bitxb,w
	addwf	temp,f		; pourquoi ? > marche quelque soit le pattern!!(amiga / atari)
	movfw	savb
	andwf	maskx,w		;b'11001111'
	addwf	temp,w
	movwf	PORTB		;ouput patterns
	movwf	savb
	incfsz  pack2,f
        goto    RIGHT
        return
LEFT:
	call    DEL200          ; send H and HQ for left movement
	incf	togglex,f
	btfsc	togglex,0
	swapf	tempxa,f
	movfw	tempxa
	andwf	bitxa,w
	movwf	temp
	btfss	togglex,0
	swapf	tempxb,f
	movfw	tempxb
	andwf	bitxb,w
	addwf	temp,f
	movfw	savb
	andwf	maskx,w		;b'11001111'
	addwf	temp,w
	movwf	PORTB		;ouput patterns
	movwf	savb
	decfsz  pack2,f
        goto    LEFT
        return

inter: ;Gestion des interruptions
	retfie ;ne fait rien
	end

