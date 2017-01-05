EESchema Schematic File Version 2
LIBS:device
LIBS:power
LIBS:conn
LIBS:74xx
LIBS:ch376
LIBS:regul
LIBS:opendous
LIBS:switches
LIBS:ramcard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Albireo"
Date "2015-10-14"
Rev ""
Comp "PulkoTronics"
Comment1 "Mass storage, USB and Serial interface for Amstrad CPC"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74LS20 U?
U 1 1 5058DC2F
P 1400 850
AR Path="/5058DC2B" Ref="U?"  Part="1" 
AR Path="/5058DC2F" Ref="IC1"  Part="1" 
F 0 "IC1" H 1400 950 60  0000 C CNN
F 1 "74LS20" H 1400 750 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1400 850 60  0001 C CNN
F 3 "" H 1400 850 60  0001 C CNN
	1    1400 850 
	1    0    0    -1  
$EndComp
$Comp
L 74LS20 IC1
U 2 1 5058DC2B
P 1400 1400
F 0 "IC1" H 1400 1500 60  0000 C CNN
F 1 "74LS20" H 1400 1300 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1400 1400 60  0001 C CNN
F 3 "" H 1400 1400 60  0001 C CNN
	2    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U?
U 3 1 5058DBC7
P 1400 2400
AR Path="/5058DBC0" Ref="U?"  Part="1" 
AR Path="/5058DBC7" Ref="IC2"  Part="3" 
F 0 "IC2" H 1400 2450 60  0000 C CNN
F 1 "74LS02" H 1450 2350 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1400 2400 60  0001 C CNN
F 3 "" H 1400 2400 60  0001 C CNN
	3    1400 2400
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U?
U 2 1 5058DBC5
P 1400 1900
AR Path="/5058DBC0" Ref="U?"  Part="1" 
AR Path="/5058DBC5" Ref="IC2"  Part="2" 
F 0 "IC2" H 1400 1950 60  0000 C CNN
F 1 "74LS02" H 1450 1850 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1400 1900 60  0001 C CNN
F 3 "" H 1400 1900 60  0001 C CNN
	2    1400 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 4DBD3AB8
P 1450 4100
F 0 "#PWR01" H 1450 4100 30  0001 C CNN
F 1 "GND" H 1450 4030 30  0001 C CNN
F 2 "" H 1450 4100 60  0001 C CNN
F 3 "" H 1450 4100 60  0001 C CNN
	1    1450 4100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 4DBD3AB1
P 1450 3600
F 0 "#PWR02" H 1450 3700 30  0001 C CNN
F 1 "VCC" H 1450 3700 30  0000 C CNN
F 2 "" H 1450 3600 60  0001 C CNN
F 3 "" H 1450 3600 60  0001 C CNN
	1    1450 3600
	1    0    0    -1  
$EndComp
NoConn ~ 900  5000
NoConn ~ 900  5200
NoConn ~ 900  5400
$Comp
L VCC #PWR03
U 1 1 4DBBEA82
P 2050 5500
F 0 "#PWR03" H 2050 5600 30  0001 C CNN
F 1 "VCC" H 2050 5600 30  0000 C CNN
F 2 "" H 2050 5500 60  0001 C CNN
F 3 "" H 2050 5500 60  0001 C CNN
	1    2050 5500
	0    1    1    0   
$EndComp
Text Label 2000 6700 2    60   ~ 0
A15
Text Label 900  6700 2    60   ~ 0
A14
Text Label 2000 6600 2    60   ~ 0
A13
Text Label 900  6600 2    60   ~ 0
A12
Text Label 2000 6500 2    60   ~ 0
A11
Text Label 900  6500 2    60   ~ 0
A10
Text Label 2000 6400 2    60   ~ 0
A9
Text Label 900  6400 2    60   ~ 0
A8
Text Label 2000 6300 2    60   ~ 0
A7
Text Label 900  6300 2    60   ~ 0
A6
Text Label 2000 6200 2    60   ~ 0
A5
Text Label 900  6200 2    60   ~ 0
A4
Text Label 2000 6100 2    60   ~ 0
A3
Text Label 900  6100 2    60   ~ 0
A2
Text Label 2000 6000 2    60   ~ 0
A1
Text Label 900  6000 2    60   ~ 0
A0
Entry Wire Line
	750  5600 650  5700
Entry Wire Line
	750  5700 650  5800
Entry Wire Line
	750  5800 650  5900
Entry Wire Line
	750  5900 650  6000
Text Label 2050 5900 2    60   ~ 0
D7
Text Label 2050 5800 2    60   ~ 0
D5
Text Label 2050 5700 2    60   ~ 0
D3
Text Label 2050 5600 2    60   ~ 0
D1
Text Label 900  5900 2    60   ~ 0
D6
Text Label 900  5800 2    60   ~ 0
D4
Text Label 900  5700 2    60   ~ 0
D2
Text Label 900  5600 2    60   ~ 0
D0
NoConn ~ 900  4700
NoConn ~ 900  4500
NoConn ~ 900  4400
NoConn ~ 2050 6800
NoConn ~ 2050 5400
NoConn ~ 2050 5000
NoConn ~ 2050 4900
NoConn ~ 2050 4600
NoConn ~ 2050 4500
Text Notes 2300 7110 2    60   ~ 0
\ncpc connector
$Comp
L GND #PWR04
U 1 1 4CA89326
P 2100 4300
F 0 "#PWR04" H 2100 4300 30  0001 C CNN
F 1 "GND" H 2100 4230 30  0001 C CNN
F 2 "" H 2100 4300 60  0001 C CNN
F 3 "" H 2100 4300 60  0001 C CNN
	1    2100 4300
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 4CA87152
P 1750 3800
F 0 "C4" H 1800 3900 50  0000 L CNN
F 1 "0.1u" H 1800 3700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 1750 3800 60  0001 C CNN
F 3 "" H 1750 3800 60  0001 C CNN
	1    1750 3800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4CA87151
