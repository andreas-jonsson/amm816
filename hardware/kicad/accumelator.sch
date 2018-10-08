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
Sheet 2 6
Title "AMM812 - Accumelator"
Date ""
Rev ""
Comp "Andreas T Jonsson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74LS245 ACC_Data_In_Buffer1
U 1 1 5A0C4104
P 3200 2150
F 0 "ACC_Data_In_Buffer1" V 3050 1900 50  0000 L BNN
F 1 "74LS245" H 3250 1575 50  0000 L TNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 3200 2150 50  0001 C CNN
F 3 "" H 3200 2150 50  0001 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
$Comp
L 74LS245 ACC_Output_Buffer1
U 1 1 5A0C4106
P 7200 2050
F 0 "ACC_Output_Buffer1" V 7050 1800 50  0000 L BNN
F 1 "74LS245" H 7250 1475 50  0000 L TNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7200 2050 50  0001 C CNN
F 3 "" H 7200 2050 50  0001 C CNN
	1    7200 2050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR5
U 1 1 5A0C4108
P 1950 2550
F 0 "#PWR5" H 1950 2400 50  0001 C CNN
F 1 "VCC" H 1950 2700 50  0000 C CNN
F 2 "" H 1950 2550 50  0001 C CNN
F 3 "" H 1950 2550 50  0001 C CNN
	1    1950 2550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR11
U 1 1 5A0C410B
P 7350 5950
F 0 "#PWR11" H 7350 5700 50  0001 C CNN
F 1 "GND" H 7350 5800 50  0000 C CNN
F 2 "" H 7350 5950 50  0001 C CNN
F 3 "" H 7350 5950 50  0001 C CNN
	1    7350 5950
	1    0    0    -1  
$EndComp
Text GLabel 5400 2350 1    60   Input ~ 0
Ctrl_ACC_Output_I
Text GLabel 1000 3550 3    60   Input ~ 0
Ctrl_ALU_Enable_I
Text GLabel 8100 5650 3    60   Input ~ 0
Clock
Text GLabel 7850 5650 3    60   Input ~ 0
Ctrl_ACC_Input_I
Text GLabel 8350 5650 3    60   Input ~ 0
Reset
Text HLabel 8800 5650 3    60   Output ~ 0
ALU_A[0..7]
Text GLabel 1400 2250 0    60   3State ~ 0
Data[0..7]
Text HLabel 2450 4150 0    60   Input ~ 0
ALU_Output[0..7]
Entry Wire Line
	1700 2250 1800 2350
Entry Wire Line
	1700 2150 1800 2250
Entry Wire Line
	1700 2050 1800 2150
Entry Wire Line
	1700 1950 1800 2050
Entry Wire Line
	1700 1850 1800 1950
Entry Wire Line
	1700 1750 1800 1850
Entry Wire Line
	1700 1650 1800 1750
Entry Wire Line
	1700 1550 1800 1650
Entry Wire Line
	5900 2150 6000 2250
Entry Wire Line
	5900 2050 6000 2150
Entry Wire Line
	5900 1950 6000 2050
Entry Wire Line
	5900 1850 6000 1950
Entry Wire Line
	5900 1750 6000 1850
Entry Wire Line
	5900 1650 6000 1750
Entry Wire Line
	5900 1550 6000 1650
Entry Wire Line
	5900 1450 6000 1550
Text Label 4100 950  2    60   ~ 0
Data[0..7]
Text Label 6350 1550 2    60   ~ 0
Data0
Text Label 6350 1650 2    60   ~ 0
Data1
Text Label 6350 1750 2    60   ~ 0
Data2
Text Label 6350 1850 2    60   ~ 0
Data3
Text Label 6350 1950 2    60   ~ 0
Data4
Text Label 6350 2050 2    60   ~ 0
Data5
Text Label 6350 2150 2    60   ~ 0
Data6
Text Label 6350 2250 2    60   ~ 0
Data7
Text Label 2350 1650 2    60   ~ 0
Data0
Text Label 2350 1750 2    60   ~ 0
Data1
Text Label 2350 1850 2    60   ~ 0
Data2
Text Label 2350 1950 2    60   ~ 0
Data3
Text Label 2350 2050 2    60   ~ 0
Data4
Text Label 2350 2150 2    60   ~ 0
Data5
Text Label 2350 2250 2    60   ~ 0
Data6
Text Label 2350 2350 2    60   ~ 0
Data7
Entry Wire Line
	3150 5150 3250 5250
