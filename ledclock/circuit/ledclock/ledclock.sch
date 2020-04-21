EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74HC595 U1
U 1 1 5E9F2D6B
P 2550 2800
F 0 "U1" H 2650 3500 50  0000 C CNN
F 1 "74HC595" H 2750 3400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2550 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2550 2800 50  0001 C CNN
	1    2550 2800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003 U2
U 1 1 5E9F2F28
P 3800 2600
F 0 "U2" H 3800 3267 50  0000 C CNN
F 1 "ULN2003" H 3800 3176 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3850 2050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 3900 2400 50  0001 C CNN
	1    3800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2400 3400 2400
Wire Wire Line
	2950 2500 3400 2500
Wire Wire Line
	2950 2600 3400 2600
Wire Wire Line
	2950 2700 3400 2700
Wire Wire Line
	2950 2800 3400 2800
Wire Wire Line
	2950 2900 3400 2900
Wire Wire Line
	2950 3000 3400 3000
$Comp
L Connector:Conn_01x12_Male J1
U 1 1 5E9F30D8
P 800 2950
F 0 "J1" H 906 3628 50  0000 C CNN
F 1 "Conn_01x12_Male" H 906 3537 50  0000 C CNN
F 2 "conn_te_micromatch:TE_MicroMatch_215750-0016_2x08_P1.27mm_Vertical" H 800 2950 50  0001 C CNN
F 3 "~" H 800 2950 50  0001 C CNN
	1    800  2950
	1    0    0    -1  
$EndComp
Text Label 1000 2450 0    50   ~ 0
S1
Text Label 1000 2550 0    50   ~ 0
S2
Text Label 1000 2650 0    50   ~ 0
S3
Text Label 1000 2750 0    50   ~ 0
S4
Text Label 1000 2850 0    50   ~ 0
S5
Text Label 1000 2950 0    50   ~ 0
S6
Text Label 1000 3050 0    50   ~ 0
S7
Text Label 1000 3150 0    50   ~ 0
GND
Text Label 1000 3350 0    50   ~ 0
VCC
Text Label 1000 3550 0    50   ~ 0
SIN
Text Label 1000 3450 0    50   ~ 0
SCLK
Text Label 1000 3250 0    50   ~ 0
SOUT
Wire Wire Line
	2550 3500 3800 3500
Wire Wire Line
	3800 3500 3800 3200
Text Label 3150 3500 0    50   ~ 0
GND
Wire Wire Line
	2550 2200 2550 2000
Text Label 2550 1650 0    50   ~ 0
VCC
NoConn ~ 2950 3100
Text Label 2950 3300 0    50   ~ 0
SOUT
Wire Wire Line
	2150 2700 1750 2700
Wire Wire Line
	1750 2700 1750 2000
Wire Wire Line
	1750 2000 2550 2000
Connection ~ 2550 2000
Wire Wire Line
	2550 2000 2550 1650
Text Label 1950 2600 0    50   ~ 0
SCLK
Wire Wire Line
	1950 2600 2150 2600
Wire Wire Line
	1950 2400 2150 2400
Text Label 1950 2400 0    50   ~ 0
SIN
Wire Wire Line
	2150 3000 2150 3500
Wire Wire Line
	2150 3500 2550 3500
Connection ~ 2550 3500
Wire Wire Line
	2150 2900 1950 2900
Wire Wire Line
	1950 2900 1950 2600
Text Label 4200 2400 0    50   ~ 0
S1
Text Label 4200 2500 0    50   ~ 0
S2
Text Label 4200 2600 0    50   ~ 0
S3
Text Label 4200 2700 0    50   ~ 0
S4
Text Label 4200 2800 0    50   ~ 0
S5
Text Label 4200 2900 0    50   ~ 0
S6
Text Label 4200 3000 0    50   ~ 0
S7
NoConn ~ 4200 2200
$EndSCHEMATC
