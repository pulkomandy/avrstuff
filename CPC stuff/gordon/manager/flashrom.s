; ---------------------------------------------------------------------------
; Mini-Rom Install for MegaFlash (c) SyX 2011
;
; Based in the example sourcecode post in CPCWiki by
; (C) Dr. Stefan W. Stumpferl
; (Cr) TFM of FutureSoft 2011
;
; This routine can be used for foreign programs, 
; but this remark must be left as it is.
; ---------------------------------------------------------------------------
NUM_ROM EQU 6 ; 16

    include 'firmware.i'
    include 'hardware.i'

    ORG  $4000
inicio
    ; 1 .- Indicamos que se ponga el MegaFlash en modo de escritura y se pulse una tecla
    ; Ponemos el border Negro
    LD   BC,0 * 256 + 0
    CALL SCR_SET_BORDER

    CALL espera_tecla

    ; Ponemos el border Blanco
    LD   BC,16 * 256 + 16
    CALL SCR_SET_BORDER

    ; Esperamos al refresco
    CALL MC_WAIT_FLYBACK
    HALT 

    ; 2.- Escribimos la ROM en el MegaFlash
    LD   A,NUM_ROM          ; Nº de ROM en el MegaFlash
    LD   HL,rom_data        ; Puntero a los datos de la ROM
    CALL write_rom

    ; 3.- Indicamos que la ROM fue escrita, la comprobamos e indicamos el resultado de la comprobación
    ; Ponemos el border Blanco
    LD   BC,26 * 256 + 26
    CALL SCR_SET_BORDER

    CALL espera_tecla

    ; 4.- Indicamos que se ponga el MegaFlash en modo lectura y esperamos a una tecla antes de reiniciar.
    LD   A,NUM_ROM          ; Nº de ROM en el MegaFlash
    LD   HL,rom_data        ; Puntero a los datos de la ROM
    CALL test_rom
    JR   C,.error_test
    ; Ponemos el border Verde
    LD   BC,18 * 256 + 18
    CALL SCR_SET_BORDER
    JR   .exit
.error_test
    ; Ponemos el border Rojo
    LD   BC,6 * 256 + 6
    CALL SCR_SET_BORDER
.exit
    CALL espera_tecla

    ; Despaginamos el MegaFlash
    CALL $0000

; ---------------------------------------------------------------------------
; Copiamos una ROM de 16 KBs al MegaFlash
;
; Entradas:
;     A : Nº de ROM (0 - 31)
;    HL : Puntero a los 16 KBs de la ROM
; ---------------------------------------------------------------------------
write_rom
    DI                          ; Desactivamos las interrupciones

    LD   B,>UPPER_ROM_SELECT
    OUT  (C),A                  ; Seleccionamos la ROM del MegaFlash que vamos a escribir

    LD   BC,GATE_ARRAY + MODE_Y_ROM + LOWER_OFF + UPPER_ON + MODE_2
    OUT  (C),C

    LD   DE,RAM_P3              ; Dirección de destino es $C000

.copy_256_bytes
    LD   BC,$0100
    LDIR                        ; Copiamos 256 bytes de RAM al MegaFlash (buffer MegaFlash)

    LD   C,$20                  ; El MegaFlash necesita tiempo para borrar y escribir
.espera_32_ms                   ; >>> 32 * 256 Loops * 4 ys = 32 ms
    DJNZ .espera_32_ms
    DEC  C
    JR   NZ,.espera_32_ms

    ; Comprobamos que se hayan copiado los 16KBs de la ROM
    LD   A,D
    OR   E
    JR   NZ,.copy_256_bytes      ; En caso contrario copiamos el siguiente bloque de 256 bytes

    LD   BC,UPPER_ROM_SELECT    ; Seleccionamos la ROM del Basic
    OUT  (C),C

    EI                          ; Reactivamos las interrupciones

    RET

; ---------------------------------------------------------------------------
; Comprobamos que la ROM se escribió correctamente en el MegaFlash
;
; Entradas:
;     A : Nº de ROM (0 - 31)
;    HL : Puntero a los 16 KBs de la ROM
; Salidas:
;    Carry flag activo en caso de Error
; ---------------------------------------------------------------------------
test_rom
    DI                          ; Desactivamos las interrupciones

    LD   B,>UPPER_ROM_SELECT
    OUT  (C),A                  ; Seleccionamos la ROM del MegaFlash que vamos a comprobar

    LD   BC,GATE_ARRAY + MODE_Y_ROM + LOWER_OFF + UPPER_ON + MODE_2
    OUT  (C),C

    LD   DE,RAM_P3              ; Dirección de origen de la ROM
.bucle_de_comprobacion
    LD   A,(DE)
    CP   (HL)
    JR   NZ,.error_comprobacion
    INC  HL
    INC  DE
    LD   A,D
    OR   E
    JR   NZ,.bucle_de_comprobacion

    LD   BC,UPPER_ROM_SELECT    ; Seleccionamos la ROM del Basic
    OUT  (C),C
    EI                          ; Reactivamos las interrupciones

    XOR  A
    RET

.error_comprobacion
    LD   BC,UPPER_ROM_SELECT    ; Seleccionamos la ROM del Basic
    OUT  (C),C
    EI                          ; Reactivamos las interrupciones

    SCF
    RET

; ---------------------------------------------------------------------------
espera_tecla
    ; Reiniciamos el Key Manager
    CALL KM_RESET

    ; Esperamos a que no haya ninguna tecla pulsada
.bucle_espera_tecla
    CALL KM_READ_KEY
    JR   C,.bucle_espera_tecla

    ; Esperamos al refresco
    CALL MC_WAIT_FLYBACK
    HALT 

    ; Esperamos a que se pulse una tecla
    CALL KM_WAIT_KEY

    RET

; ---------------------------------------------------------------------------
rom_data
;    incbin 'qcmd.rom'
    incbin 'parados.rom'

; ---------------------------------------------------------------------------
    END