P 1450 3800
F 0 "C3" H 1500 3900 50  0000 L CNN
F 1 "1uF" H 1500 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1450 3800 60  0001 C CNN
F 3 "" H 1450 3800 60  0001 C CNN
	1    1450 3800
	1    0    0    -1  
$EndComp
$Comp
L CONN_25X2 P1
U 1 1 4CA8712F
P 1450 5600
F 0 "P1" H 1450 6900 60  0000 C CNN
F 1 "CONN_25X2" V 1450 5600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x25" H 1450 5600 60  0001 C CNN
F 3 "" H 1450 5600 60  0001 C CNN
	1    1450 5600
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 4CA870EF
P 1100 3800
F 0 "C2" H 1150 3900 50  0000 L CNN
F 1 "1uF" H 1150 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1100 3800 60  0001 C CNN
F 3 "" H 1100 3800 60  0001 C CNN
	1    1100 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 561EB481
P 900 7050
F 0 "#PWR05" H 900 7050 30  0001 C CNN
F 1 "GND" H 900 6980 30  0001 C CNN
F 2 "" H 900 7050 60  0001 C CNN
F 3 "" H 900 7050 60  0001 C CNN
	1    900  7050
	0    -1   -1   0   
$EndComp
Text Label 900  5300 0    60   ~ 0
/RD
NoConn ~ 900  5500
NoConn ~ 850  4800
NoConn ~ 2050 4700
Text Label 600  700  0    60   ~ 0
A12
Text Label 600  800  0    60   ~ 0
A13
Text Label 600  900  0    60   ~ 0
A14
Text Label 600  1000 0    60   ~ 0
A15
Text Label 600  1450 0    60   ~ 0
A7
Text Label 600  1350 0    60   ~ 0
A9
Text Label 600  1250 0    60   ~ 0
A10
Text Label 600  1550 0    60   ~ 0
A11
$Comp
L 74LS02 IC2
U 1 1 561EC3C0
P 2700 1100
F 0 "IC2" H 2700 1150 60  0000 C CNN
F 1 "74LS02" H 2750 1050 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2700 1100 60  0001 C CNN
F 3 "" H 2700 1100 60  0000 C CNN
	1    2700 1100
	1    0    0    -1  
$EndComp
Text Label 600  2000 0    60   ~ 0
A6
Text Label 600  1800 0    60   ~ 0
A8
Text Label 600  2500 0    60   ~ 0
A5
Text Label 600  2800 0    60   ~ 0
A4
$Comp
L C C1
U 1 1 561ECD91
P 750 3800
F 0 "C1" H 800 3900 50  0000 L CNN
F 1 "1uF" H 800 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 750 3800 60  0001 C CNN
F 3 "" H 750 3800 60  0001 C CNN
	1    750  3800
	1    0    0    -1  
$EndComp
Text Label 2100 5300 2    60   ~ 0
/IORQ
Text Label 2100 5200 2    60   ~ 0
/WR
$Comp
L 74LS138 IC3
U 1 1 561ED197
P 3200 2250
F 0 "IC3" H 3300 2750 60  0000 C CNN
F 1 "74LS138" H 3350 1701 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 3200 2250 60  0001 C CNN
F 3 "" H 3200 2250 60  0000 C CNN
	1    3200 2250
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 IC2
U 4 1 561ED363
P 1400 2900
F 0 "IC2" H 1400 2950 60  0000 C CNN
F 1 "74LS02" H 1450 2850 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1400 2900 60  0001 C CNN
F 3 "" H 1400 2900 60  0000 C CNN
	4    1400 2900
	1    0    0    -1  
$EndComp
Text Label 600  2300 0    60   ~ 0
A2
Text Label 600  3000 0    60   ~ 0
A1
Text Label 2350 2500 0    60   ~ 0
/IORQ
Text Label 2350 2600 0    60   ~ 0
A3
Text Label 2350 2400 0    60   ~ 0
CE1
Text Label 3500 1100 2    60   ~ 0
CE1
Text Label 4050 2600 2    60   ~ 0
FE80
NoConn ~ 4050 1900
NoConn ~ 4050 2100
NoConn ~ 4050 2200
NoConn ~ 4050 2300
NoConn ~ 4050 2400
NoConn ~ 4050 2500
$Comp
L CH376 IC4
U 1 1 56214228
P 10050 1450
F 0 "IC4" V 10050 1650 60  0000 C CNN
F 1 "CH376" V 10050 1100 60  0000 C CNN
F 2 "ch376:CH376_SOJ28" H 10050 1750 60  0001 C CNN
F 3 "" H 10050 1750 60  0000 C CNN
	1    10050 1450
	1    0    0    -1  
$EndComp
Text Label 9450 1500 0    60   ~ 0
A0
Text Label 10700 2100 2    60   ~ 0
D0
Text Label 10700 2000 2    60   ~ 0
D1
Text Label 10700 1900 2    60   ~ 0
D2
Text Label 10700 1800 2    60   ~ 0
D3
Text Label 10700 1700 2    60   ~ 0
D4
Text Label 10700 1600 2    60   ~ 0
D5
Text Label 10700 1500 2    60   ~ 0
D6
Text Label 10700 1400 2    60   ~ 0
D7
$Comp
L GND #PWR06
U 1 1 56214A97
P 9150 1900
F 0 "#PWR06" H 9150 1650 50  0001 C CNN
F 1 "GND" H 9150 1750 50  0000 C CNN
F 2 "" H 9150 1900 60  0000 C CNN
F 3 "" H 9150 1900 60  0000 C CNN
	1    9150 1900
	1    0    0    -1  
