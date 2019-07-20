EESchema Schematic File Version 4
LIBS:looplabs-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
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
L LED:NeoPixel_THT LED2
U 1 1 5D311BF5
P 4650 1550
F 0 "LED2" H 4700 1800 50  0000 L CNN
F 1 "NeoPixel_THT" H 4994 1505 50  0001 L CNN
F 2 "" H 4700 1250 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 4750 1175 50  0001 L TNN
	1    4650 1550
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT LED1
U 1 1 5D316F0E
P 3950 1550
F 0 "LED1" H 4000 1800 50  0000 L CNN
F 1 "NeoPixel_THT" H 4294 1505 50  0001 L CNN
F 2 "" H 4000 1250 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 4050 1175 50  0001 L TNN
	1    3950 1550
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT PowerLED
U 1 1 5D316F18
P 6750 1550
F 0 "PowerLED" H 6800 1800 50  0000 L CNN
F 1 "NeoPixel_THT" H 7094 1505 50  0001 L CNN
F 2 "" H 6800 1250 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 6850 1175 50  0001 L TNN
	1    6750 1550
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT LED3
U 1 1 5D316F22
P 5350 1550
F 0 "LED3" H 5400 1800 50  0000 L CNN
F 1 "NeoPixel_THT" H 5694 1505 50  0001 L CNN
F 2 "" H 5400 1250 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 5450 1175 50  0001 L TNN
	1    5350 1550
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:POTENTIOMETER-PTH-9MM-1_20W-20% POT1
U 1 1 5D31C2DA
P 2350 3300
F 0 "POT1" V 2240 3300 45  0000 C CNN
F 1 "POTENTIOMETER-PTH-9MM-1_20W-20%" H 2282 3311 45  0001 R CNN
F 2 "POT-PTH-ALPS" V 2200 3300 20  0001 C CNN
F 3 "" H 2350 3300 60  0001 C CNN
F 4 "RES-09177" H 2282 3216 60  0001 R CNN "Field4"
	1    2350 3300
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Resistors:POTENTIOMETER-PTH-9MM-1_20W-20% POT2
U 1 1 5D31E07B
P 2350 3750
F 0 "POT2" V 2240 3750 45  0000 C CNN
F 1 "POTENTIOMETER-PTH-9MM-1_20W-20%" H 2282 3761 45  0001 R CNN
F 2 "POT-PTH-ALPS" V 2200 3750 20  0001 C CNN
F 3 "" H 2350 3750 60  0001 C CNN
F 4 "RES-09177" H 2282 3666 60  0001 R CNN "Field4"
	1    2350 3750
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Resistors:POTENTIOMETER-PTH-9MM-1_20W-20% POT3
U 1 1 5D31E8EC
P 2350 4200
F 0 "POT3" V 2240 4200 45  0000 C CNN
F 1 "POTENTIOMETER-PTH-9MM-1_20W-20%" H 2282 4211 45  0001 R CNN
F 2 "POT-PTH-ALPS" V 2200 4200 20  0001 C CNN
F 3 "" H 2350 4200 60  0001 C CNN
F 4 "RES-09177" H 2282 4116 60  0001 R CNN "Field4"
	1    2350 4200
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Resistors:POTENTIOMETER-PTH-9MM-1_20W-20% POT4
U 1 1 5D31F39D
P 2350 4650
F 0 "POT4" V 2240 4650 45  0000 C CNN
F 1 "POTENTIOMETER-PTH-9MM-1_20W-20%" H 2282 4661 45  0001 R CNN
F 2 "POT-PTH-ALPS" V 2200 4650 20  0001 C CNN
F 3 "" H 2350 4650 60  0001 C CNN
F 4 "RES-09177" H 2282 4566 60  0001 R CNN "Field4"
	1    2350 4650
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Switches:SWITCH-DPDT-PTH-GPI-152-3013 STOMP2
U 1 1 5D320E46
P 5350 3750
F 0 "STOMP2" V 5100 3650 45  0000 R CNN
F 1 "SWITCH-DPDT-PTH-GPI-152-3013" H 5350 4226 45  0001 C CNN
F 2 "SWITCH_DPDT_PTH_GPI-152-3013" H 5350 4200 20  0001 C CNN
F 3 "" H 5350 3750 50  0001 C CNN
F 4 "SWCH-10554" H 5350 4131 60  0001 C CNN "Field4"
	1    5350 3750
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:SWITCH-DPDT-PTH-GPI-152-3013 STOMP1
U 1 1 5D322BA3
P 5350 3100
F 0 "STOMP1" V 5100 3000 45  0000 R CNN
F 1 "SWITCH-DPDT-PTH-GPI-152-3013" H 5350 3576 45  0001 C CNN
F 2 "SWITCH_DPDT_PTH_GPI-152-3013" H 5350 3550 20  0001 C CNN
F 3 "" H 5350 3100 50  0001 C CNN
F 4 "SWCH-10554" H 5350 3481 60  0001 C CNN "Field4"
	1    5350 3100
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:SWITCH-DPDT-PTH-GPI-152-3013 STOMP3
U 1 1 5D323F12
P 5350 4400
F 0 "STOMP3" V 5100 4300 45  0000 R CNN
F 1 "SWITCH-DPDT-PTH-GPI-152-3013" H 5350 4876 45  0001 C CNN
F 2 "SWITCH_DPDT_PTH_GPI-152-3013" H 5350 4850 20  0001 C CNN
F 3 "" H 5350 4400 50  0001 C CNN
F 4 "SWCH-10554" H 5350 4781 60  0001 C CNN "Field4"
	1    5350 4400
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:SWITCH-DPDT-PTH-GPI-152-3013 STOMP4
U 1 1 5D32466D
P 5350 5000
F 0 "STOMP4" V 5100 4900 45  0000 R CNN
F 1 "SWITCH-DPDT-PTH-GPI-152-3013" H 5350 5476 45  0001 C CNN
F 2 "SWITCH_DPDT_PTH_GPI-152-3013" H 5350 5450 20  0001 C CNN
F 3 "" H 5350 5000 50  0001 C CNN
F 4 "SWCH-10554" H 5350 5381 60  0001 C CNN "Field4"
	1    5350 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 1550 4350 1550
