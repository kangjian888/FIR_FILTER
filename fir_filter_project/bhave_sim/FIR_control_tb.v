// =============================================================================
// Filename: FIR_control_tb.v
// Author: KANG, Jian
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
//Description:
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module FIR_control_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 5;  // clock period: 5ns

// ----------------------------------
// Interface of the tested module
// ----------------------------------
reg clk;
reg rst_n;
reg enable;
reg [3:0] tap_num;
reg mac_done;
reg configuration;

wire done;
wire load_enable;
wire add_enable;
wire config_enable;
wire mac_1_enable;
wire mac_2_enable;
wire mac_3_enable;
wire mac_4_enable;

// ----------------------------------
// Instantiate the tested module
// ----------------------------------
FIR_control FIR_control_inst(
	.clk(clk),
	.rst_n(rst_n),
	.enable(enable),
	.tap_num(tap_num),
	.mac_done(mac_done),
	.configuration(configuration),
	.done(done),//indicate ADC could provide new data to the filter 
	.load_enable(load_enable),
	.add_enable(add_enable),
	.mac_1_enable(mac_1_enable), 
	.mac_2_enable(mac_2_enable), 
	.mac_3_enable(mac_3_enable), 
	.mac_4_enable(mac_4_enable),//for power saving
	.config_enable(config_enable)	
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
	//Reset
	rst_n = 1'b0;
	enable = 1'b0;
	tap_num = 4'd11;
	configuration = 1'b0;
	mac_done = 1'b0;
	#(2*CLK_PERIOD)

	rst_n = 1'b1;
	enable =1'b1;

	wait(mac_1_enable && mac_2_enable && mac_3_enable)
	#(4*CLK_PERIOD)
	mac_done = 1'b1;
	wait(done)
	enable = 1'b0;
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