EESchema Schematic File Version 4
LIBS:agc_monitor-cache
EELAYER 26 0
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
L agc_monitor:Styx_P4 J4
U 1 1 5E181846
P 3200 2000
F 0 "J4" H 3200 3250 50  0000 C CNN
F 1 "Styx_P4" H 3200 750 50  0001 C CNN
F 2 "agc_monitor:PinHeader_4x24_P2.54mm_Vertical" H 3550 2000 50  0001 C CNN
F 3 "" H 3550 2000 50  0001 C CNN
	1    3200 2000
	1    0    0    -1  
$EndComp
$Comp
L agc_monitor:Styx_P4 J4
U 2 1 5E1818FF
P 6650 2000
F 0 "J4" H 6650 3250 50  0000 C CNN
F 1 "Styx_P4" H 6650 750 50  0001 C CNN
F 2 "agc_monitor:PinHeader_4x24_P2.54mm_Vertical" H 7000 2000 50  0001 C CNN
F 3 "" H 7000 2000 50  0001 C CNN
	2    6650 2000
	1    0    0    -1  
$EndComp
$Comp
L agc_monitor:Styx_P5 J5
U 1 1 5E181991
P 3200 5050
F 0 "J5" H 3200 6300 50  0000 C CNN
F 1 "Styx_P5" H 3225 6334 50  0001 C CNN
F 2 "agc_monitor:PinHeader_4x24_P2.54mm_Vertical" H 3550 5050 50  0001 C CNN
F 3 "" H 3550 5050 50  0001 C CNN
	1    3200 5050
	1    0    0    -1  
$EndComp
$Comp
L agc_monitor:Styx_P5 J5
U 2 1 5E181A69
P 6650 5050
F 0 "J5" H 6650 6300 50  0000 C CNN
F 1 "Styx_P5" H 6675 6334 50  0001 C CNN
F 2 "agc_monitor:PinHeader_4x24_P2.54mm_Vertical" H 7000 5050 50  0001 C CNN
F 3 "" H 7000 5050 50  0001 C CNN
	2    6650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 850  2050 850 
Wire Wire Line
	2050 850  2050 1050
Wire Wire Line
	2050 2050 2700 2050
Wire Wire Line
	2700 3050 2050 3050
Wire Wire Line
	2050 3200 2050 3050
$Comp
L power:GND #PWR0143
U 1 1 5E182D9B
P 2050 3200
F 0 "#PWR0143" H 2050 2950 50  0001 C CNN
F 1 "GND" H 2055 3027 50  0000 C CNN
F 2 "" H 2050 3200 50  0001 C CNN
F 3 "" H 2050 3200 50  0001 C CNN
	1    2050 3200
	1    0    0    -1  
$EndComp
Text GLabel 2650 1250 0    50   Input ~ 0
MWG
Wire Wire Line
	2650 1250 2700 1250
Wire Wire Line
	2700 1050 2050 1050
Connection ~ 2050 1050
Text Notes 1900 1050 0    50   ~ 0
ADC_BPLSSW_N
Text GLabel 3800 5300 2    50   Input ~ 0
MWCH
Wire Wire Line
	3800 5300 3750 5300
Text GLabel 6100 6000 0    50   Input ~ 0
MWL01
Wire Wire Line
	6100 6000 6150 6000
Text GLabel 6100 5400 0    50   Input ~ 0
MWL05
Wire Wire Line
	6100 5400 6150 5400
Text GLabel 6100 4400 0    50   Input ~ 0
MWL09
Wire Wire Line
	6100 4400 6150 4400
Text GLabel 7250 1950 2    50   Input ~ 0
MWL13
Wire Wire Line
	7250 1950 7200 1950
Text GLabel 7250 5900 2    50   Input ~ 0
MT01
Wire Wire Line
	7250 5900 7200 5900
Text GLabel 7250 5300 2    50   Input ~ 0
MT05
Wire Wire Line
	7250 5300 7200 5300
Text GLabel 2650 1350 0    50   Input ~ 0
MT09
Wire Wire Line
	2650 1350 2700 1350
Text GLabel 6100 2250 0    50   Input ~ 0
MRULOG
Wire Wire Line
	6100 2250 6150 2250
Text GLabel 7250 6000 2    50   Input ~ 0
MST1
Wire Wire Line
	7250 6000 7200 6000
Text GLabel 3800 5400 2    50   Input ~ 0
MWSG
Wire Wire Line
	3800 5400 3750 5400
Text GLabel 7250 4400 2    50   Input ~ 0
MWBG
Wire Wire Line
	7250 4400 7200 4400
Text GLabel 2650 2150 0    50   Input ~ 0
MSQ13
Wire Wire Line
	2650 2150 2700 2150
Text GLabel 3800 6000 2    50   Input ~ 0
MBR1
Wire Wire Line
	3800 6000 3750 6000