$EndComp
NoConn ~ 9450 1300
Text Label 10700 900  0    60   ~ 0
FE80
Text Label 9450 1000 0    60   ~ 0
/WR
Text Label 9450 1100 0    60   ~ 0
/RD
$Comp
L USB_A P2
U 1 1 56215113
P 8600 1700
F 0 "P2" H 8800 1500 50  0000 C CNN
F 1 "USB_A" H 8550 1900 50  0000 C CNN
F 2 "Connect:USB_A" V 8550 1600 60  0001 C CNN
F 3 "" V 8550 1600 60  0000 C CNN
	1    8600 1700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 56215495
P 8350 1200
F 0 "#PWR07" H 8350 950 50  0001 C CNN
F 1 "GND" H 8350 1050 50  0000 C CNN
F 2 "" H 8350 1200 60  0000 C CNN
F 3 "" H 8350 1200 60  0000 C CNN
	1    8350 1200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 56215624
P 8900 2400
F 0 "#PWR08" H 8900 2250 50  0001 C CNN
F 1 "VCC" H 8900 2550 50  0000 C CNN
F 2 "" H 8900 2400 60  0000 C CNN
F 3 "" H 8900 2400 60  0000 C CNN
	1    8900 2400
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 56215821
P 8900 2200
F 0 "R1" V 8980 2200 50  0000 C CNN
F 1 "2R" V 8900 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8830 2200 30  0001 C CNN
F 3 "" H 8900 2200 30  0000 C CNN
	1    8900 2200
	1    0    0    -1  
$EndComp
$Comp
L CP C5
U 1 1 56215B06
P 8550 2200
F 0 "C5" H 8575 2300 50  0000 L CNN
F 1 "100u" H 8575 2100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 8588 2050 30  0001 C CNN
F 3 "" H 8550 2200 60  0000 C CNN
	1    8550 2200
	0    1    1    0   
$EndComp
$Comp
L C C6
U 1 1 562163D5
P 9300 1600
F 0 "C6" V 9150 1550 50  0000 L CNN
F 1 "10nF" V 9250 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9338 1450 30  0001 C CNN
F 3 "" H 9300 1600 60  0000 C CNN
	1    9300 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 5600 2050 5600
Wire Wire Line
	1850 5800 2050 5800
Connection ~ 1100 3950
Wire Wire Line
	750  3950 1750 3950
Connection ~ 1450 3650
Wire Wire Line
	1450 3650 1450 3600
Wire Wire Line
	800  4900 1050 4900
Wire Wire Line
	1050 5000 900  5000
Wire Wire Line
	1050 5100 900  5100
Wire Wire Line
	1050 5200 900  5200
Wire Wire Line
	1050 5300 900  5300
Wire Wire Line
	1050 5400 900  5400
Wire Bus Line
	700  6000 700  6700
Wire Wire Line
	1050 6000 900  6000
Wire Wire Line
	1050 6200 900  6200
Wire Wire Line
	1050 6400 900  6400
Wire Wire Line
	1050 6600 900  6600
Wire Wire Line
	1050 5700 750  5700
Wire Wire Line
	1050 5900 750  5900
Wire Wire Line
	1050 4500 900  4500
Wire Wire Line
	1050 4700 900  4700
Wire Wire Line
	1850 6800 2050 6800
Wire Wire Line
	1850 5100 2050 5100
Wire Wire Line
	1850 4900 2050 4900
Wire Wire Line
	1850 4600 2050 4600
Wire Wire Line
	2100 4300 2100 4400
Wire Wire Line
	2100 4400 1850 4400
Wire Wire Line
	2100 5300 1850 5300
Wire Wire Line
	2100 5200 1850 5200
Wire Wire Line
	1850 4500 2050 4500
Wire Wire Line
	1850 4800 2050 4800
Wire Wire Line
	1850 5000 2050 5000
Wire Wire Line
	1850 5400 2050 5400
Wire Wire Line
	1050 6800 900  6800
Wire Wire Line
	1050 4600 900  4600
Wire Wire Line
	1050 4400 900  4400
Wire Wire Line
	2050 4700 1850 4700
Wire Bus Line
	750  5600 750  5900
Wire Wire Line
	1050 5800 750  5800
Wire Wire Line
	1050 5600 750  5600
Wire Wire Line
	1050 6700 900  6700
Wire Wire Line
	1050 6500 900  6500
Wire Wire Line
	1050 6300 900  6300
Wire Wire Line
	1050 6100 900  6100
Wire Wire Line
	1850 6700 2000 6700
Wire Wire Line
	1850 6600 2000 6600
Wire Wire Line
	1850 6500 2000 6500
Wire Wire Line
	1850 6400 2000 6400
Wire Wire Line
	1850 6300 2000 6300
Wire Wire Line
	1850 6200 2000 6200
Wire Wire Line
	1850 6100 2000 6100
Wire Wire Line
	1850 6000 2000 6000
Wire Bus Line
	2150 6000 2150 6700
Wire Wire Line
	2050 5500 1850 5500
Wire Wire Line
	1050 4800 850  4800
Wire Wire Line
	1050 5500 900  5500
Wire Wire Line
	1450 4100 1450 3950
Connection ~ 1450 3950
Wire Wire Line
	750  3650 1750 3650
Connection ~ 1100 3650
Wire Wire Line
	1850 5900 2050 5900
