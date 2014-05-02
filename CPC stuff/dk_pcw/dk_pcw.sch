EESchema Schematic File Version 2
LIBS:device
LIBS:conn
LIBS:74xx
LIBS:SparkFun
LIBS:power
LIBS:dk_pcw-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DKTronics AY interface for PCW"
Date "2 may 2014"
Rev ""
Comp "PulkoTronics"
Comment1 "Based on HabiSoft redesign."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_25X2 J1
U 1 1 536246A4
P 1350 2000
F 0 "J1" H 1350 3300 60  0000 C CNN
F 1 "CONN_25X2" V 1350 2000 50  0000 C CNN
F 2 "" H 1350 2000 60  0000 C CNN
F 3 "" H 1350 2000 60  0000 C CNN
	1    1350 2000
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 536246D0
P 2100 3000
F 0 "C1" H 2100 3100 40  0000 L CNN
F 1 "10u" H 2106 2915 40  0000 L CNN
F 2 "~" H 2138 2850 30  0000 C CNN
F 3 "~" H 2100 3000 60  0000 C CNN
	1    2100 3000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 536246DD
P 2300 3000
F 0 "C2" H 2300 3100 40  0000 L CNN
F 1 "10n" H 2306 2915 40  0000 L CNN
F 2 "~" H 2338 2850 30  0000 C CNN
F 3 "~" H 2300 3000 60  0000 C CNN
	1    2300 3000
	1    0    0    -1  
$EndComp
$Comp
L AUDIO-JACK2 J3
U 1 1 53624AB8
P 9100 2350
F 0 "J3" H 8850 2600 50  0000 C CNN
F 1 "AUDIO-JACK2" H 9050 2100 50  0000 C CNN
F 2 "" H 9100 2350 60  0000 C CNN
F 3 "" H 9100 2350 60  0000 C CNN
	1    9100 2350
	-1   0    0    1   
$EndComp
$Comp
L DB9 J4
U 1 1 53624AD3
P 9250 1300
F 0 "J4" H 9250 1850 70  0000 C CNN
F 1 "DB9" H 9250 750 70  0000 C CNN
F 2 "" H 9250 1300 60  0000 C CNN
F 3 "" H 9250 1300 60  0000 C CNN
	1    9250 1300
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 53624C84
P 6850 3050
F 0 "R11" V 6930 3050 40  0000 C CNN
F 1 "R" V 6857 3051 40  0000 C CNN
F 2 "~" V 6780 3050 30  0000 C CNN
F 3 "~" H 6850 3050 30  0000 C CNN
	1    6850 3050
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 53624C8A
P 6850 3150
F 0 "R12" V 6930 3150 40  0000 C CNN
F 1 "R" V 6857 3151 40  0000 C CNN
F 2 "~" V 6780 3150 30  0000 C CNN
F 3 "~" H 6850 3150 30  0000 C CNN
	1    6850 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R13
U 1 1 53624C90
P 6850 3250
F 0 "R13" V 6930 3250 40  0000 C CNN
F 1 "R" V 6857 3251 40  0000 C CNN
F 2 "~" V 6780 3250 30  0000 C CNN
F 3 "~" H 6850 3250 30  0000 C CNN
	1    6850 3250
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 53624C96
P 7550 3250
F 0 "R14" V 7630 3250 40  0000 C CNN
F 1 "R" V 7557 3251 40  0000 C CNN
F 2 "~" V 7480 3250 30  0000 C CNN
F 3 "~" H 7550 3250 30  0000 C CNN
	1    7550 3250
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 53624C9C
P 7650 1050
F 0 "R15" V 7730 1050 40  0000 C CNN
F 1 "R" V 7657 1051 40  0000 C CNN
F 2 "~" V 7580 1050 30  0000 C CNN
F 3 "~" H 7650 1050 30  0000 C CNN
	1    7650 1050
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 53624CA2
P 7550 3400
F 0 "R16" V 7630 3400 40  0000 C CNN
F 1 "R" V 7557 3401 40  0000 C CNN
F 2 "~" V 7480 3400 30  0000 C CNN
F 3 "~" H 7550 3400 30  0000 C CNN
	1    7550 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R17
