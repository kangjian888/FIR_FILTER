
module FIR_control ( clk, rst_n, enable, tap_num, mac_done, configuration, 
        done, load_enable, add_enable, expand_enable, judge_enable, 
        mac_1_enable, mac_2_enable, mac_3_enable, mac_4_enable, config_enable
 );
  input [0:0] enable;
  input [3:0] tap_num;
  input [0:0] mac_done;
  input [0:0] configuration;
  input clk, rst_n;
  output done, load_enable, add_enable, expand_enable, judge_enable,
         mac_1_enable, mac_2_enable, mac_3_enable, mac_4_enable, config_enable;
  wire   N204, N205, N207, n13, n15, n16, n17, n18, n19, n20, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n14, n21, n22, n23, n24;
  wire   [7:0] state;

  DFF_X1 state_reg_0_ ( .D(n60), .CK(clk), .Q(state[0]), .QN(n20) );
  DFF_X1 state_reg_7_ ( .D(n59), .CK(clk), .Q(state[7]) );
  DFF_X1 state_reg_1_ ( .D(n53), .CK(clk), .Q(state[1]), .QN(n19) );
  DFF_X1 state_reg_2_ ( .D(n54), .CK(clk), .Q(state[2]), .QN(n18) );
  DFF_X1 state_reg_3_ ( .D(n55), .CK(clk), .Q(state[3]), .QN(n17) );
  DFF_X1 state_reg_4_ ( .D(n56), .CK(clk), .Q(state[4]), .QN(n16) );
  DFF_X1 state_reg_5_ ( .D(n57), .CK(clk), .Q(state[5]), .QN(n15) );
  DFF_X1 state_reg_6_ ( .D(n58), .CK(clk), .Q(state[6]), .QN(n13) );
  DLL_X1 config_enable_reg ( .D(n61), .GN(n37), .Q(config_enable) );
  DLL_X1 expand_enable_reg ( .D(n7), .GN(n37), .Q(expand_enable) );
  DLL_X1 judge_enable_reg ( .D(n11), .GN(n37), .Q(judge_enable) );
  DLL_X1 mac_1_enable_reg ( .D(N204), .GN(n37), .Q(mac_1_enable) );
  DLL_X1 mac_2_enable_reg ( .D(N205), .GN(n37), .Q(mac_2_enable) );
  DLL_X1 mac_3_enable_reg ( .D(n4), .GN(n37), .Q(mac_3_enable) );
  DLL_X1 mac_4_enable_reg ( .D(N207), .GN(n37), .Q(mac_4_enable) );
  DLL_X1 load_enable_reg ( .D(n12), .GN(n37), .Q(load_enable) );
  DLL_X1 add_enable_reg ( .D(n21), .GN(n37), .Q(add_enable) );
  DLL_X1 done_reg ( .D(n62), .GN(n37), .Q(done) );
  NAND3_X1 U51 ( .A1(n27), .A2(n22), .A3(enable[0]), .ZN(n26) );
  OAI33_X1 U52 ( .A1(n17), .A2(n6), .A3(n1), .B1(n29), .B2(n30), .B3(n3), .ZN(
        n55) );
  NAND3_X1 U53 ( .A1(n61), .A2(rst_n), .A3(configuration[0]), .ZN(n36) );
  NAND4_X1 U54 ( .A1(n33), .A2(n32), .A3(n10), .A4(n46), .ZN(n38) );
  NAND3_X1 U55 ( .A1(n9), .A2(n47), .A3(state[3]), .ZN(n31) );
  NAND4_X1 U56 ( .A1(state[1]), .A2(n49), .A3(n50), .A4(n20), .ZN(n28) );
  NAND4_X1 U57 ( .A1(state[2]), .A2(n51), .A3(n20), .A4(n16), .ZN(n30) );
  NAND3_X1 U58 ( .A1(n49), .A2(n51), .A3(state[0]), .ZN(n42) );
  NAND4_X1 U59 ( .A1(state[4]), .A2(n51), .A3(n20), .A4(n18), .ZN(n32) );
  NAND4_X1 U60 ( .A1(state[5]), .A2(n52), .A3(n47), .A4(n17), .ZN(n33) );
  INV_X1 U3 ( .A(n37), .ZN(n6) );
  OAI21_X1 U4 ( .B1(n30), .B2(n40), .A(n6), .ZN(n34) );
  NAND2_X1 U5 ( .A1(n24), .A2(n3), .ZN(n40) );
  NAND2_X1 U6 ( .A1(rst_n), .A2(n34), .ZN(n25) );
  INV_X1 U7 ( .A(n27), .ZN(n23) );
  NOR2_X1 U8 ( .A1(n38), .A2(n61), .ZN(n37) );
  NOR4_X1 U9 ( .A1(n22), .A2(n14), .A3(n12), .A4(n7), .ZN(n46) );
  INV_X1 U10 ( .A(n30), .ZN(n14) );
  INV_X1 U11 ( .A(n42), .ZN(n22) );
  INV_X1 U12 ( .A(n28), .ZN(n12) );
  INV_X1 U13 ( .A(n31), .ZN(n7) );
  INV_X1 U14 ( .A(n48), .ZN(n9) );
  INV_X1 U15 ( .A(n62), .ZN(n10) );
  INV_X1 U16 ( .A(n32), .ZN(n21) );
  INV_X1 U17 ( .A(n33), .ZN(n11) );
  INV_X1 U18 ( .A(n43), .ZN(n4) );
  OAI22_X1 U19 ( .A1(n13), .A2(n25), .B1(n23), .B2(n33), .ZN(n58) );
  OAI22_X1 U20 ( .A1(n15), .A2(n25), .B1(n23), .B2(n32), .ZN(n57) );
  OAI22_X1 U21 ( .A1(n16), .A2(n25), .B1(n23), .B2(n31), .ZN(n56) );
  OAI22_X1 U22 ( .A1(n18), .A2(n25), .B1(n23), .B2(n28), .ZN(n54) );
  OAI22_X1 U23 ( .A1(n8), .A2(n39), .B1(n2), .B2(n20), .ZN(n60) );
  INV_X1 U24 ( .A(n34), .ZN(n2) );
  INV_X1 U25 ( .A(n36), .ZN(n8) );
  AOI211_X1 U26 ( .C1(n41), .C2(n24), .A(n1), .B(n61), .ZN(n39) );
  NOR2_X1 U27 ( .A1(n1), .A2(configuration[0]), .ZN(n27) );
  OAI21_X1 U28 ( .B1(enable[0]), .B2(n42), .A(n10), .ZN(n41) );
  INV_X1 U29 ( .A(configuration[0]), .ZN(n24) );
  OAI21_X1 U30 ( .B1(n19), .B2(n25), .A(n26), .ZN(n53) );
  OAI21_X1 U31 ( .B1(n35), .B2(n1), .A(n36), .ZN(n59) );
  AOI22_X1 U32 ( .A1(state[7]), .A2(n37), .B1(configuration[0]), .B2(n38), 
        .ZN(n35) );
  NAND2_X1 U33 ( .A1(rst_n), .A2(n24), .ZN(n29) );
  NOR2_X1 U34 ( .A1(state[7]), .A2(state[6]), .ZN(n47) );
  NOR2_X1 U35 ( .A1(state[4]), .A2(state[2]), .ZN(n49) );
  NAND2_X1 U36 ( .A1(n52), .A2(n15), .ZN(n48) );
  AND3_X1 U37 ( .A1(n20), .A2(n19), .A3(n49), .ZN(n52) );
  AND2_X1 U38 ( .A1(n50), .A2(n19), .ZN(n51) );
  AND3_X1 U39 ( .A1(n17), .A2(n15), .A3(n47), .ZN(n50) );
  NOR4_X1 U40 ( .A1(n13), .A2(n48), .A3(state[3]), .A4(state[7]), .ZN(n62) );
  AND4_X1 U41 ( .A1(state[7]), .A2(n9), .A3(n17), .A4(n13), .ZN(n61) );
  INV_X1 U42 ( .A(mac_done[0]), .ZN(n3) );
  OAI21_X1 U43 ( .B1(n44), .B2(n30), .A(n43), .ZN(N205) );
  XNOR2_X1 U44 ( .A(tap_num[2]), .B(n45), .ZN(n44) );
  NOR2_X1 U45 ( .A1(tap_num[0]), .A2(tap_num[1]), .ZN(n45) );
  OAI21_X1 U46 ( .B1(tap_num[2]), .B2(n30), .A(n5), .ZN(N204) );
  INV_X1 U47 ( .A(N205), .ZN(n5) );
  NAND2_X1 U48 ( .A1(tap_num[3]), .A2(n14), .ZN(n43) );
  AND3_X1 U49 ( .A1(tap_num[3]), .A2(n14), .A3(tap_num[2]), .ZN(N207) );
  INV_X1 U50 ( .A(rst_n), .ZN(n1) );
endmodule