Wire Wire Line
	4950 1550 5050 1550
Wire Wire Line
	5650 1550 5750 1550
Wire Wire Line
	6350 1550 6450 1550
$Comp
L LED:NeoPixel_THT LED4
U 1 1 5D30F2F8
P 6050 1550
F 0 "LED4" H 6100 1800 50  0000 L CNN
F 1 "NeoPixel_THT" H 6394 1505 50  0001 L CNN
F 2 "" H 6100 1250 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 6150 1175 50  0001 L TNN
	1    6050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1850 4650 1850
Connection ~ 4650 1850
Wire Wire Line
	4650 1850 5350 1850
Connection ~ 5350 1850
Wire Wire Line
	5350 1850 6050 1850
Connection ~ 6050 1850
Wire Wire Line
	6050 1850 6750 1850
Wire Wire Line
	3950 1250 4650 1250
Connection ~ 4650 1250
Wire Wire Line
	4650 1250 5350 1250
Connection ~ 5350 1250
Wire Wire Line
	5350 1250 6050 1250
Connection ~ 6050 1250
Wire Wire Line
	6050 1250 6750 1250
$Comp
L SparkFun-PowerSymbols:VCC #SUPPLY?
U 1 1 5D3313F5
P 9850 5000
F 0 "#SUPPLY?" H 9900 5000 45  0001 L BNN
F 1 "VCC" H 9850 5170 45  0000 C CNN
F 2 "XXX-00000" H 9850 5181 60  0001 C CNN
F 3 "" H 9850 5000 60  0001 C CNN
	1    9850 5000
	0    1    1    0   
$EndComp
$Comp
L SparkFun-PowerSymbols:GND2 GND
U 1 1 5D331DCA
P 7550 2700
F 0 "GND" H 7350 2650 45  0000 L CNN
F 1 "GND2" H 7550 2470 45  0001 C CNN
F 2 "XXX-00000" H 7550 2375 60  0001 C CNN
F 3 "" H 7550 2600 60  0001 C CNN
	1    7550 2700
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:VCC #SUPPLY?
U 1 1 5D33339F
P 2050 3200
F 0 "#SUPPLY?" H 2100 3200 45  0001 L BNN
F 1 "VCC" H 2050 3370 45  0000 C CNN
F 2 "XXX-00000" H 2050 3381 60  0001 C CNN
F 3 "" H 2050 3200 60  0001 C CNN
	1    2050 3200
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND2 GND
U 1 1 5D333A80
P 5350 1850
F 0 "GND" H 5300 1600 45  0000 L CNN
F 1 "GND2" H 5350 1620 45  0001 C CNN
F 2 "XXX-00000" H 5350 1525 60  0001 C CNN
F 3 "" H 5350 1750 60  0001 C CNN
	1    5350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3300 2050 3750
Connection ~ 2050 3750
Wire Wire Line
	2050 3750 2050 4200
Connection ~ 2050 4200
Wire Wire Line
	2050 4200 2050 4650
Wire Wire Line
	2650 3300 2650 3750
Connection ~ 2650 3750
Wire Wire Line
	2650 3750 2650 4200
Connection ~ 2650 4200
Wire Wire Line
	2650 4200 2650 4650
Wire Wire Line
	2650 4650 2650 4950
Connection ~ 2650 4650
Wire Wire Line
	2050 3200 2050 3300
Connection ~ 2050 3300
Wire Wire Line
	5800 2850 5800 3500
Wire Wire Line
	5800 4750 5350 4750
Wire Wire Line
	5350 4750 5350 4800
Wire Wire Line
	5350 4200 5350 4150
Wire Wire Line
	5350 4150 5800 4150
Connection ~ 5800 4150
Wire Wire Line
	5800 4150 5800 4750
