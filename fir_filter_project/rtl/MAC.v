// =============================================================================
// Filename: MAC.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:
// -----------------------------------------------------------------------------
module MAC (
	input clk,
	input rst_n,
	input [0:0] mac_enable, 
	input [7:0] h_0,
	input [7:0] h_1,
	input [7:0] h_2,
	input [7:0] h_3,
	input [7:0] data_0,
	input [7:0] data_1,
	input [7:0] data_2,
	input [7:0] data_3,
	output reg[9:0] data_out,//to avoid overflow  
	output reg [0:0] mac_done//indecate the finish of calculation and ready to output the accumulation result	
);

reg [2:0] cnt;
reg [7:0] op_1;
reg [7:0] op_2;
reg [9:0] ac_sum_old;
wire [9:0] ac_sum_new;
always @ (posedge clk)
    begin
        if(!rst_n)
        	begin
        		cnt <= 3'd0;
        	end
        else if(mac_enable)
        	begin
        		if (cnt == 3'd4) 
        		    begin
        		        cnt <= 0;
        		    end
        		else 
        		    begin
        		        cnt <= cnt +1'b1;
        		    end
        	end
        else 
            begin
                cnt <= 0;
            end
    end

always @ (posedge clk)
    begin
        if(!rst_n)
        	begin
        		op_1 <= 0;
        		op_2 <= 0;
        		ac_sum_old <= 0;
        		mac_done <= 0;
        	end
        else if(cnt == 3'd0 && mac_enable)
        	begin
        		op_1 <= h_0;
        		op_2 <= data_0;
        		ac_sum_old <= 0;
        		mac_done <= 1'b0;
        	end
        else if (cnt == 3'd1 && mac_enable) 
            begin
                op_1 <= h_1;
                op_2 <= data_1;
                ac_sum_old <= ac_sum_new;
                mac_done <= 1'b0;
            end
        else if(cnt == 3'd2 && mac_enable)
            begin
                op_1 <= h_2;
                op_2 <= data_2;
                ac_sum_old <= ac_sum_new;
                mac_done <= 1'b0;
            end
        else if(cnt == 3'd3 && mac_enable)
        	begin
        		op_1 <= h_3;
        		op_2 <= data_3;
        		ac_sum_old <= ac_sum_new;
        		mac_done <= 1'b0;
        	end
        else  if(cnt == 3'd4 && mac_enable)
            begin
                mac_done <= 1'b1;
                data_out <= ac_sum_new;
            end
        else //when the enable signal is not effect, this module should be shutted dowm
            begin
                mac_done <= 1'b0;//when the MAC UNIT is not used, we just believe its work done
                data_out <= 0;
            end
    end

mac_operate mac_operate_inst(
	.op_1(op_1),
	.op_2(op_2),
	.ac_sum_old(ac_sum_old),
	.ac_sum_new(ac_sum_new)
	);
endmodule




module mac_operate(
	input [7:0] op_1,
	input [7:0] op_2,
	input [9:0] ac_sum_old,
	output wire[9:0] ac_sum_new
	);
    wire [7:0] op_1_ori;//original code
    wire [7:0] op_2_ori;//original code
    wire [13:0] mul_temp;
    wire [6:0] mul_cut;
    wire [9:0] mul;//because there are four fixed point number to accumulate, so we need to add two flag bit to indicate overflow status
    wire flag;

    assign op_1_ori = (op_1[7] == 1) ? ({op_1[7],~op_1[6:0]+1'b1}) : (op_1);//transfer 2's complement code to original code
    assign op_2_ori = (op_2[7] == 1) ? ({op_2[7],~op_2[6:0]+1'b1}) : (op_2);//transfer 2's complement code to original code
    assign flag = op_1[7] ^ op_2[7];
    assign mul_temp = op_1_ori[6:0] * op_2_ori[6:0];
    assign mul_cut = mul_temp[13:7];//drop the least significant bit
    assign mul = (flag == 1'b1) ? ({1'b1,1'b1,1'b1,~mul_cut+1'b1}):({1'b0,1'b0,1'b0,mul_cut});//change the point place or add integer bit to avoid overflow
	assign ac_sum_new = ac_sum_old + mul;
endmodule