U 1 1 53624CA8
P 7650 1350
F 0 "R17" V 7730 1350 40  0000 C CNN
F 1 "R" V 7657 1351 40  0000 C CNN
F 2 "~" V 7580 1350 30  0000 C CNN
F 3 "~" H 7650 1350 30  0000 C CNN
	1    7650 1350
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 53624CDE
P 8550 900
F 0 "R1" V 8630 900 40  0000 C CNN
F 1 "R" V 8557 901 40  0000 C CNN
F 2 "~" V 8480 900 30  0000 C CNN
F 3 "~" H 8550 900 30  0000 C CNN
	1    8550 900 
	0    -1   -1   0   
$EndComp
$Comp
L DIL40 U5
U 1 1 53624CEC
P 10400 1650
F 0 "U5" H 10400 2700 70  0000 C CNN
F 1 "AY3-8910" V 10400 1650 60  0000 C CNN
F 2 "" H 10400 1650 60  0000 C CNN
F 3 "" H 10400 1650 60  0000 C CNN
	1    10400 1650
	1    0    0    -1  
$EndComp
NoConn ~ 10050 800 
NoConn ~ 10050 1100
Text Label 10050 900  2    60   ~ 0
AUDA
Text Label 10050 1000 2    60   ~ 0
AUDB
Text Label 10050 1900 2    60   ~ 0
IOB0
Text Label 10050 1800 2    60   ~ 0
IOB1
Text Label 10050 1700 2    60   ~ 0
IOB2
Text Label 10050 1600 2    60   ~ 0
IOB3
Text Label 10050 1500 2    60   ~ 0
IOB4
Text Label 10050 1400 2    60   ~ 0
IOB5
Text Label 10050 1300 2    60   ~ 0
IOB6
Text Label 10050 1200 2    60   ~ 0
IOB7
Text Label 10750 2600 0    60   ~ 0
IOA0
Text Label 10050 2600 2    60   ~ 0
IOA1
Text Label 10050 2500 2    60   ~ 0
IOA2
Text Label 10050 2400 2    60   ~ 0
IOA3
Text Label 10050 2300 2    60   ~ 0
IOA4
Text Label 10050 2200 2    60   ~ 0
IOA5
Text Label 10050 2100 2    60   ~ 0
IOA6
Text Label 10050 2000 2    60   ~ 0
IOA7
Text Label 10750 800  0    60   ~ 0
TST1
Text Label 10750 900  0    60   ~ 0
AUDC
Text Label 10750 1000 0    60   ~ 0
D0
Text Label 10750 1100 0    60   ~ 0
D1
Text Label 10750 1200 0    60   ~ 0
D2
Text Label 10750 1300 0    60   ~ 0
D3
Text Label 10750 1400 0    60   ~ 0
D4
Text Label 10750 1500 0    60   ~ 0
D5
Text Label 10750 1600 0    60   ~ 0
D6
Text Label 10750 1700 0    60   ~ 0
D7
Text Label 10750 1800 0    60   ~ 0
BC1
Text Label 10750 1900 0    60   ~ 0
BC2
Text Label 10750 2000 0    60   ~ 0
BDIR
Text Label 10750 2300 0    60   ~ 0
/A9
Text Label 10750 2400 0    60   ~ 0
/RESET
Text Label 10750 2500 0    60   ~ 0
CLK1
NoConn ~ 1750 3200
NoConn ~ 950  3200
NoConn ~ 1750 2900
$Comp
L +12V #PWR01
U 1 1 536253A5
P 750 2900
F 0 "#PWR01" H 750 2850 20  0001 C CNN
F 1 "+12V" H 750 3000 30  0000 C CNN
F 2 "" H 750 2900 60  0000 C CNN
F 3 "" H 750 2900 60  0000 C CNN
	1    750  2900
	1    0    0    -1  
