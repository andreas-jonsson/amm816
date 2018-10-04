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
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8300 950  1200 1100
U 5A0C3FBD
F0 "Accumelator" 60
F1 "accumelator.sch" 60
F2 "ALU_Output[0..7]" I R 9500 1150 60 
F3 "ALU_A[0..7]" O L 8300 1700 60 
$EndSheet
Entry Wire Line
	1700 2000 1800 1900
Entry Wire Line
	1700 2100 1800 2000
Entry Wire Line
	1700 2200 1800 2100
Entry Wire Line
	1700 2300 1800 2200
Entry Wire Line
	1700 2400 1800 2300
Entry Wire Line
	1700 2500 1800 2400
Entry Wire Line
	1700 2600 1800 2500
Entry Wire Line
	1700 2700 1800 2600
Text GLabel 4750 2100 2    60   Output ~ 0
Clock
Text GLabel 4750 1900 2    60   Output ~ 0
Reset
Text Label 2500 1900 2    60   ~ 0
Data0
Text Label 2500 2000 2    60   ~ 0
Data1
Text Label 2500 2100 2    60   ~ 0
Data2
Text Label 2500 2200 2    60   ~ 0
Data3
Text Label 2500 2300 2    60   ~ 0
Data4
Text Label 2500 2400 2    60   ~ 0
Data5
Text Label 2500 2500 2    60   ~ 0
Data6
Text Label 2500 2600 2    60   ~ 0
Data7
Text Label 1700 2850 3    60   ~ 0
Data[0..7]
Text GLabel 1700 3450 3    60   BiDi ~ 0
Data[0..7]
Text Label 8050 1900 3    60   ~ 0
ALU_A[0..7]
Text Label 10550 1750 3    60   ~ 0
ALU_Output[0..7]
$Comp
L GND #PWR01
U 1 1 5A0E47E9
P 4250 5450
F 0 "#PWR01" H 4250 5200 50  0001 C CNN
F 1 "GND" H 4250 5300 50  0000 C CNN
F 2 "" H 4250 5450 50  0001 C CNN
F 3 "" H 4250 5450 50  0001 C CNN
	1    4250 5450
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C1
U 1 1 5A0F554B
P 3950 5250
F 0 "C1" H 3975 5350 50  0000 L CNN
F 1 "100uF" H 3975 5150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 3950 5250 50  0001 C CNN
F 3 "" H 3950 5250 50  0001 C CNN
	1    3950 5250
	1    0    0    -1  
$EndComp
$Sheet
S 6450 1600 1250 1300
U 5A130284
F0 "PC" 60
F1 "pc.sch" 60
$EndSheet
Text GLabel 4750 2700 2    60   Output ~ 0
Ctrl_Mem_W
Text GLabel 4750 2500 2    60   Output ~ 0
Ctrl_Mem_R
Entry Wire Line
	2050 2800 2150 2700
Entry Wire Line
	2050 2900 2150 2800
Entry Wire Line
	2050 3000 2150 2900
Entry Wire Line
	2050 3100 2150 3000
Entry Wire Line
	2050 3200 2150 3100
Entry Wire Line
	2050 3300 2150 3200
Entry Wire Line
	2050 3400 2150 3300
Entry Wire Line
	2050 3500 2150 3400
Text Label 2250 2700 0    60   ~ 0
Address0
Text Label 2250 2800 0    60   ~ 0
Address1
Text Label 2250 2900 0    60   ~ 0
Address2
Text Label 2250 3000 0    60   ~ 0
Address3
Text Label 2250 3100 0    60   ~ 0
Address4
Text Label 2250 3200 0    60   ~ 0
Address5
Text Label 2250 3300 0    60   ~ 0
Address6
Text Label 2250 3400 0    60   ~ 0
Address7
Text Label 2650 3500 2    60   ~ 0
Address8
Text Label 2250 3600 0    60   ~ 0
Address9
Text Label 2250 3700 0    60   ~ 0
Address10
Text Label 2250 3800 0    60   ~ 0
Address11
Entry Wire Line
	2150 3500 2050 3600
Entry Wire Line
	2050 3700 2150 3600
Entry Wire Line
	2050 3800 2150 3700
Entry Wire Line
	2050 3900 2150 3800
Text GLabel 2050 4850 3    60   BiDi ~ 0
Address[0..11]
$Comp
L VCC #PWR02
U 1 1 5A16B699
P 4250 5050
F 0 "#PWR02" H 4250 4900 50  0001 C CNN
F 1 "VCC" H 4250 5200 50  0000 C CNN
F 2 "" H 4250 5050 50  0001 C CNN
F 3 "" H 4250 5050 50  0001 C CNN
	1    4250 5050
	0    1    1    0   
$EndComp
$Sheet
S 8600 4000 2200 2250
U 5A182CEC
F0 "Matrix" 60
F1 "matrix.sch" 60
$EndSheet
$Sheet
S 8300 2400 2050 1300
U 5A0C5E47
F0 "ALU" 60
F1 "alu.sch" 60
F2 "ALU_Output[0..7]" O R 10350 2800 60 
F3 "ALU_A[0..7]" I L 8300 2550 60 
$EndSheet
$Comp
L GND #PWR03
U 1 1 5A1A56FA
P 3500 3600
F 0 "#PWR03" H 3500 3350 50  0001 C CNN
F 1 "GND" H 3500 3450 50  0000 C CNN
F 2 "" H 3500 3600 50  0001 C CNN
F 3 "" H 3500 3600 50  0001 C CNN
	1    3500 3600
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR04
U 1 1 5A1A5732
P 3500 3800
F 0 "#PWR04" H 3500 3650 50  0001 C CNN
F 1 "VCC" H 3500 3950 50  0000 C CNN
F 2 "" H 3500 3800 50  0001 C CNN
F 3 "" H 3500 3800 50  0001 C CNN
	1    3500 3800
	0    1    1    0   
