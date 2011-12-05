EESchema Schematic File Version 2  date 05/12/2011 22:35:20
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
LIBS:dips-s
LIBS:w_device
LIBS:starkadroid-cache
EELAYER 25  0
EELAYER END
$Descr User 6000 6000
encoding utf-8
Sheet 1 1
Title "Starkadroid USB Arcade buttons device"
Date "5 dec 2011"
Rev "2010.10.16"
Comp "PulkoTronics"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR?
U 1 1 4EDD3909
P 4450 3750
F 0 "#PWR?" H 4450 3840 20  0001 C CNN
F 1 "+5V" H 4450 3840 30  0000 C CNN
	1    4450 3750
	0    1    1    0   
$EndComp
$Comp
L DOUBLE_LED D?
U 1 1 4EDD3903
P 4200 3750
F 0 "D?" H 4300 3920 50  0000 L CNN
F 1 "DOUBLE_LED" H 4200 3550 50  0000 C CNN
	1    4200 3750
	-1   0    0    1   
$EndComp
Connection ~ 4450 3350
Connection ~ 4450 3250
Wire Wire Line
	1450 2100 900  2100
Wire Wire Line
	2350 1100 2350 1400
Connection ~ 1450 1900
Connection ~ 1450 2100
Connection ~ 600  2000
Wire Wire Line
	600  2000 900  2000
Wire Wire Line
	900  2000 900  2100
Wire Wire Line
	4000 3850 3800 3850
Wire Wire Line
	3800 3850 3800 3800
Wire Wire Line
	3800 3800 3350 3800
Connection ~ 4450 3150
Wire Wire Line
	4450 3450 4450 3100
Wire Wire Line
	4450 3100 5000 3100
Wire Wire Line
	4550 3150 4450 3150
Wire Wire Line
	3350 2800 3500 2800
Wire Wire Line
	3350 2600 3500 2600
Wire Wire Line
	3350 2400 3500 2400
Wire Wire Line
	4900 2600 5000 2600
Wire Wire Line
	4900 2800 5000 2800
Wire Wire Line
	4900 2900 5000 2900
Wire Wire Line
	3350 2100 3500 2100
Wire Wire Line
	3350 1900 3500 1900
Wire Wire Line
	3350 1700 3500 1700
Wire Wire Line
	1900 1150 1900 650 
Wire Wire Line
	1900 650  1400 650 
Wire Wire Line
	1200 1400 1200 1700
Wire Notes Line
	3750 1550 3750 1400
Wire Notes Line
	3750 1400 2750 1400
Wire Wire Line
	4100 1550 4100 1650
Wire Wire Line
	3300 1250 3400 1250
Connection ~ 4000 650 
Wire Wire Line
	3900 650  4300 650 
Connection ~ 4200 1250
Wire Wire Line
	4300 1250 3900 1250
Connection ~ 4000 1150
Wire Wire Line
	4300 1150 3900 1150
Connection ~ 1900 1150
Wire Wire Line
	2350 1150 1400 1150
Connection ~ 1200 1400
Connection ~ 2350 1150
Connection ~ 1200 1700
Connection ~ 600  2800
Wire Wire Line
	2350 4300 600  4300
Connection ~ 600  2200
Connection ~ 1100 2800
Wire Wire Line
	1000 2800 1450 2800
Wire Wire Line
	1450 2400 1450 2200
Connection ~ 2350 1400
Connection ~ 2350 4300
Wire Wire Line
	1450 2800 1450 2600
Wire Wire Line
	1450 2200 1000 2200
Connection ~ 1100 2200
Wire Wire Line
	2350 4300 2350 4600
Wire Wire Line
	1100 1700 1450 1700
Wire Wire Line
	2350 1400 1700 1400
Wire Wire Line
	600  1150 1000 1150
Connection ~ 600  1150
Connection ~ 4100 1150
Wire Wire Line
	4300 650  4300 1050
Wire Wire Line
	3300 1150 3400 1150
Wire Wire Line
	4100 1550 3850 1550
Wire Wire Line
	4100 1650 4300 1650
Wire Wire Line
	4300 1650 4300 1350
Connection ~ 4200 1650
Wire Notes Line
	2750 1400 2750 600 
Wire Notes Line
	2750 600  4800 600 
