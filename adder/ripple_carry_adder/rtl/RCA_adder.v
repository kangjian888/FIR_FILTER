module RCA_adder#(parameter BIT_WIDTH = 16)(
	input [BIT_WIDTH-1:0] add_1,
	input [BIT_WIDTH-1:0] add_2,
	input c_in,
	output [BIT_WIDTH-1:0] sum,
	output c_out
);

wire [BIT_WIDTH:0] temp_carry;

generate
	genvar i;
	for (i = 0; i < BIT_WIDTH; i = i + 1)
	begin:add_chain
		one_bit_full_adder one_bit_full_adder_inst(.add_1(add_1[i]),.add_2(add_2[i]),.c_in(temp_carry[i]),
			.c_out(temp_carry[i+1]), .sum(sum[i]))
	end
endgenerate

assign c_out = temp_carry[BIT_WIDTH];
assign temp_carry[0] = c_in;

endmodule