$EndComp
$Sheet
S 6450 3900 1450 1050
U 5BB5DF07
F0 "IR" 60
F1 "ir.sch" 60
$EndSheet
$Comp
L CONN_01X02 Power1
U 1 1 5BB51CB1
P 3200 5250
F 0 "Power1" H 3200 5400 50  0000 C CNN
F 1 "CONN_01X02" V 3300 5250 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 3200 5250 50  0001 C CNN
F 3 "" H 3200 5250 50  0000 C CNN
	1    3200 5250
	-1   0    0    1   
$EndComp
Text GLabel 4750 3000 2    60   Input ~ 0
DMA
Wire Wire Line
	1800 1900 2800 1900
Wire Wire Line
	1800 2000 2800 2000
Wire Wire Line
	1800 2100 2800 2100
Wire Wire Line
	1800 2200 2800 2200
Wire Wire Line
	1800 2300 2800 2300
Wire Wire Line
	1800 2400 2800 2400
Wire Wire Line
	1800 2500 2800 2500
Wire Wire Line
	1800 2600 2800 2600
Wire Bus Line
	10550 1150 10550 2800
Wire Bus Line
	10550 2800 10350 2800
Wire Bus Line
	8300 1700 8050 1700
Wire Bus Line
	8050 1700 8050 2550
Wire Bus Line
	8050 2550 8300 2550
Wire Bus Line
	1700 2000 1700 3450
Wire Wire Line
	3700 5200 3400 5200
Wire Wire Line
	3700 4800 3700 5200
Wire Wire Line
	3700 5050 4250 5050
Wire Wire Line
	3400 5300 3700 5300
Wire Wire Line
	3700 5300 3700 5900
Wire Wire Line
	3700 5450 4250 5450
Connection ~ 3700 5050
Connection ~ 3700 5450
Wire Wire Line
	3950 5400 3950 5450
Connection ~ 3950 5450
Connection ~ 3950 5050
Wire Wire Line
	2800 2700 2150 2700
Wire Wire Line
	2150 2800 2800 2800
Wire Wire Line
	2800 2900 2150 2900
Wire Wire Line
	2150 3000 2800 3000
Wire Wire Line
	2800 3100 2150 3100
Wire Wire Line
	2150 3200 2800 3200
Wire Wire Line
	2800 3300 2150 3300
Wire Wire Line
	2150 3400 2800 3400
Wire Wire Line
	2800 3500 2150 3500
Wire Bus Line
	9500 1150 10550 1150
Wire Wire Line
	3950 5050 3950 5100
Wire Bus Line
	2050 2800 2050 4850
Wire Wire Line
	2150 3600 2800 3600
Wire Wire Line
	2800 3700 2150 3700
Wire Wire Line
	2150 3800 2800 3800
Wire Wire Line
	3800 2700 4750 2700
Wire Wire Line
	3800 2200 3800 2700
Wire Wire Line
	3500 3800 3300 3800
Connection ~ 3300 2900
Connection ~ 3300 3100
Connection ~ 3300 3000
Connection ~ 3300 3200
Connection ~ 3300 3300
Connection ~ 3300 3400
Connection ~ 3300 3500
Connection ~ 3300 3600
Wire Wire Line
	3300 3600 3500 3600
Wire Wire Line
	3700 3000 4750 3000
Wire Wire Line
	3700 2300 3700 3000
Wire Wire Line
	3300 2400 3300 3700
Text Label 2050 4700 1    60   ~ 0
Address[0..11]
$Comp
L CONN_02X20 P1
U 1 1 5BB52184
P 3050 2850
F 0 "P1" H 3050 3900 50  0000 C CNN
F 1 "CONN_02X20" V 3050 2850 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x20" H 3050 1900 50  0001 C CNN
F 3 "" H 3050 1900 50  0000 C CNN
	1    3050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1900 4750 1900
Wire Wire Line
	3300 2000 4000 2000
Wire Wire Line
	4000 2000 4000 2100
Wire Wire Line
	4000 2100 4750 2100
Wire Wire Line
	3300 2100 3900 2100
Wire Wire Line
	3900 2100 3900 2500
Wire Wire Line
	3900 2500 4750 2500
Wire Wire Line
	3800 2200 3300 2200
Wire Wire Line
	3700 2300 3300 2300
Connection ~ 3300 2800
Connection ~ 3300 2700
Connection ~ 3300 2600
Connection ~ 3300 2500
$Comp
L PWR_FLAG #FLG05
U 1 1 5A0F12B3
P 3700 4800
F 0 "#FLG05" H 3700 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 3700 4950 50  0000 C CNN
F 2 "" H 3700 4800 50  0001 C CNN
F 3 "" H 3700 4800 50  0001 C CNN
	1    3700 4800
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 5A0F2A42
P 3700 5900
F 0 "#FLG06" H 3700 5975 50  0001 C CNN
F 1 "PWR_FLAG" H 3700 6050 50  0000 C CNN
F 2 "" H 3700 5900 50  0001 C CNN
F 3 "" H 3700 5900 50  0001 C CNN
	1    3700 5900
	-1   0    0    1   
$EndComp
$EndSCHEMATC
