EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:at28hcXXX
LIBS:main-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "AMM812 - Instruction Register"
Date ""
Rev ""
Comp "Andreas T Jonsson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74LS173 IR1
U 1 1 5BB4CEBE
P 3300 3100
F 0 "IR1" H 3400 3200 50  0000 C CNN
F 1 "74LS173" H 3400 3050 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3300 3100 50  0001 C CNN
F 3 "" H 3300 3100 50  0000 C CNN
	1    3300 3100
	0    -1   -1   0   
$EndComp
$Comp
L 74LS173 MAR_A1
U 1 1 5BB4CF7A
P 5350 3100
F 0 "MAR_A1" H 5450 3200 50  0000 C CNN
F 1 "74LS173" H 5450 3050 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5350 3100 50  0001 C CNN
F 3 "" H 5350 3100 50  0000 C CNN
	1    5350 3100
	0    -1   -1   0   
$EndComp
$Comp
L 74LS173 MAR_B1
U 1 1 5BB4CFD8
P 7250 3100
F 0 "MAR_B1" H 7350 3200 50  0000 C CNN
F 1 "74LS173" H 7350 3050 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 7250 3100 50  0001 C CNN
F 3 "" H 7250 3100 50  0000 C CNN
	1    7250 3100
	0    -1   -1   0   
$EndComp
$Comp
L 74LS173 MAR_C1
U 1 1 5BB4D2BD
P 9150 3100
F 0 "MAR_C1" H 9250 3200 50  0000 C CNN
F 1 "74LS173" H 9250 3050 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 9150 3100 50  0001 C CNN
F 3 "" H 9150 3100 50  0000 C CNN
	1    9150 3100
	0    -1   -1   0   
$EndComp
Entry Wire Line
	2950 1850 3050 1950
Entry Wire Line
	2850 1850 2950 1950
Entry Wire Line
	2750 1850 2850 1950
Entry Wire Line
	2650 1850 2750 1950
Wire Wire Line
	2750 1950 2750 2400
Wire Wire Line
	2850 2400 2850 1950
Wire Wire Line
	2950 2400 2950 1950
Wire Wire Line
	3050 1950 3050 2400
Entry Wire Line
	5000 1850 5100 1950
Entry Wire Line
	4900 1850 5000 1950
Entry Wire Line
	4800 1850 4900 1950
Entry Wire Line
	4700 1850 4800 1950
Wire Wire Line
	4800 1950 4800 2400
Wire Wire Line
	4900 2400 4900 1950
Wire Wire Line
	5000 2400 5000 1950
Wire Wire Line
	5100 1950 5100 2400
Entry Wire Line
	6900 1850 7000 1950
Entry Wire Line
	6800 1850 6900 1950
Entry Wire Line
	6700 1850 6800 1950
Entry Wire Line
	6600 1850 6700 1950
Wire Wire Line
	6700 1950 6700 2400
Wire Wire Line
	6800 2400 6800 1950
Wire Wire Line
	6900 2400 6900 1950
Wire Wire Line
	7000 1950 7000 2400
Entry Wire Line
	8800 1850 8900 1950
Entry Wire Line
	8700 1850 8800 1950
Entry Wire Line
	8600 1850 8700 1950
Entry Wire Line
	8500 1850 8600 1950
Wire Wire Line
	8600 1950 8600 2400
Wire Wire Line
	8700 2400 8700 1950
Wire Wire Line
	8800 2400 8800 1950
Wire Wire Line
	8900 1950 8900 2400
Wire Bus Line
	4300 1850 8800 1850
Wire Bus Line
	4300 1850 4300 1400
Wire Bus Line
	2100 1850 2950 1850
Text GLabel 2100 1850 0    60   Input ~ 0
IR[0..3]
Text Label 2400 1850 0    60   ~ 0
IR[0..3]
Text Label 2750 2350 1    60   ~ 0
IR0
Text Label 2850 2350 1    60   ~ 0
IR1
Text Label 2950 2350 1    60   ~ 0
IR2
Text Label 3050 2350 1    60   ~ 0
IR3
Entry Wire Line
	6600 4700 6700 4600
Entry Wire Line
	6700 4700 6800 4600
Entry Wire Line
	6800 4700 6900 4600
Entry Wire Line
	6900 4700 7000 4600
Wire Wire Line
	6700 3800 6700 4600
Wire Wire Line
	6800 4600 6800 3800
Wire Wire Line
	6900 4600 6900 3800
Wire Wire Line
	7000 4600 7000 3800
Text Label 6700 4300 1    60   ~ 0
Data0
Text Label 6800 4300 1    60   ~ 0
Data1
Text Label 6900 4300 1    60   ~ 0
Data2
Text Label 7000 4300 1    60   ~ 0
Data3
Entry Wire Line
	8500 4700 8600 4600
Entry Wire Line
	8600 4700 8700 4600
Entry Wire Line
	8700 4700 8800 4600
Entry Wire Line
	8800 4700 8900 4600
Entry Wire Line
	4700 4700 4800 4600