Wire Wire Line
	5350 3550 5350 3500
Wire Wire Line
	5350 3500 5800 3500
Connection ~ 5800 3500
Wire Wire Line
	5800 3500 5800 4150
Wire Wire Line
	5800 2850 5350 2850
Wire Wire Line
	5350 2850 5350 2900
$Comp
L SparkFun-PowerSymbols:GND2 GND
U 1 1 5D350197
P 5800 5350
F 0 "GND" H 5750 5100 45  0000 L CNN
F 1 "GND2" H 5800 5120 45  0001 C CNN
F 2 "XXX-00000" H 5800 5025 60  0001 C CNN
F 3 "" H 5800 5250 60  0001 C CNN
	1    5800 5350
	1    0    0    -1  
$EndComp
Text GLabel 3500 1550 0    50   Input ~ 0
LEDs
Wire Wire Line
	3650 1550 3500 1550
Text GLabel 1950 3500 0    50   Input ~ 0
POT1
Text GLabel 1950 3950 0    50   Input ~ 0
POT2
Text GLabel 1950 4400 0    50   Input ~ 0
POT3
Text GLabel 1950 4850 0    50   Input ~ 0
POT4
Wire Wire Line
	2350 3500 1950 3500
Wire Wire Line
	2350 3950 1950 3950
Wire Wire Line
	2350 4400 1950 4400
Wire Wire Line
	2350 4850 1950 4850
Text GLabel 4750 3300 0    50   Input ~ 0
STOMP1
Text GLabel 4750 3950 0    50   Input ~ 0
STOMP2
Text GLabel 4750 4600 0    50   Input ~ 0
STOMP3
Text GLabel 4750 5200 0    50   Input ~ 0
STOMP4
Wire Wire Line
	4750 3300 5250 3300
Wire Wire Line
	4750 3950 5250 3950
Wire Wire Line
	4750 4600 5250 4600
Wire Wire Line
	4750 5200 5250 5200
Wire Wire Line
	7700 2700 7550 2700
Text GLabel 7700 3000 0    50   Input ~ 0
LEDs
Text GLabel 7700 3100 0    50   Input ~ 0
STOMP1
Text GLabel 7700 3200 0    50   Input ~ 0
STOMP2
Text GLabel 7700 3300 0    50   Input ~ 0
STOMP3
Text GLabel 7700 3400 0    50   Input ~ 0
STOMP4
Text GLabel 7700 4900 0    50   Input ~ 0
POT1
Text GLabel 7700 5000 0    50   Input ~ 0
POT2
Text GLabel 7700 5100 0    50   Input ~ 0
POT3
Text GLabel 7700 5200 0    50   Input ~ 0
POT4
$Comp
L teensy:Teensy3.2 U?
U 1 1 5D310210
P 8700 4000
F 0 "U?" H 8700 5587 60  0001 C CNN
F 1 "Teensy3.2" H 8700 5481 60  0000 C CNN
F 2 "" H 8700 3200 60  0001 C CNN
F 3 "" H 8700 3200 60  0001 C CNN
	1    8700 4000
	1    0    0    -1  
$EndComp
Text Notes 6650 7750 0    79   ~ 0
LoopLabs Midi Stomp Box
$Comp
L SparkFun-PowerSymbols:VCC_2 #SUPPLY?
U 1 1 5D310778
P 5350 1250
F 0 "#SUPPLY?" H 5400 1250 45  0001 L BNN
F 1 "VCC_2" H 5350 1420 45  0000 C CNN
F 2 "XXX-00000" H 5350 1431 60  0001 C CNN
F 3 "" H 5350 1250 60  0001 C CNN
	1    5350 1250
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:VCC_2 #SUPPLY?
U 1 1 5D312E43
P 9850 4800
F 0 "#SUPPLY?" H 9900 4800 45  0001 L BNN
F 1 "VCC_2" H 9850 4970 45  0000 C CNN
F 2 "XXX-00000" H 9850 4981 60  0001 C CNN
F 3 "" H 9850 4800 60  0001 C CNN
	1    9850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4750 5800 5350
Connection ~ 5800 4750
$Comp
L SparkFun-PowerSymbols:AGND #M?
U 1 1 5D3229B5
P 2650 4950
F 0 "#M?" H 2700 4900 45  0001 L BNN
F 1 "AGND" H 2650 4780 45  0000 C CNN
F 2 "XXX-00000" H 2650 4685 60  0001 C CNN
F 3 "" H 2650 4850 60  0001 C CNN
	1    2650 4950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:AGND #M?
U 1 1 5D323F02
P 9850 4900
F 0 "#M?" H 9900 4850 45  0001 L BNN
F 1 "AGND" V 9850 4772 45  0000 R CNN
F 2 "XXX-00000" H 9850 4635 60  0001 C CNN
F 3 "" H 9850 4800 60  0001 C CNN
	1    9850 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 4900 9850 4900
Wire Wire Line
	9700 5000 9850 5000
Wire Wire Line
	9700 4800 9850 4800
$EndSCHEMATC
