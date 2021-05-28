EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Device:C_Small C?
U 1 1 5F9761B8
P 6550 1250
AR Path="/5F9761B8" Ref="C?"  Part="1" 
AR Path="/5F8B9174/5F9761B8" Ref="C26"  Part="1" 
F 0 "C26" H 6642 1296 50  0000 L CNN
F 1 "1uF" H 6642 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6550 1250 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B105KAHNNNE/1276-1097-1-ND/3889183" H 6550 1250 50  0001 C CNN
	1    6550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2200 8250 2200
Wire Wire Line
	7050 1150 6550 1150
Wire Wire Line
	7050 1300 7050 1350
Wire Wire Line
	7050 1350 6550 1350
Wire Wire Line
	7650 2550 7650 2700
$Comp
L Device:C_Small C?
U 1 1 5F9761C9
P 8450 2150
AR Path="/5F9761C9" Ref="C?"  Part="1" 
AR Path="/5F8B9174/5F9761C9" Ref="C29"  Part="1" 
F 0 "C29" H 8542 2196 50  0000 L CNN
F 1 "10uF" H 8542 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8450 2150 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL21A106KOQNNWE/1276-2894-1-ND/3890980" H 8450 2150 50  0001 C CNN
	1    8450 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F9761DD
P 8850 1600
AR Path="/5F9761DD" Ref="C?"  Part="1" 
AR Path="/5F8B9174/5F9761DD" Ref="C30"  Part="1" 
F 0 "C30" H 8942 1646 50  0000 L CNN
F 1 "100nF" H 8942 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8850 1600 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B104KBCNFNC/1276-2744-1-ND/3890830" H 8850 1600 50  0001 C CNN
	1    8850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1450 8850 1450
Wire Wire Line
	8850 1450 8850 1500
Wire Wire Line
	8250 2050 8450 2050
$Comp
L Device:R_Small R?
U 1 1 5F9761E6
P 9050 1250
AR Path="/5F9761E6" Ref="R?"  Part="1" 
AR Path="/5F8B9174/5F9761E6" Ref="R17"  Part="1" 
F 0 "R17" H 9109 1296 50  0000 L CNN
F 1 "390k" H 9109 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9050 1250 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/stackpole-electronics-inc/RMCF1206FT390K/RMCF1206FT390KCT-ND/2418725" H 9050 1250 50  0001 C CNN
	1    9050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1350 9000 1350
Wire Wire Line
	9000 1350 9000 1300
Wire Wire Line
	9000 1300 8250 1300
Wire Wire Line
	8250 1150 8650 1150
$Comp
L Device:R_Small R?
U 1 1 5F9761F0
P 9050 1450
AR Path="/5F9761F0" Ref="R?"  Part="1" 
AR Path="/5F8B9174/5F9761F0" Ref="R18"  Part="1" 
F 0 "R18" H 9109 1496 50  0000 L CNN
F 1 "52.3k" H 9109 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9050 1450 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/koa-speer-electronics-inc/RK73H2BTTD5232F/2019-RK73H2BTTD5232FCT-ND/10237717" H 9050 1450 50  0001 C CNN
	1    9050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1900 8700 1900
Wire Wire Line
	8250 1600 8700 1600
Wire Wire Line
	8700 1600 8700 1900
Connection ~ 8700 1900
Wire Wire Line
	8700 1900 8850 1900
Wire Wire Line
	9050 1550 9050 1900
Connection ~ 9050 1900
Wire Wire Line
	9050 1900 9200 1900
Wire Wire Line
	8850 1700 8850 1900
Connection ~ 8850 1900
Wire Wire Line
	8850 1900 9050 1900
Wire Wire Line
	7050 1600 7000 1600
Wire Wire Line
	7000 1600 7000 1450
Wire Wire Line
	7000 1450 7050 1450
Connection ~ 7000 1600
Connection ~ 7000 1450
$Comp
L Device:R_Small R?
U 1 1 5F97620A
P 6550 2050
AR Path="/5F97620A" Ref="R?"  Part="1" 
AR Path="/5F8B9174/5F97620A" Ref="R15"  Part="1" 
F 0 "R15" V 6746 2050 50  0000 C CNN
F 1 "52.3k" V 6655 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6550 2050 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/koa-speer-electronics-inc/RK73H2BTTD5232F/2019-RK73H2BTTD5232FCT-ND/10237717" H 6550 2050 50  0001 C CNN
	1    6550 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F976210
