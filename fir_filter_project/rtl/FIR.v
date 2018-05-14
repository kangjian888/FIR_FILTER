// =============================================================================
// Filename: FIR.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:
// -----------------------------------------------------------------------------
module FIR (
	input clk,
	input rst_n,
	input [7:0] data_in,
	input enable,
	input configuration,//high is effective.
	input config_data_enable, 
	output reg [7:0] data_out,
	output reg [1:0] overflow_flag,//00 means no overflow, 01 means positive overflow, 10 means negetive overflow
	output [0:0] done
);

//Inner Registers
wire [3:0] tap_num;//store tap number information, from 2~16
wire [7:0] h_0, h_1, h_2, h_3, h_4, h_5, h_6, h_7, h_8, h_9, h_10, h_11, h_12, h_13, h_14, h_15;//the coefficients
reg [7:0] data_0, data_1, data_2, data_3, data_4, data_5, data_6, data_7, data_8, data_9, data_10, data_11, data_12, data_13, data_14, data_15; 
//Internal Control Signal
wire[9:0] sum_1, sum_2, sum_3, sum_4;//the result of each 
reg [11:0] sum_1_1, sum_2_2, sum_3_3, sum_4_4;//expand sum to avoid overflow after adding
reg [11:0] sum;//the final result, 0_0000.0000_000
wire mac_1_enable, mac_2_enable, mac_3_enable, mac_4_enable;
wire mac_1_done, mac_2_done, mac_3_done, mac_4_done;
wire mac_done;
assign mac_done = mac_1_done || mac_2_done || mac_3_done || mac_4_done;//using the same cycle to complete, once one completed, meaniing all completed. Zero means we do not use it for power saving
wire load_enable;
wire add_enable;
wire config_enable;
wire expand_enable;
wire judge_enable;

//The below is core controlling module
FIR_control FIR_control_inst(
	.clk(clk),
	.rst_n(rst_n),
	.enable(enable),
	.tap_num(tap_num),//0 indicates 1 tap, 15 indicates 16 taps
	.mac_done(mac_done), 
	.configuration(configuration),//high effect
	.done(done),//indicate ADC could provide new data to the filter 
	.load_enable(load_enable),
	.add_enable(add_enable),
	.mac_1_enable(mac_1_enable), 
	.mac_2_enable(mac_2_enable), 
	.mac_3_enable(mac_3_enable), 
	.mac_4_enable(mac_4_enable),//for power saving
	.config_enable(config_enable),
	.expand_enable(expand_enable),
	.judge_enable(judge_enable)		
);

//Data Loading
always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        	begin
        		data_0 <= 0;
        		data_1 <= 0;
        		data_2 <= 0;
        		data_3 <= 0;
        		data_4 <= 0;
        		data_5 <= 0;
        		data_6 <= 0;
        		data_7 <= 0;
        		data_8 <= 0;
        		data_9 <= 0;
        		data_10 <= 0;
        		data_11 <= 0;
        		data_12 <= 0;
        		data_13 <= 0;
        		data_14<= 0;
        		data_15<= 0;

        	end
        else
        	begin
        		if (load_enable) 
        		    begin
        				data_0  <= data_in;
        				data_1  <= data_0;
        				data_2  <= data_1;
        				data_3  <= data_2;
        				data_4  <= data_3; 
        				data_5  <= data_4; 
        				data_6  <= data_5; 
        				data_7  <= data_6; 
        				data_8  <= data_7; 
        				data_9  <= data_8; 
        				data_10 <= data_9; 
        				data_11 <= data_10;
        				data_12 <= data_11;
        				data_13 <= data_12;
        				data_14 <= data_13;
        				data_15 <= data_14;      		        
        		    end
        		else 
        		    begin
						data_0  <= data_0; 
						data_1  <= data_1; 
						data_2  <= data_2; 
						data_3  <= data_3; 
						data_4  <= data_4; 
						data_5  <= data_5; 
						data_6  <= data_6; 
						data_7  <= data_7; 
						data_8  <= data_8; 
						data_9  <= data_9; 
						data_10 <= data_10;
						data_11 <= data_11;
						data_12 <= data_12;
						data_13 <= data_13;
						data_14 <= data_14;
						data_15 <= data_15;       		        
        		    end
        		
        	end
    end

//MAC calculation
MAC MAC_inst_1(
	.clk(clk),
	.rst_n(rst_n),
	.mac_enable(mac_1_enable), 
	.h_0(h_0),
	.h_1(h_1),
	.h_2(h_2),
	.h_3(h_3),
	.data_0(data_0),
	.data_1(data_1),
	.data_2(data_2),
	.data_3(data_3),
	.data_out(sum_1),//to avoid overflow  
	.mac_done(mac_1_done)//indecate the finish of calculation and ready to output the accumulation result	
);

