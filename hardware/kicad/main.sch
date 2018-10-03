EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:amm816-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
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
$Comp
L Conn_01x02_Male Reset_and_Clock1
U 1 1 5A0C5231
P 5050 2050
F 0 "Reset_and_Clock1" H 5050 2150 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5050 1850 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 5050 2050 50  0001 C CNN
F 3 "" H 5050 2050 50  0001 C CNN
	1    5050 2050
	-1   0    0    1   
$EndComp
Text GLabel 4450 1050 1    60   Output ~ 0
Clock
Text GLabel 4350 1800 1    60   Output ~ 0
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
P 4250 5800
F 0 "#PWR01" H 4250 5550 50  0001 C CNN
F 1 "GND" H 4250 5650 50  0000 C CNN
F 2 "" H 4250 5800 50  0001 C CNN
F 3 "" H 4250 5800 50  0001 C CNN
	1    4250 5800
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5A0F12B3
P 3000 5150
F 0 "#FLG02" H 3000 5225 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 5300 50  0000 C CNN
F 2 "" H 3000 5150 50  0001 C CNN
F 3 "" H 3000 5150 50  0001 C CNN
	1    3000 5150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5A0F2A42
P 3000 6250
F 0 "#FLG03" H 3000 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 6400 50  0000 C CNN
F 2 "" H 3000 6250 50  0001 C CNN
F 3 "" H 3000 6250 50  0001 C CNN
	1    3000 6250
	-1   0    0    1   
$EndComp
$Comp
L CP1 C1
U 1 1 5A0F554B
P 3250 5600
F 0 "C1" H 3275 5700 50  0000 L CNN
F 1 "100uF" H 3275 5500 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 3250 5600 50  0001 C CNN
F 3 "" H 3250 5600 50  0001 C CNN
	1    3250 5600
	1    0    0    -1  
$EndComp
$Sheet
S 6450 1600 1250 1300
U 5A130284
F0 "PC" 60
F1 "pc.sch" 60
$EndSheet
Text GLabel 4750 2500 2    60   Output ~ 0
Interrupt
Text GLabel 4750 2950 2    60   Input ~ 0
Ctrl_Mem_W
Text GLabel 4750 2800 2    60   Input ~ 0
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
Text Label 3450 1900 0    60   ~ 0
Address12
Text Label 3450 2000 0    60   ~ 0
Address13
Text Label 3450 2100 0    60   ~ 0
Address14
Text Label 3450 2200 0    60   ~ 0
Address15
Entry Wire Line
	2150 3500 2050 3600
Entry Wire Line
	2050 3700 2150 3600
Entry Wire Line
	2050 3800 2150 3700
Entry Wire Line
	2050 3900 2150 3800
Entry Wire Line
	3950 1900 4050 2000
Entry Wire Line
	3950 2000 4050 2100
Entry Wire Line
	3950 2100 4050 2200
Entry Wire Line
	3950 2200 4050 2300
Text GLabel 4050 1750 1    60   BiDi ~ 0
Address[0..15]
$Sheet
S 6400 3450 1400 1250
U 5A149D6A
F0 "Regs" 60
F1 "regs.sch" 60
$EndSheet
$Sheet
S 6400 5000 1400 900 
U 5A166929
F0 "Stack" 60
F1 "stack.sch" 60
$EndSheet
$Comp
L VCC #PWR04
U 1 1 5A16B699
P 4300 5400
F 0 "#PWR04" H 4300 5250 50  0001 C CNN
F 1 "VCC" H 4300 5550 50  0000 C CNN
F 2 "" H 4300 5400 50  0001 C CNN
F 3 "" H 4300 5400 50  0001 C CNN
	1    4300 5400
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
L GND #PWR05
U 1 1 5A1A56FA
P 3550 3800
F 0 "#PWR05" H 3550 3550 50  0001 C CNN
F 1 "GND" H 3550 3650 50  0000 C CNN
F 2 "" H 3550 3800 50  0001 C CNN
F 3 "" H 3550 3800 50  0001 C CNN
	1    3550 3800
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR06
U 1 1 5A1A5732
P 3550 3400
F 0 "#PWR06" H 3550 3250 50  0001 C CNN
F 1 "VCC" H 3550 3550 50  0000 C CNN
F 2 "" H 3550 3400 50  0001 C CNN
F 3 "" H 3550 3400 50  0001 C CNN
	1    3550 3400
	0    1    1    0   
$EndComp
Text GLabel 4750 2650 2    60   Input ~ 0
Acknowledge
Text GLabel 6050 1050 2    60   Input ~ 0
Halt
$Comp
L Conn_02x20_Top_Bottom System_Bus1
U 1 1 5A1E796C
P 3000 2800
F 0 "System_Bus1" H 3050 3800 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" H 3050 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 3000 2800 50  0001 C CNN
F 3 "" H 3000 2800 50  0001 C CNN
	1    3000 2800
	1    0    0    -1  
$EndComp
Entry Wire Line
	4750 3100 4850 3200
Entry Wire Line
	4750 3250 4850 3350