$EndComp
Text Label 1750 2100 0    60   ~ 0
A0
Text Label 950  2100 2    60   ~ 0
A1
Text Label 1750 2200 0    60   ~ 0
A2
Text Label 950  2200 2    60   ~ 0
A3
Text Label 1750 2300 0    60   ~ 0
A4
Text Label 950  2300 2    60   ~ 0
A5
Text Label 1750 2400 0    60   ~ 0
A6
Text Label 950  2400 2    60   ~ 0
A7
Text Label 1750 2500 0    60   ~ 0
A8
Text Label 950  2500 2    60   ~ 0
A9
Text Label 1750 2600 0    60   ~ 0
A10
Text Label 950  2600 2    60   ~ 0
A11
Text Label 1750 2700 0    60   ~ 0
A12
Text Label 950  2700 2    60   ~ 0
A13
Text Label 1750 2800 0    60   ~ 0
A14
Text Label 950  2800 2    60   ~ 0
A15
Text Label 1750 1700 0    60   ~ 0
D0
Text Label 950  1700 2    60   ~ 0
D1
Text Label 1750 1800 0    60   ~ 0
D2
Text Label 950  1800 2    60   ~ 0
D3
Text Label 1750 1900 0    60   ~ 0
D4
Text Label 950  1900 2    60   ~ 0
D5
Text Label 1750 2000 0    60   ~ 0
D6
Text Label 950  2000 2    60   ~ 0
D7
Text Label 1750 1600 0    60   ~ 0
/RESET
Text Label 1750 1500 0    60   ~ 0
/BUSRQ
Text Label 1750 1400 0    60   ~ 0
/BUSAK
Text Label 1750 1300 0    60   ~ 0
/WR
Text Label 1750 1200 0    60   ~ 0
/RD
NoConn ~ 1750 1100
Text Label 1750 1000 0    60   ~ 0
VIDEO
Text Label 1750 900  0    60   ~ 0
/32MHz
Text Label 950  1600 2    60   ~ 0
/M1
Text Label 950  1500 2    60   ~ 0
/INT
Text Label 950  1400 2    60   ~ 0
/WAIT
Text Label 950  1300 2    60   ~ 0
/MREQ
Text Label 950  1200 2    60   ~ 0
/IOREQ
Text Label 950  1100 2    60   ~ 0
NSYNC
Text Label 950  1000 2    60   ~ 0
/MDIS
Text Label 950  900  2    60   ~ 0
Z80CLK
$Comp
L 74LS138 U1
U 1 1 53625F89
P 3600 2450
F 0 "U1" H 3700 2950 60  0000 C CNN
F 1 "74LS138" H 3750 1901 60  0000 C CNN
F 2 "~" H 3600 2450 60  0000 C CNN
F 3 "~" H 3600 2450 60  0000 C CNN
	1    3600 2450
	1    0    0    -1  
$EndComp
$Comp
L 74LS74 U2
U 1 1 53625FC5
P 1500 4100
F 0 "U2" H 1650 4400 60  0000 C CNN
F 1 "74LS74" H 1800 3805 60  0000 C CNN
F 2 "~" H 1500 4100 60  0000 C CNN
F 3 "~" H 1500 4100 60  0000 C CNN
	1    1500 4100
	1    0    0    -1  
$EndComp
$Comp
L 74LS74 U2
U 2 1 53625FD2
P 3000 4100
F 0 "U2" H 3150 4400 60  0000 C CNN
F 1 "74LS74" H 3300 3805 60  0000 C CNN
F 2 "~" H 3000 4100 60  0000 C CNN
F 3 "~" H 3000 4100 60  0000 C CNN
	2    3000 4100
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U3
U 1 1 53626001
P 5350 900
F 0 "U3" H 5350 950 60  0000 C CNN
F 1 "74LS00" H 5350 800 60  0000 C CNN
F 2 "~" H 5350 900 60  0000 C CNN
F 3 "~" H 5350 900 60  0000 C CNN
	1    5350 900 
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U3
U 2 1 5362600E
P 5350 1350
F 0 "U3" H 5350 1400 60  0000 C CNN
F 1 "74LS00" H 5350 1250 60  0000 C CNN
F 2 "~" H 5350 1350 60  0000 C CNN
F 3 "~" H 5350 1350 60  0000 C CNN
	2    5350 1350
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U3
U 3 1 53626014
P 5050 3700
F 0 "U3" H 5050 3750 60  0000 C CNN
F 1 "74LS00" H 5050 3600 60  0000 C CNN
F 2 "~" H 5050 3700 60  0000 C CNN
F 3 "~" H 5050 3700 60  0000 C CNN
	3    5050 3700
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U3
U 4 1 5362601A
P 5050 4250
F 0 "U3" H 5050 4300 60  0000 C CNN
F 1 "74LS00" H 5050 4150 60  0000 C CNN
F 2 "~" H 5050 4250 60  0000 C CNN
F 3 "~" H 5050 4250 60  0000 C CNN
	4    5050 4250
	1    0    0    -1  