Text GLabel 6100 5300 0    50   Input ~ 0
MTCAL_n
Wire Wire Line
	6100 5300 6150 5300
Text GLabel 7250 1350 2    50   Input ~ 0
MGOJAM
Wire Wire Line
	7250 1350 7200 1350
Text GLabel 3800 2350 2    50   Input ~ 0
MONWT
Wire Wire Line
	3800 2350 3750 2350
Text GLabel 3800 2150 2    50   Input ~ 0
MSP
Wire Wire Line
	3800 2150 3750 2150
NoConn ~ 6150 850 
Wire Wire Line
	3750 850  3800 850 
Wire Wire Line
	3800 850  3800 800 
$Comp
L agc_monitor:+3V3_FPGA #PWR0144
U 1 1 5E187E74
P 3800 800
F 0 "#PWR0144" H 3800 650 50  0001 C CNN
F 1 "+3V3_FPGA" H 3800 950 50  0000 C CNN
F 2 "" H 3800 800 50  0001 C CNN
F 3 "" H 3800 800 50  0001 C CNN
	1    3800 800 
	1    0    0    -1  
$EndComp
Text GLabel 2650 1450 0    50   Input ~ 0
MNISQ
Wire Wire Line
	2650 1450 2700 1450
Text GLabel 3800 1050 2    50   Input ~ 0
ADC_BPLSSW_P
Wire Wire Line
	3800 1050 3750 1050
Text GLabel 7250 5200 2    50   Input ~ 0
MRCH
Wire Wire Line
	7250 5200 7200 5200
Text GLabel 6100 5800 0    50   Input ~ 0
MWL02
Wire Wire Line
	6100 5800 6150 5800
Text GLabel 6100 4800 0    50   Input ~ 0
MWL06
Wire Wire Line
	6100 4800 6150 4800
Text GLabel 3800 1550 2    50   Input ~ 0
MWL10
Wire Wire Line
	3800 1550 3750 1550
Text GLabel 7250 2450 2    50   Input ~ 0
MWL14
Wire Wire Line
	7250 2450 7200 2450
Text GLabel 3800 5900 2    50   Input ~ 0
MT02
Wire Wire Line
	3800 5900 3750 5900
Text GLabel 3800 5200 2    50   Input ~ 0
MT06
Wire Wire Line
	3800 5200 3750 5200
Text GLabel 6100 1350 0    50   Input ~ 0
MT10
Wire Wire Line
	6100 1350 6150 1350
Text GLabel 2650 2350 0    50   Input ~ 0
MWFBG
Wire Wire Line
	2650 2350 2700 2350
Wire Wire Line
	3750 2050 4350 2050
Wire Wire Line
	4350 2050 4350 3050
Wire Wire Line
	4350 3050 3750 3050
Wire Wire Line
	4350 3050 4350 3200
Connection ~ 4350 3050
$Comp
L power:GND #PWR0145
U 1 1 5E18F503
P 4350 3200
F 0 "#PWR0145" H 4350 2950 50  0001 C CNN
F 1 "GND" H 4355 3027 50  0000 C CNN
F 2 "" H 4350 3200 50  0001 C CNN
F 3 "" H 4350 3200 50  0001 C CNN
	1    4350 3200
	1    0    0    -1  
$EndComp
Text GLabel 3800 5800 2    50   Input ~ 0
MST2
Wire Wire Line
	3800 5800 3750 5800
Text GLabel 7250 4800 2    50   Input ~ 0
MWZG
Wire Wire Line
	7250 4800 7200 4800
Text GLabel 2650 1550 0    50   Input ~ 0
MSQ10
Wire Wire Line
	2650 1550 2700 1550
Text GLabel 6100 2450 0    50   Input ~ 0
MSQ14
Wire Wire Line
	6100 2450 6150 2450
Text GLabel 2650 5900 0    50   Input ~ 0
MBR2
Wire Wire Line
	2650 5900 2700 5900
Text GLabel 6100 4900 0    50   Input ~ 0
MRPTAL_n
Wire Wire Line
	6100 4900 6150 4900
Text GLabel 7250 1650 2    50   Input ~ 0
MINHL
Wire Wire Line
	7250 1650 7200 1650
Text GLabel 7250 2650 2    50   Input ~ 0
MRSC
Wire Wire Line
	7250 2650 7200 2650
Text GLabel 3800 2450 2    50   Input ~ 0
MRGG
Wire Wire Line
	3800 2450 3750 2450
Wire Wire Line
	2700 3150 2650 3150
Wire Wire Line
	2650 3150 2650 3500
Wire Wire Line
	2650 3500 3000 3500
Wire Wire Line
	3800 3500 3800 3150
Wire Wire Line
	3800 3150 3750 3150
