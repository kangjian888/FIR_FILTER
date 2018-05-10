################################################################################
# Filename: divider.constraints.tcl
# Author: ZHU Jingyang
# Email: jzhuak@connect.ust.hk
# Affiliation: Hong Kong University of Science and Technology
# -------------------------------------------------------------------------------
# This is the template constraint script for ELEC5160/EESM5020.
################################################################################

################################################################################
# Timing constraint
################################################################################
# Critical path constraint: set the desired clock frequencycreate_clock -period 4.0 -name VCLK
create_clock -period 5.0 -name VCLK
# Input delay and output delay
set_input_delay -max 0.0 -clock VCLK [all_inputs]
set_output_delay -max 0.0 -clock VCLK [all_outputs]

################################################################################
# Enviornement attribute constraint
################################################################################
# Load on the output ports
set_load 1 [all_outputs]

# Input transition time on all inputs except clock
set_input_transition 0.1 [all_inputs]
