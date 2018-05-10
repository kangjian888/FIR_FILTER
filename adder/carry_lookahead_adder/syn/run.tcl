################################################################################
# Filename: dc.tcl
# Author: KANG Jian
# Email: jkangac@connect.ust.hk
# Affiliation: Hong Kong University of Science and Technology
# -------------------------------------------------------------------------------
# This is the template Design Compiler script for ELEC5160/EESM5020.
################################################################################

################################################################################
# Step 0: create directories for results and reports
################################################################################
file mkdir reports; # store area, timing, power reports
file mkdir results; # store design

################################################################################
# Step 1: digital standard cell library set up
# You should specify the following paths accordingly:
# - search_path
# - target_library
# - link_library
################################################################################
set_app_var search_path "/afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/NLDM ../rtl $search_path"
set_app_var target_library "NangateOpenCellLibrary_slow.db"
set_app_var synthetic_library dw_foundation.sldb
set_app_var link_library "* $target_library $synthetic_library"

################################################################################
# Step 2: import design
# You should specify the HDL files for your design accordingly.
# Note: the HDL files should be located in the search_path you defined above.
# Please do NOT import testbench or behavior memory model here.
################################################################################
define_design_lib WORK -path ./WORK
analyze -format verilog {Hiera_CLA.v CLA_basic.v PG_generate.v SUM_generate.v Carry_generate.v}
elaborate Hiera_CLA; # top module name

# store the unmapped results
write -hierarchy -format ddc -output results/Hiera_CLA.unmapped.ddc

################################################################################
# Step 3: constrain your design
# You should specify the critical path, the input & output delay and the
# environment attribute of your design, so that Design Compiler can correctly
# synthesize your design with the required specfication.
################################################################################
# All the constraints are written in the following tcl script
source Hiera_CLA.constraints.tcl

################################################################################
# Create default path groups
#
# Seperate these paths can help improve optimization results.
################################################################################
set ports_clock_root \
  [filter_collection [get_attribute [get_clocks] sources] object_class==port]
group_path -name REGOUT -to [all_outputs]
group_path -name REGIN -from [remove_from_collection [all_inputs] \
  ${ports_clock_root}]
group_path -name FEEDTHROUGH -from \
  [remove_from_collection [all_inputs] ${ports_clock_root}] -to [all_outputs]

################################################################################
# Apply Additional Optimization Constraints
################################################################################
# Prevent assignment statements in the Verilog netlist.
set_fix_multiple_port_nets -all -buffer_constants

################################################################################
# Check for Design Errors. It is a good habit to check the design before you run
# the synthesis.
################################################################################
check_design -summary
check_design > reports/Hiera_CLA.check_design.rpt; # dump to the file

################################################################################
# Step 4: compile the design
# There exits lots of option for compile command. Please check the manual of
# compile for further info.
################################################################################
compile

################################################################################
# Note: compile_ultra does not work for some open source libraries, i.e. Nangate
# since there are some cells missing for these libraries.
# Sol: use compile instead. You can use compile_ultra for the commerial library
# such TSMC45nm, which has a complete set of gates supported.
#
# compile_ultra -no_autoungroup; # keep hierarchy for the purpose of debug
################################################################################

# High-effort area optimization which improves the area without degrading the
# timing or leakage of the compiled design
optimize_netlist -area

################################################################################
# Step 5: write out final design and reports
# The files include:
# - .ddc: binary format used for subsequent Design Compiler sessions
# - .v: Verilog netlist for gate-level simulation and P&R
# - .sdf: SDF backannotated file containing gate and net latency
# - .sdc: SDC constraints for ASCII flow
################################################################################
change_names -rules verilog -hierarchy

# Write out design
write -format verilog -hierarchy -output results/Hiera_CLA.mapped.v
write -format ddc -hierarchy -output results/Hiera_CLA.mapped.ddc
write_sdf results/Hiera_CLA.mapped.sdf
write_sdc -nosplit results/Hiera_CLA.mapped.sdc

# Generate reports
report_qor > reports/Hiera_CLA.mapped.qor.rpt
report_timing -transition_time -nets -attribute -nosplit \
  > reports/Hiera_CLA.mapped.timing.rpt
report_area -nosplit > reports/Hiera_CLA.mapped.area.rpt
report_power -nosplit > reports/Hiera_CLA.mapped.power.rpt

################################################################################
# Exit Design Compiler
################################################################################
exit