$Comp
L agc_monitor:+3V3_FPGA #PWR0146
U 1 1 5E198095
P 3000 3450
F 0 "#PWR0146" H 3000 3300 50  0001 C CNN
F 1 "+3V3_FPGA" H 3000 3600 50  0000 C CNN
F 2 "" H 3000 3450 50  0001 C CNN
F 3 "" H 3000 3450 50  0001 C CNN
	1    3000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3500 3000 3450
Connection ~ 3000 3500
Wire Wire Line
	3000 3500 3450 3500
Text GLabel 6100 1650 0    50   Input ~ 0
MREQIN
Wire Wire Line
	6100 1650 6150 1650
Wire Wire Line
	5550 1050 6150 1050
Wire Wire Line
	5550 1050 5550 1150
Wire Wire Line
	5550 2050 6150 2050
Wire Wire Line
	6150 3050 5550 3050
Wire Wire Line
	5550 3050 5550 2050
Connection ~ 5550 2050
Wire Wire Line
	5550 3050 5550 3200
Connection ~ 5550 3050
$Comp
L power:GND #PWR0147
U 1 1 5E1A76E9
P 5550 3200
F 0 "#PWR0147" H 5550 2950 50  0001 C CNN
F 1 "GND" H 5555 3027 50  0000 C CNN
F 2 "" H 5550 3200 50  0001 C CNN
F 3 "" H 5550 3200 50  0001 C CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3150 6100 3500
Wire Wire Line
	6100 3500 6650 3500
Wire Wire Line
	7250 3500 7250 3150
$Comp
L agc_monitor:+3V3_FPGA #PWR0148
U 1 1 5E1A97CC
P 6650 3450
F 0 "#PWR0148" H 6650 3300 50  0001 C CNN
F 1 "+3V3_FPGA" H 6650 3600 50  0000 C CNN
F 2 "" H 6650 3450 50  0001 C CNN
F 3 "" H 6650 3450 50  0001 C CNN
	1    6650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3500 6650 3450
Connection ~ 6650 3500
Wire Wire Line
	6650 3500 7250 3500
Wire Wire Line
	6150 3150 6100 3150
Wire Wire Line
	7250 3150 7200 3150
Text Notes 5750 1050 2    50   ~ 0
ADC_4SW_N
Wire Wire Line
	6150 1150 5550 1150
Connection ~ 5550 1150
Wire Wire Line
	5550 1150 5550 2050
Text Notes 5950 1150 2    50   ~ 0
MTLO_N
Wire Wire Line
	1100 2400 450  2400
Text Notes 700  2400 2    50   ~ 0
ADC_3V3_N
Text GLabel 450  2500 2    50   Input ~ 0
ADC_3V3_P
Wire Wire Line
	450  2500 400  2500
Text GLabel 2650 5800 0    50   Input ~ 0
MWL03
Wire Wire Line
	2650 5800 2700 5800
Text GLabel 2650 4800 0    50   Input ~ 0
MWL07
Wire Wire Line
	2650 4800 2700 4800
Text GLabel 7250 1550 2    50   Input ~ 0
MWL11
Wire Wire Line
	7250 1550 7200 1550
Text GLabel 7250 2550 2    50   Input ~ 0
MWL15
Wire Wire Line
	7250 2550 7200 2550
Text GLabel 3800 5600 2    50   Input ~ 0
MT03
Wire Wire Line
	3800 5600 3750 5600
Text GLabel 3800 4600 2    50   Input ~ 0
MT07
Wire Wire Line
	3800 4600 3750 4600
Text GLabel 2650 1750 0    50   Input ~ 0
MT11
Wire Wire Line
	2650 1750 2700 1750
Text GLabel 2650 2650 0    50   Input ~ 0
MWEBG
Wire Wire Line
	2650 2650 2700 2650
Text GLabel 6100 2750 0    50   Input ~ 0
MWBBEG
Wire Wire Line
	6100 2750 6150 2750
Text GLabel 7250 5700 2    50   Input ~ 0
MST3
Wire Wire Line
	7250 5700 7200 5700
Text GLabel 3800 4800 2    50   Input ~ 0
MWYG
Wire Wire Line
	3800 4800 3750 4800
Text GLabel 6100 1550 0    50   Input ~ 0
MSQ11
Wire Wire Line
	6100 1550 6150 1550
Text GLabel 6100 2550 0    50   Input ~ 0
MSQEXT
Wire Wire Line
	6100 2550 6150 2550
Text GLabel 2650 5700 0    50   Input ~ 0
MIIP
Wire Wire Line
	2650 5700 2700 5700
Text GLabel 6100 4600 0    50   Input ~ 0
MPAL_n
Wire Wire Line
	6100 4600 6150 4600
Text GLabel 3800 1850 2    50   Input ~ 0
MINKL
Wire Wire Line
	3800 1850 3750 1850
