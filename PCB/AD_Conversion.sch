EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1400 2500 0    50   Input ~ 0
V_in
$Comp
L PCB_library:ADS868X U4
U 1 1 601B4276
P 3250 1450
F 0 "U4" H 3275 1465 50  0000 C CNN
F 1 "ADS868X" H 3275 1374 50  0000 C CNN
F 2 "Package_SO:SSOP-16_4.4x5.2mm_P0.65mm" H 3350 350 50  0001 C CNN
F 3 "schon vorhanden" H 3250 1450 50  0001 C CNN
	1    3250 1450
	1    0    0    -1  
$EndComp
Text HLabel 2450 1700 0    50   Input ~ 0
GND
Text HLabel 2450 1900 0    50   Input ~ 0
GND
Text HLabel 2450 1800 0    50   Input ~ 0
+5V
Text HLabel 4150 1700 2    50   Input ~ 0
+3V3
$Comp
L Device:C C35
U 1 1 601B4286
P 1800 1200
F 0 "C35" V 1548 1200 50  0000 C CNN
F 1 "1uF" V 1639 1200 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1838 1050 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B105KAHNNNE/1276-1097-1-ND/3889183" H 1800 1200 50  0001 C CNN
	1    1800 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1200 4250 1200
Text HLabel 5100 1300 3    50   Input ~ 0
GND
Text HLabel 1100 1450 3    50   Input ~ 0
GND
Wire Wire Line
	1950 1200 2000 1200
Wire Wire Line
	2450 1700 2550 1700
Wire Wire Line
	2450 1900 2550 1900
Text HLabel 1800 3050 0    50   Input ~ 0
GND
Wire Wire Line
	1800 3050 2350 3050
$Comp
L Device:C C37
U 1 1 601B566F
P 2350 2900
F 0 "C37" H 2465 2946 50  0000 L CNN
F 1 "10nF" H 2465 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2388 2750 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B103KBCNNNC/1276-1035-1-ND/3889121" H 2350 2900 50  0001 C CNN
	1    2350 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 601B77EE
P 1800 1600
F 0 "C36" V 1548 1600 50  0000 C CNN
F 1 "100nF" V 1639 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1838 1450 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B104KBCNFNC/1276-2744-1-ND/3890830" H 1800 1600 50  0001 C CNN
	1    1800 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 1600 2000 1600
Wire Wire Line
	2000 1600 2000 1200
Wire Wire Line
	1550 1200 1650 1200
Wire Wire Line
	1550 1600 1650 1600
Wire Wire Line
	1550 1200 1550 1600
NoConn ~ 4000 1800
Text HLabel 4400 2400 2    50   Input ~ 0
+3V3
$Comp
L Device:R R21
U 1 1 601B9F40
P 4200 2400
F 0 "R21" V 3993 2400 50  0000 C CNN
F 1 "10k" V 4084 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4130 2400 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/stackpole-electronics-inc/RMCF1206JT10K0/RMCF1206JT10K0CT-ND/1942803" H 4200 2400 50  0001 C CNN
	1    4200 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 2400 4350 2400
Wire Wire Line
	4050 2400 4000 2400
Text HLabel 4950 2100 2    50   Input ~ 0
SCK
Text HLabel 4950 2200 2    50   Input ~ 0
CS
NoConn ~ 4000 1900
Text HLabel 4950 2000 2    50   Input ~ 0
MISO
Text HLabel 4950 2300 2    50   Input ~ 0
MOSI
Wire Wire Line
	4950 2000 4000 2000
Wire Wire Line
	4000 2100 4950 2100
Wire Wire Line
	4950 2200 4000 2200
Wire Wire Line
	4000 2300 4950 2300
$Comp
L Device:C C34
U 1 1 5FB9E516
P 1800 800
F 0 "C34" V 1548 800 50  0000 C CNN
F 1 "10uF" V 1639 800 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1838 650 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL21A106KOQNNWE/1276-2894-1-ND/3890980" H 1800 800 50  0001 C CNN
	1    1800 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 800  2000 800 
Wire Wire Line
	2000 1200 2000 800 
Wire Wire Line
	1550 800  1650 800 
Wire Wire Line
	1550 800  1550 1200
$Comp
L Device:C C39
U 1 1 5FB9FF18
P 4500 1200
F 0 "C39" V 4248 1200 50  0000 C CNN
F 1 "1uF" V 4339 1200 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4538 1050 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B105KAHNNNE/1276-1097-1-ND/3889183" H 4500 1200 50  0001 C CNN
	1    4500 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 1200 4700 1200
$Comp
L Device:C C40
U 1 1 5FB9FF1F
P 4500 1600
F 0 "C40" V 4248 1600 50  0000 C CNN
F 1 "100nF" V 4339 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4538 1450 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B104KBCNFNC/1276-2744-1-ND/3890830" H 4500 1600 50  0001 C CNN
	1    4500 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1600 4700 1200
Wire Wire Line
	4250 1200 4350 1200
$Comp
L Device:C C38
U 1 1 5FB9FF27
P 4500 800
F 0 "C38" V 4248 800 50  0000 C CNN
F 1 "10uF" V 4339 800 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4538 650 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL21A106KOQNNWE/1276-2894-1-ND/3890980" H 4500 800 50  0001 C CNN
	1    4500 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 800  4700 800 
