// =============================================================================
// Filename: CUS_PLUS.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:This module could get the alpha and beta
// -----------------------------------------------------------------------------
module CUS_PLUS (
	input [0:0] g_high,
	input [0:0] g_low,
	input [0:0] p_high,
	input [0:0] p_low,
	output [0:0] alpha,
	output [0:0] beta   
);

assign alpha =  g_high | (p_high & g_low);
assign beta  =  p_high & p_low;

endmodule