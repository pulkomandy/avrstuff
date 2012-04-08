EESchema Schematic File Version 2  date 09/04/2012 00:17:25
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
LIBS:SCSI_V2_0_-cache
LIBS:SCSI2SD-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 5 6
Title "SCSI_V2.0.sch"
Date "8 apr 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1400 1350 0    60   Input ~ 0
SCSI
$Comp
L GND #PWR?
U 1 1 4F81F90F
P 3500 3150
AR Path="/4F81E348/4F81F90D" Ref="#PWR?"  Part="1" 
AR Path="/4F81E348/4F81F90F" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 3500 3150 30  0001 C CNN
F 1 "GND" H 3500 3080 30  0001 C CNN
	1    3500 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR039
U 1 1 4F81F90D
P 3500 2250
F 0 "#PWR039" H 3500 2250 30  0001 C CNN
F 1 "GND" H 3500 2180 30  0001 C CNN
	1    3500 2250
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR040
U 1 1 4F81EF0C
P 3800 5550
F 0 "#PWR040" H 3800 5500 20  0001 C CNN
F 1 "+12V" H 3800 5650 30  0000 C CNN
	1    3800 5550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR041
U 1 1 4F81EF06
P 3000 5550
F 0 "#PWR041" H 3000 5640 20  0001 C CNN
F 1 "+5V" H 3000 5640 30  0000 C CNN
	1    3000 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4F81EF01
P 3000 6550
AR Path="/4F81E348/4F81EEFE" Ref="#PWR?"  Part="1" 
AR Path="/4F81E348/4F81EF01" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 3000 6550 30  0001 C CNN
F 1 "GND" H 3000 6480 30  0001 C CNN
	1    3000 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4F81EF00
P 3800 6550
AR Path="/4F81E348/4F81EEFE" Ref="#PWR?"  Part="1" 
AR Path="/4F81E348/4F81EF00" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 3800 6550 30  0001 C CNN
F 1 "GND" H 3800 6480 30  0001 C CNN
	1    3800 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 4F81EEFE
P 4600 6550
F 0 "#PWR044" H 4600 6550 30  0001 C CNN
F 1 "GND" H 4600 6480 30  0001 C CNN
	1    4600 6550
	1    0    0    -1  
$EndComp
Text Notes 7900 6450 0    100  ~ 0
SCSI PCMCIA drive (PCB1)
Text Notes 7900 6750 0    100  ~ 0
PHY (SCSI connector)
Text Notes 7900 7550 0    100  ~ 0
V2.0
Text Notes 2800 6450 1    70   ~ 0
Green
Text Notes 3600 6450 1    70   ~ 0
Green
Text Notes 4400 6450 1    70   ~ 0
Green
$Comp
L CON_HARTING_60050685143 CON10
U 1 1 4F81EC2E
P 5300 2750
F 0 "CON10" H 7400 2849 70  0000 L BNN
F 1 "HARTING_60050685143" H 7400 2650 70  0000 L BNN
	1    5300 2750
	1    0    0    -1  
$EndComp
$Comp
L D_LED3MM D1
U 1 1 4F81EC32
P 3000 6250
F 0 "D1" H 3120 6210 70  0000 L BNN
F 1 "5V" H 3119 6105 70  0000 L BNN
	1    3000 6250
	1    0    0    -1  
$EndComp
$Comp
L D_LED3MM D2
U 1 1 4F81EC31
P 3800 6250
F 0 "D2" H 3930 6210 70  0000 L BNN
F 1 "12V" H 3930 6105 70  0000 L BNN
	1    3800 6250
	1    0    0    -1  
$EndComp
$Comp
L D_LED3MM D3
U 1 1 4F81EC30
P 4600 6250
F 0 "D3" H 4720 6220 70  0000 L BNN
F 1 "TERMPWR" H 4719 6105 70  0000 L BNN
	1    4600 6250
	1    0    0    -1  
$EndComp
$Comp
L R_R-EU_ R4
U 1 1 4F81EC35
P 3000 5850
F 0 "R4" V 3009 5770 70  0000 L BNN
F 1 "220" V 2900 5770 70  0000 L BNN
	1    3000 5850
	0    -1   -1   0   
$EndComp
$Comp
L R_R-EU_ R5
U 1 1 4F81EC36
P 3800 5850
F 0 "R5" V 3809 5760 70  0000 L BNN
F 1 "820" V 3700 5760 70  0000 L BNN
	1    3800 5850
	0    -1   -1   0   