Wire Wire Line
	1850 5700 2050 5700
Wire Wire Line
	900  6800 900  7050
Wire Wire Line
	800  700  600  700 
Wire Wire Line
	800  800  600  800 
Wire Wire Line
	800  900  600  900 
Wire Wire Line
	800  1000 600  1000
Wire Wire Line
	800  1250 600  1250
Wire Wire Line
	800  1350 600  1350
Wire Wire Line
	800  1450 600  1450
Wire Wire Line
	800  1550 600  1550
Wire Wire Line
	2000 850  2100 850 
Wire Wire Line
	2100 850  2100 1000
Wire Wire Line
	2000 1400 2100 1400
Wire Wire Line
	2100 1400 2100 1200
Wire Wire Line
	800  1800 600  1800
Wire Wire Line
	800  2000 600  2000
Wire Wire Line
	800  2300 600  2300
Wire Wire Line
	800  2500 600  2500
Wire Wire Line
	2000 1900 2600 1900
Wire Wire Line
	2000 2400 2000 2000
Wire Wire Line
	2000 2000 2600 2000
Wire Wire Line
	800  2800 600  2800
Wire Wire Line
	800  3000 600  3000
Wire Wire Line
	2000 2900 2100 2900
Wire Wire Line
	2100 2900 2100 2100
Wire Wire Line
	2100 2100 2600 2100
Wire Wire Line
	2600 2600 2350 2600
Wire Wire Line
	2600 2500 2350 2500
Wire Wire Line
	2600 2400 2350 2400
Wire Wire Line
	3300 1100 3500 1100
Wire Wire Line
	3800 2600 4050 2600
Wire Wire Line
	3800 1900 4050 1900
Wire Wire Line
	3800 2000 4050 2000
Wire Wire Line
	3800 2100 4050 2100
Wire Wire Line
	3800 2200 4050 2200
Wire Wire Line
	3800 2300 4050 2300
Wire Wire Line
	3800 2400 4050 2400
Wire Wire Line
	3800 2500 4050 2500
Wire Wire Line
	10550 900  10700 900 
Wire Wire Line
	10550 1000 10700 1000
Wire Wire Line
	10550 1100 10700 1100
Wire Wire Line
	10550 1200 10900 1200
Wire Wire Line
	10550 1300 10700 1300
Wire Wire Line
	10550 1400 10700 1400
Wire Wire Line
	10550 1500 10700 1500
Wire Wire Line
	10550 1600 10700 1600
Wire Wire Line
	10550 1700 10700 1700
Wire Wire Line
	10550 1800 10700 1800
Wire Wire Line
	10550 1900 10700 1900
Wire Wire Line
	10550 2000 10700 2000
Wire Wire Line
	10550 2100 10700 2100
Wire Wire Line
	9350 800  9600 800 
Wire Wire Line
	9350 900  9600 900 
Wire Wire Line
	9600 1000 9450 1000
Wire Wire Line
	9600 1100 9450 1100
Wire Wire Line
	8250 1200 9600 1200
Wire Wire Line
	9600 1300 9450 1300
Wire Wire Line
	9600 1400 9450 1400
Wire Wire Line
	9600 1500 9450 1500
Wire Wire Line
	8900 1700 9600 1700
Wire Wire Line
	8900 1800 9600 1800
Wire Wire Line
	9150 1900 9600 1900
Wire Wire Line
	8900 1600 8900 1200
Wire Wire Line
	8500 1200 8500 1400
Connection ~ 8900 1200
Connection ~ 8500 1200
Wire Wire Line
	8900 1900 8900 2050
Wire Wire Line
	8700 2200 8700 2050
Wire Wire Line
	8700 2050 8900 2050
Wire Wire Line
	8400 2200 8250 2200
Wire Wire Line
	8250 2200 8250 1200
Connection ~ 8350 1200
Connection ~ 8900 2050
Wire Wire Line
	9150 1900 9150 1600
Wire Wire Line
	9450 1600 10100 1600
Text Label 9800 5350 0    60   ~ 0
/SD_CS
Text Label 9900 6100 0    60   ~ 0
SD_DI
Text Label 9800 5800 0    60   ~ 0
SD_CLK
Text Label 9850 5650 0    60   ~ 0
SD_DO
$Comp
L +3.3V #PWR09
U 1 1 56220A10
P 10900 4100
F 0 "#PWR09" H 10900 3950 50  0001 C CNN
F 1 "+3.3V" H 10900 4240 50  0000 C CNN
F 2 "" H 10900 4100 60  0000 C CNN
F 3 "" H 10900 4100 60  0000 C CNN
	1    10900 4100
	1    0    0    -1  
$EndComp
$Comp
L LD1117S33CTR U1
U 1 1 562212C4
P 10400 4150
F 0 "U1" H 10400 4400 40  0000 C CNN
F 1 "LD1117S33CTR" H 10400 4350 40  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 10400 4250 40  0000 C CNN
F 3 "" H 10400 4150 60  0000 C CNN
	1    10400 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5622141D
P 10400 4550
F 0 "#PWR010" H 10400 4300 50  0001 C CNN
F 1 "GND" H 10400 4400 50  0000 C CNN
F 2 "" H 10400 4550 60  0000 C CNN
F 3 "" H 10400 4550 60  0000 C CNN
	1    10400 4550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 56221658
P 9900 4100
F 0 "#PWR011" H 9900 3950 50  0001 C CNN
F 1 "VCC" H 9900 4250 50  0000 C CNN
F 2 "" H 9900 4100 60  0000 C CNN
F 3 "" H 9900 4100 60  0000 C CNN
	1    9900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4100 10000 4100
