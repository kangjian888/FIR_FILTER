// =============================================================================
// Filename: PPA_tb.v
// Author: KANG, Jian
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
//Description:PPA_tb
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module PPA_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 5;  // clock period: 5ns

// ----------------------------------
// Interface of the divider module
// ----------------------------------
reg clk;
reg [15:0] add_1;
reg [15:0] add_2;
reg c_in;
wire [15:0] sum;
wire c_out;
// ----------------------------------
// Instantiate the divider
// ----------------------------------
PPA PPA_inst (
.add_1(add_1),
.add_2(add_2),
.c_in(c_in),
.sum(sum),
.c_out(c_out)   
);



initial begin
  $sdf_annotate("PPA.mapped.sdf", PPA_inst);
end
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
	add_1 = 16'd4322;
	add_2 = 16'd7656;
	c_in = 1'b1;
	#(CLK_PERIOD)
	add_1 = 16'd987;
	add_2 = 16'd71;
	c_in = 1'b0;
	#(CLK_PERIOD)
	add_1 = 16'd65534;
	add_2 = 16'd1;
	c_in = 1'b0;
	#(CLK_PERIOD)
	add_1 = 16'd65534;
	add_2 = 16'd1;
	c_in = 1'b1;
	#(CLK_PERIOD)
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
