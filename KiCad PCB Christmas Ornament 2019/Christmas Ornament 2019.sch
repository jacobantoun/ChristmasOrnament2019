EESchema Schematic File Version 4
LIBS:Christmas Ornament 2019-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny13A-PU U1
U 1 1 5DC76D47
P 8250 3350
F 0 "U1" H 7721 3396 50  0000 R CNN
F 1 "ATtiny13A-PU" H 7721 3305 50  0000 R CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 8250 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8126.pdf" H 8250 3350 50  0001 C CNN
	1    8250 3350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5DC7AAFF
P 8250 2650
F 0 "#PWR01" H 8250 2500 50  0001 C CNN
F 1 "VCC" H 8267 2823 50  0000 C CNN
F 2 "" H 8250 2650 50  0001 C CNN
F 3 "" H 8250 2650 50  0001 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DC7C627
P 8250 4100
F 0 "#PWR02" H 8250 3850 50  0001 C CNN
F 1 "GND" H 8255 3927 50  0000 C CNN
F 2 "" H 8250 4100 50  0001 C CNN
F 3 "" H 8250 4100 50  0001 C CNN
	1    8250 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DC7E756
P 4975 3625
F 0 "#PWR07" H 4975 3375 50  0001 C CNN
F 1 "GND" H 4980 3452 50  0000 C CNN
F 2 "" H 4975 3625 50  0001 C CNN
F 3 "" H 4975 3625 50  0001 C CNN
	1    4975 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4225 5600 4050
$Comp
L power:GND #PWR010
U 1 1 5DC7D530
P 5600 4225
F 0 "#PWR010" H 5600 3975 50  0001 C CNN
F 1 "GND" H 5605 4052 50  0000 C CNN
F 2 "" H 5600 4225 50  0001 C CNN
F 3 "" H 5600 4225 50  0001 C CNN
	1    5600 4225
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5DC7B97E
P 5600 2650
F 0 "#PWR09" H 5600 2500 50  0001 C CNN
F 1 "VCC" H 5617 2823 50  0000 C CNN
F 2 "" H 5600 2650 50  0001 C CNN
F 3 "" H 5600 2650 50  0001 C CNN
	1    5600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 3625 4975 3550
Wire Wire Line
	4975 3550 5200 3550
$Comp
L power:VCC #PWR06
U 1 1 5DC80B3F
P 4850 2650
F 0 "#PWR06" H 4850 2500 50  0001 C CNN
F 1 "VCC" H 4867 2823 50  0000 C CNN
F 2 "" H 4850 2650 50  0001 C CNN
F 3 "" H 4850 2650 50  0001 C CNN
	1    4850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2650 4850 3250
Wire Wire Line
	4850 3250 5200 3250
Text GLabel 8850 3150 2    50   Input ~ 0
SH_CP
Text GLabel 8850 3250 2    50   Input ~ 0
ST_CP
Text GLabel 8850 3350 2    50   Input ~ 0
DS
$Comp
L Device:R R1
U 1 1 5DC8D6D4
P 3150 5850
F 0 "R1" H 3220 5896 50  0000 L CNN
F 1 "R" H 3220 5805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 5850 50  0001 C CNN
F 3 "~" H 3150 5850 50  0001 C CNN
	1    3150 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5550 3150 5700
Wire Wire Line
	3450 5700 3450 5550
Wire Wire Line
	3750 5550 3750 5700
Wire Wire Line
	4050 5550 4050 5700
Wire Wire Line
	4350 5700 4350 5550
Wire Wire Line
	4650 5550 4650 5700
Wire Wire Line
	4950 5700 4950 5550
Wire Wire Line
	5250 5550 5250 5700
$Comp
L power:GND #PWR08
U 1 1 5DC90A79
P 5550 4950
F 0 "#PWR08" H 5550 4700 50  0001 C CNN
F 1 "GND" V 5555 4822 50  0000 R CNN
F 2 "" H 5550 4950 50  0001 C CNN
F 3 "" H 5550 4950 50  0001 C CNN
	1    5550 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 4950 5250 4950
Wire Wire Line
	3150 4950 3150 5250
Wire Wire Line
	3450 5250 3450 4950
Connection ~ 3450 4950
Wire Wire Line
	3450 4950 3150 4950
