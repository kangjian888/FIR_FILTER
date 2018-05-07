//This is gate-level descriptionn of one-bit full adder
module one_bit_full_adder(
	input wire add_1,
	input wire add_2,
	input wire c_in,
	output wire sum,
	output wire c_out
);
wire temp_1;//template valuue
wire temp_2;
wire temp_3;
xor xor_1 (temp_1, add_1, add_2);
xor xor_2 (sum , temp, c_in);

and and_1 (temp_2, add_1, add_2);
and and_2 (temp_3, temp_1, c_in);
or or_1 (c_out, temp_2, temp_3);

endmodule