module mac_operate_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:2] carry;

  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .S(SUM[9]) );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2_X1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module mac_operate_0_DW_mult_uns_0 ( a, b, product );
  input [6:0] a;
  input [6:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n108, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n119, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185;

  FA_X1 U2 ( .A(n13), .B(n73), .CI(n2), .CO(product[13]), .S(product[12]) );
  FA_X1 U3 ( .A(n15), .B(n14), .CI(n3), .CO(n2), .S(product[11]) );
  FA_X1 U4 ( .A(n19), .B(n16), .CI(n4), .CO(n3), .S(product[10]) );
  FA_X1 U5 ( .A(n20), .B(n25), .CI(n5), .CO(n4), .S(product[9]) );
  FA_X1 U6 ( .A(n26), .B(n33), .CI(n6), .CO(n5), .S(product[8]) );
  FA_X1 U7 ( .A(n34), .B(n43), .CI(n160), .CO(n6), .S(product[7]) );
  FA_X1 U14 ( .A(n74), .B(n80), .CI(n17), .CO(n13), .S(n14) );
  FA_X1 U15 ( .A(n18), .B(n23), .CI(n21), .CO(n15), .S(n16) );
  FA_X1 U16 ( .A(n75), .B(n87), .CI(n81), .CO(n17), .S(n18) );
  FA_X1 U17 ( .A(n27), .B(n24), .CI(n22), .CO(n19), .S(n20) );
  FA_X1 U18 ( .A(n31), .B(n88), .CI(n29), .CO(n21), .S(n22) );
  FA_X1 U19 ( .A(n76), .B(n94), .CI(n82), .CO(n23), .S(n24) );
  FA_X1 U20 ( .A(n35), .B(n30), .CI(n28), .CO(n25), .S(n26) );
  FA_X1 U21 ( .A(n32), .B(n39), .CI(n37), .CO(n27), .S(n28) );
  FA_X1 U22 ( .A(n89), .B(n95), .CI(n41), .CO(n29), .S(n30) );
  FA_X1 U23 ( .A(n77), .B(n101), .CI(n83), .CO(n31), .S(n32) );
  FA_X1 U24 ( .A(n45), .B(n38), .CI(n36), .CO(n33), .S(n34) );
  FA_X1 U25 ( .A(n47), .B(n49), .CI(n40), .CO(n35), .S(n36) );
  FA_X1 U26 ( .A(n51), .B(n102), .CI(n42), .CO(n37), .S(n38) );
  FA_X1 U27 ( .A(n108), .B(n96), .CI(n90), .CO(n39), .S(n40) );
  HA_X1 U28 ( .A(n84), .B(n78), .CO(n41), .S(n42) );
  FA_X1 U29 ( .A(n48), .B(n55), .CI(n46), .CO(n43), .S(n44) );
  FA_X1 U30 ( .A(n57), .B(n52), .CI(n50), .CO(n45), .S(n46) );
  FA_X1 U31 ( .A(n97), .B(n103), .CI(n59), .CO(n47), .S(n48) );
  FA_X1 U32 ( .A(n91), .B(n115), .CI(n109), .CO(n49), .S(n50) );
  HA_X1 U33 ( .A(n85), .B(n79), .CO(n51), .S(n52) );
  FA_X1 U34 ( .A(n58), .B(n63), .CI(n56), .CO(n53), .S(n54) );
  FA_X1 U35 ( .A(n65), .B(n110), .CI(n60), .CO(n55), .S(n56) );
  FA_X1 U36 ( .A(n98), .B(n116), .CI(n104), .CO(n57), .S(n58) );
  HA_X1 U37 ( .A(n92), .B(n86), .CO(n59), .S(n60) );
  FA_X1 U38 ( .A(n66), .B(n69), .CI(n67), .CO(n61), .S(n62) );
  FA_X1 U39 ( .A(n105), .B(n117), .CI(n111), .CO(n63), .S(n64) );
  HA_X1 U40 ( .A(n99), .B(n93), .CO(n65), .S(n66) );
  FA_X1 U41 ( .A(n112), .B(n118), .CI(n71), .CO(n67), .S(n68) );
  HA_X1 U42 ( .A(n106), .B(n100), .CO(n69), .S(n70) );
  HA_X1 U43 ( .A(n119), .B(n113), .CO(n71), .S(n72) );
  INV_X1 U108 ( .A(n70), .ZN(n166) );
  INV_X1 U109 ( .A(n68), .ZN(n169) );
  INV_X1 U110 ( .A(n180), .ZN(n162) );
  INV_X1 U111 ( .A(n181), .ZN(n164) );
  INV_X1 U112 ( .A(n179), .ZN(n160) );
  INV_X1 U113 ( .A(a[3]), .ZN(n167) );
  INV_X1 U114 ( .A(b[1]), .ZN(n176) );
  INV_X1 U115 ( .A(a[1]), .ZN(n170) );
  INV_X1 U116 ( .A(a[6]), .ZN(n161) );
  INV_X1 U117 ( .A(a[5]), .ZN(n163) );
  INV_X1 U118 ( .A(b[6]), .ZN(n171) );
  INV_X1 U119 ( .A(b[0]), .ZN(n178) );
  INV_X1 U120 ( .A(b[2]), .ZN(n175) );
  INV_X1 U121 ( .A(b[3]), .ZN(n174) );
  INV_X1 U122 ( .A(b[4]), .ZN(n173) );
  INV_X1 U123 ( .A(b[5]), .ZN(n172) );
  INV_X1 U124 ( .A(a[0]), .ZN(n177) );
  INV_X1 U125 ( .A(a[2]), .ZN(n168) );
  INV_X1 U126 ( .A(a[4]), .ZN(n165) );
  NOR2_X1 U127 ( .A1(n167), .A2(n176), .ZN(n99) );
  NOR2_X1 U128 ( .A1(n167), .A2(n175), .ZN(n98) );
  NOR2_X1 U129 ( .A1(n167), .A2(n174), .ZN(n97) );
  NOR2_X1 U130 ( .A1(n167), .A2(n173), .ZN(n96) );
  NOR2_X1 U131 ( .A1(n167), .A2(n172), .ZN(n95) );
  NOR2_X1 U132 ( .A1(n167), .A2(n171), .ZN(n94) );
  NOR2_X1 U133 ( .A1(n165), .A2(n178), .ZN(n93) );
  NOR2_X1 U134 ( .A1(n176), .A2(n165), .ZN(n92) );
  NOR2_X1 U135 ( .A1(n175), .A2(n165), .ZN(n91) );
  NOR2_X1 U136 ( .A1(n174), .A2(n165), .ZN(n90) );
  NOR2_X1 U137 ( .A1(n173), .A2(n165), .ZN(n89) );
  NOR2_X1 U138 ( .A1(n172), .A2(n165), .ZN(n88) );
  NOR2_X1 U139 ( .A1(n171), .A2(n165), .ZN(n87) );
  NOR2_X1 U140 ( .A1(n178), .A2(n163), .ZN(n86) );
  NOR2_X1 U141 ( .A1(n176), .A2(n163), .ZN(n85) );
  NOR2_X1 U142 ( .A1(n175), .A2(n163), .ZN(n84) );
  NOR2_X1 U143 ( .A1(n174), .A2(n163), .ZN(n83) );
  NOR2_X1 U144 ( .A1(n173), .A2(n163), .ZN(n82) );
  NOR2_X1 U145 ( .A1(n172), .A2(n163), .ZN(n81) );
  NOR2_X1 U146 ( .A1(n171), .A2(n163), .ZN(n80) );
  NOR2_X1 U147 ( .A1(n178), .A2(n161), .ZN(n79) );
  NOR2_X1 U148 ( .A1(n176), .A2(n161), .ZN(n78) );
  NOR2_X1 U149 ( .A1(n175), .A2(n161), .ZN(n77) );
  NOR2_X1 U150 ( .A1(n174), .A2(n161), .ZN(n76) );
  NOR2_X1 U151 ( .A1(n173), .A2(n161), .ZN(n75) );
  NOR2_X1 U152 ( .A1(n172), .A2(n161), .ZN(n74) );
  NOR2_X1 U153 ( .A1(n171), .A2(n161), .ZN(n73) );
  AOI222_X1 U154 ( .A1(n162), .A2(n44), .B1(n162), .B2(n53), .C1(n53), .C2(n44), .ZN(n179) );
  AOI222_X1 U155 ( .A1(n164), .A2(n54), .B1(n164), .B2(n61), .C1(n61), .C2(n54), .ZN(n180) );
  AOI222_X1 U156 ( .A1(n182), .A2(n62), .B1(n182), .B2(n64), .C1(n64), .C2(n62), .ZN(n181) );
  OAI222_X1 U157 ( .A1(n183), .A2(n169), .B1(n169), .B2(n166), .C1(n183), .C2(
        n166), .ZN(n182) );
  AOI222_X1 U158 ( .A1(n72), .A2(n184), .B1(n185), .B2(n72), .C1(n185), .C2(
        n184), .ZN(n183) );
  NOR2_X1 U159 ( .A1(n168), .A2(n178), .ZN(n185) );
  NOR4_X1 U160 ( .A1(n170), .A2(n177), .A3(n178), .A4(n176), .ZN(n184) );
  NOR2_X1 U161 ( .A1(n175), .A2(n177), .ZN(n119) );
  NOR2_X1 U162 ( .A1(n174), .A2(n177), .ZN(n118) );
  NOR2_X1 U163 ( .A1(n173), .A2(n177), .ZN(n117) );
  NOR2_X1 U164 ( .A1(n172), .A2(n177), .ZN(n116) );
  NOR2_X1 U165 ( .A1(n171), .A2(n177), .ZN(n115) );
  NOR2_X1 U166 ( .A1(n176), .A2(n170), .ZN(n113) );
  NOR2_X1 U167 ( .A1(n175), .A2(n170), .ZN(n112) );
  NOR2_X1 U168 ( .A1(n174), .A2(n170), .ZN(n111) );
  NOR2_X1 U169 ( .A1(n173), .A2(n170), .ZN(n110) );
  NOR2_X1 U170 ( .A1(n172), .A2(n170), .ZN(n109) );
  NOR2_X1 U171 ( .A1(n171), .A2(n170), .ZN(n108) );
  NOR2_X1 U172 ( .A1(n176), .A2(n168), .ZN(n106) );
  NOR2_X1 U173 ( .A1(n175), .A2(n168), .ZN(n105) );
  NOR2_X1 U174 ( .A1(n174), .A2(n168), .ZN(n104) );
  NOR2_X1 U175 ( .A1(n173), .A2(n168), .ZN(n103) );
  NOR2_X1 U176 ( .A1(n172), .A2(n168), .ZN(n102) );
  NOR2_X1 U177 ( .A1(n171), .A2(n168), .ZN(n101) );
  NOR2_X1 U178 ( .A1(n167), .A2(n178), .ZN(n100) );
endmodule


module mac_operate_0 ( op_1, op_2, ac_sum_old, ac_sum_new );
  input [7:0] op_1;
  input [7:0] op_2;
  input [9:0] ac_sum_old;
  output [9:0] ac_sum_new;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, flag, N21,
         N22, N23, N24, N25, N26, N27, n36, n37, n38, n39, n40, n41, n43, n44,
         n45, n46, n47, n48, n50, n51, n52, n53, n54, n55, n3, n4, n5, n6, n11,
         n12, n13, n14, n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n57, n58, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7;
  wire   [6:1] op_1_ori;
  wire   [6:1] op_2_ori;
  wire   [13:8] mul_temp;
  wire   [5:2] sub_add_126_b0_carry;
  wire   [5:2] sub_add_125_b0_carry;
  wire   [5:2] sub_add_130_b0_carry;

  mac_operate_0_DW01_add_0 add_131 ( .A(ac_sum_old), .B({flag, flag, flag, n26, 
        n27, n28, n29, n30, n31, n32}), .CI(1'b0), .SUM(ac_sum_new) );
  mac_operate_0_DW_mult_uns_0 mult_128 ( .a({op_1_ori, op_1[0]}), .b({op_2_ori, 
        op_2[0]}), .product({mul_temp, N21, SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7}) );
  INV_X1 U2 ( .A(n55), .ZN(n31) );
  INV_X1 U5 ( .A(mul_temp[9]), .ZN(n3) );
  INV_X1 U6 ( .A(mul_temp[10]), .ZN(n4) );
  INV_X1 U8 ( .A(mul_temp[11]), .ZN(n5) );
  INV_X1 U9 ( .A(mul_temp[12]), .ZN(n6) );
  AOI22_X1 U11 ( .A1(mul_temp[8]), .A2(n23), .B1(N22), .B2(flag), .ZN(n55) );
  INV_X1 U14 ( .A(flag), .ZN(n23) );
  INV_X1 U17 ( .A(n46), .ZN(op_1_ori[3]) );
  AOI22_X1 U18 ( .A1(N8), .A2(op_1[7]), .B1(op_1[3]), .B2(n24), .ZN(n46) );
  INV_X1 U19 ( .A(n41), .ZN(op_2_ori[1]) );
  AOI22_X1 U20 ( .A1(N14), .A2(op_2[7]), .B1(op_2[1]), .B2(n25), .ZN(n41) );
  INV_X1 U21 ( .A(n48), .ZN(op_1_ori[1]) );
  AOI22_X1 U22 ( .A1(N6), .A2(op_1[7]), .B1(op_1[1]), .B2(n24), .ZN(n48) );
  INV_X1 U23 ( .A(n43), .ZN(op_1_ori[6]) );
  AOI22_X1 U24 ( .A1(op_1[7]), .A2(N11), .B1(op_1[6]), .B2(n24), .ZN(n43) );
  INV_X1 U25 ( .A(n44), .ZN(op_1_ori[5]) );
  AOI22_X1 U26 ( .A1(N10), .A2(op_1[7]), .B1(op_1[5]), .B2(n24), .ZN(n44) );
  INV_X1 U27 ( .A(n54), .ZN(n30) );
  AOI22_X1 U28 ( .A1(mul_temp[9]), .A2(n23), .B1(N23), .B2(flag), .ZN(n54) );
  INV_X1 U29 ( .A(n53), .ZN(n29) );
  AOI22_X1 U30 ( .A1(mul_temp[10]), .A2(n23), .B1(N24), .B2(flag), .ZN(n53) );
  INV_X1 U31 ( .A(n52), .ZN(n28) );
  AOI22_X1 U32 ( .A1(mul_temp[11]), .A2(n23), .B1(N25), .B2(flag), .ZN(n52) );
  INV_X1 U33 ( .A(n51), .ZN(n27) );
  AOI22_X1 U34 ( .A1(mul_temp[12]), .A2(n23), .B1(N26), .B2(flag), .ZN(n51) );
  INV_X1 U35 ( .A(n50), .ZN(n26) );
  AOI22_X1 U36 ( .A1(mul_temp[13]), .A2(n23), .B1(N27), .B2(flag), .ZN(n50) );
  INV_X1 U37 ( .A(n36), .ZN(op_2_ori[6]) );
  AOI22_X1 U38 ( .A1(op_2[7]), .A2(N19), .B1(op_2[6]), .B2(n25), .ZN(n36) );
  INV_X1 U41 ( .A(n40), .ZN(op_2_ori[2]) );
  AOI22_X1 U42 ( .A1(N15), .A2(op_2[7]), .B1(op_2[2]), .B2(n25), .ZN(n40) );
  INV_X1 U43 ( .A(n39), .ZN(op_2_ori[3]) );
  AOI22_X1 U45 ( .A1(N16), .A2(op_2[7]), .B1(op_2[3]), .B2(n25), .ZN(n39) );
  INV_X1 U46 ( .A(n38), .ZN(op_2_ori[4]) );
  AOI22_X1 U47 ( .A1(N17), .A2(op_2[7]), .B1(op_2[4]), .B2(n25), .ZN(n38) );
  INV_X1 U48 ( .A(n37), .ZN(op_2_ori[5]) );
  AOI22_X1 U49 ( .A1(N18), .A2(op_2[7]), .B1(op_2[5]), .B2(n25), .ZN(n37) );
  INV_X1 U52 ( .A(n47), .ZN(op_1_ori[2]) );
  AOI22_X1 U53 ( .A1(N7), .A2(op_1[7]), .B1(op_1[2]), .B2(n24), .ZN(n47) );
  INV_X1 U54 ( .A(n45), .ZN(op_1_ori[4]) );
  AOI22_X1 U55 ( .A1(N9), .A2(op_1[7]), .B1(op_1[4]), .B2(n24), .ZN(n45) );
  INV_X1 U60 ( .A(op_2[2]), .ZN(n18) );
  INV_X1 U61 ( .A(op_1[2]), .ZN(n11) );
  INV_X1 U62 ( .A(op_2[3]), .ZN(n19) );
  INV_X1 U63 ( .A(op_1[3]), .ZN(n12) );
  INV_X1 U64 ( .A(op_2[4]), .ZN(n20) );
  INV_X1 U65 ( .A(op_1[4]), .ZN(n13) );
  INV_X1 U66 ( .A(op_1[5]), .ZN(n14) );
  INV_X1 U67 ( .A(op_2[5]), .ZN(n21) );
  XOR2_X1 U72 ( .A(n6), .B(sub_add_130_b0_carry[5]), .Z(N26) );
  AND2_X1 U73 ( .A1(sub_add_130_b0_carry[4]), .A2(n5), .ZN(
        sub_add_130_b0_carry[5]) );
  XOR2_X1 U74 ( .A(n5), .B(sub_add_130_b0_carry[4]), .Z(N25) );
  AND2_X1 U75 ( .A1(sub_add_130_b0_carry[3]), .A2(n4), .ZN(
        sub_add_130_b0_carry[4]) );
  XOR2_X1 U76 ( .A(n4), .B(sub_add_130_b0_carry[3]), .Z(N24) );
  AND2_X1 U77 ( .A1(sub_add_130_b0_carry[2]), .A2(n3), .ZN(
        sub_add_130_b0_carry[3]) );
  XOR2_X1 U78 ( .A(n3), .B(sub_add_130_b0_carry[2]), .Z(N23) );
  XOR2_X1 U84 ( .A(n14), .B(sub_add_125_b0_carry[5]), .Z(N10) );
  AND2_X1 U85 ( .A1(sub_add_125_b0_carry[4]), .A2(n13), .ZN(
        sub_add_125_b0_carry[5]) );
  XOR2_X1 U86 ( .A(n13), .B(sub_add_125_b0_carry[4]), .Z(N9) );
  XOR2_X1 U88 ( .A(n21), .B(sub_add_126_b0_carry[5]), .Z(N18) );
  AND2_X1 U89 ( .A1(sub_add_126_b0_carry[4]), .A2(n20), .ZN(
        sub_add_126_b0_carry[5]) );
  XOR2_X1 U90 ( .A(n20), .B(sub_add_126_b0_carry[4]), .Z(N17) );
  AND2_X1 U91 ( .A1(sub_add_126_b0_carry[3]), .A2(n19), .ZN(
        sub_add_126_b0_carry[4]) );
  XOR2_X1 U92 ( .A(n19), .B(sub_add_126_b0_carry[3]), .Z(N16) );
  AND2_X1 U93 ( .A1(sub_add_126_b0_carry[2]), .A2(n18), .ZN(
        sub_add_126_b0_carry[3]) );
  XOR2_X1 U94 ( .A(n18), .B(sub_add_126_b0_carry[2]), .Z(N15) );
  AND2_X1 U97 ( .A1(sub_add_125_b0_carry[3]), .A2(n12), .ZN(
        sub_add_125_b0_carry[4]) );
  XOR2_X1 U98 ( .A(n12), .B(sub_add_125_b0_carry[3]), .Z(N8) );
  AND2_X1 U99 ( .A1(sub_add_125_b0_carry[2]), .A2(n11), .ZN(
        sub_add_125_b0_carry[3]) );
  XOR2_X1 U100 ( .A(n11), .B(sub_add_125_b0_carry[2]), .Z(N7) );
  XOR2_X1 U4 ( .A(mul_temp[8]), .B(N21), .Z(N22) );
  INV_X1 U7 ( .A(n33), .ZN(flag) );
  XOR2_X1 U10 ( .A(n24), .B(op_2[7]), .Z(n33) );
  XOR2_X1 U12 ( .A(mul_temp[13]), .B(n34), .Z(N27) );
  NAND2_X1 U13 ( .A1(n6), .A2(sub_add_130_b0_carry[5]), .ZN(n34) );
  INV_X1 U15 ( .A(n35), .ZN(n32) );
  OAI21_X1 U16 ( .B1(n23), .B2(flag), .A(N21), .ZN(n35) );
  NOR2_X1 U39 ( .A1(N21), .A2(mul_temp[8]), .ZN(sub_add_130_b0_carry[2]) );
  XOR2_X1 U40 ( .A(op_1[6]), .B(n57), .Z(N11) );
  NAND2_X1 U44 ( .A1(n14), .A2(sub_add_125_b0_carry[5]), .ZN(n57) );
  XOR2_X1 U50 ( .A(op_2[6]), .B(n58), .Z(N19) );
  NAND2_X1 U51 ( .A1(n21), .A2(sub_add_126_b0_carry[5]), .ZN(n58) );
  INV_X1 U56 ( .A(op_2[7]), .ZN(n25) );
  INV_X1 U57 ( .A(op_1[7]), .ZN(n24) );
  XOR2_X1 U58 ( .A(op_1[1]), .B(op_1[0]), .Z(N6) );
  XOR2_X1 U59 ( .A(op_2[1]), .B(op_2[0]), .Z(N14) );
  NOR2_X1 U68 ( .A1(op_1[0]), .A2(op_1[1]), .ZN(sub_add_125_b0_carry[2]) );
  NOR2_X1 U69 ( .A1(op_2[0]), .A2(op_2[1]), .ZN(sub_add_126_b0_carry[2]) );
endmodule


module MAC_0 ( clk, rst_n, mac_enable, h_0, h_1, h_2, h_3, data_0, data_1, 
        data_2, data_3, data_out, mac_done );
  input [0:0] mac_enable;
  input [7:0] h_0;
  input [7:0] h_1;
  input [7:0] h_2;
  input [7:0] h_3;
  input [7:0] data_0;
  input [7:0] data_1;
  input [7:0] data_2;
  input [7:0] data_3;
  output [9:0] data_out;
  output [0:0] mac_done;
  input clk, rst_n;
  wire   N20, N22, N60, n6, n7, n8, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n121, n122, n123, n124;
  wire   [2:0] cnt;
  wire   [9:0] ac_sum_new;
  wire   [7:0] op_1;
  wire   [7:0] op_2;
  wire   [9:0] ac_sum_old;

  DFFR_X1 cnt_reg_0_ ( .D(N20), .CK(clk), .RN(rst_n), .Q(cnt[0]), .QN(n8) );
  SDFFR_X1 cnt_reg_1_ ( .D(n83), .SI(1'b0), .SE(n84), .CK(clk), .RN(rst_n), 
        .Q(cnt[1]), .QN(n7) );
  DFFR_X1 cnt_reg_2_ ( .D(N22), .CK(clk), .RN(rst_n), .Q(cnt[2]), .QN(n6) );
  DFFR_X1 op_1_reg_7_ ( .D(n120), .CK(clk), .RN(rst_n), .Q(op_1[7]) );
  DFFR_X1 op_1_reg_6_ ( .D(n119), .CK(clk), .RN(rst_n), .Q(op_1[6]) );
  DFFR_X1 op_1_reg_5_ ( .D(n118), .CK(clk), .RN(rst_n), .Q(op_1[5]) );
  DFFR_X1 op_1_reg_4_ ( .D(n117), .CK(clk), .RN(rst_n), .Q(op_1[4]) );
  DFFR_X1 op_1_reg_3_ ( .D(n116), .CK(clk), .RN(rst_n), .Q(op_1[3]) );
  DFFR_X1 op_1_reg_2_ ( .D(n115), .CK(clk), .RN(rst_n), .Q(op_1[2]) );
  DFFR_X1 op_1_reg_1_ ( .D(n114), .CK(clk), .RN(rst_n), .Q(op_1[1]) );
  DFFR_X1 op_1_reg_0_ ( .D(n113), .CK(clk), .RN(rst_n), .Q(op_1[0]) );
  DFFR_X1 op_2_reg_7_ ( .D(n112), .CK(clk), .RN(rst_n), .Q(op_2[7]) );
  DFFR_X1 op_2_reg_6_ ( .D(n111), .CK(clk), .RN(rst_n), .Q(op_2[6]) );
  DFFR_X1 op_2_reg_5_ ( .D(n110), .CK(clk), .RN(rst_n), .Q(op_2[5]) );
  DFFR_X1 op_2_reg_4_ ( .D(n109), .CK(clk), .RN(rst_n), .Q(op_2[4]) );
  DFFR_X1 op_2_reg_3_ ( .D(n108), .CK(clk), .RN(rst_n), .Q(op_2[3]) );
  DFFR_X1 op_2_reg_2_ ( .D(n107), .CK(clk), .RN(rst_n), .Q(op_2[2]) );
  DFFR_X1 op_2_reg_1_ ( .D(n106), .CK(clk), .RN(rst_n), .Q(op_2[1]) );
  DFFR_X1 op_2_reg_0_ ( .D(n105), .CK(clk), .RN(rst_n), .Q(op_2[0]) );
  DFFR_X1 ac_sum_old_reg_0_ ( .D(n104), .CK(clk), .RN(rst_n), .Q(ac_sum_old[0]) );
  DFFR_X1 ac_sum_old_reg_1_ ( .D(n103), .CK(clk), .RN(rst_n), .Q(ac_sum_old[1]) );
  DFFR_X1 ac_sum_old_reg_2_ ( .D(n102), .CK(clk), .RN(rst_n), .Q(ac_sum_old[2]) );
  DFFR_X1 ac_sum_old_reg_3_ ( .D(n101), .CK(clk), .RN(rst_n), .Q(ac_sum_old[3]) );
  DFFR_X1 ac_sum_old_reg_4_ ( .D(n100), .CK(clk), .RN(rst_n), .Q(ac_sum_old[4]) );
  DFFR_X1 ac_sum_old_reg_5_ ( .D(n99), .CK(clk), .RN(rst_n), .Q(ac_sum_old[5])
         );
  DFFR_X1 ac_sum_old_reg_6_ ( .D(n98), .CK(clk), .RN(rst_n), .Q(ac_sum_old[6])
         );
  DFFR_X1 ac_sum_old_reg_7_ ( .D(n97), .CK(clk), .RN(rst_n), .Q(ac_sum_old[7])
         );
  DFFR_X1 ac_sum_old_reg_8_ ( .D(n96), .CK(clk), .RN(rst_n), .Q(ac_sum_old[8])
         );
  DFFR_X1 ac_sum_old_reg_9_ ( .D(n95), .CK(clk), .RN(rst_n), .Q(ac_sum_old[9])
         );
  DFFR_X1 mac_done_reg_0_ ( .D(N60), .CK(clk), .RN(rst_n), .Q(mac_done[0]) );
  DFF_X1 data_out_reg_9_ ( .D(n94), .CK(clk), .Q(data_out[9]) );
  DFF_X1 data_out_reg_8_ ( .D(n93), .CK(clk), .Q(data_out[8]) );
  DFF_X1 data_out_reg_7_ ( .D(n92), .CK(clk), .Q(data_out[7]) );
  DFF_X1 data_out_reg_6_ ( .D(n91), .CK(clk), .Q(data_out[6]) );
  DFF_X1 data_out_reg_5_ ( .D(n90), .CK(clk), .Q(data_out[5]) );
  DFF_X1 data_out_reg_4_ ( .D(n89), .CK(clk), .Q(data_out[4]) );
  DFF_X1 data_out_reg_3_ ( .D(n88), .CK(clk), .Q(data_out[3]) );
  DFF_X1 data_out_reg_2_ ( .D(n87), .CK(clk), .Q(data_out[2]) );
  DFF_X1 data_out_reg_1_ ( .D(n86), .CK(clk), .Q(data_out[1]) );
  DFF_X1 data_out_reg_0_ ( .D(n85), .CK(clk), .Q(data_out[0]) );
  NOR3_X2 U95 ( .A1(n47), .A2(n46), .A3(n123), .ZN(n33) );
  NAND3_X1 U120 ( .A1(n8), .A2(n7), .A3(n80), .ZN(n78) );
  NAND3_X1 U121 ( .A1(cnt[0]), .A2(n80), .A3(cnt[1]), .ZN(n79) );
  XOR2_X1 U122 ( .A(n8), .B(cnt[1]), .Z(n84) );
  mac_operate_0 mac_operate_inst ( .op_1(op_1), .op_2(op_2), .ac_sum_old(
        ac_sum_old), .ac_sum_new(ac_sum_new) );
  INV_X1 U4 ( .A(ac_sum_new[0]), .ZN(n19) );
  NAND2_X1 U5 ( .A1(n32), .A2(rst_n), .ZN(n22) );
  NAND2_X1 U10 ( .A1(N60), .A2(n121), .ZN(n20) );
  INV_X1 U11 ( .A(n22), .ZN(n121) );
  INV_X1 U12 ( .A(ac_sum_new[8]), .ZN(n11) );
  INV_X1 U13 ( .A(ac_sum_new[7]), .ZN(n12) );
  INV_X1 U14 ( .A(ac_sum_new[6]), .ZN(n13) );
  INV_X1 U15 ( .A(ac_sum_new[5]), .ZN(n14) );
  INV_X1 U16 ( .A(ac_sum_new[4]), .ZN(n15) );
  INV_X1 U17 ( .A(ac_sum_new[3]), .ZN(n16) );
  INV_X1 U18 ( .A(ac_sum_new[2]), .ZN(n17) );
  INV_X1 U19 ( .A(ac_sum_new[1]), .ZN(n18) );
  INV_X1 U20 ( .A(n79), .ZN(n123) );
  INV_X1 U22 ( .A(n78), .ZN(n122) );
  NOR2_X1 U23 ( .A1(n124), .A2(n81), .ZN(n83) );
  OAI21_X1 U25 ( .B1(n20), .B2(n19), .A(n21), .ZN(n85) );
  NAND2_X1 U26 ( .A1(data_out[0]), .A2(n22), .ZN(n21) );
  OAI21_X1 U27 ( .B1(n20), .B2(n18), .A(n23), .ZN(n86) );
  NAND2_X1 U28 ( .A1(data_out[1]), .A2(n22), .ZN(n23) );
  OAI21_X1 U29 ( .B1(n20), .B2(n17), .A(n24), .ZN(n87) );
  NAND2_X1 U30 ( .A1(data_out[2]), .A2(n22), .ZN(n24) );
  OAI21_X1 U31 ( .B1(n20), .B2(n16), .A(n25), .ZN(n88) );
  NAND2_X1 U32 ( .A1(data_out[3]), .A2(n22), .ZN(n25) );
  OAI21_X1 U33 ( .B1(n20), .B2(n15), .A(n26), .ZN(n89) );
  NAND2_X1 U34 ( .A1(data_out[4]), .A2(n22), .ZN(n26) );
  OAI21_X1 U35 ( .B1(n20), .B2(n14), .A(n27), .ZN(n90) );
  NAND2_X1 U36 ( .A1(data_out[5]), .A2(n22), .ZN(n27) );
  OAI21_X1 U37 ( .B1(n20), .B2(n13), .A(n28), .ZN(n91) );
  NAND2_X1 U38 ( .A1(data_out[6]), .A2(n22), .ZN(n28) );
  OAI21_X1 U39 ( .B1(n20), .B2(n12), .A(n29), .ZN(n92) );
  NAND2_X1 U40 ( .A1(data_out[7]), .A2(n22), .ZN(n29) );
  OAI21_X1 U41 ( .B1(n20), .B2(n11), .A(n30), .ZN(n93) );
  NAND2_X1 U42 ( .A1(data_out[8]), .A2(n22), .ZN(n30) );
  OAI21_X1 U43 ( .B1(n20), .B2(n10), .A(n31), .ZN(n94) );
  NAND2_X1 U44 ( .A1(data_out[9]), .A2(n22), .ZN(n31) );
  OAI21_X1 U45 ( .B1(n33), .B2(n10), .A(n34), .ZN(n95) );
  NAND2_X1 U46 ( .A1(ac_sum_old[9]), .A2(n32), .ZN(n34) );
  OAI21_X1 U47 ( .B1(n33), .B2(n11), .A(n35), .ZN(n96) );
  NAND2_X1 U48 ( .A1(ac_sum_old[8]), .A2(n32), .ZN(n35) );
  OAI21_X1 U49 ( .B1(n33), .B2(n12), .A(n36), .ZN(n97) );
  NAND2_X1 U50 ( .A1(ac_sum_old[7]), .A2(n32), .ZN(n36) );
  OAI21_X1 U51 ( .B1(n33), .B2(n13), .A(n37), .ZN(n98) );
  NAND2_X1 U52 ( .A1(ac_sum_old[6]), .A2(n32), .ZN(n37) );
  INV_X1 U53 ( .A(ac_sum_new[9]), .ZN(n10) );
  OAI21_X1 U54 ( .B1(n33), .B2(n14), .A(n38), .ZN(n99) );
  NAND2_X1 U55 ( .A1(ac_sum_old[5]), .A2(n32), .ZN(n38) );
  OAI21_X1 U56 ( .B1(n33), .B2(n15), .A(n39), .ZN(n100) );
  NAND2_X1 U57 ( .A1(ac_sum_old[4]), .A2(n32), .ZN(n39) );
  OAI21_X1 U58 ( .B1(n33), .B2(n16), .A(n40), .ZN(n101) );
  NAND2_X1 U59 ( .A1(ac_sum_old[3]), .A2(n32), .ZN(n40) );
  OAI21_X1 U60 ( .B1(n33), .B2(n17), .A(n41), .ZN(n102) );
  NAND2_X1 U61 ( .A1(ac_sum_old[2]), .A2(n32), .ZN(n41) );
  OAI21_X1 U62 ( .B1(n33), .B2(n18), .A(n42), .ZN(n103) );
  NAND2_X1 U63 ( .A1(ac_sum_old[1]), .A2(n32), .ZN(n42) );
  OAI21_X1 U64 ( .B1(n33), .B2(n19), .A(n43), .ZN(n104) );
  NAND2_X1 U65 ( .A1(ac_sum_old[0]), .A2(n32), .ZN(n43) );
  AND3_X1 U66 ( .A1(n80), .A2(n8), .A3(cnt[1]), .ZN(n47) );
  AND3_X1 U67 ( .A1(n80), .A2(n7), .A3(cnt[0]), .ZN(n46) );
  NOR2_X1 U68 ( .A1(n124), .A2(cnt[2]), .ZN(n80) );
  NAND2_X1 U69 ( .A1(n60), .A2(n61), .ZN(n112) );
  AOI222_X1 U70 ( .A1(data_1[7]), .A2(n46), .B1(data_3[7]), .B2(n123), .C1(
        data_2[7]), .C2(n47), .ZN(n61) );
  AOI22_X1 U71 ( .A1(data_0[7]), .A2(n122), .B1(op_2[7]), .B2(n32), .ZN(n60)
         );
  NAND2_X1 U72 ( .A1(n76), .A2(n77), .ZN(n120) );
  AOI222_X1 U73 ( .A1(h_1[7]), .A2(n46), .B1(h_3[7]), .B2(n123), .C1(h_2[7]), 
        .C2(n47), .ZN(n77) );
  AOI22_X1 U74 ( .A1(h_0[7]), .A2(n122), .B1(op_1[7]), .B2(n32), .ZN(n76) );
  NAND2_X1 U75 ( .A1(n44), .A2(n45), .ZN(n105) );
  AOI222_X1 U76 ( .A1(data_1[0]), .A2(n46), .B1(data_3[0]), .B2(n123), .C1(
        data_2[0]), .C2(n47), .ZN(n45) );
  AOI22_X1 U77 ( .A1(data_0[0]), .A2(n122), .B1(op_2[0]), .B2(n32), .ZN(n44)
         );
  NAND2_X1 U78 ( .A1(n48), .A2(n49), .ZN(n106) );
  AOI222_X1 U79 ( .A1(data_1[1]), .A2(n46), .B1(data_3[1]), .B2(n123), .C1(
        data_2[1]), .C2(n47), .ZN(n49) );
  AOI22_X1 U80 ( .A1(data_0[1]), .A2(n122), .B1(op_2[1]), .B2(n32), .ZN(n48)
         );
  NAND2_X1 U81 ( .A1(n50), .A2(n51), .ZN(n107) );
  AOI222_X1 U82 ( .A1(data_1[2]), .A2(n46), .B1(data_3[2]), .B2(n123), .C1(
        data_2[2]), .C2(n47), .ZN(n51) );
  AOI22_X1 U83 ( .A1(data_0[2]), .A2(n122), .B1(op_2[2]), .B2(n32), .ZN(n50)
         );
  NAND2_X1 U84 ( .A1(n52), .A2(n53), .ZN(n108) );
  AOI222_X1 U85 ( .A1(data_1[3]), .A2(n46), .B1(data_3[3]), .B2(n123), .C1(
        data_2[3]), .C2(n47), .ZN(n53) );
  AOI22_X1 U86 ( .A1(data_0[3]), .A2(n122), .B1(op_2[3]), .B2(n32), .ZN(n52)
         );
  NAND2_X1 U87 ( .A1(n54), .A2(n55), .ZN(n109) );
  AOI222_X1 U88 ( .A1(data_1[4]), .A2(n46), .B1(data_3[4]), .B2(n123), .C1(
        data_2[4]), .C2(n47), .ZN(n55) );
  AOI22_X1 U89 ( .A1(data_0[4]), .A2(n122), .B1(op_2[4]), .B2(n32), .ZN(n54)
         );
  NAND2_X1 U90 ( .A1(n56), .A2(n57), .ZN(n110) );
  AOI222_X1 U91 ( .A1(data_1[5]), .A2(n46), .B1(data_3[5]), .B2(n123), .C1(
        data_2[5]), .C2(n47), .ZN(n57) );
  AOI22_X1 U92 ( .A1(data_0[5]), .A2(n122), .B1(op_2[5]), .B2(n32), .ZN(n56)
         );
  NAND2_X1 U93 ( .A1(n58), .A2(n59), .ZN(n111) );
  AOI222_X1 U94 ( .A1(data_1[6]), .A2(n46), .B1(data_3[6]), .B2(n123), .C1(
        data_2[6]), .C2(n47), .ZN(n59) );
  AOI22_X1 U96 ( .A1(data_0[6]), .A2(n122), .B1(op_2[6]), .B2(n32), .ZN(n58)
         );
  NAND2_X1 U97 ( .A1(n62), .A2(n63), .ZN(n113) );
  AOI222_X1 U98 ( .A1(h_1[0]), .A2(n46), .B1(h_3[0]), .B2(n123), .C1(h_2[0]), 
        .C2(n47), .ZN(n63) );
  AOI22_X1 U99 ( .A1(h_0[0]), .A2(n122), .B1(op_1[0]), .B2(n32), .ZN(n62) );
  NAND2_X1 U100 ( .A1(n64), .A2(n65), .ZN(n114) );
  AOI222_X1 U101 ( .A1(h_1[1]), .A2(n46), .B1(h_3[1]), .B2(n123), .C1(h_2[1]), 
        .C2(n47), .ZN(n65) );
  AOI22_X1 U102 ( .A1(h_0[1]), .A2(n122), .B1(op_1[1]), .B2(n32), .ZN(n64) );
  NAND2_X1 U103 ( .A1(n66), .A2(n67), .ZN(n115) );
  AOI222_X1 U104 ( .A1(h_1[2]), .A2(n46), .B1(h_3[2]), .B2(n123), .C1(h_2[2]), 
        .C2(n47), .ZN(n67) );
  AOI22_X1 U105 ( .A1(h_0[2]), .A2(n122), .B1(op_1[2]), .B2(n32), .ZN(n66) );
  NAND2_X1 U106 ( .A1(n68), .A2(n69), .ZN(n116) );
  AOI222_X1 U107 ( .A1(h_1[3]), .A2(n46), .B1(h_3[3]), .B2(n123), .C1(h_2[3]), 
        .C2(n47), .ZN(n69) );
  AOI22_X1 U108 ( .A1(h_0[3]), .A2(n122), .B1(op_1[3]), .B2(n32), .ZN(n68) );
  NAND2_X1 U109 ( .A1(n70), .A2(n71), .ZN(n117) );
  AOI222_X1 U110 ( .A1(h_1[4]), .A2(n46), .B1(h_3[4]), .B2(n123), .C1(h_2[4]), 
        .C2(n47), .ZN(n71) );
  AOI22_X1 U111 ( .A1(h_0[4]), .A2(n122), .B1(op_1[4]), .B2(n32), .ZN(n70) );
  NAND2_X1 U112 ( .A1(n72), .A2(n73), .ZN(n118) );
  AOI222_X1 U113 ( .A1(h_1[5]), .A2(n46), .B1(h_3[5]), .B2(n123), .C1(h_2[5]), 
        .C2(n47), .ZN(n73) );
  AOI22_X1 U114 ( .A1(h_0[5]), .A2(n122), .B1(op_1[5]), .B2(n32), .ZN(n72) );
  NAND2_X1 U115 ( .A1(n74), .A2(n75), .ZN(n119) );
  AOI222_X1 U116 ( .A1(h_1[6]), .A2(n46), .B1(h_3[6]), .B2(n123), .C1(h_2[6]), 
        .C2(n47), .ZN(n75) );
  AOI22_X1 U117 ( .A1(h_0[6]), .A2(n122), .B1(op_1[6]), .B2(n32), .ZN(n74) );
  NOR3_X1 U118 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n6), .ZN(n81) );
  OAI21_X1 U119 ( .B1(n82), .B2(n6), .A(n79), .ZN(N22) );
  AOI21_X1 U123 ( .B1(n83), .B2(n7), .A(N20), .ZN(n82) );
  AND2_X1 U124 ( .A1(n83), .A2(n8), .ZN(N20) );
  AND2_X1 U125 ( .A1(mac_enable[0]), .A2(n81), .ZN(N60) );
  INV_X1 U126 ( .A(mac_enable[0]), .ZN(n124) );
  AND2_X2 U6 ( .A1(n78), .A2(n33), .ZN(n32) );
endmodule


module mac_operate_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:2] carry;

  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .S(SUM[9]) );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2_X1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module mac_operate_3_DW_mult_uns_0 ( a, b, product );
  input [6:0] a;
  input [6:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n108, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n119, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185;

  FA_X1 U2 ( .A(n13), .B(n73), .CI(n2), .CO(product[13]), .S(product[12]) );
  FA_X1 U3 ( .A(n15), .B(n14), .CI(n3), .CO(n2), .S(product[11]) );
  FA_X1 U4 ( .A(n19), .B(n16), .CI(n4), .CO(n3), .S(product[10]) );
  FA_X1 U5 ( .A(n20), .B(n25), .CI(n5), .CO(n4), .S(product[9]) );
  FA_X1 U6 ( .A(n26), .B(n33), .CI(n6), .CO(n5), .S(product[8]) );
  FA_X1 U7 ( .A(n34), .B(n43), .CI(n160), .CO(n6), .S(product[7]) );
  FA_X1 U14 ( .A(n74), .B(n80), .CI(n17), .CO(n13), .S(n14) );
  FA_X1 U15 ( .A(n18), .B(n23), .CI(n21), .CO(n15), .S(n16) );
  FA_X1 U16 ( .A(n75), .B(n87), .CI(n81), .CO(n17), .S(n18) );
  FA_X1 U17 ( .A(n27), .B(n24), .CI(n22), .CO(n19), .S(n20) );
  FA_X1 U18 ( .A(n31), .B(n88), .CI(n29), .CO(n21), .S(n22) );
  FA_X1 U19 ( .A(n76), .B(n94), .CI(n82), .CO(n23), .S(n24) );
  FA_X1 U20 ( .A(n35), .B(n30), .CI(n28), .CO(n25), .S(n26) );
  FA_X1 U21 ( .A(n32), .B(n39), .CI(n37), .CO(n27), .S(n28) );
  FA_X1 U22 ( .A(n89), .B(n95), .CI(n41), .CO(n29), .S(n30) );
  FA_X1 U23 ( .A(n77), .B(n101), .CI(n83), .CO(n31), .S(n32) );
  FA_X1 U24 ( .A(n45), .B(n38), .CI(n36), .CO(n33), .S(n34) );
  FA_X1 U25 ( .A(n47), .B(n49), .CI(n40), .CO(n35), .S(n36) );
  FA_X1 U26 ( .A(n51), .B(n102), .CI(n42), .CO(n37), .S(n38) );
  FA_X1 U27 ( .A(n108), .B(n96), .CI(n90), .CO(n39), .S(n40) );
  HA_X1 U28 ( .A(n84), .B(n78), .CO(n41), .S(n42) );
  FA_X1 U29 ( .A(n48), .B(n55), .CI(n46), .CO(n43), .S(n44) );
  FA_X1 U30 ( .A(n57), .B(n52), .CI(n50), .CO(n45), .S(n46) );
  FA_X1 U31 ( .A(n97), .B(n103), .CI(n59), .CO(n47), .S(n48) );
  FA_X1 U32 ( .A(n91), .B(n115), .CI(n109), .CO(n49), .S(n50) );
  HA_X1 U33 ( .A(n85), .B(n79), .CO(n51), .S(n52) );
  FA_X1 U34 ( .A(n58), .B(n63), .CI(n56), .CO(n53), .S(n54) );
  FA_X1 U35 ( .A(n65), .B(n110), .CI(n60), .CO(n55), .S(n56) );
  FA_X1 U36 ( .A(n98), .B(n116), .CI(n104), .CO(n57), .S(n58) );
  HA_X1 U37 ( .A(n92), .B(n86), .CO(n59), .S(n60) );
  FA_X1 U38 ( .A(n66), .B(n69), .CI(n67), .CO(n61), .S(n62) );
  FA_X1 U39 ( .A(n105), .B(n117), .CI(n111), .CO(n63), .S(n64) );
  HA_X1 U40 ( .A(n99), .B(n93), .CO(n65), .S(n66) );
  FA_X1 U41 ( .A(n112), .B(n118), .CI(n71), .CO(n67), .S(n68) );
  HA_X1 U42 ( .A(n106), .B(n100), .CO(n69), .S(n70) );
  HA_X1 U43 ( .A(n119), .B(n113), .CO(n71), .S(n72) );
  INV_X1 U108 ( .A(n70), .ZN(n166) );
  INV_X1 U109 ( .A(n68), .ZN(n169) );
  INV_X1 U110 ( .A(n180), .ZN(n162) );
  INV_X1 U111 ( .A(n181), .ZN(n164) );
  INV_X1 U112 ( .A(n179), .ZN(n160) );
  INV_X1 U113 ( .A(a[3]), .ZN(n167) );
  INV_X1 U114 ( .A(b[1]), .ZN(n176) );
  INV_X1 U115 ( .A(a[1]), .ZN(n170) );
  INV_X1 U116 ( .A(a[6]), .ZN(n161) );
  INV_X1 U117 ( .A(a[5]), .ZN(n163) );
  INV_X1 U118 ( .A(b[6]), .ZN(n171) );
  INV_X1 U119 ( .A(b[0]), .ZN(n178) );
  INV_X1 U120 ( .A(b[2]), .ZN(n175) );
  INV_X1 U121 ( .A(b[3]), .ZN(n174) );
  INV_X1 U122 ( .A(b[4]), .ZN(n173) );
  INV_X1 U123 ( .A(b[5]), .ZN(n172) );
  INV_X1 U124 ( .A(a[0]), .ZN(n177) );
  INV_X1 U125 ( .A(a[2]), .ZN(n168) );
  INV_X1 U126 ( .A(a[4]), .ZN(n165) );
  NOR2_X1 U127 ( .A1(n167), .A2(n176), .ZN(n99) );
  NOR2_X1 U128 ( .A1(n167), .A2(n175), .ZN(n98) );
  NOR2_X1 U129 ( .A1(n167), .A2(n174), .ZN(n97) );
  NOR2_X1 U130 ( .A1(n167), .A2(n173), .ZN(n96) );
  NOR2_X1 U131 ( .A1(n167), .A2(n172), .ZN(n95) );
  NOR2_X1 U132 ( .A1(n167), .A2(n171), .ZN(n94) );
  NOR2_X1 U133 ( .A1(n165), .A2(n178), .ZN(n93) );
  NOR2_X1 U134 ( .A1(n176), .A2(n165), .ZN(n92) );
  NOR2_X1 U135 ( .A1(n175), .A2(n165), .ZN(n91) );
  NOR2_X1 U136 ( .A1(n174), .A2(n165), .ZN(n90) );
  NOR2_X1 U137 ( .A1(n173), .A2(n165), .ZN(n89) );
  NOR2_X1 U138 ( .A1(n172), .A2(n165), .ZN(n88) );
  NOR2_X1 U139 ( .A1(n171), .A2(n165), .ZN(n87) );
  NOR2_X1 U140 ( .A1(n178), .A2(n163), .ZN(n86) );
  NOR2_X1 U141 ( .A1(n176), .A2(n163), .ZN(n85) );
  NOR2_X1 U142 ( .A1(n175), .A2(n163), .ZN(n84) );
  NOR2_X1 U143 ( .A1(n174), .A2(n163), .ZN(n83) );
  NOR2_X1 U144 ( .A1(n173), .A2(n163), .ZN(n82) );
  NOR2_X1 U145 ( .A1(n172), .A2(n163), .ZN(n81) );
  NOR2_X1 U146 ( .A1(n171), .A2(n163), .ZN(n80) );
  NOR2_X1 U147 ( .A1(n178), .A2(n161), .ZN(n79) );
  NOR2_X1 U148 ( .A1(n176), .A2(n161), .ZN(n78) );
  NOR2_X1 U149 ( .A1(n175), .A2(n161), .ZN(n77) );
  NOR2_X1 U150 ( .A1(n174), .A2(n161), .ZN(n76) );
  NOR2_X1 U151 ( .A1(n173), .A2(n161), .ZN(n75) );
  NOR2_X1 U152 ( .A1(n172), .A2(n161), .ZN(n74) );
  NOR2_X1 U153 ( .A1(n171), .A2(n161), .ZN(n73) );
  AOI222_X1 U154 ( .A1(n162), .A2(n44), .B1(n162), .B2(n53), .C1(n53), .C2(n44), .ZN(n179) );
  AOI222_X1 U155 ( .A1(n164), .A2(n54), .B1(n164), .B2(n61), .C1(n61), .C2(n54), .ZN(n180) );
  AOI222_X1 U156 ( .A1(n182), .A2(n62), .B1(n182), .B2(n64), .C1(n64), .C2(n62), .ZN(n181) );
  OAI222_X1 U157 ( .A1(n183), .A2(n169), .B1(n169), .B2(n166), .C1(n183), .C2(
        n166), .ZN(n182) );
  AOI222_X1 U158 ( .A1(n72), .A2(n184), .B1(n185), .B2(n72), .C1(n185), .C2(
        n184), .ZN(n183) );
  NOR2_X1 U159 ( .A1(n168), .A2(n178), .ZN(n185) );
  NOR4_X1 U160 ( .A1(n170), .A2(n177), .A3(n178), .A4(n176), .ZN(n184) );
  NOR2_X1 U161 ( .A1(n175), .A2(n177), .ZN(n119) );
  NOR2_X1 U162 ( .A1(n174), .A2(n177), .ZN(n118) );
  NOR2_X1 U163 ( .A1(n173), .A2(n177), .ZN(n117) );
  NOR2_X1 U164 ( .A1(n172), .A2(n177), .ZN(n116) );
  NOR2_X1 U165 ( .A1(n171), .A2(n177), .ZN(n115) );
  NOR2_X1 U166 ( .A1(n176), .A2(n170), .ZN(n113) );
  NOR2_X1 U167 ( .A1(n175), .A2(n170), .ZN(n112) );
  NOR2_X1 U168 ( .A1(n174), .A2(n170), .ZN(n111) );
  NOR2_X1 U169 ( .A1(n173), .A2(n170), .ZN(n110) );
  NOR2_X1 U170 ( .A1(n172), .A2(n170), .ZN(n109) );
  NOR2_X1 U171 ( .A1(n171), .A2(n170), .ZN(n108) );
  NOR2_X1 U172 ( .A1(n176), .A2(n168), .ZN(n106) );
  NOR2_X1 U173 ( .A1(n175), .A2(n168), .ZN(n105) );
  NOR2_X1 U174 ( .A1(n174), .A2(n168), .ZN(n104) );
  NOR2_X1 U175 ( .A1(n173), .A2(n168), .ZN(n103) );
  NOR2_X1 U176 ( .A1(n172), .A2(n168), .ZN(n102) );
  NOR2_X1 U177 ( .A1(n171), .A2(n168), .ZN(n101) );
  NOR2_X1 U178 ( .A1(n167), .A2(n178), .ZN(n100) );
endmodule


module mac_operate_3 ( op_1, op_2, ac_sum_old, ac_sum_new );
  input [7:0] op_1;
  input [7:0] op_2;
  input [9:0] ac_sum_old;
  output [9:0] ac_sum_new;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, flag, N21,
         N22, N23, N24, N25, N26, N27, n3, n4, n5, n6, n11, n12, n13, n14, n18,
         n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n34,
         n35, n54, n55, n56, n57, n59, n60, n61, n62, n63, n64, n66, n67, n68,
         n69, n70, n71, n73, n74, n75, n76, n77, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7;
  wire   [6:1] op_1_ori;
  wire   [6:1] op_2_ori;
  wire   [13:8] mul_temp;
  wire   [5:2] sub_add_126_b0_carry;
  wire   [5:2] sub_add_125_b0_carry;
  wire   [5:2] sub_add_130_b0_carry;

  mac_operate_3_DW01_add_0 add_131 ( .A(ac_sum_old), .B({flag, flag, flag, n26, 
        n27, n28, n29, n30, n31, n32}), .CI(1'b0), .SUM(ac_sum_new) );
  mac_operate_3_DW_mult_uns_0 mult_128 ( .a({op_1_ori, op_1[0]}), .b({op_2_ori, 
        op_2[0]}), .product({mul_temp, N21, SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7}) );
  INV_X1 U2 ( .A(n34), .ZN(n31) );
  INV_X1 U5 ( .A(mul_temp[9]), .ZN(n3) );
  INV_X1 U6 ( .A(mul_temp[10]), .ZN(n4) );
  INV_X1 U8 ( .A(mul_temp[11]), .ZN(n5) );
  INV_X1 U9 ( .A(mul_temp[12]), .ZN(n6) );
  AOI22_X1 U11 ( .A1(mul_temp[8]), .A2(n23), .B1(N22), .B2(flag), .ZN(n34) );
  INV_X1 U14 ( .A(flag), .ZN(n23) );
  INV_X1 U17 ( .A(n61), .ZN(op_1_ori[3]) );
  AOI22_X1 U18 ( .A1(N8), .A2(op_1[7]), .B1(op_1[3]), .B2(n24), .ZN(n61) );
  INV_X1 U19 ( .A(n66), .ZN(op_2_ori[1]) );
  AOI22_X1 U20 ( .A1(N14), .A2(op_2[7]), .B1(op_2[1]), .B2(n25), .ZN(n66) );
  INV_X1 U21 ( .A(n59), .ZN(op_1_ori[1]) );
  AOI22_X1 U22 ( .A1(N6), .A2(op_1[7]), .B1(op_1[1]), .B2(n24), .ZN(n59) );
  INV_X1 U23 ( .A(n64), .ZN(op_1_ori[6]) );
  AOI22_X1 U24 ( .A1(op_1[7]), .A2(N11), .B1(op_1[6]), .B2(n24), .ZN(n64) );
  INV_X1 U25 ( .A(n63), .ZN(op_1_ori[5]) );
  AOI22_X1 U26 ( .A1(N10), .A2(op_1[7]), .B1(op_1[5]), .B2(n24), .ZN(n63) );
  INV_X1 U27 ( .A(n35), .ZN(n30) );
  AOI22_X1 U28 ( .A1(mul_temp[9]), .A2(n23), .B1(N23), .B2(flag), .ZN(n35) );
  INV_X1 U29 ( .A(n54), .ZN(n29) );
  AOI22_X1 U30 ( .A1(mul_temp[10]), .A2(n23), .B1(N24), .B2(flag), .ZN(n54) );
  INV_X1 U31 ( .A(n55), .ZN(n28) );
  AOI22_X1 U32 ( .A1(mul_temp[11]), .A2(n23), .B1(N25), .B2(flag), .ZN(n55) );
  INV_X1 U33 ( .A(n56), .ZN(n27) );
  AOI22_X1 U34 ( .A1(mul_temp[12]), .A2(n23), .B1(N26), .B2(flag), .ZN(n56) );
  INV_X1 U35 ( .A(n57), .ZN(n26) );
  AOI22_X1 U36 ( .A1(mul_temp[13]), .A2(n23), .B1(N27), .B2(flag), .ZN(n57) );
  INV_X1 U37 ( .A(n71), .ZN(op_2_ori[6]) );
  AOI22_X1 U38 ( .A1(op_2[7]), .A2(N19), .B1(op_2[6]), .B2(n25), .ZN(n71) );
  INV_X1 U41 ( .A(n67), .ZN(op_2_ori[2]) );
  AOI22_X1 U42 ( .A1(N15), .A2(op_2[7]), .B1(op_2[2]), .B2(n25), .ZN(n67) );
  INV_X1 U43 ( .A(n68), .ZN(op_2_ori[3]) );
  AOI22_X1 U45 ( .A1(N16), .A2(op_2[7]), .B1(op_2[3]), .B2(n25), .ZN(n68) );
  INV_X1 U46 ( .A(n69), .ZN(op_2_ori[4]) );
  AOI22_X1 U47 ( .A1(N17), .A2(op_2[7]), .B1(op_2[4]), .B2(n25), .ZN(n69) );
  INV_X1 U48 ( .A(n70), .ZN(op_2_ori[5]) );
  AOI22_X1 U49 ( .A1(N18), .A2(op_2[7]), .B1(op_2[5]), .B2(n25), .ZN(n70) );
  INV_X1 U52 ( .A(n60), .ZN(op_1_ori[2]) );
  AOI22_X1 U53 ( .A1(N7), .A2(op_1[7]), .B1(op_1[2]), .B2(n24), .ZN(n60) );
  INV_X1 U54 ( .A(n62), .ZN(op_1_ori[4]) );
  AOI22_X1 U55 ( .A1(N9), .A2(op_1[7]), .B1(op_1[4]), .B2(n24), .ZN(n62) );
  INV_X1 U60 ( .A(op_2[2]), .ZN(n18) );
  INV_X1 U61 ( .A(op_1[2]), .ZN(n11) );
  INV_X1 U62 ( .A(op_2[3]), .ZN(n19) );
  INV_X1 U63 ( .A(op_1[3]), .ZN(n12) );
  INV_X1 U64 ( .A(op_2[4]), .ZN(n20) );
  INV_X1 U65 ( .A(op_1[4]), .ZN(n13) );
  INV_X1 U66 ( .A(op_1[5]), .ZN(n14) );
  INV_X1 U67 ( .A(op_2[5]), .ZN(n21) );
  XOR2_X1 U72 ( .A(n6), .B(sub_add_130_b0_carry[5]), .Z(N26) );
  AND2_X1 U73 ( .A1(sub_add_130_b0_carry[4]), .A2(n5), .ZN(
        sub_add_130_b0_carry[5]) );
  XOR2_X1 U74 ( .A(n5), .B(sub_add_130_b0_carry[4]), .Z(N25) );
  AND2_X1 U75 ( .A1(sub_add_130_b0_carry[3]), .A2(n4), .ZN(
        sub_add_130_b0_carry[4]) );
  XOR2_X1 U76 ( .A(n4), .B(sub_add_130_b0_carry[3]), .Z(N24) );
  AND2_X1 U77 ( .A1(sub_add_130_b0_carry[2]), .A2(n3), .ZN(
        sub_add_130_b0_carry[3]) );
  XOR2_X1 U78 ( .A(n3), .B(sub_add_130_b0_carry[2]), .Z(N23) );
  XOR2_X1 U84 ( .A(n14), .B(sub_add_125_b0_carry[5]), .Z(N10) );
  AND2_X1 U85 ( .A1(sub_add_125_b0_carry[4]), .A2(n13), .ZN(
        sub_add_125_b0_carry[5]) );
  XOR2_X1 U86 ( .A(n13), .B(sub_add_125_b0_carry[4]), .Z(N9) );
  XOR2_X1 U88 ( .A(n21), .B(sub_add_126_b0_carry[5]), .Z(N18) );
  AND2_X1 U89 ( .A1(sub_add_126_b0_carry[4]), .A2(n20), .ZN(
        sub_add_126_b0_carry[5]) );
  XOR2_X1 U90 ( .A(n20), .B(sub_add_126_b0_carry[4]), .Z(N17) );
  AND2_X1 U91 ( .A1(sub_add_126_b0_carry[3]), .A2(n19), .ZN(
        sub_add_126_b0_carry[4]) );
  XOR2_X1 U92 ( .A(n19), .B(sub_add_126_b0_carry[3]), .Z(N16) );
  AND2_X1 U93 ( .A1(sub_add_126_b0_carry[2]), .A2(n18), .ZN(
        sub_add_126_b0_carry[3]) );
  XOR2_X1 U94 ( .A(n18), .B(sub_add_126_b0_carry[2]), .Z(N15) );
  AND2_X1 U97 ( .A1(sub_add_125_b0_carry[3]), .A2(n12), .ZN(
        sub_add_125_b0_carry[4]) );
  XOR2_X1 U98 ( .A(n12), .B(sub_add_125_b0_carry[3]), .Z(N8) );
  AND2_X1 U99 ( .A1(sub_add_125_b0_carry[2]), .A2(n11), .ZN(
        sub_add_125_b0_carry[3]) );
  XOR2_X1 U100 ( .A(n11), .B(sub_add_125_b0_carry[2]), .Z(N7) );
  XOR2_X1 U4 ( .A(mul_temp[8]), .B(N21), .Z(N22) );
  INV_X1 U7 ( .A(n73), .ZN(flag) );
  XOR2_X1 U10 ( .A(n24), .B(op_2[7]), .Z(n73) );
  XOR2_X1 U12 ( .A(mul_temp[13]), .B(n74), .Z(N27) );
  NAND2_X1 U13 ( .A1(n6), .A2(sub_add_130_b0_carry[5]), .ZN(n74) );
  INV_X1 U15 ( .A(n75), .ZN(n32) );
  OAI21_X1 U16 ( .B1(n23), .B2(flag), .A(N21), .ZN(n75) );
  NOR2_X1 U39 ( .A1(N21), .A2(mul_temp[8]), .ZN(sub_add_130_b0_carry[2]) );
  XOR2_X1 U40 ( .A(op_1[6]), .B(n76), .Z(N11) );
  NAND2_X1 U44 ( .A1(n14), .A2(sub_add_125_b0_carry[5]), .ZN(n76) );
  XOR2_X1 U50 ( .A(op_2[6]), .B(n77), .Z(N19) );
  NAND2_X1 U51 ( .A1(n21), .A2(sub_add_126_b0_carry[5]), .ZN(n77) );
  INV_X1 U56 ( .A(op_2[7]), .ZN(n25) );
  INV_X1 U57 ( .A(op_1[7]), .ZN(n24) );
  XOR2_X1 U58 ( .A(op_1[1]), .B(op_1[0]), .Z(N6) );
  XOR2_X1 U59 ( .A(op_2[1]), .B(op_2[0]), .Z(N14) );
  NOR2_X1 U68 ( .A1(op_1[0]), .A2(op_1[1]), .ZN(sub_add_125_b0_carry[2]) );
  NOR2_X1 U69 ( .A1(op_2[0]), .A2(op_2[1]), .ZN(sub_add_126_b0_carry[2]) );
endmodule


module MAC_3 ( clk, rst_n, mac_enable, h_0, h_1, h_2, h_3, data_0, data_1, 
        data_2, data_3, data_out, mac_done );
  input [0:0] mac_enable;
  input [7:0] h_0;
  input [7:0] h_1;
  input [7:0] h_2;
  input [7:0] h_3;
  input [7:0] data_0;
  input [7:0] data_1;
  input [7:0] data_2;
  input [7:0] data_3;
  output [9:0] data_out;
  output [0:0] mac_done;
  input clk, rst_n;
  wire   N20, N22, N60, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228;
  wire   [2:0] cnt;
  wire   [9:0] ac_sum_new;
  wire   [7:0] op_1;
  wire   [7:0] op_2;
  wire   [9:0] ac_sum_old;

  DFFR_X1 cnt_reg_0_ ( .D(N20), .CK(clk), .RN(rst_n), .Q(cnt[0]), .QN(n226) );
  SDFFR_X1 cnt_reg_1_ ( .D(n162), .SI(1'b0), .SE(n161), .CK(clk), .RN(rst_n), 
        .Q(cnt[1]), .QN(n227) );
  DFFR_X1 cnt_reg_2_ ( .D(N22), .CK(clk), .RN(rst_n), .Q(cnt[2]), .QN(n228) );
  DFFR_X1 op_1_reg_7_ ( .D(n125), .CK(clk), .RN(rst_n), .Q(op_1[7]) );
  DFFR_X1 op_1_reg_6_ ( .D(n126), .CK(clk), .RN(rst_n), .Q(op_1[6]) );
  DFFR_X1 op_1_reg_5_ ( .D(n127), .CK(clk), .RN(rst_n), .Q(op_1[5]) );
  DFFR_X1 op_1_reg_4_ ( .D(n128), .CK(clk), .RN(rst_n), .Q(op_1[4]) );
  DFFR_X1 op_1_reg_3_ ( .D(n129), .CK(clk), .RN(rst_n), .Q(op_1[3]) );
  DFFR_X1 op_1_reg_2_ ( .D(n130), .CK(clk), .RN(rst_n), .Q(op_1[2]) );
  DFFR_X1 op_1_reg_1_ ( .D(n131), .CK(clk), .RN(rst_n), .Q(op_1[1]) );
  DFFR_X1 op_1_reg_0_ ( .D(n132), .CK(clk), .RN(rst_n), .Q(op_1[0]) );
  DFFR_X1 op_2_reg_7_ ( .D(n133), .CK(clk), .RN(rst_n), .Q(op_2[7]) );
  DFFR_X1 op_2_reg_6_ ( .D(n134), .CK(clk), .RN(rst_n), .Q(op_2[6]) );
  DFFR_X1 op_2_reg_5_ ( .D(n135), .CK(clk), .RN(rst_n), .Q(op_2[5]) );
  DFFR_X1 op_2_reg_4_ ( .D(n136), .CK(clk), .RN(rst_n), .Q(op_2[4]) );
  DFFR_X1 op_2_reg_3_ ( .D(n137), .CK(clk), .RN(rst_n), .Q(op_2[3]) );
  DFFR_X1 op_2_reg_2_ ( .D(n138), .CK(clk), .RN(rst_n), .Q(op_2[2]) );
  DFFR_X1 op_2_reg_1_ ( .D(n139), .CK(clk), .RN(rst_n), .Q(op_2[1]) );
  DFFR_X1 op_2_reg_0_ ( .D(n140), .CK(clk), .RN(rst_n), .Q(op_2[0]) );
  DFFR_X1 ac_sum_old_reg_0_ ( .D(n141), .CK(clk), .RN(rst_n), .Q(ac_sum_old[0]) );
  DFFR_X1 ac_sum_old_reg_1_ ( .D(n142), .CK(clk), .RN(rst_n), .Q(ac_sum_old[1]) );
  DFFR_X1 ac_sum_old_reg_2_ ( .D(n143), .CK(clk), .RN(rst_n), .Q(ac_sum_old[2]) );
  DFFR_X1 ac_sum_old_reg_3_ ( .D(n144), .CK(clk), .RN(rst_n), .Q(ac_sum_old[3]) );
  DFFR_X1 ac_sum_old_reg_4_ ( .D(n145), .CK(clk), .RN(rst_n), .Q(ac_sum_old[4]) );
  DFFR_X1 ac_sum_old_reg_5_ ( .D(n146), .CK(clk), .RN(rst_n), .Q(ac_sum_old[5]) );
  DFFR_X1 ac_sum_old_reg_6_ ( .D(n147), .CK(clk), .RN(rst_n), .Q(ac_sum_old[6]) );
  DFFR_X1 ac_sum_old_reg_7_ ( .D(n148), .CK(clk), .RN(rst_n), .Q(ac_sum_old[7]) );
  DFFR_X1 ac_sum_old_reg_8_ ( .D(n149), .CK(clk), .RN(rst_n), .Q(ac_sum_old[8]) );
  DFFR_X1 ac_sum_old_reg_9_ ( .D(n150), .CK(clk), .RN(rst_n), .Q(ac_sum_old[9]) );
  DFFR_X1 mac_done_reg_0_ ( .D(N60), .CK(clk), .RN(rst_n), .Q(mac_done[0]) );
  DFF_X1 data_out_reg_9_ ( .D(n151), .CK(clk), .Q(data_out[9]) );
  DFF_X1 data_out_reg_8_ ( .D(n152), .CK(clk), .Q(data_out[8]) );
  DFF_X1 data_out_reg_7_ ( .D(n153), .CK(clk), .Q(data_out[7]) );
  DFF_X1 data_out_reg_6_ ( .D(n154), .CK(clk), .Q(data_out[6]) );
  DFF_X1 data_out_reg_5_ ( .D(n155), .CK(clk), .Q(data_out[5]) );
  DFF_X1 data_out_reg_4_ ( .D(n156), .CK(clk), .Q(data_out[4]) );
  DFF_X1 data_out_reg_3_ ( .D(n157), .CK(clk), .Q(data_out[3]) );
  DFF_X1 data_out_reg_2_ ( .D(n158), .CK(clk), .Q(data_out[2]) );
  DFF_X1 data_out_reg_1_ ( .D(n159), .CK(clk), .Q(data_out[1]) );
  DFF_X1 data_out_reg_0_ ( .D(n160), .CK(clk), .Q(data_out[0]) );
  NOR3_X2 U95 ( .A1(n198), .A2(n199), .A3(n123), .ZN(n212) );
  NAND3_X1 U120 ( .A1(n226), .A2(n227), .A3(n165), .ZN(n167) );
  NAND3_X1 U121 ( .A1(cnt[0]), .A2(n165), .A3(cnt[1]), .ZN(n166) );
  XOR2_X1 U122 ( .A(n226), .B(cnt[1]), .Z(n161) );
  mac_operate_3 mac_operate_inst ( .op_1(op_1), .op_2(op_2), .ac_sum_old(
        ac_sum_old), .ac_sum_new(ac_sum_new) );
  INV_X1 U4 ( .A(ac_sum_new[0]), .ZN(n19) );
  NAND2_X1 U5 ( .A1(n213), .A2(rst_n), .ZN(n223) );
  NAND2_X1 U10 ( .A1(N60), .A2(n121), .ZN(n225) );
  INV_X1 U11 ( .A(n223), .ZN(n121) );
  INV_X1 U12 ( .A(ac_sum_new[8]), .ZN(n11) );
  INV_X1 U13 ( .A(ac_sum_new[7]), .ZN(n12) );
  INV_X1 U14 ( .A(ac_sum_new[6]), .ZN(n13) );
  INV_X1 U15 ( .A(ac_sum_new[5]), .ZN(n14) );
  INV_X1 U16 ( .A(ac_sum_new[4]), .ZN(n15) );
  INV_X1 U17 ( .A(ac_sum_new[3]), .ZN(n16) );
  INV_X1 U18 ( .A(ac_sum_new[2]), .ZN(n17) );
  INV_X1 U19 ( .A(ac_sum_new[1]), .ZN(n18) );
  INV_X1 U20 ( .A(n166), .ZN(n123) );
  INV_X1 U22 ( .A(n167), .ZN(n122) );
  NOR2_X1 U23 ( .A1(n124), .A2(n164), .ZN(n162) );
  OAI21_X1 U25 ( .B1(n225), .B2(n19), .A(n224), .ZN(n160) );
  NAND2_X1 U26 ( .A1(data_out[0]), .A2(n223), .ZN(n224) );
  OAI21_X1 U27 ( .B1(n225), .B2(n18), .A(n222), .ZN(n159) );
  NAND2_X1 U28 ( .A1(data_out[1]), .A2(n223), .ZN(n222) );
  OAI21_X1 U29 ( .B1(n225), .B2(n17), .A(n221), .ZN(n158) );
  NAND2_X1 U30 ( .A1(data_out[2]), .A2(n223), .ZN(n221) );
  OAI21_X1 U31 ( .B1(n225), .B2(n16), .A(n220), .ZN(n157) );
  NAND2_X1 U32 ( .A1(data_out[3]), .A2(n223), .ZN(n220) );
  OAI21_X1 U33 ( .B1(n225), .B2(n15), .A(n219), .ZN(n156) );
  NAND2_X1 U34 ( .A1(data_out[4]), .A2(n223), .ZN(n219) );
  OAI21_X1 U35 ( .B1(n225), .B2(n14), .A(n218), .ZN(n155) );
  NAND2_X1 U36 ( .A1(data_out[5]), .A2(n223), .ZN(n218) );
  OAI21_X1 U37 ( .B1(n225), .B2(n13), .A(n217), .ZN(n154) );
  NAND2_X1 U38 ( .A1(data_out[6]), .A2(n223), .ZN(n217) );
  OAI21_X1 U39 ( .B1(n225), .B2(n12), .A(n216), .ZN(n153) );
  NAND2_X1 U40 ( .A1(data_out[7]), .A2(n223), .ZN(n216) );
  OAI21_X1 U41 ( .B1(n225), .B2(n11), .A(n215), .ZN(n152) );
  NAND2_X1 U42 ( .A1(data_out[8]), .A2(n223), .ZN(n215) );
  OAI21_X1 U43 ( .B1(n225), .B2(n10), .A(n214), .ZN(n151) );
  NAND2_X1 U44 ( .A1(data_out[9]), .A2(n223), .ZN(n214) );
  OAI21_X1 U45 ( .B1(n212), .B2(n10), .A(n211), .ZN(n150) );
  NAND2_X1 U46 ( .A1(ac_sum_old[9]), .A2(n213), .ZN(n211) );
  OAI21_X1 U47 ( .B1(n212), .B2(n11), .A(n210), .ZN(n149) );
  NAND2_X1 U48 ( .A1(ac_sum_old[8]), .A2(n213), .ZN(n210) );
  OAI21_X1 U49 ( .B1(n212), .B2(n12), .A(n209), .ZN(n148) );
  NAND2_X1 U50 ( .A1(ac_sum_old[7]), .A2(n213), .ZN(n209) );
  OAI21_X1 U51 ( .B1(n212), .B2(n13), .A(n208), .ZN(n147) );
  NAND2_X1 U52 ( .A1(ac_sum_old[6]), .A2(n213), .ZN(n208) );
  INV_X1 U53 ( .A(ac_sum_new[9]), .ZN(n10) );
  OAI21_X1 U54 ( .B1(n212), .B2(n14), .A(n207), .ZN(n146) );
  NAND2_X1 U55 ( .A1(ac_sum_old[5]), .A2(n213), .ZN(n207) );
  OAI21_X1 U56 ( .B1(n212), .B2(n15), .A(n206), .ZN(n145) );
  NAND2_X1 U57 ( .A1(ac_sum_old[4]), .A2(n213), .ZN(n206) );
  OAI21_X1 U58 ( .B1(n212), .B2(n16), .A(n205), .ZN(n144) );
  NAND2_X1 U59 ( .A1(ac_sum_old[3]), .A2(n213), .ZN(n205) );
  OAI21_X1 U60 ( .B1(n212), .B2(n17), .A(n204), .ZN(n143) );
  NAND2_X1 U61 ( .A1(ac_sum_old[2]), .A2(n213), .ZN(n204) );
  OAI21_X1 U62 ( .B1(n212), .B2(n18), .A(n203), .ZN(n142) );
  NAND2_X1 U63 ( .A1(ac_sum_old[1]), .A2(n213), .ZN(n203) );
  OAI21_X1 U64 ( .B1(n212), .B2(n19), .A(n202), .ZN(n141) );
  NAND2_X1 U65 ( .A1(ac_sum_old[0]), .A2(n213), .ZN(n202) );
  AND3_X1 U66 ( .A1(n165), .A2(n226), .A3(cnt[1]), .ZN(n198) );
  AND3_X1 U67 ( .A1(n165), .A2(n227), .A3(cnt[0]), .ZN(n199) );
  NOR2_X1 U68 ( .A1(n124), .A2(cnt[2]), .ZN(n165) );
  NAND2_X1 U69 ( .A1(n185), .A2(n184), .ZN(n133) );
  AOI222_X1 U70 ( .A1(data_1[7]), .A2(n199), .B1(data_3[7]), .B2(n123), .C1(
        data_2[7]), .C2(n198), .ZN(n184) );
  AOI22_X1 U71 ( .A1(data_0[7]), .A2(n122), .B1(op_2[7]), .B2(n213), .ZN(n185)
         );
  NAND2_X1 U72 ( .A1(n169), .A2(n168), .ZN(n125) );
  AOI222_X1 U73 ( .A1(h_1[7]), .A2(n199), .B1(h_3[7]), .B2(n123), .C1(h_2[7]), 
        .C2(n198), .ZN(n168) );
  AOI22_X1 U74 ( .A1(h_0[7]), .A2(n122), .B1(op_1[7]), .B2(n213), .ZN(n169) );
  NAND2_X1 U75 ( .A1(n201), .A2(n200), .ZN(n140) );
  AOI222_X1 U76 ( .A1(data_1[0]), .A2(n199), .B1(data_3[0]), .B2(n123), .C1(
        data_2[0]), .C2(n198), .ZN(n200) );
  AOI22_X1 U77 ( .A1(data_0[0]), .A2(n122), .B1(op_2[0]), .B2(n213), .ZN(n201)
         );
  NAND2_X1 U78 ( .A1(n197), .A2(n196), .ZN(n139) );
  AOI222_X1 U79 ( .A1(data_1[1]), .A2(n199), .B1(data_3[1]), .B2(n123), .C1(
        data_2[1]), .C2(n198), .ZN(n196) );
  AOI22_X1 U80 ( .A1(data_0[1]), .A2(n122), .B1(op_2[1]), .B2(n213), .ZN(n197)
         );
  NAND2_X1 U81 ( .A1(n195), .A2(n194), .ZN(n138) );
  AOI222_X1 U82 ( .A1(data_1[2]), .A2(n199), .B1(data_3[2]), .B2(n123), .C1(
        data_2[2]), .C2(n198), .ZN(n194) );
  AOI22_X1 U83 ( .A1(data_0[2]), .A2(n122), .B1(op_2[2]), .B2(n213), .ZN(n195)
         );
  NAND2_X1 U84 ( .A1(n193), .A2(n192), .ZN(n137) );
  AOI222_X1 U85 ( .A1(data_1[3]), .A2(n199), .B1(data_3[3]), .B2(n123), .C1(
        data_2[3]), .C2(n198), .ZN(n192) );
  AOI22_X1 U86 ( .A1(data_0[3]), .A2(n122), .B1(op_2[3]), .B2(n213), .ZN(n193)
         );
  NAND2_X1 U87 ( .A1(n191), .A2(n190), .ZN(n136) );
  AOI222_X1 U88 ( .A1(data_1[4]), .A2(n199), .B1(data_3[4]), .B2(n123), .C1(
        data_2[4]), .C2(n198), .ZN(n190) );
  AOI22_X1 U89 ( .A1(data_0[4]), .A2(n122), .B1(op_2[4]), .B2(n213), .ZN(n191)
         );
  NAND2_X1 U90 ( .A1(n189), .A2(n188), .ZN(n135) );
  AOI222_X1 U91 ( .A1(data_1[5]), .A2(n199), .B1(data_3[5]), .B2(n123), .C1(
        data_2[5]), .C2(n198), .ZN(n188) );
  AOI22_X1 U92 ( .A1(data_0[5]), .A2(n122), .B1(op_2[5]), .B2(n213), .ZN(n189)
         );
  NAND2_X1 U93 ( .A1(n187), .A2(n186), .ZN(n134) );
  AOI222_X1 U94 ( .A1(data_1[6]), .A2(n199), .B1(data_3[6]), .B2(n123), .C1(
        data_2[6]), .C2(n198), .ZN(n186) );
  AOI22_X1 U96 ( .A1(data_0[6]), .A2(n122), .B1(op_2[6]), .B2(n213), .ZN(n187)
         );
  NAND2_X1 U97 ( .A1(n183), .A2(n182), .ZN(n132) );
  AOI222_X1 U98 ( .A1(h_1[0]), .A2(n199), .B1(h_3[0]), .B2(n123), .C1(h_2[0]), 
        .C2(n198), .ZN(n182) );
  AOI22_X1 U99 ( .A1(h_0[0]), .A2(n122), .B1(op_1[0]), .B2(n213), .ZN(n183) );
  NAND2_X1 U100 ( .A1(n181), .A2(n180), .ZN(n131) );
  AOI222_X1 U101 ( .A1(h_1[1]), .A2(n199), .B1(h_3[1]), .B2(n123), .C1(h_2[1]), 
        .C2(n198), .ZN(n180) );
  AOI22_X1 U102 ( .A1(h_0[1]), .A2(n122), .B1(op_1[1]), .B2(n213), .ZN(n181)
         );
  NAND2_X1 U103 ( .A1(n179), .A2(n178), .ZN(n130) );
  AOI222_X1 U104 ( .A1(h_1[2]), .A2(n199), .B1(h_3[2]), .B2(n123), .C1(h_2[2]), 
        .C2(n198), .ZN(n178) );
  AOI22_X1 U105 ( .A1(h_0[2]), .A2(n122), .B1(op_1[2]), .B2(n213), .ZN(n179)
         );
  NAND2_X1 U106 ( .A1(n177), .A2(n176), .ZN(n129) );
  AOI222_X1 U107 ( .A1(h_1[3]), .A2(n199), .B1(h_3[3]), .B2(n123), .C1(h_2[3]), 
        .C2(n198), .ZN(n176) );
  AOI22_X1 U108 ( .A1(h_0[3]), .A2(n122), .B1(op_1[3]), .B2(n213), .ZN(n177)
         );
  NAND2_X1 U109 ( .A1(n175), .A2(n174), .ZN(n128) );
  AOI222_X1 U110 ( .A1(h_1[4]), .A2(n199), .B1(h_3[4]), .B2(n123), .C1(h_2[4]), 
        .C2(n198), .ZN(n174) );
  AOI22_X1 U111 ( .A1(h_0[4]), .A2(n122), .B1(op_1[4]), .B2(n213), .ZN(n175)
         );
  NAND2_X1 U112 ( .A1(n173), .A2(n172), .ZN(n127) );
  AOI222_X1 U113 ( .A1(h_1[5]), .A2(n199), .B1(h_3[5]), .B2(n123), .C1(h_2[5]), 
        .C2(n198), .ZN(n172) );
  AOI22_X1 U114 ( .A1(h_0[5]), .A2(n122), .B1(op_1[5]), .B2(n213), .ZN(n173)
         );
  NAND2_X1 U115 ( .A1(n171), .A2(n170), .ZN(n126) );
  AOI222_X1 U116 ( .A1(h_1[6]), .A2(n199), .B1(h_3[6]), .B2(n123), .C1(h_2[6]), 
        .C2(n198), .ZN(n170) );
  AOI22_X1 U117 ( .A1(h_0[6]), .A2(n122), .B1(op_1[6]), .B2(n213), .ZN(n171)
         );
  NOR3_X1 U118 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n228), .ZN(n164) );
  OAI21_X1 U119 ( .B1(n163), .B2(n228), .A(n166), .ZN(N22) );
  AOI21_X1 U123 ( .B1(n162), .B2(n227), .A(N20), .ZN(n163) );
  AND2_X1 U124 ( .A1(n162), .A2(n226), .ZN(N20) );
  AND2_X1 U125 ( .A1(mac_enable[0]), .A2(n164), .ZN(N60) );
  INV_X1 U126 ( .A(mac_enable[0]), .ZN(n124) );
  AND2_X2 U6 ( .A1(n167), .A2(n212), .ZN(n213) );
endmodule


module mac_operate_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:2] carry;

  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .S(SUM[9]) );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2_X1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module mac_operate_2_DW_mult_uns_0 ( a, b, product );
  input [6:0] a;
  input [6:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n108, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n119, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185;

  FA_X1 U2 ( .A(n13), .B(n73), .CI(n2), .CO(product[13]), .S(product[12]) );
  FA_X1 U3 ( .A(n15), .B(n14), .CI(n3), .CO(n2), .S(product[11]) );
  FA_X1 U4 ( .A(n19), .B(n16), .CI(n4), .CO(n3), .S(product[10]) );
  FA_X1 U5 ( .A(n20), .B(n25), .CI(n5), .CO(n4), .S(product[9]) );
  FA_X1 U6 ( .A(n26), .B(n33), .CI(n6), .CO(n5), .S(product[8]) );
  FA_X1 U7 ( .A(n34), .B(n43), .CI(n160), .CO(n6), .S(product[7]) );
  FA_X1 U14 ( .A(n74), .B(n80), .CI(n17), .CO(n13), .S(n14) );
  FA_X1 U15 ( .A(n18), .B(n23), .CI(n21), .CO(n15), .S(n16) );
  FA_X1 U16 ( .A(n75), .B(n87), .CI(n81), .CO(n17), .S(n18) );
  FA_X1 U17 ( .A(n27), .B(n24), .CI(n22), .CO(n19), .S(n20) );
  FA_X1 U18 ( .A(n31), .B(n88), .CI(n29), .CO(n21), .S(n22) );
  FA_X1 U19 ( .A(n76), .B(n94), .CI(n82), .CO(n23), .S(n24) );
  FA_X1 U20 ( .A(n35), .B(n30), .CI(n28), .CO(n25), .S(n26) );
  FA_X1 U21 ( .A(n32), .B(n39), .CI(n37), .CO(n27), .S(n28) );
  FA_X1 U22 ( .A(n89), .B(n95), .CI(n41), .CO(n29), .S(n30) );
  FA_X1 U23 ( .A(n77), .B(n101), .CI(n83), .CO(n31), .S(n32) );
  FA_X1 U24 ( .A(n45), .B(n38), .CI(n36), .CO(n33), .S(n34) );
  FA_X1 U25 ( .A(n47), .B(n49), .CI(n40), .CO(n35), .S(n36) );
  FA_X1 U26 ( .A(n51), .B(n102), .CI(n42), .CO(n37), .S(n38) );
  FA_X1 U27 ( .A(n108), .B(n96), .CI(n90), .CO(n39), .S(n40) );
  HA_X1 U28 ( .A(n84), .B(n78), .CO(n41), .S(n42) );
  FA_X1 U29 ( .A(n48), .B(n55), .CI(n46), .CO(n43), .S(n44) );
  FA_X1 U30 ( .A(n57), .B(n52), .CI(n50), .CO(n45), .S(n46) );
  FA_X1 U31 ( .A(n97), .B(n103), .CI(n59), .CO(n47), .S(n48) );
  FA_X1 U32 ( .A(n91), .B(n115), .CI(n109), .CO(n49), .S(n50) );
  HA_X1 U33 ( .A(n85), .B(n79), .CO(n51), .S(n52) );
  FA_X1 U34 ( .A(n58), .B(n63), .CI(n56), .CO(n53), .S(n54) );
  FA_X1 U35 ( .A(n65), .B(n110), .CI(n60), .CO(n55), .S(n56) );
  FA_X1 U36 ( .A(n98), .B(n116), .CI(n104), .CO(n57), .S(n58) );
  HA_X1 U37 ( .A(n92), .B(n86), .CO(n59), .S(n60) );
  FA_X1 U38 ( .A(n66), .B(n69), .CI(n67), .CO(n61), .S(n62) );
  FA_X1 U39 ( .A(n105), .B(n117), .CI(n111), .CO(n63), .S(n64) );
  HA_X1 U40 ( .A(n99), .B(n93), .CO(n65), .S(n66) );
  FA_X1 U41 ( .A(n112), .B(n118), .CI(n71), .CO(n67), .S(n68) );
  HA_X1 U42 ( .A(n106), .B(n100), .CO(n69), .S(n70) );
  HA_X1 U43 ( .A(n119), .B(n113), .CO(n71), .S(n72) );
  INV_X1 U108 ( .A(n70), .ZN(n166) );
  INV_X1 U109 ( .A(n68), .ZN(n169) );
  INV_X1 U110 ( .A(n180), .ZN(n162) );
  INV_X1 U111 ( .A(n181), .ZN(n164) );
  INV_X1 U112 ( .A(n179), .ZN(n160) );
  INV_X1 U113 ( .A(a[3]), .ZN(n167) );
  INV_X1 U114 ( .A(b[1]), .ZN(n176) );
  INV_X1 U115 ( .A(a[1]), .ZN(n170) );
  INV_X1 U116 ( .A(a[6]), .ZN(n161) );
  INV_X1 U117 ( .A(a[5]), .ZN(n163) );
  INV_X1 U118 ( .A(b[6]), .ZN(n171) );
  INV_X1 U119 ( .A(b[0]), .ZN(n178) );
  INV_X1 U120 ( .A(b[2]), .ZN(n175) );
  INV_X1 U121 ( .A(b[3]), .ZN(n174) );
  INV_X1 U122 ( .A(b[4]), .ZN(n173) );
  INV_X1 U123 ( .A(b[5]), .ZN(n172) );
  INV_X1 U124 ( .A(a[0]), .ZN(n177) );
  INV_X1 U125 ( .A(a[2]), .ZN(n168) );
  INV_X1 U126 ( .A(a[4]), .ZN(n165) );
  NOR2_X1 U127 ( .A1(n167), .A2(n176), .ZN(n99) );
  NOR2_X1 U128 ( .A1(n167), .A2(n175), .ZN(n98) );
  NOR2_X1 U129 ( .A1(n167), .A2(n174), .ZN(n97) );
  NOR2_X1 U130 ( .A1(n167), .A2(n173), .ZN(n96) );
  NOR2_X1 U131 ( .A1(n167), .A2(n172), .ZN(n95) );
  NOR2_X1 U132 ( .A1(n167), .A2(n171), .ZN(n94) );
  NOR2_X1 U133 ( .A1(n165), .A2(n178), .ZN(n93) );
  NOR2_X1 U134 ( .A1(n176), .A2(n165), .ZN(n92) );
  NOR2_X1 U135 ( .A1(n175), .A2(n165), .ZN(n91) );
  NOR2_X1 U136 ( .A1(n174), .A2(n165), .ZN(n90) );
  NOR2_X1 U137 ( .A1(n173), .A2(n165), .ZN(n89) );
  NOR2_X1 U138 ( .A1(n172), .A2(n165), .ZN(n88) );
  NOR2_X1 U139 ( .A1(n171), .A2(n165), .ZN(n87) );
  NOR2_X1 U140 ( .A1(n178), .A2(n163), .ZN(n86) );
  NOR2_X1 U141 ( .A1(n176), .A2(n163), .ZN(n85) );
  NOR2_X1 U142 ( .A1(n175), .A2(n163), .ZN(n84) );
  NOR2_X1 U143 ( .A1(n174), .A2(n163), .ZN(n83) );
  NOR2_X1 U144 ( .A1(n173), .A2(n163), .ZN(n82) );
  NOR2_X1 U145 ( .A1(n172), .A2(n163), .ZN(n81) );
  NOR2_X1 U146 ( .A1(n171), .A2(n163), .ZN(n80) );
  NOR2_X1 U147 ( .A1(n178), .A2(n161), .ZN(n79) );
  NOR2_X1 U148 ( .A1(n176), .A2(n161), .ZN(n78) );
  NOR2_X1 U149 ( .A1(n175), .A2(n161), .ZN(n77) );
  NOR2_X1 U150 ( .A1(n174), .A2(n161), .ZN(n76) );
  NOR2_X1 U151 ( .A1(n173), .A2(n161), .ZN(n75) );
  NOR2_X1 U152 ( .A1(n172), .A2(n161), .ZN(n74) );
  NOR2_X1 U153 ( .A1(n171), .A2(n161), .ZN(n73) );
  AOI222_X1 U154 ( .A1(n162), .A2(n44), .B1(n162), .B2(n53), .C1(n53), .C2(n44), .ZN(n179) );
  AOI222_X1 U155 ( .A1(n164), .A2(n54), .B1(n164), .B2(n61), .C1(n61), .C2(n54), .ZN(n180) );
  AOI222_X1 U156 ( .A1(n182), .A2(n62), .B1(n182), .B2(n64), .C1(n64), .C2(n62), .ZN(n181) );
  OAI222_X1 U157 ( .A1(n183), .A2(n169), .B1(n169), .B2(n166), .C1(n183), .C2(
        n166), .ZN(n182) );
  AOI222_X1 U158 ( .A1(n72), .A2(n184), .B1(n185), .B2(n72), .C1(n185), .C2(
        n184), .ZN(n183) );
  NOR2_X1 U159 ( .A1(n168), .A2(n178), .ZN(n185) );
  NOR4_X1 U160 ( .A1(n170), .A2(n177), .A3(n178), .A4(n176), .ZN(n184) );
  NOR2_X1 U161 ( .A1(n175), .A2(n177), .ZN(n119) );
  NOR2_X1 U162 ( .A1(n174), .A2(n177), .ZN(n118) );
  NOR2_X1 U163 ( .A1(n173), .A2(n177), .ZN(n117) );
  NOR2_X1 U164 ( .A1(n172), .A2(n177), .ZN(n116) );
  NOR2_X1 U165 ( .A1(n171), .A2(n177), .ZN(n115) );
  NOR2_X1 U166 ( .A1(n176), .A2(n170), .ZN(n113) );
  NOR2_X1 U167 ( .A1(n175), .A2(n170), .ZN(n112) );
  NOR2_X1 U168 ( .A1(n174), .A2(n170), .ZN(n111) );
  NOR2_X1 U169 ( .A1(n173), .A2(n170), .ZN(n110) );
  NOR2_X1 U170 ( .A1(n172), .A2(n170), .ZN(n109) );
  NOR2_X1 U171 ( .A1(n171), .A2(n170), .ZN(n108) );
  NOR2_X1 U172 ( .A1(n176), .A2(n168), .ZN(n106) );
  NOR2_X1 U173 ( .A1(n175), .A2(n168), .ZN(n105) );
  NOR2_X1 U174 ( .A1(n174), .A2(n168), .ZN(n104) );
  NOR2_X1 U175 ( .A1(n173), .A2(n168), .ZN(n103) );
  NOR2_X1 U176 ( .A1(n172), .A2(n168), .ZN(n102) );
  NOR2_X1 U177 ( .A1(n171), .A2(n168), .ZN(n101) );
  NOR2_X1 U178 ( .A1(n167), .A2(n178), .ZN(n100) );
endmodule


module mac_operate_2 ( op_1, op_2, ac_sum_old, ac_sum_new );
  input [7:0] op_1;
  input [7:0] op_2;
  input [9:0] ac_sum_old;
  output [9:0] ac_sum_new;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, flag, N21,
         N22, N23, N24, N25, N26, N27, n3, n4, n5, n6, n11, n12, n13, n14, n18,
         n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n34,
         n35, n54, n55, n56, n57, n59, n60, n61, n62, n63, n64, n66, n67, n68,
         n69, n70, n71, n73, n74, n75, n76, n77, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7;
  wire   [6:1] op_1_ori;
  wire   [6:1] op_2_ori;
  wire   [13:8] mul_temp;
  wire   [5:2] sub_add_126_b0_carry;
  wire   [5:2] sub_add_125_b0_carry;
  wire   [5:2] sub_add_130_b0_carry;

  mac_operate_2_DW01_add_0 add_131 ( .A(ac_sum_old), .B({flag, flag, flag, n26, 
        n27, n28, n29, n30, n31, n32}), .CI(1'b0), .SUM(ac_sum_new) );
  mac_operate_2_DW_mult_uns_0 mult_128 ( .a({op_1_ori, op_1[0]}), .b({op_2_ori, 
        op_2[0]}), .product({mul_temp, N21, SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7}) );
  INV_X1 U2 ( .A(n34), .ZN(n31) );
  INV_X1 U5 ( .A(mul_temp[9]), .ZN(n3) );
  INV_X1 U6 ( .A(mul_temp[10]), .ZN(n4) );
  INV_X1 U8 ( .A(mul_temp[11]), .ZN(n5) );
  INV_X1 U9 ( .A(mul_temp[12]), .ZN(n6) );
  AOI22_X1 U11 ( .A1(mul_temp[8]), .A2(n23), .B1(N22), .B2(flag), .ZN(n34) );
  INV_X1 U14 ( .A(flag), .ZN(n23) );
  INV_X1 U17 ( .A(n61), .ZN(op_1_ori[3]) );
  AOI22_X1 U18 ( .A1(N8), .A2(op_1[7]), .B1(op_1[3]), .B2(n24), .ZN(n61) );
  INV_X1 U19 ( .A(n66), .ZN(op_2_ori[1]) );
  AOI22_X1 U20 ( .A1(N14), .A2(op_2[7]), .B1(op_2[1]), .B2(n25), .ZN(n66) );
  INV_X1 U21 ( .A(n59), .ZN(op_1_ori[1]) );
  AOI22_X1 U22 ( .A1(N6), .A2(op_1[7]), .B1(op_1[1]), .B2(n24), .ZN(n59) );
  INV_X1 U23 ( .A(n64), .ZN(op_1_ori[6]) );
  AOI22_X1 U24 ( .A1(op_1[7]), .A2(N11), .B1(op_1[6]), .B2(n24), .ZN(n64) );
  INV_X1 U25 ( .A(n63), .ZN(op_1_ori[5]) );
  AOI22_X1 U26 ( .A1(N10), .A2(op_1[7]), .B1(op_1[5]), .B2(n24), .ZN(n63) );
  INV_X1 U27 ( .A(n35), .ZN(n30) );
  AOI22_X1 U28 ( .A1(mul_temp[9]), .A2(n23), .B1(N23), .B2(flag), .ZN(n35) );
  INV_X1 U29 ( .A(n54), .ZN(n29) );
  AOI22_X1 U30 ( .A1(mul_temp[10]), .A2(n23), .B1(N24), .B2(flag), .ZN(n54) );
  INV_X1 U31 ( .A(n55), .ZN(n28) );
  AOI22_X1 U32 ( .A1(mul_temp[11]), .A2(n23), .B1(N25), .B2(flag), .ZN(n55) );
  INV_X1 U33 ( .A(n56), .ZN(n27) );
  AOI22_X1 U34 ( .A1(mul_temp[12]), .A2(n23), .B1(N26), .B2(flag), .ZN(n56) );
  INV_X1 U35 ( .A(n57), .ZN(n26) );
  AOI22_X1 U36 ( .A1(mul_temp[13]), .A2(n23), .B1(N27), .B2(flag), .ZN(n57) );
  INV_X1 U37 ( .A(n71), .ZN(op_2_ori[6]) );
  AOI22_X1 U38 ( .A1(op_2[7]), .A2(N19), .B1(op_2[6]), .B2(n25), .ZN(n71) );
  INV_X1 U41 ( .A(n67), .ZN(op_2_ori[2]) );
  AOI22_X1 U42 ( .A1(N15), .A2(op_2[7]), .B1(op_2[2]), .B2(n25), .ZN(n67) );
  INV_X1 U43 ( .A(n68), .ZN(op_2_ori[3]) );
  AOI22_X1 U45 ( .A1(N16), .A2(op_2[7]), .B1(op_2[3]), .B2(n25), .ZN(n68) );
  INV_X1 U46 ( .A(n69), .ZN(op_2_ori[4]) );
  AOI22_X1 U47 ( .A1(N17), .A2(op_2[7]), .B1(op_2[4]), .B2(n25), .ZN(n69) );
  INV_X1 U48 ( .A(n70), .ZN(op_2_ori[5]) );
  AOI22_X1 U49 ( .A1(N18), .A2(op_2[7]), .B1(op_2[5]), .B2(n25), .ZN(n70) );
  INV_X1 U52 ( .A(n60), .ZN(op_1_ori[2]) );
  AOI22_X1 U53 ( .A1(N7), .A2(op_1[7]), .B1(op_1[2]), .B2(n24), .ZN(n60) );
  INV_X1 U54 ( .A(n62), .ZN(op_1_ori[4]) );
  AOI22_X1 U55 ( .A1(N9), .A2(op_1[7]), .B1(op_1[4]), .B2(n24), .ZN(n62) );
  INV_X1 U60 ( .A(op_2[2]), .ZN(n18) );
  INV_X1 U61 ( .A(op_1[2]), .ZN(n11) );
  INV_X1 U62 ( .A(op_2[3]), .ZN(n19) );
  INV_X1 U63 ( .A(op_1[3]), .ZN(n12) );
  INV_X1 U64 ( .A(op_2[4]), .ZN(n20) );
  INV_X1 U65 ( .A(op_1[4]), .ZN(n13) );
  INV_X1 U66 ( .A(op_1[5]), .ZN(n14) );
  INV_X1 U67 ( .A(op_2[5]), .ZN(n21) );
  XOR2_X1 U72 ( .A(n6), .B(sub_add_130_b0_carry[5]), .Z(N26) );
  AND2_X1 U73 ( .A1(sub_add_130_b0_carry[4]), .A2(n5), .ZN(
        sub_add_130_b0_carry[5]) );
  XOR2_X1 U74 ( .A(n5), .B(sub_add_130_b0_carry[4]), .Z(N25) );
  AND2_X1 U75 ( .A1(sub_add_130_b0_carry[3]), .A2(n4), .ZN(
        sub_add_130_b0_carry[4]) );
  XOR2_X1 U76 ( .A(n4), .B(sub_add_130_b0_carry[3]), .Z(N24) );
  AND2_X1 U77 ( .A1(sub_add_130_b0_carry[2]), .A2(n3), .ZN(
        sub_add_130_b0_carry[3]) );
  XOR2_X1 U78 ( .A(n3), .B(sub_add_130_b0_carry[2]), .Z(N23) );
  XOR2_X1 U84 ( .A(n14), .B(sub_add_125_b0_carry[5]), .Z(N10) );
  AND2_X1 U85 ( .A1(sub_add_125_b0_carry[4]), .A2(n13), .ZN(
        sub_add_125_b0_carry[5]) );
  XOR2_X1 U86 ( .A(n13), .B(sub_add_125_b0_carry[4]), .Z(N9) );
  XOR2_X1 U88 ( .A(n21), .B(sub_add_126_b0_carry[5]), .Z(N18) );
  AND2_X1 U89 ( .A1(sub_add_126_b0_carry[4]), .A2(n20), .ZN(
        sub_add_126_b0_carry[5]) );
  XOR2_X1 U90 ( .A(n20), .B(sub_add_126_b0_carry[4]), .Z(N17) );
  AND2_X1 U91 ( .A1(sub_add_126_b0_carry[3]), .A2(n19), .ZN(
        sub_add_126_b0_carry[4]) );
  XOR2_X1 U92 ( .A(n19), .B(sub_add_126_b0_carry[3]), .Z(N16) );
  AND2_X1 U93 ( .A1(sub_add_126_b0_carry[2]), .A2(n18), .ZN(
        sub_add_126_b0_carry[3]) );
  XOR2_X1 U94 ( .A(n18), .B(sub_add_126_b0_carry[2]), .Z(N15) );
  AND2_X1 U97 ( .A1(sub_add_125_b0_carry[3]), .A2(n12), .ZN(
        sub_add_125_b0_carry[4]) );
  XOR2_X1 U98 ( .A(n12), .B(sub_add_125_b0_carry[3]), .Z(N8) );
  AND2_X1 U99 ( .A1(sub_add_125_b0_carry[2]), .A2(n11), .ZN(
        sub_add_125_b0_carry[3]) );
  XOR2_X1 U100 ( .A(n11), .B(sub_add_125_b0_carry[2]), .Z(N7) );
  XOR2_X1 U4 ( .A(mul_temp[8]), .B(N21), .Z(N22) );
  INV_X1 U7 ( .A(n73), .ZN(flag) );
  XOR2_X1 U10 ( .A(n24), .B(op_2[7]), .Z(n73) );
  XOR2_X1 U12 ( .A(mul_temp[13]), .B(n74), .Z(N27) );
  NAND2_X1 U13 ( .A1(n6), .A2(sub_add_130_b0_carry[5]), .ZN(n74) );
  INV_X1 U15 ( .A(n75), .ZN(n32) );
  OAI21_X1 U16 ( .B1(n23), .B2(flag), .A(N21), .ZN(n75) );
  NOR2_X1 U39 ( .A1(N21), .A2(mul_temp[8]), .ZN(sub_add_130_b0_carry[2]) );
  XOR2_X1 U40 ( .A(op_1[6]), .B(n76), .Z(N11) );
  NAND2_X1 U44 ( .A1(n14), .A2(sub_add_125_b0_carry[5]), .ZN(n76) );
  XOR2_X1 U50 ( .A(op_2[6]), .B(n77), .Z(N19) );
  NAND2_X1 U51 ( .A1(n21), .A2(sub_add_126_b0_carry[5]), .ZN(n77) );
  INV_X1 U56 ( .A(op_2[7]), .ZN(n25) );
  INV_X1 U57 ( .A(op_1[7]), .ZN(n24) );
  XOR2_X1 U58 ( .A(op_1[1]), .B(op_1[0]), .Z(N6) );
  XOR2_X1 U59 ( .A(op_2[1]), .B(op_2[0]), .Z(N14) );
  NOR2_X1 U68 ( .A1(op_1[0]), .A2(op_1[1]), .ZN(sub_add_125_b0_carry[2]) );
  NOR2_X1 U69 ( .A1(op_2[0]), .A2(op_2[1]), .ZN(sub_add_126_b0_carry[2]) );
endmodule


module MAC_2 ( clk, rst_n, mac_enable, h_0, h_1, h_2, h_3, data_0, data_1, 
        data_2, data_3, data_out, mac_done );
  input [0:0] mac_enable;
  input [7:0] h_0;
  input [7:0] h_1;
  input [7:0] h_2;
  input [7:0] h_3;
  input [7:0] data_0;
  input [7:0] data_1;
  input [7:0] data_2;
  input [7:0] data_3;
  output [9:0] data_out;
  output [0:0] mac_done;
  input clk, rst_n;
  wire   N20, N22, N60, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228;
  wire   [2:0] cnt;
  wire   [9:0] ac_sum_new;
  wire   [7:0] op_1;
  wire   [7:0] op_2;
  wire   [9:0] ac_sum_old;

  DFFR_X1 cnt_reg_0_ ( .D(N20), .CK(clk), .RN(rst_n), .Q(cnt[0]), .QN(n226) );
  SDFFR_X1 cnt_reg_1_ ( .D(n162), .SI(1'b0), .SE(n161), .CK(clk), .RN(rst_n), 
        .Q(cnt[1]), .QN(n227) );
  DFFR_X1 cnt_reg_2_ ( .D(N22), .CK(clk), .RN(rst_n), .Q(cnt[2]), .QN(n228) );
  DFFR_X1 op_1_reg_7_ ( .D(n125), .CK(clk), .RN(rst_n), .Q(op_1[7]) );
  DFFR_X1 op_1_reg_6_ ( .D(n126), .CK(clk), .RN(rst_n), .Q(op_1[6]) );
  DFFR_X1 op_1_reg_5_ ( .D(n127), .CK(clk), .RN(rst_n), .Q(op_1[5]) );
  DFFR_X1 op_1_reg_4_ ( .D(n128), .CK(clk), .RN(rst_n), .Q(op_1[4]) );
  DFFR_X1 op_1_reg_3_ ( .D(n129), .CK(clk), .RN(rst_n), .Q(op_1[3]) );
  DFFR_X1 op_1_reg_2_ ( .D(n130), .CK(clk), .RN(rst_n), .Q(op_1[2]) );
  DFFR_X1 op_1_reg_1_ ( .D(n131), .CK(clk), .RN(rst_n), .Q(op_1[1]) );
  DFFR_X1 op_1_reg_0_ ( .D(n132), .CK(clk), .RN(rst_n), .Q(op_1[0]) );
  DFFR_X1 op_2_reg_7_ ( .D(n133), .CK(clk), .RN(rst_n), .Q(op_2[7]) );
  DFFR_X1 op_2_reg_6_ ( .D(n134), .CK(clk), .RN(rst_n), .Q(op_2[6]) );
  DFFR_X1 op_2_reg_5_ ( .D(n135), .CK(clk), .RN(rst_n), .Q(op_2[5]) );
  DFFR_X1 op_2_reg_4_ ( .D(n136), .CK(clk), .RN(rst_n), .Q(op_2[4]) );
  DFFR_X1 op_2_reg_3_ ( .D(n137), .CK(clk), .RN(rst_n), .Q(op_2[3]) );
  DFFR_X1 op_2_reg_2_ ( .D(n138), .CK(clk), .RN(rst_n), .Q(op_2[2]) );
  DFFR_X1 op_2_reg_1_ ( .D(n139), .CK(clk), .RN(rst_n), .Q(op_2[1]) );
  DFFR_X1 op_2_reg_0_ ( .D(n140), .CK(clk), .RN(rst_n), .Q(op_2[0]) );
  DFFR_X1 ac_sum_old_reg_0_ ( .D(n141), .CK(clk), .RN(rst_n), .Q(ac_sum_old[0]) );
  DFFR_X1 ac_sum_old_reg_1_ ( .D(n142), .CK(clk), .RN(rst_n), .Q(ac_sum_old[1]) );
  DFFR_X1 ac_sum_old_reg_2_ ( .D(n143), .CK(clk), .RN(rst_n), .Q(ac_sum_old[2]) );
  DFFR_X1 ac_sum_old_reg_3_ ( .D(n144), .CK(clk), .RN(rst_n), .Q(ac_sum_old[3]) );
  DFFR_X1 ac_sum_old_reg_4_ ( .D(n145), .CK(clk), .RN(rst_n), .Q(ac_sum_old[4]) );
  DFFR_X1 ac_sum_old_reg_5_ ( .D(n146), .CK(clk), .RN(rst_n), .Q(ac_sum_old[5]) );
  DFFR_X1 ac_sum_old_reg_6_ ( .D(n147), .CK(clk), .RN(rst_n), .Q(ac_sum_old[6]) );
  DFFR_X1 ac_sum_old_reg_7_ ( .D(n148), .CK(clk), .RN(rst_n), .Q(ac_sum_old[7]) );
  DFFR_X1 ac_sum_old_reg_8_ ( .D(n149), .CK(clk), .RN(rst_n), .Q(ac_sum_old[8]) );
  DFFR_X1 ac_sum_old_reg_9_ ( .D(n150), .CK(clk), .RN(rst_n), .Q(ac_sum_old[9]) );
  DFFR_X1 mac_done_reg_0_ ( .D(N60), .CK(clk), .RN(rst_n), .Q(mac_done[0]) );
  DFF_X1 data_out_reg_9_ ( .D(n151), .CK(clk), .Q(data_out[9]) );
  DFF_X1 data_out_reg_8_ ( .D(n152), .CK(clk), .Q(data_out[8]) );
  DFF_X1 data_out_reg_7_ ( .D(n153), .CK(clk), .Q(data_out[7]) );
  DFF_X1 data_out_reg_6_ ( .D(n154), .CK(clk), .Q(data_out[6]) );
  DFF_X1 data_out_reg_5_ ( .D(n155), .CK(clk), .Q(data_out[5]) );
  DFF_X1 data_out_reg_4_ ( .D(n156), .CK(clk), .Q(data_out[4]) );
  DFF_X1 data_out_reg_3_ ( .D(n157), .CK(clk), .Q(data_out[3]) );
  DFF_X1 data_out_reg_2_ ( .D(n158), .CK(clk), .Q(data_out[2]) );
  DFF_X1 data_out_reg_1_ ( .D(n159), .CK(clk), .Q(data_out[1]) );
  DFF_X1 data_out_reg_0_ ( .D(n160), .CK(clk), .Q(data_out[0]) );
  NOR3_X2 U95 ( .A1(n198), .A2(n199), .A3(n123), .ZN(n212) );
  NAND3_X1 U120 ( .A1(n226), .A2(n227), .A3(n165), .ZN(n167) );
  NAND3_X1 U121 ( .A1(cnt[0]), .A2(n165), .A3(cnt[1]), .ZN(n166) );
  XOR2_X1 U122 ( .A(n226), .B(cnt[1]), .Z(n161) );
  mac_operate_2 mac_operate_inst ( .op_1(op_1), .op_2(op_2), .ac_sum_old(
        ac_sum_old), .ac_sum_new(ac_sum_new) );
  INV_X1 U4 ( .A(ac_sum_new[0]), .ZN(n19) );
  NAND2_X1 U5 ( .A1(n213), .A2(rst_n), .ZN(n223) );
  NAND2_X1 U10 ( .A1(N60), .A2(n121), .ZN(n225) );
  INV_X1 U11 ( .A(n223), .ZN(n121) );
  INV_X1 U12 ( .A(ac_sum_new[8]), .ZN(n11) );
  INV_X1 U13 ( .A(ac_sum_new[7]), .ZN(n12) );
  INV_X1 U14 ( .A(ac_sum_new[6]), .ZN(n13) );
  INV_X1 U15 ( .A(ac_sum_new[5]), .ZN(n14) );
  INV_X1 U16 ( .A(ac_sum_new[4]), .ZN(n15) );
  INV_X1 U17 ( .A(ac_sum_new[3]), .ZN(n16) );
  INV_X1 U18 ( .A(ac_sum_new[2]), .ZN(n17) );
  INV_X1 U19 ( .A(ac_sum_new[1]), .ZN(n18) );
  INV_X1 U20 ( .A(n166), .ZN(n123) );
  INV_X1 U22 ( .A(n167), .ZN(n122) );
  NOR2_X1 U23 ( .A1(n124), .A2(n164), .ZN(n162) );
  OAI21_X1 U25 ( .B1(n225), .B2(n19), .A(n224), .ZN(n160) );
  NAND2_X1 U26 ( .A1(data_out[0]), .A2(n223), .ZN(n224) );
  OAI21_X1 U27 ( .B1(n225), .B2(n18), .A(n222), .ZN(n159) );
  NAND2_X1 U28 ( .A1(data_out[1]), .A2(n223), .ZN(n222) );
  OAI21_X1 U29 ( .B1(n225), .B2(n17), .A(n221), .ZN(n158) );
  NAND2_X1 U30 ( .A1(data_out[2]), .A2(n223), .ZN(n221) );
  OAI21_X1 U31 ( .B1(n225), .B2(n16), .A(n220), .ZN(n157) );
  NAND2_X1 U32 ( .A1(data_out[3]), .A2(n223), .ZN(n220) );
  OAI21_X1 U33 ( .B1(n225), .B2(n15), .A(n219), .ZN(n156) );
  NAND2_X1 U34 ( .A1(data_out[4]), .A2(n223), .ZN(n219) );
  OAI21_X1 U35 ( .B1(n225), .B2(n14), .A(n218), .ZN(n155) );
  NAND2_X1 U36 ( .A1(data_out[5]), .A2(n223), .ZN(n218) );
  OAI21_X1 U37 ( .B1(n225), .B2(n13), .A(n217), .ZN(n154) );
  NAND2_X1 U38 ( .A1(data_out[6]), .A2(n223), .ZN(n217) );
  OAI21_X1 U39 ( .B1(n225), .B2(n12), .A(n216), .ZN(n153) );
  NAND2_X1 U40 ( .A1(data_out[7]), .A2(n223), .ZN(n216) );
  OAI21_X1 U41 ( .B1(n225), .B2(n11), .A(n215), .ZN(n152) );
  NAND2_X1 U42 ( .A1(data_out[8]), .A2(n223), .ZN(n215) );
  OAI21_X1 U43 ( .B1(n225), .B2(n10), .A(n214), .ZN(n151) );
  NAND2_X1 U44 ( .A1(data_out[9]), .A2(n223), .ZN(n214) );
  OAI21_X1 U45 ( .B1(n212), .B2(n10), .A(n211), .ZN(n150) );
  NAND2_X1 U46 ( .A1(ac_sum_old[9]), .A2(n213), .ZN(n211) );
  OAI21_X1 U47 ( .B1(n212), .B2(n11), .A(n210), .ZN(n149) );
  NAND2_X1 U48 ( .A1(ac_sum_old[8]), .A2(n213), .ZN(n210) );
  OAI21_X1 U49 ( .B1(n212), .B2(n12), .A(n209), .ZN(n148) );
  NAND2_X1 U50 ( .A1(ac_sum_old[7]), .A2(n213), .ZN(n209) );
  OAI21_X1 U51 ( .B1(n212), .B2(n13), .A(n208), .ZN(n147) );
  NAND2_X1 U52 ( .A1(ac_sum_old[6]), .A2(n213), .ZN(n208) );
  INV_X1 U53 ( .A(ac_sum_new[9]), .ZN(n10) );
  OAI21_X1 U54 ( .B1(n212), .B2(n14), .A(n207), .ZN(n146) );
  NAND2_X1 U55 ( .A1(ac_sum_old[5]), .A2(n213), .ZN(n207) );
  OAI21_X1 U56 ( .B1(n212), .B2(n15), .A(n206), .ZN(n145) );
  NAND2_X1 U57 ( .A1(ac_sum_old[4]), .A2(n213), .ZN(n206) );
  OAI21_X1 U58 ( .B1(n212), .B2(n16), .A(n205), .ZN(n144) );
  NAND2_X1 U59 ( .A1(ac_sum_old[3]), .A2(n213), .ZN(n205) );
  OAI21_X1 U60 ( .B1(n212), .B2(n17), .A(n204), .ZN(n143) );
  NAND2_X1 U61 ( .A1(ac_sum_old[2]), .A2(n213), .ZN(n204) );
  OAI21_X1 U62 ( .B1(n212), .B2(n18), .A(n203), .ZN(n142) );
  NAND2_X1 U63 ( .A1(ac_sum_old[1]), .A2(n213), .ZN(n203) );
  OAI21_X1 U64 ( .B1(n212), .B2(n19), .A(n202), .ZN(n141) );
  NAND2_X1 U65 ( .A1(ac_sum_old[0]), .A2(n213), .ZN(n202) );
  AND3_X1 U66 ( .A1(n165), .A2(n226), .A3(cnt[1]), .ZN(n198) );
  AND3_X1 U67 ( .A1(n165), .A2(n227), .A3(cnt[0]), .ZN(n199) );
  NOR2_X1 U68 ( .A1(n124), .A2(cnt[2]), .ZN(n165) );
  NAND2_X1 U69 ( .A1(n185), .A2(n184), .ZN(n133) );
  AOI222_X1 U70 ( .A1(data_1[7]), .A2(n199), .B1(data_3[7]), .B2(n123), .C1(
        data_2[7]), .C2(n198), .ZN(n184) );
  AOI22_X1 U71 ( .A1(data_0[7]), .A2(n122), .B1(op_2[7]), .B2(n213), .ZN(n185)
         );
  NAND2_X1 U72 ( .A1(n169), .A2(n168), .ZN(n125) );
  AOI222_X1 U73 ( .A1(h_1[7]), .A2(n199), .B1(h_3[7]), .B2(n123), .C1(h_2[7]), 
        .C2(n198), .ZN(n168) );
  AOI22_X1 U74 ( .A1(h_0[7]), .A2(n122), .B1(op_1[7]), .B2(n213), .ZN(n169) );
  NAND2_X1 U75 ( .A1(n201), .A2(n200), .ZN(n140) );
  AOI222_X1 U76 ( .A1(data_1[0]), .A2(n199), .B1(data_3[0]), .B2(n123), .C1(
        data_2[0]), .C2(n198), .ZN(n200) );
  AOI22_X1 U77 ( .A1(data_0[0]), .A2(n122), .B1(op_2[0]), .B2(n213), .ZN(n201)
         );
  NAND2_X1 U78 ( .A1(n197), .A2(n196), .ZN(n139) );
  AOI222_X1 U79 ( .A1(data_1[1]), .A2(n199), .B1(data_3[1]), .B2(n123), .C1(
        data_2[1]), .C2(n198), .ZN(n196) );
  AOI22_X1 U80 ( .A1(data_0[1]), .A2(n122), .B1(op_2[1]), .B2(n213), .ZN(n197)
         );
  NAND2_X1 U81 ( .A1(n195), .A2(n194), .ZN(n138) );
  AOI222_X1 U82 ( .A1(data_1[2]), .A2(n199), .B1(data_3[2]), .B2(n123), .C1(
        data_2[2]), .C2(n198), .ZN(n194) );
  AOI22_X1 U83 ( .A1(data_0[2]), .A2(n122), .B1(op_2[2]), .B2(n213), .ZN(n195)
         );
  NAND2_X1 U84 ( .A1(n193), .A2(n192), .ZN(n137) );
  AOI222_X1 U85 ( .A1(data_1[3]), .A2(n199), .B1(data_3[3]), .B2(n123), .C1(
        data_2[3]), .C2(n198), .ZN(n192) );
  AOI22_X1 U86 ( .A1(data_0[3]), .A2(n122), .B1(op_2[3]), .B2(n213), .ZN(n193)
         );
  NAND2_X1 U87 ( .A1(n191), .A2(n190), .ZN(n136) );
  AOI222_X1 U88 ( .A1(data_1[4]), .A2(n199), .B1(data_3[4]), .B2(n123), .C1(
        data_2[4]), .C2(n198), .ZN(n190) );
  AOI22_X1 U89 ( .A1(data_0[4]), .A2(n122), .B1(op_2[4]), .B2(n213), .ZN(n191)
         );
  NAND2_X1 U90 ( .A1(n189), .A2(n188), .ZN(n135) );
  AOI222_X1 U91 ( .A1(data_1[5]), .A2(n199), .B1(data_3[5]), .B2(n123), .C1(
        data_2[5]), .C2(n198), .ZN(n188) );
  AOI22_X1 U92 ( .A1(data_0[5]), .A2(n122), .B1(op_2[5]), .B2(n213), .ZN(n189)
         );
  NAND2_X1 U93 ( .A1(n187), .A2(n186), .ZN(n134) );
  AOI222_X1 U94 ( .A1(data_1[6]), .A2(n199), .B1(data_3[6]), .B2(n123), .C1(
        data_2[6]), .C2(n198), .ZN(n186) );
  AOI22_X1 U96 ( .A1(data_0[6]), .A2(n122), .B1(op_2[6]), .B2(n213), .ZN(n187)
         );
  NAND2_X1 U97 ( .A1(n183), .A2(n182), .ZN(n132) );
  AOI222_X1 U98 ( .A1(h_1[0]), .A2(n199), .B1(h_3[0]), .B2(n123), .C1(h_2[0]), 
        .C2(n198), .ZN(n182) );
  AOI22_X1 U99 ( .A1(h_0[0]), .A2(n122), .B1(op_1[0]), .B2(n213), .ZN(n183) );
  NAND2_X1 U100 ( .A1(n181), .A2(n180), .ZN(n131) );
  AOI222_X1 U101 ( .A1(h_1[1]), .A2(n199), .B1(h_3[1]), .B2(n123), .C1(h_2[1]), 
        .C2(n198), .ZN(n180) );
  AOI22_X1 U102 ( .A1(h_0[1]), .A2(n122), .B1(op_1[1]), .B2(n213), .ZN(n181)
         );
  NAND2_X1 U103 ( .A1(n179), .A2(n178), .ZN(n130) );
  AOI222_X1 U104 ( .A1(h_1[2]), .A2(n199), .B1(h_3[2]), .B2(n123), .C1(h_2[2]), 
        .C2(n198), .ZN(n178) );
  AOI22_X1 U105 ( .A1(h_0[2]), .A2(n122), .B1(op_1[2]), .B2(n213), .ZN(n179)
         );
  NAND2_X1 U106 ( .A1(n177), .A2(n176), .ZN(n129) );
  AOI222_X1 U107 ( .A1(h_1[3]), .A2(n199), .B1(h_3[3]), .B2(n123), .C1(h_2[3]), 
        .C2(n198), .ZN(n176) );
  AOI22_X1 U108 ( .A1(h_0[3]), .A2(n122), .B1(op_1[3]), .B2(n213), .ZN(n177)
         );
  NAND2_X1 U109 ( .A1(n175), .A2(n174), .ZN(n128) );
  AOI222_X1 U110 ( .A1(h_1[4]), .A2(n199), .B1(h_3[4]), .B2(n123), .C1(h_2[4]), 
        .C2(n198), .ZN(n174) );
  AOI22_X1 U111 ( .A1(h_0[4]), .A2(n122), .B1(op_1[4]), .B2(n213), .ZN(n175)
         );
  NAND2_X1 U112 ( .A1(n173), .A2(n172), .ZN(n127) );
  AOI222_X1 U113 ( .A1(h_1[5]), .A2(n199), .B1(h_3[5]), .B2(n123), .C1(h_2[5]), 
        .C2(n198), .ZN(n172) );
  AOI22_X1 U114 ( .A1(h_0[5]), .A2(n122), .B1(op_1[5]), .B2(n213), .ZN(n173)
         );
  NAND2_X1 U115 ( .A1(n171), .A2(n170), .ZN(n126) );
  AOI222_X1 U116 ( .A1(h_1[6]), .A2(n199), .B1(h_3[6]), .B2(n123), .C1(h_2[6]), 
        .C2(n198), .ZN(n170) );
  AOI22_X1 U117 ( .A1(h_0[6]), .A2(n122), .B1(op_1[6]), .B2(n213), .ZN(n171)
         );
  NOR3_X1 U118 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n228), .ZN(n164) );
  OAI21_X1 U119 ( .B1(n163), .B2(n228), .A(n166), .ZN(N22) );
  AOI21_X1 U123 ( .B1(n162), .B2(n227), .A(N20), .ZN(n163) );
  AND2_X1 U124 ( .A1(n162), .A2(n226), .ZN(N20) );
  AND2_X1 U125 ( .A1(mac_enable[0]), .A2(n164), .ZN(N60) );
  INV_X1 U126 ( .A(mac_enable[0]), .ZN(n124) );
  AND2_X2 U6 ( .A1(n167), .A2(n212), .ZN(n213) );
endmodule


module mac_operate_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:2] carry;

  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .S(SUM[9]) );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2_X1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module mac_operate_1_DW_mult_uns_0 ( a, b, product );
  input [6:0] a;
  input [6:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n108, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n119, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185;

  FA_X1 U2 ( .A(n13), .B(n73), .CI(n2), .CO(product[13]), .S(product[12]) );
  FA_X1 U3 ( .A(n15), .B(n14), .CI(n3), .CO(n2), .S(product[11]) );
  FA_X1 U4 ( .A(n19), .B(n16), .CI(n4), .CO(n3), .S(product[10]) );
  FA_X1 U5 ( .A(n20), .B(n25), .CI(n5), .CO(n4), .S(product[9]) );
  FA_X1 U6 ( .A(n26), .B(n33), .CI(n6), .CO(n5), .S(product[8]) );
  FA_X1 U7 ( .A(n34), .B(n43), .CI(n160), .CO(n6), .S(product[7]) );
  FA_X1 U14 ( .A(n74), .B(n80), .CI(n17), .CO(n13), .S(n14) );
  FA_X1 U15 ( .A(n18), .B(n23), .CI(n21), .CO(n15), .S(n16) );
  FA_X1 U16 ( .A(n75), .B(n87), .CI(n81), .CO(n17), .S(n18) );
  FA_X1 U17 ( .A(n27), .B(n24), .CI(n22), .CO(n19), .S(n20) );
  FA_X1 U18 ( .A(n31), .B(n88), .CI(n29), .CO(n21), .S(n22) );
  FA_X1 U19 ( .A(n76), .B(n94), .CI(n82), .CO(n23), .S(n24) );
  FA_X1 U20 ( .A(n35), .B(n30), .CI(n28), .CO(n25), .S(n26) );
  FA_X1 U21 ( .A(n32), .B(n39), .CI(n37), .CO(n27), .S(n28) );
  FA_X1 U22 ( .A(n89), .B(n95), .CI(n41), .CO(n29), .S(n30) );
  FA_X1 U23 ( .A(n77), .B(n101), .CI(n83), .CO(n31), .S(n32) );
  FA_X1 U24 ( .A(n45), .B(n38), .CI(n36), .CO(n33), .S(n34) );
  FA_X1 U25 ( .A(n47), .B(n49), .CI(n40), .CO(n35), .S(n36) );
  FA_X1 U26 ( .A(n51), .B(n102), .CI(n42), .CO(n37), .S(n38) );
  FA_X1 U27 ( .A(n108), .B(n96), .CI(n90), .CO(n39), .S(n40) );
  HA_X1 U28 ( .A(n84), .B(n78), .CO(n41), .S(n42) );
  FA_X1 U29 ( .A(n48), .B(n55), .CI(n46), .CO(n43), .S(n44) );
  FA_X1 U30 ( .A(n57), .B(n52), .CI(n50), .CO(n45), .S(n46) );
  FA_X1 U31 ( .A(n97), .B(n103), .CI(n59), .CO(n47), .S(n48) );
  FA_X1 U32 ( .A(n91), .B(n115), .CI(n109), .CO(n49), .S(n50) );
  HA_X1 U33 ( .A(n85), .B(n79), .CO(n51), .S(n52) );
  FA_X1 U34 ( .A(n58), .B(n63), .CI(n56), .CO(n53), .S(n54) );
  FA_X1 U35 ( .A(n65), .B(n110), .CI(n60), .CO(n55), .S(n56) );
  FA_X1 U36 ( .A(n98), .B(n116), .CI(n104), .CO(n57), .S(n58) );
  HA_X1 U37 ( .A(n92), .B(n86), .CO(n59), .S(n60) );
  FA_X1 U38 ( .A(n66), .B(n69), .CI(n67), .CO(n61), .S(n62) );
  FA_X1 U39 ( .A(n105), .B(n117), .CI(n111), .CO(n63), .S(n64) );
  HA_X1 U40 ( .A(n99), .B(n93), .CO(n65), .S(n66) );
  FA_X1 U41 ( .A(n112), .B(n118), .CI(n71), .CO(n67), .S(n68) );
  HA_X1 U42 ( .A(n106), .B(n100), .CO(n69), .S(n70) );
  HA_X1 U43 ( .A(n119), .B(n113), .CO(n71), .S(n72) );
  INV_X1 U108 ( .A(n70), .ZN(n166) );
  INV_X1 U109 ( .A(n68), .ZN(n169) );
  INV_X1 U110 ( .A(n180), .ZN(n162) );
  INV_X1 U111 ( .A(n181), .ZN(n164) );
  INV_X1 U112 ( .A(n179), .ZN(n160) );
  INV_X1 U113 ( .A(a[3]), .ZN(n167) );
  INV_X1 U114 ( .A(b[1]), .ZN(n176) );
  INV_X1 U115 ( .A(a[1]), .ZN(n170) );
  INV_X1 U116 ( .A(a[6]), .ZN(n161) );
  INV_X1 U117 ( .A(a[5]), .ZN(n163) );
  INV_X1 U118 ( .A(b[6]), .ZN(n171) );
  INV_X1 U119 ( .A(b[0]), .ZN(n178) );
  INV_X1 U120 ( .A(b[2]), .ZN(n175) );
  INV_X1 U121 ( .A(b[3]), .ZN(n174) );
  INV_X1 U122 ( .A(b[4]), .ZN(n173) );
  INV_X1 U123 ( .A(b[5]), .ZN(n172) );
  INV_X1 U124 ( .A(a[0]), .ZN(n177) );
  INV_X1 U125 ( .A(a[2]), .ZN(n168) );
  INV_X1 U126 ( .A(a[4]), .ZN(n165) );
  NOR2_X1 U127 ( .A1(n167), .A2(n176), .ZN(n99) );
  NOR2_X1 U128 ( .A1(n167), .A2(n175), .ZN(n98) );
  NOR2_X1 U129 ( .A1(n167), .A2(n174), .ZN(n97) );
  NOR2_X1 U130 ( .A1(n167), .A2(n173), .ZN(n96) );
  NOR2_X1 U131 ( .A1(n167), .A2(n172), .ZN(n95) );
  NOR2_X1 U132 ( .A1(n167), .A2(n171), .ZN(n94) );
  NOR2_X1 U133 ( .A1(n165), .A2(n178), .ZN(n93) );
  NOR2_X1 U134 ( .A1(n176), .A2(n165), .ZN(n92) );
  NOR2_X1 U135 ( .A1(n175), .A2(n165), .ZN(n91) );
  NOR2_X1 U136 ( .A1(n174), .A2(n165), .ZN(n90) );
  NOR2_X1 U137 ( .A1(n173), .A2(n165), .ZN(n89) );
  NOR2_X1 U138 ( .A1(n172), .A2(n165), .ZN(n88) );
  NOR2_X1 U139 ( .A1(n171), .A2(n165), .ZN(n87) );
  NOR2_X1 U140 ( .A1(n178), .A2(n163), .ZN(n86) );
  NOR2_X1 U141 ( .A1(n176), .A2(n163), .ZN(n85) );
  NOR2_X1 U142 ( .A1(n175), .A2(n163), .ZN(n84) );
  NOR2_X1 U143 ( .A1(n174), .A2(n163), .ZN(n83) );
  NOR2_X1 U144 ( .A1(n173), .A2(n163), .ZN(n82) );
  NOR2_X1 U145 ( .A1(n172), .A2(n163), .ZN(n81) );
  NOR2_X1 U146 ( .A1(n171), .A2(n163), .ZN(n80) );
  NOR2_X1 U147 ( .A1(n178), .A2(n161), .ZN(n79) );
  NOR2_X1 U148 ( .A1(n176), .A2(n161), .ZN(n78) );
  NOR2_X1 U149 ( .A1(n175), .A2(n161), .ZN(n77) );
  NOR2_X1 U150 ( .A1(n174), .A2(n161), .ZN(n76) );
  NOR2_X1 U151 ( .A1(n173), .A2(n161), .ZN(n75) );
  NOR2_X1 U152 ( .A1(n172), .A2(n161), .ZN(n74) );
  NOR2_X1 U153 ( .A1(n171), .A2(n161), .ZN(n73) );
  AOI222_X1 U154 ( .A1(n162), .A2(n44), .B1(n162), .B2(n53), .C1(n53), .C2(n44), .ZN(n179) );
  AOI222_X1 U155 ( .A1(n164), .A2(n54), .B1(n164), .B2(n61), .C1(n61), .C2(n54), .ZN(n180) );
  AOI222_X1 U156 ( .A1(n182), .A2(n62), .B1(n182), .B2(n64), .C1(n64), .C2(n62), .ZN(n181) );
  OAI222_X1 U157 ( .A1(n183), .A2(n169), .B1(n169), .B2(n166), .C1(n183), .C2(
        n166), .ZN(n182) );
  AOI222_X1 U158 ( .A1(n72), .A2(n184), .B1(n185), .B2(n72), .C1(n185), .C2(
        n184), .ZN(n183) );
  NOR2_X1 U159 ( .A1(n168), .A2(n178), .ZN(n185) );
  NOR4_X1 U160 ( .A1(n170), .A2(n177), .A3(n178), .A4(n176), .ZN(n184) );
  NOR2_X1 U161 ( .A1(n175), .A2(n177), .ZN(n119) );
  NOR2_X1 U162 ( .A1(n174), .A2(n177), .ZN(n118) );
  NOR2_X1 U163 ( .A1(n173), .A2(n177), .ZN(n117) );
  NOR2_X1 U164 ( .A1(n172), .A2(n177), .ZN(n116) );
  NOR2_X1 U165 ( .A1(n171), .A2(n177), .ZN(n115) );
  NOR2_X1 U166 ( .A1(n176), .A2(n170), .ZN(n113) );
  NOR2_X1 U167 ( .A1(n175), .A2(n170), .ZN(n112) );
  NOR2_X1 U168 ( .A1(n174), .A2(n170), .ZN(n111) );
  NOR2_X1 U169 ( .A1(n173), .A2(n170), .ZN(n110) );
  NOR2_X1 U170 ( .A1(n172), .A2(n170), .ZN(n109) );
  NOR2_X1 U171 ( .A1(n171), .A2(n170), .ZN(n108) );
  NOR2_X1 U172 ( .A1(n176), .A2(n168), .ZN(n106) );
  NOR2_X1 U173 ( .A1(n175), .A2(n168), .ZN(n105) );
  NOR2_X1 U174 ( .A1(n174), .A2(n168), .ZN(n104) );
  NOR2_X1 U175 ( .A1(n173), .A2(n168), .ZN(n103) );
  NOR2_X1 U176 ( .A1(n172), .A2(n168), .ZN(n102) );
  NOR2_X1 U177 ( .A1(n171), .A2(n168), .ZN(n101) );
  NOR2_X1 U178 ( .A1(n167), .A2(n178), .ZN(n100) );
endmodule


module mac_operate_1 ( op_1, op_2, ac_sum_old, ac_sum_new );
  input [7:0] op_1;
  input [7:0] op_2;
  input [9:0] ac_sum_old;
  output [9:0] ac_sum_new;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, flag, N21,
         N22, N23, N24, N25, N26, N27, n3, n4, n5, n6, n11, n12, n13, n14, n18,
         n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n34,
         n35, n54, n55, n56, n57, n59, n60, n61, n62, n63, n64, n66, n67, n68,
         n69, n70, n71, n73, n74, n75, n76, n77, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7;
  wire   [6:1] op_1_ori;
  wire   [6:1] op_2_ori;
  wire   [13:8] mul_temp;
  wire   [5:2] sub_add_126_b0_carry;
  wire   [5:2] sub_add_125_b0_carry;
  wire   [5:2] sub_add_130_b0_carry;

  mac_operate_1_DW01_add_0 add_131 ( .A(ac_sum_old), .B({flag, flag, flag, n26, 
        n27, n28, n29, n30, n31, n32}), .CI(1'b0), .SUM(ac_sum_new) );
  mac_operate_1_DW_mult_uns_0 mult_128 ( .a({op_1_ori, op_1[0]}), .b({op_2_ori, 
        op_2[0]}), .product({mul_temp, N21, SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7}) );
  INV_X1 U2 ( .A(n34), .ZN(n31) );
  INV_X1 U5 ( .A(mul_temp[9]), .ZN(n3) );
  INV_X1 U6 ( .A(mul_temp[10]), .ZN(n4) );
  INV_X1 U8 ( .A(mul_temp[11]), .ZN(n5) );
  INV_X1 U9 ( .A(mul_temp[12]), .ZN(n6) );
  AOI22_X1 U11 ( .A1(mul_temp[8]), .A2(n23), .B1(N22), .B2(flag), .ZN(n34) );
  INV_X1 U14 ( .A(flag), .ZN(n23) );
  INV_X1 U17 ( .A(n61), .ZN(op_1_ori[3]) );
  AOI22_X1 U18 ( .A1(N8), .A2(op_1[7]), .B1(op_1[3]), .B2(n24), .ZN(n61) );
  INV_X1 U19 ( .A(n66), .ZN(op_2_ori[1]) );
  AOI22_X1 U20 ( .A1(N14), .A2(op_2[7]), .B1(op_2[1]), .B2(n25), .ZN(n66) );
  INV_X1 U21 ( .A(n59), .ZN(op_1_ori[1]) );
  AOI22_X1 U22 ( .A1(N6), .A2(op_1[7]), .B1(op_1[1]), .B2(n24), .ZN(n59) );
  INV_X1 U23 ( .A(n64), .ZN(op_1_ori[6]) );
  AOI22_X1 U24 ( .A1(op_1[7]), .A2(N11), .B1(op_1[6]), .B2(n24), .ZN(n64) );
  INV_X1 U25 ( .A(n63), .ZN(op_1_ori[5]) );
  AOI22_X1 U26 ( .A1(N10), .A2(op_1[7]), .B1(op_1[5]), .B2(n24), .ZN(n63) );
  INV_X1 U27 ( .A(n35), .ZN(n30) );
  AOI22_X1 U28 ( .A1(mul_temp[9]), .A2(n23), .B1(N23), .B2(flag), .ZN(n35) );
  INV_X1 U29 ( .A(n54), .ZN(n29) );
  AOI22_X1 U30 ( .A1(mul_temp[10]), .A2(n23), .B1(N24), .B2(flag), .ZN(n54) );
  INV_X1 U31 ( .A(n55), .ZN(n28) );
  AOI22_X1 U32 ( .A1(mul_temp[11]), .A2(n23), .B1(N25), .B2(flag), .ZN(n55) );
  INV_X1 U33 ( .A(n56), .ZN(n27) );
  AOI22_X1 U34 ( .A1(mul_temp[12]), .A2(n23), .B1(N26), .B2(flag), .ZN(n56) );
  INV_X1 U35 ( .A(n57), .ZN(n26) );
  AOI22_X1 U36 ( .A1(mul_temp[13]), .A2(n23), .B1(N27), .B2(flag), .ZN(n57) );
  INV_X1 U37 ( .A(n71), .ZN(op_2_ori[6]) );
  AOI22_X1 U38 ( .A1(op_2[7]), .A2(N19), .B1(op_2[6]), .B2(n25), .ZN(n71) );
  INV_X1 U41 ( .A(n67), .ZN(op_2_ori[2]) );
  AOI22_X1 U42 ( .A1(N15), .A2(op_2[7]), .B1(op_2[2]), .B2(n25), .ZN(n67) );
  INV_X1 U43 ( .A(n68), .ZN(op_2_ori[3]) );
  AOI22_X1 U45 ( .A1(N16), .A2(op_2[7]), .B1(op_2[3]), .B2(n25), .ZN(n68) );
  INV_X1 U46 ( .A(n69), .ZN(op_2_ori[4]) );
  AOI22_X1 U47 ( .A1(N17), .A2(op_2[7]), .B1(op_2[4]), .B2(n25), .ZN(n69) );
  INV_X1 U48 ( .A(n70), .ZN(op_2_ori[5]) );
  AOI22_X1 U49 ( .A1(N18), .A2(op_2[7]), .B1(op_2[5]), .B2(n25), .ZN(n70) );
  INV_X1 U52 ( .A(n60), .ZN(op_1_ori[2]) );
  AOI22_X1 U53 ( .A1(N7), .A2(op_1[7]), .B1(op_1[2]), .B2(n24), .ZN(n60) );
  INV_X1 U54 ( .A(n62), .ZN(op_1_ori[4]) );
  AOI22_X1 U55 ( .A1(N9), .A2(op_1[7]), .B1(op_1[4]), .B2(n24), .ZN(n62) );
  INV_X1 U60 ( .A(op_2[2]), .ZN(n18) );
  INV_X1 U61 ( .A(op_1[2]), .ZN(n11) );
  INV_X1 U62 ( .A(op_2[3]), .ZN(n19) );
  INV_X1 U63 ( .A(op_1[3]), .ZN(n12) );
  INV_X1 U64 ( .A(op_2[4]), .ZN(n20) );
  INV_X1 U65 ( .A(op_1[4]), .ZN(n13) );
  INV_X1 U66 ( .A(op_1[5]), .ZN(n14) );
  INV_X1 U67 ( .A(op_2[5]), .ZN(n21) );
  XOR2_X1 U72 ( .A(n6), .B(sub_add_130_b0_carry[5]), .Z(N26) );
  AND2_X1 U73 ( .A1(sub_add_130_b0_carry[4]), .A2(n5), .ZN(
        sub_add_130_b0_carry[5]) );
  XOR2_X1 U74 ( .A(n5), .B(sub_add_130_b0_carry[4]), .Z(N25) );
  AND2_X1 U75 ( .A1(sub_add_130_b0_carry[3]), .A2(n4), .ZN(
        sub_add_130_b0_carry[4]) );
  XOR2_X1 U76 ( .A(n4), .B(sub_add_130_b0_carry[3]), .Z(N24) );
  AND2_X1 U77 ( .A1(sub_add_130_b0_carry[2]), .A2(n3), .ZN(
        sub_add_130_b0_carry[3]) );
  XOR2_X1 U78 ( .A(n3), .B(sub_add_130_b0_carry[2]), .Z(N23) );
  XOR2_X1 U84 ( .A(n14), .B(sub_add_125_b0_carry[5]), .Z(N10) );
  AND2_X1 U85 ( .A1(sub_add_125_b0_carry[4]), .A2(n13), .ZN(
        sub_add_125_b0_carry[5]) );
  XOR2_X1 U86 ( .A(n13), .B(sub_add_125_b0_carry[4]), .Z(N9) );
  XOR2_X1 U88 ( .A(n21), .B(sub_add_126_b0_carry[5]), .Z(N18) );
  AND2_X1 U89 ( .A1(sub_add_126_b0_carry[4]), .A2(n20), .ZN(
        sub_add_126_b0_carry[5]) );
  XOR2_X1 U90 ( .A(n20), .B(sub_add_126_b0_carry[4]), .Z(N17) );
  AND2_X1 U91 ( .A1(sub_add_126_b0_carry[3]), .A2(n19), .ZN(
        sub_add_126_b0_carry[4]) );
  XOR2_X1 U92 ( .A(n19), .B(sub_add_126_b0_carry[3]), .Z(N16) );
  AND2_X1 U93 ( .A1(sub_add_126_b0_carry[2]), .A2(n18), .ZN(
        sub_add_126_b0_carry[3]) );
  XOR2_X1 U94 ( .A(n18), .B(sub_add_126_b0_carry[2]), .Z(N15) );
  AND2_X1 U97 ( .A1(sub_add_125_b0_carry[3]), .A2(n12), .ZN(
        sub_add_125_b0_carry[4]) );
  XOR2_X1 U98 ( .A(n12), .B(sub_add_125_b0_carry[3]), .Z(N8) );
  AND2_X1 U99 ( .A1(sub_add_125_b0_carry[2]), .A2(n11), .ZN(
        sub_add_125_b0_carry[3]) );
  XOR2_X1 U100 ( .A(n11), .B(sub_add_125_b0_carry[2]), .Z(N7) );
  XOR2_X1 U4 ( .A(mul_temp[8]), .B(N21), .Z(N22) );
  INV_X1 U7 ( .A(n73), .ZN(flag) );
  XOR2_X1 U10 ( .A(n24), .B(op_2[7]), .Z(n73) );
  XOR2_X1 U12 ( .A(mul_temp[13]), .B(n74), .Z(N27) );
  NAND2_X1 U13 ( .A1(n6), .A2(sub_add_130_b0_carry[5]), .ZN(n74) );
  INV_X1 U15 ( .A(n75), .ZN(n32) );
  OAI21_X1 U16 ( .B1(n23), .B2(flag), .A(N21), .ZN(n75) );
  NOR2_X1 U39 ( .A1(N21), .A2(mul_temp[8]), .ZN(sub_add_130_b0_carry[2]) );
  XOR2_X1 U40 ( .A(op_1[6]), .B(n76), .Z(N11) );
  NAND2_X1 U44 ( .A1(n14), .A2(sub_add_125_b0_carry[5]), .ZN(n76) );
  XOR2_X1 U50 ( .A(op_2[6]), .B(n77), .Z(N19) );
  NAND2_X1 U51 ( .A1(n21), .A2(sub_add_126_b0_carry[5]), .ZN(n77) );
  INV_X1 U56 ( .A(op_2[7]), .ZN(n25) );
  INV_X1 U57 ( .A(op_1[7]), .ZN(n24) );
  XOR2_X1 U58 ( .A(op_1[1]), .B(op_1[0]), .Z(N6) );
  XOR2_X1 U59 ( .A(op_2[1]), .B(op_2[0]), .Z(N14) );
  NOR2_X1 U68 ( .A1(op_1[0]), .A2(op_1[1]), .ZN(sub_add_125_b0_carry[2]) );
  NOR2_X1 U69 ( .A1(op_2[0]), .A2(op_2[1]), .ZN(sub_add_126_b0_carry[2]) );
endmodule


module MAC_1 ( clk, rst_n, mac_enable, h_0, h_1, h_2, h_3, data_0, data_1, 
        data_2, data_3, data_out, mac_done );
  input [0:0] mac_enable;
  input [7:0] h_0;
  input [7:0] h_1;
  input [7:0] h_2;
  input [7:0] h_3;
  input [7:0] data_0;
  input [7:0] data_1;
  input [7:0] data_2;
  input [7:0] data_3;
  output [9:0] data_out;
  output [0:0] mac_done;
  input clk, rst_n;
  wire   N20, N22, N60, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228;
  wire   [2:0] cnt;
  wire   [9:0] ac_sum_new;
  wire   [7:0] op_1;
  wire   [7:0] op_2;
  wire   [9:0] ac_sum_old;

  DFFR_X1 cnt_reg_0_ ( .D(N20), .CK(clk), .RN(rst_n), .Q(cnt[0]), .QN(n226) );
  SDFFR_X1 cnt_reg_1_ ( .D(n162), .SI(1'b0), .SE(n161), .CK(clk), .RN(rst_n), 
        .Q(cnt[1]), .QN(n227) );
  DFFR_X1 cnt_reg_2_ ( .D(N22), .CK(clk), .RN(rst_n), .Q(cnt[2]), .QN(n228) );
  DFFR_X1 op_1_reg_7_ ( .D(n125), .CK(clk), .RN(rst_n), .Q(op_1[7]) );
  DFFR_X1 op_1_reg_6_ ( .D(n126), .CK(clk), .RN(rst_n), .Q(op_1[6]) );
  DFFR_X1 op_1_reg_5_ ( .D(n127), .CK(clk), .RN(rst_n), .Q(op_1[5]) );
  DFFR_X1 op_1_reg_4_ ( .D(n128), .CK(clk), .RN(rst_n), .Q(op_1[4]) );
  DFFR_X1 op_1_reg_3_ ( .D(n129), .CK(clk), .RN(rst_n), .Q(op_1[3]) );
  DFFR_X1 op_1_reg_2_ ( .D(n130), .CK(clk), .RN(rst_n), .Q(op_1[2]) );
  DFFR_X1 op_1_reg_1_ ( .D(n131), .CK(clk), .RN(rst_n), .Q(op_1[1]) );
  DFFR_X1 op_1_reg_0_ ( .D(n132), .CK(clk), .RN(rst_n), .Q(op_1[0]) );
  DFFR_X1 op_2_reg_7_ ( .D(n133), .CK(clk), .RN(rst_n), .Q(op_2[7]) );
  DFFR_X1 op_2_reg_6_ ( .D(n134), .CK(clk), .RN(rst_n), .Q(op_2[6]) );
  DFFR_X1 op_2_reg_5_ ( .D(n135), .CK(clk), .RN(rst_n), .Q(op_2[5]) );
  DFFR_X1 op_2_reg_4_ ( .D(n136), .CK(clk), .RN(rst_n), .Q(op_2[4]) );
  DFFR_X1 op_2_reg_3_ ( .D(n137), .CK(clk), .RN(rst_n), .Q(op_2[3]) );
  DFFR_X1 op_2_reg_2_ ( .D(n138), .CK(clk), .RN(rst_n), .Q(op_2[2]) );
  DFFR_X1 op_2_reg_1_ ( .D(n139), .CK(clk), .RN(rst_n), .Q(op_2[1]) );
  DFFR_X1 op_2_reg_0_ ( .D(n140), .CK(clk), .RN(rst_n), .Q(op_2[0]) );
  DFFR_X1 ac_sum_old_reg_0_ ( .D(n141), .CK(clk), .RN(rst_n), .Q(ac_sum_old[0]) );
  DFFR_X1 ac_sum_old_reg_1_ ( .D(n142), .CK(clk), .RN(rst_n), .Q(ac_sum_old[1]) );
  DFFR_X1 ac_sum_old_reg_2_ ( .D(n143), .CK(clk), .RN(rst_n), .Q(ac_sum_old[2]) );
  DFFR_X1 ac_sum_old_reg_3_ ( .D(n144), .CK(clk), .RN(rst_n), .Q(ac_sum_old[3]) );
  DFFR_X1 ac_sum_old_reg_4_ ( .D(n145), .CK(clk), .RN(rst_n), .Q(ac_sum_old[4]) );
  DFFR_X1 ac_sum_old_reg_5_ ( .D(n146), .CK(clk), .RN(rst_n), .Q(ac_sum_old[5]) );
  DFFR_X1 ac_sum_old_reg_6_ ( .D(n147), .CK(clk), .RN(rst_n), .Q(ac_sum_old[6]) );
  DFFR_X1 ac_sum_old_reg_7_ ( .D(n148), .CK(clk), .RN(rst_n), .Q(ac_sum_old[7]) );
  DFFR_X1 ac_sum_old_reg_8_ ( .D(n149), .CK(clk), .RN(rst_n), .Q(ac_sum_old[8]) );
  DFFR_X1 ac_sum_old_reg_9_ ( .D(n150), .CK(clk), .RN(rst_n), .Q(ac_sum_old[9]) );
  DFFR_X1 mac_done_reg_0_ ( .D(N60), .CK(clk), .RN(rst_n), .Q(mac_done[0]) );
  DFF_X1 data_out_reg_9_ ( .D(n151), .CK(clk), .Q(data_out[9]) );
  DFF_X1 data_out_reg_8_ ( .D(n152), .CK(clk), .Q(data_out[8]) );
  DFF_X1 data_out_reg_7_ ( .D(n153), .CK(clk), .Q(data_out[7]) );
  DFF_X1 data_out_reg_6_ ( .D(n154), .CK(clk), .Q(data_out[6]) );
  DFF_X1 data_out_reg_5_ ( .D(n155), .CK(clk), .Q(data_out[5]) );
  DFF_X1 data_out_reg_4_ ( .D(n156), .CK(clk), .Q(data_out[4]) );
  DFF_X1 data_out_reg_3_ ( .D(n157), .CK(clk), .Q(data_out[3]) );
  DFF_X1 data_out_reg_2_ ( .D(n158), .CK(clk), .Q(data_out[2]) );
  DFF_X1 data_out_reg_1_ ( .D(n159), .CK(clk), .Q(data_out[1]) );
  DFF_X1 data_out_reg_0_ ( .D(n160), .CK(clk), .Q(data_out[0]) );
  NOR3_X2 U95 ( .A1(n198), .A2(n199), .A3(n123), .ZN(n212) );
  NAND3_X1 U120 ( .A1(n226), .A2(n227), .A3(n165), .ZN(n167) );
  NAND3_X1 U121 ( .A1(cnt[0]), .A2(n165), .A3(cnt[1]), .ZN(n166) );
  XOR2_X1 U122 ( .A(n226), .B(cnt[1]), .Z(n161) );
  mac_operate_1 mac_operate_inst ( .op_1(op_1), .op_2(op_2), .ac_sum_old(
        ac_sum_old), .ac_sum_new(ac_sum_new) );
  INV_X1 U4 ( .A(ac_sum_new[0]), .ZN(n19) );
  NAND2_X1 U5 ( .A1(n213), .A2(rst_n), .ZN(n223) );
  NAND2_X1 U10 ( .A1(N60), .A2(n121), .ZN(n225) );
  INV_X1 U11 ( .A(n223), .ZN(n121) );
  INV_X1 U12 ( .A(ac_sum_new[8]), .ZN(n11) );
  INV_X1 U13 ( .A(ac_sum_new[7]), .ZN(n12) );
  INV_X1 U14 ( .A(ac_sum_new[6]), .ZN(n13) );
  INV_X1 U15 ( .A(ac_sum_new[5]), .ZN(n14) );
  INV_X1 U16 ( .A(ac_sum_new[4]), .ZN(n15) );
  INV_X1 U17 ( .A(ac_sum_new[3]), .ZN(n16) );
  INV_X1 U18 ( .A(ac_sum_new[2]), .ZN(n17) );
  INV_X1 U19 ( .A(ac_sum_new[1]), .ZN(n18) );
  INV_X1 U20 ( .A(n166), .ZN(n123) );
  INV_X1 U22 ( .A(n167), .ZN(n122) );
  NOR2_X1 U23 ( .A1(n124), .A2(n164), .ZN(n162) );
  OAI21_X1 U25 ( .B1(n225), .B2(n19), .A(n224), .ZN(n160) );
  NAND2_X1 U26 ( .A1(data_out[0]), .A2(n223), .ZN(n224) );
  OAI21_X1 U27 ( .B1(n225), .B2(n18), .A(n222), .ZN(n159) );
  NAND2_X1 U28 ( .A1(data_out[1]), .A2(n223), .ZN(n222) );
  OAI21_X1 U29 ( .B1(n225), .B2(n17), .A(n221), .ZN(n158) );
  NAND2_X1 U30 ( .A1(data_out[2]), .A2(n223), .ZN(n221) );
  OAI21_X1 U31 ( .B1(n225), .B2(n16), .A(n220), .ZN(n157) );
  NAND2_X1 U32 ( .A1(data_out[3]), .A2(n223), .ZN(n220) );
  OAI21_X1 U33 ( .B1(n225), .B2(n15), .A(n219), .ZN(n156) );
  NAND2_X1 U34 ( .A1(data_out[4]), .A2(n223), .ZN(n219) );
  OAI21_X1 U35 ( .B1(n225), .B2(n14), .A(n218), .ZN(n155) );
  NAND2_X1 U36 ( .A1(data_out[5]), .A2(n223), .ZN(n218) );
  OAI21_X1 U37 ( .B1(n225), .B2(n13), .A(n217), .ZN(n154) );
  NAND2_X1 U38 ( .A1(data_out[6]), .A2(n223), .ZN(n217) );
  OAI21_X1 U39 ( .B1(n225), .B2(n12), .A(n216), .ZN(n153) );
  NAND2_X1 U40 ( .A1(data_out[7]), .A2(n223), .ZN(n216) );
  OAI21_X1 U41 ( .B1(n225), .B2(n11), .A(n215), .ZN(n152) );
  NAND2_X1 U42 ( .A1(data_out[8]), .A2(n223), .ZN(n215) );
  OAI21_X1 U43 ( .B1(n225), .B2(n10), .A(n214), .ZN(n151) );
  NAND2_X1 U44 ( .A1(data_out[9]), .A2(n223), .ZN(n214) );
  OAI21_X1 U45 ( .B1(n212), .B2(n10), .A(n211), .ZN(n150) );
  NAND2_X1 U46 ( .A1(ac_sum_old[9]), .A2(n213), .ZN(n211) );
  OAI21_X1 U47 ( .B1(n212), .B2(n11), .A(n210), .ZN(n149) );
  NAND2_X1 U48 ( .A1(ac_sum_old[8]), .A2(n213), .ZN(n210) );
  OAI21_X1 U49 ( .B1(n212), .B2(n12), .A(n209), .ZN(n148) );
  NAND2_X1 U50 ( .A1(ac_sum_old[7]), .A2(n213), .ZN(n209) );
  OAI21_X1 U51 ( .B1(n212), .B2(n13), .A(n208), .ZN(n147) );
  NAND2_X1 U52 ( .A1(ac_sum_old[6]), .A2(n213), .ZN(n208) );
  INV_X1 U53 ( .A(ac_sum_new[9]), .ZN(n10) );
  OAI21_X1 U54 ( .B1(n212), .B2(n14), .A(n207), .ZN(n146) );
  NAND2_X1 U55 ( .A1(ac_sum_old[5]), .A2(n213), .ZN(n207) );
  OAI21_X1 U56 ( .B1(n212), .B2(n15), .A(n206), .ZN(n145) );
  NAND2_X1 U57 ( .A1(ac_sum_old[4]), .A2(n213), .ZN(n206) );
  OAI21_X1 U58 ( .B1(n212), .B2(n16), .A(n205), .ZN(n144) );
  NAND2_X1 U59 ( .A1(ac_sum_old[3]), .A2(n213), .ZN(n205) );
  OAI21_X1 U60 ( .B1(n212), .B2(n17), .A(n204), .ZN(n143) );
  NAND2_X1 U61 ( .A1(ac_sum_old[2]), .A2(n213), .ZN(n204) );
  OAI21_X1 U62 ( .B1(n212), .B2(n18), .A(n203), .ZN(n142) );
  NAND2_X1 U63 ( .A1(ac_sum_old[1]), .A2(n213), .ZN(n203) );
  OAI21_X1 U64 ( .B1(n212), .B2(n19), .A(n202), .ZN(n141) );
  NAND2_X1 U65 ( .A1(ac_sum_old[0]), .A2(n213), .ZN(n202) );
  AND3_X1 U66 ( .A1(n165), .A2(n226), .A3(cnt[1]), .ZN(n198) );
  AND3_X1 U67 ( .A1(n165), .A2(n227), .A3(cnt[0]), .ZN(n199) );
  NOR2_X1 U68 ( .A1(n124), .A2(cnt[2]), .ZN(n165) );
  NAND2_X1 U69 ( .A1(n185), .A2(n184), .ZN(n133) );
  AOI222_X1 U70 ( .A1(data_1[7]), .A2(n199), .B1(data_3[7]), .B2(n123), .C1(
        data_2[7]), .C2(n198), .ZN(n184) );
  AOI22_X1 U71 ( .A1(data_0[7]), .A2(n122), .B1(op_2[7]), .B2(n213), .ZN(n185)
         );
  NAND2_X1 U72 ( .A1(n169), .A2(n168), .ZN(n125) );
  AOI222_X1 U73 ( .A1(h_1[7]), .A2(n199), .B1(h_3[7]), .B2(n123), .C1(h_2[7]), 
        .C2(n198), .ZN(n168) );
  AOI22_X1 U74 ( .A1(h_0[7]), .A2(n122), .B1(op_1[7]), .B2(n213), .ZN(n169) );
  NAND2_X1 U75 ( .A1(n201), .A2(n200), .ZN(n140) );
  AOI222_X1 U76 ( .A1(data_1[0]), .A2(n199), .B1(data_3[0]), .B2(n123), .C1(
        data_2[0]), .C2(n198), .ZN(n200) );
  AOI22_X1 U77 ( .A1(data_0[0]), .A2(n122), .B1(op_2[0]), .B2(n213), .ZN(n201)
         );
  NAND2_X1 U78 ( .A1(n197), .A2(n196), .ZN(n139) );
  AOI222_X1 U79 ( .A1(data_1[1]), .A2(n199), .B1(data_3[1]), .B2(n123), .C1(
        data_2[1]), .C2(n198), .ZN(n196) );
  AOI22_X1 U80 ( .A1(data_0[1]), .A2(n122), .B1(op_2[1]), .B2(n213), .ZN(n197)
         );
  NAND2_X1 U81 ( .A1(n195), .A2(n194), .ZN(n138) );
  AOI222_X1 U82 ( .A1(data_1[2]), .A2(n199), .B1(data_3[2]), .B2(n123), .C1(
        data_2[2]), .C2(n198), .ZN(n194) );
  AOI22_X1 U83 ( .A1(data_0[2]), .A2(n122), .B1(op_2[2]), .B2(n213), .ZN(n195)
         );
  NAND2_X1 U84 ( .A1(n193), .A2(n192), .ZN(n137) );
  AOI222_X1 U85 ( .A1(data_1[3]), .A2(n199), .B1(data_3[3]), .B2(n123), .C1(
        data_2[3]), .C2(n198), .ZN(n192) );
  AOI22_X1 U86 ( .A1(data_0[3]), .A2(n122), .B1(op_2[3]), .B2(n213), .ZN(n193)
         );
  NAND2_X1 U87 ( .A1(n191), .A2(n190), .ZN(n136) );
  AOI222_X1 U88 ( .A1(data_1[4]), .A2(n199), .B1(data_3[4]), .B2(n123), .C1(
        data_2[4]), .C2(n198), .ZN(n190) );
  AOI22_X1 U89 ( .A1(data_0[4]), .A2(n122), .B1(op_2[4]), .B2(n213), .ZN(n191)
         );
  NAND2_X1 U90 ( .A1(n189), .A2(n188), .ZN(n135) );
  AOI222_X1 U91 ( .A1(data_1[5]), .A2(n199), .B1(data_3[5]), .B2(n123), .C1(
        data_2[5]), .C2(n198), .ZN(n188) );
  AOI22_X1 U92 ( .A1(data_0[5]), .A2(n122), .B1(op_2[5]), .B2(n213), .ZN(n189)
         );
  NAND2_X1 U93 ( .A1(n187), .A2(n186), .ZN(n134) );
  AOI222_X1 U94 ( .A1(data_1[6]), .A2(n199), .B1(data_3[6]), .B2(n123), .C1(
        data_2[6]), .C2(n198), .ZN(n186) );
  AOI22_X1 U96 ( .A1(data_0[6]), .A2(n122), .B1(op_2[6]), .B2(n213), .ZN(n187)
         );
  NAND2_X1 U97 ( .A1(n183), .A2(n182), .ZN(n132) );
  AOI222_X1 U98 ( .A1(h_1[0]), .A2(n199), .B1(h_3[0]), .B2(n123), .C1(h_2[0]), 
        .C2(n198), .ZN(n182) );
  AOI22_X1 U99 ( .A1(h_0[0]), .A2(n122), .B1(op_1[0]), .B2(n213), .ZN(n183) );
  NAND2_X1 U100 ( .A1(n181), .A2(n180), .ZN(n131) );
  AOI222_X1 U101 ( .A1(h_1[1]), .A2(n199), .B1(h_3[1]), .B2(n123), .C1(h_2[1]), 
        .C2(n198), .ZN(n180) );
  AOI22_X1 U102 ( .A1(h_0[1]), .A2(n122), .B1(op_1[1]), .B2(n213), .ZN(n181)
         );
  NAND2_X1 U103 ( .A1(n179), .A2(n178), .ZN(n130) );
  AOI222_X1 U104 ( .A1(h_1[2]), .A2(n199), .B1(h_3[2]), .B2(n123), .C1(h_2[2]), 
        .C2(n198), .ZN(n178) );
  AOI22_X1 U105 ( .A1(h_0[2]), .A2(n122), .B1(op_1[2]), .B2(n213), .ZN(n179)
         );
  NAND2_X1 U106 ( .A1(n177), .A2(n176), .ZN(n129) );
  AOI222_X1 U107 ( .A1(h_1[3]), .A2(n199), .B1(h_3[3]), .B2(n123), .C1(h_2[3]), 
        .C2(n198), .ZN(n176) );
  AOI22_X1 U108 ( .A1(h_0[3]), .A2(n122), .B1(op_1[3]), .B2(n213), .ZN(n177)
         );
  NAND2_X1 U109 ( .A1(n175), .A2(n174), .ZN(n128) );
  AOI222_X1 U110 ( .A1(h_1[4]), .A2(n199), .B1(h_3[4]), .B2(n123), .C1(h_2[4]), 
        .C2(n198), .ZN(n174) );
  AOI22_X1 U111 ( .A1(h_0[4]), .A2(n122), .B1(op_1[4]), .B2(n213), .ZN(n175)
         );
  NAND2_X1 U112 ( .A1(n173), .A2(n172), .ZN(n127) );
  AOI222_X1 U113 ( .A1(h_1[5]), .A2(n199), .B1(h_3[5]), .B2(n123), .C1(h_2[5]), 
        .C2(n198), .ZN(n172) );
  AOI22_X1 U114 ( .A1(h_0[5]), .A2(n122), .B1(op_1[5]), .B2(n213), .ZN(n173)
         );
  NAND2_X1 U115 ( .A1(n171), .A2(n170), .ZN(n126) );
  AOI222_X1 U116 ( .A1(h_1[6]), .A2(n199), .B1(h_3[6]), .B2(n123), .C1(h_2[6]), 
        .C2(n198), .ZN(n170) );
  AOI22_X1 U117 ( .A1(h_0[6]), .A2(n122), .B1(op_1[6]), .B2(n213), .ZN(n171)
         );
  NOR3_X1 U118 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n228), .ZN(n164) );
  OAI21_X1 U119 ( .B1(n163), .B2(n228), .A(n166), .ZN(N22) );
  AOI21_X1 U123 ( .B1(n162), .B2(n227), .A(N20), .ZN(n163) );
  AND2_X1 U124 ( .A1(n162), .A2(n226), .ZN(N20) );
  AND2_X1 U125 ( .A1(mac_enable[0]), .A2(n164), .ZN(N60) );
  INV_X1 U126 ( .A(mac_enable[0]), .ZN(n124) );
  AND2_X2 U6 ( .A1(n167), .A2(n212), .ZN(n213) );
endmodule


module CONFIG ( clk, rst_n, data_in, config_data_enable, config_enable, h_0, 
        h_1, h_2, h_3, h_4, h_5, h_6, h_7, h_8, h_9, h_10, h_11, h_12, h_13, 
        h_14, h_15, tap_num );
  input [7:0] data_in;
  output [7:0] h_0;
  output [7:0] h_1;
  output [7:0] h_2;
  output [7:0] h_3;
  output [7:0] h_4;
  output [7:0] h_5;
  output [7:0] h_6;
  output [7:0] h_7;
  output [7:0] h_8;
  output [7:0] h_9;
  output [7:0] h_10;
  output [7:0] h_11;
  output [7:0] h_12;
  output [7:0] h_13;
  output [7:0] h_14;
  output [7:0] h_15;
  output [3:0] tap_num;
  input clk, rst_n, config_data_enable, config_enable;
  wire   n134, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n19, n23, n26, n27,
         n28, n29, n30, n31, n37, n40, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318;

  DFFR_X1 h_0_reg_7_ ( .D(n54), .CK(clk), .RN(rst_n), .Q(h_0[7]) );
  DFFR_X1 h_1_reg_7_ ( .D(n55), .CK(clk), .RN(rst_n), .Q(h_1[7]) );
  DFFR_X1 h_2_reg_7_ ( .D(n56), .CK(clk), .RN(rst_n), .Q(h_2[7]) );
  DFFR_X1 h_3_reg_7_ ( .D(n57), .CK(clk), .RN(rst_n), .Q(h_3[7]) );
  DFFR_X1 h_4_reg_7_ ( .D(n58), .CK(clk), .RN(rst_n), .Q(h_4[7]) );
  DFFR_X1 h_5_reg_7_ ( .D(n59), .CK(clk), .RN(rst_n), .Q(h_5[7]) );
  DFFR_X1 h_6_reg_7_ ( .D(n60), .CK(clk), .RN(rst_n), .Q(h_6[7]) );
  DFFR_X1 h_7_reg_7_ ( .D(n61), .CK(clk), .RN(rst_n), .Q(h_7[7]) );
  DFFR_X1 h_8_reg_7_ ( .D(n62), .CK(clk), .RN(rst_n), .Q(h_8[7]) );
  DFFR_X1 h_9_reg_7_ ( .D(n63), .CK(clk), .RN(rst_n), .Q(h_9[7]) );
  DFFR_X1 h_10_reg_7_ ( .D(n64), .CK(clk), .RN(rst_n), .Q(h_10[7]) );
  DFFR_X1 h_11_reg_7_ ( .D(n65), .CK(clk), .RN(rst_n), .Q(h_11[7]) );
  DFFR_X1 h_12_reg_7_ ( .D(n66), .CK(clk), .RN(rst_n), .Q(h_12[7]) );
  DFFR_X1 h_13_reg_7_ ( .D(n67), .CK(clk), .RN(rst_n), .Q(h_13[7]) );
  DFFR_X1 h_14_reg_7_ ( .D(n68), .CK(clk), .RN(rst_n), .Q(h_14[7]) );
  DFFR_X1 h_15_reg_7_ ( .D(n69), .CK(clk), .RN(rst_n), .Q(h_15[7]) );
  DFFS_X1 h_0_reg_6_ ( .D(n70), .CK(clk), .SN(rst_n), .Q(h_0[6]) );
  DFFS_X1 h_1_reg_6_ ( .D(n71), .CK(clk), .SN(rst_n), .Q(h_1[6]) );
  DFFS_X1 h_2_reg_6_ ( .D(n72), .CK(clk), .SN(rst_n), .Q(h_2[6]) );
  DFFS_X1 h_3_reg_6_ ( .D(n73), .CK(clk), .SN(rst_n), .Q(h_3[6]) );
  DFFS_X1 h_4_reg_6_ ( .D(n74), .CK(clk), .SN(rst_n), .Q(h_4[6]) );
  DFFS_X1 h_5_reg_6_ ( .D(n75), .CK(clk), .SN(rst_n), .Q(h_5[6]) );
  DFFS_X1 h_6_reg_6_ ( .D(n76), .CK(clk), .SN(rst_n), .Q(h_6[6]) );
  DFFS_X1 h_7_reg_6_ ( .D(n77), .CK(clk), .SN(rst_n), .Q(h_7[6]) );
  DFFS_X1 h_8_reg_6_ ( .D(n78), .CK(clk), .SN(rst_n), .Q(h_8[6]) );
  DFFS_X1 h_9_reg_6_ ( .D(n79), .CK(clk), .SN(rst_n), .Q(h_9[6]) );
  DFFS_X1 h_10_reg_6_ ( .D(n80), .CK(clk), .SN(rst_n), .Q(h_10[6]) );
  DFFS_X1 h_11_reg_6_ ( .D(n81), .CK(clk), .SN(rst_n), .Q(h_11[6]) );
  DFFS_X1 h_12_reg_6_ ( .D(n82), .CK(clk), .SN(rst_n), .Q(h_12[6]) );
  DFFS_X1 h_13_reg_6_ ( .D(n83), .CK(clk), .SN(rst_n), .Q(h_13[6]) );
  DFFS_X1 h_14_reg_6_ ( .D(n84), .CK(clk), .SN(rst_n), .Q(h_14[6]) );
  DFFS_X1 h_15_reg_6_ ( .D(n85), .CK(clk), .SN(rst_n), .Q(h_15[6]) );
  DFFR_X1 h_0_reg_5_ ( .D(n86), .CK(clk), .RN(rst_n), .Q(h_0[5]) );
  DFFR_X1 h_1_reg_5_ ( .D(n87), .CK(clk), .RN(rst_n), .Q(h_1[5]) );
  DFFR_X1 h_2_reg_5_ ( .D(n88), .CK(clk), .RN(rst_n), .Q(h_2[5]) );
  DFFR_X1 h_3_reg_5_ ( .D(n89), .CK(clk), .RN(rst_n), .Q(h_3[5]) );
  DFFR_X1 h_4_reg_5_ ( .D(n90), .CK(clk), .RN(rst_n), .Q(h_4[5]) );
  DFFR_X1 h_5_reg_5_ ( .D(n91), .CK(clk), .RN(rst_n), .Q(h_5[5]) );
  DFFR_X1 h_6_reg_5_ ( .D(n92), .CK(clk), .RN(rst_n), .Q(h_6[5]) );
  DFFR_X1 h_7_reg_5_ ( .D(n93), .CK(clk), .RN(rst_n), .Q(h_7[5]) );
  DFFR_X1 h_8_reg_5_ ( .D(n94), .CK(clk), .RN(rst_n), .Q(h_8[5]) );
  DFFR_X1 h_9_reg_5_ ( .D(n95), .CK(clk), .RN(rst_n), .Q(h_9[5]) );
  DFFR_X1 h_10_reg_5_ ( .D(n96), .CK(clk), .RN(rst_n), .Q(h_10[5]) );
  DFFR_X1 h_11_reg_5_ ( .D(n97), .CK(clk), .RN(rst_n), .Q(h_11[5]) );
  DFFR_X1 h_12_reg_5_ ( .D(n98), .CK(clk), .RN(rst_n), .Q(h_12[5]) );
  DFFR_X1 h_13_reg_5_ ( .D(n99), .CK(clk), .RN(rst_n), .Q(h_13[5]) );
  DFFR_X1 h_14_reg_5_ ( .D(n100), .CK(clk), .RN(rst_n), .Q(h_14[5]) );
  DFFR_X1 h_15_reg_5_ ( .D(n101), .CK(clk), .RN(rst_n), .Q(h_15[5]) );
  DFFR_X1 h_0_reg_4_ ( .D(n102), .CK(clk), .RN(rst_n), .Q(h_0[4]) );
  DFFR_X1 h_1_reg_4_ ( .D(n103), .CK(clk), .RN(rst_n), .Q(h_1[4]) );
  DFFR_X1 h_2_reg_4_ ( .D(n104), .CK(clk), .RN(rst_n), .Q(h_2[4]) );
  DFFR_X1 h_3_reg_4_ ( .D(n105), .CK(clk), .RN(rst_n), .Q(h_3[4]) );
  DFFR_X1 h_4_reg_4_ ( .D(n106), .CK(clk), .RN(rst_n), .Q(h_4[4]) );
  DFFR_X1 h_5_reg_4_ ( .D(n107), .CK(clk), .RN(rst_n), .Q(h_5[4]) );
  DFFR_X1 h_6_reg_4_ ( .D(n108), .CK(clk), .RN(rst_n), .Q(h_6[4]) );
  DFFR_X1 h_7_reg_4_ ( .D(n109), .CK(clk), .RN(rst_n), .Q(h_7[4]) );
  DFFR_X1 h_8_reg_4_ ( .D(n110), .CK(clk), .RN(rst_n), .Q(h_8[4]) );
  DFFR_X1 h_9_reg_4_ ( .D(n111), .CK(clk), .RN(rst_n), .Q(h_9[4]) );
  DFFR_X1 h_10_reg_4_ ( .D(n112), .CK(clk), .RN(rst_n), .Q(h_10[4]) );
  DFFR_X1 h_11_reg_4_ ( .D(n113), .CK(clk), .RN(rst_n), .Q(h_11[4]) );
  DFFR_X1 h_12_reg_4_ ( .D(n114), .CK(clk), .RN(rst_n), .Q(h_12[4]) );
  DFFR_X1 h_13_reg_4_ ( .D(n115), .CK(clk), .RN(rst_n), .Q(h_13[4]) );
  DFFR_X1 h_14_reg_4_ ( .D(n116), .CK(clk), .RN(rst_n), .Q(h_14[4]) );
  DFFR_X1 h_15_reg_4_ ( .D(n117), .CK(clk), .RN(rst_n), .Q(h_15[4]) );
  DFFR_X1 h_0_reg_3_ ( .D(n118), .CK(clk), .RN(rst_n), .Q(h_0[3]) );
  DFFR_X1 h_1_reg_3_ ( .D(n119), .CK(clk), .RN(rst_n), .Q(h_1[3]) );
  DFFR_X1 h_2_reg_3_ ( .D(n120), .CK(clk), .RN(rst_n), .Q(h_2[3]) );
  DFFR_X1 h_3_reg_3_ ( .D(n121), .CK(clk), .RN(rst_n), .Q(h_3[3]) );
  DFFR_X1 h_4_reg_3_ ( .D(n122), .CK(clk), .RN(rst_n), .Q(h_4[3]) );
  DFFR_X1 h_5_reg_3_ ( .D(n123), .CK(clk), .RN(rst_n), .Q(h_5[3]) );
  DFFR_X1 h_6_reg_3_ ( .D(n124), .CK(clk), .RN(rst_n), .Q(h_6[3]) );
  DFFR_X1 h_7_reg_3_ ( .D(n125), .CK(clk), .RN(rst_n), .Q(h_7[3]) );
  DFFR_X1 h_8_reg_3_ ( .D(n126), .CK(clk), .RN(rst_n), .Q(h_8[3]) );
  DFFR_X1 h_9_reg_3_ ( .D(n127), .CK(clk), .RN(rst_n), .Q(h_9[3]) );
  DFFR_X1 h_10_reg_3_ ( .D(n128), .CK(clk), .RN(rst_n), .Q(h_10[3]) );
  DFFR_X1 h_11_reg_3_ ( .D(n129), .CK(clk), .RN(rst_n), .Q(h_11[3]) );
  DFFR_X1 h_12_reg_3_ ( .D(n130), .CK(clk), .RN(rst_n), .Q(h_12[3]) );
  DFFR_X1 h_13_reg_3_ ( .D(n131), .CK(clk), .RN(rst_n), .Q(h_13[3]) );
  DFFR_X1 h_14_reg_3_ ( .D(n132), .CK(clk), .RN(rst_n), .Q(h_14[3]) );
  DFFR_X1 h_15_reg_3_ ( .D(n133), .CK(clk), .RN(rst_n), .Q(h_15[3]) );
  DFFS_X1 tap_num_reg_3_ ( .D(n267), .CK(clk), .SN(rst_n), .Q(tap_num[3]) );
  DFFR_X1 h_0_reg_2_ ( .D(n268), .CK(clk), .RN(rst_n), .Q(h_0[2]) );
  DFFR_X1 h_1_reg_2_ ( .D(n269), .CK(clk), .RN(rst_n), .Q(h_1[2]) );
  DFFR_X1 h_2_reg_2_ ( .D(n270), .CK(clk), .RN(rst_n), .Q(h_2[2]) );
  DFFR_X1 h_3_reg_2_ ( .D(n271), .CK(clk), .RN(rst_n), .Q(h_3[2]) );
  DFFR_X1 h_4_reg_2_ ( .D(n272), .CK(clk), .RN(rst_n), .Q(h_4[2]) );
  DFFR_X1 h_5_reg_2_ ( .D(n273), .CK(clk), .RN(rst_n), .Q(h_5[2]) );
  DFFR_X1 h_6_reg_2_ ( .D(n274), .CK(clk), .RN(rst_n), .Q(h_6[2]) );
  DFFR_X1 h_7_reg_2_ ( .D(n275), .CK(clk), .RN(rst_n), .Q(h_7[2]) );
  DFFR_X1 h_8_reg_2_ ( .D(n276), .CK(clk), .RN(rst_n), .Q(h_8[2]) );
  DFFR_X1 h_9_reg_2_ ( .D(n277), .CK(clk), .RN(rst_n), .Q(h_9[2]) );
  DFFR_X1 h_10_reg_2_ ( .D(n278), .CK(clk), .RN(rst_n), .Q(h_10[2]) );
  DFFR_X1 h_11_reg_2_ ( .D(n279), .CK(clk), .RN(rst_n), .Q(h_11[2]) );
  DFFR_X1 h_12_reg_2_ ( .D(n280), .CK(clk), .RN(rst_n), .Q(h_12[2]) );
  DFFR_X1 h_13_reg_2_ ( .D(n281), .CK(clk), .RN(rst_n), .Q(h_13[2]) );
  DFFR_X1 h_14_reg_2_ ( .D(n282), .CK(clk), .RN(rst_n), .Q(h_14[2]) );
  DFFR_X1 h_15_reg_2_ ( .D(n283), .CK(clk), .RN(rst_n), .Q(h_15[2]) );
  DFFS_X1 tap_num_reg_2_ ( .D(n284), .CK(clk), .SN(rst_n), .Q(tap_num[2]) );
  DFFR_X1 h_0_reg_1_ ( .D(n285), .CK(clk), .RN(rst_n), .Q(h_0[1]) );
  DFFR_X1 h_1_reg_1_ ( .D(n286), .CK(clk), .RN(rst_n), .Q(h_1[1]) );
  DFFR_X1 h_2_reg_1_ ( .D(n287), .CK(clk), .RN(rst_n), .Q(h_2[1]) );
  DFFR_X1 h_3_reg_1_ ( .D(n288), .CK(clk), .RN(rst_n), .Q(h_3[1]) );
  DFFR_X1 h_4_reg_1_ ( .D(n289), .CK(clk), .RN(rst_n), .Q(h_4[1]) );
  DFFR_X1 h_5_reg_1_ ( .D(n290), .CK(clk), .RN(rst_n), .Q(h_5[1]) );
  DFFR_X1 h_6_reg_1_ ( .D(n291), .CK(clk), .RN(rst_n), .Q(h_6[1]) );
  DFFR_X1 h_7_reg_1_ ( .D(n292), .CK(clk), .RN(rst_n), .Q(h_7[1]) );
  DFFR_X1 h_8_reg_1_ ( .D(n293), .CK(clk), .RN(rst_n), .Q(h_8[1]) );
  DFFR_X1 h_9_reg_1_ ( .D(n294), .CK(clk), .RN(rst_n), .Q(h_9[1]) );
  DFFR_X1 h_10_reg_1_ ( .D(n295), .CK(clk), .RN(rst_n), .Q(h_10[1]) );
  DFFR_X1 h_11_reg_1_ ( .D(n296), .CK(clk), .RN(rst_n), .Q(h_11[1]) );
  DFFR_X1 h_12_reg_1_ ( .D(n297), .CK(clk), .RN(rst_n), .Q(h_12[1]) );
  DFFR_X1 h_13_reg_1_ ( .D(n298), .CK(clk), .RN(rst_n), .Q(h_13[1]) );
  DFFR_X1 h_14_reg_1_ ( .D(n299), .CK(clk), .RN(rst_n), .Q(h_14[1]) );
  DFFR_X1 h_15_reg_1_ ( .D(n300), .CK(clk), .RN(rst_n), .Q(h_15[1]) );
  DFFS_X1 tap_num_reg_1_ ( .D(n301), .CK(clk), .SN(rst_n), .Q(tap_num[1]) );
  DFFR_X1 h_0_reg_0_ ( .D(n302), .CK(clk), .RN(rst_n), .Q(h_0[0]) );
  DFFR_X1 h_1_reg_0_ ( .D(n303), .CK(clk), .RN(rst_n), .Q(h_1[0]) );
  DFFR_X1 h_2_reg_0_ ( .D(n304), .CK(clk), .RN(rst_n), .Q(h_2[0]) );
  DFFR_X1 h_3_reg_0_ ( .D(n305), .CK(clk), .RN(rst_n), .Q(h_3[0]) );
  DFFR_X1 h_4_reg_0_ ( .D(n306), .CK(clk), .RN(rst_n), .Q(h_4[0]) );
  DFFR_X1 h_5_reg_0_ ( .D(n307), .CK(clk), .RN(rst_n), .Q(h_5[0]) );
  DFFR_X1 h_6_reg_0_ ( .D(n308), .CK(clk), .RN(rst_n), .Q(h_6[0]) );
  DFFR_X1 h_7_reg_0_ ( .D(n309), .CK(clk), .RN(rst_n), .Q(h_7[0]) );
  DFFR_X1 h_8_reg_0_ ( .D(n310), .CK(clk), .RN(rst_n), .Q(h_8[0]) );
  DFFR_X1 h_9_reg_0_ ( .D(n311), .CK(clk), .RN(rst_n), .Q(h_9[0]) );
  DFFR_X1 h_10_reg_0_ ( .D(n312), .CK(clk), .RN(rst_n), .Q(h_10[0]) );
  DFFR_X1 h_11_reg_0_ ( .D(n313), .CK(clk), .RN(rst_n), .Q(h_11[0]) );
  DFFR_X1 h_12_reg_0_ ( .D(n314), .CK(clk), .RN(rst_n), .Q(h_12[0]) );
  DFFR_X1 h_13_reg_0_ ( .D(n315), .CK(clk), .RN(rst_n), .Q(h_13[0]) );
  DFFR_X1 h_14_reg_0_ ( .D(n316), .CK(clk), .RN(rst_n), .Q(h_14[0]) );
  DFFR_X1 h_15_reg_0_ ( .D(n317), .CK(clk), .RN(rst_n), .Q(h_15[0]) );
  DFFS_X1 tap_num_reg_0_ ( .D(n318), .CK(clk), .SN(rst_n), .Q(tap_num[0]) );
  INV_X1 U3 ( .A(n40), .ZN(n6) );
  INV_X1 U4 ( .A(n40), .ZN(n5) );
  INV_X1 U5 ( .A(n40), .ZN(n4) );
  INV_X1 U7 ( .A(n40), .ZN(n2) );
  INV_X1 U8 ( .A(n40), .ZN(n11) );
  INV_X1 U9 ( .A(n40), .ZN(n10) );
  INV_X1 U10 ( .A(n40), .ZN(n9) );
  INV_X1 U11 ( .A(n40), .ZN(n8) );
  INV_X1 U12 ( .A(n40), .ZN(n7) );
  CLKBUF_X1 U18 ( .A(n40), .Z(n19) );
  CLKBUF_X1 U22 ( .A(n40), .Z(n23) );
  CLKBUF_X1 U25 ( .A(n40), .Z(n26) );
  CLKBUF_X1 U26 ( .A(n40), .Z(n27) );
  CLKBUF_X1 U27 ( .A(n40), .Z(n28) );
  CLKBUF_X1 U28 ( .A(n40), .Z(n29) );
  CLKBUF_X1 U29 ( .A(n40), .Z(n30) );
  CLKBUF_X1 U30 ( .A(n40), .Z(n31) );
  CLKBUF_X1 U36 ( .A(n40), .Z(n37) );
  CLKBUF_X1 U37 ( .A(n40), .Z(n12) );
  CLKBUF_X1 U39 ( .A(n40), .Z(n14) );
  INV_X1 U44 ( .A(n151), .ZN(n302) );
  AOI22_X1 U45 ( .A1(n10), .A2(h_0[0]), .B1(n40), .B2(data_in[0]), .ZN(n151)
         );
  INV_X1 U46 ( .A(n168), .ZN(n285) );
  AOI22_X1 U47 ( .A1(n9), .A2(h_0[1]), .B1(n40), .B2(data_in[1]), .ZN(n168) );
  INV_X1 U48 ( .A(n185), .ZN(n268) );
  AOI22_X1 U49 ( .A1(n7), .A2(h_0[2]), .B1(n40), .B2(data_in[2]), .ZN(n185) );
  INV_X1 U50 ( .A(n202), .ZN(n118) );
  AOI22_X1 U51 ( .A1(n11), .A2(h_0[3]), .B1(n40), .B2(data_in[3]), .ZN(n202)
         );
  INV_X1 U52 ( .A(n218), .ZN(n102) );
  AOI22_X1 U53 ( .A1(n6), .A2(h_0[4]), .B1(n28), .B2(data_in[4]), .ZN(n218) );
  INV_X1 U54 ( .A(n234), .ZN(n86) );
  AOI22_X1 U55 ( .A1(n4), .A2(h_0[5]), .B1(n31), .B2(data_in[5]), .ZN(n234) );
  INV_X1 U56 ( .A(n266), .ZN(n54) );
  AOI22_X1 U57 ( .A1(n2), .A2(h_0[7]), .B1(n40), .B2(data_in[7]), .ZN(n266) );
  INV_X1 U58 ( .A(n134), .ZN(n318) );
  AOI22_X1 U59 ( .A1(n11), .A2(tap_num[0]), .B1(n12), .B2(h_15[0]), .ZN(n134)
         );
  INV_X1 U60 ( .A(n136), .ZN(n317) );
  AOI22_X1 U61 ( .A1(n11), .A2(h_15[0]), .B1(n12), .B2(h_14[0]), .ZN(n136) );
  INV_X1 U62 ( .A(n137), .ZN(n316) );
  AOI22_X1 U63 ( .A1(n11), .A2(h_14[0]), .B1(n12), .B2(h_13[0]), .ZN(n137) );
  INV_X1 U64 ( .A(n138), .ZN(n315) );
  AOI22_X1 U65 ( .A1(n11), .A2(h_13[0]), .B1(n12), .B2(h_12[0]), .ZN(n138) );
  INV_X1 U66 ( .A(n139), .ZN(n314) );
  AOI22_X1 U67 ( .A1(n11), .A2(h_12[0]), .B1(n12), .B2(h_11[0]), .ZN(n139) );
  INV_X1 U68 ( .A(n140), .ZN(n313) );
  AOI22_X1 U69 ( .A1(n11), .A2(h_11[0]), .B1(n40), .B2(h_10[0]), .ZN(n140) );
  INV_X1 U70 ( .A(n141), .ZN(n312) );
  AOI22_X1 U71 ( .A1(n11), .A2(h_10[0]), .B1(n40), .B2(h_9[0]), .ZN(n141) );
  INV_X1 U72 ( .A(n142), .ZN(n311) );
  AOI22_X1 U73 ( .A1(n11), .A2(h_9[0]), .B1(n40), .B2(h_8[0]), .ZN(n142) );
  INV_X1 U74 ( .A(n143), .ZN(n310) );
  AOI22_X1 U75 ( .A1(n11), .A2(h_8[0]), .B1(n40), .B2(h_7[0]), .ZN(n143) );
  INV_X1 U76 ( .A(n144), .ZN(n309) );
  AOI22_X1 U77 ( .A1(n11), .A2(h_7[0]), .B1(n40), .B2(h_6[0]), .ZN(n144) );
  INV_X1 U78 ( .A(n145), .ZN(n308) );
  AOI22_X1 U79 ( .A1(n11), .A2(h_6[0]), .B1(n14), .B2(h_5[0]), .ZN(n145) );
  INV_X1 U80 ( .A(n146), .ZN(n307) );
  AOI22_X1 U81 ( .A1(n11), .A2(h_5[0]), .B1(n14), .B2(h_4[0]), .ZN(n146) );
  INV_X1 U82 ( .A(n147), .ZN(n306) );
  AOI22_X1 U83 ( .A1(n10), .A2(h_4[0]), .B1(n14), .B2(h_3[0]), .ZN(n147) );
  INV_X1 U84 ( .A(n148), .ZN(n305) );
  AOI22_X1 U85 ( .A1(n10), .A2(h_3[0]), .B1(n14), .B2(h_2[0]), .ZN(n148) );
  INV_X1 U86 ( .A(n149), .ZN(n304) );
  AOI22_X1 U87 ( .A1(n10), .A2(h_2[0]), .B1(n14), .B2(h_1[0]), .ZN(n149) );
  INV_X1 U88 ( .A(n150), .ZN(n303) );
  AOI22_X1 U89 ( .A1(n10), .A2(h_1[0]), .B1(n40), .B2(h_0[0]), .ZN(n150) );
  INV_X1 U90 ( .A(n152), .ZN(n301) );
  AOI22_X1 U91 ( .A1(n10), .A2(tap_num[1]), .B1(n40), .B2(h_15[1]), .ZN(n152)
         );
  INV_X1 U92 ( .A(n153), .ZN(n300) );
  AOI22_X1 U93 ( .A1(n10), .A2(h_15[1]), .B1(n40), .B2(h_14[1]), .ZN(n153) );
  INV_X1 U94 ( .A(n154), .ZN(n299) );
  AOI22_X1 U95 ( .A1(n10), .A2(h_14[1]), .B1(n40), .B2(h_13[1]), .ZN(n154) );
  INV_X1 U96 ( .A(n155), .ZN(n298) );
  AOI22_X1 U97 ( .A1(n10), .A2(h_13[1]), .B1(n40), .B2(h_12[1]), .ZN(n155) );
  INV_X1 U98 ( .A(n156), .ZN(n297) );
  AOI22_X1 U99 ( .A1(n10), .A2(h_12[1]), .B1(n40), .B2(h_11[1]), .ZN(n156) );
  INV_X1 U100 ( .A(n157), .ZN(n296) );
  AOI22_X1 U101 ( .A1(n10), .A2(h_11[1]), .B1(n40), .B2(h_10[1]), .ZN(n157) );
  INV_X1 U102 ( .A(n158), .ZN(n295) );
  AOI22_X1 U103 ( .A1(n10), .A2(h_10[1]), .B1(n40), .B2(h_9[1]), .ZN(n158) );
  INV_X1 U104 ( .A(n159), .ZN(n294) );
  AOI22_X1 U105 ( .A1(n9), .A2(h_9[1]), .B1(n40), .B2(h_8[1]), .ZN(n159) );
  INV_X1 U106 ( .A(n160), .ZN(n293) );
  AOI22_X1 U107 ( .A1(n9), .A2(h_8[1]), .B1(n40), .B2(h_7[1]), .ZN(n160) );
  INV_X1 U108 ( .A(n161), .ZN(n292) );
  AOI22_X1 U109 ( .A1(n9), .A2(h_7[1]), .B1(n40), .B2(h_6[1]), .ZN(n161) );
  INV_X1 U110 ( .A(n162), .ZN(n291) );
  AOI22_X1 U111 ( .A1(n9), .A2(h_6[1]), .B1(n40), .B2(h_5[1]), .ZN(n162) );
  INV_X1 U112 ( .A(n163), .ZN(n290) );
  AOI22_X1 U113 ( .A1(n9), .A2(h_5[1]), .B1(n40), .B2(h_4[1]), .ZN(n163) );
  INV_X1 U114 ( .A(n164), .ZN(n289) );
  AOI22_X1 U115 ( .A1(n9), .A2(h_4[1]), .B1(n40), .B2(h_3[1]), .ZN(n164) );
  INV_X1 U116 ( .A(n165), .ZN(n288) );
  AOI22_X1 U117 ( .A1(n9), .A2(h_3[1]), .B1(n40), .B2(h_2[1]), .ZN(n165) );
  INV_X1 U118 ( .A(n166), .ZN(n287) );
  AOI22_X1 U119 ( .A1(n9), .A2(h_2[1]), .B1(n40), .B2(h_1[1]), .ZN(n166) );
  INV_X1 U120 ( .A(n167), .ZN(n286) );
  AOI22_X1 U121 ( .A1(n9), .A2(h_1[1]), .B1(n40), .B2(h_0[1]), .ZN(n167) );
  INV_X1 U122 ( .A(n169), .ZN(n284) );
  AOI22_X1 U123 ( .A1(n9), .A2(tap_num[2]), .B1(n40), .B2(h_15[2]), .ZN(n169)
         );
  INV_X1 U124 ( .A(n170), .ZN(n283) );
  AOI22_X1 U125 ( .A1(n9), .A2(h_15[2]), .B1(n19), .B2(h_14[2]), .ZN(n170) );
  INV_X1 U126 ( .A(n171), .ZN(n282) );
  AOI22_X1 U127 ( .A1(n8), .A2(h_14[2]), .B1(n19), .B2(h_13[2]), .ZN(n171) );
  INV_X1 U128 ( .A(n172), .ZN(n281) );
  AOI22_X1 U129 ( .A1(n8), .A2(h_13[2]), .B1(n19), .B2(h_12[2]), .ZN(n172) );
  INV_X1 U130 ( .A(n173), .ZN(n280) );
  AOI22_X1 U131 ( .A1(n8), .A2(h_12[2]), .B1(n19), .B2(h_11[2]), .ZN(n173) );
  INV_X1 U132 ( .A(n174), .ZN(n279) );
  AOI22_X1 U133 ( .A1(n8), .A2(h_11[2]), .B1(n19), .B2(h_10[2]), .ZN(n174) );
  INV_X1 U134 ( .A(n175), .ZN(n278) );
  AOI22_X1 U135 ( .A1(n8), .A2(h_10[2]), .B1(n40), .B2(h_9[2]), .ZN(n175) );
  INV_X1 U136 ( .A(n176), .ZN(n277) );
  AOI22_X1 U137 ( .A1(n8), .A2(h_9[2]), .B1(n40), .B2(h_8[2]), .ZN(n176) );
  INV_X1 U138 ( .A(n177), .ZN(n276) );
  AOI22_X1 U139 ( .A1(n8), .A2(h_8[2]), .B1(n40), .B2(h_7[2]), .ZN(n177) );
  INV_X1 U140 ( .A(n178), .ZN(n275) );
  AOI22_X1 U141 ( .A1(n8), .A2(h_7[2]), .B1(n40), .B2(h_6[2]), .ZN(n178) );
  INV_X1 U142 ( .A(n179), .ZN(n274) );
  AOI22_X1 U143 ( .A1(n8), .A2(h_6[2]), .B1(n40), .B2(h_5[2]), .ZN(n179) );
  INV_X1 U144 ( .A(n180), .ZN(n273) );
  AOI22_X1 U145 ( .A1(n8), .A2(h_5[2]), .B1(n40), .B2(h_4[2]), .ZN(n180) );
  INV_X1 U146 ( .A(n181), .ZN(n272) );
  AOI22_X1 U147 ( .A1(n8), .A2(h_4[2]), .B1(n40), .B2(h_3[2]), .ZN(n181) );
  INV_X1 U148 ( .A(n182), .ZN(n271) );
  AOI22_X1 U149 ( .A1(n8), .A2(h_3[2]), .B1(n40), .B2(h_2[2]), .ZN(n182) );
  INV_X1 U150 ( .A(n183), .ZN(n270) );
  AOI22_X1 U151 ( .A1(n7), .A2(h_2[2]), .B1(n40), .B2(h_1[2]), .ZN(n183) );
  INV_X1 U152 ( .A(n184), .ZN(n269) );
  AOI22_X1 U153 ( .A1(n7), .A2(h_1[2]), .B1(n40), .B2(h_0[2]), .ZN(n184) );
  INV_X1 U154 ( .A(n186), .ZN(n267) );
  AOI22_X1 U155 ( .A1(n7), .A2(tap_num[3]), .B1(n40), .B2(h_15[3]), .ZN(n186)
         );
  INV_X1 U156 ( .A(n187), .ZN(n133) );
  AOI22_X1 U157 ( .A1(n7), .A2(h_15[3]), .B1(n40), .B2(h_14[3]), .ZN(n187) );
  INV_X1 U158 ( .A(n188), .ZN(n132) );
  AOI22_X1 U159 ( .A1(n7), .A2(h_14[3]), .B1(n40), .B2(h_13[3]), .ZN(n188) );
  INV_X1 U160 ( .A(n189), .ZN(n131) );
  AOI22_X1 U161 ( .A1(n7), .A2(h_13[3]), .B1(n40), .B2(h_12[3]), .ZN(n189) );
  INV_X1 U162 ( .A(n190), .ZN(n130) );
  AOI22_X1 U163 ( .A1(n7), .A2(h_12[3]), .B1(n23), .B2(h_11[3]), .ZN(n190) );
  INV_X1 U164 ( .A(n191), .ZN(n129) );
  AOI22_X1 U165 ( .A1(n7), .A2(h_11[3]), .B1(n23), .B2(h_10[3]), .ZN(n191) );
  INV_X1 U166 ( .A(n192), .ZN(n128) );
  AOI22_X1 U167 ( .A1(n7), .A2(h_10[3]), .B1(n23), .B2(h_9[3]), .ZN(n192) );
  INV_X1 U168 ( .A(n193), .ZN(n127) );
  AOI22_X1 U169 ( .A1(n7), .A2(h_9[3]), .B1(n23), .B2(h_8[3]), .ZN(n193) );
  INV_X1 U170 ( .A(n194), .ZN(n126) );
  AOI22_X1 U171 ( .A1(n7), .A2(h_8[3]), .B1(n23), .B2(h_7[3]), .ZN(n194) );
  INV_X1 U172 ( .A(n195), .ZN(n125) );
  AOI22_X1 U173 ( .A1(n10), .A2(h_7[3]), .B1(n40), .B2(h_6[3]), .ZN(n195) );
  INV_X1 U174 ( .A(n196), .ZN(n124) );
  AOI22_X1 U175 ( .A1(n9), .A2(h_6[3]), .B1(n40), .B2(h_5[3]), .ZN(n196) );
  INV_X1 U176 ( .A(n197), .ZN(n123) );
  AOI22_X1 U177 ( .A1(n8), .A2(h_5[3]), .B1(n40), .B2(h_4[3]), .ZN(n197) );
  INV_X1 U178 ( .A(n198), .ZN(n122) );
  AOI22_X1 U179 ( .A1(n7), .A2(h_4[3]), .B1(n40), .B2(h_3[3]), .ZN(n198) );
  INV_X1 U180 ( .A(n199), .ZN(n121) );
  AOI22_X1 U181 ( .A1(n11), .A2(h_3[3]), .B1(n40), .B2(h_2[3]), .ZN(n199) );
  INV_X1 U182 ( .A(n200), .ZN(n120) );
  AOI22_X1 U183 ( .A1(n10), .A2(h_2[3]), .B1(n40), .B2(h_1[3]), .ZN(n200) );
  INV_X1 U184 ( .A(n201), .ZN(n119) );
  AOI22_X1 U185 ( .A1(n9), .A2(h_1[3]), .B1(n40), .B2(h_0[3]), .ZN(n201) );
  INV_X1 U186 ( .A(n203), .ZN(n117) );
  AOI22_X1 U187 ( .A1(n8), .A2(h_15[4]), .B1(n40), .B2(h_14[4]), .ZN(n203) );
  INV_X1 U188 ( .A(n204), .ZN(n116) );
  AOI22_X1 U189 ( .A1(n7), .A2(h_14[4]), .B1(n40), .B2(h_13[4]), .ZN(n204) );
  INV_X1 U190 ( .A(n205), .ZN(n115) );
  AOI22_X1 U191 ( .A1(n11), .A2(h_13[4]), .B1(n26), .B2(h_12[4]), .ZN(n205) );
  INV_X1 U192 ( .A(n206), .ZN(n114) );
  AOI22_X1 U193 ( .A1(n10), .A2(h_12[4]), .B1(n26), .B2(h_11[4]), .ZN(n206) );
  INV_X1 U194 ( .A(n207), .ZN(n113) );
  AOI22_X1 U195 ( .A1(n6), .A2(h_11[4]), .B1(n26), .B2(h_10[4]), .ZN(n207) );
  INV_X1 U196 ( .A(n208), .ZN(n112) );
  AOI22_X1 U197 ( .A1(n6), .A2(h_10[4]), .B1(n26), .B2(h_9[4]), .ZN(n208) );
  INV_X1 U198 ( .A(n209), .ZN(n111) );
  AOI22_X1 U199 ( .A1(n6), .A2(h_9[4]), .B1(n26), .B2(h_8[4]), .ZN(n209) );
  INV_X1 U200 ( .A(n210), .ZN(n110) );
  AOI22_X1 U201 ( .A1(n6), .A2(h_8[4]), .B1(n27), .B2(h_7[4]), .ZN(n210) );
  INV_X1 U202 ( .A(n211), .ZN(n109) );
  AOI22_X1 U203 ( .A1(n6), .A2(h_7[4]), .B1(n27), .B2(h_6[4]), .ZN(n211) );
  INV_X1 U204 ( .A(n212), .ZN(n108) );
  AOI22_X1 U205 ( .A1(n6), .A2(h_6[4]), .B1(n27), .B2(h_5[4]), .ZN(n212) );
  INV_X1 U206 ( .A(n213), .ZN(n107) );
  AOI22_X1 U207 ( .A1(n6), .A2(h_5[4]), .B1(n27), .B2(h_4[4]), .ZN(n213) );
  INV_X1 U208 ( .A(n214), .ZN(n106) );
  AOI22_X1 U209 ( .A1(n6), .A2(h_4[4]), .B1(n27), .B2(h_3[4]), .ZN(n214) );
  INV_X1 U210 ( .A(n215), .ZN(n105) );
  AOI22_X1 U211 ( .A1(n6), .A2(h_3[4]), .B1(n28), .B2(h_2[4]), .ZN(n215) );
  INV_X1 U212 ( .A(n216), .ZN(n104) );
  AOI22_X1 U213 ( .A1(n6), .A2(h_2[4]), .B1(n28), .B2(h_1[4]), .ZN(n216) );
  INV_X1 U214 ( .A(n217), .ZN(n103) );
  AOI22_X1 U215 ( .A1(n6), .A2(h_1[4]), .B1(n28), .B2(h_0[4]), .ZN(n217) );
  INV_X1 U216 ( .A(n219), .ZN(n101) );
  AOI22_X1 U217 ( .A1(n5), .A2(h_15[5]), .B1(n28), .B2(h_14[5]), .ZN(n219) );
  INV_X1 U218 ( .A(n220), .ZN(n100) );
  AOI22_X1 U219 ( .A1(n5), .A2(h_14[5]), .B1(n29), .B2(h_13[5]), .ZN(n220) );
  INV_X1 U220 ( .A(n221), .ZN(n99) );
  AOI22_X1 U221 ( .A1(n5), .A2(h_13[5]), .B1(n29), .B2(h_12[5]), .ZN(n221) );
  INV_X1 U222 ( .A(n222), .ZN(n98) );
  AOI22_X1 U223 ( .A1(n5), .A2(h_12[5]), .B1(n29), .B2(h_11[5]), .ZN(n222) );
  INV_X1 U224 ( .A(n223), .ZN(n97) );
  AOI22_X1 U225 ( .A1(n5), .A2(h_11[5]), .B1(n29), .B2(h_10[5]), .ZN(n223) );
  INV_X1 U226 ( .A(n224), .ZN(n96) );
  AOI22_X1 U227 ( .A1(n5), .A2(h_10[5]), .B1(n29), .B2(h_9[5]), .ZN(n224) );
  INV_X1 U228 ( .A(n225), .ZN(n95) );
  AOI22_X1 U229 ( .A1(n5), .A2(h_9[5]), .B1(n30), .B2(h_8[5]), .ZN(n225) );
  INV_X1 U230 ( .A(n226), .ZN(n94) );
  AOI22_X1 U231 ( .A1(n5), .A2(h_8[5]), .B1(n30), .B2(h_7[5]), .ZN(n226) );
  INV_X1 U232 ( .A(n227), .ZN(n93) );
  AOI22_X1 U233 ( .A1(n5), .A2(h_7[5]), .B1(n30), .B2(h_6[5]), .ZN(n227) );
  INV_X1 U234 ( .A(n228), .ZN(n92) );
  AOI22_X1 U235 ( .A1(n5), .A2(h_6[5]), .B1(n30), .B2(h_5[5]), .ZN(n228) );
  INV_X1 U236 ( .A(n229), .ZN(n91) );
  AOI22_X1 U237 ( .A1(n5), .A2(h_5[5]), .B1(n30), .B2(h_4[5]), .ZN(n229) );
  INV_X1 U238 ( .A(n230), .ZN(n90) );
  AOI22_X1 U239 ( .A1(n5), .A2(h_4[5]), .B1(n31), .B2(h_3[5]), .ZN(n230) );
  INV_X1 U240 ( .A(n231), .ZN(n89) );
  AOI22_X1 U241 ( .A1(n4), .A2(h_3[5]), .B1(n31), .B2(h_2[5]), .ZN(n231) );
  INV_X1 U242 ( .A(n232), .ZN(n88) );
  AOI22_X1 U243 ( .A1(n4), .A2(h_2[5]), .B1(n31), .B2(h_1[5]), .ZN(n232) );
  INV_X1 U244 ( .A(n233), .ZN(n87) );
  AOI22_X1 U245 ( .A1(n4), .A2(h_1[5]), .B1(n31), .B2(h_0[5]), .ZN(n233) );
  INV_X1 U246 ( .A(n235), .ZN(n85) );
  AOI22_X1 U247 ( .A1(n4), .A2(h_15[6]), .B1(n40), .B2(h_14[6]), .ZN(n235) );
  INV_X1 U248 ( .A(n236), .ZN(n84) );
  AOI22_X1 U249 ( .A1(n4), .A2(h_14[6]), .B1(n40), .B2(h_13[6]), .ZN(n236) );
  INV_X1 U250 ( .A(n237), .ZN(n83) );
  AOI22_X1 U251 ( .A1(n4), .A2(h_13[6]), .B1(n40), .B2(h_12[6]), .ZN(n237) );
  INV_X1 U252 ( .A(n238), .ZN(n82) );
  AOI22_X1 U253 ( .A1(n4), .A2(h_12[6]), .B1(n40), .B2(h_11[6]), .ZN(n238) );
  INV_X1 U254 ( .A(n239), .ZN(n81) );
  AOI22_X1 U255 ( .A1(n4), .A2(h_11[6]), .B1(n40), .B2(h_10[6]), .ZN(n239) );
  INV_X1 U256 ( .A(n240), .ZN(n80) );
  AOI22_X1 U257 ( .A1(n4), .A2(h_10[6]), .B1(n40), .B2(h_9[6]), .ZN(n240) );
  INV_X1 U258 ( .A(n241), .ZN(n79) );
  AOI22_X1 U259 ( .A1(n4), .A2(h_9[6]), .B1(n40), .B2(h_8[6]), .ZN(n241) );
  INV_X1 U260 ( .A(n242), .ZN(n78) );
  AOI22_X1 U261 ( .A1(n4), .A2(h_8[6]), .B1(n40), .B2(h_7[6]), .ZN(n242) );
  INV_X1 U262 ( .A(n243), .ZN(n77) );
  INV_X1 U264 ( .A(n244), .ZN(n76) );
  AOI22_X1 U265 ( .A1(n3), .A2(h_6[6]), .B1(n40), .B2(h_5[6]), .ZN(n244) );
  INV_X1 U266 ( .A(n245), .ZN(n75) );
  AOI22_X1 U267 ( .A1(n3), .A2(h_5[6]), .B1(n40), .B2(h_4[6]), .ZN(n245) );
  INV_X1 U268 ( .A(n246), .ZN(n74) );
  AOI22_X1 U269 ( .A1(n3), .A2(h_4[6]), .B1(n40), .B2(h_3[6]), .ZN(n246) );
  INV_X1 U270 ( .A(n247), .ZN(n73) );
  AOI22_X1 U271 ( .A1(n3), .A2(h_3[6]), .B1(n40), .B2(h_2[6]), .ZN(n247) );
  INV_X1 U272 ( .A(n248), .ZN(n72) );
  AOI22_X1 U273 ( .A1(n3), .A2(h_2[6]), .B1(n40), .B2(h_1[6]), .ZN(n248) );
  INV_X1 U274 ( .A(n249), .ZN(n71) );
  AOI22_X1 U275 ( .A1(n3), .A2(h_1[6]), .B1(n40), .B2(h_0[6]), .ZN(n249) );
  INV_X1 U276 ( .A(n251), .ZN(n69) );
  AOI22_X1 U277 ( .A1(n3), .A2(h_15[7]), .B1(n40), .B2(h_14[7]), .ZN(n251) );
  INV_X1 U278 ( .A(n252), .ZN(n68) );
  AOI22_X1 U279 ( .A1(n3), .A2(h_14[7]), .B1(n40), .B2(h_13[7]), .ZN(n252) );
  INV_X1 U280 ( .A(n253), .ZN(n67) );
  AOI22_X1 U281 ( .A1(n3), .A2(h_13[7]), .B1(n40), .B2(h_12[7]), .ZN(n253) );
  INV_X1 U282 ( .A(n254), .ZN(n66) );
  AOI22_X1 U283 ( .A1(n3), .A2(h_12[7]), .B1(n40), .B2(h_11[7]), .ZN(n254) );
  INV_X1 U284 ( .A(n255), .ZN(n65) );
  AOI22_X1 U285 ( .A1(n2), .A2(h_11[7]), .B1(n40), .B2(h_10[7]), .ZN(n255) );
  INV_X1 U286 ( .A(n256), .ZN(n64) );
  AOI22_X1 U287 ( .A1(n2), .A2(h_10[7]), .B1(n40), .B2(h_9[7]), .ZN(n256) );
  INV_X1 U288 ( .A(n257), .ZN(n63) );
  AOI22_X1 U289 ( .A1(n2), .A2(h_9[7]), .B1(n40), .B2(h_8[7]), .ZN(n257) );
  INV_X1 U290 ( .A(n258), .ZN(n62) );
  AOI22_X1 U291 ( .A1(n2), .A2(h_8[7]), .B1(n40), .B2(h_7[7]), .ZN(n258) );
  INV_X1 U292 ( .A(n259), .ZN(n61) );
  AOI22_X1 U293 ( .A1(n2), .A2(h_7[7]), .B1(n40), .B2(h_6[7]), .ZN(n259) );
  INV_X1 U294 ( .A(n260), .ZN(n60) );
  AOI22_X1 U295 ( .A1(n2), .A2(h_6[7]), .B1(n37), .B2(h_5[7]), .ZN(n260) );
  INV_X1 U296 ( .A(n261), .ZN(n59) );
  AOI22_X1 U297 ( .A1(n2), .A2(h_5[7]), .B1(n37), .B2(h_4[7]), .ZN(n261) );
  INV_X1 U298 ( .A(n262), .ZN(n58) );
  AOI22_X1 U299 ( .A1(n2), .A2(h_4[7]), .B1(n37), .B2(h_3[7]), .ZN(n262) );
  INV_X1 U300 ( .A(n263), .ZN(n57) );
  AOI22_X1 U301 ( .A1(n2), .A2(h_3[7]), .B1(n37), .B2(h_2[7]), .ZN(n263) );
  INV_X1 U302 ( .A(n264), .ZN(n56) );
  AOI22_X1 U303 ( .A1(n2), .A2(h_2[7]), .B1(n37), .B2(h_1[7]), .ZN(n264) );
  INV_X1 U304 ( .A(n265), .ZN(n55) );
  AOI22_X1 U305 ( .A1(n2), .A2(h_1[7]), .B1(n40), .B2(h_0[7]), .ZN(n265) );
  INV_X1 U307 ( .A(n250), .ZN(n70) );
  AOI22_X1 U308 ( .A1(n3), .A2(h_0[6]), .B1(n40), .B2(data_in[6]), .ZN(n250)
         );
  INV_X4 U2 ( .A(n3), .ZN(n40) );
  NAND2_X1 U6 ( .A1(config_enable), .A2(config_data_enable), .ZN(n3) );
  AOI22_X1 U13 ( .A1(h_7[6]), .A2(n3), .B1(h_6[6]), .B2(n40), .ZN(n243) );
endmodule


module FIR_DW01_add_2 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n2;
  wire   [11:2] carry;

  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .S(SUM[11]) );
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


module FIR_DW01_add_1 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [11:2] carry;

  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .S(SUM[11]) );
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
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2_X1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module FIR_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n2;
  wire   [11:2] carry;

  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .S(SUM[11]) );
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