Text GLabel 3800 2750 2    50   Input ~ 0
MRLG
Wire Wire Line
	3800 2750 3750 2750
Text GLabel 3800 2550 2    50   Input ~ 0
MWAG
Wire Wire Line
	3800 2550 3750 2550
Text GLabel 7250 1050 2    50   Input ~ 0
ADC_4SW_P
Wire Wire Line
	7250 1050 7200 1050
Text GLabel 7250 1150 2    50   Input ~ 0
MTLO
Wire Wire Line
	7250 1150 7200 1150
Text GLabel 2650 1850 0    50   Input ~ 0
MWATCH_n
Wire Wire Line
	2650 1850 2700 1850
Text GLabel 2650 5400 0    50   Input ~ 0
MWL04
Wire Wire Line
	2650 5400 2700 5400
Text GLabel 2650 4400 0    50   Input ~ 0
MWL08
Wire Wire Line
	2650 4400 2700 4400
Text GLabel 3800 1950 2    50   Input ~ 0
MWL12
Wire Wire Line
	3800 1950 3750 1950
Text GLabel 3800 2850 2    50   Input ~ 0
MWL16
Wire Wire Line
	3800 2850 3750 2850
Text GLabel 7250 5600 2    50   Input ~ 0
MT04
Wire Wire Line
	7250 5600 7200 5600
Text GLabel 7250 4600 2    50   Input ~ 0
MT08
Wire Wire Line
	7250 4600 7200 4600
Text GLabel 6100 1750 0    50   Input ~ 0
MT12
Wire Wire Line
	6100 1750 6150 1750
Wire Wire Line
	7200 850  7850 850 
Wire Wire Line
	7850 850  7850 2050
Wire Wire Line
	7850 2050 7200 2050
Wire Wire Line
	7200 3050 7850 3050
Wire Wire Line
	7850 3050 7850 2050
Connection ~ 7850 2050
Wire Wire Line
	7850 3050 7850 3200
Connection ~ 7850 3050
$Comp
L power:GND #PWR0149
U 1 1 5E21F83E
P 7850 3200
F 0 "#PWR0149" H 7850 2950 50  0001 C CNN
F 1 "GND" H 7855 3027 50  0000 C CNN
F 2 "" H 7850 3200 50  0001 C CNN
F 3 "" H 7850 3200 50  0001 C CNN
	1    7850 3200
	1    0    0    -1  
$EndComp
Text GLabel 7250 5500 2    50   Input ~ 0
MTCSA_n
Wire Wire Line
	7250 5500 7200 5500
Text GLabel 3800 4400 2    50   Input ~ 0
MWQG
Wire Wire Line
	3800 4400 3750 4400
Text GLabel 6100 1950 0    50   Input ~ 0
MSQ12
Wire Wire Line
	6100 1950 6150 1950
Text GLabel 7250 2950 2    50   Input ~ 0
MSQ16
Wire Wire Line
	7250 2950 7200 2950
Text GLabel 2650 5500 0    50   Input ~ 0
MCTRAL_n
Wire Wire Line
	2650 5500 2700 5500
Text GLabel 6100 4300 0    50   Input ~ 0
MSTPIT_n
Wire Wire Line
	6100 4300 6150 4300
Text GLabel 7250 2150 2    50   Input ~ 0
MWLG
Wire Wire Line
	7250 2150 7200 2150
Text GLabel 7250 1850 2    50   Input ~ 0
MGP_n
Wire Wire Line
	7250 1850 7200 1850
Text GLabel 7250 2850 2    50   Input ~ 0
MRAG
Wire Wire Line
	7250 2850 7200 2850
NoConn ~ 2700 3900
NoConn ~ 2700 4000
NoConn ~ 2700 4100
NoConn ~ 2700 4200
NoConn ~ 3750 3900
NoConn ~ 3750 4000
NoConn ~ 3750 4100
NoConn ~ 3750 4200
NoConn ~ 2700 6100
NoConn ~ 6150 6100
Wire Wire Line
	2700 5000 1950 5000
Wire Wire Line
	1950 5000 1950 5100
Wire Wire Line
	1950 5100 2700 5100
Wire Wire Line
	1950 5100 1950 6200
Wire Wire Line
	1950 6200 2700 6200
Connection ~ 1950 5100
Wire Wire Line
	3750 5000 4450 5000
Wire Wire Line
	4450 5000 4450 5100
Wire Wire Line
	4450 6200 3750 6200
Wire Wire Line
	3750 5100 4450 5100
Connection ~ 4450 5100
Wire Wire Line
	4450 5100 4450 6200
Wire Wire Line
	6150 5000 5500 5000
Wire Wire Line
	5500 5000 5500 5100
Wire Wire Line
	5500 5100 6150 5100
Wire Wire Line
	5500 5100 5500 6200
Wire Wire Line
	5500 6200 6150 6200
