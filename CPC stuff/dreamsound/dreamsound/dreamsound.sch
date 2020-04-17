EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "WILLY"
Date "2020-04-17"
Rev "0"
Comp "PulkoTronics"
Comment1 "CPC interface for Serdaco S2P and OPL2/3LPT"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS138 U2
U 1 1 5E9B0E7E
P 2950 2300
F 0 "U2" H 2950 3078 50  0000 C CNN
F 1 "74LS138" H 2950 2987 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 2950 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 2950 2300 50  0001 C CNN
	1    2950 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U1
U 1 1 5E9B0F9F
P 2700 1150
F 0 "U1" H 2700 1675 50  0000 C CNN
F 1 "74LS30" H 2700 1584 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2700 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 2700 1150 50  0001 C CNN
	1    2700 1150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U3
U 1 1 5E9B1571
P 3850 1250
F 0 "U3" H 3850 1575 50  0000 C CNN
F 1 "74LS32" H 3850 1484 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3850 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U3
U 3 1 5E9B1607
P 6450 1300
F 0 "U3" H 6450 1625 50  0000 C CNN
F 1 "74LS32" H 6450 1534 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6450 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6450 1300 50  0001 C CNN
	3    6450 1300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U3
U 2 1 5E9B1628
P 4900 1350
F 0 "U3" H 4900 1675 50  0000 C CNN
F 1 "74LS32" H 4900 1584 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4900 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4900 1350 50  0001 C CNN
	2    4900 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x25_Odd_Even J1
U 1 1 5E9B1AFB
P 1100 2050
F 0 "J1" H 1150 3467 50  0000 C CNN
F 1 "Conn_02x25_Odd_Even" H 1150 3376 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x25_P2.54mm_Vertical" H 1100 2050 50  0001 C CNN
F 3 "~" H 1100 2050 50  0001 C CNN
	1    1100 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E9B2C47
P 1600 850
F 0 "#PWR05" H 1600 600 50  0001 C CNN
F 1 "GND" V 1605 722 50  0000 R CNN
F 2 "" H 1600 850 50  0001 C CNN
F 3 "" H 1600 850 50  0001 C CNN
	1    1600 850 
	0    -1   -1   0   
$EndComp
Text Label 1650 1650 0    50   ~ 0
A0
Text Label 650  1650 0    50   ~ 0
A1
Text Label 1650 1550 0    50   ~ 0
A2
Text Label 650  1550 0    50   ~ 0
A3
Text Label 2300 2100 0    50   ~ 0
A4
Text Label 650  1450 0    50   ~ 0
A5
Text Label 1650 1350 0    50   ~ 0
A6
Text Label 650  1350 0    50   ~ 0
A7
Text Label 1650 1250 0    50   ~ 0
A8
Text Label 650  1250 0    50   ~ 0
A9
Text Label 1650 1150 0    50   ~ 0
A10
Text Label 650  1150 0    50   ~ 0
A11
Text Label 1650 1050 0    50   ~ 0
A12
Text Label 650  1050 0    50   ~ 0
A13
Text Label 1650 950  0    50   ~ 0
A14
Text Label 650  950  0    50   ~ 0
A15
Text Label 1650 2050 0    50   ~ 0
D0
Text Label 650  2050 0    50   ~ 0
D1
Text Label 1650 1950 0    50   ~ 0
D2
Text Label 650  1950 0    50   ~ 0
D3
Text Label 1650 1850 0    50   ~ 0
D4
Text Label 650  1850 0    50   ~ 0
D5
Text Label 1650 1750 0    50   ~ 0
D6
Text Label 650  1750 0    50   ~ 0
D7
Text Label 650  2350 0    50   ~ 0
!IORQ
Text Label 1650 2350 0    50   ~ 0
!RD
Text Label 650  2450 0    50   ~ 0
!WR
$Comp
L power:VCC #PWR01
U 1 1 5E9B2E1F
P 800 2150
F 0 "#PWR01" H 800 2000 50  0001 C CNN
F 1 "VCC" V 818 2277 50  0000 L CNN
F 2 "" H 800 2150 50  0001 C CNN
F 3 "" H 800 2150 50  0001 C CNN
	1    800  2150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E9B2E67
P 800 3250
F 0 "#PWR02" H 800 3000 50  0001 C CNN
F 1 "GND" V 805 3122 50  0000 R CNN
F 2 "" H 800 3250 50  0001 C CNN
F 3 "" H 800 3250 50  0001 C CNN
	1    800  3250
	0    1    1    0   