$EndComp
$Comp
L R_R-EU_ R12
U 1 1 4F81EC37
P 4600 5850
F 0 "R12" V 4609 5760 70  0000 L BNN
F 1 "220" V 4490 5760 70  0000 L BNN
	1    4600 5850
	0    -1   -1   0   
$EndComp
$Comp
L FRAME_A4_LANDSCAPE U$
U 1 1 4F81EC38
P 600 7650
F 0 "U$" H 600 7650 60  0001 C CNN
	1    600  7650
	1    0    0    -1  
$EndComp
$Comp
L FRAME_A4_LANDSCAPE U$
U 1 1 4F81EC39
P 7000 7650
F 0 "U$" H 7000 7650 60  0001 C CNN
	1    7000 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5650 3000 5550
Wire Wire Line
	3800 5650 3800 5550
Wire Wire Line
	4600 1350 4700 1450
Wire Wire Line
	4700 1450 4700 2450
Text Label 4700 1550 1    70   ~ 0
+ACK
Wire Wire Line
	4900 1350 5000 1450
Wire Wire Line
	5000 1450 5000 2450
Text Label 5000 1550 1    70   ~ 0
+ATN
Wire Wire Line
	4700 1350 4800 1450
Wire Wire Line
	4800 1450 4800 2450
Text Label 4800 1550 1    70   ~ 0
+BSY
Wire Wire Line
	4200 1350 4300 1450
Wire Wire Line
	4300 1450 4300 2450
Text Label 4300 1550 1    70   ~ 0
+C/D
Wire Wire Line
	6400 1350 6500 1450
Wire Wire Line
	6500 1450 6500 2450
Text Label 6500 1550 1    70   ~ 0
+D0
Wire Wire Line
	6300 1350 6400 1450
Wire Wire Line
	6400 1450 6400 2450
Text Label 6400 1550 1    70   ~ 0
+D1
Wire Wire Line
	6200 1350 6300 1450
Wire Wire Line
	6300 1450 6300 2450
Text Label 6300 1550 1    70   ~ 0
+D2
Wire Wire Line
	6100 1350 6200 1450
Wire Wire Line
	6200 1450 6200 2450
Text Label 6200 1550 1    70   ~ 0
+D3
Wire Wire Line
	6000 1350 6100 1450
Wire Wire Line
	6100 1450 6100 2450
Text Label 6100 1550 1    70   ~ 0
+D4
Wire Wire Line
	5900 1350 6000 1450
Wire Wire Line
	6000 1450 6000 2450
Text Label 6000 1550 1    70   ~ 0
+D5
Wire Wire Line
	5800 1350 5900 1450
Wire Wire Line
	5900 1450 5900 2450
Text Label 5900 1550 1    70   ~ 0
+D6
Wire Wire Line
	5700 1350 5800 1450
Wire Wire Line
	5800 1450 5800 2450
Text Label 5800 1550 1    70   ~ 0
+D7
Wire Wire Line
	3900 1350 4000 1450
Wire Wire Line
	4000 1450 4000 2450
Text Label 4000 1550 1    70   ~ 0
+D8
Wire Wire Line
	3800 1350 3900 1450
Wire Wire Line
	3900 1450 3900 2450
Text Label 3900 1550 1    70   ~ 0
+D9
Wire Wire Line
	3700 1350 3800 1450
Wire Wire Line
	3800 1450 3800 2450
Text Label 3800 1550 1    70   ~ 0
+D10
Wire Wire Line
	3600 1350 3700 1450
Wire Wire Line
	3700 1450 3700 2450
Text Label 3700 1550 1    70   ~ 0
+D11
Wire Wire Line
	6900 1350 7000 1450
Wire Wire Line
	7000 1450 7000 2450
Text Label 7000 1550 1    70   ~ 0
+D12
Wire Wire Line
	6800 1350 6900 1450
Wire Wire Line
	6900 1450 6900 2450
Text Label 6900 1550 1    70   ~ 0
+D13
Wire Wire Line
	6700 1350 6800 1450
Wire Wire Line
	6800 1450 6800 2450
Text Label 6800 1550 1    70   ~ 0
+D14
Wire Wire Line
	6600 1350 6700 1450
Wire Wire Line
	6700 1450 6700 2450
