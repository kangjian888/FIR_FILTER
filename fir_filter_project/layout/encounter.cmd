#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Tue May 15 21:21:28 2018                
#                                                     
#######################################################

#@(#)CDS: Encounter v14.26-s039_1 (64bit) 07/15/2015 11:34 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute v14.26-s022 NR150713-1956/14_26-UB (database version 2.30, 267.6.1) {superthreading v1.25}
#@(#)CDS: CeltIC v14.26-s013_1 (64bit) 07/14/2015 03:32:40 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 14.26-s007 (64bit) 07/15/2015 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 14.26-s010_1 (64bit) Jul 15 2015 01:38:12 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v14.26-s026
#@(#)CDS: IQRC/TQRC 14.2.2-s217 (64bit) Wed Apr 15 23:10:24 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set _timing_library_enable_mt_flow 0
set conf_ioOri R0
set conf_row_height 1.400000
set dcgHonorSignalNetNDR 1
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set distributed_client_message_echo 1
set fpIsMaxIoHeight 0
set fp_core_height 75.600000
set fp_core_to_bottom 6.020000
set fp_core_to_left 6.080000
set fp_core_to_right 6.080000
set fp_core_to_top 6.020000
set fp_core_width 128.800000
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set init_gnd_net VSS
set init_lef_file {../../../../../dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.tech.lef ../../../../../dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.macro.lef}
set init_mmmc_file script/mmmc.view
set init_oa_search_lib {}
set init_pwr_net VDD
set init_verilog design/FIR.mapped.v
set lsgOCPGainMult 1.000000
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
set timing_library_float_precision_tol 0.000010
set timing_library_load_pin_cap_indices {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
save_global script/FIR.globals
set init_io_file script/FIR.ioc
init_design
fit
setDrawView fplan
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.66 0.5 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.653991148992 0.5 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
selectObject Module MAC_inst_2
deselectAll
selectObject Module MAC_inst_2
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.653991148992 0.5 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.653991148992 0.5 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
deselectAll
selectObject Module MAC_inst_2
uiSetTool move
setObjFPlanBox Module MAC_inst_2 12.074 51.6695 55.506 81.397
deselectAll
selectObject Module CONFIG_inst
setObjFPlanBox Module CONFIG_inst 77.1215 50.94 125.281 83.903
deselectAll
selectObject Module MAC_inst_1
setObjFPlanBox Module MAC_inst_1 12.8755 18.9935 56.3075 48.721
deselectAll
selectObject Module MAC_inst_4
setObjFPlanBox Module MAC_inst_4 57.519 17.1225 100.951 46.85
deselectAll
selectObject Module MAC_inst_3
setObjFPlanBox Module MAC_inst_3 11.9465 36.3855 55.3785 66.113
fit
deselectAll
selectObject Module CONFIG_inst
setObjFPlanBox Module CONFIG_inst 75.1425 49.821 123.2125 83.421
deselectAll
selectObject Module MAC_inst_4
setObjFPlanBox Module MAC_inst_4 79.83 18.3615 123.34 47.7615
setObjFPlanBox Module MAC_inst_4 76.946 17.621 120.456 47.021
deselectAll
selectObject Module MAC_inst_1
setObjFPlanBox Module MAC_inst_1 29.1865 9.6305 72.6965 39.0305
deselectAll
selectObject Module MAC_inst_4
setObjFPlanBox Module MAC_inst_4 82.0865 7.66 125.5965 37.06
deselectAll
selectObject Module MAC_inst_1
setObjFPlanBox Module MAC_inst_1 36.537 7.3665 80.047 36.7665
deselectAll
selectObject Module CONFIG_inst
setObjFPlanBox Module CONFIG_inst 77.9035 38.433 125.9735 72.033
deselectAll
selectObject Module MAC_inst_3
setObjFPlanBox Module MAC_inst_3 30.6625 41.529 74.1725 70.929
deselectAll
selectObject Module MAC_inst_2
setObjFPlanBox Module MAC_inst_2 -3.6785 30.3885 39.8315 59.7885
deselectAll
selectObject Module MAC_inst_3
setObjFPlanBox Module MAC_inst_3 32.017 40.164 75.527 69.564
setObjFPlanBox Module MAC_inst_3 8.138 54.6025 51.648 84.0025
deselectAll
selectObject Module CONFIG_inst
setObjFPlanBox Module CONFIG_inst 77.044 49.778 125.114 83.378
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.6 0.5 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.586956521739 0.499996 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
deselectAll
selectObject Module CONFIG_inst
windowSelect 114.705 63.486 116.849 57.323
uiSetTool move
selectObject Module CONFIG_inst
setObjFPlanBox Module CONFIG_inst 86.1955 45.4005 134.2655 79.0005
deselectAll
selectObject Module MAC_inst_4
setObjFPlanBox Module MAC_inst_4 92.263 7.688 135.773 37.088
deselectAll
selectObject Module MAC_inst_1
setObjFPlanBox Module MAC_inst_1 46.797 7.554 90.307 36.954
deselectAll
selectObject Module MAC_inst_2
setObjFPlanBox Module MAC_inst_2 2.0095 7.042 45.5195 36.442
deselectAll
selectObject Module MAC_inst_1
setObjFPlanBox Module MAC_inst_1 47.678 7.286 91.188 36.686
deselectAll
selectObject Module MAC_inst_2
setObjFPlanBox Module MAC_inst_2 3.028 7.152 46.538 36.552
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.7 0.499996 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.55 0.499984 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
deselectAll
selectObject Module MAC_inst_4
uiSetTool move
deselectAll
selectObject Module MAC_inst_3
setObjFPlanBox Module MAC_inst_3 9.7515 42.366 53.2615 71.766
deselectAll
selectObject Module CONFIG_inst
setObjFPlanBox Module CONFIG_inst 84.81 40.211 132.88 73.811
deselectAll
selectObject Module MAC_inst_4
setObjFPlanBox Module MAC_inst_4 94.8445 7.42 138.3545 36.82
deselectAll
selectObject Module MAC_inst_1
setObjFPlanBox Module MAC_inst_1 50.0625 7.0245 93.5725 36.4245
deselectAll
selectObject Module MAC_inst_2
setObjFPlanBox Module MAC_inst_2 7.258 7.42 50.768 36.82
deselectAll
selectObject Module MAC_inst_1
setObjFPlanBox Module MAC_inst_1 51.6835 7.42 95.1935 36.82
deselectAll
selectObject Module MAC_inst_4
setObjFPlanBox Module MAC_inst_4 57.77 43.405 101.28 72.805
flipModule MAC_inst_4 X
flipModule MAC_inst_4 Y
setObjFPlanBox Module MAC_inst_4 52.751 29.716 96.261 59.116
setObjFPlanBox Module MAC_inst_4 55.72 40.8925 99.23 70.2925
deselectAll
selectObject Module CONFIG_inst
setObjFPlanBox Module CONFIG_inst 85.0035 36.061 133.0735 69.661
selectModule CONFIG_inst
setObjFPlanBox Module CONFIG_inst 83.7435 40.0335 131.8135 73.6335
flipModule CONFIG_inst X
flipModule CONFIG_inst Y
setObjFPlanBox Module CONFIG_inst 91.6985 23.539 139.7685 57.139
flipModule CONFIG_inst Y
setObjFPlanBox Module CONFIG_inst 89.2655 19.343 137.3355 52.943
flipOrRotateObject -rotate R90
flipOrRotateObject -rotate R90
setObjFPlanBox Module CONFIG_inst 89.564 20.5475 137.634 54.1475
flipOrRotateObject -rotate R90
flipOrRotateObject -rotate R90
flipOrRotateObject -rotate R90
flipOrRotateObject -rotate R90
flipOrRotateObject -rotate R90
setObjFPlanBox Module CONFIG_inst 86.854 22.3925 120.454 70.4625
setObjFPlanBox Module CONFIG_inst 101.9885 15.4385 135.6185 63.0385
deselectAll
selectObject Module MAC_inst_4
setObjFPlanBox Module MAC_inst_4 54.6155 42.47 98.1255 71.87
deselectAll
selectObject Module MAC_inst_3
setObjFPlanBox Module MAC_inst_3 7.3175 42.42 50.8275 71.82
deselectAll
selectObject Module MAC_inst_4
setObjFPlanBox Module MAC_inst_4 52.0255 37.9385 95.5355 67.3385
deselectAll
selectObject Module MAC_inst_3
setObjFPlanBox Module MAC_inst_3 7.0145 38.07 50.5245 67.47
deselectAll
selectObject Module MAC_inst_4
deselectAll
selectObject Module CONFIG_inst
setObjFPlanBox Module CONFIG_inst 97.2845 12.92 130.9145 60.52
deselectAll
selectObject Module MAC_inst_4
setObjFPlanBox Module MAC_inst_4 51.6645 38.3515 95.1745 67.7515
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.544258373206 0.6 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.55 0.599991 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.5 0.599991 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.489111447537 0.599972 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
deselectAll
selectObject Module MAC_inst_2
uiSetTool move
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.51 0.59996 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.489092461765 0.599948 6.08 6.02 6.08 6.02
uiSetTool select
getIoFlowFlag
fit
saveDesign FIR.enc
globalNetConnect VDD -type pgpin -pin VDD -all
globalNetConnect VSS -type pgpin -pin VSS -all
globalNetConnect VDD -type tiehi
globalNetConnect VSS -type tielo
saveDesign FIR.enc
setLayerPreference pinObj -isVisible 1
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer metal10 -type core_rings -jog_distance 0.095 -threshold 0.095 -nets {VSS VDD} -follow core -stacked_via_bottom_layer metal1 -layer {bottom metal9 top metal9 right metal8 left metal8} -width 1.5 -spacing 0.9 -offset 0.095
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer metal10 -type core_rings -jog_distance 0.095 -threshold 0.095 -nets {VSS VDD} -follow core -stacked_via_bottom_layer metal1 -layer {bottom metal9 top metal9 right metal8 left metal8} -width 1.5 -spacing 0.9 -offset 0.095
set sprCreateIeStripeNets {}
set sprCreateIeStripeLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeSpacing 2.0
set sprCreateIeStripeThreshold 1.0
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer metal10 -type core_rings -jog_distance 0.095 -threshold 0.095 -nets {VSS VDD} -follow core -stacked_via_bottom_layer metal1 -layer {bottom metal9 top metal9 right metal10 left metal10} -width 1.5 -spacing 0.9 -offset 0.095
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer metal10 -type core_rings -jog_distance 0.095 -threshold 0.095 -nets {VSS VDD} -follow core -stacked_via_bottom_layer metal1 -layer {bottom metal9 top metal9 right metal10 left metal10} -width 1.5 -spacing 0.9 -offset 0.095
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit metal10 -max_same_layer_jog_length 1.6 -padcore_ring_bottom_layer_limit metal9 -number_of_sets 1 -skip_via_on_pin Standardcell -stacked_via_top_layer metal10 -padcore_ring_top_layer_limit metal10 -spacing 0.9 -xleft_offset 20 -merge_stripes_value 0.095 -layer metal10 -block_ring_bottom_layer_limit metal9 -width 1.25 -nets {VDD VSS} -stacked_via_bottom_layer metal1
deselectAll
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit metal10 -max_same_layer_jog_length 1.6 -padcore_ring_bottom_layer_limit metal9 -number_of_sets 4 -skip_via_on_pin Standardcell -stacked_via_top_layer metal10 -padcore_ring_top_layer_limit metal10 -spacing 0.9 -xleft_offset 20 -merge_stripes_value 0.095 -layer metal10 -block_ring_bottom_layer_limit metal9 -width 1.25 -nets {VDD VSS} -stacked_via_bottom_layer metal1
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit metal10 -max_same_layer_jog_length 1.6 -padcore_ring_bottom_layer_limit metal9 -number_of_sets 3 -skip_via_on_pin Standardcell -stacked_via_top_layer metal10 -padcore_ring_top_layer_limit metal10 -spacing 0.9 -xleft_offset 20 -merge_stripes_value 0.095 -layer metal10 -block_ring_bottom_layer_limit metal9 -width 1.25 -nets {VDD VSS} -stacked_via_bottom_layer metal1
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit metal10 -max_same_layer_jog_length 1.6 -padcore_ring_bottom_layer_limit metal9 -number_of_sets 1 -skip_via_on_pin Standardcell -stacked_via_top_layer metal10 -padcore_ring_top_layer_limit metal10 -spacing 0.9 -xleft_offset 20 -merge_stripes_value 0.095 -layer metal10 -block_ring_bottom_layer_limit metal9 -width 1.25 -nets {VDD VSS} -stacked_via_bottom_layer metal1
selectObject Module MAC_inst_4
deselectAll
selectWire 61.2150 1.0600 62.4650 73.9800 10 VDD
deselectAll
selectObject Module MAC_inst_4
deselectAll
selectWire 131.4850 1.0600 132.7350 73.9800 10 VDD
deleteSelectedFromFPlan
selectWire 131.4900 72.7300 132.7400 73.9800 10 VDD
deleteSelectedFromFPlan
selectWire 133.6350 3.4600 134.8850 71.5800 10 VSS
deleteSelectedFromFPlan
selectWire 133.6400 3.4600 134.8900 71.5800 10 VSS
deleteSelectedFromFPlan
selectWire 98.5000 3.4600 99.7500 71.5800 10 VSS
deleteSelectedFromFPlan
selectWire 96.3500 1.0600 97.6000 73.9800 10 VDD
deleteSelectedFromFPlan
selectWire 80.9350 3.4600 82.1850 71.5800 10 VSS
deleteSelectedFromFPlan
selectWire 78.7850 1.0600 80.0350 73.9800 10 VDD
deleteSelectedFromFPlan
selectWire 63.3650 3.4600 64.6150 71.5800 10 VSS
deleteSelectedFromFPlan
selectWire 61.2150 1.0600 62.4650 73.9800 10 VDD
deleteSelectedFromFPlan
selectWire 28.2300 3.4600 29.4800 71.5800 10 VSS
deleteSelectedFromFPlan
selectWire 26.0800 1.0600 27.3300 73.9800 10 VDD
deleteSelectedFromFPlan
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit metal10 -max_same_layer_jog_length 1.6 -padcore_ring_bottom_layer_limit metal9 -number_of_sets 3 -skip_via_on_pin Standardcell -stacked_via_top_layer metal10 -padcore_ring_top_layer_limit metal10 -spacing 0.9 -xleft_offset 20 -merge_stripes_value 0.095 -layer metal10 -block_ring_bottom_layer_limit metal9 -width 1.25 -nets {VDD VSS} -stacked_via_bottom_layer metal1
selectWire 131.4900 1.0600 132.7400 73.9800 10 VDD
deleteSelectedFromFPlan
selectWire 133.6400 3.4600 134.8900 71.5800 10 VSS
deleteSelectedFromFPlan
selectWire 26.0800 1.0600 27.3300 73.9800 10 VDD
deleteSelectedFromFPlan
selectWire 28.2300 3.4600 29.4800 71.5800 10 VSS
deleteSelectedFromFPlan
saveDesign FIR.enc
selectObject Module MAC_inst_4
deselectAll
selectObject Module MAC_inst_4
setDrawView ameba
setDrawView place
setDrawView fplan
sroute -connect { corePin } -layerChangeRange { metal1 metal10 } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { metal1 metal10 } -nets { VDD VSS } -allowLayerChange 1 -targetViaLayerRange { metal1 metal10 }
setEndCapMode -reset
setEndCapMode -boundary_tap false
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -modulePlan 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 0 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setMultiCpuUsage -localCpu 1 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true
setDistributeHost -local
setPlaceMode -fp false
placeDesign
setDrawView ameba
setDrawView place
fit
fit
fit
saveDesign FIR.enc
setExtractRCMode -engine preRoute
optDesign -preCTS -outDir reports/preCTSTimingReports
saveDesign FIR.enc
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
deselectAll
report_timing
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
selectWire 74.7300 46.2350 81.2600 46.3050 3 MAC_inst_3/n200
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all -early > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
windowSelect -15.582 91.192 171.635 -29.834
windowSelect 155.933 59.547 157.865 57.614
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all -early > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all -early > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -slackReports -numPaths 50 -prefix FIR_preCTS -outDir timingReports
