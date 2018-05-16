
# Source this tcl file from init_celtic.tcl to generate
# victim and aggressor list

proc report_vatt {ofile {delay "max"}} {

  global rptBoth
  global delay_rpt_attName delay_rpt_dir
  set thresh 0.0

  set fileid [cmgzfile_create $ofile "w" 1]
  gzputs $fileid "# Generated from CeltIC"
  gzputs $fileid "# List of Victims and Aggressors"
  gzputs $fileid "# VICTIM <instance:pin> <net_name> <direction (R|F)>"
  gzputs $fileid "#   <aggressor_net_name> <direction (R|F)>"
  gzputs $fileid "# Delay     : $delay"
  gzputs $fileid "# Threshold : $thresh"

  ## Generate custom reports
  set rpt [generate_report -delay $delay -threshold $thresh -custom]

  rpt_foreach_noise n $rpt {

      # Victim net name
      set netName [get_noise_netName $n]
      set level [get_noise_levelType $n]
      regsub { \{} $netName " " netName
      regsub {\}$} $netName "" netName
      gzputs $fileid "VICTIM $netName $level"

      # Aggressor list
      set components [get_delay_constituents $n]
      set listSize [llength $components]
      set i 0
      while {$i < $listSize} {
         set out         [lindex $components $i]
         set attname     [lindex $out $delay_rpt_attName]
         set dir         [lindex $out $delay_rpt_dir]
         incr i
         if {$attname != "" && ![ regexp {^[~]} $attname]} {
            gzputs $fileid "   $attname $dir"
         }
      }

   }
   cmgzfile_delete $fileid
}