module FIR ( clk, rst_n, data_in, enable, configuration, config_data_enable, 
        data_out, overflow_flag, done );
  input [7:0] data_in;
  output [7:0] data_out;
  output [1:0] overflow_flag;
  output [0:0] done;
  input clk, rst_n, enable, configuration, config_data_enable;
  wire   mac_1_done, mac_2_done, mac_3_done, mac_4_done, mac_done, load_enable,
         add_enable, mac_1_enable, mac_2_enable, mac_3_enable, mac_4_enable,
         config_enable, expand_enable, judge_enable, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N152, N153,
         N154, N164, N165, N166, N176, N177, N178, N188, N189, N190, sum_11_,
         N219, N220, N221, N222, N223, N224, N225, N226, N227, N228, N229,
         N230, N231, N232, N233, N234, N235, N236, N237, N238, N239, N240,
         N241, N242, N268, N269, N270, N271, N272, N273, N274, N276, N277,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, N218, N217, N216, N215,
         N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204,
         N203, N202, N201, N200, N199, N198, N197, N196, N195, n386, n387,
         n398, n404, n405, n406, n407, n408, n409, n410, n411, n412, n440,
         n441, n442, n443, n444, n445, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601;
  wire   [3:0] tap_num;
  wire   [7:0] data_0;
  wire   [7:0] data_1;
  wire   [7:0] data_2;
  wire   [7:0] data_3;
  wire   [7:0] data_4;
  wire   [7:0] data_5;
  wire   [7:0] data_6;
  wire   [7:0] data_7;
  wire   [7:0] data_8;
  wire   [7:0] data_9;
  wire   [7:0] data_10;
  wire   [7:0] data_11;
  wire   [7:0] data_12;
  wire   [7:0] data_13;
  wire   [7:0] data_14;
  wire   [7:0] data_15;
  wire   [7:0] h_0;
  wire   [7:0] h_1;
  wire   [7:0] h_2;
  wire   [7:0] h_3;
  wire   [9:0] sum_1;
  wire   [7:0] h_4;
  wire   [7:0] h_5;
  wire   [7:0] h_6;
  wire   [7:0] h_7;
  wire   [9:0] sum_2;
  wire   [7:0] h_8;
  wire   [7:0] h_9;
  wire   [7:0] h_10;
  wire   [7:0] h_11;
  wire   [9:0] sum_3;
  wire   [7:0] h_12;
  wire   [7:0] h_13;
  wire   [7:0] h_14;
  wire   [7:0] h_15;
  wire   [9:0] sum_4;
  wire   [11:0] sum_1_1;
  wire   [11:0] sum_2_2;
  wire   [11:0] sum_3_3;
  wire   [11:0] sum_4_4;

  DFFR_X1 data_15_reg_0_ ( .D(n568), .CK(clk), .RN(rst_n), .Q(data_15[0]) );
  DFFR_X1 data_0_reg_7_ ( .D(N20), .CK(clk), .RN(rst_n), .Q(data_0[7]), .QN(
        n159) );
  DFFR_X1 data_1_reg_7_ ( .D(N28), .CK(clk), .RN(rst_n), .Q(data_1[7]), .QN(
        n167) );
  DFFR_X1 data_2_reg_7_ ( .D(n553), .CK(clk), .RN(rst_n), .Q(data_2[7]) );
  DFFR_X1 data_3_reg_7_ ( .D(n545), .CK(clk), .RN(rst_n), .Q(data_3[7]) );
  DFFR_X1 data_4_reg_7_ ( .D(n537), .CK(clk), .RN(rst_n), .Q(data_4[7]) );
  DFFR_X1 data_5_reg_7_ ( .D(n529), .CK(clk), .RN(rst_n), .Q(data_5[7]) );
  DFFR_X1 data_6_reg_7_ ( .D(n521), .CK(clk), .RN(rst_n), .Q(data_6[7]) );
  DFFR_X1 data_7_reg_7_ ( .D(n513), .CK(clk), .RN(rst_n), .Q(data_7[7]) );
  DFFR_X1 data_8_reg_7_ ( .D(n505), .CK(clk), .RN(rst_n), .Q(data_8[7]) );
  DFFR_X1 data_9_reg_7_ ( .D(n497), .CK(clk), .RN(rst_n), .Q(data_9[7]) );
  DFFR_X1 data_0_reg_6_ ( .D(N19), .CK(clk), .RN(rst_n), .Q(data_0[6]), .QN(
        n160) );
  DFFR_X1 data_1_reg_6_ ( .D(N27), .CK(clk), .RN(rst_n), .Q(data_1[6]), .QN(
        n168) );
  DFFR_X1 data_2_reg_6_ ( .D(n554), .CK(clk), .RN(rst_n), .Q(data_2[6]) );
  DFFR_X1 data_3_reg_6_ ( .D(n546), .CK(clk), .RN(rst_n), .Q(data_3[6]) );
  DFFR_X1 data_4_reg_6_ ( .D(n538), .CK(clk), .RN(rst_n), .Q(data_4[6]) );
  DFFR_X1 data_5_reg_6_ ( .D(n530), .CK(clk), .RN(rst_n), .Q(data_5[6]) );
  DFFR_X1 data_6_reg_6_ ( .D(n522), .CK(clk), .RN(rst_n), .Q(data_6[6]) );
  DFFR_X1 data_7_reg_6_ ( .D(n514), .CK(clk), .RN(rst_n), .Q(data_7[6]) );
  DFFR_X1 data_8_reg_6_ ( .D(n506), .CK(clk), .RN(rst_n), .Q(data_8[6]) );
  DFFR_X1 data_9_reg_6_ ( .D(n498), .CK(clk), .RN(rst_n), .Q(data_9[6]) );
  DFFR_X1 data_10_reg_6_ ( .D(n490), .CK(clk), .RN(rst_n), .Q(data_10[6]) );
  DFFR_X1 data_0_reg_5_ ( .D(N18), .CK(clk), .RN(rst_n), .Q(data_0[5]), .QN(
        n161) );
  DFFR_X1 data_1_reg_5_ ( .D(N26), .CK(clk), .RN(rst_n), .Q(data_1[5]), .QN(
        n169) );
  DFFR_X1 data_2_reg_5_ ( .D(n555), .CK(clk), .RN(rst_n), .Q(data_2[5]) );
  DFFR_X1 data_3_reg_5_ ( .D(n547), .CK(clk), .RN(rst_n), .Q(data_3[5]) );
  DFFR_X1 data_4_reg_5_ ( .D(n539), .CK(clk), .RN(rst_n), .Q(data_4[5]) );
  DFFR_X1 data_5_reg_5_ ( .D(n531), .CK(clk), .RN(rst_n), .Q(data_5[5]) );
  DFFR_X1 data_6_reg_5_ ( .D(n523), .CK(clk), .RN(rst_n), .Q(data_6[5]) );
  DFFR_X1 data_7_reg_5_ ( .D(n515), .CK(clk), .RN(rst_n), .Q(data_7[5]) );
  DFFR_X1 data_8_reg_5_ ( .D(n507), .CK(clk), .RN(rst_n), .Q(data_8[5]) );
  DFFR_X1 data_9_reg_5_ ( .D(n499), .CK(clk), .RN(rst_n), .Q(data_9[5]) );
  DFFR_X1 data_10_reg_5_ ( .D(n491), .CK(clk), .RN(rst_n), .Q(data_10[5]) );
  DFFR_X1 data_0_reg_4_ ( .D(N17), .CK(clk), .RN(rst_n), .Q(data_0[4]), .QN(
        n162) );
  DFFR_X1 data_1_reg_4_ ( .D(N25), .CK(clk), .RN(rst_n), .Q(data_1[4]), .QN(
        n170) );
  DFFR_X1 data_2_reg_4_ ( .D(n556), .CK(clk), .RN(rst_n), .Q(data_2[4]) );
  DFFR_X1 data_3_reg_4_ ( .D(n548), .CK(clk), .RN(rst_n), .Q(data_3[4]) );
  DFFR_X1 data_4_reg_4_ ( .D(n540), .CK(clk), .RN(rst_n), .Q(data_4[4]) );
  DFFR_X1 data_5_reg_4_ ( .D(n532), .CK(clk), .RN(rst_n), .Q(data_5[4]) );
  DFFR_X1 data_6_reg_4_ ( .D(n524), .CK(clk), .RN(rst_n), .Q(data_6[4]) );
  DFFR_X1 data_7_reg_4_ ( .D(n516), .CK(clk), .RN(rst_n), .Q(data_7[4]) );
  DFFR_X1 data_8_reg_4_ ( .D(n508), .CK(clk), .RN(rst_n), .Q(data_8[4]) );
  DFFR_X1 data_9_reg_4_ ( .D(n500), .CK(clk), .RN(rst_n), .Q(data_9[4]) );
  DFFR_X1 data_10_reg_4_ ( .D(n492), .CK(clk), .RN(rst_n), .Q(data_10[4]) );
  DFFR_X1 data_0_reg_3_ ( .D(N16), .CK(clk), .RN(rst_n), .Q(data_0[3]), .QN(
        n163) );
  DFFR_X1 data_1_reg_3_ ( .D(N24), .CK(clk), .RN(rst_n), .Q(data_1[3]), .QN(
        n171) );
  DFFR_X1 data_2_reg_3_ ( .D(n557), .CK(clk), .RN(rst_n), .Q(data_2[3]) );
  DFFR_X1 data_3_reg_3_ ( .D(n549), .CK(clk), .RN(rst_n), .Q(data_3[3]) );
  DFFR_X1 data_4_reg_3_ ( .D(n541), .CK(clk), .RN(rst_n), .Q(data_4[3]) );
  DFFR_X1 data_5_reg_3_ ( .D(n533), .CK(clk), .RN(rst_n), .Q(data_5[3]) );
  DFFR_X1 data_6_reg_3_ ( .D(n525), .CK(clk), .RN(rst_n), .Q(data_6[3]) );
  DFFR_X1 data_7_reg_3_ ( .D(n517), .CK(clk), .RN(rst_n), .Q(data_7[3]) );
  DFFR_X1 data_8_reg_3_ ( .D(n509), .CK(clk), .RN(rst_n), .Q(data_8[3]) );
  DFFR_X1 data_9_reg_3_ ( .D(n501), .CK(clk), .RN(rst_n), .Q(data_9[3]) );
  DFFR_X1 data_10_reg_3_ ( .D(n493), .CK(clk), .RN(rst_n), .Q(data_10[3]) );
  DFFR_X1 data_0_reg_2_ ( .D(N15), .CK(clk), .RN(rst_n), .Q(data_0[2]), .QN(
        n164) );
  DFFR_X1 data_1_reg_2_ ( .D(N23), .CK(clk), .RN(rst_n), .Q(data_1[2]), .QN(
        n172) );
  DFFR_X1 data_2_reg_2_ ( .D(n558), .CK(clk), .RN(rst_n), .Q(data_2[2]) );
  DFFR_X1 data_3_reg_2_ ( .D(n550), .CK(clk), .RN(rst_n), .Q(data_3[2]) );
  DFFR_X1 data_4_reg_2_ ( .D(n542), .CK(clk), .RN(rst_n), .Q(data_4[2]) );
  DFFR_X1 data_5_reg_2_ ( .D(n534), .CK(clk), .RN(rst_n), .Q(data_5[2]) );
  DFFR_X1 data_6_reg_2_ ( .D(n526), .CK(clk), .RN(rst_n), .Q(data_6[2]) );
  DFFR_X1 data_7_reg_2_ ( .D(n518), .CK(clk), .RN(rst_n), .Q(data_7[2]) );
  DFFR_X1 data_8_reg_2_ ( .D(n510), .CK(clk), .RN(rst_n), .Q(data_8[2]) );
  DFFR_X1 data_9_reg_2_ ( .D(n502), .CK(clk), .RN(rst_n), .Q(data_9[2]) );
  DFFR_X1 data_10_reg_2_ ( .D(n494), .CK(clk), .RN(rst_n), .Q(data_10[2]) );
  DFFR_X1 data_0_reg_1_ ( .D(N14), .CK(clk), .RN(rst_n), .Q(data_0[1]), .QN(
        n165) );
  DFFR_X1 data_1_reg_1_ ( .D(N22), .CK(clk), .RN(rst_n), .Q(data_1[1]), .QN(
        n173) );
  DFFR_X1 data_2_reg_1_ ( .D(n559), .CK(clk), .RN(rst_n), .Q(data_2[1]) );
  DFFR_X1 data_3_reg_1_ ( .D(n551), .CK(clk), .RN(rst_n), .Q(data_3[1]) );
  DFFR_X1 data_4_reg_1_ ( .D(n543), .CK(clk), .RN(rst_n), .Q(data_4[1]) );
  DFFR_X1 data_5_reg_1_ ( .D(n535), .CK(clk), .RN(rst_n), .Q(data_5[1]) );
  DFFR_X1 data_6_reg_1_ ( .D(n527), .CK(clk), .RN(rst_n), .Q(data_6[1]) );
  DFFR_X1 data_7_reg_1_ ( .D(n519), .CK(clk), .RN(rst_n), .Q(data_7[1]) );
  DFFR_X1 data_8_reg_1_ ( .D(n511), .CK(clk), .RN(rst_n), .Q(data_8[1]) );
  DFFR_X1 data_9_reg_1_ ( .D(n503), .CK(clk), .RN(rst_n), .Q(data_9[1]) );
  DFFR_X1 data_10_reg_1_ ( .D(n495), .CK(clk), .RN(rst_n), .Q(data_10[1]) );
  DFFR_X1 data_0_reg_0_ ( .D(N13), .CK(clk), .RN(rst_n), .Q(data_0[0]), .QN(
        n166) );
  DFFR_X1 data_1_reg_0_ ( .D(N21), .CK(clk), .RN(rst_n), .Q(data_1[0]), .QN(
        n174) );
  DFFR_X1 data_2_reg_0_ ( .D(n560), .CK(clk), .RN(rst_n), .Q(data_2[0]) );
  DFFR_X1 data_3_reg_0_ ( .D(n552), .CK(clk), .RN(rst_n), .Q(data_3[0]) );
  DFFR_X1 data_4_reg_0_ ( .D(n544), .CK(clk), .RN(rst_n), .Q(data_4[0]) );
  DFFR_X1 data_5_reg_0_ ( .D(n536), .CK(clk), .RN(rst_n), .Q(data_5[0]) );
  DFFR_X1 data_6_reg_0_ ( .D(n528), .CK(clk), .RN(rst_n), .Q(data_6[0]) );
  DFFR_X1 data_7_reg_0_ ( .D(n520), .CK(clk), .RN(rst_n), .Q(data_7[0]) );
  DFFR_X1 data_8_reg_0_ ( .D(n512), .CK(clk), .RN(rst_n), .Q(data_8[0]) );
  DFFR_X1 data_9_reg_0_ ( .D(n504), .CK(clk), .RN(rst_n), .Q(data_9[0]) );
  DFFR_X1 data_10_reg_0_ ( .D(n496), .CK(clk), .RN(rst_n), .Q(data_10[0]) );
  DFFR_X1 data_11_reg_6_ ( .D(n594), .CK(clk), .RN(rst_n), .Q(data_11[6]) );
  DFFR_X1 data_12_reg_6_ ( .D(n586), .CK(clk), .RN(rst_n), .Q(data_12[6]) );
  DFFR_X1 data_13_reg_6_ ( .D(n578), .CK(clk), .RN(rst_n), .Q(data_13[6]) );
  DFFR_X1 data_14_reg_6_ ( .D(n570), .CK(clk), .RN(rst_n), .Q(data_14[6]) );
  DFFR_X1 data_15_reg_6_ ( .D(n562), .CK(clk), .RN(rst_n), .Q(data_15[6]) );
  DFFR_X1 data_11_reg_5_ ( .D(n595), .CK(clk), .RN(rst_n), .Q(data_11[5]) );
  DFFR_X1 data_12_reg_5_ ( .D(n587), .CK(clk), .RN(rst_n), .Q(data_12[5]) );
  DFFR_X1 data_13_reg_5_ ( .D(n579), .CK(clk), .RN(rst_n), .Q(data_13[5]) );
  DFFR_X1 data_14_reg_5_ ( .D(n571), .CK(clk), .RN(rst_n), .Q(data_14[5]) );
  DFFR_X1 data_15_reg_5_ ( .D(n563), .CK(clk), .RN(rst_n), .Q(data_15[5]) );
  DFFR_X1 data_11_reg_4_ ( .D(n596), .CK(clk), .RN(rst_n), .Q(data_11[4]) );
  DFFR_X1 data_12_reg_4_ ( .D(n588), .CK(clk), .RN(rst_n), .Q(data_12[4]) );
  DFFR_X1 data_13_reg_4_ ( .D(n580), .CK(clk), .RN(rst_n), .Q(data_13[4]) );
  DFFR_X1 data_14_reg_4_ ( .D(n572), .CK(clk), .RN(rst_n), .Q(data_14[4]) );
  DFFR_X1 data_15_reg_4_ ( .D(n564), .CK(clk), .RN(rst_n), .Q(data_15[4]) );
  DFFR_X1 data_11_reg_3_ ( .D(n597), .CK(clk), .RN(rst_n), .Q(data_11[3]) );
  DFFR_X1 data_12_reg_3_ ( .D(n589), .CK(clk), .RN(rst_n), .Q(data_12[3]) );
  DFFR_X1 data_13_reg_3_ ( .D(n581), .CK(clk), .RN(rst_n), .Q(data_13[3]) );
  DFFR_X1 data_14_reg_3_ ( .D(n573), .CK(clk), .RN(rst_n), .Q(data_14[3]) );
  DFFR_X1 data_15_reg_3_ ( .D(n565), .CK(clk), .RN(rst_n), .Q(data_15[3]) );
  DFFR_X1 data_11_reg_2_ ( .D(n598), .CK(clk), .RN(rst_n), .Q(data_11[2]) );
  DFFR_X1 data_12_reg_2_ ( .D(n590), .CK(clk), .RN(rst_n), .Q(data_12[2]) );
  DFFR_X1 data_13_reg_2_ ( .D(n582), .CK(clk), .RN(rst_n), .Q(data_13[2]) );
  DFFR_X1 data_14_reg_2_ ( .D(n574), .CK(clk), .RN(rst_n), .Q(data_14[2]) );
  DFFR_X1 data_15_reg_2_ ( .D(n566), .CK(clk), .RN(rst_n), .Q(data_15[2]) );
  DFFR_X1 data_11_reg_1_ ( .D(n599), .CK(clk), .RN(rst_n), .Q(data_11[1]) );
  DFFR_X1 data_12_reg_1_ ( .D(n591), .CK(clk), .RN(rst_n), .Q(data_12[1]) );
  DFFR_X1 data_13_reg_1_ ( .D(n583), .CK(clk), .RN(rst_n), .Q(data_13[1]) );
  DFFR_X1 data_14_reg_1_ ( .D(n575), .CK(clk), .RN(rst_n), .Q(data_14[1]) );
  DFFR_X1 data_15_reg_1_ ( .D(n567), .CK(clk), .RN(rst_n), .Q(data_15[1]) );
  DFFR_X1 data_11_reg_0_ ( .D(n600), .CK(clk), .RN(rst_n), .Q(data_11[0]) );
  DFFR_X1 data_12_reg_0_ ( .D(n592), .CK(clk), .RN(rst_n), .Q(data_12[0]) );
  DFFR_X1 data_13_reg_0_ ( .D(n584), .CK(clk), .RN(rst_n), .Q(data_13[0]) );
  DFFR_X1 data_14_reg_0_ ( .D(n576), .CK(clk), .RN(rst_n), .Q(data_14[0]) );
  DFFR_X1 data_10_reg_7_ ( .D(n601), .CK(clk), .RN(rst_n), .Q(data_10[7]) );
  DFFR_X1 data_11_reg_7_ ( .D(n593), .CK(clk), .RN(rst_n), .Q(data_11[7]) );
  DFFR_X1 data_12_reg_7_ ( .D(n585), .CK(clk), .RN(rst_n), .Q(data_12[7]) );
  DFFR_X1 data_13_reg_7_ ( .D(n577), .CK(clk), .RN(rst_n), .Q(data_13[7]) );
  DFFR_X1 data_14_reg_7_ ( .D(n569), .CK(clk), .RN(rst_n), .Q(data_14[7]) );
  DFFR_X1 data_15_reg_7_ ( .D(n561), .CK(clk), .RN(rst_n), .Q(data_15[7]) );
  DFFR_X1 sum_4_4_reg_11_ ( .D(N190), .CK(clk), .RN(rst_n), .Q(sum_4_4[11]), 
        .QN(n175) );
  DFFR_X1 sum_4_4_reg_10_ ( .D(N189), .CK(clk), .RN(rst_n), .Q(sum_4_4[10]), 
        .QN(n176) );
  DFFR_X1 sum_4_4_reg_9_ ( .D(N188), .CK(clk), .RN(rst_n), .Q(sum_4_4[9]), 
        .QN(n177) );
  DFFR_X1 sum_4_4_reg_8_ ( .D(n470), .CK(clk), .RN(rst_n), .Q(sum_4_4[8]) );
  DFFR_X1 sum_4_4_reg_7_ ( .D(n471), .CK(clk), .RN(rst_n), .Q(sum_4_4[7]) );
  DFFR_X1 sum_4_4_reg_6_ ( .D(n472), .CK(clk), .RN(rst_n), .Q(sum_4_4[6]) );
  DFFR_X1 sum_4_4_reg_5_ ( .D(n473), .CK(clk), .RN(rst_n), .Q(sum_4_4[5]) );
  DFFR_X1 sum_4_4_reg_4_ ( .D(n474), .CK(clk), .RN(rst_n), .Q(sum_4_4[4]) );
  DFFR_X1 sum_4_4_reg_3_ ( .D(n475), .CK(clk), .RN(rst_n), .Q(sum_4_4[3]) );
  DFFR_X1 sum_4_4_reg_2_ ( .D(n476), .CK(clk), .RN(rst_n), .Q(sum_4_4[2]) );
  DFFR_X1 sum_4_4_reg_1_ ( .D(n477), .CK(clk), .RN(rst_n), .Q(sum_4_4[1]) );
  DFFR_X1 sum_4_4_reg_0_ ( .D(n478), .CK(clk), .RN(rst_n), .Q(sum_4_4[0]) );
  DFFR_X1 sum_3_3_reg_11_ ( .D(N178), .CK(clk), .RN(rst_n), .Q(sum_3_3[11]), 
        .QN(n178) );
  DFFR_X1 sum_3_3_reg_10_ ( .D(N177), .CK(clk), .RN(rst_n), .Q(sum_3_3[10]), 
        .QN(n179) );
  DFFR_X1 sum_3_3_reg_9_ ( .D(N176), .CK(clk), .RN(rst_n), .Q(sum_3_3[9]), 
        .QN(n180) );
  DFFR_X1 sum_3_3_reg_8_ ( .D(n461), .CK(clk), .RN(rst_n), .Q(sum_3_3[8]) );
  DFFR_X1 sum_3_3_reg_7_ ( .D(n462), .CK(clk), .RN(rst_n), .Q(sum_3_3[7]) );
  DFFR_X1 sum_3_3_reg_6_ ( .D(n463), .CK(clk), .RN(rst_n), .Q(sum_3_3[6]) );
  DFFR_X1 sum_3_3_reg_5_ ( .D(n464), .CK(clk), .RN(rst_n), .Q(sum_3_3[5]) );
  DFFR_X1 sum_3_3_reg_4_ ( .D(n465), .CK(clk), .RN(rst_n), .Q(sum_3_3[4]) );
  DFFR_X1 sum_3_3_reg_3_ ( .D(n466), .CK(clk), .RN(rst_n), .Q(sum_3_3[3]) );
  DFFR_X1 sum_3_3_reg_2_ ( .D(n467), .CK(clk), .RN(rst_n), .Q(sum_3_3[2]) );
  DFFR_X1 sum_3_3_reg_1_ ( .D(n468), .CK(clk), .RN(rst_n), .Q(sum_3_3[1]) );
  DFFR_X1 sum_3_3_reg_0_ ( .D(n469), .CK(clk), .RN(rst_n), .Q(sum_3_3[0]) );
  DFFR_X1 sum_2_2_reg_11_ ( .D(N166), .CK(clk), .RN(rst_n), .Q(sum_2_2[11]), 
        .QN(n181) );
  DFFR_X1 sum_2_2_reg_10_ ( .D(N165), .CK(clk), .RN(rst_n), .Q(sum_2_2[10]), 
        .QN(n182) );
  DFFR_X1 sum_2_2_reg_9_ ( .D(N164), .CK(clk), .RN(rst_n), .Q(sum_2_2[9]), 
        .QN(n183) );
  DFFR_X1 sum_2_2_reg_8_ ( .D(n452), .CK(clk), .RN(rst_n), .Q(sum_2_2[8]) );
  DFFR_X1 sum_2_2_reg_7_ ( .D(n453), .CK(clk), .RN(rst_n), .Q(sum_2_2[7]) );
  DFFR_X1 sum_2_2_reg_6_ ( .D(n454), .CK(clk), .RN(rst_n), .Q(sum_2_2[6]) );
  DFFR_X1 sum_2_2_reg_5_ ( .D(n455), .CK(clk), .RN(rst_n), .Q(sum_2_2[5]) );
  DFFR_X1 sum_2_2_reg_4_ ( .D(n456), .CK(clk), .RN(rst_n), .Q(sum_2_2[4]) );
  DFFR_X1 sum_2_2_reg_3_ ( .D(n457), .CK(clk), .RN(rst_n), .Q(sum_2_2[3]) );
  DFFR_X1 sum_2_2_reg_2_ ( .D(n458), .CK(clk), .RN(rst_n), .Q(sum_2_2[2]) );
  DFFR_X1 sum_2_2_reg_1_ ( .D(n459), .CK(clk), .RN(rst_n), .Q(sum_2_2[1]) );
  DFFR_X1 sum_2_2_reg_0_ ( .D(n460), .CK(clk), .RN(rst_n), .Q(sum_2_2[0]) );
  DFFR_X1 sum_1_1_reg_11_ ( .D(N154), .CK(clk), .RN(rst_n), .Q(sum_1_1[11]), 
        .QN(n184) );
  DFFR_X1 sum_1_1_reg_10_ ( .D(N153), .CK(clk), .RN(rst_n), .Q(sum_1_1[10]), 
        .QN(n185) );
  DFFR_X1 sum_1_1_reg_9_ ( .D(N152), .CK(clk), .RN(rst_n), .Q(sum_1_1[9]), 
        .QN(n186) );
  DFFR_X1 sum_1_1_reg_8_ ( .D(n479), .CK(clk), .RN(rst_n), .Q(sum_1_1[8]) );
  DFFR_X1 sum_1_1_reg_7_ ( .D(n480), .CK(clk), .RN(rst_n), .Q(sum_1_1[7]) );
  DFFR_X1 sum_1_1_reg_6_ ( .D(n481), .CK(clk), .RN(rst_n), .Q(sum_1_1[6]) );
  DFFR_X1 sum_1_1_reg_5_ ( .D(n482), .CK(clk), .RN(rst_n), .Q(sum_1_1[5]) );
  DFFR_X1 sum_1_1_reg_4_ ( .D(n483), .CK(clk), .RN(rst_n), .Q(sum_1_1[4]) );
  DFFR_X1 sum_1_1_reg_3_ ( .D(n484), .CK(clk), .RN(rst_n), .Q(sum_1_1[3]) );
  DFFR_X1 sum_1_1_reg_2_ ( .D(n485), .CK(clk), .RN(rst_n), .Q(sum_1_1[2]) );
  DFFR_X1 sum_1_1_reg_1_ ( .D(n486), .CK(clk), .RN(rst_n), .Q(sum_1_1[1]) );
  DFFR_X1 sum_1_1_reg_0_ ( .D(n487), .CK(clk), .RN(rst_n), .Q(sum_1_1[0]) );
  DFFR_X1 sum_reg_11_ ( .D(N242), .CK(clk), .RN(rst_n), .Q(sum_11_), .QN(n187)
         );
  DFFR_X1 sum_reg_10_ ( .D(N241), .CK(clk), .RN(rst_n), .QN(n188) );
  DFFR_X1 sum_reg_9_ ( .D(N240), .CK(clk), .RN(rst_n), .QN(n189) );
  DFFR_X1 sum_reg_8_ ( .D(N239), .CK(clk), .RN(rst_n), .QN(n190) );
  DFFR_X1 sum_reg_7_ ( .D(N238), .CK(clk), .RN(rst_n), .QN(n191) );
  DFFR_X1 sum_reg_6_ ( .D(N237), .CK(clk), .RN(rst_n), .QN(n192) );
  DFFR_X1 sum_reg_5_ ( .D(N236), .CK(clk), .RN(rst_n), .QN(n193) );
  DFFR_X1 sum_reg_4_ ( .D(N235), .CK(clk), .RN(rst_n), .QN(n194) );
  DFFR_X1 sum_reg_3_ ( .D(N234), .CK(clk), .RN(rst_n), .QN(n195) );
  DFFR_X1 sum_reg_2_ ( .D(N233), .CK(clk), .RN(rst_n), .QN(n196) );
  DFFR_X1 sum_reg_1_ ( .D(N232), .CK(clk), .RN(rst_n), .QN(n197) );
  DFFR_X1 sum_reg_0_ ( .D(N231), .CK(clk), .RN(rst_n), .QN(n198) );
  DFFR_X1 overflow_flag_reg_1_ ( .D(N277), .CK(clk), .RN(rst_n), .Q(
        overflow_flag[1]), .QN(n199) );
  DFFR_X1 overflow_flag_reg_0_ ( .D(N276), .CK(clk), .RN(rst_n), .Q(
        overflow_flag[0]) );
  DFFR_X1 data_out_reg_7_ ( .D(n488), .CK(clk), .RN(rst_n), .Q(data_out[7]) );
  DFFR_X1 data_out_reg_6_ ( .D(N274), .CK(clk), .RN(rst_n), .Q(data_out[6]) );
  DFFR_X1 data_out_reg_5_ ( .D(N273), .CK(clk), .RN(rst_n), .Q(data_out[5]) );
  DFFR_X1 data_out_reg_4_ ( .D(N272), .CK(clk), .RN(rst_n), .Q(data_out[4]) );
  DFFR_X1 data_out_reg_3_ ( .D(N271), .CK(clk), .RN(rst_n), .Q(data_out[3]) );
  DFFR_X1 data_out_reg_2_ ( .D(N270), .CK(clk), .RN(rst_n), .Q(data_out[2]) );
  DFFR_X1 data_out_reg_1_ ( .D(N269), .CK(clk), .RN(rst_n), .Q(data_out[1]) );
  DFFR_X1 data_out_reg_0_ ( .D(N268), .CK(clk), .RN(rst_n), .Q(data_out[0]) );
  NAND3_X1 U389 ( .A1(n284), .A2(n187), .A3(judge_enable), .ZN(n273) );
  NAND4_X1 U390 ( .A1(n188), .A2(n191), .A3(n190), .A4(n189), .ZN(n284) );
  FIR_control FIR_control_inst ( .clk(clk), .rst_n(rst_n), .enable(enable), 
        .tap_num(tap_num), .mac_done(mac_done), .configuration(configuration), 
        .done(done[0]), .load_enable(load_enable), .add_enable(add_enable), 
        .expand_enable(expand_enable), .judge_enable(judge_enable), 
        .mac_1_enable(mac_1_enable), .mac_2_enable(mac_2_enable), 
        .mac_3_enable(mac_3_enable), .mac_4_enable(mac_4_enable), 
        .config_enable(config_enable) );
  MAC_0 MAC_inst_1 ( .clk(clk), .rst_n(rst_n), .mac_enable(mac_1_enable), 
        .h_0(h_0), .h_1(h_1), .h_2(h_2), .h_3(h_3), .data_0(data_0), .data_1(
        data_1), .data_2(data_2), .data_3(data_3), .data_out(sum_1), 
        .mac_done(mac_1_done) );
  MAC_3 MAC_inst_2 ( .clk(clk), .rst_n(rst_n), .mac_enable(mac_2_enable), 
        .h_0(h_4), .h_1(h_5), .h_2(h_6), .h_3(h_7), .data_0(data_4), .data_1(
        data_5), .data_2(data_6), .data_3(data_7), .data_out(sum_2), 
        .mac_done(mac_2_done) );
  MAC_2 MAC_inst_3 ( .clk(clk), .rst_n(rst_n), .mac_enable(mac_3_enable), 
        .h_0(h_8), .h_1(h_9), .h_2(h_10), .h_3(h_11), .data_0(data_8), 
        .data_1(data_9), .data_2(data_10), .data_3(data_11), .data_out(sum_3), 
        .mac_done(mac_3_done) );
  MAC_1 MAC_inst_4 ( .clk(clk), .rst_n(rst_n), .mac_enable(mac_4_enable), 
        .h_0(h_12), .h_1(h_13), .h_2(h_14), .h_3(h_15), .data_0(data_12), 
        .data_1(data_13), .data_2(data_14), .data_3(data_15), .data_out(sum_4), 
        .mac_done(mac_4_done) );
  CONFIG CONFIG_inst ( .clk(clk), .rst_n(rst_n), .data_in(data_in), 
        .config_data_enable(config_data_enable), .config_enable(config_enable), 
        .h_0(h_0), .h_1(h_1), .h_2(h_2), .h_3(h_3), .h_4(h_4), .h_5(h_5), 
        .h_6(h_6), .h_7(h_7), .h_8(h_8), .h_9(h_9), .h_10(h_10), .h_11(h_11), 
        .h_12(h_12), .h_13(h_13), .h_14(h_14), .h_15(h_15), .tap_num(tap_num)
         );
  FIR_DW01_add_2 add_1_root_add_0_root_add_228_3 ( .A(sum_1_1), .B(sum_3_3), 
        .CI(1'b0), .SUM({N206, N205, N204, N203, N202, N201, N200, N199, N198, 
        N197, N196, N195}) );
  FIR_DW01_add_1 add_2_root_add_0_root_add_228_3 ( .A(sum_2_2), .B(sum_4_4), 
        .CI(1'b0), .SUM({N218, N217, N216, N215, N214, N213, N212, N211, N210, 
        N209, N208, N207}) );
  FIR_DW01_add_0 add_0_root_add_0_root_add_228_3 ( .A({N218, N217, N216, N215, 
        N214, N213, N212, N211, N210, N209, N208, N207}), .B({N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195}), .CI(1'b0), 
        .SUM({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219}) );
  INV_X1 U391 ( .A(n440), .ZN(n404) );
  INV_X1 U393 ( .A(n440), .ZN(n405) );
  INV_X1 U394 ( .A(n440), .ZN(n412) );
  INV_X1 U395 ( .A(n440), .ZN(n406) );
  INV_X1 U396 ( .A(n440), .ZN(n408) );
  INV_X1 U397 ( .A(n440), .ZN(n409) );
  INV_X1 U398 ( .A(n440), .ZN(n410) );
  INV_X1 U399 ( .A(n440), .ZN(n407) );
  INV_X1 U400 ( .A(n440), .ZN(n411) );
  INV_X1 U402 ( .A(n398), .ZN(n387) );
  INV_X1 U403 ( .A(n398), .ZN(n386) );
  OAI21_X1 U446 ( .B1(n405), .B2(n166), .A(n355), .ZN(N13) );
  NAND2_X1 U447 ( .A1(data_in[0]), .A2(load_enable), .ZN(n355) );
  OAI21_X1 U448 ( .B1(n405), .B2(n165), .A(n344), .ZN(N14) );
  NAND2_X1 U449 ( .A1(data_in[1]), .A2(load_enable), .ZN(n344) );
  OAI21_X1 U450 ( .B1(n405), .B2(n164), .A(n335), .ZN(N15) );
  NAND2_X1 U451 ( .A1(data_in[2]), .A2(load_enable), .ZN(n335) );
  OAI21_X1 U452 ( .B1(n405), .B2(n163), .A(n326), .ZN(N16) );
  NAND2_X1 U453 ( .A1(data_in[3]), .A2(load_enable), .ZN(n326) );
  OAI21_X1 U454 ( .B1(n405), .B2(n162), .A(n317), .ZN(N17) );
  NAND2_X1 U455 ( .A1(data_in[4]), .A2(load_enable), .ZN(n317) );
  OAI21_X1 U456 ( .B1(n405), .B2(n161), .A(n308), .ZN(N18) );
  NAND2_X1 U457 ( .A1(data_in[5]), .A2(load_enable), .ZN(n308) );
  OAI21_X1 U458 ( .B1(n405), .B2(n160), .A(n299), .ZN(N19) );
  NAND2_X1 U459 ( .A1(data_in[6]), .A2(load_enable), .ZN(n299) );
  OAI21_X1 U460 ( .B1(n405), .B2(n159), .A(n297), .ZN(N20) );
  NAND2_X1 U461 ( .A1(data_in[7]), .A2(load_enable), .ZN(n297) );
  OAI21_X1 U462 ( .B1(add_enable), .B2(n187), .A(n285), .ZN(N242) );
  OAI21_X1 U464 ( .B1(add_enable), .B2(n188), .A(n286), .ZN(N241) );
  NAND2_X1 U465 ( .A1(N229), .A2(add_enable), .ZN(n286) );
  OAI21_X1 U466 ( .B1(add_enable), .B2(n189), .A(n287), .ZN(N240) );
  NAND2_X1 U467 ( .A1(N228), .A2(add_enable), .ZN(n287) );
  OAI21_X1 U468 ( .B1(add_enable), .B2(n191), .A(n289), .ZN(N238) );
  NAND2_X1 U469 ( .A1(N226), .A2(add_enable), .ZN(n289) );
  OAI21_X1 U470 ( .B1(add_enable), .B2(n190), .A(n288), .ZN(N239) );
  NAND2_X1 U471 ( .A1(N227), .A2(add_enable), .ZN(n288) );
  OAI21_X1 U472 ( .B1(add_enable), .B2(n192), .A(n290), .ZN(N237) );
  NAND2_X1 U473 ( .A1(N225), .A2(add_enable), .ZN(n290) );
  OAI21_X1 U474 ( .B1(add_enable), .B2(n195), .A(n293), .ZN(N234) );
  NAND2_X1 U475 ( .A1(N222), .A2(add_enable), .ZN(n293) );
  OAI21_X1 U476 ( .B1(add_enable), .B2(n194), .A(n292), .ZN(N235) );
  NAND2_X1 U477 ( .A1(N223), .A2(add_enable), .ZN(n292) );
  OAI21_X1 U478 ( .B1(add_enable), .B2(n193), .A(n291), .ZN(N236) );
  NAND2_X1 U479 ( .A1(N224), .A2(add_enable), .ZN(n291) );
  OAI21_X1 U480 ( .B1(n272), .B2(n187), .A(judge_enable), .ZN(n276) );
  NOR4_X1 U481 ( .A1(n189), .A2(n190), .A3(n191), .A4(n188), .ZN(n272) );
  OAI211_X1 U482 ( .C1(n276), .C2(n198), .A(n273), .B(n283), .ZN(N268) );
  NAND2_X1 U483 ( .A1(data_out[0]), .A2(n489), .ZN(n283) );
  OAI211_X1 U484 ( .C1(n276), .C2(n197), .A(n273), .B(n282), .ZN(N269) );
  NAND2_X1 U485 ( .A1(data_out[1]), .A2(n489), .ZN(n282) );
  OAI211_X1 U486 ( .C1(n276), .C2(n196), .A(n273), .B(n281), .ZN(N270) );
  NAND2_X1 U487 ( .A1(data_out[2]), .A2(n489), .ZN(n281) );
  OAI211_X1 U488 ( .C1(n276), .C2(n195), .A(n273), .B(n280), .ZN(N271) );
  NAND2_X1 U489 ( .A1(data_out[3]), .A2(n489), .ZN(n280) );
  OAI211_X1 U490 ( .C1(n276), .C2(n194), .A(n273), .B(n279), .ZN(N272) );
  NAND2_X1 U491 ( .A1(data_out[4]), .A2(n489), .ZN(n279) );
  OAI211_X1 U492 ( .C1(n276), .C2(n193), .A(n273), .B(n278), .ZN(N273) );
  NAND2_X1 U493 ( .A1(data_out[5]), .A2(n489), .ZN(n278) );
  OAI211_X1 U494 ( .C1(n276), .C2(n192), .A(n273), .B(n277), .ZN(N274) );
  NAND2_X1 U495 ( .A1(data_out[6]), .A2(n489), .ZN(n277) );
  OAI21_X1 U496 ( .B1(judge_enable), .B2(n199), .A(n271), .ZN(N277) );
  OR3_X1 U497 ( .A1(n489), .A2(n272), .A3(n187), .ZN(n271) );
  OR4_X1 U498 ( .A1(mac_2_done), .A2(mac_1_done), .A3(mac_4_done), .A4(
        mac_3_done), .ZN(mac_done) );
  NAND2_X1 U499 ( .A1(n273), .A2(n274), .ZN(N276) );
  NAND2_X1 U500 ( .A1(overflow_flag[0]), .A2(n489), .ZN(n274) );
  OAI21_X1 U501 ( .B1(add_enable), .B2(n197), .A(n295), .ZN(N232) );
  NAND2_X1 U502 ( .A1(N220), .A2(add_enable), .ZN(n295) );
  OAI21_X1 U503 ( .B1(add_enable), .B2(n196), .A(n294), .ZN(N233) );
  NAND2_X1 U504 ( .A1(N221), .A2(add_enable), .ZN(n294) );
  OAI21_X1 U505 ( .B1(add_enable), .B2(n198), .A(n296), .ZN(N231) );
  INV_X1 U507 ( .A(n275), .ZN(n488) );
  AOI22_X1 U508 ( .A1(n489), .A2(data_out[7]), .B1(judge_enable), .B2(sum_11_), 
        .ZN(n275) );
  OAI22_X1 U509 ( .A1(n404), .A2(n174), .B1(n441), .B2(n166), .ZN(N21) );
  OAI22_X1 U510 ( .A1(n404), .A2(n173), .B1(n441), .B2(n165), .ZN(N22) );
  OAI22_X1 U511 ( .A1(n404), .A2(n172), .B1(n441), .B2(n164), .ZN(N23) );
  OAI22_X1 U512 ( .A1(n404), .A2(n171), .B1(n441), .B2(n163), .ZN(N24) );
  OAI22_X1 U513 ( .A1(n404), .A2(n170), .B1(n441), .B2(n162), .ZN(N25) );
  OAI22_X1 U514 ( .A1(n404), .A2(n169), .B1(n441), .B2(n161), .ZN(N26) );
  OAI22_X1 U515 ( .A1(n404), .A2(n168), .B1(n441), .B2(n160), .ZN(N27) );
  OAI22_X1 U516 ( .A1(n404), .A2(n167), .B1(n441), .B2(n159), .ZN(N28) );
  NAND2_X1 U517 ( .A1(sum_1[9]), .A2(expand_enable), .ZN(n332) );
  NAND2_X1 U518 ( .A1(sum_2[9]), .A2(n387), .ZN(n321) );
  NAND2_X1 U519 ( .A1(sum_3[9]), .A2(n386), .ZN(n310) );
  NAND2_X1 U520 ( .A1(sum_4[9]), .A2(expand_enable), .ZN(n298) );
  OAI21_X1 U521 ( .B1(n387), .B2(n186), .A(n332), .ZN(N152) );
  OAI21_X1 U522 ( .B1(n387), .B2(n185), .A(n332), .ZN(N153) );
  OAI21_X1 U523 ( .B1(n387), .B2(n184), .A(n332), .ZN(N154) );
  OAI21_X1 U524 ( .B1(n387), .B2(n183), .A(n321), .ZN(N164) );
  OAI21_X1 U525 ( .B1(n387), .B2(n182), .A(n321), .ZN(N165) );
  OAI21_X1 U526 ( .B1(n387), .B2(n181), .A(n321), .ZN(N166) );
  OAI21_X1 U527 ( .B1(n387), .B2(n180), .A(n310), .ZN(N176) );
  OAI21_X1 U528 ( .B1(n387), .B2(n179), .A(n310), .ZN(N177) );
  OAI21_X1 U529 ( .B1(expand_enable), .B2(n178), .A(n310), .ZN(N178) );
  OAI21_X1 U530 ( .B1(expand_enable), .B2(n177), .A(n298), .ZN(N188) );
  OAI21_X1 U531 ( .B1(expand_enable), .B2(n176), .A(n298), .ZN(N189) );
  OAI21_X1 U532 ( .B1(n387), .B2(n175), .A(n298), .ZN(N190) );
  INV_X1 U533 ( .A(n377), .ZN(n593) );
  AOI22_X1 U534 ( .A1(n441), .A2(data_11[7]), .B1(load_enable), .B2(data_10[7]), .ZN(n377) );
  INV_X1 U535 ( .A(n376), .ZN(n592) );
  AOI22_X1 U536 ( .A1(n442), .A2(data_12[0]), .B1(load_enable), .B2(data_11[0]), .ZN(n376) );
  INV_X1 U537 ( .A(n383), .ZN(n599) );
  AOI22_X1 U538 ( .A1(n441), .A2(data_11[1]), .B1(load_enable), .B2(data_10[1]), .ZN(n383) );
  INV_X1 U539 ( .A(n382), .ZN(n598) );
  AOI22_X1 U540 ( .A1(n442), .A2(data_11[2]), .B1(load_enable), .B2(data_10[2]), .ZN(n382) );
  INV_X1 U541 ( .A(n381), .ZN(n597) );
  AOI22_X1 U542 ( .A1(n441), .A2(data_11[3]), .B1(load_enable), .B2(data_10[3]), .ZN(n381) );
  INV_X1 U543 ( .A(n380), .ZN(n596) );
  AOI22_X1 U544 ( .A1(n442), .A2(data_11[4]), .B1(load_enable), .B2(data_10[4]), .ZN(n380) );
  INV_X1 U545 ( .A(n379), .ZN(n595) );
  AOI22_X1 U546 ( .A1(n441), .A2(data_11[5]), .B1(load_enable), .B2(data_10[5]), .ZN(n379) );
  INV_X1 U547 ( .A(n270), .ZN(n560) );
  AOI22_X1 U548 ( .A1(n442), .A2(data_2[0]), .B1(n410), .B2(data_1[0]), .ZN(
        n270) );
  INV_X1 U549 ( .A(n269), .ZN(n559) );
  AOI22_X1 U550 ( .A1(n442), .A2(data_2[1]), .B1(n410), .B2(data_1[1]), .ZN(
        n269) );
  INV_X1 U551 ( .A(n268), .ZN(n558) );
  AOI22_X1 U552 ( .A1(n442), .A2(data_2[2]), .B1(n410), .B2(data_1[2]), .ZN(
        n268) );
  INV_X1 U553 ( .A(n267), .ZN(n557) );
  AOI22_X1 U554 ( .A1(n440), .A2(data_2[3]), .B1(n410), .B2(data_1[3]), .ZN(
        n267) );
  INV_X1 U555 ( .A(n266), .ZN(n556) );
  AOI22_X1 U556 ( .A1(n440), .A2(data_2[4]), .B1(n410), .B2(data_1[4]), .ZN(
        n266) );
  INV_X1 U557 ( .A(n265), .ZN(n555) );
  AOI22_X1 U558 ( .A1(n440), .A2(data_2[5]), .B1(n410), .B2(data_1[5]), .ZN(
        n265) );
  INV_X1 U559 ( .A(n264), .ZN(n554) );
  AOI22_X1 U560 ( .A1(n440), .A2(data_2[6]), .B1(n410), .B2(data_1[6]), .ZN(
        n264) );
  INV_X1 U561 ( .A(n263), .ZN(n553) );
  AOI22_X1 U562 ( .A1(n440), .A2(data_2[7]), .B1(n410), .B2(data_1[7]), .ZN(
        n263) );
  INV_X1 U563 ( .A(n342), .ZN(n487) );
  AOI22_X1 U564 ( .A1(sum_1_1[0]), .A2(n398), .B1(sum_1[0]), .B2(n386), .ZN(
        n342) );
  INV_X1 U565 ( .A(n341), .ZN(n486) );
  AOI22_X1 U566 ( .A1(sum_1_1[1]), .A2(n398), .B1(sum_1[1]), .B2(expand_enable), .ZN(n341) );
  INV_X1 U567 ( .A(n340), .ZN(n485) );
  AOI22_X1 U568 ( .A1(sum_1_1[2]), .A2(n398), .B1(sum_1[2]), .B2(n387), .ZN(
        n340) );
  INV_X1 U569 ( .A(n339), .ZN(n484) );
  AOI22_X1 U570 ( .A1(sum_1_1[3]), .A2(n398), .B1(sum_1[3]), .B2(n387), .ZN(
        n339) );
  INV_X1 U571 ( .A(n338), .ZN(n483) );
  AOI22_X1 U572 ( .A1(sum_1_1[4]), .A2(n398), .B1(sum_1[4]), .B2(n386), .ZN(
        n338) );
  INV_X1 U573 ( .A(n337), .ZN(n482) );
  AOI22_X1 U574 ( .A1(sum_1_1[5]), .A2(n398), .B1(sum_1[5]), .B2(n386), .ZN(
        n337) );
  INV_X1 U575 ( .A(n336), .ZN(n481) );
  AOI22_X1 U576 ( .A1(sum_1_1[6]), .A2(n398), .B1(sum_1[6]), .B2(n387), .ZN(
        n336) );
  INV_X1 U577 ( .A(n334), .ZN(n480) );
  AOI22_X1 U578 ( .A1(sum_1_1[7]), .A2(n398), .B1(sum_1[7]), .B2(n386), .ZN(
        n334) );
  INV_X1 U579 ( .A(n333), .ZN(n479) );
  AOI22_X1 U580 ( .A1(sum_1_1[8]), .A2(n398), .B1(sum_1[8]), .B2(n387), .ZN(
        n333) );
  INV_X1 U581 ( .A(n331), .ZN(n460) );
  AOI22_X1 U582 ( .A1(sum_2_2[0]), .A2(n398), .B1(sum_2[0]), .B2(n386), .ZN(
        n331) );
  INV_X1 U583 ( .A(n330), .ZN(n459) );
  AOI22_X1 U584 ( .A1(sum_2_2[1]), .A2(n398), .B1(sum_2[1]), .B2(n386), .ZN(
        n330) );
  INV_X1 U585 ( .A(n329), .ZN(n458) );
  AOI22_X1 U586 ( .A1(sum_2_2[2]), .A2(n398), .B1(sum_2[2]), .B2(n386), .ZN(
        n329) );
  INV_X1 U587 ( .A(n328), .ZN(n457) );
  AOI22_X1 U588 ( .A1(sum_2_2[3]), .A2(n398), .B1(sum_2[3]), .B2(n386), .ZN(
        n328) );
  INV_X1 U589 ( .A(n327), .ZN(n456) );
  AOI22_X1 U590 ( .A1(sum_2_2[4]), .A2(n398), .B1(sum_2[4]), .B2(n386), .ZN(
        n327) );
  INV_X1 U591 ( .A(n325), .ZN(n455) );
  AOI22_X1 U592 ( .A1(sum_2_2[5]), .A2(n398), .B1(sum_2[5]), .B2(n386), .ZN(
        n325) );
  INV_X1 U593 ( .A(n324), .ZN(n454) );
  AOI22_X1 U594 ( .A1(sum_2_2[6]), .A2(n398), .B1(sum_2[6]), .B2(n386), .ZN(
        n324) );
  INV_X1 U595 ( .A(n323), .ZN(n453) );
  AOI22_X1 U596 ( .A1(sum_2_2[7]), .A2(n398), .B1(sum_2[7]), .B2(n386), .ZN(
        n323) );
  INV_X1 U597 ( .A(n322), .ZN(n452) );
  AOI22_X1 U598 ( .A1(sum_2_2[8]), .A2(n398), .B1(sum_2[8]), .B2(n386), .ZN(
        n322) );
  INV_X1 U599 ( .A(n320), .ZN(n469) );
  AOI22_X1 U600 ( .A1(sum_3_3[0]), .A2(n398), .B1(sum_3[0]), .B2(expand_enable), .ZN(n320) );
  INV_X1 U601 ( .A(n319), .ZN(n468) );
  AOI22_X1 U602 ( .A1(sum_3_3[1]), .A2(n398), .B1(sum_3[1]), .B2(expand_enable), .ZN(n319) );
  INV_X1 U603 ( .A(n318), .ZN(n467) );
  AOI22_X1 U604 ( .A1(sum_3_3[2]), .A2(n398), .B1(sum_3[2]), .B2(expand_enable), .ZN(n318) );
  INV_X1 U605 ( .A(n316), .ZN(n466) );
  AOI22_X1 U606 ( .A1(sum_3_3[3]), .A2(n398), .B1(sum_3[3]), .B2(expand_enable), .ZN(n316) );
  INV_X1 U607 ( .A(n315), .ZN(n465) );
  AOI22_X1 U608 ( .A1(sum_3_3[4]), .A2(n398), .B1(sum_3[4]), .B2(expand_enable), .ZN(n315) );
  INV_X1 U609 ( .A(n314), .ZN(n464) );
  AOI22_X1 U610 ( .A1(sum_3_3[5]), .A2(n398), .B1(sum_3[5]), .B2(expand_enable), .ZN(n314) );
  INV_X1 U611 ( .A(n313), .ZN(n463) );
  AOI22_X1 U612 ( .A1(sum_3_3[6]), .A2(n398), .B1(sum_3[6]), .B2(expand_enable), .ZN(n313) );
  INV_X1 U613 ( .A(n312), .ZN(n462) );
  AOI22_X1 U614 ( .A1(sum_3_3[7]), .A2(n398), .B1(sum_3[7]), .B2(n386), .ZN(
        n312) );
  INV_X1 U615 ( .A(n311), .ZN(n461) );
  AOI22_X1 U616 ( .A1(sum_3_3[8]), .A2(n398), .B1(sum_3[8]), .B2(n387), .ZN(
        n311) );
  INV_X1 U617 ( .A(n309), .ZN(n478) );
  AOI22_X1 U618 ( .A1(sum_4_4[0]), .A2(n398), .B1(sum_4[0]), .B2(expand_enable), .ZN(n309) );
  INV_X1 U619 ( .A(n307), .ZN(n477) );
  AOI22_X1 U620 ( .A1(sum_4_4[1]), .A2(n398), .B1(sum_4[1]), .B2(expand_enable), .ZN(n307) );
  INV_X1 U621 ( .A(n306), .ZN(n476) );
  AOI22_X1 U622 ( .A1(sum_4_4[2]), .A2(n398), .B1(sum_4[2]), .B2(n387), .ZN(
        n306) );
  INV_X1 U623 ( .A(n305), .ZN(n475) );
  AOI22_X1 U624 ( .A1(sum_4_4[3]), .A2(n398), .B1(sum_4[3]), .B2(n386), .ZN(
        n305) );
  INV_X1 U625 ( .A(n304), .ZN(n474) );
  AOI22_X1 U626 ( .A1(sum_4_4[4]), .A2(n398), .B1(sum_4[4]), .B2(expand_enable), .ZN(n304) );
  INV_X1 U627 ( .A(n303), .ZN(n473) );
  AOI22_X1 U628 ( .A1(sum_4_4[5]), .A2(n398), .B1(sum_4[5]), .B2(n387), .ZN(
        n303) );
  INV_X1 U629 ( .A(n302), .ZN(n472) );
  AOI22_X1 U630 ( .A1(sum_4_4[6]), .A2(n398), .B1(sum_4[6]), .B2(n386), .ZN(
        n302) );
  INV_X1 U631 ( .A(n301), .ZN(n471) );
  AOI22_X1 U632 ( .A1(sum_4_4[7]), .A2(n398), .B1(sum_4[7]), .B2(n386), .ZN(
        n301) );
  INV_X1 U633 ( .A(n300), .ZN(n470) );
  AOI22_X1 U634 ( .A1(sum_4_4[8]), .A2(n398), .B1(sum_4[8]), .B2(expand_enable), .ZN(n300) );
  INV_X1 U635 ( .A(n343), .ZN(n561) );
  AOI22_X1 U636 ( .A1(n442), .A2(data_15[7]), .B1(n410), .B2(data_14[7]), .ZN(
        n343) );
  INV_X1 U637 ( .A(n352), .ZN(n569) );
  AOI22_X1 U638 ( .A1(n445), .A2(data_14[7]), .B1(n411), .B2(data_13[7]), .ZN(
        n352) );
  INV_X1 U639 ( .A(n361), .ZN(n577) );
  AOI22_X1 U640 ( .A1(n445), .A2(data_13[7]), .B1(n411), .B2(data_12[7]), .ZN(
        n361) );
  INV_X1 U641 ( .A(n369), .ZN(n585) );
  AOI22_X1 U642 ( .A1(n442), .A2(data_12[7]), .B1(n412), .B2(data_11[7]), .ZN(
        n369) );
  INV_X1 U643 ( .A(n385), .ZN(n601) );
  AOI22_X1 U644 ( .A1(load_enable), .A2(data_9[7]), .B1(n441), .B2(data_10[7]), 
        .ZN(n385) );
  INV_X1 U645 ( .A(n360), .ZN(n576) );
  AOI22_X1 U646 ( .A1(n444), .A2(data_14[0]), .B1(n411), .B2(data_13[0]), .ZN(
        n360) );
  INV_X1 U647 ( .A(n368), .ZN(n584) );
  AOI22_X1 U648 ( .A1(n442), .A2(data_13[0]), .B1(n412), .B2(data_12[0]), .ZN(
        n368) );
  INV_X1 U649 ( .A(n384), .ZN(n600) );
  AOI22_X1 U650 ( .A1(n442), .A2(data_11[0]), .B1(n405), .B2(data_10[0]), .ZN(
        n384) );
  INV_X1 U651 ( .A(n350), .ZN(n567) );
  AOI22_X1 U652 ( .A1(n445), .A2(data_15[1]), .B1(n411), .B2(data_14[1]), .ZN(
        n350) );
  INV_X1 U653 ( .A(n359), .ZN(n575) );
  AOI22_X1 U654 ( .A1(n444), .A2(data_14[1]), .B1(n411), .B2(data_13[1]), .ZN(
        n359) );
  INV_X1 U655 ( .A(n367), .ZN(n583) );
  AOI22_X1 U656 ( .A1(n443), .A2(data_13[1]), .B1(n412), .B2(data_12[1]), .ZN(
        n367) );
  INV_X1 U657 ( .A(n375), .ZN(n591) );
  AOI22_X1 U658 ( .A1(n442), .A2(data_12[1]), .B1(n412), .B2(data_11[1]), .ZN(
        n375) );
  INV_X1 U659 ( .A(n349), .ZN(n566) );
  AOI22_X1 U660 ( .A1(n445), .A2(data_15[2]), .B1(n411), .B2(data_14[2]), .ZN(
        n349) );
  INV_X1 U661 ( .A(n358), .ZN(n574) );
  AOI22_X1 U662 ( .A1(n444), .A2(data_14[2]), .B1(n411), .B2(data_13[2]), .ZN(
        n358) );
  INV_X1 U663 ( .A(n366), .ZN(n582) );
  AOI22_X1 U664 ( .A1(n442), .A2(data_13[2]), .B1(n412), .B2(data_12[2]), .ZN(
        n366) );
  INV_X1 U665 ( .A(n374), .ZN(n590) );
  AOI22_X1 U666 ( .A1(n442), .A2(data_12[2]), .B1(n412), .B2(data_11[2]), .ZN(
        n374) );
  INV_X1 U667 ( .A(n348), .ZN(n565) );
  AOI22_X1 U668 ( .A1(n442), .A2(data_15[3]), .B1(n410), .B2(data_14[3]), .ZN(
        n348) );
  INV_X1 U669 ( .A(n357), .ZN(n573) );
  AOI22_X1 U670 ( .A1(n443), .A2(data_14[3]), .B1(n411), .B2(data_13[3]), .ZN(
        n357) );
  INV_X1 U671 ( .A(n365), .ZN(n581) );
  AOI22_X1 U672 ( .A1(n442), .A2(data_13[3]), .B1(n412), .B2(data_12[3]), .ZN(
        n365) );
  INV_X1 U673 ( .A(n373), .ZN(n589) );
  AOI22_X1 U674 ( .A1(n442), .A2(data_12[3]), .B1(n412), .B2(data_11[3]), .ZN(
        n373) );
  INV_X1 U675 ( .A(n347), .ZN(n564) );
  AOI22_X1 U676 ( .A1(n445), .A2(data_15[4]), .B1(n410), .B2(data_14[4]), .ZN(
        n347) );
  INV_X1 U677 ( .A(n356), .ZN(n572) );
  AOI22_X1 U678 ( .A1(n443), .A2(data_14[4]), .B1(n411), .B2(data_13[4]), .ZN(
        n356) );
  INV_X1 U679 ( .A(n364), .ZN(n580) );
  AOI22_X1 U680 ( .A1(n442), .A2(data_13[4]), .B1(n412), .B2(data_12[4]), .ZN(
        n364) );
  INV_X1 U681 ( .A(n372), .ZN(n588) );
  AOI22_X1 U682 ( .A1(n444), .A2(data_12[4]), .B1(n412), .B2(data_11[4]), .ZN(
        n372) );
  INV_X1 U683 ( .A(n346), .ZN(n563) );
  AOI22_X1 U684 ( .A1(n442), .A2(data_15[5]), .B1(n410), .B2(data_14[5]), .ZN(
        n346) );
  INV_X1 U685 ( .A(n354), .ZN(n571) );
  AOI22_X1 U686 ( .A1(n442), .A2(data_14[5]), .B1(n411), .B2(data_13[5]), .ZN(
        n354) );
  INV_X1 U687 ( .A(n363), .ZN(n579) );
  AOI22_X1 U688 ( .A1(n444), .A2(data_13[5]), .B1(n412), .B2(data_12[5]), .ZN(
        n363) );
  INV_X1 U689 ( .A(n371), .ZN(n587) );
  AOI22_X1 U690 ( .A1(n442), .A2(data_12[5]), .B1(n412), .B2(data_11[5]), .ZN(
        n371) );
  INV_X1 U691 ( .A(n345), .ZN(n562) );
  AOI22_X1 U692 ( .A1(n442), .A2(data_15[6]), .B1(n410), .B2(data_14[6]), .ZN(
        n345) );
  INV_X1 U693 ( .A(n353), .ZN(n570) );
  AOI22_X1 U694 ( .A1(n443), .A2(data_14[6]), .B1(n411), .B2(data_13[6]), .ZN(
        n353) );
  INV_X1 U695 ( .A(n362), .ZN(n578) );
  AOI22_X1 U696 ( .A1(n442), .A2(data_13[6]), .B1(n411), .B2(data_12[6]), .ZN(
        n362) );
  INV_X1 U697 ( .A(n370), .ZN(n586) );
  AOI22_X1 U698 ( .A1(n442), .A2(data_12[6]), .B1(n412), .B2(data_11[6]), .ZN(
        n370) );
  INV_X1 U699 ( .A(n378), .ZN(n594) );
  AOI22_X1 U700 ( .A1(n442), .A2(data_11[6]), .B1(data_10[6]), .B2(load_enable), .ZN(n378) );
  INV_X1 U701 ( .A(n206), .ZN(n496) );
  AOI22_X1 U702 ( .A1(n404), .A2(data_9[0]), .B1(n441), .B2(data_10[0]), .ZN(
        n206) );
  INV_X1 U703 ( .A(n214), .ZN(n504) );
  AOI22_X1 U704 ( .A1(n441), .A2(data_9[0]), .B1(n407), .B2(data_8[0]), .ZN(
        n214) );
  INV_X1 U705 ( .A(n222), .ZN(n512) );
  AOI22_X1 U706 ( .A1(n445), .A2(data_8[0]), .B1(n407), .B2(data_7[0]), .ZN(
        n222) );
  INV_X1 U707 ( .A(n230), .ZN(n520) );
  AOI22_X1 U708 ( .A1(n445), .A2(data_7[0]), .B1(n406), .B2(data_6[0]), .ZN(
        n230) );
  INV_X1 U709 ( .A(n238), .ZN(n528) );
  AOI22_X1 U710 ( .A1(n444), .A2(data_6[0]), .B1(n407), .B2(data_5[0]), .ZN(
        n238) );
  INV_X1 U711 ( .A(n246), .ZN(n536) );
  AOI22_X1 U712 ( .A1(n444), .A2(data_5[0]), .B1(n408), .B2(data_4[0]), .ZN(
        n246) );
  INV_X1 U713 ( .A(n254), .ZN(n544) );
  AOI22_X1 U714 ( .A1(n443), .A2(data_4[0]), .B1(n409), .B2(data_3[0]), .ZN(
        n254) );
  INV_X1 U715 ( .A(n262), .ZN(n552) );
  AOI22_X1 U716 ( .A1(n443), .A2(data_3[0]), .B1(n409), .B2(data_2[0]), .ZN(
        n262) );
  INV_X1 U717 ( .A(n205), .ZN(n495) );
  AOI22_X1 U718 ( .A1(n404), .A2(data_9[1]), .B1(n440), .B2(data_10[1]), .ZN(
        n205) );
  INV_X1 U719 ( .A(n213), .ZN(n503) );
  AOI22_X1 U720 ( .A1(n441), .A2(data_9[1]), .B1(n405), .B2(data_8[1]), .ZN(
        n213) );
  INV_X1 U721 ( .A(n221), .ZN(n511) );
  AOI22_X1 U722 ( .A1(n445), .A2(data_8[1]), .B1(n407), .B2(data_7[1]), .ZN(
        n221) );
  INV_X1 U723 ( .A(n229), .ZN(n519) );
  AOI22_X1 U724 ( .A1(n445), .A2(data_7[1]), .B1(n406), .B2(data_6[1]), .ZN(
        n229) );
  INV_X1 U725 ( .A(n237), .ZN(n527) );
  AOI22_X1 U726 ( .A1(n444), .A2(data_6[1]), .B1(n407), .B2(data_5[1]), .ZN(
        n237) );
  INV_X1 U727 ( .A(n245), .ZN(n535) );
  AOI22_X1 U728 ( .A1(n444), .A2(data_5[1]), .B1(n408), .B2(data_4[1]), .ZN(
        n245) );
  INV_X1 U729 ( .A(n253), .ZN(n543) );
  AOI22_X1 U730 ( .A1(n443), .A2(data_4[1]), .B1(n409), .B2(data_3[1]), .ZN(
        n253) );
  INV_X1 U731 ( .A(n261), .ZN(n551) );
  AOI22_X1 U732 ( .A1(n443), .A2(data_3[1]), .B1(n409), .B2(data_2[1]), .ZN(
        n261) );
  INV_X1 U733 ( .A(n204), .ZN(n494) );
  AOI22_X1 U734 ( .A1(n404), .A2(data_9[2]), .B1(n440), .B2(data_10[2]), .ZN(
        n204) );
  INV_X1 U735 ( .A(n212), .ZN(n502) );
  AOI22_X1 U736 ( .A1(n441), .A2(data_9[2]), .B1(n406), .B2(data_8[2]), .ZN(
        n212) );
  INV_X1 U737 ( .A(n220), .ZN(n510) );
  AOI22_X1 U738 ( .A1(n445), .A2(data_8[2]), .B1(n406), .B2(data_7[2]), .ZN(
        n220) );
  INV_X1 U739 ( .A(n228), .ZN(n518) );
  AOI22_X1 U740 ( .A1(n445), .A2(data_7[2]), .B1(n408), .B2(data_6[2]), .ZN(
        n228) );
  INV_X1 U741 ( .A(n236), .ZN(n526) );
  AOI22_X1 U742 ( .A1(n444), .A2(data_6[2]), .B1(n407), .B2(data_5[2]), .ZN(
        n236) );
  INV_X1 U743 ( .A(n244), .ZN(n534) );
  AOI22_X1 U744 ( .A1(n444), .A2(data_5[2]), .B1(n408), .B2(data_4[2]), .ZN(
        n244) );
  INV_X1 U745 ( .A(n252), .ZN(n542) );
  AOI22_X1 U746 ( .A1(n443), .A2(data_4[2]), .B1(n409), .B2(data_3[2]), .ZN(
        n252) );
  INV_X1 U747 ( .A(n260), .ZN(n550) );
  AOI22_X1 U748 ( .A1(n443), .A2(data_3[2]), .B1(n409), .B2(data_2[2]), .ZN(
        n260) );
  INV_X1 U749 ( .A(n203), .ZN(n493) );
  AOI22_X1 U750 ( .A1(load_enable), .A2(data_9[3]), .B1(n440), .B2(data_10[3]), 
        .ZN(n203) );
  INV_X1 U751 ( .A(n211), .ZN(n501) );
  AOI22_X1 U752 ( .A1(n440), .A2(data_9[3]), .B1(n405), .B2(data_8[3]), .ZN(
        n211) );
  INV_X1 U753 ( .A(n219), .ZN(n509) );
  AOI22_X1 U754 ( .A1(n445), .A2(data_8[3]), .B1(n406), .B2(data_7[3]), .ZN(
        n219) );
  INV_X1 U755 ( .A(n227), .ZN(n517) );
  AOI22_X1 U756 ( .A1(n445), .A2(data_7[3]), .B1(n407), .B2(data_6[3]), .ZN(
        n227) );
  INV_X1 U757 ( .A(n235), .ZN(n525) );
  AOI22_X1 U758 ( .A1(n444), .A2(data_6[3]), .B1(n407), .B2(data_5[3]), .ZN(
        n235) );
  INV_X1 U759 ( .A(n243), .ZN(n533) );
  AOI22_X1 U760 ( .A1(n444), .A2(data_5[3]), .B1(n408), .B2(data_4[3]), .ZN(
        n243) );
  INV_X1 U761 ( .A(n251), .ZN(n541) );
  AOI22_X1 U762 ( .A1(n443), .A2(data_4[3]), .B1(n409), .B2(data_3[3]), .ZN(
        n251) );
  INV_X1 U763 ( .A(n259), .ZN(n549) );
  AOI22_X1 U764 ( .A1(n443), .A2(data_3[3]), .B1(n409), .B2(data_2[3]), .ZN(
        n259) );
  INV_X1 U765 ( .A(n202), .ZN(n492) );
  AOI22_X1 U766 ( .A1(n404), .A2(data_9[4]), .B1(n440), .B2(data_10[4]), .ZN(
        n202) );
  INV_X1 U767 ( .A(n210), .ZN(n500) );
  AOI22_X1 U768 ( .A1(n440), .A2(data_9[4]), .B1(n405), .B2(data_8[4]), .ZN(
        n210) );
  INV_X1 U769 ( .A(n218), .ZN(n508) );
  AOI22_X1 U770 ( .A1(n445), .A2(data_8[4]), .B1(n407), .B2(data_7[4]), .ZN(
        n218) );
  INV_X1 U771 ( .A(n226), .ZN(n516) );
  AOI22_X1 U772 ( .A1(n445), .A2(data_7[4]), .B1(n406), .B2(data_6[4]), .ZN(
        n226) );
  INV_X1 U773 ( .A(n234), .ZN(n524) );
  AOI22_X1 U774 ( .A1(n444), .A2(data_6[4]), .B1(n409), .B2(data_5[4]), .ZN(
        n234) );
  INV_X1 U775 ( .A(n242), .ZN(n532) );
  AOI22_X1 U776 ( .A1(n444), .A2(data_5[4]), .B1(n408), .B2(data_4[4]), .ZN(
        n242) );
  INV_X1 U777 ( .A(n250), .ZN(n540) );
  AOI22_X1 U778 ( .A1(n443), .A2(data_4[4]), .B1(n408), .B2(data_3[4]), .ZN(
        n250) );
  INV_X1 U779 ( .A(n258), .ZN(n548) );
  AOI22_X1 U780 ( .A1(n443), .A2(data_3[4]), .B1(n409), .B2(data_2[4]), .ZN(
        n258) );
  INV_X1 U781 ( .A(n201), .ZN(n491) );
  AOI22_X1 U782 ( .A1(n404), .A2(data_9[5]), .B1(n440), .B2(data_10[5]), .ZN(
        n201) );
  INV_X1 U783 ( .A(n209), .ZN(n499) );
  AOI22_X1 U784 ( .A1(n440), .A2(data_9[5]), .B1(n406), .B2(data_8[5]), .ZN(
        n209) );
  INV_X1 U785 ( .A(n217), .ZN(n507) );
  AOI22_X1 U786 ( .A1(n445), .A2(data_8[5]), .B1(n406), .B2(data_7[5]), .ZN(
        n217) );
  INV_X1 U787 ( .A(n225), .ZN(n515) );
  AOI22_X1 U788 ( .A1(n445), .A2(data_7[5]), .B1(n406), .B2(data_6[5]), .ZN(
        n225) );
  INV_X1 U789 ( .A(n233), .ZN(n523) );
  AOI22_X1 U790 ( .A1(n444), .A2(data_6[5]), .B1(n406), .B2(data_5[5]), .ZN(
        n233) );
  INV_X1 U791 ( .A(n241), .ZN(n531) );
  AOI22_X1 U792 ( .A1(n444), .A2(data_5[5]), .B1(n408), .B2(data_4[5]), .ZN(
        n241) );
  INV_X1 U793 ( .A(n249), .ZN(n539) );
  AOI22_X1 U794 ( .A1(n443), .A2(data_4[5]), .B1(n408), .B2(data_3[5]), .ZN(
        n249) );
  INV_X1 U795 ( .A(n257), .ZN(n547) );
  AOI22_X1 U796 ( .A1(n443), .A2(data_3[5]), .B1(n409), .B2(data_2[5]), .ZN(
        n257) );
  INV_X1 U797 ( .A(n200), .ZN(n490) );
  AOI22_X1 U798 ( .A1(data_9[6]), .A2(load_enable), .B1(n441), .B2(data_10[6]), 
        .ZN(n200) );
  INV_X1 U799 ( .A(n208), .ZN(n498) );
  AOI22_X1 U800 ( .A1(n440), .A2(data_9[6]), .B1(n407), .B2(data_8[6]), .ZN(
        n208) );
  INV_X1 U801 ( .A(n216), .ZN(n506) );
  AOI22_X1 U802 ( .A1(n441), .A2(data_8[6]), .B1(n406), .B2(data_7[6]), .ZN(
        n216) );
  INV_X1 U803 ( .A(n224), .ZN(n514) );
  AOI22_X1 U804 ( .A1(n445), .A2(data_7[6]), .B1(n407), .B2(data_6[6]), .ZN(
        n224) );
  INV_X1 U805 ( .A(n232), .ZN(n522) );
  AOI22_X1 U806 ( .A1(n442), .A2(data_6[6]), .B1(n406), .B2(data_5[6]), .ZN(
        n232) );
  INV_X1 U807 ( .A(n240), .ZN(n530) );
  AOI22_X1 U808 ( .A1(n444), .A2(data_5[6]), .B1(n408), .B2(data_4[6]), .ZN(
        n240) );
  INV_X1 U809 ( .A(n248), .ZN(n538) );
  AOI22_X1 U810 ( .A1(n443), .A2(data_4[6]), .B1(n408), .B2(data_3[6]), .ZN(
        n248) );
  INV_X1 U811 ( .A(n256), .ZN(n546) );
  AOI22_X1 U812 ( .A1(n443), .A2(data_3[6]), .B1(n409), .B2(data_2[6]), .ZN(
        n256) );
  INV_X1 U813 ( .A(n207), .ZN(n497) );
  AOI22_X1 U814 ( .A1(n440), .A2(data_9[7]), .B1(n405), .B2(data_8[7]), .ZN(
        n207) );
  INV_X1 U815 ( .A(n215), .ZN(n505) );
  AOI22_X1 U816 ( .A1(n441), .A2(data_8[7]), .B1(n407), .B2(data_7[7]), .ZN(
        n215) );
  INV_X1 U817 ( .A(n223), .ZN(n513) );
  AOI22_X1 U818 ( .A1(n445), .A2(data_7[7]), .B1(n406), .B2(data_6[7]), .ZN(
        n223) );
  INV_X1 U819 ( .A(n231), .ZN(n521) );
  AOI22_X1 U820 ( .A1(n445), .A2(data_6[7]), .B1(n407), .B2(data_5[7]), .ZN(
        n231) );
  INV_X1 U821 ( .A(n239), .ZN(n529) );
  AOI22_X1 U822 ( .A1(n444), .A2(data_5[7]), .B1(n408), .B2(data_4[7]), .ZN(
        n239) );
  INV_X1 U823 ( .A(n247), .ZN(n537) );
  AOI22_X1 U824 ( .A1(n444), .A2(data_4[7]), .B1(n408), .B2(data_3[7]), .ZN(
        n247) );
  INV_X1 U825 ( .A(n255), .ZN(n545) );
  AOI22_X1 U826 ( .A1(n443), .A2(data_3[7]), .B1(n409), .B2(data_2[7]), .ZN(
        n255) );
  INV_X1 U827 ( .A(n351), .ZN(n568) );
  AOI22_X1 U828 ( .A1(n443), .A2(data_15[0]), .B1(n411), .B2(data_14[0]), .ZN(
        n351) );
  INV_X1 U835 ( .A(judge_enable), .ZN(n489) );
  INV_X2 U392 ( .A(expand_enable), .ZN(n398) );
  NAND2_X1 U401 ( .A1(N230), .A2(add_enable), .ZN(n285) );
  INV_X1 U404 ( .A(load_enable), .ZN(n441) );
  NAND2_X1 U405 ( .A1(add_enable), .A2(N219), .ZN(n296) );
  INV_X1 U406 ( .A(load_enable), .ZN(n440) );
  INV_X1 U407 ( .A(load_enable), .ZN(n442) );
  INV_X1 U408 ( .A(load_enable), .ZN(n443) );
  INV_X1 U409 ( .A(load_enable), .ZN(n444) );
  INV_X1 U410 ( .A(load_enable), .ZN(n445) );
endmodule

