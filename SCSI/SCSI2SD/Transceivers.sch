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
Sheet 6 6
Title "SCSI_V2.0.sch"
Date "8 apr 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1400 5550 0    60   Input ~ 0
PHY
Text GLabel 10200 5050 2    60   Output ~ 0
SCSI
$Comp
L GND #PWR045
U 1 1 4F81F929
P 5400 3450
F 0 "#PWR045" H 5400 3450 30  0001 C CNN
F 1 "GND" H 5400 3380 30  0001 C CNN
	1    5400 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4F81F5B4
P 3900 7150
AR Path="/4F81E31C/4F81F5B3" Ref="#PWR?"  Part="1" 
AR Path="/4F81E31C/4F81F5B4" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 3900 7150 30  0001 C CNN
F 1 "GND" H 3900 7080 30  0001 C CNN
	1    3900 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 4F81F5B3
P 3200 7150
F 0 "#PWR047" H 3200 7150 30  0001 C CNN
F 1 "GND" H 3200 7080 30  0001 C CNN
	1    3200 7150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR048
U 1 1 4F81F5AF
P 3200 6550
F 0 "#PWR048" H 3200 6640 20  0001 C CNN
F 1 "+5V" H 3200 6640 30  0000 C CNN
	1    3200 6550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR049
U 1 1 4F81F5AC
P 3900 6550
F 0 "#PWR049" H 3900 6640 20  0001 C CNN
F 1 "+5V" H 3900 6640 30  0000 C CNN
	1    3900 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR050
U 1 1 4F81EEAD
P 6600 1850
F 0 "#PWR050" H 6600 1850 30  0001 C CNN
F 1 "GND" H 6600 1780 30  0001 C CNN
	1    6600 1850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR051
U 1 1 4F81EEAB
P 2400 1850
F 0 "#PWR051" H 2400 1850 30  0001 C CNN
F 1 "GND" H 2400 1780 30  0001 C CNN
	1    2400 1850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR052
U 1 1 4F81EE9C
P 6600 2850
F 0 "#PWR052" H 6600 2940 20  0001 C CNN
F 1 "+5V" H 6600 2940 30  0000 C CNN
	1    6600 2850
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR053
U 1 1 4F81EE60
P 8600 2850
F 0 "#PWR053" H 8600 2940 20  0001 C CNN
F 1 "+5V" H 8600 2940 30  0000 C CNN
	1    8600 2850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR054
U 1 1 4F81EE5D
P 5400 2650
F 0 "#PWR054" H 5400 2740 20  0001 C CNN
F 1 "+5V" H 5400 2740 30  0000 C CNN
	1    5400 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR055
U 1 1 4F81EE5B
P 4400 2850
F 0 "#PWR055" H 4400 2940 20  0001 C CNN
F 1 "+5V" H 4400 2940 30  0000 C CNN
	1    4400 2850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR056
U 1 1 4F81EE56
P 2400 2850
F 0 "#PWR056" H 2400 2940 20  0001 C CNN
F 1 "+5V" H 2400 2940 30  0000 C CNN
	1    2400 2850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR057
U 1 1 4F81EE24
P 8600 3150
F 0 "#PWR057" H 8600 3150 30  0001 C CNN
F 1 "GND" H 8600 3080 30  0001 C CNN
	1    8600 3150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR058
U 1 1 4F81EE22
P 6600 3150
F 0 "#PWR058" H 6600 3150 30  0001 C CNN
F 1 "GND" H 6600 3080 30  0001 C CNN
	1    6600 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR059
U 1 1 4F81EE1E
P 2400 3150
F 0 "#PWR059" H 2400 3150 30  0001 C CNN
F 1 "GND" H 2400 3080 30  0001 C CNN
	1    2400 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR060
U 1 1 4F81EE1B
P 4400 3150
F 0 "#PWR060" H 4400 3150 30  0001 C CNN
F 1 "GND" H 4400 3080 30  0001 C CNN
	1    4400 3150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR061
U 1 1 4F81EE16
P 9300 1250
F 0 "#PWR061" H 9300 1250 30  0001 C CNN
F 1 "GND" H 9300 1180 30  0001 C CNN
	1    9300 1250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR062
U 1 1 4F81EE11
P 5300 950
F 0 "#PWR062" H 5300 950 30  0001 C CNN
F 1 "GND" H 5300 880 30  0001 C CNN
	1    5300 950 
	0    1    1    0   
