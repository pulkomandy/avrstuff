EESchema Schematic File Version 2  date 08/04/2012 15:37:49
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
LIBS:mini_din
EELAYER 25  0
EELAYER END
$Descr User 7000 5000
encoding utf-8
Sheet 1 1
Title "AmiPS/2"
Date "8 apr 2012"
Rev "3.0"
Comp "pulkotronics"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MINI_DIN_6 X1
U 1 1 4F816A73
P 5350 1150
F 0 "X1" H 4950 1675 50  0000 L BNN
F 1 "MINI_DIN_6" H 5350 1675 50  0000 L BNN
F 2 "mini_din-M_DIN6" H 5350 1300 50  0001 C CNN
	1    5350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 750  1900 750 
Wire Wire Line
	1800 750  1800 1600
Wire Wire Line
	1800 1600 1900 1600
Wire Wire Line
	4550 850  4550 750 
Connection ~ 5000 1950
Wire Wire Line
	5000 1900 5000 2050
Wire Wire Line
	4250 2050 4500 2050
Wire Wire Line
	1900 750  1900 650 
Wire Wire Line
	1900 2150 1900 2050
Wire Wire Line
	5950 1050 6050 1050
Wire Wire Line
	1250 1150 1450 1150
Wire Wire Line
	4250 1950 4500 1950
Wire Wire Line
	4250 1350 4550 1350
Wire Wire Line
	1250 1350 1500 1350
Text Label 4250 1450 0    60   ~ 0
RIGHT
Text Label 4250 850  0    60   ~ 0
LEFT
$Comp
L GND #PWR01
U 1 1 4F815855
P 4550 750
F 0 "#PWR01" H 4550 750 30  0001 C CNN
F 1 "GND" H 4550 680 30  0001 C CNN
	1    4550 750 
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 4F815840
P 4550 1100
F 0 "R1" V 4630 1100 50  0000 C CNN
F 1 "R" V 4550 1100 50  0000 C CNN
	1    4550 1100
	1    0    0    -1  
$EndComp
Text Label 4250 1350 0    60   ~ 0
MID
Text Label 4250 1250 0    60   ~ 0
XB
Text Label 4250 1150 0    60   ~ 0
YA
Text Label 4250 1050 0    60   ~ 0
XA
Text Label 4250 950  0    60   ~ 0
YB
$Comp
L VDD #PWR02
U 1 1 4F8157E1
P 5000 1900
F 0 "#PWR02" H 5000 2000 30  0001 C CNN
F 1 "VDD" H 5000 2010 30  0000 C CNN
	1    5000 1900
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR03
U 1 1 4F8157A8
P 5850 1650
F 0 "#PWR03" H 5850 1750 30  0001 C CNN
F 1 "VDD" H 5850 1760 30  0000 C CNN
	1    5850 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4F8157A5
P 5850 2050
F 0 "#PWR04" H 5850 2050 30  0001 C CNN
F 1 "GND" H 5850 1980 30  0001 C CNN
	1    5850 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4F815748
P 1500 1350
F 0 "#PWR05" H 1500 1350 30  0001 C CNN
F 1 "GND" H 1500 1280 30  0001 C CNN
	1    1500 1350
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR06
U 1 1 4F81573E
P 1450 1150
F 0 "#PWR06" H 1450 1250 30  0001 C CNN
F 1 "VDD" H 1450 1260 30  0000 C CNN
	1    1450 1150
	0    1    1    0   
$EndComp
Text Label 1250 1550 0    60   ~ 0
RIGHT
Text Label 1250 950  0    60   ~ 0
LEFT
Text Label 1250 1650 0    60   ~ 0
MID
Text Label 1250 1450 0    60   ~ 0
XB
Text Label 1250 1250 0    60   ~ 0
YA
Text Label 1250 1050 0    60   ~ 0
XA
Text Label 1250 850  0    60   ~ 0
YB
Text Label 4250 2050 0    60   ~ 0
CLK
Text Label 4250 1950 0    60   ~ 0
DATA
NoConn ~ 5850 1350
NoConn ~ 4850 1350
NoConn ~ 5350 1550
NoConn ~ 4850 950 
Text Label 5850 950  2    60   ~ 0
CLK
$Comp
L VDD #PWR07
U 1 1 4F815692
P 4750 1050
F 0 "#PWR07" H 4750 1150 30  0001 C CNN
F 1 "VDD" H 4750 1160 30  0000 C CNN
	1    4750 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 4F81568A
P 6050 1050
F 0 "#PWR08" H 6050 1050 30  0001 C CNN
F 1 "GND" H 6050 980 30  0001 C CNN
	1    6050 1050
	0    -1   -1   0   
$EndComp
NoConn ~ 4750 1250
Text Label 5950 1250 0    60   ~ 0
DATA
$Comp
L VDD #PWR09
U 1 1 4F81546A
P 1900 650
F 0 "#PWR09" H 1900 750 30  0001 C CNN
F 1 "VDD" H 1900 760 30  0000 C CNN
	1    1900 650 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 4F815463
P 1900 2150
F 0 "#PWR010" H 1900 2150 30  0001 C CNN
F 1 "GND" H 1900 2080 30  0001 C CNN
	1    1900 2150
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4F815408
P 4750 2050
F 0 "R3" V 4830 2050 50  0000 C CNN
F 1 "R" V 4750 2050 50  0000 C CNN
	1    4750 2050
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 4F815406
P 4750 1950
F 0 "R2" V 4830 1950 50  0000 C CNN
F 1 "R" V 4750 1950 50  0000 C CNN
	1    4750 1950
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 4F8153FE
P 5850 1850
F 0 "C1" H 5900 1950 50  0000 L CNN
F 1 "C" H 5900 1750 50  0000 L CNN
	1    5850 1850
	-1   0    0    1   
$EndComp
$Comp
L DB9 J1
U 1 1 4F8153EB
P 800 1250
F 0 "J1" H 800 1800 70  0000 C CNN
F 1 "DB9" H 800 700 70  0000 C CNN
	1    800  1250
	-1   0    0    1   
$EndComp
$Comp
L PIC16F628A U1
U 1 1 4F8153D2
P 2950 1400
F 0 "U1" H 3250 2200 60  0000 C CNN
F 1 "PIC16F628A" H 3400 600 60  0000 C CNN
	1    2950 1400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
