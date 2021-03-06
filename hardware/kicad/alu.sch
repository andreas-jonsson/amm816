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
Sheet 5 6
Title "AMM812 - ALU"
Date ""
Rev ""
Comp "Andreas T Jonsson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7050 2950 0    60   Input ~ 0
Clock
Text GLabel 7050 3150 0    60   Input ~ 0
Reset
Text GLabel 6550 2200 1    60   Input ~ 0
Ctrl_ALU_Enable_I
Entry Wire Line
	2200 5000 2300 5100
Entry Wire Line
	2300 5000 2400 5100
Entry Wire Line
	2400 5000 2500 5100
Entry Wire Line
	2600 5000 2700 5100
Entry Wire Line
	4800 6600 4900 6500
Entry Wire Line
	4600 6600 4700 6500
Entry Wire Line
	4500 6600 4600 6500
Entry Wire Line
	4400 6600 4500 6500
Entry Wire Line
	1200 3350 1300 3250
Entry Wire Line
	1200 3450 1300 3350
Entry Wire Line
	1200 3550 1300 3450
Entry Wire Line
	1200 3650 1300 3550
Entry Wire Line
	3350 4900 3450 5000
Entry Wire Line
	3350 5000 3450 5100
Entry Wire Line
	3350 5100 3450 5200
Entry Wire Line
	3350 5200 3450 5300
Entry Wire Line
	3450 4800 3550 4900
Entry Wire Line
	3450 4700 3550 4800
Entry Wire Line
	3450 4600 3550 4700
Entry Wire Line
	3450 4250 3550 4350
Entry Wire Line
	1000 3250 1100 3150
Entry Wire Line
	1000 3150 1100 3050
Entry Wire Line
	1000 3050 1100 2950
Entry Wire Line
	1000 2700 1100 2600
NoConn ~ 10050 2350
NoConn ~ 3250 3500
NoConn ~ 5550 5250
Entry Wire Line
	4300 1100 4400 1200
Entry Wire Line
	4150 1100 4250 1200
Entry Wire Line
	4000 1100 4100 1200
Entry Wire Line
	10100 800  10200 900 
Entry Wire Line
	10200 800  10300 900 
Entry Wire Line
	10300 800  10400 900 
Text Label 10400 1200 3    60   ~ 0
ALU_Flag2
Text Label 10300 1650 1    60   ~ 0
ALU_Flag1
Text Label 10200 1650 1    60   ~ 0
ALU_Flag0
Text Label 4100 1650 1    60   ~ 0
IR0
Text Label 4250 1650 1    60   ~ 0
IR1
Text Label 4400 1650 1    60   ~ 0
IR2
Text Label 4500 6400 1    60   ~ 0
ALU_Output4
Text Label 4600 6400 1    60   ~ 0
ALU_Output5
Text Label 4700 6400 1    60   ~ 0
ALU_Output6
Text Label 4900 5850 3    60   ~ 0
ALU_Output7
Text Label 1650 3550 2    60   ~ 0
ALU_A0
Text Label 1650 3450 2    60   ~ 0
ALU_A1
Text Label 1650 3350 2    60   ~ 0
ALU_A2
Text Label 1650 3250 2    60   ~ 0
ALU_A3
Text Label 3950 5300 2    60   ~ 0
ALU_A4
Text Label 3950 5200 2    60   ~ 0
ALU_A5
Text Label 3950 5100 2    60   ~ 0
ALU_A6
Text Label 3950 5000 2    60   ~ 0
ALU_A7
Text Label 1600 3150 2    60   ~ 0
Data0
Text Label 1600 3050 2    60   ~ 0
Data1
Text Label 1600 2950 2    60   ~ 0
Data2
Text Label 1600 2600 2    60   ~ 0
Data3
Text Label 3950 4900 2    60   ~ 0
Data4
Text Label 3950 4800 2    60   ~ 0
Data5
Text Label 3950 4700 2    60   ~ 0
Data6
Text Label 4100 4350 2    60   ~ 0
Data7
Text Label 4200 6600 2    60   ~ 0
ALU_Output[0..7]
Text Label 1900 4900 2    60   ~ 0
ALU_A[0..7]
Text Label 1000 4050 1    60   ~ 0
Data[0..7]
Text Label 3950 1100 2    60   ~ 0
IR[0..3]
Text Label 10000 800  2    60   ~ 0
ALU_Flag[0..2]
Text HLabel 3350 5600 3    60   Input ~ 0
ALU_A[0..7]
Text GLabel 1000 2250 1    60   Input ~ 0
Data[0..7]
Text HLabel 5350 6600 2    60   Output ~ 0
ALU_Output[0..7]
Text Label 2200 4850 1    60   ~ 0
ALU_Output0
Text Label 2300 4850 1    60   ~ 0
ALU_Output1
Text Label 2400 4850 1    60   ~ 0
ALU_Output2
Text Label 2600 4850 1    60   ~ 0
ALU_Output3
$Comp
L AT28HC256 ALU_Low1
U 1 1 5A0F2107
P 2500 3250
F 0 "ALU_Low1" H 2500 3150 60  0000 C CNN
F 1 "AT28HC256" H 2500 3350 60  0000 C CNN
F 2 "PLCC32_bugfix:PLCC-32_THT-Socket_bugfix" H 2500 3250 60  0001 C CNN
F 3 "" H 2500 3250 60  0001 C CNN
	1    2500 3250
	1    0    0    -1  