P 6350 1850
AR Path="/5F976210" Ref="C?"  Part="1" 
AR Path="/5F8B9174/5F976210" Ref="C25"  Part="1" 
F 0 "C25" H 6441 1804 50  0000 L CNN
F 1 "100nF" H 6441 1895 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6350 1850 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B104KBCNFNC/1276-2744-1-ND/3890830" H 6350 1850 50  0001 C CNN
	1    6350 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 1450 5950 1450
Wire Wire Line
	5950 1450 7000 1450
Connection ~ 5950 1450
$Comp
L Device:C_Small C?
U 1 1 5F97621F
P 5950 1550
AR Path="/5F97621F" Ref="C?"  Part="1" 
AR Path="/5F8B9174/5F97621F" Ref="C23"  Part="1" 
F 0 "C23" H 6042 1596 50  0000 L CNN
F 1 "10uF" H 6042 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5950 1550 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL21A106KOQNNWE/1276-2894-1-ND/3890980" H 5950 1550 50  0001 C CNN
	1    5950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1750 6350 1750
Wire Wire Line
	5950 2050 6150 2050
Wire Wire Line
	5950 1650 5950 2050
Wire Wire Line
	6150 2050 6150 2100
Wire Wire Line
	6150 2050 6350 2050
Wire Wire Line
	6350 2050 6350 1950
Connection ~ 6150 2050
Wire Wire Line
	6850 1900 7050 1900
$Comp
L Device:C_Small C?
U 1 1 5F97622D
P 6800 2850
AR Path="/5F97622D" Ref="C?"  Part="1" 
AR Path="/5F8B9174/5F97622D" Ref="C27"  Part="1" 
F 0 "C27" H 6708 2804 50  0000 R CNN
F 1 "10uF" H 6708 2895 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6800 2850 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL21A106KOQNNWE/1276-2894-1-ND/3890980" H 6800 2850 50  0001 C CNN
	1    6800 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 2050 6450 2050
Connection ~ 6350 2050
Wire Wire Line
	6850 2000 6650 2000
Wire Wire Line
	6650 2000 6650 2050
Wire Wire Line
	6850 2000 6850 1900
$Comp
L Device:R_Small R?
U 1 1 5F97623F
P 6750 2050
AR Path="/5F97623F" Ref="R?"  Part="1" 
AR Path="/5F8B9174/5F97623F" Ref="R16"  Part="1" 
F 0 "R16" V 6946 2050 50  0000 C CNN
F 1 "390k" V 6855 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6750 2050 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/stackpole-electronics-inc/RMCF1206FT390K/RMCF1206FT390KCT-ND/2418725" H 6750 2050 50  0001 C CNN
	1    6750 2050
	0    -1   -1   0   
$EndComp
Connection ~ 9050 1350
Wire Wire Line
	8450 2050 8950 2050
Wire Wire Line
	8950 2050 8950 2200
Wire Wire Line
	8950 2200 9450 2200
Wire Wire Line
	9450 2200 9450 1000
Wire Wire Line
	8250 1000 9450 1000
Connection ~ 8450 2050
$Comp
L Device:C_Small C?
U 1 1 5F97624C
P 6250 2450
AR Path="/5F97624C" Ref="C?"  Part="1" 
AR Path="/5F8B9174/5F97624C" Ref="C24"  Part="1" 
F 0 "C24" H 6158 2404 50  0000 R CNN
F 1 "10uF" H 6158 2495 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6250 2450 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL21A106KOQNNWE/1276-2894-1-ND/3890980" H 6250 2450 50  0001 C CNN
	1    6250 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 2350 5800 2350
Wire Wire Line
	6250 2350 6800 2350
Connection ~ 6250 2350
Connection ~ 6650 2050
$Comp
L Device:C_Small C?
U 1 1 5F976263
P 7650 3100
AR Path="/5F976263" Ref="C?"  Part="1" 
AR Path="/5F8B9174/5F976263" Ref="C28"  Part="1" 
F 0 "C28" V 7513 3100 50  0000 C CNN
F 1 "1uF" V 7422 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7650 3100 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/de/samsung-electro-mechanics/CL31B105KAHNNNE/1276-1097-1-ND/3889183" H 7650 3100 50  0001 C CNN
	1    7650 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 3100 7550 3100
