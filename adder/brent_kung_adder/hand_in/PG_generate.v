// =============================================================================
// Filename: PG_generate.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description: Gate-Level Description of PG generate module of look-ahead adder
// -----------------------------------------------------------------------------
module PG_generate(
	input add_1,
	input add_2,
	output Propagate,
	output Generate
);

and and_1(Generate, add_1, add_2);
xor xor_1(Propagate,add_1,add_2);

endmodule