$EndComp
Wire Wire Line
	800  2150 900  2150
Wire Wire Line
	800  3250 900  3250
Wire Wire Line
	1400 850  1600 850 
Wire Wire Line
	650  950  900  950 
Wire Wire Line
	650  1050 900  1050
Wire Wire Line
	650  1150 900  1150
Wire Wire Line
	650  1250 900  1250
Wire Wire Line
	650  1350 900  1350
Wire Wire Line
	650  1450 900  1450
Wire Wire Line
	650  1550 900  1550
Wire Wire Line
	650  1650 900  1650
Wire Wire Line
	1400 950  1650 950 
Wire Wire Line
	1400 1050 1650 1050
Wire Wire Line
	1400 1150 1650 1150
Wire Wire Line
	1400 1250 1650 1250
Wire Wire Line
	1400 1350 1650 1350
Wire Wire Line
	1400 1450 1650 1450
Wire Wire Line
	1400 1550 1650 1550
Wire Wire Line
	1400 1650 1650 1650
Text Label 1650 2750 0    50   ~ 0
!BUSRESET
Wire Wire Line
	1400 1750 1650 1750
Wire Wire Line
	1400 1850 1650 1850
Wire Wire Line
	1400 1950 1650 1950
Wire Wire Line
	1400 2050 1650 2050
Wire Wire Line
	1400 2350 1650 2350
Wire Wire Line
	1400 2750 1650 2750
Wire Wire Line
	900  2350 650  2350
Wire Wire Line
	900  2450 650  2450
Wire Wire Line
	900  1750 650  1750
Wire Wire Line
	900  1850 650  1850
Wire Wire Line
	900  1950 650  1950
Wire Wire Line
	900  2050 650  2050
Text Label 2250 850  0    50   ~ 0
A7
Text Label 2250 950  0    50   ~ 0
A9
Text Label 2250 1050 0    50   ~ 0
A10
Text Label 2250 1150 0    50   ~ 0
A11
Text Label 2250 1250 0    50   ~ 0
A12
Text Label 2250 1350 0    50   ~ 0
A13
Text Label 2250 1550 0    50   ~ 0
A14
Text Label 2250 1450 0    50   ~ 0
A15
Text Label 2300 3050 0    50   ~ 0
A1
Text Label 2300 2500 0    50   ~ 0
A2
Text Label 2300 2000 0    50   ~ 0
A3
Text Label 1650 1450 0    50   ~ 0
A4
Text Label 2300 2200 0    50   ~ 0
A5
Text Label 2300 2700 0    50   ~ 0
A6
Wire Wire Line
	2250 850  2400 850 
Wire Wire Line
	2250 950  2400 950 
Wire Wire Line
	2250 1050 2400 1050
Wire Wire Line
	2250 1150 2400 1150
Wire Wire Line
	2250 1250 2400 1250
Wire Wire Line
	2250 1350 2400 1350
Wire Wire Line
	2250 1450 2400 1450
Wire Wire Line
	2250 1550 2400 1550
Wire Wire Line
	2300 2000 2450 2000
Wire Wire Line
	2300 2100 2450 2100
Wire Wire Line
	2300 2200 2450 2200
Wire Wire Line
	2300 2500 2450 2500
Wire Wire Line
	2300 2600 2450 2600
Wire Wire Line
	2300 2700 2450 2700
Wire Wire Line
	3000 1150 3550 1150
Wire Wire Line
	3450 1350 3550 1350
Text Label 4400 1450 0    50   ~ 0
!IORQ
Text Label 2300 2600 0    50   ~ 0
A8
Wire Wire Line
	4150 1250 4600 1250
Wire Wire Line
	5200 1350 5400 1350
Text Label 5400 1350 0    50   ~ 0
!CS
$Comp
L power:GND #PWR07
U 1 1 5E9BE831
P 2950 3100
F 0 "#PWR07" H 2950 2850 50  0001 C CNN
F 1 "GND" H 2955 2927 50  0000 C CNN
F 2 "" H 2950 3100 50  0001 C CNN
F 3 "" H 2950 3100 50  0001 C CNN
	1    2950 3100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5E9BE84E
P 2950 1600
F 0 "#PWR06" H 2950 1450 50  0001 C CNN
F 1 "VCC" H 2967 1773 50  0000 C CNN
F 2 "" H 2950 1600 50  0001 C CNN
F 3 "" H 2950 1600 50  0001 C CNN
	1    2950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1700 2950 1600
