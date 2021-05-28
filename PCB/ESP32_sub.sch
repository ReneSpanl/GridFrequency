EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Interface_USB:CH340G U?
U 1 1 5FB20C09
P 3900 4050
AR Path="/5FB20C09" Ref="U?"  Part="1" 
AR Path="/5FB11C9D/5FB20C09" Ref="U?"  Part="1" 
F 0 "U?" H 3900 3361 50  0000 C CNN
F 1 "CH340G" H 3900 3270 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3950 3500 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 3550 4850 50  0001 C CNN
	1    3900 4050
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32D U?
U 1 1 5FB20C0F
P 9250 3800
AR Path="/5FB20C0F" Ref="U?"  Part="1" 
AR Path="/5FB11C9D/5FB20C0F" Ref="U?"  Part="1" 
F 0 "U?" H 9250 5381 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 9250 5290 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 9250 2300 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 8950 3850 50  0001 C CNN
	1    9250 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5FB20C15
P 3250 4350
AR Path="/5FB20C15" Ref="Y?"  Part="1" 
AR Path="/5FB11C9D/5FB20C15" Ref="Y?"  Part="1" 
F 0 "Y?" V 3204 4219 50  0000 R CNN
F 1 "12Mhz" V 3295 4219 50  0000 R CNN
F 2 "" H 3250 4350 50  0001 C CNN
F 3 "~" H 3250 4350 50  0001 C CNN
	1    3250 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 4500 3250 4550
Wire Wire Line
	3250 4550 3350 4550
Wire Wire Line
	3500 4550 3500 4450
Wire Wire Line
	3250 4200 3250 4150
Wire Wire Line
	3250 4150 3500 4150
Wire Wire Line
	3500 4150 3500 4250
$Comp
L Connector:USB_B_Micro J?
U 1 1 5FB20EB9
P 800 4050
F 0 "J?" H 857 4517 50  0000 C CNN
F 1 "USB_B_Micro" H 857 4426 50  0000 C CNN
F 2 "" H 950 4000 50  0001 C CNN
F 3 "~" H 950 4000 50  0001 C CNN
	1    800  4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  4450 750  4450
Wire Wire Line
	750  4450 750  4550
Connection ~ 750  4450
Wire Wire Line
	750  4450 800  4450
Text HLabel 750  4550 3    50   Input ~ 0
GND
Wire Wire Line
	1100 4050 2350 4050
Wire Wire Line
	2350 4050 2350 3950
Wire Wire Line
	2350 3950 3500 3950
Wire Wire Line
	3500 4050 2450 4050
Wire Wire Line
	2450 4050 2450 4150
Wire Wire Line
	2450 4150 1100 4150
NoConn ~ 1100 4250
Text HLabel 9250 2250 1    50   Input ~ 0
+3V3
Wire Wire Line
	9250 2250 9250 2400
$Comp
L power:GND #PWR0136
U 1 1 5FB655B0
P 9250 5300
F 0 "#PWR0136" H 9250 5050 50  0001 C CNN
F 1 "GND" H 9255 5127 50  0000 C CNN
F 2 "" H 9250 5300 50  0001 C CNN
F 3 "" H 9250 5300 50  0001 C CNN
	1    9250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5200 9250 5300
$Comp
L Device:C_Small C?
U 1 1 5FB66982
P 3350 4750
F 0 "C?" H 3442 4796 50  0000 L CNN
F 1 "22p" H 3442 4705 50  0000 L CNN
F 2 "" H 3350 4750 50  0001 C CNN
F 3 "~" H 3350 4750 50  0001 C CNN
	1    3350 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FB67D87
P 2700 4750
F 0 "C?" H 2792 4796 50  0000 L CNN
F 1 "22p" H 2792 4705 50  0000 L CNN
F 2 "" H 2700 4750 50  0001 C CNN
F 3 "~" H 2700 4750 50  0001 C CNN
	1    2700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4650 2700 4150
Wire Wire Line
	2700 4150 3250 4150
Connection ~ 3250 4150
Wire Wire Line
	3350 4550 3350 4650
Connection ~ 3350 4550
Wire Wire Line
	3350 4550 3500 4550
Wire Wire Line
	2700 4850 2700 4950
Wire Wire Line
	2700 4950 3050 4950
Wire Wire Line
	3350 4950 3350 4850
Connection ~ 3050 4950
Wire Wire Line
	3050 4950 3350 4950
$Comp
L power:GND #PWR0137
U 1 1 5FB698EE
P 3900 4750
F 0 "#PWR0137" H 3900 4500 50  0001 C CNN
F 1 "GND" H 3905 4577 50  0000 C CNN
F 2 "" H 3900 4750 50  0001 C CNN
F 3 "" H 3900 4750 50  0001 C CNN
	1    3900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4650 3900 4750
$Comp
L power:GND #PWR0138
U 1 1 5FB69F98
P 3050 5100
F 0 "#PWR0138" H 3050 4850 50  0001 C CNN
F 1 "GND" H 3055 4927 50  0000 C CNN
F 2 "" H 3050 5100 50  0001 C CNN
F 3 "" H 3050 5100 50  0001 C CNN
	1    3050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4950 3050 5100
Text HLabel 3850 3150 1    50   Input ~ 0
+3V3
Wire Wire Line
	3850 3150 3850 3400
Wire Wire Line
	3850 3400 3800 3400
Wire Wire Line
	3800 3400 3800 3450
Wire Wire Line
	3850 3400 3900 3400
Wire Wire Line
	3900 3400 3900 3450
Connection ~ 3850 3400
Text Label 4500 3650 0    50   ~ 0
TX_CH340_OUT
Wire Wire Line
	4500 3650 4300 3650
Wire Wire Line
	4300 3750 4500 3750
Text Label 4500 3750 0    50   ~ 0
RX_CH340_OUT
Text Label 10200 2900 0    50   ~ 0
TX_CH340_OUT
Text Label 10200 2700 0    50   ~ 0
RX_CH340_OUT
Wire Wire Line
	10200 2900 9850 2900
Wire Wire Line
	10200 2700 9850 2700
NoConn ~ 4300 3950
NoConn ~ 4300 4050
NoConn ~ 4300 4150
NoConn ~ 4300 4250
$EndSCHEMATC
