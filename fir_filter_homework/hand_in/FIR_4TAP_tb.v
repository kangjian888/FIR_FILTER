// =============================================================================
// Filename: FIR_4TAP_tb.v
// Author: KANG, Jian
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
//Description:This is the testbench for 4-tap FIR FILTER
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module FIR_4TAP_tb;

// ----------------------------------
// Local parameter declaration, For this design the time constrain is very losse
// ----------------------------------
localparam CLK_PERIOD = 20000;  // clock period: 20Us

// ----------------------------------
// Interface of the tested module
// ----------------------------------
reg clk;
reg rst_n;
reg [15:0] data_in;
reg enable;
wire [17:0] data_out;
wire [0:0] calculation_done;
// ----------------------------------
// Instantiate the tested moduele
// ----------------------------------
FIR_4TAP FIR_4TAP_inst(
	.clk(clk),
	.rst_n(rst_n),//low level is effective
	.data_in(data_in),//data from ADC
	.enable(enable),//enable the filter to work, high level is effect
	.data_out(data_out),//to avoid overflow
	.calculation_done(calculation_done)//to get new data from ADC, high is effect	
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
integer i;
 initial begin
	//Add Your Code
	//RESET
	rst_n = 1'b0;
	enable = 1'b0;
	data_in = 16'd0;
	#(2*CLK_PERIOD) 
	rst_n = 1'b1;
	enable = 1'b1;
	data_in = 1'b1;
	forever #(CLK_PERIOD) data_in = data_in +1'b1;
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