$EndComp
$Comp
L AT28HC256 ALU_High1
U 1 1 5A0F23C9
P 4800 5000
F 0 "ALU_High1" H 4800 4900 60  0000 C CNN
F 1 "AT28HC256" H 4800 5100 60  0000 C CNN
F 2 "PLCC32_bugfix:PLCC-32_THT-Socket_bugfix" H 4800 5000 60  0001 C CNN
F 3 "" H 4800 5000 60  0001 C CNN
	1    4800 5000
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A0F23DD
P 9350 3650
F 0 "C5" H 9375 3750 50  0000 L CNN
F 1 "100nF" H 9375 3550 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 9388 3500 50  0001 C CNN
F 3 "" H 9350 3650 50  0001 C CNN
	1    9350 3650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR44
U 1 1 5A0F3638
P 9200 3650
F 0 "#PWR44" H 9200 3400 50  0001 C CNN
F 1 "GND" H 9200 3500 50  0000 C CNN
F 2 "" H 9200 3650 50  0001 C CNN
F 3 "" H 9200 3650 50  0001 C CNN
	1    9200 3650
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR45
U 1 1 5A0F3664
P 9500 3650
F 0 "#PWR45" H 9500 3500 50  0001 C CNN
F 1 "VCC" H 9500 3800 50  0000 C CNN
F 2 "" H 9500 3650 50  0001 C CNN
F 3 "" H 9500 3650 50  0001 C CNN
	1    9500 3650
	0    1    1    0   
$EndComp
Text GLabel 8800 800  0    60   Output ~ 0
ALU_Flag[0..2]
Text GLabel 2600 1100 0    60   Input ~ 0
IR[0..3]
$Comp
L 74LS173 Flags1
U 1 1 5A0C65AB
P 9350 2600
F 0 "Flags1" H 9450 2700 50  0000 C CNN
F 1 "74LS173" H 9450 2550 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 9350 2600 50  0001 C CNN
F 3 "" H 9350 2600 50  0001 C CNN
	1    9350 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR43
U 1 1 5A32923F
P 7850 2500
F 0 "#PWR43" H 7850 2250 50  0001 C CNN
F 1 "GND" H 7850 2350 50  0000 C CNN
F 2 "" H 7850 2500 50  0001 C CNN
F 3 "" H 7850 2500 50  0001 C CNN
	1    7850 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR41
U 1 1 5BB52F8B
P 4700 4300
F 0 "#PWR41" H 4700 4050 50  0001 C CNN
F 1 "GND" H 4700 4150 50  0000 C CNN
F 2 "" H 4700 4300 50  0001 C CNN
F 3 "" H 4700 4300 50  0001 C CNN
	1    4700 4300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR39