Entry Wire Line
	3150 5050 3250 5150
Entry Wire Line
	3150 4950 3250 5050
Entry Wire Line
	3150 4850 3250 4950
Entry Wire Line
	3150 4750 3250 4850
Entry Wire Line
	3150 4650 3250 4750
Entry Wire Line
	3150 4550 3250 4650
Entry Wire Line
	3150 4450 3250 4550
Text Label 3150 4300 3    60   ~ 0
ALU_Output[0..7]
Text Label 3850 4550 2    60   ~ 0
ALU_Output0
Text Label 3850 4650 2    60   ~ 0
ALU_Output1
Text Label 3850 4750 2    60   ~ 0
ALU_Output2
Text Label 3850 4850 2    60   ~ 0
ALU_Output3
Text Label 3850 4950 2    60   ~ 0
ALU_Output4
Text Label 3850 5050 2    60   ~ 0
ALU_Output5
Text Label 3850 5150 2    60   ~ 0
ALU_Output6
Text Label 3850 5250 2    60   ~ 0
ALU_Output7
Entry Wire Line
	8700 4650 8800 4750
Entry Wire Line
	8700 4750 8800 4850
Entry Wire Line
	8700 4850 8800 4950
Entry Wire Line
	8700 4550 8800 4650
Entry Wire Line
	8700 2250 8800 2350
Entry Wire Line
	8700 2150 8800 2250
Entry Wire Line
	8700 2050 8800 2150
Entry Wire Line
	8700 1950 8800 2050
Entry Wire Line
	8700 1850 8800 1950
Entry Wire Line
	8700 1750 8800 1850
Entry Wire Line
	8700 1650 8800 1750
Entry Wire Line
	8700 1550 8800 1650
Text Label 8450 1550 2    60   ~ 0
ALU_A0
Text Label 8450 1650 2    60   ~ 0
ALU_A1
Text Label 8450 1750 2    60   ~ 0
ALU_A2
Text Label 8450 1850 2    60   ~ 0
ALU_A3
Text Label 8450 1950 2    60   ~ 0
ALU_A4
Text Label 8450 2050 2    60   ~ 0
ALU_A5
Text Label 8450 2150 2    60   ~ 0
ALU_A6
Text Label 8450 2250 2    60   ~ 0
ALU_A7
Text Label 8450 4550 2    60   ~ 0
ALU_A0
Text Label 8450 4650 2    60   ~ 0
ALU_A1
Text Label 8450 4750 2    60   ~ 0
ALU_A2
Text Label 8450 4850 2    60   ~ 0
ALU_A3
Text Label 8450 4950 2    60   ~ 0
ALU_A4
Text Label 8450 5050 2    60   ~ 0
ALU_A5
Text Label 8450 5150 2    60   ~ 0
ALU_A6
Text Label 8450 5250 2    60   ~ 0
ALU_A7
Entry Wire Line
	8700 4950 8800 5050
Entry Wire Line
	8700 5050 8800 5150
Entry Wire Line
	8700 5150 8800 5250
Entry Wire Line
	8700 5250 8800 5350
Text Label 8800 4400 1    60   ~ 0
ALU_A[0..7]
$Comp
L GND #PWR8
U 1 1 5A0ED5DB
P 5900 2450
F 0 "#PWR8" H 5900 2200 50  0001 C CNN
F 1 "GND" H 5900 2300 50  0000 C CNN
F 2 "" H 5900 2450 50  0001 C CNN
F 3 "" H 5900 2450 50  0001 C CNN
	1    5900 2450
	0    1    1    0   
$EndComp
$Comp
L C C9
U 1 1 5A0F6391
P 7250 3150
F 0 "C9" H 7275 3250 50  0000 L CNN
F 1 "100nF" H 7275 3050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 7288 3000 50  0001 C CNN
F 3 "" H 7250 3150 50  0001 C CNN
	1    7250 3150
	0    -1   -1   0   