Wire Wire Line
	2950 3100 2950 3000
Text Notes 3500 2000 0    50   ~ 0
FE84-7
Text Notes 3500 2100 0    50   ~ 0
FE8C-F
Text Notes 3500 2200 0    50   ~ 0
FE94-7
Text Notes 3500 2300 0    50   ~ 0
FE9C-F
Text Notes 3500 2400 0    50   ~ 0
FEA4-7
Text Notes 3500 2500 0    50   ~ 0
FEAC-F
Text Notes 3500 2600 0    50   ~ 0
FEB4-7 (Albireo UART)
Text Notes 3500 2700 0    50   ~ 0
FEBC-F
$Comp
L Device:C C1
U 1 1 5E9C50DD
P 750 3850
F 0 "C1" H 865 3896 50  0000 L CNN
F 1 "C" H 865 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 788 3700 50  0001 C CNN
F 3 "~" H 750 3850 50  0001 C CNN
	1    750  3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E9C512F
P 1050 3850
F 0 "C2" H 1165 3896 50  0000 L CNN
F 1 "C" H 1165 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1088 3700 50  0001 C CNN
F 3 "~" H 1050 3850 50  0001 C CNN
	1    1050 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E9C515A
P 1350 3850
F 0 "C3" H 1465 3896 50  0000 L CNN
F 1 "C" H 1465 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1388 3700 50  0001 C CNN
F 3 "~" H 1350 3850 50  0001 C CNN
	1    1350 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5E9C51C6
P 1700 3850
F 0 "C4" H 1818 3896 50  0000 L CNN
F 1 "CP" H 1818 3805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1738 3700 50  0001 C CNN
F 3 "~" H 1700 3850 50  0001 C CNN
	1    1700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  3700 1050 3700
Wire Wire Line
	1050 3700 1200 3700
Connection ~ 1050 3700
Wire Wire Line
	1350 3700 1700 3700
Connection ~ 1350 3700
Wire Wire Line
	1700 4000 1350 4000
Wire Wire Line
	1350 4000 1200 4000
Connection ~ 1350 4000
Wire Wire Line
	750  4000 1050 4000
Connection ~ 1050 4000
$Comp
L power:GND #PWR04
U 1 1 5E9CC743
P 1200 4000
F 0 "#PWR04" H 1200 3750 50  0001 C CNN
F 1 "GND" H 1205 3827 50  0000 C CNN
F 2 "" H 1200 4000 50  0001 C CNN
F 3 "" H 1200 4000 50  0001 C CNN
	1    1200 4000
	1    0    0    -1  
$EndComp
Connection ~ 1200 4000
Wire Wire Line
	1200 4000 1050 4000
$Comp
L power:VCC #PWR03
U 1 1 5E9CC76E
P 1200 3700
F 0 "#PWR03" H 1200 3550 50  0001 C CNN
F 1 "VCC" H 1217 3873 50  0000 C CNN
F 2 "" H 1200 3700 50  0001 C CNN
F 3 "" H 1200 3700 50  0001 C CNN
	1    1200 3700
	1    0    0    -1  
$EndComp
Connection ~ 1200 3700
Wire Wire Line
	1200 3700 1350 3700
$Comp
L Connector:DB25_Female J3
U 1 1 5E9CE636
P 10350 2150
F 0 "J3" H 10529 2196 50  0000 L CNN
F 1 "DB25_Female" H 10529 2105 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-25_Female_Horizontal_P2.77x2.54mm_EdgePinOffset9.40mm" H 10350 2150 50  0001 C CNN
F 3 " ~" H 10350 2150 50  0001 C CNN
	1    10350 2150
	1    0    0    -1  
$EndComp
Text Label 9800 1150 0    50   ~ 0
D0
Text Label 9800 1350 0    50   ~ 0
D1
Text Label 9800 1550 0    50   ~ 0
D2
Text Label 9800 1750 0    50   ~ 0
D3
Text Label 9800 1950 0    50   ~ 0
D4
Text Label 9800 2150 0    50   ~ 0
D5
Text Label 9800 2350 0    50   ~ 0
D6
Text Label 9800 2550 0    50   ~ 0
D7
Text Label 9800 950  0    50   ~ 0
A0
Text Label 9550 2750 0    50   ~ 0
!BUSRESET
Wire Wire Line
	9800 950  10050 950 
Wire Wire Line
	9800 1150 10050 1150
Wire Wire Line
	9800 1350 10050 1350
Wire Wire Line
	9800 1550 10050 1550
