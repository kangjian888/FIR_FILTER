// =============================================================================
// Filename: Hiera_CLA.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:
// -----------------------------------------------------------------------------
module Hiera_CLA(
	input [15:0] add_1,
	input [15:0] add_2,
	input [0:0] c_in,
	output [0:0] c_out,
	output [15:0] sum
);

wire [4:1] add_1_sub [4:1];
wire [4:1] add_2_sub [4:1];
wire [4:1] sum_sub [4:1];
assign add_1_sub[1] = add_1[3:0];
assign add_1_sub[2] = add_1[7:4];
assign add_1_sub[3] = add_1[11:8];
assign add_1_sub[4] = add_1[15:12];
assign add_2_sub[1] = add_2[3:0];
assign add_2_sub[2] = add_2[7:4];
assign add_2_sub[3] = add_2[11:8];
assign add_2_sub[4] = add_2[15:12];
assign sum[3:0]     = sum_sub[1];
assign sum[7:4]     = sum_sub[2];
assign sum[11:8]    = sum_sub[3];
assign sum[15:12]   = sum_sub[4];

wire [4:1] Group_Generate;
wire [4:1] Group_Propagate;
wire [4:0] Group_Carry;
assign Group_Carry[0] = c_in;
assign c_out = Group_Carry[4]; 
generate
	genvar i;
	for (i = 1; i <= 4; i = i + 1)
	begin:CLA_BASIC//Add name here
		CLA_basic CLA_basic_inst(.add_1(add_1_sub[i]),.add_2(add_2_sub[i]),.c_in(Group_Carry[i-1]),.Group_Propagate(Group_Propagate[i]),.Group_Generate(Group_Generate[i]),.sum(sum_sub[i]));
	end
endgenerate

generate
	genvar j;
	for (j = 1; j <= 4 ; j = j + 1)
	begin:C_GEN//Add name here
		Carry_Generate Carry_Generate_inst(.Propagate(Group_Propagate[j]),.Generate(Group_Generate[j]),.c_in(Group_Carry[j-1]),.c_out(Group_Carry[j]));
	end
endgenerate
//you can add super-super PG to construct bigger adder
endmodule