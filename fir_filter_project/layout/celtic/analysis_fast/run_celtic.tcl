suppressMessage -silent SI-2287
suppressMessage -silent SI-2129
set parm_filename_prefix celtic_tmp_pnNTAO/analysis_fast/celtic
set parm_eco_filename_prefix celtic_tmp_pnNTAO/analysis_fast/celtic
setMultiCpuUsage -remoteHost 0 -localCpu 1
set splitCeltIC -1
set PROCESS 90
set EFFORT signoff
set SetVirtualAttackerCmd ""
set SetAttackerSlewCmd ""
set SetParmGtolCmd ""
set SetDelayUsePwlInputWaveCmd ""
set ILM_MODULE {}
set XILM_TGF ""
set TWF_FILE {}
lappend TWF_FILE { -view analysis_fast  { celtic_tmp_pnNTAO/FIR_analysis_fast.twf.gz  } }
set UseDefaultLoadTiming 1
set LoadTimingCmd ""
set rdagMinimizeDiskUsage 1
set PARM_SENSITIVITY 0
set VDD 1.250
set SetOutputCmd ""
set SetGlitchCheckCmd ""
set SetHazardFreeCmd ""
set NOISE_THRESHOLD [expr 20*$VDD/100.0]
set skipHist 0
set UseDefaultAnalyzeNoise 1
set AnalyzeNoiseCmd ""
set skipHist 1
set UseDefaultReportEco 1
set ReportEcoCmd ""
set SDF_PROCESS slow
set UseDefaultGenerateSdf 1
set GenerateSdfCmd ""
set SAVE_ECHO 0
set SAVE_CDB 0
set SAVE_XILM 0
set SIM_PATH 0
set SIM_PATH_WITH_NOISE 0
set USE_CTE 0
set VDD_NETS { VDD}
set GND_NETS { VSS}
set SET_SUPPLY_NETS {set_supply -vdd 1.250 {VDD}
set_supply -gnd 0.000 {VSS}
;}
set DELTA_ABSOLUTE -1
set REPORT_VATT 0
set INS_PRE_TCL {;}
set INS_POST_TCL {}
set INS_POST_NETLIST_TCL {}
source celtic_tmp_pnNTAO/analysis_fast/report_vatt.tcl
source celtic_tmp_pnNTAO/analysis_fast/init_celtic_fe.tcl
if {$REPORT_VATT} {
if {[catch {generate_report -gzip -vatt -delay min -txtfile celtic_tmp_pnNTAO/analysis_fast/celtic.vatt.gz} msg]!=0} {
  report_vatt celtic_tmp_pnNTAO/analysis_fast/celtic.vatt.gz min
}
}
if {$SAVE_XILM} {
save_xilm
}
if {$SAVE_CDB} {
 exec make_cdb create_cdb/celtic_tmp_pnNTAO/analysis_fast/create_cdb.tcl
 catch  [file mkdir celtic/analysis_fast ] 
 exec cp -f [glob -type f create_cdb/celtic_tmp_pnNTAO/analysis_fast/*cdb ] celtic/analysis_fast 
 exec rm -rf create_cdb/celtic_tmp_pnNTAO/analysis_fast
}
free_noise_analysis
edi_pe::peRCDBAccessCleanup
