###################################################################

# Created by write_sdc on Thu May 10 19:57:51 2018

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 1 [get_ports {sum[15]}]
set_load -pin_load 1 [get_ports {sum[14]}]
set_load -pin_load 1 [get_ports {sum[13]}]
set_load -pin_load 1 [get_ports {sum[12]}]
set_load -pin_load 1 [get_ports {sum[11]}]
set_load -pin_load 1 [get_ports {sum[10]}]
set_load -pin_load 1 [get_ports {sum[9]}]
set_load -pin_load 1 [get_ports {sum[8]}]
set_load -pin_load 1 [get_ports {sum[7]}]
set_load -pin_load 1 [get_ports {sum[6]}]
set_load -pin_load 1 [get_ports {sum[5]}]
set_load -pin_load 1 [get_ports {sum[4]}]
set_load -pin_load 1 [get_ports {sum[3]}]
set_load -pin_load 1 [get_ports {sum[2]}]
set_load -pin_load 1 [get_ports {sum[1]}]
set_load -pin_load 1 [get_ports {sum[0]}]
set_load -pin_load 1 [get_ports c_out]
create_clock -name VCLK  -period 5  -waveform {0 2.5}
group_path -name FEEDTHROUGH  -from [list [get_ports {add_1[15]}] [get_ports {add_1[14]}] [get_ports {add_1[13]}] [get_ports {add_1[12]}] [get_ports {add_1[11]}] [get_ports {add_1[10]}] [get_ports {add_1[9]}] [get_ports {add_1[8]}] [get_ports {add_1[7]}] [get_ports {add_1[6]}] [get_ports {add_1[5]}] [get_ports {add_1[4]}] [get_ports {add_1[3]}] [get_ports {add_1[2]}] [get_ports {add_1[1]}] [get_ports {add_1[0]}] [get_ports {add_2[15]}] [get_ports {add_2[14]}] [get_ports {add_2[13]}] [get_ports {add_2[12]}] [get_ports {add_2[11]}] [get_ports {add_2[10]}] [get_ports {add_2[9]}] [get_ports {add_2[8]}] [get_ports {add_2[7]}] [get_ports {add_2[6]}] [get_ports {add_2[5]}] [get_ports {add_2[4]}] [get_ports {add_2[3]}] [get_ports {add_2[2]}] [get_ports {add_2[1]}] [get_ports {add_2[0]}] [get_ports c_in]]  -to [list [get_ports {sum[15]}] [get_ports {sum[14]}] [get_ports {sum[13]}] [get_ports {sum[12]}] [get_ports {sum[11]}] [get_ports {sum[10]}] [get_ports {sum[9]}] [get_ports {sum[8]}] [get_ports {sum[7]}] [get_ports {sum[6]}] [get_ports {sum[5]}] [get_ports {sum[4]}] [get_ports {sum[3]}] [get_ports {sum[2]}] [get_ports {sum[1]}] [get_ports {sum[0]}] [get_ports c_out]]
group_path -name REGIN  -from [list [get_ports {add_1[15]}] [get_ports {add_1[14]}] [get_ports {add_1[13]}] [get_ports {add_1[12]}] [get_ports {add_1[11]}] [get_ports {add_1[10]}] [get_ports {add_1[9]}] [get_ports {add_1[8]}] [get_ports {add_1[7]}] [get_ports {add_1[6]}] [get_ports {add_1[5]}] [get_ports {add_1[4]}] [get_ports {add_1[3]}] [get_ports {add_1[2]}] [get_ports {add_1[1]}] [get_ports {add_1[0]}] [get_ports {add_2[15]}] [get_ports {add_2[14]}] [get_ports {add_2[13]}] [get_ports {add_2[12]}] [get_ports {add_2[11]}] [get_ports {add_2[10]}] [get_ports {add_2[9]}] [get_ports {add_2[8]}] [get_ports {add_2[7]}] [get_ports {add_2[6]}] [get_ports {add_2[5]}] [get_ports {add_2[4]}] [get_ports {add_2[3]}] [get_ports {add_2[2]}] [get_ports {add_2[1]}] [get_ports {add_2[0]}] [get_ports c_in]]
group_path -name REGOUT  -to [list [get_ports {sum[15]}] [get_ports {sum[14]}] [get_ports {sum[13]}] [get_ports {sum[12]}] [get_ports {sum[11]}] [get_ports {sum[10]}] [get_ports {sum[9]}] [get_ports {sum[8]}] [get_ports {sum[7]}] [get_ports {sum[6]}] [get_ports {sum[5]}] [get_ports {sum[4]}] [get_ports {sum[3]}] [get_ports {sum[2]}] [get_ports {sum[1]}] [get_ports {sum[0]}] [get_ports c_out]]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[15]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[14]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[13]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[12]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[11]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[10]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[9]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[8]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[7]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[6]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[5]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[4]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[3]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[2]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[1]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_1[0]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[15]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[14]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[13]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[12]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[11]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[10]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[9]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[8]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[7]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[6]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[5]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[4]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[3]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[2]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[1]}]
set_input_delay -clock VCLK  -max 0  [get_ports {add_2[0]}]
set_input_delay -clock VCLK  -max 0  [get_ports c_in]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[15]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[14]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[13]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[12]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[11]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[10]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[9]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[8]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[7]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[6]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[5]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[4]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[3]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[2]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[1]}]
set_output_delay -clock VCLK  -max 0  [get_ports {sum[0]}]
set_output_delay -clock VCLK  -max 0  [get_ports c_out]
set_input_transition -max 0.1  [get_ports {add_1[15]}]
set_input_transition -min 0.1  [get_ports {add_1[15]}]
set_input_transition -max 0.1  [get_ports {add_1[14]}]
set_input_transition -min 0.1  [get_ports {add_1[14]}]
set_input_transition -max 0.1  [get_ports {add_1[13]}]
set_input_transition -min 0.1  [get_ports {add_1[13]}]
set_input_transition -max 0.1  [get_ports {add_1[12]}]
set_input_transition -min 0.1  [get_ports {add_1[12]}]
set_input_transition -max 0.1  [get_ports {add_1[11]}]
set_input_transition -min 0.1  [get_ports {add_1[11]}]
set_input_transition -max 0.1  [get_ports {add_1[10]}]
set_input_transition -min 0.1  [get_ports {add_1[10]}]
set_input_transition -max 0.1  [get_ports {add_1[9]}]
set_input_transition -min 0.1  [get_ports {add_1[9]}]
set_input_transition -max 0.1  [get_ports {add_1[8]}]
set_input_transition -min 0.1  [get_ports {add_1[8]}]
set_input_transition -max 0.1  [get_ports {add_1[7]}]
set_input_transition -min 0.1  [get_ports {add_1[7]}]
set_input_transition -max 0.1  [get_ports {add_1[6]}]
set_input_transition -min 0.1  [get_ports {add_1[6]}]
set_input_transition -max 0.1  [get_ports {add_1[5]}]
set_input_transition -min 0.1  [get_ports {add_1[5]}]
set_input_transition -max 0.1  [get_ports {add_1[4]}]
set_input_transition -min 0.1  [get_ports {add_1[4]}]
set_input_transition -max 0.1  [get_ports {add_1[3]}]
set_input_transition -min 0.1  [get_ports {add_1[3]}]
set_input_transition -max 0.1  [get_ports {add_1[2]}]
set_input_transition -min 0.1  [get_ports {add_1[2]}]
set_input_transition -max 0.1  [get_ports {add_1[1]}]
set_input_transition -min 0.1  [get_ports {add_1[1]}]
set_input_transition -max 0.1  [get_ports {add_1[0]}]
set_input_transition -min 0.1  [get_ports {add_1[0]}]
set_input_transition -max 0.1  [get_ports {add_2[15]}]
set_input_transition -min 0.1  [get_ports {add_2[15]}]
set_input_transition -max 0.1  [get_ports {add_2[14]}]
set_input_transition -min 0.1  [get_ports {add_2[14]}]
set_input_transition -max 0.1  [get_ports {add_2[13]}]
set_input_transition -min 0.1  [get_ports {add_2[13]}]
set_input_transition -max 0.1  [get_ports {add_2[12]}]
set_input_transition -min 0.1  [get_ports {add_2[12]}]
set_input_transition -max 0.1  [get_ports {add_2[11]}]
set_input_transition -min 0.1  [get_ports {add_2[11]}]
set_input_transition -max 0.1  [get_ports {add_2[10]}]
set_input_transition -min 0.1  [get_ports {add_2[10]}]
set_input_transition -max 0.1  [get_ports {add_2[9]}]
set_input_transition -min 0.1  [get_ports {add_2[9]}]
set_input_transition -max 0.1  [get_ports {add_2[8]}]
set_input_transition -min 0.1  [get_ports {add_2[8]}]
set_input_transition -max 0.1  [get_ports {add_2[7]}]
set_input_transition -min 0.1  [get_ports {add_2[7]}]
set_input_transition -max 0.1  [get_ports {add_2[6]}]
set_input_transition -min 0.1  [get_ports {add_2[6]}]
set_input_transition -max 0.1  [get_ports {add_2[5]}]
set_input_transition -min 0.1  [get_ports {add_2[5]}]
set_input_transition -max 0.1  [get_ports {add_2[4]}]
set_input_transition -min 0.1  [get_ports {add_2[4]}]
set_input_transition -max 0.1  [get_ports {add_2[3]}]
set_input_transition -min 0.1  [get_ports {add_2[3]}]
set_input_transition -max 0.1  [get_ports {add_2[2]}]
set_input_transition -min 0.1  [get_ports {add_2[2]}]
set_input_transition -max 0.1  [get_ports {add_2[1]}]
set_input_transition -min 0.1  [get_ports {add_2[1]}]
set_input_transition -max 0.1  [get_ports {add_2[0]}]
set_input_transition -min 0.1  [get_ports {add_2[0]}]
set_input_transition -max 0.1  [get_ports c_in]
set_input_transition -min 0.1  [get_ports c_in]