Entry Wire Line
	4800 4700 4900 4600
Entry Wire Line
	4900 4700 5000 4600
Entry Wire Line
	5000 4700 5100 4600
Wire Wire Line
	4800 3800 4800 4600
Wire Wire Line
	4900 4600 4900 3800
Wire Wire Line
	5000 4600 5000 3800
Wire Wire Line
	5100 4600 5100 3800
Text Label 4800 4300 1    60   ~ 0
Data4
Text Label 4900 4300 1    60   ~ 0
Data5
Text Label 5000 4300 1    60   ~ 0
Data6
Text Label 5100 4300 1    60   ~ 0
Data7
Entry Wire Line
	2650 4700 2750 4600
Entry Wire Line
	2750 4700 2850 4600
Entry Wire Line
	2850 4700 2950 4600
Entry Wire Line
	2950 4700 3050 4600
Wire Wire Line
	2750 3800 2750 4600
Wire Wire Line
	2850 4600 2850 3800
Wire Wire Line
	2950 4600 2950 3800
Wire Wire Line
	3050 4600 3050 3800
Text Label 2750 4300 1    60   ~ 0
Data0
Text Label 2850 4300 1    60   ~ 0
Data1
Text Label 2950 4300 1    60   ~ 0
Data2
Text Label 3050 4300 1    60   ~ 0
Data3
Wire Bus Line
	1950 4700 8800 4700
Text Label 2100 4700 0    60   ~ 0
Data[0..7]
Text GLabel 1950 4700 0    60   Input ~ 0
Data[0..7]
Wire Wire Line
	3650 3800 3650 5850
Wire Wire Line
	3650 5850 9500 5850
Wire Wire Line
	5700 5850 5700 3800
Wire Wire Line
	7600 5850 7600 3800
Connection ~ 5700 5850
Wire Wire Line
	9500 3800 9500 6100
Connection ~ 7600 5850
Wire Wire Line
	7800 5750 7800 3800
Wire Wire Line
	3850 5750 9700 5750
Wire Wire Line
	9700 3800 9700 6100
Wire Wire Line
	5900 5750 5900 3800
Connection ~ 7800 5750
Wire Wire Line
	3850 5750 3850 3800
Connection ~ 5900 5750
Connection ~ 9500 5850
Text GLabel 9500 6100 3    60   Input ~ 0
Clock
Text GLabel 9700 6100 3    60   Input ~ 0
Reset
Connection ~ 9700 5750
Wire Wire Line
	9150 3800 9050 3800
Wire Wire Line
	9050 3800 9050 6150
Wire Wire Line
	5250 3950 9050 3950
Wire Wire Line
	7250 3950 7250 3800
Wire Wire Line
	7150 3950 7150 3800
Connection ~ 7250 3950
Wire Wire Line
	5350 3950 5350 3800
Connection ~ 7150 3950
Wire Wire Line
	5250 3950 5250 3800
Connection ~ 5350 3950
Connection ~ 9050 3800
Connection ~ 9050 3950
Text GLabel 8950 6150 0    60   Input ~ 0
Ctrl_MAR_Output
Wire Wire Line
	3300 3800 3200 3800
Wire Wire Line
	3200 3800 3200 4050
Connection ~ 3200 3800
$Comp
L VCC #PWR057
U 1 1 5BB4EDC3
P 3200 4050
F 0 "#PWR057" H 3200 3900 50  0001 C CNN
F 1 "VCC" H 3200 4200 50  0000 C CNN
F 2 "" H 3200 4050 50  0000 C CNN
F 3 "" H 3200 4050 50  0000 C CNN
	1    3200 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3850 5500 3800
Wire Wire Line
	3450 3850 5600 3850
Wire Wire Line
	3550 3850 3550 3800
Wire Wire Line
	3450 3800 3450 6050
Connection ~ 3550 3850
Connection ~ 5500 3850
Wire Wire Line
	5600 3850 5600 3800
Wire Wire Line
	7400 3800 7400 6200
Wire Wire Line
	7400 3850 9400 3850
Wire Wire Line
	7500 3850 7500 3800
Connection ~ 7400 3850
Wire Wire Line
	9300 3850 9300 3800
Connection ~ 7500 3850
Wire Wire Line
	9400 3850 9400 3800
Connection ~ 9300 3850
Connection ~ 3450 3850
Text GLabel 3350 6050 0    60   Input ~ 0
Ctrl_MAR_Low_Input
Text GLabel 7300 6200 0    60   Input ~ 0
Ctrl_MAR_High_Input
Wire Wire Line
	7400 6200 7300 6200
Wire Wire Line
	3450 6050 3350 6050