Wire Notes Line
	4800 600  4800 1650
Wire Notes Line
	4800 1650 4350 1650
Wire Notes Line
	2750 700  2950 700 
Wire Notes Line
	2950 700  2950 600 
Wire Wire Line
	600  4300 600  650 
Wire Wire Line
	600  650  1000 650 
Wire Wire Line
	3350 1800 3500 1800
Wire Wire Line
	3350 2000 3500 2000
Wire Wire Line
	3350 2200 3500 2200
Wire Wire Line
	4900 3000 5000 3000
Wire Wire Line
	4900 2700 5000 2700
Wire Wire Line
	4900 2500 5000 2500
Wire Wire Line
	3350 2500 3500 2500
Wire Wire Line
	3350 2700 3500 2700
Wire Wire Line
	3350 2900 3500 2900
Wire Wire Line
	4900 3300 5000 3300
Wire Wire Line
	4900 3400 5000 3400
Wire Wire Line
	4900 3500 5000 3500
Wire Wire Line
	4900 3600 5000 3600
Wire Wire Line
	4900 3700 5000 3700
Wire Wire Line
	4900 3800 5000 3800
Wire Wire Line
	4850 3200 5000 3200
Wire Wire Line
	3350 3700 3800 3700
Wire Wire Line
	3800 3700 3800 3650
Wire Wire Line
	3800 3650 4000 3650
Wire Wire Line
	1350 1900 1450 1900
Text Label 1000 4300 0    60   ~ 0
GND
$Comp
L +5V #PWR01
U 1 1 4EDD2EFA
P 1350 1900
F 0 "#PWR01" H 1350 1990 20  0001 C CNN
F 1 "+5V" H 1350 1990 30  0000 C CNN
	1    1350 1900
	1    0    0    -1  
$EndComp
Text Label 4050 3450 0    60   ~ 0
SW3
Text Label 4050 3350 0    60   ~ 0
SW2
Text Label 4050 3250 0    60   ~ 0
SW1
Text Label 4050 3150 0    60   ~ 0
SW0
Text Label 3350 3500 0    60   ~ 0
SW0
Text Label 3350 3400 0    60   ~ 0
SW1
Text Label 3350 3200 0    60   ~ 0
SW2
Text Label 3350 3100 0    60   ~ 0
SW3
$Comp
L +5V #PWR02
U 1 1 4EDD2AC7
P 4850 3200
F 0 "#PWR02" H 4850 3290 20  0001 C CNN
F 1 "+5V" H 4850 3290 30  0000 C CNN
	1    4850 3200
	0    -1   -1   0   
$EndComp
$Comp
L DIPS_04 SW1
U 1 1 4EDD28E4
P 4250 3300
F 0 "SW1" V 4000 3300 60  0000 C CNN
F 1 "DIPS_04" V 4500 3300 60  0000 C CNN
	1    4250 3300
	0    1    1    0   
$EndComp
Text GLabel 4900 2600 0    60   Input ~ 0
J3D
Text GLabel 4900 2500 0    60   Input ~ 0
J3B
Text GLabel 4900 2800 0    60   Input ~ 0
J2D
Text GLabel 4900 2700 0    60   Input ~ 0
J2B
Text GLabel 4900 3000 0    60   Input ~ 0
J1D
Text GLabel 4900 2900 0    60   Input ~ 0
J1B
Text GLabel 3500 2900 2    60   Output ~ 0
J3D
Text GLabel 3500 2800 2    60   Output ~ 0
J3B
Text GLabel 3500 2600 2    60   Output ~ 0
J2B
Text GLabel 3500 2700 2    60   Output ~ 0
J2D
Text GLabel 3500 2500 2    60   Output ~ 0
J1D
Text GLabel 3500 2400 2    60   Output ~ 0
J1B
Text GLabel 4900 3300 0    60   Output ~ 0
B6
Text GLabel 4900 3400 0    60   Output ~ 0
B5
Text GLabel 4900 3500 0    60   Output ~ 0
B4
Text GLabel 4900 3600 0    60   Output ~ 0
B3
Text GLabel 4900 3700 0    60   Output ~ 0
B2
Text GLabel 4900 3800 0    60   Output ~ 0
B1
Text GLabel 3500 2200 2    60   Input ~ 0
B6
Text GLabel 3500 2100 2    60   Input ~ 0
B5
Text GLabel 3500 2000 2    60   Input ~ 0
B4
Text GLabel 3500 1900 2    60   Input ~ 0
B3
Text GLabel 3500 1800 2    60   Input ~ 0
B2
Text GLabel 3500 1700 2    60   Input ~ 0
B1
$Comp
L CONN_14 P1
U 1 1 4CB98E65
P 5350 3150
F 0 "P1" V 5300 3150 60  0000 C CNN
F 1 "CONN_12" V 5400 3150 60  0000 C CNN
F 2 "CONN_14" V 5240 3090 60  0001 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4C530791
P 4550 3150
F 0 "#PWR03" H 4550 3150 30  0001 C CNN
F 1 "GND" H 4550 3080 30  0001 C CNN
	1    4550 3150
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C5
U 1 1 4C52C709
P 1200 650
F 0 "C5" H 1250 750 50  0000 L CNN
F 1 "10µF" H 1250 550 50  0000 L CNN
	1    1200 650 
	0    1    1    0   