$EndComp
Text Notes 7900 6450 0    100  ~ 0
SCSI PCMCIA drive (PCB1)
Text Notes 7900 6750 0    100  ~ 0
PHY (Transceiver)
Text Notes 7900 7550 0    100  ~ 0
V2.0
$Comp
L C_C-EU C10
U 1 1 4F81EC0E
P 5600 950
F 0 "C10" V 5476 860 70  0000 L BNN
F 1 "22n" V 5805 821 70  0000 L BNN
	1    5600 950 
	0    1    1    0   
$EndComp
$Comp
L C_C-EU C11
U 1 1 4F81EC0F
P 3200 6850
F 0 "C11" H 3260 6864 70  0000 L BNN
F 1 "100n" H 3259 6665 70  0000 L BNN
	1    3200 6850
	1    0    0    -1  
$EndComp
$Comp
L C_C-EU C12
U 1 1 4F81EC10
P 3900 6850
F 0 "C12" H 3960 6864 70  0000 L BNN
F 1 "100n" H 3959 6665 70  0000 L BNN
	1    3900 6850
	1    0    0    -1  
$EndComp
$Comp
L IC_75LVDM977 IC10
U 1 1 4F81EC1C
P 3400 3150
F 0 "IC10" H 2900 1650 70  0000 L BNN
F 1 "75LVDM977" H 3300 1650 70  0000 L BNN
	1    3400 3150
	1    0    0    -1  
$EndComp
$Comp
L IC_75LVDM977 IC11
U 1 1 4F81EC0D
P 7600 3150
F 0 "IC11" H 7100 1650 70  0000 L BNN
F 1 "75LVDM977" H 7500 1650 70  0000 L BNN
	1    7600 3150
	1    0    0    -1  
$EndComp
$Comp
L JP_PINHD-1X3 JP10
U 1 1 4F81EC1D
P 5800 3050
F 0 "JP10" H 5551 2745 70  0000 L BNN
F 1 "INV/NON" H 5550 3299 70  0000 L BNN
	1    5800 3050
	1    0    0    1   
$EndComp
$Comp
L R_R-EU_ R10
U 1 1 4F81EC25
P 10000 2450
F 0 "R10" V 10009 2350 70  0000 L BNN
F 1 "8.2k" V 9900 2350 70  0000 L BNN
	1    10000 2450
	0    -1   -1   0   
$EndComp
$Comp
L R_R-EU_ R11
U 1 1 4F81EC26
P 8900 1250
F 0 "R11" H 8750 1309 70  0000 L BNN
F 1 "10k" H 8750 1120 70  0000 L BNN
	1    8900 1250
	1    0    0    -1  
$EndComp
$Comp
L FRAME_A4_LANDSCAPE U$
U 1 1 4F81EC27
P 600 7650
F 0 "U$" H 600 7650 60  0001 C CNN
	1    600  7650
	1    0    0    -1  
$EndComp
$Comp
L FRAME_A4_LANDSCAPE U$
U 1 1 4F81EC28
P 7000 7650
F 0 "U$" H 7000 7650 60  0001 C CNN
	1    7000 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3450 8400 3450
Wire Wire Line
	8400 3450 8400 2850
Wire Wire Line
	8200 2850 8600 2850
Connection ~ 8400 2850
Wire Wire Line
	7000 3450 6800 3450
Wire Wire Line
	6800 3450 6800 2850
Wire Wire Line
	7000 2850 6600 2850
Connection ~ 6800 2850
Wire Wire Line
	4400 2850 4000 2850
Wire Wire Line
	4200 2850 4200 3450
Wire Wire Line
	4200 3450 4000 3450
Connection ~ 4200 2850
Wire Wire Line
	2400 2850 2800 2850
Wire Wire Line
	2600 2850 2600 3450
Wire Wire Line
	2600 3450 2800 3450
Connection ~ 2600 2850
Wire Wire Line
	3200 6550 3200 6750
Wire Wire Line
	3900 6550 3900 6750
Wire Wire Line
	5400 2650 5400 2950
Wire Wire Line
	5400 2950 5700 2950
Wire Wire Line
	4800 4050 4700 3950
Wire Wire Line
	4700 3950 4000 3950
Text Label 4400 3950 0    70   ~ 0
+ACK
Wire Wire Line
	4800 4450 4700 4350
Wire Wire Line
	4700 4350 4000 4350
Text Label 4400 4350 0    70   ~ 0
+ATN
Wire Wire Line
	4800 4250 4700 4150