MAC MAC_inst_2(
	.clk(clk),
	.rst_n(rst_n),
	.mac_enable(mac_2_enable), 
	.h_0(h_4),
	.h_1(h_5),
	.h_2(h_6),
	.h_3(h_7),
	.data_0(data_4),
	.data_1(data_5),
	.data_2(data_6),
	.data_3(data_7),
	.data_out(sum_2),//to avoid overflow  
	.mac_done(mac_2_done)//indecate the finish of calculation and ready to output the accumulation result	
);

MAC MAC_inst_3(
	.clk(clk),
	.rst_n(rst_n),
	.mac_enable(mac_3_enable), 
	.h_0(h_8),
	.h_1(h_9),
	.h_2(h_10),
	.h_3(h_11),
	.data_0(data_8),
	.data_1(data_9),
	.data_2(data_10),
	.data_3(data_11),
	.data_out(sum_3),//to avoid overflow  
	.mac_done(mac_3_done)//indecate the finish of calculation and ready to output the accumulation result	
);

MAC MAC_inst_4(
	.clk(clk),
	.rst_n(rst_n),
	.mac_enable(mac_4_enable), 
	.h_0(h_12),
	.h_1(h_13),
	.h_2(h_14),
	.h_3(h_15),
	.data_0(data_12),
	.data_1(data_13),
	.data_2(data_14),
	.data_3(data_15),
	.data_out(sum_4),//to avoid overflow  
	.mac_done(mac_4_done)//indecate the finish of calculation and ready to output the accumulation result	
);
//expand stage
always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        	begin
        		sum_1_1 <= 0;
        		sum_2_2 <= 0;
        		sum_3_3 <= 0;
        		sum_4_4 <= 0;
        		sum <= 0;
        	end
        else 
        	begin
        		if (expand_enable) 
        		    begin
        		    	sum_1_1 <= (sum_1[9]==1) ? ({1'b1,1'b1,sum_1}) : ({1'b0,1'b0,sum_1});
        		    	sum_2_2 <= (sum_2[9]==1) ? ({1'b1,1'b1,sum_2}) : ({1'b0,1'b0,sum_2});
        		    	sum_3_3 <= (sum_3[9]==1) ? ({1'b1,1'b1,sum_3}) : ({1'b0,1'b0,sum_3});
        		    	sum_4_4 <= (sum_4[9]==1) ? ({1'b1,1'b1,sum_4}) : ({1'b0,1'b0,sum_4});
        		    end
        		else 
        		    begin
       		            sum_1_1 <= sum_1_1;
						sum_2_2 <= sum_2_2;
						sum_3_3 <= sum_3_3;
       		            sum_4_4 <= sum_4_4;
        		    end
        	end
    end
//add stage
always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        	begin
        		sum <= 0;
        	end
        else
        	begin
        		if (add_enable) 
        		    begin
        		         sum <= sum_1_1 + sum_2_2 + sum_3_3 + sum_4_4;
        		    end
        		else 
        		    begin
        		        sum <= sum;
        		    end
        	end
    end
//judge stage
always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        	begin
        		data_out <= 0;
        		overflow_flag <= 0;
        	end
        else
        	begin
        		if (judge_enable) 
        		    begin
        		        if (sum[11] == 1) 
        		            begin
        		                if (sum[10]==0||sum[9]==0||sum[8]==0||sum[7]==0)//negative overflow 
        		                    begin
        		                        data_out <= 8'b1000_0000;//-1 is the least value
        		                        overflow_flag <= 2'b10;
        		                    end
        		                else 
        		                    begin
        		                        data_out <= sum[7:0];
        		                        overflow_flag <= 2'b00;
        		                    end
        		            end
        		        else 
        		            begin
        		                if (sum[10]==1||sum[9]==1||sum[8]==1||sum[7]==1) 
        		                    begin
        		                        data_out <= 8'b0111_1111;//0.9921875 is the most value
        		                        overflow_flag <= 2'b01;
        		                    end
        		                else 
        		                    begin
        		                        data_out <= sum[7:0];
        		                        overflow_flag <= 2'b00;
        		                    end
        		            end
        		    end
        		else 
        		    begin
        		        overflow_flag <= overflow_flag;
        		        data_out <= data_out;
        		    end
        		
        	end
    end
//Config module
CONFIG CONFIG_inst(
	.clk(clk),
	.rst_n(rst_n),
	.data_in(data_in),
	.config_data_enable(config_data_enable),
	.config_enable(config_enable),
	.h_0(h_0), 
	.h_1(h_1), 
	.h_2(h_2), 
	.h_3(h_3), 
	.h_4(h_4), 
	.h_5(h_5), 
	.h_6(h_6), 
	.h_7(h_7), 
	.h_8(h_8), 
	.h_9(h_9), 
	.h_10(h_10), 
	.h_11(h_11), 
	.h_12(h_12), 
	.h_13(h_13), 
	.h_14(h_14), 
	.h_15(h_15),
	.tap_num(tap_num)		
);
endmodule