Text Label 6700 1550 1    70   ~ 0
+D15
Wire Wire Line
	4000 1350 4100 1450
Wire Wire Line
	4100 1450 4100 2450
Text Label 4100 1550 1    70   ~ 0
+I/O
Wire Wire Line
	4400 1350 4500 1450
Wire Wire Line
	4500 1450 4500 2450
Text Label 4500 1550 1    70   ~ 0
+MSG
Wire Wire Line
	5600 1350 5700 1450
Wire Wire Line
	5700 1450 5700 2450
Text Label 5700 1550 1    70   ~ 0
+P0
Wire Wire Line
	6500 1350 6600 1450
Wire Wire Line
	6600 1450 6600 2450
Text Label 6600 1550 1    70   ~ 0
+P1
Wire Wire Line
	4100 1350 4200 1450
Wire Wire Line
	4200 1450 4200 2450
Text Label 4200 1550 1    70   ~ 0
+REQ
Wire Wire Line
	4500 1350 4600 1450
Wire Wire Line
	4600 1450 4600 2450
Text Label 4600 1550 1    70   ~ 0
+RST
Wire Wire Line
	4300 1350 4400 1450
Wire Wire Line
	4400 1450 4400 2450
Text Label 4400 1550 1    70   ~ 0
+SEL
Wire Wire Line
	4600 3950 4700 3850
Wire Wire Line
	4700 3850 4700 2950
Text Label 4700 3550 1    70   ~ 0
-ACK
Wire Wire Line
	4900 3950 5000 3850
Wire Wire Line
	5000 3850 5000 2950
Text Label 5000 3550 1    70   ~ 0
-ATN
Wire Wire Line
	4700 3950 4800 3850
Wire Wire Line
	4800 3850 4800 2950
Text Label 4800 3550 1    70   ~ 0
-BSY
Wire Wire Line
	4200 3950 4300 3850
Wire Wire Line
	4300 3850 4300 2950
Text Label 4300 3550 1    70   ~ 0
-C/D
Wire Wire Line
	6400 3950 6500 3850
Wire Wire Line
	6500 3850 6500 2950
Text Label 6500 3550 1    70   ~ 0
-D0
Wire Wire Line
	6300 3950 6400 3850
Wire Wire Line
	6400 3850 6400 2950
Text Label 6400 3550 1    70   ~ 0
-D1
Wire Wire Line
	6200 3950 6300 3850
Wire Wire Line
	6300 3850 6300 2950
Text Label 6300 3550 1    70   ~ 0
-D2
Wire Wire Line
	6100 3950 6200 3850
Wire Wire Line
	6200 3850 6200 2950
Text Label 6200 3550 1    70   ~ 0
-D3
Wire Wire Line
	6000 3950 6100 3850
Wire Wire Line
	6100 3850 6100 2950
Text Label 6100 3550 1    70   ~ 0
-D4
Wire Wire Line
	5900 3950 6000 3850
Wire Wire Line
	6000 3850 6000 2950
Text Label 6000 3550 1    70   ~ 0
-D5
Wire Wire Line
	5800 3950 5900 3850
Wire Wire Line
	5900 3850 5900 2950
Text Label 5900 3550 1    70   ~ 0
-D6
Wire Wire Line
	5700 3950 5800 3850
Wire Wire Line
	5800 3850 5800 2950
Text Label 5800 3550 1    70   ~ 0
-D7
Wire Wire Line
	3900 3950 4000 3850
Wire Wire Line
	4000 3850 4000 2950
Text Label 4000 3550 1    70   ~ 0
-D8
Wire Wire Line
	3800 3950 3900 3850
Wire Wire Line
	3900 3850 3900 2950
Text Label 3900 3550 1    70   ~ 0
-D9
Wire Wire Line
	3700 3950 3800 3850
Wire Wire Line
	3800 3850 3800 2950
Text Label 3800 3550 1    70   ~ 0
-D10
Wire Wire Line
	3600 3950 3700 3850
Wire Wire Line
	3700 3850 3700 2950
Text Label 3700 3550 1    70   ~ 0
-D11
Wire Wire Line
	6900 3950 7000 3850
Wire Wire Line
	7000 3850 7000 2950
Text Label 7000 3550 1    70   ~ 0
-D12
Wire Wire Line
	6800 3950 6900 3850
Wire Wire Line
	6900 3850 6900 2950
