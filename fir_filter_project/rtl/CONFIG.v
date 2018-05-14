// =============================================================================
// Filename: CONFIG.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:When you do the configuration, pull up the configuration pin. Then give a one cyble length data_enable and give the data on the data_in pin in the same time
// -----------------------------------------------------------------------------
module CONFIG (
	input clk,
	input rst_n,
	input [7:0] data_in,
	input config_data_enable,
	input config_enable,
	output reg [7:0] h_0, h_1, h_2, h_3, h_4, h_5, h_6, h_7, h_8, h_9, h_10, h_11, h_12, h_13, h_14, h_15,
	output reg [3:0] tap_num		
);



always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        	begin//the reset value is all 0.5
        		h_0 <= 8'b0100_0000;
        		h_1 <= 8'b0100_0000;
        		h_2 <= 8'b0100_0000;
        		h_3 <= 8'b0100_0000;
        		h_4 <= 8'b0100_0000;
        		h_5 <= 8'b0100_0000;
        		h_6 <= 8'b0100_0000;
        		h_7 <= 8'b0100_0000;
        		h_8 <= 8'b0100_0000;
        		h_9 <= 8'b0100_0000;
        		h_10 <= 8'b0100_0000;
        		h_11 <= 8'b0100_0000;
        		h_12 <= 8'b0100_0000;
        		h_13 <= 8'b0100_0000;
        		h_14 <= 8'b0100_0000;
        		h_15 <= 8'b0100_0000;
        		tap_num = 4'd15;//the reset value is 16
        	end
        else
        	begin
        		if (config_enable) 
        		    begin
        		        if (config_data_enable) 
        		            begin
        		                h_0 <= data_in;
								h_1 <=  h_0;
								h_2 <= h_1;
								h_3 <= h_2;
								h_4 <= h_3;
								h_5 <= h_4;
								h_6 <= h_5;
								h_7 <= h_6;
								h_8 <= h_7;
								h_9 <= h_8;
								h_10 <=h_9;
								h_11 <=h_10;
								h_12 <=h_11;
								h_13 <=h_12;
								h_14 <=h_13;
								h_15 <= h_14;
								tap_num <=h_15[3:0];
        		            end
        		        else 
        		            begin
        		                h_0 <=  h_0;
								h_1 <= h_1;
								h_2 <= h_2;
								h_3 <= h_3;
								h_4 <= h_4;
								h_5 <= h_5;
								h_6 <= h_6;
								h_7 <= h_7;
								h_8 <= h_8;
								h_9 <= h_9;
								h_10 <=h_10;
								h_11 <=h_11;
								h_12 <=h_12;
								h_13 <=h_13;
								h_14 <=h_14;
								h_15 <=h_15;
        		            end
        		    end
        		else 
        		    begin
        		         h_0 <= h_0;
						 h_1 <= h_1;
						 h_2 <= h_2;
						 h_3 <= h_3;
						 h_4 <= h_4;
						 h_5 <= h_5;
						 h_6 <= h_6;
						 h_7 <= h_7;
						 h_8 <= h_8;
						 h_9 <= h_9;
						 h_10 <=h_10;
						 h_11 <=h_11;
						 h_12 <=h_12;
						 h_13 <=h_13;
						 h_14 <=h_14;
						 h_15 <=h_15;
        		    end
        	end
    end
endmodule