Wire Wire Line
	10400 4400 10400 4550
Wire Wire Line
	10800 4100 10900 4100
$Comp
L CP C7
U 1 1 56221A22
P 10900 4350
F 0 "C7" H 10925 4450 50  0000 L CNN
F 1 "10u" H 10925 4250 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 10938 4200 30  0001 C CNN
F 3 "" H 10900 4350 60  0000 C CNN
	1    10900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 4100 10900 4200
Wire Wire Line
	10900 4500 10400 4500
Connection ~ 10400 4500
Wire Wire Line
	8900 2400 8900 2350
$Comp
L +3.3V #PWR012
U 1 1 56222B51
P 9850 5900
F 0 "#PWR012" H 9850 5750 50  0001 C CNN
F 1 "+3.3V" H 9850 6040 50  0000 C CNN
F 2 "" H 9850 5900 60  0000 C CNN
F 3 "" H 9850 5900 60  0000 C CNN
	1    9850 5900
	0    -1   -1   0   
$EndComp
NoConn ~ 10150 5550
Text Label 10700 1300 0    60   ~ 0
/SD_CS
Text Label 10700 1000 0    60   ~ 0
SD_CLK
Text Label 9450 1400 0    60   ~ 0
SD_DO
Text Label 10700 1100 0    60   ~ 0
SD_DI
Text Label 4050 2000 2    60   ~ 0
FEBx
Text Notes 9800 3800 0    60   ~ 0
OPTIONAL SD card support
Wire Notes Line
	11150 3600 9400 3600
Wire Notes Line
	9400 3600 9400 6400
Wire Notes Line
	9400 6400 11150 6400
Wire Notes Line
	11150 6400 11150 3600
Wire Notes Line
	11100 550  8000 550 
Wire Notes Line
	8000 550  8000 2650
Wire Notes Line
	8000 2650 11100 2650
Wire Notes Line
	11100 2650 11100 550 
Text Notes 10150 2500 0    60   ~ 0
USB controller
Wire Notes Line
	500  500  500  3200
Wire Notes Line
	500  3200 4200 3200
Wire Notes Line
	4200 3200 4200 500 
Wire Notes Line
	4200 500  500  500 
Text Notes 3250 700  0    60   ~ 0
Address decoding
$Comp
L TL16C550C U3
U 1 1 56228CDB
P 6150 1750
F 0 "U3" H 6250 1800 60  0000 C CNN
F 1 "TL16C550C" H 6250 1900 60  0000 C CNN
F 2 "Housings_QFP:TQFP-48_7x7mm_Pitch0.5mm" V 7150 1450 60  0001 C CNN
F 3 "" V 7150 1450 60  0000 C CNN
	1    6150 1750
	1    0    0    -1  
$EndComp
Wire Notes Line
	4600 550  4600 3050
Wire Notes Line
	4600 3050 7550 3050
Wire Notes Line
	7550 3050 7550 550 
Wire Notes Line
	7550 550  4600 550 
Text Notes 4650 3000 0    60   ~ 0
UART interface
Text Label 6000 800  1    60   ~ 0
D0
Text Label 5900 800  1    60   ~ 0
D1
Text Label 5800 800  1    60   ~ 0
D2
Text Label 5700 800  1    60   ~ 0
D3
Text Label 5600 800  1    60   ~ 0
D4
Text Label 5150 1400 2    60   ~ 0
D5
Text Label 5150 1500 2    60   ~ 0
D6
Text Label 5150 1600 2    60   ~ 0
D7
Wire Wire Line
	5150 2400 4800 2400
Wire Wire Line
	4800 2400 4800 1700
Wire Wire Line
	4800 1700 5150 1700
Text Label 5150 2200 2    60   ~ 0
A4
Text Label 5150 2100 2    60   ~ 0
A5
Text Label 5150 2300 2    60   ~ 0
FEBx
Text Label 9300 2000 0    60   ~ 0
12MHz
Text Label 6150 5100 2    60   ~ 0
24MHz
NoConn ~ 5900 2700
Text Label 7100 1900 0    60   ~ 0
A0
Text Label 7100 2000 0    60   ~ 0
A1
Text Label 7100 2100 0    60   ~ 0
A2
NoConn ~ 7100 1800
NoConn ~ 6700 2700
NoConn ~ 6600 2700
Text Label 6000 2700 3    60   ~ 0
/WR
Text Label 6300 2700 3    60   ~ 0
/RD
$Comp
L GND #PWR013
U 1 1 56229E79
P 6200 2850
F 0 "#PWR013" H 6200 2600 50  0001 C CNN
F 1 "GND" H 6200 2700 50  0000 C CNN
F 2 "" H 6200 2850 60  0000 C CNN
F 3 "" H 6200 2850 60  0000 C CNN
	1    6200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2700 6200 2850
$Comp
L VCC #PWR014
U 1 1 5622A2AF
P 6100 750
F 0 "#PWR014" H 6100 600 50  0001 C CNN
F 1 "VCC" H 6100 900 50  0000 C CNN
F 2 "" H 6100 750 60  0000 C CNN
F 3 "" H 6100 750 60  0000 C CNN
	1    6100 750 
	1    0    0    -1  
$EndComp
Text Label 2050 4800 2    60   ~ 0
/RESET
Text Label 6500 800  1    60   ~ 0
/CTS
Text Label 7100 1500 0    60   ~ 0
/RTS
Text Label 5150 1900 2    60   ~ 0
RX
Text Label 5150 2000 2    60   ~ 0
TX
Wire Wire Line
	9600 2000 9300 2000