Wire Wire Line
	4700 4150 4000 4150
Text Label 4400 4150 0    70   ~ 0
+BSY
Wire Wire Line
	4800 2550 4700 2450
Wire Wire Line
	4700 2450 4000 2450
Text Label 4400 2450 0    70   ~ 0
+C/D
Wire Wire Line
	9000 4450 8900 4350
Wire Wire Line
	8900 4350 8200 4350
Text Label 8600 4350 0    70   ~ 0
+D0
Wire Wire Line
	9000 4250 8900 4150
Wire Wire Line
	8900 4150 8200 4150
Text Label 8600 4150 0    70   ~ 0
+D1
Wire Wire Line
	9000 4050 8900 3950
Wire Wire Line
	8900 3950 8200 3950
Text Label 8600 3950 0    70   ~ 0
+D2
Wire Wire Line
	9000 3850 8900 3750
Wire Wire Line
	8900 3750 8200 3750
Text Label 8600 3750 0    70   ~ 0
+D3
Wire Wire Line
	9000 3650 8900 3550
Wire Wire Line
	8900 3550 8200 3550
Text Label 8600 3550 0    70   ~ 0
+D4
Wire Wire Line
	9000 2750 8900 2650
Wire Wire Line
	8900 2650 8200 2650
Text Label 8600 2650 0    70   ~ 0
+D5
Wire Wire Line
	9000 2550 8900 2450
Wire Wire Line
	8900 2450 8200 2450
Text Label 8600 2450 0    70   ~ 0
+D6
Wire Wire Line
	9000 2350 8900 2250
Wire Wire Line
	8900 2250 8200 2250
Text Label 8600 2250 0    70   ~ 0
+D7
Wire Wire Line
	4800 2150 4700 2050
Wire Wire Line
	4700 2050 4000 2050
Text Label 4400 2050 0    70   ~ 0
+I/O
Wire Wire Line
	4800 3650 4700 3550
Wire Wire Line
	4700 3550 4000 3550
Text Label 4400 3550 0    70   ~ 0
+MSG
Wire Wire Line
	9000 2150 8900 2050
Wire Wire Line
	8900 2050 8200 2050
Text Label 8600 2050 0    70   ~ 0
+P0
Wire Wire Line
	4800 2350 4700 2250
Wire Wire Line
	4700 2250 4000 2250
Text Label 4400 2250 0    70   ~ 0
+REQ
Wire Wire Line
	4800 3850 4700 3750
Wire Wire Line
	4700 3750 4000 3750
Text Label 4400 3750 0    70   ~ 0
+RST
Wire Wire Line
	4800 2750 4700 2650
Wire Wire Line
	4700 2650 4000 2650
Text Label 4400 2650 0    70   ~ 0
+SEL
Wire Wire Line
	4800 4150 4700 4050
Wire Wire Line
	4700 4050 4000 4050
Text Label 4400 4050 0    70   ~ 0
-ACK
Wire Wire Line
	4800 4550 4700 4450
Wire Wire Line
	4700 4450 4000 4450
Text Label 4400 4450 0    70   ~ 0
-ATN
Wire Wire Line
	4800 4350 4700 4250
Wire Wire Line
	4700 4250 4000 4250
Text Label 4400 4250 0    70   ~ 0
-BSY
Wire Wire Line
	4800 2650 4700 2550
Wire Wire Line
	4700 2550 4000 2550
Text Label 4400 2550 0    70   ~ 0
-C/D
Wire Wire Line
	9000 4550 8900 4450
Wire Wire Line
	8900 4450 8200 4450
Text Label 8600 4450 0    70   ~ 0
-D0
Wire Wire Line
	9000 4350 8900 4250
Wire Wire Line
	8900 4250 8200 4250
Text Label 8600 4250 0    70   ~ 0
-D1
Wire Wire Line
	9000 4150 8900 4050
Wire Wire Line
	8900 4050 8200 4050
Text Label 8600 4050 0    70   ~ 0
-D2
Wire Wire Line
	9000 3950 8900 3850
Wire Wire Line
	8900 3850 8200 3850
Text Label 8600 3850 0    70   ~ 0
-D3
Wire Wire Line
	9000 3750 8900 3650
Wire Wire Line
	8900 3650 8200 3650
Text Label 8600 3650 0    70   ~ 0
-D4
Wire Wire Line
	9000 2850 8900 2750
Wire Wire Line
	8900 2750 8200 2750
