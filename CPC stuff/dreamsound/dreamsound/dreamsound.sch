EESchema Schematic File Version 4
LIBS:dreamsound-cache
EELAYER 26 0
EELAYER END
$Descr User 9056 5906
encoding utf-8
Sheet 1 1
Title "WILLY"
Date "2020-11-15"
Rev "1.1"
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
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2950 2300 50  0001 C CNN
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
P 6300 1500
F 0 "U3" H 6300 1825 50  0000 C CNN
F 1 "74LS32" H 6300 1734 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6300 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6300 1500 50  0001 C CNN
	3    6300 1500
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
Text Label 2250 1550 0    50   ~ 0
A7
Text Label 2250 1450 0    50   ~ 0
A9
Text Label 2250 850  0    50   ~ 0
A10
Text Label 2250 950  0    50   ~ 0
A11
Text Label 2250 1050 0    50   ~ 0
A12
Text Label 2250 1150 0    50   ~ 0
A13
Text Label 2250 1250 0    50   ~ 0
A14
Text Label 2250 1350 0    50   ~ 0
A15
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
P 1000 4400
F 0 "C1" H 1115 4446 50  0000 L CNN
F 1 "C" H 1115 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1038 4250 50  0001 C CNN
F 3 "~" H 1000 4400 50  0001 C CNN
	1    1000 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E9C512F
P 1300 4400
F 0 "C2" H 1415 4446 50  0000 L CNN
F 1 "C" H 1415 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1338 4250 50  0001 C CNN
F 3 "~" H 1300 4400 50  0001 C CNN
	1    1300 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E9C515A
P 1600 4400
F 0 "C3" H 1715 4446 50  0000 L CNN
F 1 "C" H 1715 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1638 4250 50  0001 C CNN
F 3 "~" H 1600 4400 50  0001 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5E9C51C6
P 1950 4400
F 0 "C4" H 2068 4446 50  0000 L CNN
F 1 "CP" H 2068 4355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1988 4250 50  0001 C CNN
F 3 "~" H 1950 4400 50  0001 C CNN
	1    1950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4250 1300 4250
Wire Wire Line
	1300 4250 1450 4250
Connection ~ 1300 4250
Wire Wire Line
	1600 4250 1950 4250
Connection ~ 1600 4250
Wire Wire Line
	1950 4550 1600 4550
Wire Wire Line
	1600 4550 1450 4550
Connection ~ 1600 4550
Wire Wire Line
	1000 4550 1300 4550
Connection ~ 1300 4550
$Comp
L power:GND #PWR04
U 1 1 5E9CC743
P 1450 4550
F 0 "#PWR04" H 1450 4300 50  0001 C CNN
F 1 "GND" H 1455 4377 50  0000 C CNN
F 2 "" H 1450 4550 50  0001 C CNN
F 3 "" H 1450 4550 50  0001 C CNN
	1    1450 4550
	1    0    0    -1  
$EndComp
Connection ~ 1450 4550
Wire Wire Line
	1450 4550 1300 4550
$Comp
L power:VCC #PWR03
U 1 1 5E9CC76E
P 1450 4250
F 0 "#PWR03" H 1450 4100 50  0001 C CNN
F 1 "VCC" H 1467 4423 50  0000 C CNN
F 2 "" H 1450 4250 50  0001 C CNN
F 3 "" H 1450 4250 50  0001 C CNN
	1    1450 4250
	1    0    0    -1  
$EndComp
Connection ~ 1450 4250
Wire Wire Line
	1450 4250 1600 4250
$Comp
L Connector:DB25_Female J3
U 1 1 5E9CE636
P 7750 2200
F 0 "J3" H 7929 2246 50  0000 L CNN
F 1 "DB25_Female" H 7929 2155 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-25_Female_Horizontal_P2.77x2.84mm_EdgePinOffset4.94mm_Housed_MountingHolesOffset7.48mm" H 7750 2200 50  0001 C CNN
F 3 " ~" H 7750 2200 50  0001 C CNN
	1    7750 2200
	1    0    0    -1  
$EndComp
Text Label 7200 1200 0    50   ~ 0
D0
Text Label 7200 1400 0    50   ~ 0
D1
Text Label 7200 1600 0    50   ~ 0
D2
Text Label 7200 1800 0    50   ~ 0
D3
Text Label 7200 2000 0    50   ~ 0
D4
Text Label 7200 2200 0    50   ~ 0
D5
Text Label 7200 2400 0    50   ~ 0
D6
Text Label 7200 2600 0    50   ~ 0
D7
Text Label 7200 1000 0    50   ~ 0
A0
Text Label 6950 2800 0    50   ~ 0
!RESET
Wire Wire Line
	7200 1000 7450 1000
Wire Wire Line
	7200 1200 7450 1200
Wire Wire Line
	7200 1400 7450 1400
Wire Wire Line
	7200 1600 7450 1600
Wire Wire Line
	7200 1800 7450 1800
Wire Wire Line
	7200 2000 7450 2000
Wire Wire Line
	7200 2200 7450 2200
Wire Wire Line
	7200 2400 7450 2400
Wire Wire Line
	7200 2600 7450 2600
Wire Wire Line
	6950 2800 7450 2800
Wire Wire Line
	7200 1300 7450 1300