$Comp
L VCC #PWR015
U 1 1 5622DFD0
P 5150 3700
F 0 "#PWR015" H 5150 3550 50  0001 C CNN
F 1 "VCC" H 5150 3850 50  0000 C CNN
F 2 "" H 5150 3700 60  0000 C CNN
F 3 "" H 5150 3700 60  0000 C CNN
	1    5150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3750 5150 3700
$Comp
L GND #PWR016
U 1 1 5622E2CA
P 5200 5550
F 0 "#PWR016" H 5200 5300 50  0001 C CNN
F 1 "GND" H 5200 5400 50  0000 C CNN
F 2 "" H 5200 5550 60  0000 C CNN
F 3 "" H 5200 5550 60  0000 C CNN
	1    5200 5550
	1    0    0    -1  
$EndComp
Text Label 6000 4000 2    60   ~ 0
RX
Text Label 6000 4100 2    60   ~ 0
TX
Wire Wire Line
	5800 4000 6000 4000
Wire Wire Line
	5800 4100 6000 4100
Text Label 6000 4200 2    60   ~ 0
/CTS
Text Label 6000 4300 2    60   ~ 0
/RTS
Wire Wire Line
	5800 4200 6000 4200
Wire Wire Line
	5800 4300 6000 4300
Text Label 5800 2700 3    60   ~ 0
24MHz
Text Label 6150 5000 2    60   ~ 0
12MHz
Wire Wire Line
	5800 4900 6150 4900
Wire Wire Line
	5800 5000 6150 5000
Text Label 6000 4400 2    60   ~ 0
GPO2
Wire Wire Line
	5800 5100 6150 5100
Text Label 6300 5200 2    60   ~ 0
VBUS_Sense
Wire Wire Line
	6100 2700 6100 2750
Wire Wire Line
	6100 2750 6800 2750
Connection ~ 6200 2750
Wire Wire Line
	6400 2750 6400 2700
Wire Wire Line
	6800 2750 6800 2700
Connection ~ 6400 2750
Wire Wire Line
	6100 800  6100 750 
$Comp
L R R4
U 1 1 562364F7
P 4350 4350
F 0 "R4" V 4250 4450 50  0000 C CNN
F 1 "27" V 4350 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4280 4350 30  0001 C CNN
F 3 "" H 4350 4350 30  0000 C CNN
	1    4350 4350
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 562365B5
P 4350 4450
F 0 "R5" V 4430 4450 50  0000 C CNN
F 1 "27" V 4350 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4280 4450 30  0001 C CNN
F 3 "" H 4350 4450 30  0000 C CNN
	1    4350 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 4350 4600 4350
Wire Wire Line
	4500 4450 4600 4450
$Comp
L C C8
U 1 1 56236861
P 3900 4700
F 0 "C8" H 3925 4800 50  0000 L CNN
F 1 "47pF" H 3925 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3938 4550 30  0001 C CNN
F 3 "" H 3900 4700 60  0000 C CNN
	1    3900 4700
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 562368CE
P 4100 4700
F 0 "C9" H 4125 4800 50  0000 L CNN
F 1 "47pF" H 4125 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4138 4550 30  0001 C CNN
F 3 "" H 4100 4700 60  0000 C CNN
	1    4100 4700
	1    0    0    -1  
$EndComp
$Comp
L USB_B P3
U 1 1 56236A6D
P 3450 4450
F 0 "P3" H 3650 4250 50  0000 C CNN
F 1 "USB_B" H 3400 4650 50  0000 C CNN
F 2 "Connect:USB_B" V 3400 4350 60  0001 C CNN
F 3 "" V 3400 4350 60  0000 C CNN
	1    3450 4450
	0    -1   1    0   
$EndComp
Wire Wire Line
	3750 4350 4200 4350
Wire Wire Line
	3750 4450 4200 4450
Wire Wire Line
	3900 4550 3900 4450
Connection ~ 3900 4450
Wire Wire Line
	4100 4550 4100 4350
Connection ~ 4100 4350
Wire Wire Line
	3750 4550 3750 4850
Wire Wire Line
	3750 4850 4100 4850
Connection ~ 3900 4850
Wire Wire Line
	3900 4850 3900 5450
$Comp
L R R2
U 1 1 562372BC
P 3050 4250
F 0 "R2" V 3130 4250 50  0000 C CNN
F 1 "4k7" V 3050 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2980 4250 30  0001 C CNN
F 3 "" H 3050 4250 30  0000 C CNN
	1    3050 4250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5623736D
P 3050 4650
F 0 "R3" V 3130 4650 50  0000 C CNN
F 1 "10k" V 3050 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2980 4650 30  0001 C CNN
F 3 "" H 3050 4650 30  0000 C CNN
	1    3050 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4250 3750 4100
Wire Wire Line
	3750 4100 3050 4100
Wire Wire Line
	3050 4400 3050 4500
Wire Wire Line
	3050 4800 3050 5050
Connection ~ 3900 5050
Wire Wire Line
	3050 4450 2900 4450
Wire Wire Line
	2900 4450 2900 5750
Connection ~ 3050 4450
$Comp
L C C10
U 1 1 56237A25
P 4350 4000
F 0 "C10" H 4400 4100 50  0000 L CNN
F 1 "100nF" H 4400 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4350 4000 60  0001 C CNN
F 3 "" H 4350 4000 60  0001 C CNN
	1    4350 4000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR017
U 1 1 56237FF9
P 4000 4000
F 0 "#PWR017" H 4000 3750 50  0001 C CNN
F 1 "GND" H 4000 3850 50  0000 C CNN
F 2 "" H 4000 4000 60  0000 C CNN
F 3 "" H 4000 4000 60  0000 C CNN
	1    4000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4000 4200 4000