Text Label 8600 2750 0    70   ~ 0
-D5
Wire Wire Line
	9000 2650 8900 2550
Wire Wire Line
	8900 2550 8200 2550
Text Label 8600 2550 0    70   ~ 0
-D6
Wire Wire Line
	9000 2450 8900 2350
Wire Wire Line
	8900 2350 8200 2350
Text Label 8600 2350 0    70   ~ 0
-D7
Wire Wire Line
	4800 2250 4700 2150
Wire Wire Line
	4700 2150 4000 2150
Text Label 4400 2150 0    70   ~ 0
-I/O
Wire Wire Line
	4800 3750 4700 3650
Wire Wire Line
	4700 3650 4000 3650
Text Label 4400 3650 0    70   ~ 0
-MSG
Wire Wire Line
	9000 2250 8900 2150
Wire Wire Line
	8900 2150 8200 2150
Text Label 8600 2150 0    70   ~ 0
-P0
Wire Wire Line
	4800 2450 4700 2350
Wire Wire Line
	4700 2350 4000 2350
Text Label 4400 2350 0    70   ~ 0
-REQ
Wire Wire Line
	4800 3950 4700 3850
Wire Wire Line
	4700 3850 4000 3850
Text Label 4400 3850 0    70   ~ 0
-RST
Wire Wire Line
	4800 2850 4700 2750
Wire Wire Line
	4700 2750 4000 2750
Text Label 4400 2750 0    70   ~ 0
-SEL
Wire Wire Line
	2000 2550 2100 2450
Wire Wire Line
	2100 2450 2800 2450
Text Label 2200 2450 0    70   ~ 0
/ACK
Wire Wire Line
	2000 2150 2100 2050
Wire Wire Line
	2100 2050 2800 2050
Text Label 2200 2050 0    70   ~ 0
/ATN
Wire Wire Line
	2000 2350 2100 2250
Wire Wire Line
	2100 2250 2800 2250
Text Label 2200 2250 0    70   ~ 0
/BSY
Wire Wire Line
	2000 4050 2100 3950
Wire Wire Line
	2100 3950 2800 3950
Text Label 2200 3950 0    70   ~ 0
/C/D
Wire Wire Line
	6200 2150 6300 2050
Wire Wire Line
	6300 2050 7000 2050
Text Label 6400 2050 0    70   ~ 0
/D0
Wire Wire Line
	6200 2350 6300 2250
Wire Wire Line
	6300 2250 7000 2250
Text Label 6400 2250 0    70   ~ 0
/D1
Wire Wire Line
	6200 2550 6300 2450
Wire Wire Line
	6300 2450 7000 2450
Text Label 6400 2450 0    70   ~ 0
/D2
Wire Wire Line
	6200 2750 6300 2650
Wire Wire Line
	6300 2650 7000 2650
Text Label 6400 2650 0    70   ~ 0
/D3
Wire Wire Line
	6200 3650 6300 3550
Wire Wire Line
	6300 3550 7000 3550
Text Label 6400 3550 0    70   ~ 0
/D4
Wire Wire Line
	6200 3850 6300 3750
Wire Wire Line
	6300 3750 7000 3750
Text Label 6400 3750 0    70   ~ 0
/D5
Wire Wire Line
	6200 4050 6300 3950
Wire Wire Line
	6300 3950 7000 3950
Text Label 6400 3950 0    70   ~ 0
/D6
Wire Wire Line
	6200 4250 6300 4150
Wire Wire Line
	6300 4150 7000 4150
Text Label 6400 4150 0    70   ~ 0
/D7
Wire Wire Line
	2000 4450 2100 4350
Wire Wire Line
	2100 4350 2800 4350
Text Label 2200 4350 0    70   ~ 0
/I/O
Wire Wire Line
	2000 3650 2100 3550
Wire Wire Line
	2100 3550 2800 3550
Text Label 2200 3550 0    70   ~ 0
/MSG
Wire Wire Line
	6200 4450 6300 4350
Wire Wire Line
	6300 4350 7000 4350
Text Label 6400 4350 0    70   ~ 0
/P
Wire Wire Line
	2000 4250 2100 4150
Wire Wire Line
	2100 4150 2800 4150
Text Label 2200 4150 0    70   ~ 0
/REQ
Wire Wire Line
	2000 2650 2100 2550
Wire Wire Line
	2100 2550 2800 2550
Text Label 2200 2550 0    70   ~ 0
/RE_ACK
Wire Wire Line
	2000 2250 2100 2150
