EESchema Schematic File Version 2
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
EELAYER 27 0
EELAYER END
$Descr User 7874 4937
encoding utf-8
Sheet 1 1
Title "CPC CompactFlash interface"
Date "19 may 2014"
Rev ""
Comp "PulkoTronics"
Comment1 "Uses CF 8bit mode."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1800 1900 1800 2100
Wire Wire Line
	1600 1900 1600 2100
Wire Wire Line
	2500 1100 2500 950 
Wire Wire Line
	2400 1100 2400 950 
Wire Wire Line
	2300 1100 2300 950 
Wire Wire Line
	2200 1100 2200 950 
Wire Wire Line
	2100 1100 2100 950 
Wire Wire Line
	2000 1100 2000 950 
Wire Bus Line
	1400 750  700  750 
Wire Wire Line
	1400 1100 1400 950 
Wire Wire Line
	1200 1100 1200 950 
Wire Wire Line
	1000 1100 1000 950 
Wire Wire Line
	800  1100 800  950 
Wire Wire Line
	1700 1100 1700 800 
Wire Wire Line
	1500 1100 1500 800 
Wire Wire Line
	2900 1100 2900 950 
Wire Wire Line
	2700 1100 2700 950 
Wire Wire Line
	600  1900 600  2100
Wire Wire Line
	2300 1900 2300 2100
Wire Wire Line
	2500 1900 2500 2100
Wire Wire Line
	2800 1900 2800 2100
Wire Wire Line
	3000 2150 3100 2150
Wire Wire Line
	3000 1500 3000 2150
Wire Wire Line
	2100 2150 2100 1900
Wire Wire Line
	2200 2150 2200 1900
Wire Wire Line
	2900 1900 2900 2100
Wire Wire Line
	2600 1900 2600 2100
Wire Wire Line
	2400 1900 2400 2100
Wire Wire Line
	2000 1900 2000 2100
Wire Wire Line
	2800 1100 2800 950 
Wire Wire Line
	3000 1100 3000 950 
Wire Wire Line
	2700 2100 2700 1900
Wire Bus Line
	1500 800  1800 800 
Wire Wire Line
	1600 1100 1600 800 
Wire Wire Line
	1800 1100 1800 800 
Wire Wire Line
	700  1100 700  950 
Wire Wire Line
	900  1100 900  950 
Wire Wire Line
	1100 1100 1100 950 
Wire Wire Line
	1300 1100 1300 950 
Wire Wire Line
	700  1900 700  2050
Wire Wire Line
	800  1900 800  2050
Wire Wire Line
	900  1900 900  2050
Wire Wire Line
	1000 1900 1000 2050
Wire Wire Line
	1100 1900 1100 2050
Wire Wire Line
	1200 1900 1200 2050
Wire Wire Line
	1300 1900 1300 2050
Wire Wire Line
	1400 1900 1400 2050
Wire Bus Line
	1400 2200 700  2200
Wire Wire Line
	1900 2100 1900 1900
Wire Wire Line
	1900 1100 1900 950 
Wire Wire Line
	1500 1900 1500 2100
Wire Wire Line
	1700 1900 1700 2100
NoConn ~ 700  950 
NoConn ~ 2400 950 
NoConn ~ 2300 950 
NoConn ~ 2200 950 
NoConn ~ 2000 950 
$Comp
L VCC #PWR01
U 1 1 4DBBEA82
P 1900 2100
F 0 "#PWR01" H 1900 2200 30  0001 C CNN
F 1 "VCC" H 1900 2200 30  0000 C CNN
F 2 "" H 1900 2100 60  0001 C CNN
F 3 "" H 1900 2100 60  0001 C CNN
	1    1900 2100
	-1   0    0    1   
$EndComp
Text Label 700  2050 1    60   ~ 0
A15
Text Label 700  950  1    60   ~ 0
A14
Text Label 800  2050 1    60   ~ 0
A13
Text Label 800  950  1    60   ~ 0
A12
Text Label 900  2050 1    60   ~ 0
A11
Text Label 900  950  1    60   ~ 0
A10
Text Label 1000 2050 1    60   ~ 0
A9
Text Label 1000 950  1    60   ~ 0
A8
Text Label 1100 2050 1    60   ~ 0
A7
Text Label 1100 950  1    60   ~ 0
A6
Text Label 1200 2050 1    60   ~ 0
A5
Text Label 1200 950  1    60   ~ 0
A4
Text Label 1300 2050 1    60   ~ 0
A3
Text Label 1300 950  1    60   ~ 0
A2
Text Label 1400 2050 1    60   ~ 0
A1
Text Label 1400 950  1    60   ~ 0
A0
Entry Wire Line
	1800 800  1700 700 
