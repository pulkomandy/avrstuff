EESchema Schematic File Version 2
LIBS:device
LIBS:power
LIBS:conn
LIBS:74xx
LIBS:ch376
LIBS:regul
LIBS:opendous
LIBS:ramcard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "CH376 CPC USB interface"
Date "2015-10-14"
Rev ""
Comp "PulkoTronics"
Comment1 ""
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
F 2 "Housings_DIP:DIP-14_W7.62mm" H 1400 2400 60  0001 C CNN
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
F 2 "Housings_DIP:DIP-14_W7.62mm" H 1400 1900 60  0001 C CNN
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
NoConn ~ 900  5100
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
NoConn ~ 900  4600
NoConn ~ 900  4500
NoConn ~ 900  4400
NoConn ~ 2050 6800
NoConn ~ 2050 5400
NoConn ~ 2050 5100
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
F 1 "C" H 1500 3700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 1450 3800 60  0001 C CNN
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
F 1 "C" H 1150 3700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 1100 3800 60  0001 C CNN
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
NoConn ~ 900  4900
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
F 2 "Housings_DIP:DIP-14_W7.62mm" H 2700 1100 60  0001 C CNN
F 3 "" H 2700 1100 60  0000 C CNN
	1    2700 1100
	1    0    0    -1  
$EndComp
Text Label 600  1800 0    60   ~ 0
A6
Text Label 600  2000 0    60   ~ 0
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
F 1 "C" H 800 3700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 750 3800 60  0001 C CNN
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
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3200 2250 60  0001 C CNN
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
F 2 "Housings_DIP:DIP-14_W7.62mm" H 1400 2900 60  0001 C CNN
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
F 2 "SMD_Packages:SOJ-28-W" H 10050 1750 60  0001 C CNN
F 3 "" H 10050 1750 60  0000 C CNN
	1    10050 1450
	1    0    0    -1  
$EndComp
NoConn ~ 9450 800 
NoConn ~ 9450 900 
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
L VCC #PWR06
U 1 1 56214A5C
P 10700 800
F 0 "#PWR06" H 10700 650 50  0001 C CNN
F 1 "VCC" H 10700 950 50  0000 C CNN
F 2 "" H 10700 800 60  0000 C CNN
F 3 "" H 10700 800 60  0000 C CNN
	1    10700 800 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56214A97
P 9150 1900
F 0 "#PWR07" H 9150 1650 50  0001 C CNN
F 1 "GND" H 9150 1750 50  0000 C CNN
F 2 "" H 9150 1900 60  0000 C CNN
F 3 "" H 9150 1900 60  0000 C CNN
	1    9150 1900
	1    0    0    -1  
$EndComp
NoConn ~ 9450 1300
NoConn ~ 10700 1200
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
L GND #PWR08
U 1 1 56215495
P 8350 1200
F 0 "#PWR08" H 8350 950 50  0001 C CNN
F 1 "GND" H 8350 1050 50  0000 C CNN
F 2 "" H 8350 1200 60  0000 C CNN
F 3 "" H 8350 1200 60  0000 C CNN
	1    8350 1200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 56215624
P 8900 2400
F 0 "#PWR09" H 8900 2250 50  0001 C CNN
F 1 "VCC" H 8900 2550 50  0000 C CNN
F 2 "" H 8900 2400 60  0000 C CNN
F 3 "" H 8900 2400 60  0000 C CNN
	1    8900 2400
	-1   0    0    1   
$EndComp
$Comp
L Crystal_Small Y1
U 1 1 56215654
P 9350 2250
F 0 "Y1" H 9350 2350 50  0000 C CNN
F 1 "Crystal_Small" H 9350 2150 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 9350 2250 60  0001 C CNN
F 3 "" H 9350 2250 60  0000 C CNN
	1    9350 2250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56215821
P 8900 2200
F 0 "R1" V 8980 2200 50  0000 C CNN
F 1 "2R" V 8900 2200 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 8830 2200 30  0001 C CNN
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
F 1 "0.01u" V 9250 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9338 1450 30  0001 C CNN
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
	1750 3950 750  3950