Connection ~ 5500 5100
Wire Wire Line
	7200 3900 7900 3900
Wire Wire Line
	7900 3900 7900 5000
Wire Wire Line
	7200 5100 7900 5100
Wire Wire Line
	7900 5100 7900 5000
Connection ~ 7900 5000
Wire Wire Line
	7900 5100 7900 6200
Wire Wire Line
	7900 6200 7200 6200
Connection ~ 7900 5100
Text GLabel 2650 2550 0    50   Input ~ 0
MOSCAL_n
Wire Wire Line
	2650 2550 2700 2550
Text GLabel 2650 6000 0    50   Output ~ 0
MDT01
Wire Wire Line
	2650 6000 2700 6000
Text GLabel 2650 5200 0    50   Output ~ 0
MDT05
Wire Wire Line
	2650 5200 2700 5200
Text GLabel 3800 1250 2    50   Output ~ 0
MDT09
Wire Wire Line
	3800 1250 3750 1250
Text GLabel 3800 2250 2    50   Output ~ 0
MDT13
Wire Wire Line
	3800 2250 3750 2250
Text GLabel 6100 5700 0    50   Output ~ 0
MNHSBF
Wire Wire Line
	6100 5700 6150 5700
Text GLabel 6100 4700 0    50   Output ~ 0
MSTRT
Wire Wire Line
	6100 4700 6150 4700
Text GLabel 3800 4700 2    50   Output ~ 0
MONPAR
Wire Wire Line
	3800 4700 3750 4700
Text GLabel 6100 1450 0    50   Output ~ 0
DOSCAL
Wire Wire Line
	6100 1450 6150 1450
Text GLabel 3800 4300 2    50   Output ~ 0
NHALGA
Wire Wire Line
	3800 4300 3750 4300
Text GLabel 1150 5350 0    50   Output ~ 0
EN_3V3_AGC
Wire Wire Line
	1200 5350 1150 5350
Text GLabel 2650 2850 0    50   Input ~ 0
MVFAIL_n
Wire Wire Line
	2650 2850 2700 2850
Text GLabel 6100 5900 0    50   Output ~ 0
MDT02
Wire Wire Line
	6100 5900 6150 5900
Text GLabel 6100 5200 0    50   Output ~ 0
MDT06
Wire Wire Line
	6100 5200 6150 5200
Text GLabel 3800 1350 2    50   Output ~ 0
MDT10
Wire Wire Line
	3800 1350 3750 1350
Text GLabel 7250 2250 2    50   Output ~ 0
MDT14
Wire Wire Line
	7250 2250 7200 2250
Text GLabel 6100 5500 0    50   Output ~ 0
MNHNC
Wire Wire Line
	6100 5500 6150 5500
Text GLabel 6100 4500 0    50   Output ~ 0
MSTP
Wire Wire Line
	6100 4500 6150 4500
Text GLabel 3800 4500 2    50   Output ~ 0
MONWBK
Wire Wire Line
	3800 4500 3750 4500
Text GLabel 2650 1650 0    50   Output ~ 0
DBLTST
Wire Wire Line
	2650 1650 2700 1650
Text GLabel 2650 2950 0    50   Output ~ 0
NHSTRT1
Wire Wire Line
	2650 2950 2700 2950
Wire Wire Line
	3750 6100 4700 6100
Wire Wire Line
	4700 6100 4700 5950
$Comp
L agc_monitor:+3V3_FPGA #PWR0150
U 1 1 5E3AF74D
P 4700 5950
F 0 "#PWR0150" H 4700 5800 50  0001 C CNN
F 1 "+3V3_FPGA" H 4700 6100 50  0000 C CNN
F 2 "" H 4700 5950 50  0001 C CNN
F 3 "" H 4700 5950 50  0001 C CNN
	1    4700 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 5E3CC7A0
P 1950 6250
F 0 "#PWR0151" H 1950 6000 50  0001 C CNN
F 1 "GND" H 1955 6077 50  0000 C CNN
F 2 "" H 1950 6250 50  0001 C CNN
F 3 "" H 1950 6250 50  0001 C CNN
	1    1950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6250 1950 6200
Connection ~ 1950 6200
$Comp
L power:GND #PWR0152
U 1 1 5E3D6331
P 4450 6250
F 0 "#PWR0152" H 4450 6000 50  0001 C CNN
F 1 "GND" H 4455 6077 50  0000 C CNN
F 2 "" H 4450 6250 50  0001 C CNN
F 3 "" H 4450 6250 50  0001 C CNN
	1    4450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6250 4450 6200
Connection ~ 4450 6200
$Comp
L power:GND #PWR0153
U 1 1 5E3E0D1C
P 5500 6250
F 0 "#PWR0153" H 5500 6000 50  0001 C CNN
F 1 "GND" H 5505 6077 50  0000 C CNN
F 2 "" H 5500 6250 50  0001 C CNN
F 3 "" H 5500 6250 50  0001 C CNN
	1    5500 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6250 5500 6200
