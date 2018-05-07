`timescale 1 ns / 1 ps
module RCA_tb;

localparam CLK_PERIOD = 5.0; //vitural clock frequency
localparam BIT_WIDTH = 16; //The width of the RCA


reg clk;
reg [BIT_WIDTH-1:0] add_1, add_2;
reg c_in;
wire [BIT_WIDTH-1:0] sum;
wire c_out;

//instantiate the RCA
RCA_adder RCA_adder_inst(
	.add_1(add_1),
	.add_2(add_2),
	.c_in(c_in),
	.c_out(c_out),
	.sum(sum)
	);

//Virtual Clock Generation
initial
	begin
		clk = 1'b0;
		forever #(CLK_PERIOD/2.0) clk = ~clk;
	end

//Input Simulation
initial
	begin
	//Input 12 +  15 + 0;
		add_1 = 16'd12;
		add_2 = 16'd15;
		c_in = 1'b0;
		#(CLK_PERIOD)
	//Input 12 + 15 + 1;
		add_1 = 16'd12;
		add_2 = 16'd15;
		c_in = 1'b1;
		#(CLK_PERIOD)
	//Input 65534 + 1 + 0
		add_1 = 16'd65534;
		add_2 = 16'd1;
		c_in = 1'b0;
		#(CLK_PERIOD)	
	//Input 65534 +1 + 1
		add_1 = 16'd65534;
		add_2 = 16'd1;
		c_in = 1'b1;
		#(CLK_PERIOD)
		$finish
	end

//Output Monitor