$EndComp
$Comp
L 74LS138 U4
U 1 1 53626022
P 3650 1200
F 0 "U4" H 3750 1700 60  0000 C CNN
F 1 "74LS138" H 3800 651 60  0000 C CNN
F 2 "~" H 3650 1200 60  0000 C CNN
F 3 "~" H 3650 1200 60  0000 C CNN
	1    3650 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5362620C
P 600 3300
F 0 "#PWR02" H 600 3300 30  0001 C CNN
F 1 "GND" H 600 3230 30  0001 C CNN
F 2 "" H 600 3300 60  0000 C CNN
F 3 "" H 600 3300 60  0000 C CNN
	1    600  3300
	1    0    0    -1  
$EndComp
Text Label 850  3100 2    60   ~ 0
GND
Text Label 5950 900  0    60   ~ 0
BC1
Text Label 3000 2300 2    60   ~ 0
A5
Text Label 10750 2200 0    60   ~ 0
_A8
$Comp
L GND #PWR03
U 1 1 53626517
P 9750 800
F 0 "#PWR03" H 9750 800 30  0001 C CNN
F 1 "GND" H 9750 730 30  0001 C CNN
F 2 "" H 9750 800 60  0000 C CNN
F 3 "" H 9750 800 60  0000 C CNN
	1    9750 800 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 536266A1
P 2000 2700
F 0 "#PWR04" H 2000 2800 30  0001 C CNN
F 1 "VCC" H 2000 2800 30  0000 C CNN
F 2 "" H 2000 2700 60  0000 C CNN
F 3 "" H 2000 2700 60  0000 C CNN
	1    2000 2700
	1    0    0    -1  
$EndComp
Text Label 2200 2800 0    60   ~ 0
VCC
Text Label 11050 600  0    60   ~ 0
VCC
Text Label 3600 3900 0    60   ~ 0
CLK1
Text Label 8800 1000 2    60   ~ 0
GND
Text Label 8900 2550 2    60   ~ 0
GND
Text Label 6800 1600 0    60   ~ 0
GND
Text Label 1500 3550 0    60   ~ 0
VCC
Text Label 11000 2300 0    60   ~ 0
GND
Text Label 8900 2350 2    60   ~ 0
LEFT
Text Label 8900 2150 2    60   ~ 0
RIGHT
Text Label 900  4100 2    60   ~ 0
Z80CLK
Text Label 5950 1350 0    60   ~ 0
BDIR
Text Label 3050 1450 2    60   ~ 0
/IOREQ
Text Label 3050 1050 2    60   ~ 0
/RD
Text Label 3050 1350 2    60   ~ 0
/M1
Text Label 3050 950  2    60   ~ 0
A1
Text Label 3050 850  2    60   ~ 0
A0
Text Label 3000 2100 2    60   ~ 0
A3
Text Label 3000 2200 2    60   ~ 0
A2
Text Label 3000 2800 2    60   ~ 0
A4
Text Label 3000 2700 2    60   ~ 0
A6
Text Label 3000 2600 2    60   ~ 0
A7
NoConn ~ 4200 2100
NoConn ~ 4200 2200
NoConn ~ 4200 2300
NoConn ~ 4200 2500
NoConn ~ 4200 2700
NoConn ~ 4200 2800
NoConn ~ 4250 1350
NoConn ~ 4250 1250
NoConn ~ 4250 1150
NoConn ~ 4250 1050
NoConn ~ 4250 850 
Text Notes 4800 650  2    60   ~ 0
Address decoding
Text Notes 3200 3450 2    60   ~ 0
1MHz clock generation
Text Notes 7350 700  2    60   ~ 0
Audio mixing
Text Label 8800 1400 2    60   ~ 0
IOA7
Text Label 8800 1600 2    60   ~ 0
IOA6
Text Label 8800 1700 2    60   ~ 0
IOA5
Text Label 8800 1500 2    60   ~ 0
IOA4
Text Label 8800 1300 2    60   ~ 0
IOA2
Text Label 8800 1100 2    60   ~ 0
IOA3
Text Label 8300 900  2    60   ~ 0
VCC
Text Label 6350 3150 2    60   ~ 0
GND
Text Label 7800 3150 2    60   ~ 0
AUDA
Text Label 7200 3350 2    60   ~ 0
AUDB
Text Label 7600 3050 2    60   ~ 0
AUDC
$Comp
L R R18
U 1 1 53629314
P 6850 1050
F 0 "R18" V 6930 1050 40  0000 C CNN
F 1 "R" V 6857 1051 40  0000 C CNN
F 2 "~" V 6780 1050 30  0000 C CNN
F 3 "~" H 6850 1050 30  0000 C CNN
	1    6850 1050
	0    -1   -1   0   
