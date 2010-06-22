EESchema Schematic File Version 2  date 22/06/2010 16:28:43
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ps2toserial-cache
EELAYER 24  0
EELAYER END
$Descr User 7000 6000
Sheet 1 1
Title "PS/2 to serial converter"
Date "22 jun 2010"
Rev "2010.06.22"
Comp "PulkoTronics"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 5650 2800
Wire Wire Line
	5650 2600 5650 3000
Wire Wire Line
	5650 2600 6000 2600
Connection ~ 6000 3000
Wire Wire Line
	5650 3000 6100 3000
Wire Wire Line
	5300 2700 5200 2700
Wire Wire Line
	6000 2900 6100 2900
Wire Notes Line
	5100 1750 5100 1600
Wire Notes Line
	5100 1600 4800 1600
Wire Notes Line
	4800 1600 4800 2250
Wire Wire Line
	5050 2150 5150 2150
Wire Wire Line
	5050 1950 5150 1950
Wire Wire Line
	3350 2600 3550 2600
Wire Wire Line
	1400 850  1900 850 
Connection ~ 600  1150
Wire Wire Line
	1000 850  600  850 
Wire Wire Line
	600  850  600  4300
Wire Wire Line
	4050 3200 4150 3200
Wire Wire Line
	1700 1400 2350 1400
Connection ~ 600  1500
Wire Wire Line
	600  1150 800  1150
Connection ~ 600  1900
Wire Wire Line
	1100 1700 1450 1700
Connection ~ 6000 2900
Wire Wire Line
	3350 4000 3550 4000
Wire Wire Line
	3350 3800 3550 3800
Wire Notes Line
	4800 2450 6300 2450
Wire Notes Line
	6300 2450 6300 3100
Wire Notes Line
	6300 3100 4800 3100
Wire Wire Line
	600  1900 1450 1900
Wire Wire Line
	2350 4600 2350 4300
Connection ~ 1100 2200
Wire Wire Line
	1000 2200 1450 2200
Wire Wire Line
	1450 2600 1450 2800
Connection ~ 2350 4300
Wire Wire Line
	1450 2000 1450 2100
Wire Wire Line
	5600 3650 5450 3650
Wire Wire Line
	5450 3850 5600 3850
Wire Notes Line
	4800 3150 5650 3150
Wire Notes Line
	4800 3150 4800 4100
Wire Notes Line
	4800 4100 6150 4100
Wire Notes Line
	6150 4100 6150 3300
Wire Notes Line
	6150 3300 4800 3300
Wire Wire Line
	3350 2900 3550 2900
Wire Wire Line
	3350 3000 3550 3000
Wire Notes Line
	5650 3150 5650 3300
Wire Wire Line
	5450 3450 5600 3450
Wire Wire Line
	5600 3750 5300 3750
Wire Wire Line
	1450 2100 2350 2100
Wire Wire Line
	2350 2100 2350 1100
Connection ~ 2350 1400
Wire Wire Line
	1450 2200 1450 2400
Wire Wire Line
	1450 2800 1000 2800
Connection ~ 1100 2800
Connection ~ 1450 1900
Connection ~ 600  2200
Wire Wire Line
	2350 4300 600  4300
Connection ~ 600  2800
Wire Wire Line
	5200 2600 5300 2600
Wire Notes Line
	4800 3100 4800 2300
Wire Notes Line
	4800 2300 5100 2300
Wire Notes Line
	5100 2300 5100 2450
Wire Wire Line
	3350 3900 3550 3900
Connection ~ 6000 2800
Connection ~ 1200 1700
Wire Wire Line
	1200 1150 1200 1700
Connection ~ 1200 1500
Wire Wire Line
	1600 1150 2350 1150
Connection ~ 2350 1150
Connection ~ 1200 1400
Wire Wire Line
	3350 3200 3550 3200
Wire Wire Line
	4550 3200 4700 3200
Wire Wire Line
	1900 850  1900 1150