Text Label 7200 1300 0    50   ~ 0
IRQ
NoConn ~ 3450 2600
Wire Wire Line
	4400 1450 4600 1450
Text Label 5800 1600 0    50   ~ 0
!WR
Text Label 6800 1500 0    50   ~ 0
!WRCS
Wire Wire Line
	5800 1400 6000 1400
Wire Wire Line
	5800 1600 6000 1600
Text Label 6550 1950 0    50   ~ 0
!RD
$Comp
L Jumper:Jumper_3_Open JP3
U 1 1 5EA0F97B
P 6150 1950
F 0 "JP3" H 6150 2174 50  0000 C CNN
F 1 "Jumper_3_Open" H 6150 2083 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6150 1950 50  0001 C CNN
F 3 "~" H 6150 1950 50  0001 C CNN
	1    6150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1950 5750 1950
Wire Wire Line
	7000 1700 7450 1700
Text Label 5750 1950 0    50   ~ 0
A1
Text Notes 5650 2350 0    50   ~ 0
JP Position 1 for OPL2LPT/OPL3LPT\nJP Position 2 for S2P
$Comp
L 74xx:74LS32 U3
U 5 1 5EA18AAC
P 3450 4450
F 0 "U3" H 3680 4496 50  0000 L CNN
F 1 "74LS32" H 3680 4405 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3450 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3450 4450 50  0001 C CNN
	5    3450 4450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U1
U 2 1 5EA18B5B
P 2650 4450
F 0 "U1" H 2880 4496 50  0000 L CNN
F 1 "74LS30" H 2880 4405 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2650 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 2650 4450 50  0001 C CNN
	2    2650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3950 1950 4250
Wire Wire Line
	1950 3950 2650 3950
Connection ~ 1950 4250
Wire Wire Line
	2650 3950 3450 3950
Connection ~ 2650 3950
Wire Wire Line
	3450 4950 2650 4950
Wire Wire Line
	2650 4950 1950 4950
Wire Wire Line
	1950 4950 1950 4550
Connection ~ 2650 4950
Connection ~ 1950 4550
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
NoConn ~ 1400 2750
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
NoConn ~ 7200 1300
NoConn ~ 7450 3000
NoConn ~ 7450 3200
NoConn ~ 900  850 
Wire Wire Line
	7450 1900 7150 1900
Wire Wire Line
	7150 3300 7450 3300
Wire Wire Line
	7450 3100 7150 3100
Connection ~ 7150 3100
Wire Wire Line
	7150 3100 7150 3300
Wire Wire Line
	7450 2900 7150 2900
Connection ~ 7150 2900
Wire Wire Line
	7150 2900 7150 3100
Wire Wire Line
	7450 2500 7150 2500
Connection ~ 7150 2500
Wire Wire Line
	7150 2500 7150 2700
Wire Wire Line
	7450 2700 7150 2700
Connection ~ 7150 2700
Wire Wire Line
	7150 2700 7150 2900
Wire Wire Line
	7450 2300 7150 2300
Connection ~ 7150 2300
Wire Wire Line
	7150 2300 7150 2500
$Comp
L power:GND #PWR0101
U 1 1 5EAB0C0A
P 7150 3400
F 0 "#PWR0101" H 7150 3150 50  0001 C CNN
F 1 "GND" H 7155 3227 50  0000 C CNN
F 2 "" H 7150 3400 50  0001 C CNN
F 3 "" H 7150 3400 50  0001 C CNN
	1    7150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3400 7150 3300
Connection ~ 7150 3300
$Comp
L power:VCC #PWR0102
U 1 1 5EAB5D51
P 7450 3600
F 0 "#PWR0102" H 7450 3450 50  0001 C CNN
F 1 "VCC" H 7468 3773 50  0000 C CNN
F 2 "" H 7450 3600 50  0001 C CNN
F 3 "" H 7450 3600 50  0001 C CNN
	1    7450 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 3600 7450 3400
Wire Wire Line
	900  2850 650  2850
Text Label 650  2850 0    50   ~ 0
!RESET
$Comp
L 74xx:74LS32 U3
U 4 1 5FB0DFC8
P 6350 1100
F 0 "U3" H 6350 1425 50  0000 C CNN
F 1 "74LS32" H 6350 1334 50  0000 C CNN
F 2 "" H 6350 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6350 1100 50  0001 C CNN
	4    6350 1100
	1    0    0    -1  
$EndComp
Text Label 5850 1200 0    50   ~ 0
A1
Wire Wire Line
	5850 1200 6050 1200
Text Label 6900 1100 0    50   ~ 0
CSA1
Wire Wire Line
	6650 1100 7450 1100
Wire Wire Line
	6600 1500 7450 1500
Wire Wire Line
	7150 1900 7150 2100
Wire Wire Line
	7450 2100 7150 2100
Connection ~ 7150 2100
Wire Wire Line
	7150 2100 7150 2300
Wire Wire Line
	5800 1350 5800 1400
Wire Wire Line
	5200 1350 5800 1350
Wire Wire Line
	5800 1350 5800 1000
Wire Wire Line
	5800 1000 6050 1000
Connection ~ 5800 1350
Wire Wire Line
	6400 1950 6550 1950
Wire Wire Line
	6150 2100 7000 2100
Wire Wire Line
	7000 1700 7000 2100
$EndSCHEMATC