Connection ~ 1450 3650
Wire Wire Line
	1450 3600 1450 3650
Wire Wire Line
	1050 4900 900  4900
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
	750  5900 750  5600
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
	1750 3650 750  3650
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
	10550 800  10700 800 
Wire Wire Line
	10550 900  10700 900 
Wire Wire Line
	10550 1000 10700 1000
Wire Wire Line
	10550 1100 10700 1100
Wire Wire Line
	10550 1200 10700 1200
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
	9600 800  9450 800 
Wire Wire Line
	9600 900  9450 900 
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
	9250 2000 9600 2000
Wire Wire Line
	9600 2100 9450 2100
Wire Wire Line
	8900 1600 8900 1200
Wire Wire Line
	8500 1200 8500 1400
Connection ~ 8900 1200
Connection ~ 8500 1200
Wire Wire Line
	8900 1900 8900 2050
Wire Wire Line
	9450 2100 9450 2250
Wire Wire Line
	9250 2250 9250 2000
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
	9450 1600 9600 1600
$Comp
L GND #PWR010
U 1 1 56220353
P 10750 6150
F 0 "#PWR010" H 10750 5900 50  0001 C CNN
F 1 "GND" H 10750 6000 50  0000 C CNN
F 2 "" H 10750 6150 60  0000 C CNN
F 3 "" H 10750 6150 60  0000 C CNN
	1    10750 6150
	1    0    0    -1  
$EndComp
Text Label 9700 5400 0    60   ~ 0
/SD_CS
Text Label 9700 6150 0    60   ~ 0
SD_DI
Text Label 9700 5850 0    60   ~ 0
SD_CLK
Text Label 9700 5700 0    60   ~ 0
SD_DO
$Comp
L +3.3V #PWR011
U 1 1 56220A10
P 10900 4100
F 0 "#PWR011" H 10900 3950 50  0001 C CNN
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
L GND #PWR012
U 1 1 5622141D
P 10400 4550
F 0 "#PWR012" H 10400 4300 50  0001 C CNN
F 1 "GND" H 10400 4400 50  0000 C CNN
F 2 "" H 10400 4550 60  0000 C CNN
F 3 "" H 10400 4550 60  0000 C CNN
	1    10400 4550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 56221658
P 9900 4100
F 0 "#PWR013" H 9900 3950 50  0001 C CNN
F 1 "VCC" H 9900 4250 50  0000 C CNN
F 2 "" H 9900 4100 60  0000 C CNN
F 3 "" H 9900 4100 60  0000 C CNN
	1    9900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4100 10000 4100
Wire Wire Line
	10400 4550 10400 4400
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
L +3.3V #PWR014
U 1 1 56222B51
P 9700 5950
F 0 "#PWR014" H 9700 5800 50  0001 C CNN
F 1 "+3.3V" H 9700 6090 50  0000 C CNN
F 2 "" H 9700 5950 60  0000 C CNN
F 3 "" H 9700 5950 60  0000 C CNN
	1    9700 5950
	0    -1   -1   0   
$EndComp
$Comp
L CONN_SD U2
U 1 1 56222F70
P 10400 5600
F 0 "U2" H 10400 4900 40  0000 C CNN
F 1 "CONN_SD" H 10400 6300 40  0000 C CNN
F 2 "opendous:Memory_Card_microSD_DM3CS-SF" H 10400 5600 60  0001 C CNN
F 3 "" H 10400 5600 60  0000 C CNN
	1    10400 5600
	1    0    0    -1  
$EndComp
NoConn ~ 9700 5600
NoConn ~ 10750 5000
NoConn ~ 10750 5100
Wire Wire Line
	10750 5300 10750 6150
Connection ~ 10750 5400
Wire Wire Line
	10750 6050 10050 6050
Connection ~ 10750 5500
Connection ~ 10750 6050
Wire Wire Line
	9700 5400 10050 5400
Wire Wire Line
	9700 5600 10050 5600
Wire Wire Line
	9700 5700 10050 5700