Connection ~ 1900 1150
Wire Wire Line
	3350 2700 3550 2700
Wire Wire Line
	5050 1850 5150 1850
Wire Wire Line
	5050 2050 5150 2050
Wire Notes Line
	4800 2250 5650 2250
Wire Notes Line
	5650 2250 5650 1750
Wire Notes Line
	5650 1750 4800 1750
Wire Wire Line
	6000 2700 6100 2700
Wire Wire Line
	5300 3000 5200 3000
Wire Wire Line
	5650 2900 5300 2900
Wire Wire Line
	5650 2800 6000 2800
Connection ~ 5650 2900
Text Notes 5050 1700 2    60   ~ 0
UART
$Comp
L +5V #PWR01
U 1 1 4C20B727
P 5050 2050
F 0 "#PWR01" H 5050 2140 20  0001 C CNN
F 1 "+5V" H 5050 2140 30  0000 C CNN
	1    5050 2050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 4C20B722
P 5050 2150
F 0 "#PWR02" H 5050 2150 30  0001 C CNN
F 1 "GND" H 5050 2080 30  0001 C CNN
	1    5050 2150
	0    1    1    0   
$EndComp
Text GLabel 5050 1850 0    60   Input ~ 0
TX
Text GLabel 5050 1950 0    60   Output ~ 0
RX
$Comp
L CONN_4 P1
U 1 1 4C20B6CD
P 5500 2000
F 0 "P1" V 5450 2000 50  0000 C CNN
F 1 "CONN_4" V 5550 2000 50  0000 C CNN
	1    5500 2000
	1    0    0    -1  
$EndComp
Text Notes 4200 3950 2    60   ~ 0
to ICSP
Text Notes 4600 2950 2    60   ~ 0
to Keyboard
Text Notes 4100 2700 2    60   ~ 0
to UART
Text GLabel 3550 2700 2    60   Output ~ 0
TX
Text GLabel 3550 2600 2    60   Input ~ 0
RX
$Comp
L C C4
U 1 1 4C20B56F
P 1200 850
F 0 "C4" H 1250 950 50  0000 L CNN
F 1 "100nF" H 1250 750 50  0000 L CNN
	1    1200 850 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 4C20B3CD
P 4700 3200
F 0 "#PWR03" H 4700 3200 30  0001 C CNN
F 1 "GND" H 4700 3130 30  0001 C CNN
	1    4700 3200
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 4C20B393
P 4350 3200
F 0 "D2" H 4350 3300 50  0000 C CNN
F 1 "LED" H 4350 3100 50  0000 C CNN
	1    4350 3200
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4C20B383
P 3800 3200
F 0 "R2" V 3880 3200 50  0000 C CNN
F 1 "470R" V 3800 3200 50  0000 C CNN
	1    3800 3200
	0    -1   -1   0   
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 4C20B295
P 900 1500
F 0 "SW1" H 1050 1610 50  0000 C CNN
F 1 "SW_PUSH" H 900 1420 50  0000 C CNN
	1    900  1500
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 4C20B276
P 1400 1150
F 0 "D1" H 1400 1250 40  0000 C CNN
F 1 "DIODE" H 1400 1050 40  0000 C CNN
	1    1400 1150
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4C20B267
P 1450 1400
F 0 "R1" V 1530 1400 50  0000 C CNN
F 1 "10K" V 1450 1400 50  0000 C CNN
	1    1450 1400
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 4C20B25A
P 1000 1150
F 0 "C3" H 1050 1250 50  0000 L CNN
F 1 "100nF" H 1050 1050 50  0000 L CNN
	1    1000 1150
	0    1    1    0   
