
module FIR_4TAP_DW01_add_0 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n2;
  wire   [16:2] carry;

  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(SUM[17]), .S(SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n2), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  AND2_X1 U2 ( .A1(B[0]), .A2(A[0]), .ZN(n2) );
endmodule


module FIR_4TAP_DW01_add_1 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n2;
  wire   [15:3] carry;

  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(SUM[16]), .S(SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(n2), .CO(carry[3]), .S(SUM[2]) );
  XOR2_X1 U1 ( .A(B[1]), .B(A[1]), .Z(SUM[1]) );
  AND2_X1 U2 ( .A1(B[1]), .A2(A[1]), .ZN(n2) );
endmodule


module FIR_4TAP_DW01_add_2 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n2;
  wire   [15:3] carry;

  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(SUM[16]), .S(SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(n2), .CO(carry[3]), .S(SUM[2]) );
  XOR2_X1 U1 ( .A(B[1]), .B(A[1]), .Z(SUM[1]) );
  AND2_X1 U2 ( .A1(B[1]), .A2(A[1]), .ZN(n2) );
endmodule


module FIR_4TAP_DW_mult_uns_0 ( a, b, product );
  input [1:0] a;
  input [15:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n54;

  FA_X1 U3 ( .A(b[14]), .B(b[13]), .CI(n3), .CO(n2), .S(product[14]) );
  FA_X1 U4 ( .A(b[13]), .B(b[12]), .CI(n4), .CO(n3), .S(product[13]) );
  FA_X1 U5 ( .A(b[12]), .B(b[11]), .CI(n5), .CO(n4), .S(product[12]) );
  FA_X1 U6 ( .A(b[11]), .B(b[10]), .CI(n6), .CO(n5), .S(product[11]) );
  FA_X1 U7 ( .A(b[10]), .B(b[9]), .CI(n7), .CO(n6), .S(product[10]) );
  FA_X1 U8 ( .A(b[9]), .B(b[8]), .CI(n8), .CO(n7), .S(product[9]) );
  FA_X1 U9 ( .A(b[8]), .B(b[7]), .CI(n9), .CO(n8), .S(product[8]) );
  FA_X1 U10 ( .A(b[7]), .B(b[6]), .CI(n10), .CO(n9), .S(product[7]) );
  FA_X1 U11 ( .A(b[6]), .B(b[5]), .CI(n11), .CO(n10), .S(product[6]) );
  FA_X1 U12 ( .A(b[5]), .B(b[4]), .CI(n12), .CO(n11), .S(product[5]) );
  FA_X1 U13 ( .A(b[4]), .B(b[3]), .CI(n13), .CO(n12), .S(product[4]) );
  FA_X1 U14 ( .A(b[3]), .B(b[2]), .CI(n14), .CO(n13), .S(product[3]) );
  FA_X1 U15 ( .A(b[2]), .B(b[1]), .CI(n15), .CO(n14), .S(product[2]) );
  HA_X1 U16 ( .A(b[0]), .B(b[1]), .CO(n15), .S(product[1]) );
  XOR2_X1 U20 ( .A(b[14]), .B(n54), .Z(product[15]) );
  XOR2_X1 U21 ( .A(n2), .B(b[15]), .Z(n54) );
endmodule


module FIR_4TAP ( clk, rst_n, data_in, enable, data_out, calculation_done );
  input [15:0] data_in;
  output [17:0] data_out;
  input clk, rst_n, enable;
  output calculation_done;
  wire   mul_stage, add_1_stage, add_2_stage, N3, N4, N5, N6, N7, N8, N9, N10,
         N11, N12, N13, N14, N15, N16, N17, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N36, N37, N38, N39, N40,
         N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n455, n456, n471, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n532, n533, n534, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n549, n550, n551, n552, n553,
         n555, n556, n557, n558, n560, n561, n562, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n587, n589, n590, n591,
         n593, n595, n596, n597, n598, n599, n600, n601, n603, n604, n605,
         n607, n609, n611, n612, n613, n614, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5;
  wire   [15:0] data_reg_3;
  wire   [15:0] multiplication_0;
  wire   [15:0] multiplication_1;
  wire   [15:0] multiplication_2;
  wire   [15:0] multiplication_3;
  wire   [16:0] sum_1;
  wire   [16:0] sum_2;

  DFFR_X1 mul_stage_reg ( .D(enable), .CK(clk), .RN(rst_n), .Q(mul_stage), 
        .QN(n187) );
  DFFR_X1 output_stage_reg ( .D(add_2_stage), .CK(clk), .RN(rst_n), .Q(
        calculation_done) );
  DFFR_X1 data_reg_0_reg_15_ ( .D(n447), .CK(clk), .RN(rst_n), .QN(n235) );
  DFFR_X1 data_reg_0_reg_14_ ( .D(n446), .CK(clk), .RN(rst_n), .QN(n234) );
  DFFR_X1 data_reg_0_reg_13_ ( .D(n445), .CK(clk), .RN(rst_n), .QN(n233) );
  DFFR_X1 data_reg_0_reg_12_ ( .D(n444), .CK(clk), .RN(rst_n), .QN(n232) );
  DFFR_X1 data_reg_0_reg_11_ ( .D(n443), .CK(clk), .RN(rst_n), .QN(n231) );
  DFFR_X1 data_reg_0_reg_10_ ( .D(n442), .CK(clk), .RN(rst_n), .QN(n230) );
  DFFR_X1 data_reg_0_reg_9_ ( .D(n441), .CK(clk), .RN(rst_n), .QN(n229) );
  DFFR_X1 data_reg_0_reg_8_ ( .D(n440), .CK(clk), .RN(rst_n), .QN(n228) );
  DFFR_X1 data_reg_0_reg_7_ ( .D(n439), .CK(clk), .RN(rst_n), .QN(n227) );
  DFFR_X1 data_reg_0_reg_6_ ( .D(n438), .CK(clk), .RN(rst_n), .QN(n226) );
  DFFR_X1 data_reg_0_reg_5_ ( .D(n437), .CK(clk), .RN(rst_n), .QN(n225) );
  DFFR_X1 data_reg_0_reg_4_ ( .D(n436), .CK(clk), .RN(rst_n), .QN(n224) );
  DFFR_X1 data_reg_0_reg_3_ ( .D(n435), .CK(clk), .RN(rst_n), .QN(n223) );
  DFFR_X1 data_reg_0_reg_2_ ( .D(n434), .CK(clk), .RN(rst_n), .QN(n222) );
  DFFR_X1 data_reg_0_reg_1_ ( .D(n433), .CK(clk), .RN(rst_n), .QN(n221) );
  DFFR_X1 data_reg_0_reg_0_ ( .D(n432), .CK(clk), .RN(rst_n), .QN(n220) );
  DFFR_X1 data_reg_1_reg_15_ ( .D(n431), .CK(clk), .RN(rst_n), .QN(n219) );
  DFFR_X1 data_reg_1_reg_14_ ( .D(n430), .CK(clk), .RN(rst_n), .QN(n218) );
  DFFR_X1 data_reg_1_reg_13_ ( .D(n429), .CK(clk), .RN(rst_n), .QN(n217) );
  DFFR_X1 data_reg_1_reg_12_ ( .D(n428), .CK(clk), .RN(rst_n), .QN(n216) );
  DFFR_X1 data_reg_1_reg_11_ ( .D(n427), .CK(clk), .RN(rst_n), .QN(n215) );
  DFFR_X1 data_reg_1_reg_10_ ( .D(n426), .CK(clk), .RN(rst_n), .QN(n214) );
  DFFR_X1 data_reg_1_reg_9_ ( .D(n425), .CK(clk), .RN(rst_n), .QN(n213) );
  DFFR_X1 data_reg_1_reg_8_ ( .D(n424), .CK(clk), .RN(rst_n), .QN(n212) );
  DFFR_X1 data_reg_1_reg_7_ ( .D(n423), .CK(clk), .RN(rst_n), .QN(n211) );
  DFFR_X1 data_reg_1_reg_6_ ( .D(n422), .CK(clk), .RN(rst_n), .QN(n210) );
  DFFR_X1 data_reg_1_reg_5_ ( .D(n421), .CK(clk), .RN(rst_n), .QN(n209) );
  DFFR_X1 data_reg_1_reg_4_ ( .D(n420), .CK(clk), .RN(rst_n), .QN(n208) );
  DFFR_X1 data_reg_1_reg_3_ ( .D(n419), .CK(clk), .RN(rst_n), .QN(n207) );
  DFFR_X1 data_reg_1_reg_2_ ( .D(n418), .CK(clk), .RN(rst_n), .QN(n206) );
  DFFR_X1 data_reg_1_reg_1_ ( .D(n417), .CK(clk), .RN(rst_n), .QN(n205) );
  DFFR_X1 data_reg_1_reg_0_ ( .D(n416), .CK(clk), .RN(rst_n), .QN(n204) );
  DFFR_X1 data_reg_2_reg_15_ ( .D(n415), .CK(clk), .RN(rst_n), .QN(n203) );
  DFFR_X1 data_reg_2_reg_14_ ( .D(n414), .CK(clk), .RN(rst_n), .QN(n202) );
  DFFR_X1 data_reg_2_reg_13_ ( .D(n413), .CK(clk), .RN(rst_n), .QN(n201) );
  DFFR_X1 data_reg_2_reg_12_ ( .D(n412), .CK(clk), .RN(rst_n), .QN(n200) );
  DFFR_X1 data_reg_2_reg_11_ ( .D(n411), .CK(clk), .RN(rst_n), .QN(n199) );
  DFFR_X1 data_reg_2_reg_10_ ( .D(n410), .CK(clk), .RN(rst_n), .QN(n198) );
  DFFR_X1 data_reg_2_reg_9_ ( .D(n409), .CK(clk), .RN(rst_n), .QN(n197) );
  DFFR_X1 data_reg_2_reg_8_ ( .D(n408), .CK(clk), .RN(rst_n), .QN(n196) );
  DFFR_X1 data_reg_2_reg_7_ ( .D(n407), .CK(clk), .RN(rst_n), .QN(n195) );
  DFFR_X1 data_reg_2_reg_6_ ( .D(n406), .CK(clk), .RN(rst_n), .QN(n194) );
  DFFR_X1 data_reg_2_reg_5_ ( .D(n405), .CK(clk), .RN(rst_n), .QN(n193) );
  DFFR_X1 data_reg_2_reg_4_ ( .D(n404), .CK(clk), .RN(rst_n), .QN(n192) );
  DFFR_X1 data_reg_2_reg_3_ ( .D(n403), .CK(clk), .RN(rst_n), .QN(n191) );
  DFFR_X1 data_reg_2_reg_2_ ( .D(n402), .CK(clk), .RN(rst_n), .QN(n190) );
  DFFR_X1 data_reg_2_reg_1_ ( .D(n401), .CK(clk), .RN(rst_n), .QN(n189) );
  DFFR_X1 data_reg_2_reg_0_ ( .D(n400), .CK(clk), .RN(rst_n), .QN(n188) );
  DFFR_X1 result_reg_17_ ( .D(n287), .CK(clk), .RN(rst_n), .Q(data_out[17]), 
        .QN(n122) );
  DFFR_X1 result_reg_16_ ( .D(n286), .CK(clk), .RN(rst_n), .Q(data_out[16]), 
        .QN(n121) );
  DFFR_X1 result_reg_15_ ( .D(n285), .CK(clk), .RN(rst_n), .Q(data_out[15]), 
        .QN(n120) );
  FIR_4TAP_DW01_add_0 add_146 ( .A({1'b0, sum_2}), .B({1'b0, sum_1}), .CI(1'b0), .SUM({N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52}) );
  FIR_4TAP_DW01_add_1 add_123 ( .A({1'b0, multiplication_2[15:1], 1'b0}), .B({
        1'b0, multiplication_3}), .CI(1'b0), .SUM({N51, N50, N49, N48, N47, 
        N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        SYNOPSYS_UNCONNECTED_1}) );
  FIR_4TAP_DW01_add_2 add_122 ( .A({1'b0, multiplication_0}), .B({1'b0, 
        multiplication_1[15:1], 1'b0}), .CI(1'b0), .SUM({N34, N33, N32, N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, 
        SYNOPSYS_UNCONNECTED_2}) );
  FIR_4TAP_DW_mult_uns_0 mult_97 ( .a({1'b1, 1'b1}), .b(data_reg_3), .product(
        {SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, SYNOPSYS_UNCONNECTED_5}) );
  DFFR_X1 add_2_stage_reg ( .D(add_1_stage), .CK(clk), .RN(rst_n), .Q(
        add_2_stage), .QN(n123) );
  DFFR_X1 data_reg_3_reg_15_ ( .D(n399), .CK(clk), .RN(rst_n), .Q(
        data_reg_3[15]), .QN(n583) );
  DFFR_X1 data_reg_3_reg_14_ ( .D(n398), .CK(clk), .RN(rst_n), .Q(
        data_reg_3[14]), .QN(n585) );
  DFFR_X1 data_reg_3_reg_13_ ( .D(n397), .CK(clk), .RN(rst_n), .Q(
        data_reg_3[13]), .QN(n587) );
  DFFR_X1 data_reg_3_reg_12_ ( .D(n396), .CK(clk), .RN(rst_n), .Q(
        data_reg_3[12]), .QN(n589) );
  DFFR_X1 data_reg_3_reg_11_ ( .D(n395), .CK(clk), .RN(rst_n), .Q(
        data_reg_3[11]), .QN(n591) );
  DFFR_X1 data_reg_3_reg_10_ ( .D(n394), .CK(clk), .RN(rst_n), .Q(
        data_reg_3[10]), .QN(n593) );
  DFFR_X1 data_reg_3_reg_9_ ( .D(n393), .CK(clk), .RN(rst_n), .Q(data_reg_3[9]), .QN(n595) );
  DFFR_X1 data_reg_3_reg_8_ ( .D(n392), .CK(clk), .RN(rst_n), .Q(data_reg_3[8]), .QN(n597) );
  DFFR_X1 data_reg_3_reg_7_ ( .D(n391), .CK(clk), .RN(rst_n), .Q(data_reg_3[7]), .QN(n599) );
  DFFR_X1 data_reg_3_reg_6_ ( .D(n390), .CK(clk), .RN(rst_n), .Q(data_reg_3[6]), .QN(n601) );
  DFFR_X1 data_reg_3_reg_5_ ( .D(n389), .CK(clk), .RN(rst_n), .Q(data_reg_3[5]), .QN(n603) );
  DFFR_X1 data_reg_3_reg_4_ ( .D(n388), .CK(clk), .RN(rst_n), .Q(data_reg_3[4]), .QN(n605) );
  DFFR_X1 data_reg_3_reg_3_ ( .D(n387), .CK(clk), .RN(rst_n), .Q(data_reg_3[3]), .QN(n607) );
  DFFR_X1 data_reg_3_reg_2_ ( .D(n386), .CK(clk), .RN(rst_n), .Q(data_reg_3[2]), .QN(n609) );
  DFFR_X1 data_reg_3_reg_1_ ( .D(n385), .CK(clk), .RN(rst_n), .Q(data_reg_3[1]), .QN(n611) );
  DFFR_X1 data_reg_3_reg_0_ ( .D(n384), .CK(clk), .RN(rst_n), .Q(data_reg_3[0]), .QN(n612) );
  DFFR_X1 multiplication_1_reg_15_ ( .D(n383), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[15]), .QN(n186) );
  DFFR_X1 multiplication_1_reg_14_ ( .D(n382), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[14]), .QN(n185) );
  DFFR_X1 result_reg_0_ ( .D(n270), .CK(clk), .RN(rst_n), .Q(data_out[0]), 
        .QN(n105) );
  DFFR_X1 sum_2_reg_1_ ( .D(n306), .CK(clk), .RN(rst_n), .Q(sum_2[1]), .QN(
        n251) );
  DFFR_X1 sum_2_reg_0_ ( .D(n305), .CK(clk), .RN(rst_n), .Q(sum_2[0]), .QN(
        n252) );
  DFFR_X1 sum_1_reg_1_ ( .D(n289), .CK(clk), .RN(rst_n), .Q(sum_1[1]), .QN(
        n268) );
  DFFR_X1 sum_1_reg_0_ ( .D(n288), .CK(clk), .RN(rst_n), .Q(sum_1[0]), .QN(
        n269) );
  DFFR_X1 multiplication_3_reg_1_ ( .D(n339), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[1]), .QN(n142) );
  DFFR_X1 multiplication_3_reg_0_ ( .D(n338), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[0]), .QN(n613) );
  DFFR_X1 multiplication_2_reg_15_ ( .D(n368), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[15]), .QN(n171) );
  DFFR_X1 multiplication_2_reg_14_ ( .D(n367), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[14]), .QN(n170) );
  DFFR_X1 multiplication_2_reg_13_ ( .D(n366), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[13]), .QN(n169) );
  DFFR_X1 multiplication_2_reg_12_ ( .D(n365), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[12]), .QN(n168) );
  DFFR_X1 multiplication_2_reg_11_ ( .D(n364), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[11]), .QN(n167) );
  DFFR_X1 multiplication_2_reg_10_ ( .D(n363), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[10]), .QN(n166) );
  DFFR_X1 multiplication_2_reg_9_ ( .D(n362), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[9]), .QN(n165) );
  DFFR_X1 multiplication_2_reg_8_ ( .D(n361), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[8]), .QN(n164) );
  DFFR_X1 multiplication_2_reg_7_ ( .D(n360), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[7]), .QN(n163) );
  DFFR_X1 multiplication_2_reg_6_ ( .D(n359), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[6]), .QN(n162) );
  DFFR_X1 multiplication_2_reg_5_ ( .D(n358), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[5]), .QN(n161) );
  DFFR_X1 multiplication_2_reg_4_ ( .D(n357), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[4]), .QN(n160) );
  DFFR_X1 multiplication_2_reg_3_ ( .D(n356), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[3]), .QN(n159) );
  DFFR_X1 multiplication_2_reg_2_ ( .D(n355), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[2]), .QN(n158) );
  DFFR_X1 multiplication_2_reg_1_ ( .D(n354), .CK(clk), .RN(rst_n), .Q(
        multiplication_2[1]), .QN(n157) );
  DFFR_X1 multiplication_1_reg_13_ ( .D(n381), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[13]), .QN(n184) );
  DFFR_X1 multiplication_1_reg_12_ ( .D(n380), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[12]), .QN(n183) );
  DFFR_X1 multiplication_1_reg_11_ ( .D(n379), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[11]), .QN(n182) );
  DFFR_X1 multiplication_1_reg_10_ ( .D(n378), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[10]), .QN(n181) );
  DFFR_X1 multiplication_1_reg_9_ ( .D(n377), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[9]), .QN(n180) );
  DFFR_X1 multiplication_1_reg_8_ ( .D(n376), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[8]), .QN(n179) );
  DFFR_X1 multiplication_1_reg_7_ ( .D(n375), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[7]), .QN(n178) );
  DFFR_X1 multiplication_1_reg_6_ ( .D(n374), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[6]), .QN(n177) );
  DFFR_X1 multiplication_1_reg_5_ ( .D(n373), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[5]), .QN(n176) );
  DFFR_X1 multiplication_1_reg_4_ ( .D(n372), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[4]), .QN(n175) );
  DFFR_X1 multiplication_1_reg_3_ ( .D(n371), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[3]), .QN(n174) );
  DFFR_X1 multiplication_1_reg_2_ ( .D(n370), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[2]), .QN(n173) );
  DFFR_X1 multiplication_1_reg_1_ ( .D(n369), .CK(clk), .RN(rst_n), .Q(
        multiplication_1[1]), .QN(n172) );
  DFFR_X1 multiplication_0_reg_15_ ( .D(n337), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[15]), .QN(n140) );
  DFFR_X1 multiplication_0_reg_14_ ( .D(n336), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[14]), .QN(n139) );
  DFFR_X1 multiplication_0_reg_13_ ( .D(n335), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[13]), .QN(n138) );
  DFFR_X1 multiplication_0_reg_12_ ( .D(n334), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[12]), .QN(n137) );
  DFFR_X1 multiplication_0_reg_11_ ( .D(n333), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[11]), .QN(n136) );
  DFFR_X1 multiplication_0_reg_10_ ( .D(n332), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[10]), .QN(n135) );
  DFFR_X1 multiplication_0_reg_9_ ( .D(n331), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[9]), .QN(n134) );
  DFFR_X1 multiplication_0_reg_8_ ( .D(n330), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[8]), .QN(n133) );
  DFFR_X1 multiplication_0_reg_7_ ( .D(n329), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[7]), .QN(n132) );
  DFFR_X1 multiplication_0_reg_6_ ( .D(n328), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[6]), .QN(n131) );
  DFFR_X1 multiplication_0_reg_5_ ( .D(n327), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[5]), .QN(n130) );
  DFFR_X1 multiplication_0_reg_4_ ( .D(n326), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[4]), .QN(n129) );
  DFFR_X1 multiplication_0_reg_3_ ( .D(n325), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[3]), .QN(n128) );
  DFFR_X1 multiplication_0_reg_2_ ( .D(n324), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[2]), .QN(n127) );
  DFFR_X1 multiplication_0_reg_1_ ( .D(n323), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[1]), .QN(n126) );
  DFFR_X1 multiplication_0_reg_0_ ( .D(n322), .CK(clk), .RN(rst_n), .Q(
        multiplication_0[0]), .QN(n614) );
  DFFR_X1 sum_2_reg_2_ ( .D(n307), .CK(clk), .RN(rst_n), .Q(sum_2[2]), .QN(
        n250) );
  DFFR_X1 sum_1_reg_2_ ( .D(n290), .CK(clk), .RN(rst_n), .Q(sum_1[2]), .QN(
        n267) );
  DFFR_X1 result_reg_1_ ( .D(n271), .CK(clk), .RN(rst_n), .Q(data_out[1]), 
        .QN(n106) );
  DFFR_X1 multiplication_3_reg_2_ ( .D(n340), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[2]), .QN(n143) );
  DFFR_X1 sum_2_reg_3_ ( .D(n308), .CK(clk), .RN(rst_n), .Q(sum_2[3]), .QN(
        n249) );
  DFFR_X1 sum_1_reg_3_ ( .D(n291), .CK(clk), .RN(rst_n), .Q(sum_1[3]), .QN(
        n266) );
  DFFR_X1 result_reg_2_ ( .D(n272), .CK(clk), .RN(rst_n), .Q(data_out[2]), 
        .QN(n107) );
  DFFR_X1 multiplication_3_reg_3_ ( .D(n341), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[3]), .QN(n144) );
  DFFR_X1 sum_2_reg_4_ ( .D(n309), .CK(clk), .RN(rst_n), .Q(sum_2[4]), .QN(
        n248) );
  DFFR_X1 sum_1_reg_4_ ( .D(n292), .CK(clk), .RN(rst_n), .Q(sum_1[4]), .QN(
        n265) );
  DFFR_X1 result_reg_3_ ( .D(n273), .CK(clk), .RN(rst_n), .Q(data_out[3]), 
        .QN(n108) );
  DFFR_X1 multiplication_3_reg_4_ ( .D(n342), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[4]), .QN(n145) );
  DFFR_X1 sum_2_reg_5_ ( .D(n310), .CK(clk), .RN(rst_n), .Q(sum_2[5]), .QN(
        n247) );
  DFFR_X1 sum_1_reg_5_ ( .D(n293), .CK(clk), .RN(rst_n), .Q(sum_1[5]), .QN(
        n264) );
  DFFR_X1 result_reg_4_ ( .D(n274), .CK(clk), .RN(rst_n), .Q(data_out[4]), 
        .QN(n109) );
  DFFR_X1 multiplication_3_reg_5_ ( .D(n343), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[5]), .QN(n146) );
  DFFR_X1 sum_2_reg_6_ ( .D(n311), .CK(clk), .RN(rst_n), .Q(sum_2[6]), .QN(
        n246) );
  DFFR_X1 sum_1_reg_6_ ( .D(n294), .CK(clk), .RN(rst_n), .Q(sum_1[6]), .QN(
        n263) );
  DFFR_X1 result_reg_5_ ( .D(n275), .CK(clk), .RN(rst_n), .Q(data_out[5]), 
        .QN(n110) );
  DFFR_X1 multiplication_3_reg_6_ ( .D(n344), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[6]), .QN(n147) );
  DFFR_X1 sum_2_reg_7_ ( .D(n312), .CK(clk), .RN(rst_n), .Q(sum_2[7]), .QN(
        n245) );
  DFFR_X1 sum_1_reg_7_ ( .D(n295), .CK(clk), .RN(rst_n), .Q(sum_1[7]), .QN(
        n262) );
  DFFR_X1 result_reg_6_ ( .D(n276), .CK(clk), .RN(rst_n), .Q(data_out[6]), 
        .QN(n111) );
  DFFR_X1 multiplication_3_reg_7_ ( .D(n345), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[7]), .QN(n148) );
  DFFR_X1 sum_2_reg_8_ ( .D(n313), .CK(clk), .RN(rst_n), .Q(sum_2[8]), .QN(
        n244) );
  DFFR_X1 sum_1_reg_8_ ( .D(n296), .CK(clk), .RN(rst_n), .Q(sum_1[8]), .QN(
        n261) );
  DFFR_X1 result_reg_7_ ( .D(n277), .CK(clk), .RN(rst_n), .Q(data_out[7]), 
        .QN(n112) );
  DFFR_X1 multiplication_3_reg_8_ ( .D(n346), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[8]), .QN(n149) );
  DFFR_X1 sum_2_reg_9_ ( .D(n314), .CK(clk), .RN(rst_n), .Q(sum_2[9]), .QN(
        n243) );
  DFFR_X1 sum_1_reg_9_ ( .D(n297), .CK(clk), .RN(rst_n), .Q(sum_1[9]), .QN(
        n260) );
  DFFR_X1 result_reg_8_ ( .D(n278), .CK(clk), .RN(rst_n), .Q(data_out[8]), 
        .QN(n113) );
  DFFR_X1 multiplication_3_reg_9_ ( .D(n347), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[9]), .QN(n150) );
  DFFR_X1 sum_2_reg_10_ ( .D(n315), .CK(clk), .RN(rst_n), .Q(sum_2[10]), .QN(
        n242) );
  DFFR_X1 sum_1_reg_10_ ( .D(n298), .CK(clk), .RN(rst_n), .Q(sum_1[10]), .QN(
        n259) );
  DFFR_X1 result_reg_9_ ( .D(n279), .CK(clk), .RN(rst_n), .Q(data_out[9]), 
        .QN(n114) );
  DFFR_X1 multiplication_3_reg_10_ ( .D(n348), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[10]), .QN(n151) );
  DFFR_X1 sum_2_reg_11_ ( .D(n316), .CK(clk), .RN(rst_n), .Q(sum_2[11]), .QN(
        n241) );
  DFFR_X1 sum_1_reg_11_ ( .D(n299), .CK(clk), .RN(rst_n), .Q(sum_1[11]), .QN(
        n258) );
  DFFR_X1 result_reg_10_ ( .D(n280), .CK(clk), .RN(rst_n), .Q(data_out[10]), 
        .QN(n115) );
  DFFR_X1 multiplication_3_reg_11_ ( .D(n349), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[11]), .QN(n152) );
  DFFR_X1 sum_2_reg_12_ ( .D(n317), .CK(clk), .RN(rst_n), .Q(sum_2[12]), .QN(
        n240) );
  DFFR_X1 sum_1_reg_12_ ( .D(n300), .CK(clk), .RN(rst_n), .Q(sum_1[12]), .QN(
        n257) );
  DFFR_X1 result_reg_11_ ( .D(n281), .CK(clk), .RN(rst_n), .Q(data_out[11]), 
        .QN(n116) );
  DFFR_X1 multiplication_3_reg_12_ ( .D(n350), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[12]), .QN(n153) );
  DFFR_X1 sum_2_reg_13_ ( .D(n318), .CK(clk), .RN(rst_n), .Q(sum_2[13]), .QN(
        n239) );
  DFFR_X1 sum_1_reg_13_ ( .D(n301), .CK(clk), .RN(rst_n), .Q(sum_1[13]), .QN(
        n256) );
  DFFR_X1 result_reg_12_ ( .D(n282), .CK(clk), .RN(rst_n), .Q(data_out[12]), 
        .QN(n117) );
  DFFR_X1 multiplication_3_reg_13_ ( .D(n351), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[13]), .QN(n154) );
  DFFR_X1 sum_2_reg_14_ ( .D(n319), .CK(clk), .RN(rst_n), .Q(sum_2[14]), .QN(
        n238) );
  DFFR_X1 sum_1_reg_14_ ( .D(n302), .CK(clk), .RN(rst_n), .Q(sum_1[14]), .QN(
        n255) );
  DFFR_X1 result_reg_13_ ( .D(n283), .CK(clk), .RN(rst_n), .Q(data_out[13]), 
        .QN(n118) );
  DFFR_X1 multiplication_3_reg_14_ ( .D(n352), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[14]), .QN(n155) );
  DFFR_X1 sum_2_reg_16_ ( .D(n321), .CK(clk), .RN(rst_n), .Q(sum_2[16]), .QN(
        n236) );
  DFFR_X1 sum_1_reg_16_ ( .D(n304), .CK(clk), .RN(rst_n), .Q(sum_1[16]), .QN(
        n253) );
  DFFR_X1 sum_2_reg_15_ ( .D(n320), .CK(clk), .RN(rst_n), .Q(sum_2[15]), .QN(
        n237) );
  DFFR_X1 sum_1_reg_15_ ( .D(n303), .CK(clk), .RN(rst_n), .Q(sum_1[15]), .QN(
        n254) );
  DFFR_X1 result_reg_14_ ( .D(n284), .CK(clk), .RN(rst_n), .Q(data_out[14]), 
        .QN(n119) );
  DFFR_X1 multiplication_3_reg_15_ ( .D(n353), .CK(clk), .RN(rst_n), .Q(
        multiplication_3[15]), .QN(n156) );
  OAI22_X1 U320 ( .A1(n204), .A2(n505), .B1(n188), .B2(enable), .ZN(n400) );
  OAI22_X1 U321 ( .A1(n205), .A2(n505), .B1(n189), .B2(enable), .ZN(n401) );
  OAI22_X1 U322 ( .A1(n206), .A2(n504), .B1(n190), .B2(enable), .ZN(n402) );
  OAI22_X1 U323 ( .A1(n207), .A2(n504), .B1(n191), .B2(enable), .ZN(n403) );
  OAI22_X1 U324 ( .A1(n208), .A2(n503), .B1(n192), .B2(enable), .ZN(n404) );
  OAI22_X1 U325 ( .A1(n209), .A2(n503), .B1(n193), .B2(enable), .ZN(n405) );
  OAI22_X1 U326 ( .A1(n210), .A2(n502), .B1(n194), .B2(enable), .ZN(n406) );
  OAI22_X1 U327 ( .A1(n211), .A2(n502), .B1(n195), .B2(enable), .ZN(n407) );
  OAI22_X1 U328 ( .A1(n212), .A2(n501), .B1(n196), .B2(enable), .ZN(n408) );
  OAI22_X1 U329 ( .A1(n213), .A2(n501), .B1(n197), .B2(enable), .ZN(n409) );
  OAI22_X1 U330 ( .A1(n214), .A2(n500), .B1(n198), .B2(enable), .ZN(n410) );
  OAI22_X1 U331 ( .A1(n215), .A2(n500), .B1(n199), .B2(enable), .ZN(n411) );
  OAI22_X1 U332 ( .A1(n216), .A2(n499), .B1(n200), .B2(enable), .ZN(n412) );
  OAI22_X1 U333 ( .A1(n217), .A2(n499), .B1(n201), .B2(enable), .ZN(n413) );
  OAI22_X1 U334 ( .A1(n218), .A2(n498), .B1(n202), .B2(enable), .ZN(n414) );
  OAI22_X1 U335 ( .A1(n220), .A2(n497), .B1(n204), .B2(enable), .ZN(n416) );
  OAI22_X1 U336 ( .A1(n221), .A2(n497), .B1(n205), .B2(enable), .ZN(n417) );
  OAI22_X1 U337 ( .A1(n222), .A2(n496), .B1(n206), .B2(enable), .ZN(n418) );
  OAI22_X1 U338 ( .A1(n223), .A2(n496), .B1(n207), .B2(enable), .ZN(n419) );
  OAI22_X1 U339 ( .A1(n224), .A2(n495), .B1(n208), .B2(enable), .ZN(n420) );
  OAI22_X1 U340 ( .A1(n225), .A2(n495), .B1(n209), .B2(enable), .ZN(n421) );
  OAI22_X1 U341 ( .A1(n226), .A2(n494), .B1(n210), .B2(enable), .ZN(n422) );
  OAI22_X1 U342 ( .A1(n227), .A2(n494), .B1(n211), .B2(enable), .ZN(n423) );
  OAI22_X1 U343 ( .A1(n228), .A2(n493), .B1(n212), .B2(enable), .ZN(n424) );
  OAI22_X1 U344 ( .A1(n229), .A2(n493), .B1(n213), .B2(enable), .ZN(n425) );
  OAI22_X1 U345 ( .A1(n230), .A2(n492), .B1(n214), .B2(enable), .ZN(n426) );
  OAI22_X1 U346 ( .A1(n231), .A2(n492), .B1(n215), .B2(enable), .ZN(n427) );
  OAI22_X1 U347 ( .A1(n232), .A2(n491), .B1(n216), .B2(enable), .ZN(n428) );
  OAI22_X1 U348 ( .A1(n233), .A2(n491), .B1(n217), .B2(enable), .ZN(n429) );
  OAI22_X1 U349 ( .A1(n234), .A2(n501), .B1(n218), .B2(enable), .ZN(n430) );
  OAI22_X1 U350 ( .A1(n219), .A2(n498), .B1(n203), .B2(enable), .ZN(n415) );
  OAI22_X1 U351 ( .A1(n235), .A2(n500), .B1(n219), .B2(enable), .ZN(n431) );
  OAI22_X1 U352 ( .A1(n188), .A2(n507), .B1(enable), .B2(n612), .ZN(n384) );
  OAI22_X1 U353 ( .A1(n189), .A2(n506), .B1(enable), .B2(n611), .ZN(n385) );
  OAI22_X1 U354 ( .A1(n190), .A2(n509), .B1(enable), .B2(n609), .ZN(n386) );
  OAI22_X1 U355 ( .A1(n191), .A2(n508), .B1(enable), .B2(n607), .ZN(n387) );
  OAI22_X1 U356 ( .A1(n193), .A2(n505), .B1(enable), .B2(n603), .ZN(n389) );
  OAI22_X1 U357 ( .A1(n194), .A2(n509), .B1(enable), .B2(n601), .ZN(n390) );
  OAI22_X1 U358 ( .A1(n192), .A2(n504), .B1(enable), .B2(n605), .ZN(n388) );
  OAI22_X1 U359 ( .A1(n195), .A2(n509), .B1(enable), .B2(n599), .ZN(n391) );
  OAI22_X1 U360 ( .A1(n196), .A2(n508), .B1(enable), .B2(n597), .ZN(n392) );
  OAI22_X1 U361 ( .A1(n197), .A2(n508), .B1(enable), .B2(n595), .ZN(n393) );
  OAI22_X1 U362 ( .A1(n198), .A2(n507), .B1(enable), .B2(n593), .ZN(n394) );
  OAI22_X1 U363 ( .A1(n199), .A2(n507), .B1(enable), .B2(n591), .ZN(n395) );
  OAI22_X1 U364 ( .A1(n200), .A2(n506), .B1(enable), .B2(n589), .ZN(n396) );
  OAI22_X1 U365 ( .A1(n201), .A2(n506), .B1(enable), .B2(n587), .ZN(n397) );
  OAI22_X1 U366 ( .A1(n202), .A2(n503), .B1(enable), .B2(n585), .ZN(n398) );
  OAI22_X1 U367 ( .A1(n203), .A2(n502), .B1(enable), .B2(n583), .ZN(n399) );
  OAI21_X1 U368 ( .B1(n220), .B2(enable), .A(n102), .ZN(n432) );
  OAI21_X1 U370 ( .B1(n221), .B2(enable), .A(n103), .ZN(n433) );
  NAND2_X1 U371 ( .A1(data_in[1]), .A2(enable), .ZN(n103) );
  OAI21_X1 U372 ( .B1(n222), .B2(enable), .A(n104), .ZN(n434) );
  NAND2_X1 U373 ( .A1(data_in[2]), .A2(enable), .ZN(n104) );
  OAI21_X1 U374 ( .B1(n223), .B2(enable), .A(n1), .ZN(n435) );
  OAI21_X1 U376 ( .B1(n224), .B2(enable), .A(n2), .ZN(n436) );
  NAND2_X1 U377 ( .A1(data_in[4]), .A2(enable), .ZN(n2) );
  OAI21_X1 U378 ( .B1(n225), .B2(enable), .A(n3), .ZN(n437) );
  NAND2_X1 U379 ( .A1(data_in[5]), .A2(enable), .ZN(n3) );
  OAI21_X1 U380 ( .B1(n226), .B2(enable), .A(n4), .ZN(n438) );
  NAND2_X1 U381 ( .A1(data_in[6]), .A2(enable), .ZN(n4) );
  OAI21_X1 U382 ( .B1(n227), .B2(enable), .A(n5), .ZN(n439) );
  NAND2_X1 U383 ( .A1(data_in[7]), .A2(enable), .ZN(n5) );
  OAI21_X1 U384 ( .B1(n228), .B2(enable), .A(n6), .ZN(n440) );
  NAND2_X1 U385 ( .A1(data_in[8]), .A2(enable), .ZN(n6) );
  OAI21_X1 U386 ( .B1(n229), .B2(enable), .A(n7), .ZN(n441) );
  NAND2_X1 U387 ( .A1(data_in[9]), .A2(enable), .ZN(n7) );
  OAI21_X1 U388 ( .B1(n230), .B2(enable), .A(n8), .ZN(n442) );
  NAND2_X1 U389 ( .A1(data_in[10]), .A2(enable), .ZN(n8) );
  OAI21_X1 U390 ( .B1(n231), .B2(enable), .A(n9), .ZN(n443) );
  NAND2_X1 U391 ( .A1(data_in[11]), .A2(enable), .ZN(n9) );
  OAI21_X1 U392 ( .B1(n232), .B2(enable), .A(n10), .ZN(n444) );
  NAND2_X1 U393 ( .A1(data_in[12]), .A2(enable), .ZN(n10) );
  OAI21_X1 U394 ( .B1(n233), .B2(enable), .A(n11), .ZN(n445) );
  NAND2_X1 U395 ( .A1(data_in[13]), .A2(enable), .ZN(n11) );
  OAI21_X1 U396 ( .B1(n234), .B2(enable), .A(n12), .ZN(n446) );
  NAND2_X1 U397 ( .A1(data_in[14]), .A2(enable), .ZN(n12) );
  OAI21_X1 U398 ( .B1(n235), .B2(enable), .A(n13), .ZN(n447) );
  NAND2_X1 U399 ( .A1(data_in[15]), .A2(enable), .ZN(n13) );
  OAI22_X1 U404 ( .A1(n120), .A2(add_2_stage), .B1(n123), .B2(n566), .ZN(n285)
         );
  INV_X1 U405 ( .A(N67), .ZN(n566) );
  OAI22_X1 U406 ( .A1(n121), .A2(add_2_stage), .B1(n123), .B2(n565), .ZN(n286)
         );
  INV_X1 U407 ( .A(N68), .ZN(n565) );
  OAI22_X1 U408 ( .A1(n122), .A2(add_2_stage), .B1(n123), .B2(n564), .ZN(n287)
         );
  INV_X1 U409 ( .A(N69), .ZN(n564) );
  OAI22_X1 U410 ( .A1(n156), .A2(mul_stage), .B1(n187), .B2(n582), .ZN(n353)
         );
  INV_X1 U411 ( .A(N17), .ZN(n582) );
  OAI22_X1 U412 ( .A1(n116), .A2(add_2_stage), .B1(n123), .B2(n570), .ZN(n281)
         );
  INV_X1 U413 ( .A(N63), .ZN(n570) );
  OAI22_X1 U414 ( .A1(n117), .A2(add_2_stage), .B1(n123), .B2(n569), .ZN(n282)
         );
  INV_X1 U415 ( .A(N64), .ZN(n569) );
  OAI22_X1 U416 ( .A1(n118), .A2(add_2_stage), .B1(n123), .B2(n568), .ZN(n283)
         );
  INV_X1 U417 ( .A(N65), .ZN(n568) );
  OAI22_X1 U418 ( .A1(n119), .A2(add_2_stage), .B1(n123), .B2(n567), .ZN(n284)
         );
  INV_X1 U419 ( .A(N66), .ZN(n567) );
  OAI22_X1 U420 ( .A1(add_1_stage), .A2(n257), .B1(n124), .B2(n536), .ZN(n300)
         );
  INV_X1 U421 ( .A(N30), .ZN(n536) );
  OAI22_X1 U424 ( .A1(add_1_stage), .A2(n255), .B1(n124), .B2(n534), .ZN(n302)
         );
  INV_X1 U425 ( .A(N32), .ZN(n534) );
  OAI22_X1 U426 ( .A1(add_1_stage), .A2(n254), .B1(n124), .B2(n533), .ZN(n303)
         );
  INV_X1 U427 ( .A(N33), .ZN(n533) );
  OAI22_X1 U428 ( .A1(add_1_stage), .A2(n253), .B1(n124), .B2(n532), .ZN(n304)
         );
  INV_X1 U429 ( .A(N34), .ZN(n532) );
  OAI22_X1 U434 ( .A1(n155), .A2(mul_stage), .B1(n187), .B2(n584), .ZN(n352)
         );
  INV_X1 U435 ( .A(N16), .ZN(n584) );
  OAI22_X1 U436 ( .A1(add_1_stage), .A2(n240), .B1(n124), .B2(n552), .ZN(n317)
         );
  INV_X1 U437 ( .A(N47), .ZN(n552) );
  OAI22_X1 U438 ( .A1(add_1_stage), .A2(n239), .B1(n124), .B2(n551), .ZN(n318)
         );
  INV_X1 U439 ( .A(N48), .ZN(n551) );
  OAI22_X1 U440 ( .A1(add_1_stage), .A2(n238), .B1(n124), .B2(n550), .ZN(n319)
         );
  INV_X1 U441 ( .A(N49), .ZN(n550) );
  OAI22_X1 U442 ( .A1(add_1_stage), .A2(n237), .B1(n124), .B2(n549), .ZN(n320)
         );
  INV_X1 U443 ( .A(N50), .ZN(n549) );
  OAI22_X1 U446 ( .A1(n113), .A2(add_2_stage), .B1(n123), .B2(n573), .ZN(n278)
         );
  INV_X1 U447 ( .A(N60), .ZN(n573) );
  OAI22_X1 U448 ( .A1(n114), .A2(add_2_stage), .B1(n123), .B2(n572), .ZN(n279)
         );
  INV_X1 U449 ( .A(N61), .ZN(n572) );
  OAI22_X1 U450 ( .A1(n115), .A2(add_2_stage), .B1(n123), .B2(n571), .ZN(n280)
         );
  INV_X1 U451 ( .A(N62), .ZN(n571) );
  OAI22_X1 U452 ( .A1(add_1_stage), .A2(n260), .B1(n471), .B2(n539), .ZN(n297)
         );
  INV_X1 U453 ( .A(N27), .ZN(n539) );
  OAI22_X1 U454 ( .A1(add_1_stage), .A2(n259), .B1(n471), .B2(n538), .ZN(n298)
         );
  INV_X1 U455 ( .A(N28), .ZN(n538) );
  OAI22_X1 U456 ( .A1(add_1_stage), .A2(n258), .B1(n471), .B2(n537), .ZN(n299)
         );
  INV_X1 U457 ( .A(N29), .ZN(n537) );
  OAI22_X1 U462 ( .A1(n152), .A2(mul_stage), .B1(n187), .B2(n590), .ZN(n349)
         );
  INV_X1 U463 ( .A(N13), .ZN(n590) );
  OAI22_X1 U464 ( .A1(add_1_stage), .A2(n243), .B1(n124), .B2(n555), .ZN(n314)
         );
  INV_X1 U465 ( .A(N44), .ZN(n555) );
  OAI22_X1 U468 ( .A1(add_1_stage), .A2(n241), .B1(n124), .B2(n553), .ZN(n316)
         );
  INV_X1 U469 ( .A(N46), .ZN(n553) );
  OAI22_X1 U470 ( .A1(n109), .A2(add_2_stage), .B1(n123), .B2(n577), .ZN(n274)
         );
  INV_X1 U471 ( .A(N56), .ZN(n577) );
  OAI22_X1 U472 ( .A1(n110), .A2(add_2_stage), .B1(n123), .B2(n576), .ZN(n275)
         );
  INV_X1 U473 ( .A(N57), .ZN(n576) );
  OAI22_X1 U474 ( .A1(n111), .A2(add_2_stage), .B1(n123), .B2(n575), .ZN(n276)
         );
  INV_X1 U475 ( .A(N58), .ZN(n575) );
  OAI22_X1 U476 ( .A1(n112), .A2(add_2_stage), .B1(n123), .B2(n574), .ZN(n277)
         );
  INV_X1 U477 ( .A(N59), .ZN(n574) );
  OAI22_X1 U478 ( .A1(add_1_stage), .A2(n264), .B1(n471), .B2(n543), .ZN(n293)
         );
  INV_X1 U479 ( .A(N23), .ZN(n543) );
  OAI22_X1 U480 ( .A1(add_1_stage), .A2(n263), .B1(n471), .B2(n542), .ZN(n294)
         );
  INV_X1 U481 ( .A(N24), .ZN(n542) );
  OAI22_X1 U482 ( .A1(add_1_stage), .A2(n262), .B1(n471), .B2(n541), .ZN(n295)
         );
  INV_X1 U483 ( .A(N25), .ZN(n541) );
  OAI22_X1 U484 ( .A1(add_1_stage), .A2(n261), .B1(n471), .B2(n540), .ZN(n296)
         );
  INV_X1 U485 ( .A(N26), .ZN(n540) );
  OAI22_X1 U488 ( .A1(add_1_stage), .A2(n246), .B1(n124), .B2(n558), .ZN(n311)
         );
  INV_X1 U489 ( .A(N41), .ZN(n558) );
  OAI22_X1 U492 ( .A1(n147), .A2(n456), .B1(n187), .B2(n600), .ZN(n344) );
  INV_X1 U493 ( .A(N8), .ZN(n600) );
  OAI22_X1 U494 ( .A1(n148), .A2(n456), .B1(n187), .B2(n598), .ZN(n345) );
  INV_X1 U495 ( .A(N9), .ZN(n598) );
  OAI22_X1 U496 ( .A1(n149), .A2(n455), .B1(n187), .B2(n596), .ZN(n346) );
  INV_X1 U497 ( .A(N10), .ZN(n596) );
  OAI22_X1 U498 ( .A1(add_1_stage), .A2(n245), .B1(n124), .B2(n557), .ZN(n312)
         );
  INV_X1 U499 ( .A(N42), .ZN(n557) );
  OAI22_X1 U500 ( .A1(add_1_stage), .A2(n244), .B1(n124), .B2(n556), .ZN(n313)
         );
  INV_X1 U501 ( .A(N43), .ZN(n556) );
  OAI22_X1 U502 ( .A1(n105), .A2(add_2_stage), .B1(n123), .B2(n581), .ZN(n270)
         );
  INV_X1 U503 ( .A(N52), .ZN(n581) );
  OAI22_X1 U504 ( .A1(n106), .A2(add_2_stage), .B1(n123), .B2(n580), .ZN(n271)
         );
  INV_X1 U505 ( .A(N53), .ZN(n580) );
  OAI22_X1 U506 ( .A1(n107), .A2(add_2_stage), .B1(n123), .B2(n579), .ZN(n272)
         );
  INV_X1 U507 ( .A(N54), .ZN(n579) );
  OAI22_X1 U508 ( .A1(n108), .A2(add_2_stage), .B1(n123), .B2(n578), .ZN(n273)
         );
  INV_X1 U509 ( .A(N55), .ZN(n578) );
  OAI22_X1 U510 ( .A1(n614), .A2(n455), .B1(n187), .B2(n220), .ZN(n322) );
  OAI22_X1 U511 ( .A1(n126), .A2(n455), .B1(n187), .B2(n221), .ZN(n323) );
  OAI22_X1 U512 ( .A1(add_1_stage), .A2(n269), .B1(n471), .B2(n614), .ZN(n288)
         );
  OAI22_X1 U513 ( .A1(add_1_stage), .A2(n268), .B1(n471), .B2(n547), .ZN(n289)
         );
  INV_X1 U514 ( .A(N19), .ZN(n547) );
  OAI22_X1 U515 ( .A1(add_1_stage), .A2(n267), .B1(n471), .B2(n546), .ZN(n290)
         );
  INV_X1 U516 ( .A(N20), .ZN(n546) );
  OAI22_X1 U517 ( .A1(add_1_stage), .A2(n266), .B1(n471), .B2(n545), .ZN(n291)
         );
  INV_X1 U518 ( .A(N21), .ZN(n545) );
  OAI22_X1 U519 ( .A1(add_1_stage), .A2(n265), .B1(n471), .B2(n544), .ZN(n292)
         );
  INV_X1 U520 ( .A(N22), .ZN(n544) );
  OAI22_X1 U521 ( .A1(add_1_stage), .A2(n252), .B1(n124), .B2(n613), .ZN(n305)
         );
  OAI22_X1 U524 ( .A1(add_1_stage), .A2(n250), .B1(n124), .B2(n562), .ZN(n307)
         );
  INV_X1 U525 ( .A(N37), .ZN(n562) );
  OAI22_X1 U526 ( .A1(add_1_stage), .A2(n249), .B1(n124), .B2(n561), .ZN(n308)
         );
  INV_X1 U527 ( .A(N38), .ZN(n561) );
  OAI22_X1 U528 ( .A1(add_1_stage), .A2(n248), .B1(n124), .B2(n560), .ZN(n309)
         );
  INV_X1 U529 ( .A(N39), .ZN(n560) );
  OAI22_X1 U530 ( .A1(n127), .A2(n455), .B1(n187), .B2(n222), .ZN(n324) );
  OAI22_X1 U531 ( .A1(n128), .A2(n455), .B1(n187), .B2(n223), .ZN(n325) );
  OAI22_X1 U532 ( .A1(n129), .A2(n455), .B1(n187), .B2(n224), .ZN(n326) );
  OAI22_X1 U533 ( .A1(n130), .A2(n455), .B1(n187), .B2(n225), .ZN(n327) );
  OAI22_X1 U534 ( .A1(n131), .A2(n455), .B1(n187), .B2(n226), .ZN(n328) );
  OAI22_X1 U535 ( .A1(n132), .A2(n455), .B1(n187), .B2(n227), .ZN(n329) );
  OAI22_X1 U536 ( .A1(n133), .A2(n455), .B1(n187), .B2(n228), .ZN(n330) );
  OAI22_X1 U537 ( .A1(n134), .A2(n455), .B1(n187), .B2(n229), .ZN(n331) );
  OAI22_X1 U538 ( .A1(n135), .A2(n455), .B1(n187), .B2(n230), .ZN(n332) );
  OAI22_X1 U539 ( .A1(n136), .A2(n455), .B1(n187), .B2(n231), .ZN(n333) );
  OAI22_X1 U540 ( .A1(n137), .A2(n456), .B1(n187), .B2(n232), .ZN(n334) );
  OAI22_X1 U541 ( .A1(n138), .A2(n456), .B1(n187), .B2(n233), .ZN(n335) );
  OAI22_X1 U542 ( .A1(n139), .A2(n456), .B1(n187), .B2(n234), .ZN(n336) );
  OAI22_X1 U543 ( .A1(n140), .A2(n456), .B1(n187), .B2(n235), .ZN(n337) );
  OAI22_X1 U544 ( .A1(n613), .A2(n456), .B1(n187), .B2(n612), .ZN(n338) );
  OAI22_X1 U551 ( .A1(n145), .A2(n456), .B1(n187), .B2(n604), .ZN(n342) );
  INV_X1 U552 ( .A(N6), .ZN(n604) );
  OAI22_X1 U553 ( .A1(n157), .A2(n456), .B1(n187), .B2(n188), .ZN(n354) );
  OAI22_X1 U554 ( .A1(n158), .A2(mul_stage), .B1(n187), .B2(n189), .ZN(n355)
         );
  OAI22_X1 U555 ( .A1(n159), .A2(n455), .B1(n187), .B2(n190), .ZN(n356) );
  OAI22_X1 U556 ( .A1(n160), .A2(n456), .B1(n187), .B2(n191), .ZN(n357) );
  OAI22_X1 U557 ( .A1(n161), .A2(mul_stage), .B1(n187), .B2(n192), .ZN(n358)
         );
  OAI22_X1 U558 ( .A1(n162), .A2(mul_stage), .B1(n187), .B2(n193), .ZN(n359)
         );
  OAI22_X1 U559 ( .A1(n163), .A2(n455), .B1(n187), .B2(n194), .ZN(n360) );
  OAI22_X1 U560 ( .A1(n164), .A2(n456), .B1(n187), .B2(n195), .ZN(n361) );
  OAI22_X1 U561 ( .A1(n165), .A2(n455), .B1(n187), .B2(n196), .ZN(n362) );
  OAI22_X1 U562 ( .A1(n166), .A2(mul_stage), .B1(n187), .B2(n197), .ZN(n363)
         );
  OAI22_X1 U563 ( .A1(n167), .A2(n455), .B1(n187), .B2(n198), .ZN(n364) );
  OAI22_X1 U564 ( .A1(n168), .A2(n456), .B1(n187), .B2(n199), .ZN(n365) );
  OAI22_X1 U565 ( .A1(n169), .A2(n456), .B1(n187), .B2(n200), .ZN(n366) );
  OAI22_X1 U566 ( .A1(n170), .A2(mul_stage), .B1(n187), .B2(n201), .ZN(n367)
         );
  OAI22_X1 U567 ( .A1(n171), .A2(n455), .B1(n187), .B2(n202), .ZN(n368) );
  OAI22_X1 U568 ( .A1(n172), .A2(n456), .B1(n187), .B2(n204), .ZN(n369) );
  OAI22_X1 U569 ( .A1(n173), .A2(mul_stage), .B1(n187), .B2(n205), .ZN(n370)
         );
  OAI22_X1 U570 ( .A1(n174), .A2(mul_stage), .B1(n187), .B2(n206), .ZN(n371)
         );
  OAI22_X1 U571 ( .A1(n175), .A2(mul_stage), .B1(n187), .B2(n207), .ZN(n372)
         );
  OAI22_X1 U572 ( .A1(n176), .A2(mul_stage), .B1(n187), .B2(n208), .ZN(n373)
         );
  OAI22_X1 U573 ( .A1(n177), .A2(mul_stage), .B1(n187), .B2(n209), .ZN(n374)
         );
  OAI22_X1 U574 ( .A1(n178), .A2(mul_stage), .B1(n187), .B2(n210), .ZN(n375)
         );
  OAI22_X1 U575 ( .A1(n179), .A2(mul_stage), .B1(n187), .B2(n211), .ZN(n376)
         );
  OAI22_X1 U576 ( .A1(n180), .A2(mul_stage), .B1(n187), .B2(n212), .ZN(n377)
         );
  OAI22_X1 U577 ( .A1(n181), .A2(mul_stage), .B1(n187), .B2(n213), .ZN(n378)
         );
  OAI22_X1 U578 ( .A1(n182), .A2(mul_stage), .B1(n187), .B2(n214), .ZN(n379)
         );
  OAI22_X1 U579 ( .A1(n183), .A2(mul_stage), .B1(n187), .B2(n215), .ZN(n380)
         );
  OAI22_X1 U580 ( .A1(n184), .A2(mul_stage), .B1(n187), .B2(n216), .ZN(n381)
         );
  OAI22_X1 U582 ( .A1(n185), .A2(mul_stage), .B1(n187), .B2(n217), .ZN(n382)
         );
  OAI22_X1 U583 ( .A1(n186), .A2(mul_stage), .B1(n187), .B2(n218), .ZN(n383)
         );
  INV_X1 U593 ( .A(enable), .ZN(n492) );
  INV_X1 U594 ( .A(enable), .ZN(n493) );
  INV_X1 U595 ( .A(enable), .ZN(n494) );
  INV_X1 U596 ( .A(enable), .ZN(n495) );
  INV_X1 U597 ( .A(enable), .ZN(n496) );
  INV_X1 U599 ( .A(enable), .ZN(n498) );
  INV_X1 U600 ( .A(enable), .ZN(n499) );
  INV_X1 U601 ( .A(enable), .ZN(n500) );
  INV_X1 U602 ( .A(enable), .ZN(n501) );
  INV_X1 U603 ( .A(enable), .ZN(n502) );
  INV_X1 U604 ( .A(enable), .ZN(n503) );
  INV_X1 U606 ( .A(enable), .ZN(n505) );
  INV_X1 U607 ( .A(enable), .ZN(n506) );
  INV_X1 U608 ( .A(enable), .ZN(n507) );
  INV_X1 U609 ( .A(enable), .ZN(n508) );
  INV_X1 U610 ( .A(enable), .ZN(n509) );
  DFFR_X2 add_1_stage_reg ( .D(mul_stage), .CK(clk), .RN(rst_n), .Q(
        add_1_stage), .QN(n124) );
  OAI21_X1 U290 ( .B1(n151), .B2(n456), .A(n616), .ZN(n348) );
  NAND2_X1 U291 ( .A1(N12), .A2(n456), .ZN(n616) );
  INV_X1 U292 ( .A(n187), .ZN(n456) );
  OAI21_X1 U293 ( .B1(n150), .B2(n455), .A(n617), .ZN(n347) );
  NAND2_X1 U294 ( .A1(N11), .A2(n455), .ZN(n617) );
  INV_X1 U295 ( .A(n187), .ZN(n455) );
  OAI21_X1 U296 ( .B1(n154), .B2(n456), .A(n618), .ZN(n351) );
  NAND2_X1 U297 ( .A1(N15), .A2(n456), .ZN(n618) );
  OAI21_X1 U298 ( .B1(n153), .B2(n455), .A(n619), .ZN(n350) );
  NAND2_X1 U299 ( .A1(N14), .A2(n455), .ZN(n619) );
  OAI21_X1 U300 ( .B1(n144), .B2(n456), .A(n620), .ZN(n341) );
  NAND2_X1 U301 ( .A1(N5), .A2(n456), .ZN(n620) );
  OAI21_X1 U302 ( .B1(n143), .B2(n456), .A(n621), .ZN(n340) );
  NAND2_X1 U303 ( .A1(N4), .A2(n456), .ZN(n621) );
  OAI21_X1 U304 ( .B1(n146), .B2(n456), .A(n622), .ZN(n343) );
  NAND2_X1 U305 ( .A1(N7), .A2(n456), .ZN(n622) );
  OAI22_X1 U306 ( .A1(add_1_stage), .A2(n251), .B1(n124), .B2(n623), .ZN(n306)
         );
  INV_X1 U307 ( .A(N36), .ZN(n623) );
  OAI21_X1 U308 ( .B1(n142), .B2(n456), .A(n624), .ZN(n339) );
  NAND2_X1 U309 ( .A1(N3), .A2(n456), .ZN(n624) );
  OAI22_X1 U310 ( .A1(add_1_stage), .A2(n256), .B1(n124), .B2(n625), .ZN(n301)
         );
  INV_X1 U311 ( .A(N31), .ZN(n625) );
  OAI22_X1 U312 ( .A1(add_1_stage), .A2(n247), .B1(n124), .B2(n626), .ZN(n310)
         );
  INV_X1 U313 ( .A(N40), .ZN(n626) );
  OAI22_X1 U314 ( .A1(add_1_stage), .A2(n242), .B1(n124), .B2(n627), .ZN(n315)
         );
  INV_X1 U315 ( .A(N45), .ZN(n627) );
  OAI22_X1 U316 ( .A1(add_1_stage), .A2(n236), .B1(n124), .B2(n628), .ZN(n321)
         );
  INV_X1 U317 ( .A(N51), .ZN(n628) );
  NAND2_X1 U318 ( .A1(data_in[3]), .A2(enable), .ZN(n1) );
  INV_X1 U319 ( .A(add_1_stage), .ZN(n471) );
  NAND2_X1 U369 ( .A1(enable), .A2(data_in[0]), .ZN(n102) );
  INV_X1 U375 ( .A(enable), .ZN(n504) );
  INV_X1 U400 ( .A(enable), .ZN(n497) );
  INV_X1 U401 ( .A(enable), .ZN(n491) );
endmodule