Wire Wire Line
	4700 1200 4700 800 
Wire Wire Line
	4250 800  4350 800 
Wire Wire Line
	4700 1600 4650 1600
Wire Wire Line
	4350 1600 4250 1600
Wire Wire Line
	4250 1200 4250 800 
Connection ~ 4250 1200
Connection ~ 4700 1200
Wire Wire Line
	4700 1200 5100 1200
Wire Wire Line
	5100 1200 5100 1300
Wire Wire Line
	4000 1700 4050 1700
Wire Wire Line
	4250 1200 4250 1600
Wire Wire Line
	4050 1200 4050 1700
Connection ~ 4050 1700
Wire Wire Line
	4050 1700 4150 1700
Wire Wire Line
	1100 1450 1100 1200
Connection ~ 1550 1200
Connection ~ 2000 1200
Wire Wire Line
	2450 1800 2500 1800
Connection ~ 2500 1800
Wire Wire Line
	2500 1800 2550 1800
Wire Wire Line
	2500 1200 2000 1200
Wire Wire Line
	2500 1200 2500 1800
$Comp
L Device:C C32
U 1 1 5FBB5140
P 1400 1950
F 0 "C32" V 1148 1950 50  0000 C CNN
F 1 "10uF" V 1239 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1438 1800 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL21A106KOQNNWE/1276-2894-1-ND/3890980" H 1400 1950 50  0001 C CNN
	1    1400 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C31
U 1 1 5FBB75F5
P 1250 2250
F 0 "C31" V 998 2250 50  0000 C CNN
F 1 "10uF" V 1089 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1288 2100 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL21A106KOQNNWE/1276-2894-1-ND/3890980" H 1250 2250 50  0001 C CNN
	1    1250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3050 2350 3050
Wire Wire Line
	2550 2400 2550 3050
Connection ~ 2350 3050
Wire Wire Line
	2350 2750 2350 2300
Wire Wire Line
	2350 2300 2550 2300
$Comp
L Device:C C33
U 1 1 5FBC043A
P 1650 2250
F 0 "C33" V 1398 2250 50  0000 C CNN
F 1 "1uF" V 1489 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1688 2100 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B105KAHNNNE/1276-1097-1-ND/3889183" H 1650 2250 50  0001 C CNN
	1    1650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2100 1650 2100
Text HLabel 1050 2100 0    50   Input ~ 0
GND
Connection ~ 1650 2100
Wire Wire Line
	1650 2100 1400 2100
Connection ~ 1250 2100
Wire Wire Line
	1250 2100 1050 2100
Wire Wire Line
	1250 2400 1650 2400
Wire Wire Line
	1900 2400 1900 2200
Connection ~ 1650 2400
Wire Wire Line
	1650 2400 1900 2400
Wire Wire Line
	1900 2200 2550 2200
Wire Wire Line
	2100 2500 2100 2300
Wire Wire Line
	2100 2300 2350 2300
Connection ~ 2350 2300
Wire Wire Line
	1100 1200 1550 1200
Connection ~ 1400 2100
Wire Wire Line
	1400 2100 1250 2100
Wire Wire Line
	1400 1800 1950 1800
Wire Wire Line
	1950 1800 1950 2000
Wire Wire Line
	1950 2000 2550 2000
$Comp
L Device:R R19
U 1 1 5FB76A76
P 1850 2500
F 0 "R19" V 1643 2500 50  0000 C CNN
F 1 "1k" V 1734 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1780 2500 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/stackpole-electronics-inc/RMCF1206JT1K00/RMCF1206JT1K00CT-ND/1942786" H 1850 2500 50  0001 C CNN
	1    1850 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 2500 2000 2500
Wire Wire Line
	1700 2500 1600 2500
$Comp
L Device:R R20
U 1 1 5FB7FCAD
P 1850 2800
F 0 "R20" V 1643 2800 50  0000 C CNN
F 1 "0" V 1734 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1780 2800 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/stackpole-electronics-inc/RMCF1206ZT0R00/RMCF1206ZT0R00CT-ND/1942835" H 1850 2800 50  0001 C CNN
	1    1850 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 2800 1600 2800
Wire Wire Line
	1600 2800 1600 2500
Connection ~ 1600 2500
Wire Wire Line
	1600 2500 1500 2500
Wire Wire Line
	2000 2800 2100 2800
Wire Wire Line
	2100 2800 2100 2500
Connection ~ 2100 2500
$Comp
L Connector:TestPoint TP?
U 1 1 5FB80DC8
P 1400 2650
AR Path="/5FB80DC8" Ref="TP?"  Part="1" 
AR Path="/6017D290/5FB80DC8" Ref="TP5"  Part="1" 
F 0 "TP5" H 1458 2768 50  0000 L CNN
F 1 "TestPoint" H 1458 2677 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1600 2650 50  0001 C CNN
F 3 "schon vorhanden" H 1600 2650 50  0001 C CNN
	1    1400 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 2650 1500 2650
Wire Wire Line
	1500 2650 1500 2500
Connection ~ 1500 2500
Wire Wire Line
	1500 2500 1400 2500
$EndSCHEMATC