Wire Wire Line
	3750 5250 3750 4950
Connection ~ 3750 4950
Wire Wire Line
	3750 4950 3450 4950
Wire Wire Line
	4050 5250 4050 4950
Connection ~ 4050 4950
Wire Wire Line
	4050 4950 3750 4950
Wire Wire Line
	4350 4950 4350 5250
Connection ~ 4350 4950
Wire Wire Line
	4350 4950 4050 4950
Wire Wire Line
	4650 5250 4650 4950
Connection ~ 4650 4950
Wire Wire Line
	4650 4950 4350 4950
Wire Wire Line
	4950 5250 4950 4950
Connection ~ 4950 4950
Wire Wire Line
	4950 4950 4650 4950
Wire Wire Line
	5250 5250 5250 4950
Connection ~ 5250 4950
Wire Wire Line
	5250 4950 4950 4950
Text GLabel 3150 6150 3    50   Input ~ 0
QA
Wire Wire Line
	3150 6150 3150 6000
Text GLabel 3450 6150 3    50   Input ~ 0
QB
Text GLabel 3750 6150 3    50   Input ~ 0
QC
Text GLabel 4050 6150 3    50   Input ~ 0
QD
Text GLabel 4350 6150 3    50   Input ~ 0
QE
Text GLabel 4650 6150 3    50   Input ~ 0
QF
Text GLabel 4950 6150 3    50   Input ~ 0
QG
Text GLabel 5250 6150 3    50   Input ~ 0
QH
Wire Wire Line
	5250 6150 5250 6000
Wire Wire Line
	4950 6000 4950 6150
Wire Wire Line
	4650 6150 4650 6000
Wire Wire Line
	4350 6000 4350 6150
Wire Wire Line
	4050 6150 4050 6000
Wire Wire Line
	3750 6000 3750 6150
Wire Wire Line
	3450 6150 3450 6000
Text GLabel 6100 2950 2    50   Input ~ 0
QA
Text GLabel 6100 3050 2    50   Input ~ 0
QB
Text GLabel 6100 3150 2    50   Input ~ 0
QC
Text GLabel 6100 3250 2    50   Input ~ 0
QD
Text GLabel 6100 3350 2    50   Input ~ 0
QE
Text GLabel 6100 3450 2    50   Input ~ 0
QF
Text GLabel 6100 3550 2    50   Input ~ 0
QG
Text GLabel 6100 3650 2    50   Input ~ 0
QH
Wire Wire Line
	6100 2950 6000 2950
Wire Wire Line
	6000 3050 6100 3050
Wire Wire Line
	6000 3150 6100 3150
Wire Wire Line
	6000 3250 6100 3250
Wire Wire Line
	6000 3350 6100 3350
Wire Wire Line
	6000 3450 6100 3450
Wire Wire Line
	6000 3550 6100 3550
Wire Wire Line
	6000 3650 6100 3650
Text GLabel 5200 3150 0    50   Input ~ 0
SH_CP
Text GLabel 5200 3450 0    50   Input ~ 0
ST_CP
Text GLabel 5200 2950 0    50   Input ~ 0
DS
Wire Wire Line
	8250 4100 8250 3950
Wire Wire Line
	8250 2650 8250 2750
Wire Wire Line
	9050 3650 9050 3450
Wire Wire Line
	9050 3450 8850 3450
Wire Wire Line
	9150 3450 9050 3450
Connection ~ 9050 3450
$Comp
L power:GND #PWR05
U 1 1 5DCB8524
P 9550 3550
F 0 "#PWR05" H 9550 3300 50  0001 C CNN
F 1 "GND" H 9555 3377 50  0000 C CNN
F 2 "" H 9550 3550 50  0001 C CNN
F 3 "" H 9550 3550 50  0001 C CNN
	1    9550 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3550 9550 3450
Wire Wire Line
	9550 3450 9450 3450
Wire Wire Line
	5600 2650 5600 2750
Wire Wire Line
	8850 3050 8950 3050
Wire Wire Line
	8950 3050 8950 2850
$Comp
L 74xx:74HC595 U2
U 1 1 5DC77EBA
P 5600 3350
F 0 "U2" H 5850 2700 50  0000 C CNN
F 1 "74HC595" H 5850 3900 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket_LongPads" H 5600 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5600 3350 50  0001 C CNN
	1    5600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DCD5F98