Wire Notes Line
	6450 3400 6450 6700
Wire Notes Line
	6450 3400 2750 3400
Wire Notes Line
	2750 3400 2750 6700
Text Notes 2950 3650 0    60   ~ 0
UART to USB bridge
Text Label 2050 5100 2    60   ~ 0
/INT
Text Label 900  5100 0    60   ~ 0
/NMI
Text Label 800  4900 0    60   ~ 0
BUSRST
Text Label 8800 4550 0    60   ~ 0
/INT
Text Label 8800 5050 0    60   ~ 0
/NMI
Wire Wire Line
	8700 4550 8800 4550
Wire Wire Line
	8700 5050 8800 5050
Text Label 7100 1300 0    60   ~ 0
/OUT1
Text Label 7100 1600 0    60   ~ 0
/OUT2
Text Label 7150 4450 0    60   ~ 0
/OUT1
Text Label 7150 5150 0    60   ~ 0
/OUT2
Wire Wire Line
	7150 5150 7500 5150
Wire Wire Line
	7150 4450 7500 4450
Wire Wire Line
	7500 4650 7500 4950
Text Label 7100 1700 0    60   ~ 0
INTRPT
Text Label 7150 4800 0    60   ~ 0
INTRPT
Wire Wire Line
	7150 4800 7500 4800
Connection ~ 7500 4800
Text Label 7150 5650 0    60   ~ 0
/RESET
Wire Wire Line
	7150 5650 7500 5650
Wire Wire Line
	7500 5550 7500 5750
Connection ~ 7500 5650
Text Label 8700 5650 0    60   ~ 0
PRESET
Text Label 7100 1200 0    60   ~ 0
PRESET
Text Label 6300 800  1    60   ~ 0
/DCD
Text Label 8200 3000 2    60   ~ 0
GPO2
Text Label 9100 3100 0    60   ~ 0
BUSRST
Text Label 9100 3000 0    60   ~ 0
/DSR
Text Label 6400 800  1    60   ~ 0
/DSR
Wire Wire Line
	8050 3700 8050 3900
Wire Wire Line
	7900 3950 7900 3800
Wire Wire Line
	7900 3800 8050 3800
Connection ~ 8050 3800
$Comp
L VCC #PWR018
U 1 1 56241F46
P 7900 3950
F 0 "#PWR018" H 7900 3800 50  0001 C CNN
F 1 "VCC" H 7900 4100 50  0000 C CNN
F 2 "" H 7900 3950 60  0000 C CNN
F 3 "" H 7900 3950 60  0000 C CNN
	1    7900 3950
	-1   0    0    1   
$EndComp
$Comp
L 74LS38 U5
U 1 1 5623C69E
P 8100 4550
F 0 "U5" H 8100 4600 60  0000 C CNN
F 1 "74LS38" H 8100 4500 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8100 4550 60  0001 C CNN
F 3 "" H 8100 4550 60  0000 C CNN
	1    8100 4550
	1    0    0    -1  
$EndComp
$Comp
L 74LS38 U5
U 2 1 5623C7AF
P 8100 5050
F 0 "U5" H 8100 5100 60  0000 C CNN
F 1 "74LS38" H 8100 5000 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8100 5050 60  0001 C CNN
F 3 "" H 8100 5050 60  0000 C CNN
	2    8100 5050
	1    0    0    -1  
$EndComp
$Comp
L 74LS38 U5
U 3 1 5623C846
P 8100 5650
F 0 "U5" H 8100 5700 60  0000 C CNN
F 1 "74LS38" H 8100 5600 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8100 5650 60  0001 C CNN
F 3 "" H 8100 5650 60  0000 C CNN
	3    8100 5650
	1    0    0    -1  
$EndComp
$Comp
L 74LS38 U5
U 4 1 5623C8AF
P 8650 3800
F 0 "U5" H 8650 3850 60  0000 C CNN
F 1 "74LS38" H 8650 3750 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8650 3800 60  0001 C CNN
F 3 "" H 8650 3800 60  0000 C CNN
	4    8650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5650 9250 5650
$Comp
L R R6
U 1 1 5623E101
P 9250 5500
F 0 "R6" V 9330 5500 50  0000 C CNN
F 1 "4K7" V 9250 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9180 5500 30  0001 C CNN
F 3 "" H 9250 5500 30  0000 C CNN
	1    9250 5500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR019
U 1 1 5623E535
P 9250 5200
F 0 "#PWR019" H 9250 5050 50  0001 C CNN
F 1 "VCC" H 9250 5350 50  0000 C CNN
F 2 "" H 9250 5200 60  0000 C CNN
F 3 "" H 9250 5200 60  0000 C CNN
	1    9250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5350 9250 5200
$Comp
L SW_DIP_x4 S1
U 1 1 56268B08
P 8650 3150
F 0 "S1" H 8650 2900 50  0000 C CNN
F 1 "SW_DIP_x4" H 8650 3400 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_DIP_x4_Slide" H 8600 3150 60  0001 C CNN
F 3 "" H 8600 3150 60  0000 C CNN
	1    8650 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 3000 8350 3000
Wire Wire Line
	8350 3000 8350 3100
Wire Wire Line
	8950 3000 9100 3000
Wire Wire Line
	8950 3100 9100 3100
Text Label 7900 3200 0    60   ~ 0
PRESET
Text Label 9100 3200 0    60   ~ 0
RSTI
Wire Wire Line
	8950 3200 9100 3200
Wire Wire Line
	7900 3200 8350 3200
Text Label 9350 900  0    60   ~ 0
RSTI
Wire Wire Line
	8350 3300 7900 3300