Wire Wire Line
	7050 2350 7050 3100
Wire Wire Line
	7750 3100 8300 3100
Wire Wire Line
	8300 2200 8300 3100
Wire Wire Line
	6850 2050 6900 2050
Wire Wire Line
	6900 2050 6900 2100
Wire Wire Line
	6900 2100 6800 2100
Wire Wire Line
	6800 2100 6800 2350
Connection ~ 6900 2050
Wire Wire Line
	6900 2050 7050 2050
Wire Wire Line
	6900 2200 6900 2750
Wire Wire Line
	6900 2750 6800 2750
Wire Wire Line
	6900 2200 7050 2200
Wire Wire Line
	9050 1150 9350 1150
Connection ~ 9050 1150
$Comp
L PCB_library:LTC3265 U?
U 1 1 5F976284
P 7650 1650
AR Path="/5F976284" Ref="U?"  Part="1" 
AR Path="/5F8B9174/5F976284" Ref="U3"  Part="1" 
F 0 "U3" H 7650 2565 50  0000 C CNN
F 1 "LTC3265" H 7650 2474 50  0000 C CNN
F 2 "Frequenzmessung PCB:LTC3265" H 7750 700 50  0001 C CNN
F 3 "schon vorhanden" H 7650 2450 50  0001 C CNN
	1    7650 1650
	1    0    0    -1  
$EndComp
NoConn ~ 8250 2350
NoConn ~ 7050 1000
Text HLabel 9350 1150 2    50   Input ~ 0
+10V
Text HLabel 5700 2350 3    50   Input ~ 0
-10V
Text HLabel 7650 2700 3    50   Input ~ 0
GND
Text HLabel 8450 2400 3    50   Input ~ 0
GND
Wire Wire Line
	8450 2400 8450 2250
Text HLabel 9200 1950 3    50   Input ~ 0
GND
Wire Wire Line
	9200 1900 9200 1950
Text HLabel 6150 2100 3    50   Input ~ 0
GND
Text HLabel 6250 2650 3    50   Input ~ 0
GND
Wire Wire Line
	6250 2550 6250 2650
Text HLabel 6800 3050 3    50   Input ~ 0
GND
Wire Wire Line
	6800 2950 6800 3050
Wire Notes Line
	5450 500  9700 500 
Wire Notes Line
	9700 500  9700 3650
Wire Notes Line
	9700 3650 5450 3650
Wire Notes Line
	5450 3650 5450 500 
Text Notes 7000 3600 0    50   ~ 0
Charge Pump for Operational Amplifier
Text HLabel 5800 1450 0    50   Input ~ 0
+5V
Text Label 6700 1600 2    50   ~ 0
Enp
Wire Wire Line
	6700 1600 7000 1600
Text Label 8400 1750 0    50   ~ 0
Enp
Wire Wire Line
	8250 1750 8400 1750
$Comp
L Connector:TestPoint TP?
U 1 1 5FB7C006
P 8650 900
AR Path="/5FB7C006" Ref="TP?"  Part="1" 
AR Path="/5F8B9174/5FB7C006" Ref="TP4"  Part="1" 
F 0 "TP4" H 8708 1018 50  0000 L CNN
F 1 "TestPoint" H 8708 927 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8850 900 50  0001 C CNN
F 3 "schon vorhanden" H 8850 900 50  0001 C CNN
	1    8650 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5FB7D3E1
P 5800 2250
AR Path="/5FB7D3E1" Ref="TP?"  Part="1" 
AR Path="/5F8B9174/5FB7D3E1" Ref="TP3"  Part="1" 
F 0 "TP3" H 5600 2400 50  0000 L CNN
F 1 "TestPoint" H 5400 2300 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6000 2250 50  0001 C CNN
F 3 "schon vorhanden" H 6000 2250 50  0001 C CNN
	1    5800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 900  8650 1150
Connection ~ 8650 1150
Wire Wire Line
	8650 1150 9050 1150
Wire Wire Line
	5800 2250 5800 2350
Connection ~ 5800 2350
Wire Wire Line
	5800 2350 6250 2350
$EndSCHEMATC