Wire Wire Line
	2100 2150 2800 2150
Text Label 2200 2150 0    70   ~ 0
/RE_ATN
Wire Wire Line
	2000 2450 2100 2350
Wire Wire Line
	2100 2350 2800 2350
Text Label 2200 2350 0    70   ~ 0
/RE_BSY
Wire Wire Line
	2000 4150 2100 4050
Wire Wire Line
	2100 4050 2800 4050
Text Label 2200 4050 0    70   ~ 0
/RE_C/D
Wire Wire Line
	6200 2250 6300 2150
Wire Wire Line
	6300 2150 7000 2150
Text Label 6400 2150 0    70   ~ 0
/RE_D0
Wire Wire Line
	6200 2450 6300 2350
Wire Wire Line
	6300 2350 7000 2350
Text Label 6400 2350 0    70   ~ 0
/RE_D1
Wire Wire Line
	6200 2650 6300 2550
Wire Wire Line
	6300 2550 7000 2550
Text Label 6400 2550 0    70   ~ 0
/RE_D2
Wire Wire Line
	6200 2850 6300 2750
Wire Wire Line
	6300 2750 7000 2750
Text Label 6400 2750 0    70   ~ 0
/RE_D3
Wire Wire Line
	6200 3750 6300 3650
Wire Wire Line
	6300 3650 7000 3650
Text Label 6400 3650 0    70   ~ 0
/RE_D4
Wire Wire Line
	6200 3950 6300 3850
Wire Wire Line
	6300 3850 7000 3850
Text Label 6400 3850 0    70   ~ 0
/RE_D5
Wire Wire Line
	6200 4150 6300 4050
Wire Wire Line
	6300 4050 7000 4050
Text Label 6400 4050 0    70   ~ 0
/RE_D6
Wire Wire Line
	6200 4350 6300 4250
Wire Wire Line
	6300 4250 7000 4250
Text Label 6400 4250 0    70   ~ 0
/RE_D7
Wire Wire Line
	2000 4550 2100 4450
Wire Wire Line
	2100 4450 2800 4450
Text Label 2200 4450 0    70   ~ 0
/RE_I/O
Wire Wire Line
	2000 3750 2100 3650
Wire Wire Line
	2100 3650 2800 3650
Text Label 2200 3650 0    70   ~ 0
/RE_MSG
Wire Wire Line
	6200 4550 6300 4450
Wire Wire Line
	6300 4450 7000 4450
Text Label 6400 4450 0    70   ~ 0
/RE_P
Wire Wire Line
	2000 4350 2100 4250
Wire Wire Line
	2100 4250 2800 4250
Text Label 2200 4250 0    70   ~ 0
/RE_REQ
Wire Wire Line
	2000 2850 2100 2750
Wire Wire Line
	2100 2750 2800 2750
Text Label 2200 2750 0    70   ~ 0
/RE_RST
Wire Wire Line
	2000 3950 2100 3850
Wire Wire Line
	2100 3850 2800 3850
Text Label 2200 3850 0    70   ~ 0
/RE_SEL
Wire Wire Line
	2000 2750 2100 2650
Wire Wire Line
	2100 2650 2800 2650
Text Label 2200 2650 0    70   ~ 0
/RST
Wire Wire Line
	2000 3850 2100 3750
Wire Wire Line
	2100 3750 2800 3750
Text Label 2200 3750 0    70   ~ 0
/SEL
Wire Wire Line
	4000 1950 5900 1950
Wire Wire Line
	5900 1950 5900 950 
Wire Wire Line
	5700 950  10000 950 
Wire Wire Line
	10000 950  10000 2250
Wire Wire Line
	10000 1950 8200 1950
Connection ~ 5900 950 
Connection ~ 10000 1950
Wire Wire Line
	9000 3050 9100 2950
Wire Wire Line
	9100 2950 10000 2950
Wire Wire Line
	10000 2950 10000 2650
Text Label 9200 2950 0    70   ~ 0
DIFFSENS
Wire Wire Line
	4000 1750 4200 1750
Wire Wire Line
	4000 1850 4200 1850
Wire Wire Line
	4200 1850 4200 1250
Wire Wire Line
	2000 1350 2100 1250
Wire Wire Line
	2100 1250 8700 1250
Wire Wire Line
	8200 1750 8400 1750
Wire Wire Line
	8200 1850 8400 1850
Wire Wire Line
	8400 1850 8400 1250
