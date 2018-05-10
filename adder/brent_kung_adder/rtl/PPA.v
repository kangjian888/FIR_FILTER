// =============================================================================
// Filename: PPA.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:
// -----------------------------------------------------------------------------
module PPA (
input [16:1] add_1,
input [16:1] add_2,
input c_in,
output [16:1] sum,
output [0:0] c_out    
);

wire [16:1] Generate;
wire [16:1] Propagate;
wire [16:1] stage_1_alpha;
wire [16:1] stage_1_beta;
wire [16:1] stage_2_alpha;
wire [16:1] stage_2_beta;
wire [16:1] stage_3_alpha;
wire [16:1] stage_3_beta;
wire [16:1] stage_4_alpha;
wire [16:1] stage_4_beta;
wire [16:1] stage_5_alpha;
wire [16:1] stage_5_beta;
wire [16:1] stage_6_alpha;
wire [16:1] stage_6_beta;
wire [16:1] stage_7_alpha;
wire [16:1] stage_7_beta;
wire [16:0] Carry;
assign Carry[0] = c_in;
assign c_out = Carry[16];

generate
	genvar i;
	for (i = 1; i <= 16; i = i + 1)
	begin:PG_GEN//Add name here
		PG_generate PG_generate_inst(.add_1(add_1[i]),.add_2(add_2[i]),.Generate(Generate[i]),.Propagate(Propagate[i]));
	end
endgenerate

generate
	genvar j;
	for (j = 1; j <= 16; j = j + 1)
	begin:STAGE_1_GEN//Add name here
	if (j % 2 == 0) 
	    begin
	        CUS_PLUS CUS_PLUS_inst(.g_high(Generate[j]),.p_high(Propagate[j]),.g_low(Generate[j-1]),.p_low(Propagate[j-1]),.alpha(stage_1_alpha[j]),.beta(stage_1_beta[j]));
	    end
	else 
	    begin
	        assign stage_1_alpha[j] =  Generate[j];
	        assign stage_1_beta[j] = Propagate[j];
	    end
	end
endgenerate

generate
	genvar k;
	for (k = 1; k <= 16 ; k = k + 1)
	begin:STAGE_2_GEN//Add name here
	if (k%4 == 0) 
	    begin
	        CUS_PLUS CUS_PLUS_inst(.g_high(stage_1_alpha[k]),.p_high(stage_1_beta[k]),.g_low(stage_1_alpha[k-2]),.p_low(stage_1_beta[k-2]),.alpha(stage_2_alpha[k]),.beta(stage_2_beta[k]));
	    end
	else 
	    begin
	        assign stage_2_alpha[k] = stage_1_alpha[k];
	        assign stage_2_beta[k] = stage_1_beta[k];
	    end
	end
endgenerate

generate
	genvar l;
	for (l = 1; l <= 16 ; l = l + 1)
	begin:STAGE_3_GEN//Add name here
	if (l%8 == 0) 
	    begin
	        CUS_PLUS CUS_PLUS_inst(.g_high(stage_2_alpha[l]),.p_high(stage_2_beta[l]),.g_low(stage_2_alpha[l-4]),.p_low(stage_2_beta[l-4]),.alpha(stage_3_alpha[l]),.beta(stage_3_beta[l]));
	    end
	else 
	    begin
	        assign stage_3_alpha[l] = stage_2_alpha[l];
	        assign stage_3_beta[l] = stage_2_beta[l];
	    end
	end
endgenerate

generate
	genvar m;
	for (m = 1; m <= 16 ; m = m + 1)
	begin:STAGE_4_GEN//Add name here
	if (m == 16) 
	    begin
	        CUS_PLUS CUS_PLUS_inst(.g_high(stage_3_alpha[m]),.p_high(stage_3_beta[m]),.g_low(stage_3_alpha[m-8]),.p_low(stage_3_beta[m-8]),.alpha(stage_4_alpha[m]),.beta(stage_4_beta[m]));
	    end
	else if(m == 12) 
	    begin
			CUS_PLUS CUS_PLUS_inst(.g_high(stage_3_alpha[m]),.p_high(stage_3_beta[m]),.g_low(stage_3_alpha[m-4]),.p_low(stage_3_beta[m-4]),.alpha(stage_4_alpha[m]),.beta(stage_4_beta[m]));
	    end
	else 
	    begin
	        assign stage_4_alpha[m] = stage_3_alpha[m];
	        assign stage_4_beta[m] = stage_3_beta[m];	        
	    end
	end
endgenerate

generate
	genvar n;
	for (n = 1; n <= 16 ; n = n + 1)
	begin:STAGE_5_GEN//Add name here
		if (n == 6 | n == 10 | n==14) 
		    begin
		        CUS_PLUS CUS_PLUS_inst(.g_high(stage_4_alpha[n]),.p_high(stage_4_beta[n]),.g_low(stage_4_alpha[n-2]),.p_low(stage_4_beta[n-2]),.alpha(stage_5_alpha[n]),.beta(stage_5_beta[n]));
		    end
		else 
		    begin
		        assign stage_5_alpha[n] = stage_4_alpha[n];
		        assign stage_5_beta[n] = stage_4_beta[n];
		    end
	end
endgenerate

generate
	genvar o;
	for (o = 1; o <= 16; o = o + 1)
	begin:STAGE_6_GEN//Add name here
		if ((o%2 == 1) & (o != 1)) 
		    begin
		        CUS_PLUS CUS_PLUS_inst(.g_high(stage_5_alpha[o]),.p_high(stage_5_beta[o]),.g_low(stage_5_alpha[o-1]),.p_low(stage_5_beta[o-1]),.alpha(stage_6_alpha[o]),.beta(stage_6_beta[o]));
		    end
		else 
		    begin
		        assign stage_6_alpha[o] = stage_5_alpha[o];
		        assign stage_6_beta[o] = stage_5_beta[o];		        
		    end
	end
endgenerate

generate
	genvar p;
	for (p = 1; p <= 16 ; p = p + 1)
	begin:CARRY_GEN//Add name here
		Carry_Generate Carry_Generate_inst(.alpha(stage_6_alpha[p]),.beta(stage_6_beta[p]),.c_in(Carry[p-1]),.c_out(Carry[p]));
	end
endgenerate

generate
	genvar q;
	for (q = 1; q <= 16; q = q + 1)
	begin:SUM_GEN//Add name here
		SUM_generate SUM_generate_inst(.Propagate(Propagate[q]),.c_in(Carry[q-1]),.Sum(sum[q]));
	end
endgenerate
endmodule