$EndComp
Text Notes 2950 700  2    60   ~ 0
USB
$Comp
L ZENER D4
U 1 1 4C21F047
P 4200 1450
F 0 "D4" H 4150 1200 50  0000 C CNN
F 1 "3.6V" H 4150 1300 40  0000 C CNN
	1    4200 1450
	0    -1   -1   0   
$EndComp
$Comp
L ZENER D3
U 1 1 4C21F044
P 4100 1350
F 0 "D3" H 4100 1450 50  0000 C CNN
F 1 "3.6V" H 4100 1550 40  0000 C CNN
	1    4100 1350
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 4C21F015
P 4000 900
F 0 "R4" V 4080 900 50  0000 C CNN
F 1 "2.2KR" V 4000 900 50  0000 C CNN
	1    4000 900 
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 4C21EFE9
P 3650 1250
F 0 "R7" V 3730 1250 50  0000 C CNN
F 1 "68R" V 3650 1250 50  0000 C CNN
	1    3650 1250
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 4C21EFE5
P 3650 1150
F 0 "R6" V 3550 1150 50  0000 C CNN
F 1 "68R" V 3650 1150 50  0000 C CNN
	1    3650 1150
	0    1    1    0   
$EndComp
Text GLabel 3300 1150 0    60   BiDi ~ 0
USB_D-
Text GLabel 3300 1250 0    60   BiDi ~ 0
USB_D+
$Comp
L +5V #PWR04
U 1 1 4C21EFA8
P 3900 650
F 0 "#PWR04" H 3900 740 20  0001 C CNN
F 1 "+5V" H 3900 740 30  0000 C CNN
	1    3900 650 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 4C21EFA1
P 3850 1550
F 0 "#PWR05" H 3850 1550 30  0001 C CNN
F 1 "GND" H 3850 1480 30  0001 C CNN
	1    3850 1550
	0    1    1    0   
$EndComp
$Comp
L CONN_4 USB1
U 1 1 4C21EF7A
P 4650 1200
F 0 "USB1" V 4600 1200 50  0000 C CNN
F 1 "CONN_4" V 4700 1200 50  0000 C CNN
	1    4650 1200
	1    0    0    -1  
$EndComp
Text GLabel 3350 3600 2    60   BiDi ~ 0
USB_D-
Text GLabel 3350 3300 2    60   BiDi ~ 0
USB_D+
$Comp
L C C4
U 1 1 4C20B56F
P 1200 1150
F 0 "C4" H 1250 1250 50  0000 L CNN
F 1 "100nF" H 1250 1050 50  0000 L CNN
	1    1200 1150
	0    -1   -1   0   
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
Text GLabel 1100 1700 0    60   Input ~ 0
RESET
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
L GND #PWR06
U 1 1 4C20AAB2
P 2350 4600
F 0 "#PWR06" H 2350 4600 30  0001 C CNN
F 1 "GND" H 2350 4530 30  0001 C CNN
	1    2350 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 4C20AAA4
P 2350 1100
F 0 "#PWR07" H 2350 1190 20  0001 C CNN
F 1 "+5V" H 2350 1190 30  0000 C CNN
	1    2350 1100
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