Entry Wire Line
	1700 800  1600 700 
Entry Wire Line
	1600 800  1500 700 
Entry Wire Line
	1500 800  1400 700 
Text Label 1500 2100 1    60   ~ 0
D7
Text Label 1600 2100 1    60   ~ 0
D5
Text Label 1700 2100 1    60   ~ 0
D3
Text Label 1800 2100 1    60   ~ 0
D1
Text Label 1500 950  1    60   ~ 0
D6
Text Label 1600 950  1    60   ~ 0
D4
Text Label 1700 950  1    60   ~ 0
D2
Text Label 1800 950  1    60   ~ 0
D0
NoConn ~ 2700 950 
NoConn ~ 2800 950 
NoConn ~ 2900 950 
NoConn ~ 3000 950 
NoConn ~ 600  2100
NoConn ~ 2000 2100
NoConn ~ 2300 2100
NoConn ~ 2400 2100
NoConn ~ 2500 2100
NoConn ~ 2800 2100
NoConn ~ 2900 2100
Text Notes 350  2350 1    60   ~ 0
\ncpc connector
$Comp
L GND #PWR02
U 1 1 4CA89326
P 3100 2150
F 0 "#PWR02" H 3100 2150 30  0001 C CNN
F 1 "GND" H 3100 2080 30  0001 C CNN
F 2 "" H 3100 2150 60  0001 C CNN
F 3 "" H 3100 2150 60  0001 C CNN
	1    3100 2150
	0    -1   -1   0   
$EndComp
$Comp
L CONN_25X2 P1
U 1 1 4CA8712F
P 1800 1500
F 0 "P1" H 1800 2800 60  0000 C CNN
F 1 "CONN_25X2" V 1800 1500 50  0000 C CNN
F 2 "" H 1800 1500 60  0001 C CNN
F 3 "" H 1800 1500 60  0001 C CNN
	1    1800 1500
	0    -1   -1   0   
$EndComp
Text Label 2100 950  1    60   ~ 0
/RD
Text Label 2600 2100 3    60   ~ 0
/RESET
Wire Wire Line
	2600 1100 2600 950 
NoConn ~ 2500 950 
NoConn ~ 2600 950 
NoConn ~ 2700 2100
Wire Wire Line
	600  1100 600  1500
Wire Wire Line
	600  1500 3000 1500
Connection ~ 3000 1900
NoConn ~ 1900 950 
Text Label 2100 2150 3    60   ~ 0
/IORQ
Text Label 2200 2150 3    60   ~ 0
/WR
$Comp
L 74LS133 U1
U 1 1 537A314D
P 4350 2700
F 0 "U1" H 4350 2800 60  0000 C CNN
F 1 "74LS133" H 4350 2600 60  0000 C CNN
F 2 "~" H 4350 2700 60  0000 C CNN
F 3 "~" H 4350 2700 60  0000 C CNN
	1    4350 2700
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U2
U 1 1 537A315C
P 1450 3600
F 0 "U2" H 1450 3650 60  0000 C CNN
F 1 "74LS02" H 1500 3550 60  0000 C CNN
F 2 "~" H 1450 3600 60  0000 C CNN
F 3 "~" H 1450 3600 60  0000 C CNN
	1    1450 3600
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U2
U 2 1 537A3169
P 1450 3100
F 0 "U2" H 1450 3150 60  0000 C CNN
F 1 "74LS02" H 1500 3050 60  0000 C CNN
F 2 "~" H 1450 3100 60  0000 C CNN
F 3 "~" H 1450 3100 60  0000 C CNN
	2    1450 3100
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U2
U 3 1 537A316F
P 1450 4050
F 0 "U2" H 1450 4100 60  0000 C CNN
F 1 "74LS02" H 1500 4000 60  0000 C CNN
F 2 "~" H 1450 4050 60  0000 C CNN
F 3 "~" H 1450 4050 60  0000 C CNN
	3    1450 4050
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U2
U 4 1 537A3175
P 1450 2650
F 0 "U2" H 1450 2700 60  0000 C CNN
F 1 "74LS02" H 1500 2600 60  0000 C CNN
F 2 "~" H 1450 2650 60  0000 C CNN
F 3 "~" H 1450 2650 60  0000 C CNN
	4    1450 2650
	1    0    0    -1  