$EndComp
$Comp
L R R19
U 1 1 53629321
P 6850 1350
F 0 "R19" V 6930 1350 40  0000 C CNN
F 1 "R" V 6857 1351 40  0000 C CNN
F 2 "~" V 6780 1350 30  0000 C CNN
F 3 "~" H 6850 1350 30  0000 C CNN
	1    6850 1350
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 53629416
P 7450 850
F 0 "C3" H 7450 950 40  0000 L CNN
F 1 "C" H 7456 765 40  0000 L CNN
F 2 "~" H 7488 700 30  0000 C CNN
F 3 "~" H 7450 850 60  0000 C CNN
	1    7450 850 
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 53629423
P 7450 1550
F 0 "C4" H 7450 1650 40  0000 L CNN
F 1 "C" H 7456 1465 40  0000 L CNN
F 2 "~" H 7488 1400 30  0000 C CNN
F 3 "~" H 7450 1550 60  0000 C CNN
	1    7450 1550
	0    -1   -1   0   
$EndComp
Text Label 7650 850  0    60   ~ 0
LEFT
Text Label 7650 1550 0    60   ~ 0
RIGHT
Wire Wire Line
	4350 2600 4200 2600
Connection ~ 7250 1350
Wire Wire Line
	7250 1550 7250 1350
Connection ~ 7250 1050
Wire Wire Line
	7250 850  7250 1050
Wire Wire Line
	7100 1350 7400 1350
Wire Wire Line
	7100 1050 7400 1050
Connection ~ 8300 3150
Wire Wire Line
	8300 3250 7800 3250
Connection ~ 8100 3050
Wire Wire Line
	8100 3400 7800 3400
Wire Wire Line
	7200 3400 7300 3400
Connection ~ 7200 3250
Wire Wire Line
	7200 3250 7200 3400
Wire Wire Line
	8100 1350 7900 1350
Wire Wire Line
	8100 1350 8100 3400
Wire Wire Line
	7100 3050 8100 3050
Wire Wire Line
	8300 1050 7900 1050
Wire Wire Line
	8300 1050 8300 3250
Wire Wire Line
	7100 3150 8300 3150
Wire Wire Line
	7100 3250 7300 3250
Wire Wire Line
	6600 3150 6350 3150
Connection ~ 6600 3150
Wire Wire Line
	6600 3050 6600 3250
Wire Wire Line
	9000 1200 8800 1200
Wire Wire Line
	9000 1000 9000 1200
Wire Wire Line
	8800 1000 9000 1000
Wire Wire Line
	2950 1900 2950 1550
Wire Wire Line
	4350 1900 2950 1900
Wire Wire Line
	4350 1900 4350 2600
Wire Wire Line
	2950 1550 3050 1550
Wire Wire Line
	4750 1550 4750 1450
