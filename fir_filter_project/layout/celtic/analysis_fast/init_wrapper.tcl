set xngMav 1
pushView analysis_fast
foreach view [all_setup_analysis_views] {
  if {$view != "analysis_fast"} {disableView $view 0}
}
foreach view [all_hold_analysis_views] {
  if {$view != "analysis_fast"} {disableView $view 0}
}
siSetActiveView analysis_fast
setSIMode -analysisView analysis_fast
global dbgCktBias
set dbgCktBias 1.250000
suppressMessagesForIPO 1
set pwrNetsV [dumpPwrGndNetVoltageForView -view analysis_fast]
set gndNetsV [dumpPwrGndNetVoltageForView -gnd -view analysis_fast]
suppressMessagesForIPO 0
uplevel #0 initCeltIC 
set cmd { uplevel #0 source celtic_tmp_pnNTAO/analysis_fast/run_celtic.tcl }
eval $cmd
enableViews
popView