$EndComp
Text Label 3750 2600 2    60   ~ 0
A4
Text Label 3750 2500 2    60   ~ 0
A5
Text Label 3750 2400 2    60   ~ 0
A6
Text Label 3750 2300 2    60   ~ 0
A7
Text Label 850  2750 2    60   ~ 0
A8
Text Label 3750 2200 2    60   ~ 0
A9
Text Label 3750 2800 2    60   ~ 0
A10
Text Label 3750 2900 2    60   ~ 0
A11
Text Label 3750 3000 2    60   ~ 0
A12
Text Label 3750 3100 2    60   ~ 0
A13
Text Label 3750 3200 2    60   ~ 0
A14
Text Label 3750 3300 2    60   ~ 0
A15
Text Label 850  2550 2    60   ~ 0
A3
Text Label 4950 2700 0    60   ~ 0
/CS0
Text Label 2050 2650 0    60   ~ 0
A37
Text Label 3750 2700 2    60   ~ 0
A37
$Comp
L VCC #PWR03
U 1 1 537A31A6
P 3550 1950
F 0 "#PWR03" H 3550 2050 30  0001 C CNN
F 1 "VCC" H 3550 2050 30  0000 C CNN
F 2 "" H 3550 1950 60  0000 C CNN
F 3 "" H 3550 1950 60  0000 C CNN
	1    3550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2100 3550 2100
Wire Wire Line
	3550 2100 3550 1950
Text Label 850  3000 2    60   ~ 0
/CS0
Text Label 850  3200 2    60   ~ 0
/IORQ
Wire Wire Line
	2050 3100 2050 3350
Wire Wire Line
	2050 3350 850  3350
Wire Wire Line
	850  3350 850  3700
Connection ~ 850  3500
Text Label 2050 3600 0    60   ~ 0
/CE
Wire Wire Line
	850  4150 850  3950
Wire Wire Line
	850  4050 650  4050
Connection ~ 850  4050
NoConn ~ 2050 4050
$Comp
L CONN_20X2 P2
U 1 1 537A337A
P 6000 1600
F 0 "P2" H 6000 2650 60  0000 C CNN
F 1 "CONN_20X2" V 6000 1600 50  0000 C CNN
F 2 "" H 6000 1600 60  0000 C CNN
F 3 "" H 6000 1600 60  0000 C CNN
	1    6000 1600
	1    0    0    -1  
$EndComp
Text Label 5600 650  2    60   ~ 0
/RESET
$Comp
L GND #PWR04
U 1 1 537A3387
P 6750 750
F 0 "#PWR04" H 6750 750 30  0001 C CNN
F 1 "GND" H 6750 680 30  0001 C CNN
F 2 "" H 6750 750 60  0001 C CNN
F 3 "" H 6750 750 60  0001 C CNN
	1    6750 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 650  7050 650 
Wire Wire Line
	6750 650  6750 750 
Text Label 5600 1450 2    60   ~ 0
D0
Text Label 5600 1350 2    60   ~ 0
D1
Text Label 5600 1250 2    60   ~ 0
D2
Text Label 5600 1150 2    60   ~ 0
D3
Text Label 5600 1050 2    60   ~ 0
D4
Text Label 5600 950  2    60   ~ 0
D5
Text Label 5600 850  2    60   ~ 0
D6
Text Label 5600 750  2    60   ~ 0
D7
NoConn ~ 6400 750 
NoConn ~ 6400 850 
NoConn ~ 6400 950 
NoConn ~ 6400 1050
NoConn ~ 6400 1150
NoConn ~ 6400 1250
NoConn ~ 6400 1350
NoConn ~ 6400 1450
Wire Wire Line
	5250 1550 5250 1650
$Comp
L GND #PWR05
U 1 1 537A34C8
P 5250 1650
F 0 "#PWR05" H 5250 1650 30  0001 C CNN
F 1 "GND" H 5250 1580 30  0001 C CNN
F 2 "" H 5250 1650 60  0001 C CNN
F 3 "" H 5250 1650 60  0001 C CNN
	1    5250 1650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 537A34CE