U 1 1 5BB52FBC
P 2400 2500
F 0 "#PWR39" H 2400 2250 50  0001 C CNN
F 1 "GND" H 2400 2350 50  0000 C CNN
F 2 "" H 2400 2500 50  0001 C CNN
F 3 "" H 2400 2500 50  0001 C CNN
	1    2400 2500
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 5BB79C44
P 4650 7200
F 0 "C4" H 4675 7300 50  0000 L CNN
F 1 "100nF" H 4675 7100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 4688 7050 50  0001 C CNN
F 3 "" H 4650 7200 50  0001 C CNN
	1    4650 7200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR40
U 1 1 5BB79C4A
P 4500 7200
F 0 "#PWR40" H 4500 6950 50  0001 C CNN
F 1 "GND" H 4500 7050 50  0000 C CNN
F 2 "" H 4500 7200 50  0001 C CNN
F 3 "" H 4500 7200 50  0001 C CNN
	1    4500 7200
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR42
U 1 1 5BB79C50
P 4800 7200
F 0 "#PWR42" H 4800 7050 50  0001 C CNN
F 1 "VCC" H 4800 7350 50  0000 C CNN
F 2 "" H 4800 7200 50  0001 C CNN
F 3 "" H 4800 7200 50  0001 C CNN
	1    4800 7200
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5BB79D07
P 1850 6000
F 0 "C2" H 1875 6100 50  0000 L CNN
F 1 "100nF" H 1875 5900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 1888 5850 50  0001 C CNN
F 3 "" H 1850 6000 50  0001 C CNN
	1    1850 6000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR37
U 1 1 5BB79D0D
P 1700 6000
F 0 "#PWR37" H 1700 5750 50  0001 C CNN
F 1 "GND" H 1700 5850 50  0000 C CNN
F 2 "" H 1700 6000 50  0001 C CNN
F 3 "" H 1700 6000 50  0001 C CNN
	1    1700 6000
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR38
U 1 1 5BB79D13
P 2000 6000
F 0 "#PWR38" H 2000 5850 50  0001 C CNN
F 1 "VCC" H 2000 6150 50  0000 C CNN
F 2 "" H 2000 6000 50  0001 C CNN
F 3 "" H 2000 6000 50  0001 C CNN
	1    2000 6000
	0    1    1    0   
$EndComp
Wire Bus Line
	8800 800  10300 800 
Wire Bus Line
	2600 1100 4300 1100
Wire Wire Line
	8650 2750 8650 2850
Wire Wire Line
	10200 2050 10050 2050
Wire Wire Line
	10050 2150 10300 2150
Wire Wire Line
	10400 2250 10050 2250
Wire Wire Line
	7850 2350 8650 2350
Wire Wire Line
	7750 2250 8650 2250
Wire Wire Line
	7650 2150 8650 2150
Wire Wire Line
	7550 2050 8650 2050
Wire Wire Line
	7050 3150 8650 3150
Wire Wire Line
	7050 2950 8650 2950
Wire Wire Line
	7650 2150 7650 5900
Wire Wire Line
	7750 2250 7750 5350
Wire Wire Line
	2200 3900 2200 5000
Wire Wire Line
	2300 3900 2300 5000
Wire Wire Line
	2400 3900 2400 5000
Wire Wire Line
	2600 3900 2600 5000
Wire Wire Line
	6000 4050 6000 4650
Wire Wire Line
	6000 4650 5550 4650
Wire Wire Line
	5550 5050 6200 5050
Wire Wire Line
	5000 5650 5000 6000
Wire Wire Line
	5000 6000 7550 6000
Wire Wire Line
	5100 5650 5100 5900
Wire Wire Line
	5100 5900 7650 5900
Wire Wire Line
	7750 5350 5550 5350
Wire Bus Line
	2300 5100 3100 5100
Wire Wire Line
	4900 5650 4900 6500
Wire Wire Line
	4700 5650 4700 6500
Wire Wire Line
	4600 6500 4600 5650
Wire Wire Line
	4500 5650 4500 6500
Wire Wire Line
	3450 5000 4000 5000
Wire Wire Line
	3450 5100 4000 5100
Wire Wire Line
	3450 5200 4000 5200
