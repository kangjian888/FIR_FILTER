// =============================================================================
// Filename: Carry_Generate.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:
// -----------------------------------------------------------------------------
module Carry_Generate(
	input [0:0] alpha,
	input [0:0] beta,
	input [0:0] c_in,
	output [0:0] c_out
);

assign c_out = alpha | ( beta & c_in );
endmodule