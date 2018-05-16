set xngMav 1
pushView analysis_slow
foreach view [all_setup_analysis_views] {
  if {$view != "analysis_slow"} {disableView $view 0}
}
foreach view [all_hold_analysis_views] {
  if {$view != "analysis_slow"} {disableView $view 0}
}
siSetActiveView analysis_slow
setSIMode -analysisView analysis_slow
global dbgCktBias
set dbgCktBias 0.950000
suppressMessagesForIPO 1
set pwrNetsV [dumpPwrGndNetVoltageForView -view analysis_slow]
set gndNetsV [dumpPwrGndNetVoltageForView -gnd -view analysis_slow]
suppressMessagesForIPO 0
uplevel #0 initCeltIC 
set cmd { uplevel #0 source celtic_tmp_qw5Y1U/analysis_slow/run_celtic.tcl }
eval $cmd
enableViews
popView