Connection ~ 5500 6200
$Comp
L power:GND #PWR0154
U 1 1 5E3F4571
P 7900 6250
F 0 "#PWR0154" H 7900 6000 50  0001 C CNN
F 1 "GND" H 7905 6077 50  0000 C CNN
F 2 "" H 7900 6250 50  0001 C CNN
F 3 "" H 7900 6250 50  0001 C CNN
	1    7900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 6250 7900 6200
Connection ~ 7900 6200
Wire Wire Line
	6150 3900 6100 3900
Wire Wire Line
	6100 3900 6100 3850
$Comp
L agc_monitor:+3V3_FPGA #PWR0155
U 1 1 5E412C0B
P 6100 3850
F 0 "#PWR0155" H 6100 3700 50  0001 C CNN
F 1 "+3V3_FPGA" H 6100 4000 50  0000 C CNN
F 2 "" H 6100 3850 50  0001 C CNN
F 3 "" H 6100 3850 50  0001 C CNN
	1    6100 3850
	1    0    0    -1  
$EndComp
Text GLabel 6100 2650 0    50   Input ~ 0
MON800
Wire Wire Line
	6100 2650 6150 2650
Text GLabel 7250 4500 2    50   Input ~ 0
MSCDBL_n
Wire Wire Line
	7250 4500 7200 4500
Text GLabel 6100 2150 0    50   Input ~ 0
OUTCOM
Wire Wire Line
	6100 2150 6150 2150
Text GLabel 6100 2950 0    50   Input ~ 0
SIGNY_n
Wire Wire Line
	6100 2950 6150 2950
Text GLabel 2650 5600 0    50   Output ~ 0
MDT03
Wire Wire Line
	2650 5600 2700 5600
Text GLabel 2650 4700 0    50   Output ~ 0
MDT07
Wire Wire Line
	2650 4700 2700 4700
Text GLabel 3800 1750 2    50   Output ~ 0
MDT11
Wire Wire Line
	3800 1750 3750 1750
Text GLabel 3800 2650 2    50   Output ~ 0
MDT15
Wire Wire Line
	3800 2650 3750 2650
Text GLabel 2650 5300 0    50   Output ~ 0
MNHRPT
Wire Wire Line
	2650 5300 2700 5300
Text GLabel 3800 1650 2    50   Output ~ 0
MLDCH
Wire Wire Line
	3800 1650 3750 1650
Text GLabel 2650 2250 0    50   Output ~ 0
MLOAD
Wire Wire Line
	2650 2250 2700 2250
Text GLabel 7250 4900 2    50   Output ~ 0
MAMU
Wire Wire Line
	7250 4900 7200 4900
Text GLabel 2650 2750 0    50   Input ~ 0
MPIPAL_n
Wire Wire Line
	2650 2750 2700 2750
Text GLabel 2650 1950 0    50   Input ~ 0
MWARNF_n
Wire Wire Line
	2650 1950 2700 1950
Text GLabel 2650 2450 0    50   Input ~ 0
MSCAFL_n
Wire Wire Line
	2650 2450 2700 2450
Text GLabel 6100 5600 0    50   Output ~ 0
MDT04
Wire Wire Line
	6100 5600 6150 5600
Text GLabel 2650 4600 0    50   Output ~ 0
MDT08
Wire Wire Line
	2650 4600 2700 4600
Text GLabel 7250 1750 2    50   Output ~ 0
MDT12
Wire Wire Line
	7250 1750 7200 1750
Text GLabel 7250 2750 2    50   Output ~ 0
MDT16
Wire Wire Line
	7250 2750 7200 2750
Text GLabel 2650 4900 0    50   Output ~ 0
MTCSAI
Wire Wire Line
	2650 4900 2700 4900
Text GLabel 7250 1450 2    50   Output ~ 0
MRDCH
Wire Wire Line
	7250 1450 7200 1450
Text GLabel 6100 2350 0    50   Output ~ 0
MREAD
Wire Wire Line
	6100 2350 6150 2350
Text GLabel 2650 4300 0    50   Output ~ 0
MSBSTP
Wire Wire Line
	2650 4300 2700 4300
Text GLabel 3800 5700 2    50   Output ~ 0
MSP803
Wire Wire Line
	3800 5700 3750 5700
Text GLabel 7250 5400 2    50   Output ~ 0
MSP805
Wire Wire Line
	7250 5400 7200 5400
Text GLabel 3800 4900 2    50   Output ~ 0
MSP806
Wire Wire Line
	3800 4900 3750 4900
Text GLabel 7250 4700 2    50   Output ~ 0
MSP807
Wire Wire Line
	7250 4700 7200 4700
