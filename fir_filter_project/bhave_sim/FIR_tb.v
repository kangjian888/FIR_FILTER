// =============================================================================
// Filename: FIR_tb.v
// Author: KANG, Jian
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
//Description:FIR_tb
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module FIR_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 5;  // clock period: 5ns

// ----------------------------------
// Interface of the tested module
// ----------------------------------
reg clk;
reg rst_n;
reg [7:0] data_in;
reg enable;
reg configuration;
reg config_data_enable;
wire [7:0] data_out;
wire [1:0] overflow_flag;
wire done;
// ----------------------------------
// Instantiate the tested module
// ----------------------------------
FIR FIR_inst(
	 .clk(clk),
	 .rst_n(rst_n),
	 .data_in(data_in),
	 .enable(enable),
	 .configuration(configuration),//high is effective.
	 .config_data_enable(config_data_enable), 
	 .data_out(data_out),
	 .overflow_flag(overflow_flag),//00 means no overflow, 01 means positive overflow, 10 means negetive overflow
	 .done(done)
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
	data_in = 8'b0;
	enable = 1'b0;
	configuration = 1'b0;
	config_data_enable = 1'b0;
	#(3*CLK_PERIOD)
	//COFIG
	rst_n = 1'b1;
	configuration =1'b1;
		#(2*CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0000_1001;//tap number is ten
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0000_0000;
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0000_0000;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0000_0000;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0000_0000;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0000_0000;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0000_0000;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0011_1001;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0011_1001;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0011_1001;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0011_1001;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0011_1001;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0011_1001;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0011_1001;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0011_1001;//
		#(CLK_PERIOD)
	config_data_enable = 1'b1;
	data_in = 8'b0011_1001;//
		#(CLK_PERIOD)
	configuration = 1'b0;
		#(2*CLK_PERIOD)
	//filtering
	enable = 1'b1;
	data_in = 8'b1100_0000;
	#(CLK_PERIOD)
	enable = 1'b0;
	wait(done == 1'b1)#(CLK_PERIOD)
	data_in = 8'b1100_0000;
	enable =1'b1;
	#(CLK_PERIOD)
	enable =1'b0;
	wait(done == 1'b1)
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