P 3450 5850
F 0 "R2" H 3520 5896 50  0000 L CNN
F 1 "R" H 3520 5805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 5850 50  0001 C CNN
F 3 "~" H 3450 5850 50  0001 C CNN
	1    3450 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DCD629A
P 3750 5850
F 0 "R4" H 3820 5896 50  0000 L CNN
F 1 "R" H 3820 5805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3680 5850 50  0001 C CNN
F 3 "~" H 3750 5850 50  0001 C CNN
	1    3750 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DCD654D
P 4050 5850
F 0 "R5" H 4120 5896 50  0000 L CNN
F 1 "R" H 4120 5805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3980 5850 50  0001 C CNN
F 3 "~" H 4050 5850 50  0001 C CNN
	1    4050 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5DCD67B0
P 4350 5850
F 0 "R7" H 4420 5896 50  0000 L CNN
F 1 "R" H 4420 5805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4280 5850 50  0001 C CNN
F 3 "~" H 4350 5850 50  0001 C CNN
	1    4350 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5DCD67BA
P 4650 5850
F 0 "R8" H 4720 5896 50  0000 L CNN
F 1 "R" H 4720 5805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 5850 50  0001 C CNN
F 3 "~" H 4650 5850 50  0001 C CNN
	1    4650 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5DCD67C4
P 4950 5850
F 0 "R9" H 5020 5896 50  0000 L CNN
F 1 "R" H 5020 5805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4880 5850 50  0001 C CNN
F 3 "~" H 4950 5850 50  0001 C CNN
	1    4950 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5DCD67CE
P 5250 5850
F 0 "R10" H 5320 5896 50  0000 L CNN
F 1 "R" H 5320 5805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5180 5850 50  0001 C CNN
F 3 "~" H 5250 5850 50  0001 C CNN
	1    5250 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5DC87863
P 3150 5400
F 0 "D1" V 3097 5478 50  0000 L CNN
F 1 "LED" V 3188 5478 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 3150 5400 50  0001 C CNN
F 3 "~" H 3150 5400 50  0001 C CNN
	1    3150 5400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5DCDBB4C
P 3450 5400
F 0 "D2" V 3397 5478 50  0000 L CNN
F 1 "LED" V 3488 5478 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 3450 5400 50  0001 C CNN
F 3 "~" H 3450 5400 50  0001 C CNN
	1    3450 5400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5DCDBEDA
P 3750 5400
F 0 "D4" V 3697 5478 50  0000 L CNN
F 1 "LED" V 3788 5478 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 3750 5400 50  0001 C CNN
F 3 "~" H 3750 5400 50  0001 C CNN
	1    3750 5400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5DCDC316
P 4050 5400
F 0 "D5" V 3997 5478 50  0000 L CNN
F 1 "LED" V 4088 5478 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 4050 5400 50  0001 C CNN
F 3 "~" H 4050 5400 50  0001 C CNN
	1    4050 5400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5DCDC868
P 4350 5400
F 0 "D6" V 4297 5478 50  0000 L CNN
F 1 "LED" V 4388 5478 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 4350 5400 50  0001 C CNN
F 3 "~" H 4350 5400 50  0001 C CNN
	1    4350 5400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5DCDC872
P 4650 5400
F 0 "D7" V 4597 5478 50  0000 L CNN
F 1 "LED" V 4688 5478 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 4650 5400 50  0001 C CNN
F 3 "~" H 4650 5400 50  0001 C CNN
	1    4650 5400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5DCDC87C
P 4950 5400
F 0 "D8" V 4897 5478 50  0000 L CNN
F 1 "LED" V 4988 5478 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 4950 5400 50  0001 C CNN
F 3 "~" H 4950 5400 50  0001 C CNN
	1    4950 5400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D9
U 1 1 5DCDC886
P 5250 5400
F 0 "D9" V 5197 5478 50  0000 L CNN
F 1 "LED" V 5288 5478 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 5250 5400 50  0001 C CNN
F 3 "~" H 5250 5400 50  0001 C CNN
	1    5250 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5DCDFCFC
