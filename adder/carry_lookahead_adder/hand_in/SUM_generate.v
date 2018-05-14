// =============================================================================
// Filename: SUM_generate.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:
// -----------------------------------------------------------------------------
module SUM_generate(
	input [0:0] Propagate,
	input [0:0] c_in,
	output [0:0] Sum
);

xor xor_1(Sum, Propagate, c_in);

endmodule