Text Label 6900 3550 1    70   ~ 0
-D13
Wire Wire Line
	6700 3950 6800 3850
Wire Wire Line
	6800 3850 6800 2950
Text Label 6800 3550 1    70   ~ 0
-D14
Wire Wire Line
	6600 3950 6700 3850
Wire Wire Line
	6700 3850 6700 2950
Text Label 6700 3550 1    70   ~ 0
-D15
Wire Wire Line
	4000 3950 4100 3850
Wire Wire Line
	4100 3850 4100 2950
Text Label 4100 3550 1    70   ~ 0
-I/O
Wire Wire Line
	4400 3950 4500 3850
Wire Wire Line
	4500 3850 4500 2950
Text Label 4500 3550 1    70   ~ 0
-MSG
Wire Wire Line
	5600 3950 5700 3850
Wire Wire Line
	5700 3850 5700 2950
Text Label 5700 3550 1    70   ~ 0
-P0
Wire Wire Line
	6500 3950 6600 3850
Wire Wire Line
	6600 3850 6600 2950
Text Label 6600 3550 1    70   ~ 0
-P1
Wire Wire Line
	4100 3950 4200 3850
Wire Wire Line
	4200 3850 4200 2950
Text Label 4200 3550 1    70   ~ 0
-REQ
Wire Wire Line
	4600 3850 4500 3950
Wire Wire Line
	4600 3850 4600 2950
Text Label 4600 3550 1    70   ~ 0
-RST
Wire Wire Line
	4300 3950 4400 3850
Wire Wire Line
	4400 3850 4400 2950
Text Label 4400 3550 1    70   ~ 0
-SEL
Wire Wire Line
	5400 1350 5500 1450
Wire Wire Line
	5500 1450 5500 2450
Text Label 5500 1550 1    70   ~ 0
DIFFSENS
Wire Wire Line
	3500 3150 5600 3150
Wire Wire Line
	5500 3150 5500 2950
Wire Wire Line
	5600 3150 5600 2950
Wire Wire Line
	4900 3150 4900 2950
Wire Wire Line
	5100 2950 5100 3150
Connection ~ 5500 3150
Connection ~ 4900 3150
Connection ~ 5100 3150
Wire Wire Line
	3500 2250 5600 2250
Wire Wire Line
	5600 2250 5600 2450
Wire Wire Line
	5100 2250 5100 2450
Wire Wire Line
	4900 2250 4900 2450
Connection ~ 5100 2250
Connection ~ 4900 2250
Wire Wire Line
	3000 6550 3000 6450
Wire Wire Line
	3800 6550 3800 6450
Wire Wire Line
	4600 6550 4600 6450
Wire Wire Line
	4600 6150 4600 6050
Wire Wire Line
	3800 6150 3800 6050
Wire Wire Line
	3000 6150 3000 6050
Wire Wire Line
	5300 3950 5400 3850
Wire Wire Line
	5400 3850 5400 2950
Text Label 5400 3350 1    70   ~ 0
TERMPWR
Wire Wire Line
	5200 3950 5300 3850
Wire Wire Line
	5300 3850 5300 2950
Text Label 5300 3350 1    70   ~ 0
TERMPWR
Wire Wire Line
	5300 1350 5400 1450
Wire Wire Line
	5400 1450 5400 2450
Text Label 5400 1550 1    70   ~ 0
TERMPWR
Wire Wire Line
	5200 1350 5300 1450
Wire Wire Line
	5300 1450 5300 2450
Text Label 5300 1550 1    70   ~ 0
TERMPWR
Wire Wire Line
	4500 3950 4600 4050
Wire Wire Line
	4600 4050 4600 5650
Text Label 4600 4150 1    70   ~ 0
TERMPWR
Wire Bus Line
	2900 3750 2900 1550
Wire Bus Line
	2900 3750 3100 3950
Wire Bus Line
	3100 3950 6900 3950
Wire Bus Line
	6900 1350 1400 1350
Wire Bus Line
	2900 1550 3100 1350
Text Label 1500 1250 0    70   ~ 0
SCSI:-D[0..15],+D[0..15],-P[0..1],+P[0..1],-BSY,+BSY,-SEL,+SEL,-C/D,+C/D,-I/O,+I/O,-MSG,+MSG,-ATN,+ATN,-REQ,+REQ,-ACK,+ACK,-RST,+RST,DIFFSENS,TERMPWR
$EndSCHEMATC