Wire Wire Line
	9800 1750 10050 1750
Wire Wire Line
	9800 1950 10050 1950
Wire Wire Line
	9800 2150 10050 2150
Wire Wire Line
	9800 2350 10050 2350
Wire Wire Line
	9800 2550 10050 2550
Wire Wire Line
	9550 2750 10050 2750
Wire Wire Line
	9800 1250 10050 1250
Text Label 9800 1250 0    50   ~ 0
IRQ
NoConn ~ 3450 2600
Wire Wire Line
	4400 1450 4600 1450
$Comp
L 74xx:74LS32 U3
U 4 1 5E9E818E
P 6450 1900
F 0 "U3" H 6450 2225 50  0000 C CNN
F 1 "74LS32" H 6450 2134 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6450 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6450 1900 50  0001 C CNN
	4    6450 1900
	1    0    0    -1  
$EndComp
Text Label 5950 1200 0    50   ~ 0
!CS
Text Label 5950 1800 0    50   ~ 0
!CS
Text Label 5950 1400 0    50   ~ 0
!WR
Text Label 5950 2000 0    50   ~ 0
!RD
Text Label 6850 1300 0    50   ~ 0
!WRCS
Text Label 6850 1900 0    50   ~ 0
!RDCS
Wire Wire Line
	5950 1200 6150 1200
Wire Wire Line
	5950 1400 6150 1400
Wire Wire Line
	5950 1800 6150 1800
Wire Wire Line
	5950 2000 6150 2000
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 5E9F93F1
P 7850 1300
F 0 "JP1" H 7850 1524 50  0000 C CNN
F 1 "Jumper_3_Open" H 7850 1433 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7850 1300 50  0001 C CNN
F 3 "~" H 7850 1300 50  0001 C CNN
	1    7850 1300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Open JP2
U 1 1 5E9F947B
P 7850 1900
F 0 "JP2" H 7850 2124 50  0000 C CNN
F 1 "Jumper_3_Open" H 7850 2033 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7850 1900 50  0001 C CNN
F 3 "~" H 7850 1900 50  0001 C CNN
	1    7850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1300 7600 1300
Wire Wire Line
	6750 1900 7600 1900
Wire Wire Line
	7850 1450 10050 1450
Wire Wire Line
	7850 2050 9500 2050
Wire Wire Line
	8100 1900 8250 1900
Wire Wire Line
	8100 1300 8250 1300
Text Label 8250 1900 0    50   ~ 0
!CS
Text Label 8250 1300 0    50   ~ 0
!WR
Wire Wire Line
	9500 1050 10050 1050
Wire Wire Line
	9500 1050 9500 2050
Text Label 8250 2450 0    50   ~ 0
!RD
$Comp
L Jumper:Jumper_3_Open JP3
U 1 1 5EA0F97B
P 7850 2450
F 0 "JP3" H 7850 2674 50  0000 C CNN
F 1 "Jumper_3_Open" H 7850 2583 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7850 2450 50  0001 C CNN
F 3 "~" H 7850 2450 50  0001 C CNN
	1    7850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2450 8250 2450
Wire Wire Line
	7600 2450 7450 2450
Wire Wire Line
	7850 2600 9600 2600
Wire Wire Line
	9600 2600 9600 1650
Wire Wire Line
	9600 1650 10050 1650
Text Label 7450 2450 0    50   ~ 0
A1
Text Notes 7450 2900 0    50   ~ 0
JP Position 1 for OPL2LPT/OPL3LPT\nJP Position 2 for S2P
$Comp
L 74xx:74LS32 U3
U 5 1 5EA18AAC
P 3200 3900
F 0 "U3" H 3430 3946 50  0000 L CNN
F 1 "74LS32" H 3430 3855 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3200 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3200 3900 50  0001 C CNN
	5    3200 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U1
U 2 1 5EA18B5B
P 2400 3900
F 0 "U1" H 2630 3946 50  0000 L CNN
F 1 "74LS30" H 2630 3855 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2400 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 2400 3900 50  0001 C CNN
	2    2400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3400 1700 3700
Wire Wire Line
	1700 3400 2400 3400
Connection ~ 1700 3700
Wire Wire Line
	2400 3400 3200 3400
Connection ~ 2400 3400
Wire Wire Line
	3200 4400 2400 4400
Wire Wire Line
	2400 4400 1700 4400
Wire Wire Line
	1700 4400 1700 4000
