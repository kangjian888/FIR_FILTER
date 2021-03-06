// =============================================================================
// Filename: MAC_tb.v
// Author: KANG, Jian
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
//Description:MAC testbentch
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module MAC_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 5;  // clock period: 5ns

// ----------------------------------
// Interface of the tested module
// ----------------------------------
reg clk;
reg rst_n;
reg [0:0] mac_enable;
reg [7:0] h_0;
reg [7:0] h_1;
reg [7:0] h_2;
reg [7:0] h_3;
reg [7:0] data_0;
reg [7:0] data_1;
reg [7:0] data_2;
reg [7:0] data_3;

wire [9:0] data_out;
wire mac_done;
// ----------------------------------
// Instantiate the tested module
// ----------------------------------
 MAC MAC_inst(
	.clk(clk),
	.rst_n(rst_n),
	.mac_enable(mac_enable), 
	.h_0(h_0),
	.h_1(h_1),
	.h_2(h_2),
	.h_3(h_3),
	.data_0(data_0),
	.data_1(data_1),
	.data_2(data_2),
	.data_3(data_3),
	.data_out(data_out),//to avoid overflow  
	.mac_done(mac_done)//indecate the finish of calculation and ready to output the accumulation result	
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
	//reset
	rst_n = 1'b0;
	mac_enable = 1'b0;
	h_0 = 8'b0100_0000;//0.5
	h_1 = 8'b0100_0000;//0.5;
	h_2 = 8'b0100_0000;//0.5;
	h_3 = 8'b1100_0000;//-0.5
	#(2*CLK_PERIOD)
	rst_n = 1'b1;
	#(CLK_PERIOD)
	mac_enable = 1'b1;
	data_0 = 8'b0010_0000;//0.25
	data_1 = 8'b0100_0000;//0.5
	data_2 = 8'b0100_0000;//0.5
	data_3 = 8'b1100_0000;//-0.5
	#(CLK_PERIOD)
	wait(mac_done)
	mac_enable = 1'b0;
	#(4*CLK_PERIOD)
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