Text GLabel 4850 4200 3    60   Input ~ 0
IR[0..7]
Text Label 4850 4000 1    60   ~ 0
IR[0..7]
Text Label 4300 3100 0    60   ~ 0
IR6
Text Label 4300 3250 0    60   ~ 0
IR7
$Comp
L 74LS08 U9
U 3 1 5A1EA494
P 5300 1150
F 0 "U9" H 5300 1200 50  0000 C CNN
F 1 "74LS08" H 5300 1100 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 5300 1150 50  0001 C CNN
F 3 "" H 5300 1150 50  0001 C CNN
	3    5300 1150
	-1   0    0    1   
$EndComp
$Comp
L CP1 C39
U 1 1 5A1EBA60
P 3600 5600
F 0 "C39" H 3625 5700 50  0000 L CNN
F 1 "100uF" H 3625 5500 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 3600 5600 50  0001 C CNN
F 3 "" H 3600 5600 50  0001 C CNN
	1    3600 5600
	1    0    0    -1  
$EndComp
$Comp
L CP1 C40
U 1 1 5A1EBADA
P 3950 5600
F 0 "C40" H 3975 5700 50  0000 L CNN
F 1 "100uF" H 3975 5500 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 3950 5600 50  0001 C CNN
F 3 "" H 3950 5600 50  0001 C CNN
	1    3950 5600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02_Male Power1
U 1 1 5A0E4672
P 2500 5550
F 0 "Power1" H 2500 5650 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2500 5350 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 2500 5550 50  0001 C CNN
F 3 "" H 2500 5550 50  0001 C CNN
	1    2500 5550
	1    0    0    -1  
$EndComp
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
	3000 5550 2700 5550
Wire Wire Line
	3000 5150 3000 5550
Wire Wire Line
	3000 5400 4300 5400
Wire Wire Line
	2700 5650 3000 5650
Wire Wire Line
	3000 5650 3000 6250
Wire Wire Line
	3000 5800 4250 5800
Connection ~ 3000 5400
Connection ~ 3000 5800
Wire Wire Line
	3250 5750 3250 5800
Connection ~ 3250 5800
Connection ~ 3250 5400
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
Wire Wire Line
	3300 1900 3950 1900
Wire Wire Line
	3300 2000 3950 2000
Wire Wire Line
	3300 2100 3950 2100
Wire Wire Line
	3300 2200 3950 2200
Wire Wire Line
	3300 2300 3950 2300
Wire Wire Line
	4450 2400 3300 2400
Wire Wire Line
	3300 2500 4750 2500
Wire Bus Line
	9500 1150 10550 1150
Wire Wire Line
	3250 5400 3250 5450
Wire Bus Line
	2050 2800 2050 4200
Wire Bus Line
	2050 4200 4050 4200
Wire Bus Line
	4050 4200 4050 1750
Wire Wire Line
	3300 2600 3950 2600
Wire Wire Line
	3950 2600 3950 2650
Wire Wire Line
	3950 2650 4750 2650
Connection ~ 3300 3300
Wire Wire Line
	2150 3600 2800 3600
Wire Wire Line
	2800 3700 2150 3700
Wire Wire Line
	2150 3800 2800 3800
Wire Wire Line
	3950 2300 3950 2350
Wire Wire Line
	3950 2350 4350 2350
Wire Wire Line
	4350 2350 4350 1800
Wire Wire Line
	4450 1050 4450 2400
Wire Wire Line
	3300 2700 3900 2700
Wire Wire Line
	3900 2700 3900 2800
Wire Wire Line
	3900 2800 4750 2800
Wire Wire Line
	3850 2950 4750 2950
Connection ~ 3300 3600
Connection ~ 3300 3700
Wire Wire Line
	3300 3800 3550 3800
Connection ~ 3300 3800
Connection ~ 3300 3200
Wire Wire Line
	3300 2800 3850 2800
Wire Wire Line
	3850 2800 3850 2950
Wire Wire Line
	3300 3500 3300 3800
Wire Wire Line
	3300 3400 3550 3400
Wire Wire Line
	3300 3100 3300 3400
Wire Wire Line
	3300 2900 3800 2900
Wire Wire Line
	3800 2900 3800 3100
Wire Wire Line
	3800 3100 4750 3100
Wire Wire Line
	3300 3000 3750 3000
Wire Wire Line
	3750 3000 3750 3250
Wire Wire Line
	3750 3250 4750 3250
Wire Bus Line
	4850 3200 4850 4200
Wire Wire Line
	3950 5750 3950 5800
Connection ~ 3950 5800
Wire Wire Line
	3600 5750 3600 5800
Connection ~ 3600 5800
Wire Wire Line
	3600 5450 3600 5400
Connection ~ 3600 5400
Wire Wire Line
	3950 5450 3950 5400
Connection ~ 3950 5400
Wire Wire Line
	4700 1150 4450 1150
Wire Wire Line
	4550 1600 5900 1600
Wire Wire Line
	5900 1600 5900 1250
Connection ~ 4450 1150
Wire Wire Line
	5900 1050 6050 1050
Wire Wire Line
	4850 2050 4350 2050
Connection ~ 4350 2050
Wire Wire Line
	4850 1950 4550 1950
Wire Wire Line
	4550 1950 4550 1600
$EndSCHEMATC