Wire Wire Line
	3450 5300 4000 5300
Wire Bus Line
	3350 4900 3350 5600
Wire Wire Line
	3550 4700 4000 4700
Wire Wire Line
	3550 4800 4000 4800
Wire Wire Line
	3550 4900 4000 4900
Wire Bus Line
	3450 4250 3450 4800
Wire Wire Line
	1100 2950 1700 2950
Wire Wire Line
	1700 3050 1100 3050
Wire Wire Line
	1100 3150 1700 3150
Wire Wire Line
	3550 4350 4400 4350
Wire Wire Line
	2100 2600 1100 2600
Wire Wire Line
	6300 4850 5550 4850
Wire Wire Line
	6300 3100 6300 4850
Wire Wire Line
	3250 3100 6300 3100
Wire Wire Line
	2250 2100 2250 2600
Wire Wire Line
	6000 4050 2700 4050
Wire Wire Line
	2700 4050 2700 3900
Wire Wire Line
	5150 2400 5150 4350
Wire Wire Line
	4250 1200 4250 2100
Connection ~ 4250 2100
Wire Wire Line
	4100 1200 4100 3100
Connection ~ 4100 3100
Wire Wire Line
	2250 2100 4550 2100
Wire Wire Line
	4550 2100 4550 4350
Wire Wire Line
	3250 2900 6300 2900
Wire Wire Line
	6300 2900 6300 1100
Wire Wire Line
	6300 1100 10200 1100
Connection ~ 10200 1100
Wire Wire Line
	3800 3000 3250 3000
Wire Wire Line
	1700 3250 1300 3250
Wire Wire Line
	1300 3350 1700 3350
Wire Wire Line
	1700 3450 1300 3450
Wire Wire Line
	1300 3550 1700 3550
Wire Bus Line
	1200 4900 3350 4900
Wire Bus Line
	1000 4250 3450 4250
Wire Bus Line
	1000 2250 1000 4250
Wire Bus Line
	1200 3350 1200 4900
Wire Bus Line
	3100 6600 5350 6600
Wire Bus Line
	3100 5100 3100 6600
Wire Wire Line
	2850 2400 5150 2400
Wire Wire Line
	2850 2400 2850 2600
Wire Wire Line
	4400 1200 4400 2400
Connection ~ 4400 2400
Connection ~ 8650 2750
Wire Wire Line
	5550 4750 6100 4750
Wire Wire Line
	3800 3300 3250 3300
Wire Wire Line
	8100 2750 8650 2750
Connection ~ 8650 2350
Connection ~ 8650 2500
Wire Wire Line
	8650 2350 8650 2600
Wire Wire Line
	10200 900  10200 2050
Wire Wire Line
	10300 2150 10300 900 
Wire Wire Line
	10400 2250 10400 900 
Wire Wire Line
	7550 6000 7550 2050
Wire Wire Line
	7850 2500 7850 2350
Wire Wire Line
	2800 3900 2800 3950
Wire Wire Line
	2800 3950 6100 3950
Wire Wire Line
	6100 3950 6100 4750
Wire Wire Line
	3800 3000 3800 3400
Connection ~ 3800 3300
Wire Wire Line
	2400 2500 2400 2600
Wire Wire Line
	4700 4300 4700 4350
Wire Wire Line
	6200 5050 6200 3850
Wire Wire Line
	6200 3850 3250 3850
Wire Wire Line
	3250 3850 3250 3600
Connection ~ 6550 4950
Connection ~ 6550 2600
Wire Wire Line
	5000 3400 5000 4350
Wire Wire Line
	6550 2600 2700 2600
Connection ~ 3800 3200
Wire Wire Line
	8100 3400 3250 3400
Wire Wire Line
	3800 3200 3250 3200
Connection ~ 5000 3400
Connection ~ 3800 3400
Wire Wire Line
	6550 2200 6550 5150
Wire Wire Line
	5550 4950 6550 4950
Connection ~ 6550 3400
Wire Wire Line
	6550 5150 5550 5150
Wire Wire Line
	8100 2750 8100 3400
$EndSCHEMATC