$EndComp
Text GLabel 3550 4000 2    60   Input ~ 0
SCK
Text GLabel 1100 1700 0    60   Input ~ 0
RESET
Text GLabel 3550 3900 2    60   Output ~ 0
MISO
Text GLabel 3550 3800 2    60   Input ~ 0
MOSI
Text Notes 4850 2400 0    60   ~ 0
ICSP
$Comp
L GND #PWR04
U 1 1 4C20B0E8
P 6100 3000
F 0 "#PWR04" H 6100 3000 30  0001 C CNN
F 1 "GND" H 6100 2930 30  0001 C CNN
	1    6100 3000
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR05
U 1 1 4C20B0DF
P 5200 2700
F 0 "#PWR05" H 5200 2790 20  0001 C CNN
F 1 "+5V" H 5200 2790 30  0000 C CNN
	1    5200 2700
	0    -1   -1   0   
$EndComp
Text GLabel 6100 2700 2    60   Input ~ 0
MISO
Text GLabel 6100 2900 2    60   Output ~ 0
SCK
Text GLabel 5200 3000 0    60   Output ~ 0
RESET
Text GLabel 5200 2600 0    60   Output ~ 0
MOSI
$Comp
L C C2
U 1 1 4C20AD73
P 800 2800
F 0 "C2" H 850 2900 50  0000 L CNN
F 1 "27pF" H 850 2700 50  0000 L CNN
	1    800  2800
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 4C20AD6D
P 800 2200
F 0 "C1" H 850 2300 50  0000 L CNN
F 1 "27pF" H 850 2100 50  0000 L CNN
	1    800  2200
	0    1    1    0   
$EndComp
$Comp
L CRYSTAL X1
U 1 1 4C20AD34
P 1100 2500
F 0 "X1" H 1100 2650 60  0000 C CNN
F 1 "16MHz" H 1100 2350 60  0000 C CNN
	1    1100 2500
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR06
U 1 1 4C20ABFF
P 5300 3750
F 0 "#PWR06" H 5300 3840 20  0001 C CNN
F 1 "+5V" H 5300 3840 30  0000 C CNN
	1    5300 3750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 4C20ABF2
P 5450 3650
F 0 "#PWR07" H 5450 3650 30  0001 C CNN
F 1 "GND" H 5450 3580 30  0001 C CNN
	1    5450 3650
	0    1    1    0   
$EndComp
Text Notes 4850 3250 0    60   ~ 0
Connecteur ps/2
Text GLabel 3550 3000 2    60   BiDi ~ 0
PS2_DATA
Text GLabel 5450 3450 0    60   BiDi ~ 0
PS2_DATA
Text GLabel 5450 3850 0    60   Output ~ 0
PS2_CLK
Text GLabel 3550 2900 2    60   Input ~ 0
PS2_CLK
$Comp
L GND #PWR08
U 1 1 4C20AAB2
P 2350 4600
F 0 "#PWR08" H 2350 4600 30  0001 C CNN
F 1 "GND" H 2350 4530 30  0001 C CNN
	1    2350 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 4C20AAA4
P 2350 1100
F 0 "#PWR09" H 2350 1190 20  0001 C CNN
F 1 "+5V" H 2350 1190 30  0000 C CNN
	1    2350 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 PS2
U 1 1 4C20A3B4
P 5950 3700
F 0 "PS2" V 5900 3700 60  0000 C CNN
F 1 "CONN_6" V 6000 3700 60  0000 C CNN
F 2 "Mini_din6" V 5840 3640 60  0001 C CNN
	1    5950 3700
	1    0    0    -1  
$EndComp
$Comp
L DIL10 CON_PROG1
U 1 1 4C209C03
P 5650 2800
F 0 "CON_PROG1" H 5650 3100 60  0000 C CNN
F 1 "HE10" V 5650 2800 50  0000 C CNN
F 2 "HE10-10d" H 5590 3160 60  0001 C CNN
	1    5650 2800
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA8-P IC1
U 1 1 4C209A59
P 2350 2800
F 0 "IC1" H 1650 4050 50  0000 L BNN
F 1 "ATMEGA8-P" H 2600 1400 50  0000 L BNN
F 2 "DIP-28__300" H 2850 1325 50  0001 C CNN
	1    2350 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
