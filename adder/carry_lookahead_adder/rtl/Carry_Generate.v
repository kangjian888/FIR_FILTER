// =============================================================================
// Filename: Carry_Generate.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description: Behavior Description of Carry Generator
// -----------------------------------------------------------------------------
module Carry_Generate(
	input [0:0] Propagate,
	input [0:0] Generate,
	input [0:0] c_in,
	output 	[0:0] c_out
);

assign c_out = Generate | (Propagate & c_in);

endmodule