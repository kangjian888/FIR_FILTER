#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Tue May 15 19:43:08 2018                
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
create_rc_corner -name rc_best -cap_table {/afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/fireice/best.captbl} -T {0} -preRoute_res {1.34236} -preRoute_cap {1.10066} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.34236} -postRoute_cap {0.960234} -postRoute_xcap {1.22327} -postRoute_clkres {0.0} -postRoute_clkcap {0.969117 0 0} -qx_tech_file {/afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/fireice/best.tch}
create_rc_corner -name rc_worst -cap_table {/afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/fireice/worst.captbl} -T {125} -preRoute_res {1.34236} -preRoute_cap {1.10066} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.34236} -postRoute_cap {0.960234} -postRoute_xcap {1.22327} -postRoute_clkres {0.0} -postRoute_clkcap {0.969117 0 0} -qx_tech_file {/afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/fireice/worst.tch}
create_library_set -name lib_slow -timing {/afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/NLDM/NangateOpenCellLibrary_slow.lib} -si {/afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/celtic/slow.cdb}
create_library_set -name lib_fast -timing {/afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/NLDM/NangateOpenCellLibrary_fast.lib} -si {/afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/celtic/fast.cdb}
create_constraint_mode -name constraint_slow -sdc_files {designs/divider.mapped.sdc}
create_delay_corner -name delay_corner_slow -library_set {lib_slow} -rc_corner {rc_worst}
create_delay_corner -name delay_corner_fast -library_set {lib_fast} -rc_corner {rc_best}
create_analysis_view -name analysis_slow -constraint_mode {constraint_slow} -delay_corner {delay_corner_slow}
create_analysis_view -name analysis_fast -constraint_mode {constraint_slow} -delay_corner {delay_corner_fast}
set_analysis_view -setup {analysis_slow} -hold {analysis_fast}
save_global fir_filter_project/layout/script/Default.globals
set init_gnd_net VDD
set init_lef_file {../../../dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.tech.lef ../../../dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.macro.lef}
set init_verilog fir_filter_project/layout/design/FIR.mapped.v
set init_mmmc_file fir_filter_project/layout/script/mmmc.view
set init_pwr_net VSS
init_design
set init_gnd_net VDD
set init_lef_file {../../../dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.tech.lef ../../../dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.macro.lef}
set init_verilog fir_filter_project/layout/design/FIR.mapped.v
set init_mmmc_file fir_filter_project/layout/script/mmmc.view
set init_pwr_net VSS
init_design
