// =============================================================================
// Filename: FIR_4TAP.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:4_tap FIR filter, we use pepline to implement it.
// -----------------------------------------------------------------------------
module  FIR_4TAP(
	input clk,
	input rst_n,//low level is effective
	input [15:0] data_in,//data from ADC
	input enable,//enable the filter to work, high level is effect
	output [17:0] data_out,//to avoid overflow
	output calculation_done//to get new data from ADC, high is effect	
);
//Define the tap coefficient number
localparam
h_0 =  16'd1,
h_1 =  16'd2,
h_2 =  16'd2,
h_3 = 16'd3;//just some meaningless number as the example to show

reg [15:0] data_reg_3;
reg [15:0] data_reg_2;
reg [15:0] data_reg_1;
reg [15:0] data_reg_0;
reg mul_stage, add_1_stage, add_2_stage, output_stage;

//Pepline Control Login
always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        	begin
        		mul_stage <= 1'b0;
        		add_1_stage <= 1'b0;
        		add_2_stage <= 1'b0;
			output_stage <= 1'b0;
        	end
        else
        	begin
        		mul_stage <= enable;
        		add_1_stage <= mul_stage;
        		add_2_stage <= add_1_stage;
        		output_stage <= add_2_stage;
        	end
    end
//The below is data loading
always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        	begin
        		data_reg_0 <= 0;
        		data_reg_1 <= 0;
        		data_reg_2 <= 0;
        		data_reg_3 <= 0;
        	end
        else
        	begin
        		if (enable) 
        		    begin
        		        data_reg_0 <=  data_in;
        		        data_reg_1 <= data_reg_0;
        		        data_reg_2 <= data_reg_1;
        		        data_reg_3 <= data_reg_2;
        		    end
        		else 
        		    begin
        		        data_reg_0 <= data_reg_0;
        		        data_reg_1 <= data_reg_1;
        		        data_reg_2 <= data_reg_2;
        		        data_reg_3 <= data_reg_3;
        		    end
        	end
    end

//below is multiplication calculation
reg [15:0] multiplication_0;
reg [15:0] multiplication_1;
reg [15:0] multiplication_2;
reg [15:0] multiplication_3;
always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        	begin
        		multiplication_0 <= 0;
        		multiplication_1 <= 0;
        		multiplication_2 <= 0;
        		multiplication_3 <= 0;
        	end
        else
        	begin
        		if(mul_stage)
        			begin//four multipliers
        				multiplication_0 <= h_0 * data_reg_0;
        				multiplication_1 <= h_1 * data_reg_1;
        				multiplication_2 <= h_2 * data_reg_2;
        				multiplication_3 <= h_3 * data_reg_3;
        			end
        		else 
        		    begin
        		        multiplication_0 <= multiplication_0;
        		        multiplication_1 <= multiplication_1;
        		        multiplication_2 <= multiplication_2;
        		        multiplication_3 <= multiplication_3;
        		    end
        	end
    end
reg [16:0] sum_1;
reg [16:0] sum_2;//to avoid overflow, each sum result is 17 bits.
//below is the first stage of adder
always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        	begin
        		sum_1 <= 0;
        		sum_2 <= 0;
        	end
        else
        	begin
        		if (add_1_stage) 
        		    begin
        		        sum_1 <= multiplication_0 + multiplication_1;
        				sum_2 <= multiplication_2 + multiplication_3; 
        		    end
        		else 
        		    begin
        		        sum_1 <= sum_1;
        		        sum_2 <= sum_2;
        		    end

        	end
    end

  reg [17:0] result;//this is the final result, to avoid the overflow, we use 18 bits

  always @ (posedge clk or negedge rst_n)
      begin
          if(!rst_n)
          	begin
          		result <= 0;
          	end
          else
          	begin
          		if (add_2_stage) 
          		    begin
          		        result <= sum_2 + sum_1;
          		    end
          		else 
          		    begin
          		        result <= result;
          		    end
          		
          	end
      end

      assign data_out = result;//output the final result
      assign calculation_done = output_stage;
endmodule