$EndComp
$Comp
L C C7
U 1 1 5A0F63E6
P 3200 1350
F 0 "C7" H 3225 1450 50  0000 L CNN
F 1 "100nF" H 3225 1250 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 3238 1200 50  0001 C CNN
F 3 "" H 3200 1350 50  0001 C CNN
	1    3200 1350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR12
U 1 1 5A0F7876
P 7400 3150
F 0 "#PWR12" H 7400 2900 50  0001 C CNN
F 1 "GND" H 7400 3000 50  0000 C CNN
F 2 "" H 7400 3150 50  0001 C CNN
F 3 "" H 7400 3150 50  0001 C CNN
	1    7400 3150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR7
U 1 1 5A0F7A04
P 3350 1350
F 0 "#PWR7" H 3350 1100 50  0001 C CNN
F 1 "GND" H 3350 1200 50  0000 C CNN
F 2 "" H 3350 1350 50  0001 C CNN
F 3 "" H 3350 1350 50  0001 C CNN
	1    3350 1350
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR6
U 1 1 5A0F7A5D
P 3050 1350
F 0 "#PWR6" H 3050 1200 50  0001 C CNN
F 1 "VCC" H 3050 1500 50  0000 C CNN
F 2 "" H 3050 1350 50  0001 C CNN
F 3 "" H 3050 1350 50  0001 C CNN
	1    3050 1350
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR10
U 1 1 5A0F7ABA
P 7100 3150
F 0 "#PWR10" H 7100 3000 50  0001 C CNN
F 1 "VCC" H 7100 3300 50  0000 C CNN
F 2 "" H 7100 3150 50  0001 C CNN
F 3 "" H 7100 3150 50  0001 C CNN
	1    7100 3150
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X13 Register_Bus1
U 1 1 5BB752D3
P 7100 5150
F 0 "Register_Bus1" H 7100 5850 50  0000 C CNN
F 1 "CONN_02X13" V 7100 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x13_Pitch2.00mm" H 7100 4000 50  0001 C CNN
F 3 "" H 7100 4000 50  0000 C CNN
	1    7100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2250 8700 2250
Wire Wire Line
	7900 2150 8700 2150
Wire Wire Line
	7900 2050 8700 2050
Wire Wire Line
	7900 1950 8700 1950
Wire Wire Line
	6000 2250 6500 2250
Wire Wire Line
	3900 2350 4300 2350
Wire Wire Line
	4300 2350 4300 5250
Wire Wire Line
	3250 5250 6850 5250
Wire Wire Line
	3250 5150 6850 5150
Wire Wire Line
	4400 5150 4400 2250
Wire Wire Line
	4400 2250 3900 2250
Wire Wire Line
	3900 2150 4500 2150
Wire Wire Line
	4500 2150 4500 5050
Wire Wire Line
	3250 5050 6850 5050
Wire Wire Line
	3250 4950 6850 4950
Wire Wire Line
	4600 4950 4600 2050
Wire Wire Line
	4600 2050 3900 2050
Wire Wire Line
	3900 1950 4700 1950
Wire Wire Line
	4700 1950 4700 4850
Wire Wire Line
	3250 4850 6850 4850
Wire Wire Line
	3250 4750 6850 4750
Wire Wire Line
	4800 4750 4800 1850
Wire Wire Line
	4800 1850 3900 1850
Wire Wire Line
	3900 1750 4900 1750
Wire Wire Line
	4900 1750 4900 4650
Wire Wire Line
	3250 4650 6850 4650
Wire Wire Line
	3250 4550 6850 4550
Wire Wire Line
	5000 4550 5000 1650
Wire Wire Line
	5000 1650 3900 1650
Connection ~ 4300 5250
Connection ~ 4400 5150
Connection ~ 4500 5050
Connection ~ 4600 4950
Connection ~ 5000 4550
Connection ~ 4900 4650
Connection ~ 4800 4750
Connection ~ 4700 4850
Wire Wire Line
	5400 2550 6500 2550
Wire Wire Line
	1000 2650 2500 2650
