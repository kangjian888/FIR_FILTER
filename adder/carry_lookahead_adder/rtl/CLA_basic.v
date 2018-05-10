// =============================================================================
// Filename: CLA_basic.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:
// -----------------------------------------------------------------------------
module CLA_basic(
	input [4:1] add_1,
	input [4:1] add_2,
	input c_in,
	output [4:1] sum,
	output [0:0] Group_Generate,
	output [0:0] Group_Propagate
	//output [0:0] Group_Carry//if we just use this to construct a 4-bit adder this is needed
);

wire [4:1] Propagate;
wire [4:1] Generate;
generate
	genvar i;
	for (i = 1; i <= 4; i = i + 1)
	begin:PG_GEN//Add name here
		PG_generate PG_generate_inst(.add_1(add_1[i]),.add_2(add_2[i]),.Generate(Generate[i]),.Propagate(Propagate[i]));
	end
endgenerate
 
wire [4:0] Carry;
assign Carry[0] = c_in;
//assign Group_Carry = Carry[4];
generate
	genvar j;
	for (j = 1; j <= 4; j = j + 1)
	begin:C_GEN//Add namehere
		Carry_Generate Carry_Generate_inst (.Propagate(Propagate[j]),.Generate(Generate[j]),.c_in(Carry[j-1]),.c_out(Carry[j]));
	end
endgenerate

generate
	genvar k;
	for (k = 1; k <= 4; k = k + 1)
	begin:SUM_GEN//Add name here
		SUM_generate SUM_generate_inst(.Propagate(Propagate[k]),.c_in(Carry[k-1]),.Sum(sum[k]));
	end
endgenerate

assign  Group_Generate= Generate[4] | (Propagate[4] & Generate[3]) | (Propagate[4] & Propagate [3] & Generate [2]) | (Propagate[4] & Propagate [3] & Propagate[2] & Generate[1]);
assign  Group_Propagate = Propagate[4] & Propagate[3] & Propagate[2] & Propagate[1];
endmodule