Text GLabel 7250 5800 2    50   Output ~ 0
MSP902
Wire Wire Line
	7250 5800 7200 5800
Text GLabel 3800 5500 2    50   Output ~ 0
MSP904
Wire Wire Line
	3800 5500 3750 5500
Text GLabel 3800 1450 2    50   Output ~ 0
MSP910
Wire Wire Line
	3800 1450 3750 1450
Text GLabel 2650 4500 0    50   Output ~ 0
MSP908
Wire Wire Line
	2650 4500 2700 4500
Text GLabel 6100 1850 0    50   Output ~ 0
MSP912
Wire Wire Line
	6100 1850 6150 1850
Text GLabel 7250 2350 2    50   Output ~ 0
MSP914
Wire Wire Line
	7250 2350 7200 2350
Text GLabel 6100 2850 0    50   Output ~ 0
MSP916
Wire Wire Line
	6100 2850 6150 2850
Wire Wire Line
	1200 5650 600  5650
Text Label 600  5650 0    50   ~ 0
LED1
Wire Wire Line
	4450 4600 5050 4600
Text Label 5050 4600 2    50   ~ 0
LED2
Wire Wire Line
	6200 7000 5600 7000
Text Label 5600 7000 0    50   ~ 0
LED3
Wire Wire Line
	8100 5250 8700 5250
Text Label 8700 5250 2    50   ~ 0
LED4
Wire Wire Line
	1200 5750 600  5750
Text Label 600  5750 0    50   ~ 0
DBG3
Wire Wire Line
	4450 4700 5050 4700
Text Label 5050 4700 2    50   ~ 0
DBG4
Wire Wire Line
	6200 7100 5600 7100
Text Label 5600 7100 0    50   ~ 0
DBG5
Wire Wire Line
	8100 5350 8700 5350
Text Label 8700 5350 2    50   ~ 0
DBG6
Wire Wire Line
	8650 1350 8150 1350
Text Label 8150 1350 0    50   ~ 0
DBG1
Wire Wire Line
	8150 1200 8700 1200
Text Label 8700 1200 2    50   ~ 0
DBG2
Wire Wire Line
	6200 7200 5600 7200
Text Label 5600 7200 0    50   ~ 0
DBG7
Wire Wire Line
	8100 5450 8700 5450
Text Label 8700 5450 2    50   ~ 0
DBG8
Wire Wire Line
	7200 6100 8150 6100
Wire Wire Line
	8150 6100 8150 5950
$Comp
L agc_monitor:+3V3_FPGA #PWR0156
U 1 1 5E79C345
P 8150 5950
F 0 "#PWR0156" H 8150 5800 50  0001 C CNN
F 1 "+3V3_FPGA" H 8150 6100 50  0000 C CNN
F 2 "" H 8150 5950 50  0001 C CNN
F 3 "" H 8150 5950 50  0001 C CNN
	1    8150 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5000 7900 5000
$Comp
L power:GND #PWR0157
U 1 1 5E983484
P 9500 2800
F 0 "#PWR0157" H 9500 2550 50  0001 C CNN
F 1 "GND" H 9505 2627 50  0000 C CNN
F 2 "" H 9500 2800 50  0001 C CNN
F 3 "" H 9500 2800 50  0001 C CNN
	1    9500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2800 9500 2750
Wire Wire Line
	9500 2750 9550 2750
$Comp
L agc_monitor:+3V3_IO #PWR0158
U 1 1 5E993DA6
P 9500 1800
F 0 "#PWR0158" H 9500 1650 50  0001 C CNN
F 1 "+3V3_IO" H 9485 1973 50  0000 C CNN
F 2 "" H 9500 1800 50  0001 C CNN
F 3 "" H 9500 1800 50  0001 C CNN
	1    9500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1800 9500 1850
Wire Wire Line
	9500 1850 9550 1850
Wire Wire Line
	9550 1950 9200 1950
Text Label 9200 1950 0    50   ~ 0
DBG1
Wire Wire Line
	9550 2050 9200 2050
Text Label 9200 2050 0    50   ~ 0
DBG2
Wire Wire Line
	9550 2150 9200 2150
Text Label 9200 2150 0    50   ~ 0
DBG3
Wire Wire Line
	9550 2250 9200 2250
Text Label 9200 2250 0    50   ~ 0
DBG4
$Comp
L Device:LED D4
U 1 1 5E9D86D0
P 9750 3900
F 0 "D4" H 9750 4000 50  0000 C CNN
F 1 "LED" H 9741 4025 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9750 3900 50  0001 C CNN
F 3 "~" H 9750 3900 50  0001 C CNN
	1    9750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3900 9000 3900
Text Label 9000 3900 0    50   ~ 0
LED1
$Comp
L Device:R_US R21
U 1 1 5E9EAC57
P 9400 3900
F 0 "R21" V 9300 3900 50  0000 C CNN
F 1 "330" V 9500 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9440 3890 50  0001 C CNN
F 3 "~" H 9400 3900 50  0001 C CNN
	1    9400 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 3900 9550 3900
