// =============================================================================
// Filename: CLA_basic_tb.v
// Author: KANG, Jian
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
//Description:CLA_basic module testbench
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module CLA_basic_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 5;  // clock period: 5ns

// ----------------------------------
// Interface of the divider module
// ----------------------------------
reg clk;
reg [4:1] add_2;
reg [4:1] add_1;
reg c_in;
wire [4:1] sum;
wire Group_Generate;
wire Group_Propogate;
wire Group_Carry;
// ----------------------------------
// Instantiate the divider
// ----------------------------------
CLA_basic CLA_basic_inst(
	.add_1(add_1),
	.add_2(add_2),
	.c_in(c_in),
	.sum(sum),
	.Group_Generate(Group_Generate),
	.Group_Propogate(Group_Propogate),
	.Group_Carry(Group_Carry)
);

// ----------------------------------
// Clock generation
// ----------------------------------
initial begin
  clk = 1'b0;
  forever #(CLK_PERIOD/2.0) clk = ~clk;
end

// ----------------------------------
// Input stimulus
// Generate the ad-hoc stimulus
//This is an example
//initial begin
  // Reset
  //rst         = 1'b1;
  //start       = 1'b0;
  //dividend    = 32'd0;
  //divisor     = 32'd0;
  //#(2*CLK_PERIOD) rst = 1'b0;
  //end
// ----------------------------------

initial
	begin
	//Add Your Code
	add_1 = 4'd3;
	add_2 = 4'd1;
	c_in = 1'b1;
	#(5*CLK_PERIOD)
	add_1 = 4'd14;
	add_2 = 4'd1;
	c_in = 1'b1;
	#(5*CLK_PERIOD)
	$finish;
	end
// ----------------------------------
// Output monitor
//This is an example
//always @(posedge clk) begin
  //if (done) begin
    //("%0d / %0d: quotient = %0d, remainder = //%0d", dividend, divisor,
      //quotient, remainder);
  //end
// ----------------------------------
//Add Your Code

endmodule