Wire Wire Line
	4250 1550 4750 1550
Wire Wire Line
	4550 800  4750 800 
Wire Wire Line
	4550 950  4550 800 
Wire Wire Line
	4250 950  4550 950 
Connection ~ 4750 1100
Wire Wire Line
	4550 1100 4750 1100
Wire Wire Line
	4550 1450 4550 1100
Wire Wire Line
	4250 1450 4550 1450
Wire Wire Line
	4750 1000 4750 1250
Connection ~ 3000 4650
Connection ~ 3000 3550
Wire Wire Line
	3900 4650 3900 3550
Wire Wire Line
	1500 4650 3900 4650
Wire Wire Line
	3900 3550 1500 3550
Wire Wire Line
	2400 4000 2400 3900
Wire Wire Line
	3600 4000 2400 4000
Wire Wire Line
	3600 4300 3600 4000
Wire Wire Line
	900  4000 900  3900
Wire Wire Line
	2100 4000 900  4000
Wire Wire Line
	2100 4300 2100 4000
Connection ~ 6600 1200
Wire Wire Line
	6500 1200 6600 1200
Wire Wire Line
	6600 1350 6600 1050
Wire Wire Line
	10750 2300 11000 2300
Wire Wire Line
	11050 600  11050 2200
Connection ~ 2000 2800
Wire Wire Line
	2000 2700 2000 2800
Connection ~ 11050 700 
Wire Wire Line
	9750 700  10050 700 
Connection ~ 11050 1900
Wire Wire Line
	11050 700  10750 700 
Wire Wire Line
	11050 1900 10750 1900
Wire Wire Line
	11050 2200 10750 2200
Connection ~ 600  3100
Connection ~ 2100 2800
Connection ~ 1750 3000
Wire Wire Line
	1950 2800 2300 2800
Wire Wire Line
	1950 3000 1950 2800
Wire Wire Line
	950  3000 1950 3000
Wire Wire Line
	750  2900 950  2900
Connection ~ 2100 3200
Connection ~ 1750 3100
Wire Wire Line
	1900 3200 2300 3200
Wire Wire Line
	1900 3100 1900 3200
Connection ~ 950  800 
Wire Wire Line
	600  800  600  3200
Wire Wire Line
	600  800  1750 800 
Connection ~ 950  3100
Wire Wire Line
	600  3100 1900 3100
NoConn ~ 4200 2400
$Comp
L RR9 RR1
U 1 1 5362B3C6
P 6450 2000
F 0 "RR1" H 6500 2600 70  0000 C CNN
F 1 "RR9" V 6480 2000 70  0000 C CNN
F 2 "~" H 6450 2000 60  0000 C CNN
F 3 "~" H 6450 2000 60  0000 C CNN
	1    6450 2000
	-1   0    0    1   
$EndComp
Text Label 6800 1700 0    60   ~ 0
IOB0
Text Label 6800 1800 0    60   ~ 0
IOB1
Text Label 6800 1900 0    60   ~ 0
IOB2
Text Label 6800 2000 0    60   ~ 0
IOB3
Text Label 6800 2100 0    60   ~ 0
IOB4
Text Label 6800 2200 0    60   ~ 0
IOB5
Text Label 6800 2300 0    60   ~ 0
IOB6
Text Label 6800 2400 0    60   ~ 0
IOB7
Text Label 6800 2500 0    60   ~ 0
DAC
Text Label 6500 1200 2    60   ~ 0
DAC
Text Label 10750 2100 0    60   ~ 0
CKSEL
Text Label 2100 3900 0    60   ~ 0
CLK2
Text Label 2400 4100 2    60   ~ 0
CLK24
Text Label 5650 3700 0    60   ~ 0
CLK24
Text Label 4450 3600 2    60   ~ 0
CLK4
Wire Wire Line
	5650 4250 5650 4000
Wire Wire Line
	5650 4000 4450 4000
Wire Wire Line
	4450 4000 4450 3800
Text Label 4450 4150 2    60   ~ 0
CLK2
Text Label 4450 4350 2    60   ~ 0
IOA0
$EndSCHEMATC