P 6750 1450
F 0 "#PWR06" H 6750 1550 30  0001 C CNN
F 1 "VCC" H 6750 1550 30  0000 C CNN
F 2 "" H 6750 1450 60  0000 C CNN
F 3 "" H 6750 1450 60  0000 C CNN
	1    6750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1550 6750 1550
Wire Wire Line
	6750 1550 6750 1450
NoConn ~ 5600 1650
Wire Wire Line
	6400 1650 7050 1650
Wire Wire Line
	7050 650  7050 2550
Connection ~ 6750 650 
Text Label 5600 1750 2    60   ~ 0
/WR
Wire Wire Line
	7050 1750 6400 1750
Connection ~ 7050 1650
Text Label 5600 1850 2    60   ~ 0
/RD
Wire Wire Line
	7050 1850 6400 1850
Connection ~ 7050 1750
NoConn ~ 5600 1950
NoConn ~ 6400 1950
NoConn ~ 5600 2050
Wire Wire Line
	7050 2050 6400 2050
Connection ~ 7050 1850
NoConn ~ 5600 2150
NoConn ~ 6400 2150
Text Label 5600 2250 2    60   ~ 0
A1
NoConn ~ 6400 2250
Text Label 5600 2350 2    60   ~ 0
A0
Text Label 6400 2350 0    60   ~ 0
A2
Text Label 5600 2450 2    60   ~ 0
/CE
NoConn ~ 5600 2550
Wire Wire Line
	7050 2550 6400 2550
Connection ~ 7050 2050
$Comp
L R R1
U 1 1 537A36A3
P 6650 2450
F 0 "R1" V 6730 2450 40  0000 C CNN
F 1 "10K" V 6657 2451 40  0000 C CNN
F 2 "~" V 6580 2450 30  0000 C CNN
F 3 "~" H 6650 2450 30  0000 C CNN
	1    6650 2450
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR07
U 1 1 537A36B0
P 6900 2350
F 0 "#PWR07" H 6900 2450 30  0001 C CNN
F 1 "VCC" H 6900 2450 30  0000 C CNN
F 2 "" H 6900 2350 60  0000 C CNN
F 3 "" H 6900 2350 60  0000 C CNN
	1    6900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2450 6900 2350
$Comp
L C C1
U 1 1 537A3711
P 4750 1650
F 0 "C1" H 4750 1750 40  0000 L CNN
F 1 "C" H 4756 1565 40  0000 L CNN
F 2 "~" H 4788 1500 30  0000 C CNN
F 3 "~" H 4750 1650 60  0000 C CNN
	1    4750 1650
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 537A371E
P 4750 1950
F 0 "C2" H 4750 2050 40  0000 L CNN
F 1 "C" H 4756 1865 40  0000 L CNN
F 2 "~" H 4788 1800 30  0000 C CNN
F 3 "~" H 4750 1950 60  0000 C CNN
	1    4750 1950
	0    -1   -1   0   
$EndComp
$Comp
L CP C3
U 1 1 537A3726
P 4750 2200
F 0 "C3" H 4800 2300 40  0000 L CNN
F 1 "CP" H 4800 2100 40  0000 L CNN
F 2 "~" H 4850 2050 30  0000 C CNN
F 3 "~" H 4750 2200 300 0000 C CNN
	1    4750 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 1450 4550 2200
Connection ~ 4550 1950
Wire Wire Line
	4950 1550 4950 2200
Connection ~ 4950 1950
Connection ~ 4950 1650
Connection ~ 5250 1550
$Comp
L VCC #PWR08
U 1 1 537A38E6
P 4550 1450
F 0 "#PWR08" H 4550 1550 30  0001 C CNN
F 1 "VCC" H 4550 1550 30  0000 C CNN
F 2 "" H 4550 1450 60  0000 C CNN
F 3 "" H 4550 1450 60  0000 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
Connection ~ 4550 1650
$Comp
L VCC #PWR09
U 1 1 537A3AAD
P 650 3950
F 0 "#PWR09" H 650 4050 30  0001 C CNN
F 1 "VCC" H 650 4050 30  0000 C CNN
F 2 "" H 650 3950 60  0000 C CNN
F 3 "" H 650 3950 60  0000 C CNN
	1    650  3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  4050 650  3950
Wire Wire Line
	4950 1550 5600 1550
$EndSCHEMATC