Connection ~ 4200 1750
Connection ~ 4200 1750
Connection ~ 8400 1750
Connection ~ 4200 1250
Connection ~ 8400 1250
Text Label 2200 1250 0    70   ~ 0
EN_PHY
Wire Wire Line
	5300 950  5400 950 
Wire Wire Line
	8600 3150 8200 3150
Wire Wire Line
	8200 2950 8500 2950
Wire Wire Line
	8500 2950 8500 3350
Wire Wire Line
	8500 3050 8200 3050
Wire Wire Line
	8500 3350 8200 3350
Wire Wire Line
	8500 3250 8200 3250
Connection ~ 8500 3050
Connection ~ 8500 3150
Connection ~ 8500 3250
Wire Wire Line
	2400 3150 2800 3150
Wire Wire Line
	2500 2950 2500 3350
Wire Wire Line
	2500 2950 2800 2950
Wire Wire Line
	2500 3350 2800 3350
Wire Wire Line
	2500 3250 2800 3250
Wire Wire Line
	2500 3050 2800 3050
Connection ~ 2500 3150
Connection ~ 2500 3250
Connection ~ 2500 3050
Wire Wire Line
	4400 3150 4000 3150
Wire Wire Line
	4300 2950 4300 3350
Wire Wire Line
	4300 2950 4000 2950
Wire Wire Line
	4300 3350 4000 3350
Wire Wire Line
	4300 3250 4000 3250
Wire Wire Line
	4300 3050 4000 3050
Connection ~ 4300 3150
Connection ~ 4300 3250
Connection ~ 4300 3050
Wire Wire Line
	7000 2950 6700 2950
Wire Wire Line
	6700 2950 6700 3350
Wire Wire Line
	6700 3050 7000 3050
Wire Wire Line
	6600 3150 7000 3150
Wire Wire Line
	6700 3250 7000 3250
Wire Wire Line
	6700 3350 7000 3350
Connection ~ 6700 3050
Connection ~ 6700 3150
Connection ~ 6700 3250
Wire Wire Line
	2800 1950 2600 1950
Wire Wire Line
	2600 1950 2600 1850
Wire Wire Line
	2800 1850 2400 1850
Connection ~ 2600 1850
Wire Wire Line
	7000 1850 6600 1850
Wire Wire Line
	6800 1850 6800 1950
Wire Wire Line
	6800 1950 7000 1950
Connection ~ 6800 1850
Wire Wire Line
	3200 7150 3200 7050
Wire Wire Line
	3900 7150 3900 7050
Wire Wire Line
	9300 1250 9100 1250
Wire Wire Line
	5400 3450 5400 3150
Wire Wire Line
	5400 3150 5700 3150
Wire Wire Line
	2800 1750 2600 1750
Wire Wire Line
	2600 1750 2600 1450
Wire Wire Line
	7000 1750 6800 1750
Wire Wire Line
	6800 1750 6800 1450
Wire Wire Line
	6800 1450 2600 1450
Wire Wire Line
	5100 1450 5100 3050
Wire Wire Line
	5100 3050 5700 3050
Connection ~ 5100 1450
Wire Bus Line
	6200 2150 6200 5350
Wire Bus Line
	6200 5350 6000 5550
Wire Bus Line
	6000 5550 1400 5550
Wire Bus Line
	1800 5550 2000 5350
Wire Bus Line
	2000 5350 2000 1350
Text Label 1000 5850 0    70   ~ 0
PHY:/D[0..7],/RE_D[0..7],/P,/RE_P,/BSY,/RE_BSY,/SEL,/RE_SEL,/C/D,/RE_C/D,/I/O,/RE_I/O,/MSG,/RE_MSG,/ATN,/RE_ATN,/REQ,/RE_REQ,/ACK,/RE_ACK,/RST,/RE_RST,EN_PHY
Wire Bus Line
	4800 2150 4800 4850
Wire Bus Line
	4800 4850 5000 5050
Wire Bus Line
	5000 5050 10200 5050
Wire Bus Line
	9200 5050 9000 4850
Wire Bus Line
	9000 4850 9000 2150
Text Label 1000 6050 0    70   ~ 0
SCSI:-D[0..15],+D[0..15],-P[0..1],+P[0..1],-BSY,+BSY,-SEL,+SEL,-C/D,+C/D,-I/O,+I/O,-MSG,+MSG,-ATN,+ATN,-REQ,+REQ,-ACK,+ACK,-RST,+RST,DIFFSENS,TERMPWR
$EndSCHEMATC