P 8950 2700
F 0 "R3" H 9020 2746 50  0000 L CNN
F 1 "R" H 9020 2655 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8880 2700 50  0001 C CNN
F 3 "~" H 8950 2700 50  0001 C CNN
	1    8950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2400 8950 2550
$Comp
L Device:LED D3
U 1 1 5DCDFD07
P 8950 2250
F 0 "D3" V 8897 2328 50  0000 L CNN
F 1 "LED" V 8988 2328 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 8950 2250 50  0001 C CNN
F 3 "~" H 8950 2250 50  0001 C CNN
	1    8950 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DCE4B03
P 8950 1950
F 0 "#PWR03" H 8950 1700 50  0001 C CNN
F 1 "GND" H 8955 1777 50  0000 C CNN
F 2 "" H 8950 1950 50  0001 C CNN
F 3 "" H 8950 1950 50  0001 C CNN
	1    8950 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 1950 8950 2100
NoConn ~ 6000 3850
$Comp
L Device:R R6
U 1 1 5DCE7651
P 9300 3450
F 0 "R6" V 9093 3450 50  0000 C CNN
F 1 "R" V 9184 3450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9230 3450 50  0001 C CNN
F 3 "~" H 9300 3450 50  0001 C CNN
	1    9300 3450
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5DCE9F14
P 6350 2050
F 0 "H1" H 6450 2096 50  0000 L CNN
F 1 "MountingHole" H 6450 2005 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.5mm" H 6350 2050 50  0001 C CNN
F 3 "~" H 6350 2050 50  0001 C CNN
	1    6350 2050
	1    0    0    -1  
$EndComp
$Comp
L 2019-11-10_03-16-00:1825910-6 SW1
U 1 1 5DCEB42B
P 1100 4400
F 0 "SW1" H 1900 4893 60  0000 C CNN
F 1 "1825910-6" H 1900 4787 60  0000 C CNN
F 2 "PBLIBRARY:1825910-6" H 1900 4640 60  0001 C CNN
F 3 "450-1650-ND" H 1900 4681 60  0000 C CNN
	1    1100 4400
	1    0    0    -1  
$EndComp
Text GLabel 9050 3650 3    50   Input ~ 0
PB_Sig
Text GLabel 1000 4800 3    50   Input ~ 0
PB_Sig
Wire Wire Line
	1000 4800 1000 4700
Wire Wire Line
	1000 4700 1100 4700
$Comp
L power:VCC #PWR04
U 1 1 5DCEF32F
P 2800 4950
F 0 "#PWR04" H 2800 4800 50  0001 C CNN
F 1 "VCC" H 2818 5123 50  0000 C CNN
F 2 "" H 2800 4950 50  0001 C CNN
F 3 "" H 2800 4950 50  0001 C CNN
	1    2800 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 4950 2800 4700
Wire Wire Line
	2800 4700 2700 4700
NoConn ~ 2700 4400
NoConn ~ 1100 4400
$Comp
L power:VCC #PWR011
U 1 1 5DD045FE
P 4900 1650
F 0 "#PWR011" H 4900 1500 50  0001 C CNN
F 1 "VCC" H 4917 1823 50  0000 C CNN
F 2 "" H 4900 1650 50  0001 C CNN
F 3 "" H 4900 1650 50  0001 C CNN
	1    4900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1650 4900 1750
$Comp
L power:GND #PWR012
U 1 1 5DD05EC1
P 5400 2050
F 0 "#PWR012" H 5400 1800 50  0001 C CNN
F 1 "GND" H 5405 1877 50  0000 C CNN
F 2 "" H 5400 2050 50  0001 C CNN
F 3 "" H 5400 2050 50  0001 C CNN
	1    5400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2050 5400 1950
$Comp
L Battery~Holder:BATT B1
U 1 1 5DD0BC30
P 5150 1650
F 0 "B1" H 5150 1775 50  0000 C CNN
F 1 "BATT" H 5150 1684 50  0000 C CNN
F 2 "JacobMakesStuff:BAT-HLD-001" H 5150 1650 50  0001 C CNN
F 3 "" H 5150 1650 50  0001 C CNN
	1    5150 1650
	1    0    0    -1  
$EndComp
NoConn ~ 8850 3550
$EndSCHEMATC