Wire Wire Line
	6000 1650 6500 1650
Wire Wire Line
	6000 2150 6500 2150
Wire Wire Line
	6000 2050 6500 2050
Wire Wire Line
	6000 1950 6500 1950
Wire Wire Line
	6000 1850 6500 1850
Wire Wire Line
	6000 1750 6500 1750
Wire Wire Line
	6000 1550 6500 1550
Wire Wire Line
	5400 2350 5400 2550
Wire Bus Line
	1700 950  1700 2250
Wire Wire Line
	1800 2350 2500 2350
Wire Wire Line
	2500 2250 1800 2250
Wire Wire Line
	1800 2150 2500 2150
Wire Wire Line
	2500 2050 1800 2050
Wire Wire Line
	1800 1950 2500 1950
Wire Wire Line
	2500 1850 1800 1850
Wire Wire Line
	1800 1750 2500 1750
Wire Wire Line
	2500 1650 1800 1650
Wire Bus Line
	5900 950  5900 2150
Wire Wire Line
	7350 4950 8700 4950
Wire Wire Line
	7350 5050 8700 5050
Wire Wire Line
	7350 5150 8700 5150
Wire Wire Line
	7350 5250 8700 5250
Wire Wire Line
	8700 4850 7350 4850
Wire Wire Line
	7350 4750 8700 4750
Wire Wire Line
	8700 4650 7350 4650
Wire Wire Line
	7350 4550 8700 4550
Wire Wire Line
	8700 1850 7900 1850
Wire Wire Line
	7900 1750 8700 1750
Wire Wire Line
	8700 1650 7900 1650
Wire Wire Line
	7900 1550 8700 1550
Wire Bus Line
	8800 1650 8800 5650
Wire Bus Line
	8800 3550 8800 4850
Wire Bus Line
	5900 950  1700 950 
Wire Bus Line
	1700 2250 1400 2250
Wire Wire Line
	5900 2450 6500 2450
Wire Wire Line
	1950 2550 2500 2550
Wire Bus Line
	3150 4150 3150 5150
Wire Bus Line
	3150 4150 2450 4150
Text GLabel 5350 6750 3    60   Input ~ 0
Register[0..3]
Wire Wire Line
	8350 5650 8350 5350
Wire Wire Line
	8350 5350 7350 5350
Wire Wire Line
	8100 5650 8100 5450
Wire Wire Line
	8100 5450 7350 5450
Wire Wire Line
	7850 5650 7850 5550
Wire Wire Line
	7850 5550 7350 5550
$Comp
L VCC #PWR9
U 1 1 5BB75FE9
P 6850 5950
F 0 "#PWR9" H 6850 5800 50  0001 C CNN
F 1 "VCC" H 6850 6100 50  0000 C CNN
F 2 "" H 6850 5950 50  0000 C CNN
F 3 "" H 6850 5950 50  0000 C CNN
	1    6850 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 5650 7350 5950
Connection ~ 7350 5750
Wire Wire Line
	6850 5750 6850 5950
Entry Wire Line
	5350 5450 5450 5350
Entry Wire Line
	5350 5550 5450 5450
Entry Wire Line
	5350 5650 5450 5550
Entry Wire Line
	5350 5750 5450 5650
Wire Bus Line
	5350 5450 5350 6750
Wire Wire Line
	5450 5350 6850 5350
Wire Wire Line
	6850 5450 5450 5450
Wire Wire Line
	5450 5550 6850 5550
Wire Wire Line
	6850 5650 5450 5650
Text Label 5350 6600 1    60   ~ 0
Register[0..3]
Text Label 6100 5350 0    60   ~ 0
Register0
Text Label 6100 5450 0    60   ~ 0
Register1
Text Label 6100 5550 0    60   ~ 0
Register2
Text Label 6100 5650 0    60   ~ 0
Register3
$Comp
L 74LS04 U3
U 1 1 5BB81747
P 1000 3100
F 0 "U3" H 1195 3215 50  0000 C CNN
F 1 "74LS04" H 1190 2975 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 1000 3100 50  0001 C CNN
F 3 "" H 1000 3100 50  0000 C CNN
	1    1000 3100
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