Text GLabel 4300 1400 1    60   Input ~ 0
Address[0..11]
Text Label 7500 1850 0    60   ~ 0
Address[0..11]
Text Label 4800 2400 1    60   ~ 0
Address0
Text Label 4900 2400 1    60   ~ 0
Address1
Text Label 5000 2400 1    60   ~ 0
Address2
Text Label 5100 2400 1    60   ~ 0
Address3
Text Label 6700 2400 1    60   ~ 0
Address4
Text Label 6800 2400 1    60   ~ 0
Address5
Text Label 6900 2400 1    60   ~ 0
Address6
Text Label 7000 2400 1    60   ~ 0
Address7
Text Label 8600 2400 1    60   ~ 0
Address8
Text Label 8700 2400 1    60   ~ 0
Address9
Text Label 8800 2400 1    60   ~ 0
Address10
Wire Wire Line
	8600 3800 8600 4600
Wire Wire Line
	8700 4600 8700 3800
Wire Wire Line
	8800 4600 8800 3800
Wire Wire Line
	8900 4600 8900 3800
Text Label 8600 4300 1    60   ~ 0
Data4
Text Label 8700 4300 1    60   ~ 0
Data5
Text Label 8800 4300 1    60   ~ 0
Data6
Text Label 8900 4300 1    60   ~ 0
Data7
Text Label 8900 2400 1    60   ~ 0
Address11
$Comp
L C_Small C18
U 1 1 5BB4FC60
P 9400 2400
F 0 "C18" H 9410 2470 50  0000 L CNN
F 1 "100nF" H 9410 2320 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 9400 2400 50  0001 C CNN
F 3 "" H 9400 2400 50  0000 C CNN
	1    9400 2400
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR058
U 1 1 5BB4FDA7
P 9300 2400
F 0 "#PWR058" H 9300 2250 50  0001 C CNN
F 1 "VCC" H 9300 2550 50  0000 C CNN
F 2 "" H 9300 2400 50  0000 C CNN
F 3 "" H 9300 2400 50  0000 C CNN
	1    9300 2400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR059
U 1 1 5BB4FDC5
P 9500 2400
F 0 "#PWR059" H 9500 2150 50  0001 C CNN
F 1 "GND" H 9500 2250 50  0000 C CNN
F 2 "" H 9500 2400 50  0000 C CNN
F 3 "" H 9500 2400 50  0000 C CNN
	1    9500 2400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C15
U 1 1 5BB4FF50
P 3800 2350
F 0 "C15" H 3810 2420 50  0000 L CNN
F 1 "100nF" H 3810 2270 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 3800 2350 50  0001 C CNN
F 3 "" H 3800 2350 50  0000 C CNN
	1    3800 2350
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR060
U 1 1 5BB4FF56
P 3700 2350
F 0 "#PWR060" H 3700 2200 50  0001 C CNN
F 1 "VCC" H 3700 2500 50  0000 C CNN
F 2 "" H 3700 2350 50  0000 C CNN
F 3 "" H 3700 2350 50  0000 C CNN
	1    3700 2350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR061
U 1 1 5BB4FF5C
P 3900 2350
F 0 "#PWR061" H 3900 2100 50  0001 C CNN
F 1 "GND" H 3900 2200 50  0000 C CNN
F 2 "" H 3900 2350 50  0000 C CNN
F 3 "" H 3900 2350 50  0000 C CNN
	1    3900 2350
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C16
U 1 1 5BB4FFEC
P 5650 2400
F 0 "C16" H 5660 2470 50  0000 L CNN
F 1 "100nF" H 5660 2320 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 5650 2400 50  0001 C CNN
F 3 "" H 5650 2400 50  0000 C CNN
	1    5650 2400
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR062
U 1 1 5BB4FFF2
P 5550 2400
F 0 "#PWR062" H 5550 2250 50  0001 C CNN
F 1 "VCC" H 5550 2550 50  0000 C CNN
F 2 "" H 5550 2400 50  0000 C CNN
F 3 "" H 5550 2400 50  0000 C CNN
	1    5550 2400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR063
U 1 1 5BB4FFF8
P 5750 2400
F 0 "#PWR063" H 5750 2150 50  0001 C CNN
F 1 "GND" H 5750 2250 50  0000 C CNN
F 2 "" H 5750 2400 50  0000 C CNN
F 3 "" H 5750 2400 50  0000 C CNN
	1    5750 2400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C17
U 1 1 5BB50080
P 7550 2350
F 0 "C17" H 7560 2420 50  0000 L CNN
F 1 "100nF" H 7560 2270 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 7550 2350 50  0001 C CNN
F 3 "" H 7550 2350 50  0000 C CNN
	1    7550 2350
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR064
U 1 1 5BB50086
P 7450 2350
F 0 "#PWR064" H 7450 2200 50  0001 C CNN
F 1 "VCC" H 7450 2500 50  0000 C CNN
F 2 "" H 7450 2350 50  0000 C CNN
F 3 "" H 7450 2350 50  0000 C CNN
	1    7450 2350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR065
U 1 1 5BB5008C
P 7650 2350
F 0 "#PWR065" H 7650 2100 50  0001 C CNN
F 1 "GND" H 7650 2200 50  0000 C CNN
F 2 "" H 7650 2350 50  0000 C CNN
F 3 "" H 7650 2350 50  0000 C CNN
	1    7650 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 6150 8950 6150
$EndSCHEMATC