Wire Wire Line
	9700 5850 10050 5850
Wire Wire Line
	9700 5950 10050 5950
Wire Wire Line
	9700 6150 10050 6150
Text Label 10700 1300 0    60   ~ 0
/SD_CS
Text Label 10700 1000 0    60   ~ 0
SD_CLK
Text Label 9450 1400 0    60   ~ 0
SD_DO
Text Label 10700 1100 0    60   ~ 0
SD_DI
Wire Wire Line
	10050 5500 10750 5500
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
L TL16C550C U?
U 1 1 56228CDB
P 6200 3250
F 0 "U?" H 6300 3300 60  0000 C CNN
F 1 "TL16C550C" H 6300 3400 60  0000 C CNN
F 2 "" V 7200 2950 60  0000 C CNN
F 3 "" V 7200 2950 60  0000 C CNN
	1    6200 3250
	1    0    0    -1  
$EndComp
Wire Notes Line
	4650 2050 4650 4550
Wire Notes Line
	4650 4550 7600 4550
Wire Notes Line
	7600 4550 7600 2050
Wire Notes Line
	7600 2050 4650 2050
Text Notes 4700 4500 0    60   ~ 0
UART interface
Text Label 6050 2300 1    60   ~ 0
D0
Text Label 5950 2300 1    60   ~ 0
D1
Text Label 5850 2300 1    60   ~ 0
D2
Text Label 5750 2300 1    60   ~ 0
D3
Text Label 5650 2300 1    60   ~ 0
D4
Text Label 5200 2900 2    60   ~ 0
D5
Text Label 5200 3000 2    60   ~ 0
D6
Text Label 5200 3100 2    60   ~ 0
D7
Wire Wire Line
	5200 3900 5550 3900
Wire Wire Line
	5550 3900 5550 3200
Wire Wire Line
	5550 3200 5200 3200
Text Label 5200 3600 2    60   ~ 0
A4
Text Label 5200 3700 2    60   ~ 0
A5
Text Label 5200 3800 2    60   ~ 0
FEBx
Text Label 9300 2000 0    60   ~ 0
12MHz
Text Label 5850 4200 3    60   ~ 0
12MHz
NoConn ~ 5950 4200
Wire Wire Line
	6150 2250 6150 4200
Wire Wire Line
	6150 3700 6850 3700
Wire Wire Line
	6450 3700 6450 4200
Connection ~ 6150 3700
Text Label 7150 3400 0    60   ~ 0
A0
Text Label 7150 3500 0    60   ~ 0
A1
Text Label 7150 3600 0    60   ~ 0
A2
NoConn ~ 7150 3300
NoConn ~ 6750 4200
Wire Wire Line
	6850 3700 6850 4200
Connection ~ 6450 3700
NoConn ~ 6650 4200
Text Label 6050 4200 3    60   ~ 0
/WR
Text Label 6350 4200 3    60   ~ 0
/RD
$Comp
L GND #PWR?
U 1 1 56229E79
P 6250 4350
F 0 "#PWR?" H 6250 4100 50  0001 C CNN
F 1 "GND" H 6250 4200 50  0000 C CNN
F 2 "" H 6250 4350 60  0000 C CNN
F 3 "" H 6250 4350 60  0000 C CNN
	1    6250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4350 6250 4200
$Comp
L VCC #PWR?
U 1 1 5622A2AF
P 6150 2250
F 0 "#PWR?" H 6150 2100 50  0001 C CNN
F 1 "VCC" H 6150 2400 50  0000 C CNN
F 2 "" H 6150 2250 60  0000 C CNN
F 3 "" H 6150 2250 60  0000 C CNN
	1    6150 2250
	1    0    0    -1  
$EndComp
Connection ~ 6150 2300
Text Label 2050 4800 2    60   ~ 0
/RESET
Text Label 6550 2300 1    60   ~ 0
/CTS
Text Label 7150 3000 0    60   ~ 0
/RTS
Text Label 5200 3400 2    60   ~ 0
RX
Text Label 5200 3500 2    60   ~ 0
TX
$EndSCHEMATC