Connection ~ 2400 4400
Connection ~ 1700 4000
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J2
U 1 1 5EA261CD
P 4650 2300
F 0 "J2" H 4700 2817 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 4700 2726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 4650 2300 50  0001 C CNN
F 3 "~" H 4650 2300 50  0001 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2000 4450 2000
Wire Wire Line
	3450 2100 4450 2100
Wire Wire Line
	3450 2200 4450 2200
Wire Wire Line
	3450 2300 4450 2300
Wire Wire Line
	3450 2400 4450 2400
Wire Wire Line
	3450 2500 4450 2500
Wire Wire Line
	3450 2700 4450 2700
Wire Wire Line
	4450 2700 4450 2600
Wire Wire Line
	4950 2600 4950 2500
Wire Wire Line
	4950 2500 4950 2400
Connection ~ 4950 2500
Wire Wire Line
	4950 2400 4950 2300
Connection ~ 4950 2400
Wire Wire Line
	4950 2300 4950 2200
Connection ~ 4950 2300
Wire Wire Line
	4950 2200 4950 2100
Connection ~ 4950 2200
Wire Wire Line
	4950 2100 4950 2000
Connection ~ 4950 2100
Wire Wire Line
	4950 2000 4950 1650
Wire Wire Line
	4950 1650 3450 1650
Wire Wire Line
	3450 1650 3450 1350
Connection ~ 4950 2000
Text Label 3850 2000 0    50   ~ 0
FE84-87
Text Label 3850 2100 0    50   ~ 0
FE8C-8F
Text Label 3850 2200 0    50   ~ 0
FE94-97
Text Label 3850 2300 0    50   ~ 0
FE9C-9F
Text Label 3850 2400 0    50   ~ 0
FEA4-A7
Text Label 3850 2500 0    50   ~ 0
FEAC-AF
Text Label 3850 2700 0    50   ~ 0
FEBC-BF
NoConn ~ 1400 2150
NoConn ~ 1400 2250
NoConn ~ 900  2250
NoConn ~ 900  2550
NoConn ~ 900  2650
NoConn ~ 900  2750
NoConn ~ 900  2850
NoConn ~ 900  2950
NoConn ~ 900  3050
NoConn ~ 900  3150
NoConn ~ 1400 2450
NoConn ~ 1400 2550
NoConn ~ 1400 2650
NoConn ~ 1400 2850
NoConn ~ 1400 2950
NoConn ~ 1400 3050
NoConn ~ 1400 3150
NoConn ~ 1400 3250
NoConn ~ 9800 1250
NoConn ~ 10050 2950
NoConn ~ 10050 3150
NoConn ~ 900  850 
Wire Wire Line
	10050 1850 9750 1850
Wire Wire Line
	9750 3250 10050 3250
Wire Wire Line
	10050 3050 9750 3050
Connection ~ 9750 3050
Wire Wire Line
	9750 3050 9750 3250
Wire Wire Line
	10050 2850 9750 2850
Wire Wire Line
	9750 1850 9750 2050
Connection ~ 9750 2850
Wire Wire Line
	9750 2850 9750 3050
Wire Wire Line
	10050 2450 9750 2450
Connection ~ 9750 2450
Wire Wire Line
	9750 2450 9750 2650
Wire Wire Line
	10050 2650 9750 2650
Connection ~ 9750 2650
Wire Wire Line
	9750 2650 9750 2850
Wire Wire Line
	10050 2250 9750 2250
Connection ~ 9750 2250
Wire Wire Line
	9750 2250 9750 2450
Wire Wire Line
	10050 2050 9750 2050
Connection ~ 9750 2050
Wire Wire Line
	9750 2050 9750 2250
$Comp
L power:GND #PWR?
U 1 1 5EAB0C0A
P 9750 3350
F 0 "#PWR?" H 9750 3100 50  0001 C CNN
F 1 "GND" H 9755 3177 50  0000 C CNN
F 2 "" H 9750 3350 50  0001 C CNN
F 3 "" H 9750 3350 50  0001 C CNN
	1    9750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3350 9750 3250
Connection ~ 9750 3250
$Comp
L power:VCC #PWR?
U 1 1 5EAB5D51
P 10050 3550
F 0 "#PWR?" H 10050 3400 50  0001 C CNN
F 1 "VCC" H 10068 3723 50  0000 C CNN
F 2 "" H 10050 3550 50  0001 C CNN
F 3 "" H 10050 3550 50  0001 C CNN
	1    10050 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	10050 3550 10050 3350
$EndSCHEMATC