Wire Wire Line
	8950 3300 9100 3300
Text Label 7900 3300 0    60   ~ 0
INT
Text Label 9100 3300 0    60   ~ 0
/DCD
Text Label 9350 800  0    60   ~ 0
INT
Wire Notes Line
	2750 6700 6450 6700
Wire Wire Line
	5800 5200 6300 5200
Wire Wire Line
	6300 5200 6300 5750
$Comp
L VCC #PWR020
U 1 1 56280663
P 4500 5200
F 0 "#PWR020" H 4500 5050 50  0001 C CNN
F 1 "VCC" H 4500 5350 50  0000 C CNN
F 2 "" H 4500 5200 60  0000 C CNN
F 3 "" H 4500 5200 60  0000 C CNN
	1    4500 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 5200 4600 5200
Wire Wire Line
	5800 4400 6000 4400
Wire Wire Line
	3050 5050 3900 5050
Wire Wire Line
	6300 5750 2900 5750
Wire Wire Line
	3900 5450 5250 5450
Connection ~ 5150 5450
Wire Wire Line
	5200 5550 5200 5450
Connection ~ 5200 5450
Text Label 6200 800  1    60   ~ 0
CURSOR
Text Label 900  4600 2    60   ~ 0
CURSOR
$Comp
L R R7
U 1 1 562AAAE2
P 6150 4750
F 0 "R7" V 6230 4750 50  0000 C CNN
F 1 "4k7" V 6150 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6080 4750 30  0001 C CNN
F 3 "" H 6150 4750 30  0000 C CNN
	1    6150 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 562AAF90
P 6350 4600
F 0 "#PWR021" H 6350 4350 50  0001 C CNN
F 1 "GND" H 6350 4450 50  0000 C CNN
F 2 "" H 6350 4600 60  0000 C CNN
F 3 "" H 6350 4600 60  0000 C CNN
	1    6350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4600 6350 4600
Text Label 5800 4900 0    60   ~ 0
AWAKE
Wire Wire Line
	10100 1600 10100 800 
Wire Wire Line
	10100 800  10700 800 
Connection ~ 9600 1600
$Comp
L +3.3V #PWR022
U 1 1 56771760
P 10700 800
F 0 "#PWR022" H 10700 650 50  0001 C CNN
F 1 "+3.3V" H 10700 940 50  0000 C CNN
F 2 "" H 10700 800 60  0000 C CNN
F 3 "" H 10700 800 60  0000 C CNN
	1    10700 800 
	1    0    0    -1  
$EndComp
Connection ~ 10550 800 
NoConn ~ 9600 2100
$Comp
L CONN_microSD U2
U 1 1 56773EFE
P 10450 5800
F 0 "U2" H 10450 5300 40  0000 C CNN
F 1 "CONN_microSD" H 10500 6350 30  0000 C CNN
F 2 "opendous:Memory_Card_microSD_DM3CS-SF" H 10450 5800 60  0001 C CNN
F 3 "" H 10450 5800 60  0000 C CNN
	1    10450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5350 10150 5350
Wire Wire Line
	10950 6000 10150 6000
Wire Wire Line
	10950 6100 10750 6100
Connection ~ 10950 6000
Wire Wire Line
	10150 5650 9850 5650
Wire Wire Line
	10150 5800 9800 5800
Wire Wire Line
	10150 5900 9850 5900
Wire Wire Line
	10150 6100 9900 6100
$Comp
L GND #PWR023
U 1 1 56774CE9
P 10950 6200
F 0 "#PWR023" H 10950 5950 50  0001 C CNN
F 1 "GND" H 10950 6050 50  0000 C CNN
F 2 "" H 10950 6200 60  0000 C CNN
F 3 "" H 10950 6200 60  0000 C CNN
	1    10950 6200
	1    0    0    -1  
$EndComp
Connection ~ 10950 6100
Wire Wire Line
	10950 6000 10950 6200
NoConn ~ 10150 5450
$Comp
L LED D1
U 1 1 56882A1C
P 10900 2000
F 0 "D1" H 10900 2100 50  0000 C CNN
F 1 "LED" H 10900 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 10900 2000 60  0001 C CNN
F 3 "" H 10900 2000 60  0000 C CNN
	1    10900 2000
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 56882B5F
P 10900 1550
F 0 "R8" V 10980 1550 50  0000 C CNN
F 1 "1K" V 10900 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10830 1550 30  0001 C CNN
F 3 "" H 10900 1550 30  0000 C CNN
	1    10900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 1200 10900 1400
Wire Wire Line
	10900 1800 10900 1700
Wire Wire Line
	10900 2200 10900 2350
$Comp
L +3.3V #PWR024
U 1 1 56883D26
P 10700 2350
F 0 "#PWR024" H 10700 2200 50  0001 C CNN
F 1 "+3.3V" H 10700 2490 50  0000 C CNN
F 2 "" H 10700 2350 60  0000 C CNN
F 3 "" H 10700 2350 60  0000 C CNN
	1    10700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 2350 10700 2350
$Comp
L FT231X U4
U 1 1 5627FA58
P 5200 4400
F 0 "U4" H 5200 3900 60  0000 C CNN
F 1 "FT231X" H 5450 3500 60  0000 C CNN
F 2 "ch376:SSOP-24_3.9x8.7mm_Pitch0.635mm" H 5200 4600 60  0001 C CNN
F 3 "" H 5200 4600 60  0000 C CNN
	1    5200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4000 4600 4000
Wire Wire Line
	4600 4000 4600 3450
Wire Wire Line
	5250 3750 5250 3450
Wire Wire Line
	5250 3450 4600 3450
$EndSCHEMATC