Wire Wire Line
	9900 3900 9950 3900
Wire Wire Line
	9950 3900 9950 3800
$Comp
L agc_monitor:+3V3_FPGA #PWR0159
U 1 1 5EA31B9C
P 9950 3800
F 0 "#PWR0159" H 9950 3650 50  0001 C CNN
F 1 "+3V3_FPGA" H 9935 3973 50  0000 C CNN
F 2 "" H 9950 3800 50  0001 C CNN
F 3 "" H 9950 3800 50  0001 C CNN
	1    9950 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5EA444DA
P 9750 4200
F 0 "D5" H 9750 4300 50  0000 C CNN
F 1 "LED" H 9741 4325 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9750 4200 50  0001 C CNN
F 3 "~" H 9750 4200 50  0001 C CNN
	1    9750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4200 9000 4200
Text Label 9000 4200 0    50   ~ 0
LED2
$Comp
L Device:R_US R22
U 1 1 5EA444E2
P 9400 4200
F 0 "R22" V 9300 4200 50  0000 C CNN
F 1 "330" V 9500 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9440 4190 50  0001 C CNN
F 3 "~" H 9400 4200 50  0001 C CNN
	1    9400 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 4200 9550 4200
Wire Wire Line
	9950 3900 9950 4200
Wire Wire Line
	9950 4200 9900 4200
Connection ~ 9950 3900
$Comp
L Device:LED D6
U 1 1 5EA8C97F
P 9750 4500
F 0 "D6" H 9750 4600 50  0000 C CNN
F 1 "LED" H 9741 4625 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9750 4500 50  0001 C CNN
F 3 "~" H 9750 4500 50  0001 C CNN
	1    9750 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4500 9000 4500
Text Label 9000 4500 0    50   ~ 0
LED3
$Comp
L Device:R_US R23
U 1 1 5EA8C987
P 9400 4500
F 0 "R23" V 9300 4500 50  0000 C CNN
F 1 "330" V 9500 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9440 4490 50  0001 C CNN
F 3 "~" H 9400 4500 50  0001 C CNN
	1    9400 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 4500 9550 4500
Wire Wire Line
	9900 4500 9950 4500
$Comp
L Device:LED D7
U 1 1 5EA8C98F
P 9750 4800
F 0 "D7" H 9750 4900 50  0000 C CNN
F 1 "LED" H 9741 4925 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9750 4800 50  0001 C CNN
F 3 "~" H 9750 4800 50  0001 C CNN
	1    9750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4800 9000 4800
Text Label 9000 4800 0    50   ~ 0
LED4
$Comp
L Device:R_US R24
U 1 1 5EA8C997
P 9400 4800
F 0 "R24" V 9300 4800 50  0000 C CNN
F 1 "330" V 9500 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9440 4790 50  0001 C CNN
F 3 "~" H 9400 4800 50  0001 C CNN
	1    9400 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 4800 9550 4800
Wire Wire Line
	9950 4800 9900 4800
Wire Wire Line
	9950 4500 9950 4200
Connection ~ 9950 4200
Wire Wire Line
	9950 4800 9950 4500
Connection ~ 9950 4500
$Comp
L Connector_Generic:Conn_01x10 J3
U 1 1 5D1DF496
P 9750 2250
F 0 "J3" H 9829 2196 50  0000 L CNN
F 1 "Conn_01x10" H 9830 2151 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 9750 2250 50  0001 C CNN
F 3 "~" H 9750 2250 50  0001 C CNN
	1    9750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2350 9200 2350
Text Label 9200 2350 0    50   ~ 0
DBG5
Wire Wire Line
	9550 2450 9200 2450
Text Label 9200 2450 0    50   ~ 0
DBG6
Wire Wire Line
	9550 2550 9200 2550
Text Label 9200 2550 0    50   ~ 0
DBG7
Wire Wire Line
	9550 2650 9200 2650
Text Label 9200 2650 0    50   ~ 0
DBG8
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DCB357C
P 3450 3450
F 0 "#FLG0102" H 3450 3525 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 3600 50  0000 C CNN
F 2 "" H 3450 3450 50  0001 C CNN
F 3 "~" H 3450 3450 50  0001 C CNN
	1    3450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3450 3450 3500
Connection ~ 3450 3500
Wire Wire Line
	3450 3500 3800 3500
Text GLabel 3800 2950 2    50   Output ~ 0
NHSTRT2
Wire Wire Line
	3800 2950 3750 2950
Wire Wire Line
	2050 1050 2050 2050
Wire Wire Line
	2050 2050 2050 3050
Connection ~ 2050 2050
Connection ~ 2050 3050
$EndSCHEMATC
