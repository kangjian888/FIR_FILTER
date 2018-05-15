
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
  NAND2_X1 U3 ( .A1(rst_n), .A2(n34), .ZN(n25) );
  INV_X1 U4 ( .A(n37), .ZN(n6) );
  OAI21_X1 U5 ( .B1(n30), .B2(n40), .A(n6), .ZN(n34) );
  NAND2_X1 U6 ( .A1(n24), .A2(n3), .ZN(n40) );
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
  NAND2_X1 U19 ( .A1(rst_n), .A2(n24), .ZN(n29) );
  OAI22_X1 U20 ( .A1(n13), .A2(n25), .B1(n23), .B2(n33), .ZN(n58) );
  OAI22_X1 U21 ( .A1(n15), .A2(n25), .B1(n23), .B2(n32), .ZN(n57) );
  OAI22_X1 U22 ( .A1(n16), .A2(n25), .B1(n23), .B2(n31), .ZN(n56) );
  OAI22_X1 U23 ( .A1(n18), .A2(n25), .B1(n23), .B2(n28), .ZN(n54) );
  OAI22_X1 U24 ( .A1(n8), .A2(n39), .B1(n2), .B2(n20), .ZN(n60) );
  INV_X1 U25 ( .A(n34), .ZN(n2) );
  INV_X1 U26 ( .A(n36), .ZN(n8) );
  AOI211_X1 U27 ( .C1(n41), .C2(n24), .A(n1), .B(n61), .ZN(n39) );
  NOR2_X1 U28 ( .A1(n1), .A2(configuration[0]), .ZN(n27) );
  OAI21_X1 U29 ( .B1(enable[0]), .B2(n42), .A(n10), .ZN(n41) );
  INV_X1 U30 ( .A(configuration[0]), .ZN(n24) );
  OAI21_X1 U31 ( .B1(n19), .B2(n25), .A(n26), .ZN(n53) );
  OAI21_X1 U32 ( .B1(n35), .B2(n1), .A(n36), .ZN(n59) );
  AOI22_X1 U33 ( .A1(state[7]), .A2(n37), .B1(configuration[0]), .B2(n38), 
        .ZN(n35) );
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
  INV_X1 U108 ( .A(n180), .ZN(n162) );
  INV_X1 U109 ( .A(n181), .ZN(n164) );
  INV_X1 U110 ( .A(n70), .ZN(n166) );
  INV_X1 U111 ( .A(n68), .ZN(n169) );
  INV_X1 U112 ( .A(n179), .ZN(n160) );
  INV_X1 U113 ( .A(b[1]), .ZN(n176) );
  INV_X1 U114 ( .A(b[0]), .ZN(n177) );
  INV_X1 U115 ( .A(b[2]), .ZN(n175) );
  INV_X1 U116 ( .A(a[0]), .ZN(n178) );
  INV_X1 U117 ( .A(a[1]), .ZN(n170) );
  INV_X1 U118 ( .A(a[2]), .ZN(n168) );
  INV_X1 U119 ( .A(a[3]), .ZN(n167) );
  INV_X1 U120 ( .A(a[4]), .ZN(n165) );
  INV_X1 U121 ( .A(a[6]), .ZN(n161) );
  INV_X1 U122 ( .A(a[5]), .ZN(n163) );
  INV_X1 U123 ( .A(b[6]), .ZN(n171) );
  INV_X1 U124 ( .A(b[3]), .ZN(n174) );
  INV_X1 U125 ( .A(b[4]), .ZN(n173) );
  INV_X1 U126 ( .A(b[5]), .ZN(n172) );
  NOR2_X1 U127 ( .A1(n167), .A2(n176), .ZN(n99) );
  NOR2_X1 U128 ( .A1(n167), .A2(n175), .ZN(n98) );
  NOR2_X1 U129 ( .A1(n167), .A2(n174), .ZN(n97) );
  NOR2_X1 U130 ( .A1(n167), .A2(n173), .ZN(n96) );
  NOR2_X1 U131 ( .A1(n167), .A2(n172), .ZN(n95) );
  NOR2_X1 U132 ( .A1(n167), .A2(n171), .ZN(n94) );
  NOR2_X1 U133 ( .A1(n165), .A2(n177), .ZN(n93) );
  NOR2_X1 U134 ( .A1(n176), .A2(n165), .ZN(n92) );
  NOR2_X1 U135 ( .A1(n175), .A2(n165), .ZN(n91) );
  NOR2_X1 U136 ( .A1(n174), .A2(n165), .ZN(n90) );
  NOR2_X1 U137 ( .A1(n173), .A2(n165), .ZN(n89) );
  NOR2_X1 U138 ( .A1(n172), .A2(n165), .ZN(n88) );
  NOR2_X1 U139 ( .A1(n171), .A2(n165), .ZN(n87) );
  NOR2_X1 U140 ( .A1(n177), .A2(n163), .ZN(n86) );
  NOR2_X1 U141 ( .A1(n176), .A2(n163), .ZN(n85) );
  NOR2_X1 U142 ( .A1(n175), .A2(n163), .ZN(n84) );
  NOR2_X1 U143 ( .A1(n174), .A2(n163), .ZN(n83) );
  NOR2_X1 U144 ( .A1(n173), .A2(n163), .ZN(n82) );
  NOR2_X1 U145 ( .A1(n172), .A2(n163), .ZN(n81) );
  NOR2_X1 U146 ( .A1(n171), .A2(n163), .ZN(n80) );
  NOR2_X1 U147 ( .A1(n177), .A2(n161), .ZN(n79) );
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
  NOR2_X1 U159 ( .A1(n168), .A2(n177), .ZN(n185) );
  NOR4_X1 U160 ( .A1(n170), .A2(n178), .A3(n177), .A4(n176), .ZN(n184) );
  NOR2_X1 U161 ( .A1(n175), .A2(n178), .ZN(n119) );
  NOR2_X1 U162 ( .A1(n174), .A2(n178), .ZN(n118) );
  NOR2_X1 U163 ( .A1(n173), .A2(n178), .ZN(n117) );
  NOR2_X1 U164 ( .A1(n172), .A2(n178), .ZN(n116) );
  NOR2_X1 U165 ( .A1(n171), .A2(n178), .ZN(n115) );
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
  NOR2_X1 U178 ( .A1(n167), .A2(n177), .ZN(n100) );
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
  AOI22_X1 U11 ( .A1(mul_temp[8]), .A2(n24), .B1(N22), .B2(flag), .ZN(n55) );
  INV_X1 U14 ( .A(flag), .ZN(n24) );
  INV_X1 U17 ( .A(n54), .ZN(n30) );
  AOI22_X1 U18 ( .A1(mul_temp[9]), .A2(n24), .B1(N23), .B2(flag), .ZN(n54) );
  INV_X1 U19 ( .A(n53), .ZN(n29) );
  AOI22_X1 U20 ( .A1(mul_temp[10]), .A2(n24), .B1(N24), .B2(flag), .ZN(n53) );
  INV_X1 U21 ( .A(n41), .ZN(op_2_ori[1]) );
  AOI22_X1 U22 ( .A1(N14), .A2(op_2[7]), .B1(op_2[1]), .B2(n23), .ZN(n41) );
  INV_X1 U25 ( .A(n40), .ZN(op_2_ori[2]) );
  AOI22_X1 U26 ( .A1(N15), .A2(op_2[7]), .B1(op_2[2]), .B2(n23), .ZN(n40) );
  INV_X1 U29 ( .A(n48), .ZN(op_1_ori[1]) );
  AOI22_X1 U30 ( .A1(N6), .A2(op_1[7]), .B1(op_1[1]), .B2(n25), .ZN(n48) );
  INV_X1 U31 ( .A(n47), .ZN(op_1_ori[2]) );
  AOI22_X1 U32 ( .A1(N7), .A2(op_1[7]), .B1(op_1[2]), .B2(n25), .ZN(n47) );
  INV_X1 U33 ( .A(n46), .ZN(op_1_ori[3]) );
  AOI22_X1 U34 ( .A1(N8), .A2(op_1[7]), .B1(op_1[3]), .B2(n25), .ZN(n46) );
  INV_X1 U35 ( .A(n45), .ZN(op_1_ori[4]) );
  AOI22_X1 U36 ( .A1(N9), .A2(op_1[7]), .B1(op_1[4]), .B2(n25), .ZN(n45) );
  INV_X1 U37 ( .A(n43), .ZN(op_1_ori[6]) );
  AOI22_X1 U38 ( .A1(op_1[7]), .A2(N11), .B1(op_1[6]), .B2(n25), .ZN(n43) );
  INV_X1 U39 ( .A(n44), .ZN(op_1_ori[5]) );
  AOI22_X1 U40 ( .A1(N10), .A2(op_1[7]), .B1(op_1[5]), .B2(n25), .ZN(n44) );
  INV_X1 U41 ( .A(n52), .ZN(n28) );
  AOI22_X1 U42 ( .A1(mul_temp[11]), .A2(n24), .B1(N25), .B2(flag), .ZN(n52) );
  INV_X1 U43 ( .A(n51), .ZN(n27) );
  AOI22_X1 U45 ( .A1(mul_temp[12]), .A2(n24), .B1(N26), .B2(flag), .ZN(n51) );
  INV_X1 U46 ( .A(n50), .ZN(n26) );
  AOI22_X1 U47 ( .A1(mul_temp[13]), .A2(n24), .B1(N27), .B2(flag), .ZN(n50) );
  INV_X1 U48 ( .A(n36), .ZN(op_2_ori[6]) );
  AOI22_X1 U49 ( .A1(op_2[7]), .A2(N19), .B1(op_2[6]), .B2(n23), .ZN(n36) );
  INV_X1 U50 ( .A(n39), .ZN(op_2_ori[3]) );
  AOI22_X1 U51 ( .A1(N16), .A2(op_2[7]), .B1(op_2[3]), .B2(n23), .ZN(n39) );
  INV_X1 U52 ( .A(n38), .ZN(op_2_ori[4]) );
  AOI22_X1 U53 ( .A1(N17), .A2(op_2[7]), .B1(op_2[4]), .B2(n23), .ZN(n38) );
  INV_X1 U54 ( .A(n37), .ZN(op_2_ori[5]) );
  AOI22_X1 U55 ( .A1(N18), .A2(op_2[7]), .B1(op_2[5]), .B2(n23), .ZN(n37) );
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
  XOR2_X1 U10 ( .A(n25), .B(op_2[7]), .Z(n33) );
  XOR2_X1 U12 ( .A(mul_temp[13]), .B(n34), .Z(N27) );
  NAND2_X1 U13 ( .A1(n6), .A2(sub_add_130_b0_carry[5]), .ZN(n34) );
  INV_X1 U15 ( .A(n35), .ZN(n32) );
  OAI21_X1 U16 ( .B1(n24), .B2(flag), .A(N21), .ZN(n35) );
  NOR2_X1 U23 ( .A1(N21), .A2(mul_temp[8]), .ZN(sub_add_130_b0_carry[2]) );
  XOR2_X1 U24 ( .A(op_1[6]), .B(n57), .Z(N11) );
  NAND2_X1 U27 ( .A1(n14), .A2(sub_add_125_b0_carry[5]), .ZN(n57) );
  XOR2_X1 U28 ( .A(op_2[6]), .B(n58), .Z(N19) );
  NAND2_X1 U44 ( .A1(n21), .A2(sub_add_126_b0_carry[5]), .ZN(n58) );
  INV_X1 U56 ( .A(op_2[7]), .ZN(n23) );
  INV_X1 U57 ( .A(op_1[7]), .ZN(n25) );
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
  wire   N16, N17, N18, n6, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n1, n2, n3, n4, n5, n7, n8,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31;
  wire   [2:0] cnt;
  wire   [9:0] ac_sum_new;
  wire   [7:0] op_1;
  wire   [7:0] op_2;
  wire   [9:0] ac_sum_old;

  DFF_X1 cnt_reg_0_ ( .D(N16), .CK(clk), .Q(cnt[0]), .QN(n10) );
  DFF_X1 cnt_reg_2_ ( .D(N18), .CK(clk), .Q(cnt[2]), .QN(n6) );
  DFF_X1 cnt_reg_1_ ( .D(N17), .CK(clk), .Q(cnt[1]), .QN(n9) );
  DFF_X1 op_2_reg_7_ ( .D(n128), .CK(clk), .Q(op_2[7]) );
  DFF_X1 op_2_reg_6_ ( .D(n127), .CK(clk), .Q(op_2[6]) );
  DFF_X1 op_2_reg_5_ ( .D(n126), .CK(clk), .Q(op_2[5]) );
  DFF_X1 op_2_reg_4_ ( .D(n125), .CK(clk), .Q(op_2[4]) );
  DFF_X1 op_2_reg_3_ ( .D(n124), .CK(clk), .Q(op_2[3]) );
  DFF_X1 op_2_reg_2_ ( .D(n123), .CK(clk), .Q(op_2[2]) );
  DFF_X1 op_2_reg_1_ ( .D(n122), .CK(clk), .Q(op_2[1]) );
  DFF_X1 op_2_reg_0_ ( .D(n121), .CK(clk), .Q(op_2[0]) );
  DFF_X1 mac_done_reg_0_ ( .D(n25), .CK(clk), .Q(mac_done[0]) );
  DFF_X1 op_1_reg_7_ ( .D(n120), .CK(clk), .Q(op_1[7]) );
  DFF_X1 op_1_reg_6_ ( .D(n119), .CK(clk), .Q(op_1[6]) );
  DFF_X1 op_1_reg_5_ ( .D(n118), .CK(clk), .Q(op_1[5]) );
  DFF_X1 op_1_reg_4_ ( .D(n117), .CK(clk), .Q(op_1[4]) );
  DFF_X1 op_1_reg_3_ ( .D(n116), .CK(clk), .Q(op_1[3]) );
  DFF_X1 op_1_reg_2_ ( .D(n115), .CK(clk), .Q(op_1[2]) );
  DFF_X1 op_1_reg_1_ ( .D(n114), .CK(clk), .Q(op_1[1]) );
  DFF_X1 op_1_reg_0_ ( .D(n113), .CK(clk), .Q(op_1[0]) );
  DFF_X1 data_out_reg_0_ ( .D(n102), .CK(clk), .Q(data_out[0]) );
  DFF_X1 ac_sum_old_reg_0_ ( .D(n112), .CK(clk), .Q(ac_sum_old[0]), .QN(n20)
         );
  DFF_X1 data_out_reg_1_ ( .D(n101), .CK(clk), .Q(data_out[1]) );
  DFF_X1 ac_sum_old_reg_1_ ( .D(n111), .CK(clk), .Q(ac_sum_old[1]), .QN(n19)
         );
  DFF_X1 data_out_reg_2_ ( .D(n100), .CK(clk), .Q(data_out[2]) );
  DFF_X1 ac_sum_old_reg_2_ ( .D(n110), .CK(clk), .Q(ac_sum_old[2]), .QN(n18)
         );
  DFF_X1 data_out_reg_3_ ( .D(n99), .CK(clk), .Q(data_out[3]) );
  DFF_X1 ac_sum_old_reg_3_ ( .D(n109), .CK(clk), .Q(ac_sum_old[3]), .QN(n17)
         );
  DFF_X1 data_out_reg_4_ ( .D(n98), .CK(clk), .Q(data_out[4]) );
  DFF_X1 ac_sum_old_reg_4_ ( .D(n108), .CK(clk), .Q(ac_sum_old[4]), .QN(n16)
         );
  DFF_X1 data_out_reg_5_ ( .D(n97), .CK(clk), .Q(data_out[5]) );
  DFF_X1 ac_sum_old_reg_5_ ( .D(n107), .CK(clk), .Q(ac_sum_old[5]), .QN(n15)
         );
  DFF_X1 data_out_reg_6_ ( .D(n96), .CK(clk), .Q(data_out[6]) );
  DFF_X1 ac_sum_old_reg_6_ ( .D(n106), .CK(clk), .Q(ac_sum_old[6]), .QN(n14)
         );
  DFF_X1 data_out_reg_7_ ( .D(n95), .CK(clk), .Q(data_out[7]) );
  DFF_X1 ac_sum_old_reg_7_ ( .D(n105), .CK(clk), .Q(ac_sum_old[7]), .QN(n13)
         );
  DFF_X1 data_out_reg_8_ ( .D(n94), .CK(clk), .Q(data_out[8]) );
  DFF_X1 ac_sum_old_reg_8_ ( .D(n104), .CK(clk), .Q(ac_sum_old[8]), .QN(n12)
         );
  DFF_X1 data_out_reg_9_ ( .D(n93), .CK(clk), .Q(data_out[9]) );
  DFF_X1 ac_sum_old_reg_9_ ( .D(n103), .CK(clk), .Q(ac_sum_old[9]), .QN(n11)
         );
  NOR3_X2 U82 ( .A1(n51), .A2(n49), .A3(n50), .ZN(n46) );
  NAND4_X1 U117 ( .A1(cnt[1]), .A2(n29), .A3(cnt[0]), .A4(n6), .ZN(n90) );
  XOR2_X1 U118 ( .A(n10), .B(cnt[1]), .Z(n92) );
  NAND3_X1 U119 ( .A1(mac_enable[0]), .A2(n88), .A3(rst_n), .ZN(n91) );
  NAND3_X1 U120 ( .A1(n10), .A2(n9), .A3(cnt[2]), .ZN(n88) );
  mac_operate_0 mac_operate_inst ( .op_1(op_1), .op_2(op_2), .ac_sum_old(
        ac_sum_old), .ac_sum_new(ac_sum_new) );
  INV_X1 U3 ( .A(ac_sum_new[0]), .ZN(n24) );
  INV_X1 U4 ( .A(n45), .ZN(n27) );
  NAND3_X1 U5 ( .A1(rst_n), .A2(n82), .A3(n46), .ZN(n45) );
  INV_X1 U6 ( .A(n82), .ZN(n30) );
  INV_X1 U7 ( .A(n83), .ZN(n26) );
  NOR2_X2 U8 ( .A1(n83), .A2(n44), .ZN(n50) );
  NOR3_X1 U9 ( .A1(n84), .A2(n87), .A3(n1), .ZN(n86) );
  AND2_X1 U10 ( .A1(n85), .A2(n86), .ZN(n51) );
  AND2_X1 U11 ( .A1(n84), .A2(rst_n), .ZN(n49) );
  NAND2_X1 U12 ( .A1(n86), .A2(n31), .ZN(n83) );
  INV_X1 U13 ( .A(n85), .ZN(n31) );
  NAND2_X1 U14 ( .A1(n26), .A2(n44), .ZN(n34) );
  NAND2_X1 U15 ( .A1(n87), .A2(rst_n), .ZN(n82) );
  INV_X1 U16 ( .A(n32), .ZN(n25) );
  INV_X1 U17 ( .A(ac_sum_new[8]), .ZN(n3) );
  INV_X1 U18 ( .A(ac_sum_new[7]), .ZN(n4) );
  INV_X1 U19 ( .A(ac_sum_new[6]), .ZN(n5) );
  INV_X1 U20 ( .A(ac_sum_new[5]), .ZN(n7) );
  INV_X1 U21 ( .A(ac_sum_new[4]), .ZN(n8) );
  INV_X1 U22 ( .A(ac_sum_new[3]), .ZN(n21) );
  INV_X1 U23 ( .A(ac_sum_new[2]), .ZN(n22) );
  INV_X1 U24 ( .A(ac_sum_new[1]), .ZN(n23) );
  NAND2_X1 U25 ( .A1(n80), .A2(n81), .ZN(n128) );
  AOI222_X1 U26 ( .A1(data_1[7]), .A2(n49), .B1(data_3[7]), .B2(n50), .C1(
        data_2[7]), .C2(n51), .ZN(n81) );
  AOI22_X1 U27 ( .A1(data_0[7]), .A2(n30), .B1(op_2[7]), .B2(n27), .ZN(n80) );
  OAI22_X1 U28 ( .A1(n45), .A2(n11), .B1(n46), .B2(n2), .ZN(n103) );
  OAI22_X1 U29 ( .A1(n45), .A2(n12), .B1(n46), .B2(n3), .ZN(n104) );
  OAI22_X1 U30 ( .A1(n45), .A2(n13), .B1(n46), .B2(n4), .ZN(n105) );
  OAI22_X1 U31 ( .A1(n45), .A2(n14), .B1(n46), .B2(n5), .ZN(n106) );
  OAI22_X1 U32 ( .A1(n45), .A2(n15), .B1(n46), .B2(n7), .ZN(n107) );
  OAI22_X1 U33 ( .A1(n45), .A2(n16), .B1(n46), .B2(n8), .ZN(n108) );
  OAI22_X1 U34 ( .A1(n45), .A2(n17), .B1(n46), .B2(n21), .ZN(n109) );
  OAI22_X1 U35 ( .A1(n45), .A2(n18), .B1(n46), .B2(n22), .ZN(n110) );
  OAI22_X1 U36 ( .A1(n45), .A2(n19), .B1(n46), .B2(n23), .ZN(n111) );
  OAI22_X1 U37 ( .A1(n45), .A2(n20), .B1(n46), .B2(n24), .ZN(n112) );
  NAND2_X1 U38 ( .A1(n64), .A2(n65), .ZN(n120) );
  AOI222_X1 U39 ( .A1(h_1[7]), .A2(n49), .B1(h_3[7]), .B2(n50), .C1(h_2[7]), 
        .C2(n51), .ZN(n65) );
  AOI22_X1 U40 ( .A1(h_0[7]), .A2(n30), .B1(op_1[7]), .B2(n27), .ZN(n64) );
  NAND2_X1 U41 ( .A1(n47), .A2(n48), .ZN(n113) );
  AOI222_X1 U42 ( .A1(h_1[0]), .A2(n49), .B1(h_3[0]), .B2(n50), .C1(h_2[0]), 
        .C2(n51), .ZN(n48) );
  AOI22_X1 U43 ( .A1(h_0[0]), .A2(n30), .B1(op_1[0]), .B2(n27), .ZN(n47) );
  NAND2_X1 U44 ( .A1(n52), .A2(n53), .ZN(n114) );
  AOI222_X1 U45 ( .A1(h_1[1]), .A2(n49), .B1(h_3[1]), .B2(n50), .C1(h_2[1]), 
        .C2(n51), .ZN(n53) );
  AOI22_X1 U46 ( .A1(h_0[1]), .A2(n30), .B1(op_1[1]), .B2(n27), .ZN(n52) );
  NAND2_X1 U47 ( .A1(n54), .A2(n55), .ZN(n115) );
  AOI222_X1 U48 ( .A1(h_1[2]), .A2(n49), .B1(h_3[2]), .B2(n50), .C1(h_2[2]), 
        .C2(n51), .ZN(n55) );
  AOI22_X1 U49 ( .A1(h_0[2]), .A2(n30), .B1(op_1[2]), .B2(n27), .ZN(n54) );
  NAND2_X1 U50 ( .A1(n56), .A2(n57), .ZN(n116) );
  AOI222_X1 U51 ( .A1(h_1[3]), .A2(n49), .B1(h_3[3]), .B2(n50), .C1(h_2[3]), 
        .C2(n51), .ZN(n57) );
  AOI22_X1 U52 ( .A1(h_0[3]), .A2(n30), .B1(op_1[3]), .B2(n27), .ZN(n56) );
  NAND2_X1 U53 ( .A1(n58), .A2(n59), .ZN(n117) );
  AOI222_X1 U54 ( .A1(h_1[4]), .A2(n49), .B1(h_3[4]), .B2(n50), .C1(h_2[4]), 
        .C2(n51), .ZN(n59) );
  AOI22_X1 U55 ( .A1(h_0[4]), .A2(n30), .B1(op_1[4]), .B2(n27), .ZN(n58) );
  NAND2_X1 U56 ( .A1(n60), .A2(n61), .ZN(n118) );
  AOI222_X1 U57 ( .A1(h_1[5]), .A2(n49), .B1(h_3[5]), .B2(n50), .C1(h_2[5]), 
        .C2(n51), .ZN(n61) );
  AOI22_X1 U58 ( .A1(h_0[5]), .A2(n30), .B1(op_1[5]), .B2(n27), .ZN(n60) );
  NAND2_X1 U59 ( .A1(n62), .A2(n63), .ZN(n119) );
  AOI222_X1 U60 ( .A1(h_1[6]), .A2(n49), .B1(h_3[6]), .B2(n50), .C1(h_2[6]), 
        .C2(n51), .ZN(n63) );
  AOI22_X1 U61 ( .A1(h_0[6]), .A2(n30), .B1(op_1[6]), .B2(n27), .ZN(n62) );
  NAND2_X1 U62 ( .A1(n66), .A2(n67), .ZN(n121) );
  AOI222_X1 U63 ( .A1(data_1[0]), .A2(n49), .B1(data_3[0]), .B2(n50), .C1(
        data_2[0]), .C2(n51), .ZN(n67) );
  AOI22_X1 U64 ( .A1(data_0[0]), .A2(n30), .B1(op_2[0]), .B2(n27), .ZN(n66) );
  NAND2_X1 U65 ( .A1(n68), .A2(n69), .ZN(n122) );
  AOI222_X1 U66 ( .A1(data_1[1]), .A2(n49), .B1(data_3[1]), .B2(n50), .C1(
        data_2[1]), .C2(n51), .ZN(n69) );
  AOI22_X1 U67 ( .A1(data_0[1]), .A2(n30), .B1(op_2[1]), .B2(n27), .ZN(n68) );
  NAND2_X1 U68 ( .A1(n70), .A2(n71), .ZN(n123) );
  AOI222_X1 U69 ( .A1(data_1[2]), .A2(n49), .B1(data_3[2]), .B2(n50), .C1(
        data_2[2]), .C2(n51), .ZN(n71) );
  AOI22_X1 U70 ( .A1(data_0[2]), .A2(n30), .B1(op_2[2]), .B2(n27), .ZN(n70) );
  NAND2_X1 U71 ( .A1(n72), .A2(n73), .ZN(n124) );
  AOI222_X1 U72 ( .A1(data_1[3]), .A2(n49), .B1(data_3[3]), .B2(n50), .C1(
        data_2[3]), .C2(n51), .ZN(n73) );
  AOI22_X1 U73 ( .A1(data_0[3]), .A2(n30), .B1(op_2[3]), .B2(n27), .ZN(n72) );
  NAND2_X1 U74 ( .A1(n74), .A2(n75), .ZN(n125) );
  AOI222_X1 U75 ( .A1(data_1[4]), .A2(n49), .B1(data_3[4]), .B2(n50), .C1(
        data_2[4]), .C2(n51), .ZN(n75) );
  AOI22_X1 U76 ( .A1(data_0[4]), .A2(n30), .B1(op_2[4]), .B2(n27), .ZN(n74) );
  NAND2_X1 U77 ( .A1(n76), .A2(n77), .ZN(n126) );
  AOI222_X1 U78 ( .A1(data_1[5]), .A2(n49), .B1(data_3[5]), .B2(n50), .C1(
        data_2[5]), .C2(n51), .ZN(n77) );
  AOI22_X1 U79 ( .A1(data_0[5]), .A2(n30), .B1(op_2[5]), .B2(n27), .ZN(n76) );
  NAND2_X1 U80 ( .A1(n78), .A2(n79), .ZN(n127) );
  AOI222_X1 U81 ( .A1(data_1[6]), .A2(n49), .B1(data_3[6]), .B2(n50), .C1(
        data_2[6]), .C2(n51), .ZN(n79) );
  AOI22_X1 U83 ( .A1(data_0[6]), .A2(n30), .B1(op_2[6]), .B2(n27), .ZN(n78) );
  NAND3_X1 U84 ( .A1(mac_enable[0]), .A2(n28), .A3(n26), .ZN(n32) );
  INV_X1 U85 ( .A(n88), .ZN(n28) );
  NOR2_X1 U86 ( .A1(n91), .A2(cnt[0]), .ZN(N16) );
  OAI21_X1 U87 ( .B1(n32), .B2(n2), .A(n33), .ZN(n93) );
  NAND2_X1 U88 ( .A1(data_out[9]), .A2(n34), .ZN(n33) );
  OAI21_X1 U89 ( .B1(n32), .B2(n3), .A(n35), .ZN(n94) );
  NAND2_X1 U90 ( .A1(data_out[8]), .A2(n34), .ZN(n35) );
  OAI21_X1 U91 ( .B1(n32), .B2(n4), .A(n36), .ZN(n95) );
  NAND2_X1 U92 ( .A1(data_out[7]), .A2(n34), .ZN(n36) );
  OAI21_X1 U93 ( .B1(n32), .B2(n5), .A(n37), .ZN(n96) );
  NAND2_X1 U94 ( .A1(data_out[6]), .A2(n34), .ZN(n37) );
  OAI21_X1 U95 ( .B1(n32), .B2(n7), .A(n38), .ZN(n97) );
  NAND2_X1 U96 ( .A1(data_out[5]), .A2(n34), .ZN(n38) );
  OAI21_X1 U97 ( .B1(n32), .B2(n8), .A(n39), .ZN(n98) );
  NAND2_X1 U98 ( .A1(data_out[4]), .A2(n34), .ZN(n39) );
  OAI21_X1 U99 ( .B1(n32), .B2(n21), .A(n40), .ZN(n99) );
  NAND2_X1 U100 ( .A1(data_out[3]), .A2(n34), .ZN(n40) );
  OAI21_X1 U101 ( .B1(n32), .B2(n22), .A(n41), .ZN(n100) );
  NAND2_X1 U102 ( .A1(data_out[2]), .A2(n34), .ZN(n41) );
  OAI21_X1 U103 ( .B1(n32), .B2(n23), .A(n42), .ZN(n101) );
  NAND2_X1 U104 ( .A1(data_out[1]), .A2(n34), .ZN(n42) );
  OAI21_X1 U105 ( .B1(n32), .B2(n24), .A(n43), .ZN(n102) );
  NAND2_X1 U106 ( .A1(data_out[0]), .A2(n34), .ZN(n43) );
  OAI21_X1 U107 ( .B1(n89), .B2(n6), .A(n90), .ZN(N18) );
  AOI21_X1 U108 ( .B1(n29), .B2(n9), .A(N16), .ZN(n89) );
  INV_X1 U109 ( .A(n91), .ZN(n29) );
  NOR2_X1 U110 ( .A1(n92), .A2(n91), .ZN(N17) );
  INV_X1 U111 ( .A(ac_sum_new[9]), .ZN(n2) );
  NOR3_X1 U112 ( .A1(n44), .A2(cnt[1]), .A3(n10), .ZN(n84) );
  NOR3_X1 U113 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n44), .ZN(n87) );
  NAND2_X1 U114 ( .A1(mac_enable[0]), .A2(n6), .ZN(n44) );
  NOR2_X1 U115 ( .A1(n44), .A2(cnt[0]), .ZN(n85) );
  INV_X1 U116 ( .A(rst_n), .ZN(n1) );
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
  INV_X1 U108 ( .A(n180), .ZN(n162) );
  INV_X1 U109 ( .A(n181), .ZN(n164) );
  INV_X1 U110 ( .A(n70), .ZN(n166) );
  INV_X1 U111 ( .A(n68), .ZN(n169) );
  INV_X1 U112 ( .A(n179), .ZN(n160) );
  INV_X1 U113 ( .A(b[1]), .ZN(n176) );
  INV_X1 U114 ( .A(b[0]), .ZN(n177) );
  INV_X1 U115 ( .A(b[2]), .ZN(n175) );
  INV_X1 U116 ( .A(a[0]), .ZN(n178) );
  INV_X1 U117 ( .A(a[1]), .ZN(n170) );
  INV_X1 U118 ( .A(a[2]), .ZN(n168) );
  INV_X1 U119 ( .A(a[3]), .ZN(n167) );
  INV_X1 U120 ( .A(a[4]), .ZN(n165) );
  INV_X1 U121 ( .A(a[6]), .ZN(n161) );
  INV_X1 U122 ( .A(a[5]), .ZN(n163) );
  INV_X1 U123 ( .A(b[6]), .ZN(n171) );
  INV_X1 U124 ( .A(b[3]), .ZN(n174) );
  INV_X1 U125 ( .A(b[4]), .ZN(n173) );
  INV_X1 U126 ( .A(b[5]), .ZN(n172) );
  NOR2_X1 U127 ( .A1(n167), .A2(n176), .ZN(n99) );
  NOR2_X1 U128 ( .A1(n167), .A2(n175), .ZN(n98) );
  NOR2_X1 U129 ( .A1(n167), .A2(n174), .ZN(n97) );
  NOR2_X1 U130 ( .A1(n167), .A2(n173), .ZN(n96) );
  NOR2_X1 U131 ( .A1(n167), .A2(n172), .ZN(n95) );
  NOR2_X1 U132 ( .A1(n167), .A2(n171), .ZN(n94) );
  NOR2_X1 U133 ( .A1(n165), .A2(n177), .ZN(n93) );
  NOR2_X1 U134 ( .A1(n176), .A2(n165), .ZN(n92) );
  NOR2_X1 U135 ( .A1(n175), .A2(n165), .ZN(n91) );
  NOR2_X1 U136 ( .A1(n174), .A2(n165), .ZN(n90) );
  NOR2_X1 U137 ( .A1(n173), .A2(n165), .ZN(n89) );
  NOR2_X1 U138 ( .A1(n172), .A2(n165), .ZN(n88) );
  NOR2_X1 U139 ( .A1(n171), .A2(n165), .ZN(n87) );
  NOR2_X1 U140 ( .A1(n177), .A2(n163), .ZN(n86) );
  NOR2_X1 U141 ( .A1(n176), .A2(n163), .ZN(n85) );
  NOR2_X1 U142 ( .A1(n175), .A2(n163), .ZN(n84) );
  NOR2_X1 U143 ( .A1(n174), .A2(n163), .ZN(n83) );
  NOR2_X1 U144 ( .A1(n173), .A2(n163), .ZN(n82) );
  NOR2_X1 U145 ( .A1(n172), .A2(n163), .ZN(n81) );
  NOR2_X1 U146 ( .A1(n171), .A2(n163), .ZN(n80) );
  NOR2_X1 U147 ( .A1(n177), .A2(n161), .ZN(n79) );
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
  NOR2_X1 U159 ( .A1(n168), .A2(n177), .ZN(n185) );
  NOR4_X1 U160 ( .A1(n170), .A2(n178), .A3(n177), .A4(n176), .ZN(n184) );
  NOR2_X1 U161 ( .A1(n175), .A2(n178), .ZN(n119) );
  NOR2_X1 U162 ( .A1(n174), .A2(n178), .ZN(n118) );
  NOR2_X1 U163 ( .A1(n173), .A2(n178), .ZN(n117) );
  NOR2_X1 U164 ( .A1(n172), .A2(n178), .ZN(n116) );
  NOR2_X1 U165 ( .A1(n171), .A2(n178), .ZN(n115) );
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
  NOR2_X1 U178 ( .A1(n167), .A2(n177), .ZN(n100) );
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
  AOI22_X1 U11 ( .A1(mul_temp[8]), .A2(n24), .B1(N22), .B2(flag), .ZN(n34) );
  INV_X1 U14 ( .A(flag), .ZN(n24) );
  INV_X1 U17 ( .A(n35), .ZN(n30) );
  AOI22_X1 U18 ( .A1(mul_temp[9]), .A2(n24), .B1(N23), .B2(flag), .ZN(n35) );
  INV_X1 U19 ( .A(n54), .ZN(n29) );
  AOI22_X1 U20 ( .A1(mul_temp[10]), .A2(n24), .B1(N24), .B2(flag), .ZN(n54) );
  INV_X1 U21 ( .A(n66), .ZN(op_2_ori[1]) );
  AOI22_X1 U22 ( .A1(N14), .A2(op_2[7]), .B1(op_2[1]), .B2(n23), .ZN(n66) );
  INV_X1 U25 ( .A(n67), .ZN(op_2_ori[2]) );
  AOI22_X1 U26 ( .A1(N15), .A2(op_2[7]), .B1(op_2[2]), .B2(n23), .ZN(n67) );
  INV_X1 U29 ( .A(n59), .ZN(op_1_ori[1]) );
  AOI22_X1 U30 ( .A1(N6), .A2(op_1[7]), .B1(op_1[1]), .B2(n25), .ZN(n59) );
  INV_X1 U31 ( .A(n60), .ZN(op_1_ori[2]) );
  AOI22_X1 U32 ( .A1(N7), .A2(op_1[7]), .B1(op_1[2]), .B2(n25), .ZN(n60) );
  INV_X1 U33 ( .A(n61), .ZN(op_1_ori[3]) );
  AOI22_X1 U34 ( .A1(N8), .A2(op_1[7]), .B1(op_1[3]), .B2(n25), .ZN(n61) );
  INV_X1 U35 ( .A(n62), .ZN(op_1_ori[4]) );
  AOI22_X1 U36 ( .A1(N9), .A2(op_1[7]), .B1(op_1[4]), .B2(n25), .ZN(n62) );
  INV_X1 U37 ( .A(n64), .ZN(op_1_ori[6]) );
  AOI22_X1 U38 ( .A1(op_1[7]), .A2(N11), .B1(op_1[6]), .B2(n25), .ZN(n64) );
  INV_X1 U39 ( .A(n63), .ZN(op_1_ori[5]) );
  AOI22_X1 U40 ( .A1(N10), .A2(op_1[7]), .B1(op_1[5]), .B2(n25), .ZN(n63) );
  INV_X1 U41 ( .A(n55), .ZN(n28) );
  AOI22_X1 U42 ( .A1(mul_temp[11]), .A2(n24), .B1(N25), .B2(flag), .ZN(n55) );
  INV_X1 U43 ( .A(n56), .ZN(n27) );
  AOI22_X1 U45 ( .A1(mul_temp[12]), .A2(n24), .B1(N26), .B2(flag), .ZN(n56) );
  INV_X1 U46 ( .A(n57), .ZN(n26) );
  AOI22_X1 U47 ( .A1(mul_temp[13]), .A2(n24), .B1(N27), .B2(flag), .ZN(n57) );
  INV_X1 U48 ( .A(n71), .ZN(op_2_ori[6]) );
  AOI22_X1 U49 ( .A1(op_2[7]), .A2(N19), .B1(op_2[6]), .B2(n23), .ZN(n71) );
  INV_X1 U50 ( .A(n68), .ZN(op_2_ori[3]) );
  AOI22_X1 U51 ( .A1(N16), .A2(op_2[7]), .B1(op_2[3]), .B2(n23), .ZN(n68) );
  INV_X1 U52 ( .A(n69), .ZN(op_2_ori[4]) );
  AOI22_X1 U53 ( .A1(N17), .A2(op_2[7]), .B1(op_2[4]), .B2(n23), .ZN(n69) );
  INV_X1 U54 ( .A(n70), .ZN(op_2_ori[5]) );
  AOI22_X1 U55 ( .A1(N18), .A2(op_2[7]), .B1(op_2[5]), .B2(n23), .ZN(n70) );
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
  XOR2_X1 U10 ( .A(n25), .B(op_2[7]), .Z(n73) );
  XOR2_X1 U12 ( .A(mul_temp[13]), .B(n74), .Z(N27) );
  NAND2_X1 U13 ( .A1(n6), .A2(sub_add_130_b0_carry[5]), .ZN(n74) );
  INV_X1 U15 ( .A(n75), .ZN(n32) );
  OAI21_X1 U16 ( .B1(n24), .B2(flag), .A(N21), .ZN(n75) );
  NOR2_X1 U23 ( .A1(N21), .A2(mul_temp[8]), .ZN(sub_add_130_b0_carry[2]) );
  XOR2_X1 U24 ( .A(op_1[6]), .B(n76), .Z(N11) );
  NAND2_X1 U27 ( .A1(n14), .A2(sub_add_125_b0_carry[5]), .ZN(n76) );
  XOR2_X1 U28 ( .A(op_2[6]), .B(n77), .Z(N19) );
  NAND2_X1 U44 ( .A1(n21), .A2(sub_add_126_b0_carry[5]), .ZN(n77) );
  INV_X1 U56 ( .A(op_2[7]), .ZN(n23) );
  INV_X1 U57 ( .A(op_1[7]), .ZN(n25) );
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
  wire   N16, N17, N18, n2, n3, n4, n5, n7, n8, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239;
  wire   [2:0] cnt;
  wire   [9:0] ac_sum_new;
  wire   [7:0] op_1;
  wire   [7:0] op_2;
  wire   [9:0] ac_sum_old;

  DFF_X1 cnt_reg_0_ ( .D(N16), .CK(clk), .Q(cnt[0]), .QN(n237) );
  DFF_X1 cnt_reg_2_ ( .D(N18), .CK(clk), .Q(cnt[2]), .QN(n239) );
  DFF_X1 cnt_reg_1_ ( .D(N17), .CK(clk), .Q(cnt[1]), .QN(n238) );
  DFF_X1 op_2_reg_7_ ( .D(n130), .CK(clk), .Q(op_2[7]) );
  DFF_X1 op_2_reg_6_ ( .D(n131), .CK(clk), .Q(op_2[6]) );
  DFF_X1 op_2_reg_5_ ( .D(n132), .CK(clk), .Q(op_2[5]) );
  DFF_X1 op_2_reg_4_ ( .D(n133), .CK(clk), .Q(op_2[4]) );
  DFF_X1 op_2_reg_3_ ( .D(n134), .CK(clk), .Q(op_2[3]) );
  DFF_X1 op_2_reg_2_ ( .D(n135), .CK(clk), .Q(op_2[2]) );
  DFF_X1 op_2_reg_1_ ( .D(n136), .CK(clk), .Q(op_2[1]) );
  DFF_X1 op_2_reg_0_ ( .D(n137), .CK(clk), .Q(op_2[0]) );
  DFF_X1 mac_done_reg_0_ ( .D(n26), .CK(clk), .Q(mac_done[0]) );
  DFF_X1 op_1_reg_7_ ( .D(n138), .CK(clk), .Q(op_1[7]) );
  DFF_X1 op_1_reg_6_ ( .D(n139), .CK(clk), .Q(op_1[6]) );
  DFF_X1 op_1_reg_5_ ( .D(n140), .CK(clk), .Q(op_1[5]) );
  DFF_X1 op_1_reg_4_ ( .D(n141), .CK(clk), .Q(op_1[4]) );
  DFF_X1 op_1_reg_3_ ( .D(n142), .CK(clk), .Q(op_1[3]) );
  DFF_X1 op_1_reg_2_ ( .D(n143), .CK(clk), .Q(op_1[2]) );
  DFF_X1 op_1_reg_1_ ( .D(n144), .CK(clk), .Q(op_1[1]) );
  DFF_X1 op_1_reg_0_ ( .D(n145), .CK(clk), .Q(op_1[0]) );
  DFF_X1 data_out_reg_0_ ( .D(n156), .CK(clk), .Q(data_out[0]) );
  DFF_X1 ac_sum_old_reg_0_ ( .D(n146), .CK(clk), .Q(ac_sum_old[0]), .QN(n227)
         );
  DFF_X1 data_out_reg_1_ ( .D(n157), .CK(clk), .Q(data_out[1]) );
  DFF_X1 ac_sum_old_reg_1_ ( .D(n147), .CK(clk), .Q(ac_sum_old[1]), .QN(n228)
         );
  DFF_X1 data_out_reg_2_ ( .D(n158), .CK(clk), .Q(data_out[2]) );
  DFF_X1 ac_sum_old_reg_2_ ( .D(n148), .CK(clk), .Q(ac_sum_old[2]), .QN(n229)
         );
  DFF_X1 data_out_reg_3_ ( .D(n159), .CK(clk), .Q(data_out[3]) );
  DFF_X1 ac_sum_old_reg_3_ ( .D(n149), .CK(clk), .Q(ac_sum_old[3]), .QN(n230)
         );
  DFF_X1 data_out_reg_4_ ( .D(n160), .CK(clk), .Q(data_out[4]) );
  DFF_X1 ac_sum_old_reg_4_ ( .D(n150), .CK(clk), .Q(ac_sum_old[4]), .QN(n231)
         );
  DFF_X1 data_out_reg_5_ ( .D(n161), .CK(clk), .Q(data_out[5]) );
  DFF_X1 ac_sum_old_reg_5_ ( .D(n151), .CK(clk), .Q(ac_sum_old[5]), .QN(n232)
         );
  DFF_X1 data_out_reg_6_ ( .D(n162), .CK(clk), .Q(data_out[6]) );
  DFF_X1 ac_sum_old_reg_6_ ( .D(n152), .CK(clk), .Q(ac_sum_old[6]), .QN(n233)
         );
  DFF_X1 data_out_reg_7_ ( .D(n163), .CK(clk), .Q(data_out[7]) );
  DFF_X1 ac_sum_old_reg_7_ ( .D(n153), .CK(clk), .Q(ac_sum_old[7]), .QN(n234)
         );
  DFF_X1 data_out_reg_8_ ( .D(n164), .CK(clk), .Q(data_out[8]) );
  DFF_X1 ac_sum_old_reg_8_ ( .D(n154), .CK(clk), .Q(ac_sum_old[8]), .QN(n235)
         );
  DFF_X1 data_out_reg_9_ ( .D(n165), .CK(clk), .Q(data_out[9]) );
  DFF_X1 ac_sum_old_reg_9_ ( .D(n155), .CK(clk), .Q(ac_sum_old[9]), .QN(n236)
         );
  NOR3_X2 U82 ( .A1(n207), .A2(n209), .A3(n208), .ZN(n212) );
  NAND4_X1 U117 ( .A1(cnt[1]), .A2(n30), .A3(cnt[0]), .A4(n239), .ZN(n168) );
  XOR2_X1 U118 ( .A(n237), .B(cnt[1]), .Z(n166) );
  NAND3_X1 U119 ( .A1(mac_enable[0]), .A2(n170), .A3(rst_n), .ZN(n167) );
  NAND3_X1 U120 ( .A1(n237), .A2(n238), .A3(cnt[2]), .ZN(n170) );
  mac_operate_3 mac_operate_inst ( .op_1(op_1), .op_2(op_2), .ac_sum_old(
        ac_sum_old), .ac_sum_new(ac_sum_new) );
  INV_X1 U3 ( .A(ac_sum_new[0]), .ZN(n25) );
  INV_X1 U4 ( .A(n213), .ZN(n28) );
  NAND3_X1 U5 ( .A1(rst_n), .A2(n176), .A3(n212), .ZN(n213) );
  INV_X1 U6 ( .A(n176), .ZN(n31) );
  INV_X1 U7 ( .A(n175), .ZN(n27) );
  NOR2_X2 U8 ( .A1(n175), .A2(n214), .ZN(n208) );
  NOR3_X1 U9 ( .A1(n174), .A2(n171), .A3(n2), .ZN(n172) );
  AND2_X1 U10 ( .A1(n173), .A2(n172), .ZN(n207) );
  AND2_X1 U11 ( .A1(n174), .A2(rst_n), .ZN(n209) );
  NAND2_X1 U12 ( .A1(n172), .A2(n129), .ZN(n175) );
  INV_X1 U13 ( .A(n173), .ZN(n129) );
  NAND2_X1 U14 ( .A1(n27), .A2(n214), .ZN(n224) );
  NAND2_X1 U15 ( .A1(n171), .A2(rst_n), .ZN(n176) );
  INV_X1 U16 ( .A(n226), .ZN(n26) );
  INV_X1 U17 ( .A(ac_sum_new[8]), .ZN(n4) );
  INV_X1 U18 ( .A(ac_sum_new[7]), .ZN(n5) );
  INV_X1 U19 ( .A(ac_sum_new[6]), .ZN(n7) );
  INV_X1 U20 ( .A(ac_sum_new[5]), .ZN(n8) );
  INV_X1 U21 ( .A(ac_sum_new[4]), .ZN(n21) );
  INV_X1 U22 ( .A(ac_sum_new[3]), .ZN(n22) );
  INV_X1 U23 ( .A(ac_sum_new[2]), .ZN(n23) );
  INV_X1 U24 ( .A(ac_sum_new[1]), .ZN(n24) );
  NAND2_X1 U25 ( .A1(n178), .A2(n177), .ZN(n130) );
  AOI222_X1 U26 ( .A1(data_1[7]), .A2(n209), .B1(data_3[7]), .B2(n208), .C1(
        data_2[7]), .C2(n207), .ZN(n177) );
  AOI22_X1 U27 ( .A1(data_0[7]), .A2(n31), .B1(op_2[7]), .B2(n28), .ZN(n178)
         );
  OAI22_X1 U28 ( .A1(n213), .A2(n236), .B1(n212), .B2(n3), .ZN(n155) );
  OAI22_X1 U29 ( .A1(n213), .A2(n235), .B1(n212), .B2(n4), .ZN(n154) );
  OAI22_X1 U30 ( .A1(n213), .A2(n234), .B1(n212), .B2(n5), .ZN(n153) );
  OAI22_X1 U31 ( .A1(n213), .A2(n233), .B1(n212), .B2(n7), .ZN(n152) );
  OAI22_X1 U32 ( .A1(n213), .A2(n232), .B1(n212), .B2(n8), .ZN(n151) );
  OAI22_X1 U33 ( .A1(n213), .A2(n231), .B1(n212), .B2(n21), .ZN(n150) );
  OAI22_X1 U34 ( .A1(n213), .A2(n230), .B1(n212), .B2(n22), .ZN(n149) );
  OAI22_X1 U35 ( .A1(n213), .A2(n229), .B1(n212), .B2(n23), .ZN(n148) );
  OAI22_X1 U36 ( .A1(n213), .A2(n228), .B1(n212), .B2(n24), .ZN(n147) );
  OAI22_X1 U37 ( .A1(n213), .A2(n227), .B1(n212), .B2(n25), .ZN(n146) );
  NAND2_X1 U38 ( .A1(n194), .A2(n193), .ZN(n138) );
  AOI222_X1 U39 ( .A1(h_1[7]), .A2(n209), .B1(h_3[7]), .B2(n208), .C1(h_2[7]), 
        .C2(n207), .ZN(n193) );
  AOI22_X1 U40 ( .A1(h_0[7]), .A2(n31), .B1(op_1[7]), .B2(n28), .ZN(n194) );
  NAND2_X1 U41 ( .A1(n211), .A2(n210), .ZN(n145) );
  AOI222_X1 U42 ( .A1(h_1[0]), .A2(n209), .B1(h_3[0]), .B2(n208), .C1(h_2[0]), 
        .C2(n207), .ZN(n210) );
  AOI22_X1 U43 ( .A1(h_0[0]), .A2(n31), .B1(op_1[0]), .B2(n28), .ZN(n211) );
  NAND2_X1 U44 ( .A1(n206), .A2(n205), .ZN(n144) );
  AOI222_X1 U45 ( .A1(h_1[1]), .A2(n209), .B1(h_3[1]), .B2(n208), .C1(h_2[1]), 
        .C2(n207), .ZN(n205) );
  AOI22_X1 U46 ( .A1(h_0[1]), .A2(n31), .B1(op_1[1]), .B2(n28), .ZN(n206) );
  NAND2_X1 U47 ( .A1(n204), .A2(n203), .ZN(n143) );
  AOI222_X1 U48 ( .A1(h_1[2]), .A2(n209), .B1(h_3[2]), .B2(n208), .C1(h_2[2]), 
        .C2(n207), .ZN(n203) );
  AOI22_X1 U49 ( .A1(h_0[2]), .A2(n31), .B1(op_1[2]), .B2(n28), .ZN(n204) );
  NAND2_X1 U50 ( .A1(n202), .A2(n201), .ZN(n142) );
  AOI222_X1 U51 ( .A1(h_1[3]), .A2(n209), .B1(h_3[3]), .B2(n208), .C1(h_2[3]), 
        .C2(n207), .ZN(n201) );
  AOI22_X1 U52 ( .A1(h_0[3]), .A2(n31), .B1(op_1[3]), .B2(n28), .ZN(n202) );
  NAND2_X1 U53 ( .A1(n200), .A2(n199), .ZN(n141) );
  AOI222_X1 U54 ( .A1(h_1[4]), .A2(n209), .B1(h_3[4]), .B2(n208), .C1(h_2[4]), 
        .C2(n207), .ZN(n199) );
  AOI22_X1 U55 ( .A1(h_0[4]), .A2(n31), .B1(op_1[4]), .B2(n28), .ZN(n200) );
  NAND2_X1 U56 ( .A1(n198), .A2(n197), .ZN(n140) );
  AOI222_X1 U57 ( .A1(h_1[5]), .A2(n209), .B1(h_3[5]), .B2(n208), .C1(h_2[5]), 
        .C2(n207), .ZN(n197) );
  AOI22_X1 U58 ( .A1(h_0[5]), .A2(n31), .B1(op_1[5]), .B2(n28), .ZN(n198) );
  NAND2_X1 U59 ( .A1(n196), .A2(n195), .ZN(n139) );
  AOI222_X1 U60 ( .A1(h_1[6]), .A2(n209), .B1(h_3[6]), .B2(n208), .C1(h_2[6]), 
        .C2(n207), .ZN(n195) );
  AOI22_X1 U61 ( .A1(h_0[6]), .A2(n31), .B1(op_1[6]), .B2(n28), .ZN(n196) );
  NAND2_X1 U62 ( .A1(n192), .A2(n191), .ZN(n137) );
  AOI222_X1 U63 ( .A1(data_1[0]), .A2(n209), .B1(data_3[0]), .B2(n208), .C1(
        data_2[0]), .C2(n207), .ZN(n191) );
  AOI22_X1 U64 ( .A1(data_0[0]), .A2(n31), .B1(op_2[0]), .B2(n28), .ZN(n192)
         );
  NAND2_X1 U65 ( .A1(n190), .A2(n189), .ZN(n136) );
  AOI222_X1 U66 ( .A1(data_1[1]), .A2(n209), .B1(data_3[1]), .B2(n208), .C1(
        data_2[1]), .C2(n207), .ZN(n189) );
  AOI22_X1 U67 ( .A1(data_0[1]), .A2(n31), .B1(op_2[1]), .B2(n28), .ZN(n190)
         );
  NAND2_X1 U68 ( .A1(n188), .A2(n187), .ZN(n135) );
  AOI222_X1 U69 ( .A1(data_1[2]), .A2(n209), .B1(data_3[2]), .B2(n208), .C1(
        data_2[2]), .C2(n207), .ZN(n187) );
  AOI22_X1 U70 ( .A1(data_0[2]), .A2(n31), .B1(op_2[2]), .B2(n28), .ZN(n188)
         );
  NAND2_X1 U71 ( .A1(n186), .A2(n185), .ZN(n134) );
  AOI222_X1 U72 ( .A1(data_1[3]), .A2(n209), .B1(data_3[3]), .B2(n208), .C1(
        data_2[3]), .C2(n207), .ZN(n185) );
  AOI22_X1 U73 ( .A1(data_0[3]), .A2(n31), .B1(op_2[3]), .B2(n28), .ZN(n186)
         );
  NAND2_X1 U74 ( .A1(n184), .A2(n183), .ZN(n133) );
  AOI222_X1 U75 ( .A1(data_1[4]), .A2(n209), .B1(data_3[4]), .B2(n208), .C1(
        data_2[4]), .C2(n207), .ZN(n183) );
  AOI22_X1 U76 ( .A1(data_0[4]), .A2(n31), .B1(op_2[4]), .B2(n28), .ZN(n184)
         );
  NAND2_X1 U77 ( .A1(n182), .A2(n181), .ZN(n132) );
  AOI222_X1 U78 ( .A1(data_1[5]), .A2(n209), .B1(data_3[5]), .B2(n208), .C1(
        data_2[5]), .C2(n207), .ZN(n181) );
  AOI22_X1 U79 ( .A1(data_0[5]), .A2(n31), .B1(op_2[5]), .B2(n28), .ZN(n182)
         );
  NAND2_X1 U80 ( .A1(n180), .A2(n179), .ZN(n131) );
  AOI222_X1 U81 ( .A1(data_1[6]), .A2(n209), .B1(data_3[6]), .B2(n208), .C1(
        data_2[6]), .C2(n207), .ZN(n179) );
  AOI22_X1 U83 ( .A1(data_0[6]), .A2(n31), .B1(op_2[6]), .B2(n28), .ZN(n180)
         );
  NAND3_X1 U84 ( .A1(mac_enable[0]), .A2(n29), .A3(n27), .ZN(n226) );
  INV_X1 U85 ( .A(n170), .ZN(n29) );
  NOR2_X1 U86 ( .A1(n167), .A2(cnt[0]), .ZN(N16) );
  OAI21_X1 U87 ( .B1(n226), .B2(n3), .A(n225), .ZN(n165) );
  NAND2_X1 U88 ( .A1(data_out[9]), .A2(n224), .ZN(n225) );
  OAI21_X1 U89 ( .B1(n226), .B2(n4), .A(n223), .ZN(n164) );
  NAND2_X1 U90 ( .A1(data_out[8]), .A2(n224), .ZN(n223) );
  OAI21_X1 U91 ( .B1(n226), .B2(n5), .A(n222), .ZN(n163) );
  NAND2_X1 U92 ( .A1(data_out[7]), .A2(n224), .ZN(n222) );
  OAI21_X1 U93 ( .B1(n226), .B2(n7), .A(n221), .ZN(n162) );
  NAND2_X1 U94 ( .A1(data_out[6]), .A2(n224), .ZN(n221) );
  OAI21_X1 U95 ( .B1(n226), .B2(n8), .A(n220), .ZN(n161) );
  NAND2_X1 U96 ( .A1(data_out[5]), .A2(n224), .ZN(n220) );
  OAI21_X1 U97 ( .B1(n226), .B2(n21), .A(n219), .ZN(n160) );
  NAND2_X1 U98 ( .A1(data_out[4]), .A2(n224), .ZN(n219) );
  OAI21_X1 U99 ( .B1(n226), .B2(n22), .A(n218), .ZN(n159) );
  NAND2_X1 U100 ( .A1(data_out[3]), .A2(n224), .ZN(n218) );
  OAI21_X1 U101 ( .B1(n226), .B2(n23), .A(n217), .ZN(n158) );
  NAND2_X1 U102 ( .A1(data_out[2]), .A2(n224), .ZN(n217) );
  OAI21_X1 U103 ( .B1(n226), .B2(n24), .A(n216), .ZN(n157) );
  NAND2_X1 U104 ( .A1(data_out[1]), .A2(n224), .ZN(n216) );
  OAI21_X1 U105 ( .B1(n226), .B2(n25), .A(n215), .ZN(n156) );
  NAND2_X1 U106 ( .A1(data_out[0]), .A2(n224), .ZN(n215) );
  OAI21_X1 U107 ( .B1(n169), .B2(n239), .A(n168), .ZN(N18) );
  AOI21_X1 U108 ( .B1(n30), .B2(n238), .A(N16), .ZN(n169) );
  INV_X1 U109 ( .A(n167), .ZN(n30) );
  NOR2_X1 U110 ( .A1(n166), .A2(n167), .ZN(N17) );
  INV_X1 U111 ( .A(ac_sum_new[9]), .ZN(n3) );
  NOR3_X1 U112 ( .A1(n214), .A2(cnt[1]), .A3(n237), .ZN(n174) );
  NOR3_X1 U113 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n214), .ZN(n171) );
  NAND2_X1 U114 ( .A1(mac_enable[0]), .A2(n239), .ZN(n214) );
  NOR2_X1 U115 ( .A1(n214), .A2(cnt[0]), .ZN(n173) );
  INV_X1 U116 ( .A(rst_n), .ZN(n2) );
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
  INV_X1 U108 ( .A(n180), .ZN(n162) );
  INV_X1 U109 ( .A(n181), .ZN(n164) );
  INV_X1 U110 ( .A(n70), .ZN(n166) );
  INV_X1 U111 ( .A(n68), .ZN(n169) );
  INV_X1 U112 ( .A(n179), .ZN(n160) );
  INV_X1 U113 ( .A(b[1]), .ZN(n176) );
  INV_X1 U114 ( .A(b[0]), .ZN(n177) );
  INV_X1 U115 ( .A(b[2]), .ZN(n175) );
  INV_X1 U116 ( .A(a[0]), .ZN(n178) );
  INV_X1 U117 ( .A(a[1]), .ZN(n170) );
  INV_X1 U118 ( .A(a[2]), .ZN(n168) );
  INV_X1 U119 ( .A(a[3]), .ZN(n167) );
  INV_X1 U120 ( .A(a[4]), .ZN(n165) );
  INV_X1 U121 ( .A(a[6]), .ZN(n161) );
  INV_X1 U122 ( .A(a[5]), .ZN(n163) );
  INV_X1 U123 ( .A(b[6]), .ZN(n171) );
  INV_X1 U124 ( .A(b[3]), .ZN(n174) );
  INV_X1 U125 ( .A(b[4]), .ZN(n173) );
  INV_X1 U126 ( .A(b[5]), .ZN(n172) );
  NOR2_X1 U127 ( .A1(n167), .A2(n176), .ZN(n99) );
  NOR2_X1 U128 ( .A1(n167), .A2(n175), .ZN(n98) );
  NOR2_X1 U129 ( .A1(n167), .A2(n174), .ZN(n97) );
  NOR2_X1 U130 ( .A1(n167), .A2(n173), .ZN(n96) );
  NOR2_X1 U131 ( .A1(n167), .A2(n172), .ZN(n95) );
  NOR2_X1 U132 ( .A1(n167), .A2(n171), .ZN(n94) );
  NOR2_X1 U133 ( .A1(n165), .A2(n177), .ZN(n93) );
  NOR2_X1 U134 ( .A1(n176), .A2(n165), .ZN(n92) );
  NOR2_X1 U135 ( .A1(n175), .A2(n165), .ZN(n91) );
  NOR2_X1 U136 ( .A1(n174), .A2(n165), .ZN(n90) );
  NOR2_X1 U137 ( .A1(n173), .A2(n165), .ZN(n89) );
  NOR2_X1 U138 ( .A1(n172), .A2(n165), .ZN(n88) );
  NOR2_X1 U139 ( .A1(n171), .A2(n165), .ZN(n87) );
  NOR2_X1 U140 ( .A1(n177), .A2(n163), .ZN(n86) );
  NOR2_X1 U141 ( .A1(n176), .A2(n163), .ZN(n85) );
  NOR2_X1 U142 ( .A1(n175), .A2(n163), .ZN(n84) );
  NOR2_X1 U143 ( .A1(n174), .A2(n163), .ZN(n83) );
  NOR2_X1 U144 ( .A1(n173), .A2(n163), .ZN(n82) );
  NOR2_X1 U145 ( .A1(n172), .A2(n163), .ZN(n81) );
  NOR2_X1 U146 ( .A1(n171), .A2(n163), .ZN(n80) );
  NOR2_X1 U147 ( .A1(n177), .A2(n161), .ZN(n79) );
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
  NOR2_X1 U159 ( .A1(n168), .A2(n177), .ZN(n185) );
  NOR4_X1 U160 ( .A1(n170), .A2(n178), .A3(n177), .A4(n176), .ZN(n184) );
  NOR2_X1 U161 ( .A1(n175), .A2(n178), .ZN(n119) );
  NOR2_X1 U162 ( .A1(n174), .A2(n178), .ZN(n118) );
  NOR2_X1 U163 ( .A1(n173), .A2(n178), .ZN(n117) );
  NOR2_X1 U164 ( .A1(n172), .A2(n178), .ZN(n116) );
  NOR2_X1 U165 ( .A1(n171), .A2(n178), .ZN(n115) );
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
  NOR2_X1 U178 ( .A1(n167), .A2(n177), .ZN(n100) );
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
  AOI22_X1 U11 ( .A1(mul_temp[8]), .A2(n24), .B1(N22), .B2(flag), .ZN(n34) );
  INV_X1 U14 ( .A(flag), .ZN(n24) );
  INV_X1 U17 ( .A(n35), .ZN(n30) );
  AOI22_X1 U18 ( .A1(mul_temp[9]), .A2(n24), .B1(N23), .B2(flag), .ZN(n35) );
  INV_X1 U19 ( .A(n54), .ZN(n29) );
  AOI22_X1 U20 ( .A1(mul_temp[10]), .A2(n24), .B1(N24), .B2(flag), .ZN(n54) );
  INV_X1 U21 ( .A(n66), .ZN(op_2_ori[1]) );
  AOI22_X1 U22 ( .A1(N14), .A2(op_2[7]), .B1(op_2[1]), .B2(n23), .ZN(n66) );
  INV_X1 U25 ( .A(n67), .ZN(op_2_ori[2]) );
  AOI22_X1 U26 ( .A1(N15), .A2(op_2[7]), .B1(op_2[2]), .B2(n23), .ZN(n67) );
  INV_X1 U29 ( .A(n59), .ZN(op_1_ori[1]) );
  AOI22_X1 U30 ( .A1(N6), .A2(op_1[7]), .B1(op_1[1]), .B2(n25), .ZN(n59) );
  INV_X1 U31 ( .A(n60), .ZN(op_1_ori[2]) );
  AOI22_X1 U32 ( .A1(N7), .A2(op_1[7]), .B1(op_1[2]), .B2(n25), .ZN(n60) );
  INV_X1 U33 ( .A(n61), .ZN(op_1_ori[3]) );
  AOI22_X1 U34 ( .A1(N8), .A2(op_1[7]), .B1(op_1[3]), .B2(n25), .ZN(n61) );
  INV_X1 U35 ( .A(n62), .ZN(op_1_ori[4]) );
  AOI22_X1 U36 ( .A1(N9), .A2(op_1[7]), .B1(op_1[4]), .B2(n25), .ZN(n62) );
  INV_X1 U37 ( .A(n64), .ZN(op_1_ori[6]) );
  AOI22_X1 U38 ( .A1(op_1[7]), .A2(N11), .B1(op_1[6]), .B2(n25), .ZN(n64) );
  INV_X1 U39 ( .A(n63), .ZN(op_1_ori[5]) );
  AOI22_X1 U40 ( .A1(N10), .A2(op_1[7]), .B1(op_1[5]), .B2(n25), .ZN(n63) );
  INV_X1 U41 ( .A(n55), .ZN(n28) );
  AOI22_X1 U42 ( .A1(mul_temp[11]), .A2(n24), .B1(N25), .B2(flag), .ZN(n55) );
  INV_X1 U43 ( .A(n56), .ZN(n27) );
  AOI22_X1 U45 ( .A1(mul_temp[12]), .A2(n24), .B1(N26), .B2(flag), .ZN(n56) );
  INV_X1 U46 ( .A(n57), .ZN(n26) );
  AOI22_X1 U47 ( .A1(mul_temp[13]), .A2(n24), .B1(N27), .B2(flag), .ZN(n57) );
  INV_X1 U48 ( .A(n71), .ZN(op_2_ori[6]) );
  AOI22_X1 U49 ( .A1(op_2[7]), .A2(N19), .B1(op_2[6]), .B2(n23), .ZN(n71) );
  INV_X1 U50 ( .A(n68), .ZN(op_2_ori[3]) );
  AOI22_X1 U51 ( .A1(N16), .A2(op_2[7]), .B1(op_2[3]), .B2(n23), .ZN(n68) );
  INV_X1 U52 ( .A(n69), .ZN(op_2_ori[4]) );
  AOI22_X1 U53 ( .A1(N17), .A2(op_2[7]), .B1(op_2[4]), .B2(n23), .ZN(n69) );
  INV_X1 U54 ( .A(n70), .ZN(op_2_ori[5]) );
  AOI22_X1 U55 ( .A1(N18), .A2(op_2[7]), .B1(op_2[5]), .B2(n23), .ZN(n70) );
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
  XOR2_X1 U10 ( .A(n25), .B(op_2[7]), .Z(n73) );
  XOR2_X1 U12 ( .A(mul_temp[13]), .B(n74), .Z(N27) );
  NAND2_X1 U13 ( .A1(n6), .A2(sub_add_130_b0_carry[5]), .ZN(n74) );
  INV_X1 U15 ( .A(n75), .ZN(n32) );
  OAI21_X1 U16 ( .B1(n24), .B2(flag), .A(N21), .ZN(n75) );
  NOR2_X1 U23 ( .A1(N21), .A2(mul_temp[8]), .ZN(sub_add_130_b0_carry[2]) );
  XOR2_X1 U24 ( .A(op_1[6]), .B(n76), .Z(N11) );
  NAND2_X1 U27 ( .A1(n14), .A2(sub_add_125_b0_carry[5]), .ZN(n76) );
  XOR2_X1 U28 ( .A(op_2[6]), .B(n77), .Z(N19) );
  NAND2_X1 U44 ( .A1(n21), .A2(sub_add_126_b0_carry[5]), .ZN(n77) );
  INV_X1 U56 ( .A(op_2[7]), .ZN(n23) );
  INV_X1 U57 ( .A(op_1[7]), .ZN(n25) );
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
  wire   N16, N17, N18, n1, n2, n3, n4, n5, n7, n8, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238;
  wire   [2:0] cnt;
  wire   [9:0] ac_sum_new;
  wire   [7:0] op_1;
  wire   [7:0] op_2;
  wire   [9:0] ac_sum_old;

  DFF_X1 cnt_reg_0_ ( .D(N16), .CK(clk), .Q(cnt[0]), .QN(n236) );
  DFF_X1 cnt_reg_2_ ( .D(N18), .CK(clk), .Q(cnt[2]), .QN(n238) );
  DFF_X1 cnt_reg_1_ ( .D(N17), .CK(clk), .Q(cnt[1]), .QN(n237) );
  DFF_X1 op_2_reg_7_ ( .D(n129), .CK(clk), .Q(op_2[7]) );
  DFF_X1 op_2_reg_6_ ( .D(n130), .CK(clk), .Q(op_2[6]) );
  DFF_X1 op_2_reg_5_ ( .D(n131), .CK(clk), .Q(op_2[5]) );
  DFF_X1 op_2_reg_4_ ( .D(n132), .CK(clk), .Q(op_2[4]) );
  DFF_X1 op_2_reg_3_ ( .D(n133), .CK(clk), .Q(op_2[3]) );
  DFF_X1 op_2_reg_2_ ( .D(n134), .CK(clk), .Q(op_2[2]) );
  DFF_X1 op_2_reg_1_ ( .D(n135), .CK(clk), .Q(op_2[1]) );
  DFF_X1 op_2_reg_0_ ( .D(n136), .CK(clk), .Q(op_2[0]) );
  DFF_X1 mac_done_reg_0_ ( .D(n25), .CK(clk), .Q(mac_done[0]) );
  DFF_X1 op_1_reg_7_ ( .D(n137), .CK(clk), .Q(op_1[7]) );
  DFF_X1 op_1_reg_6_ ( .D(n138), .CK(clk), .Q(op_1[6]) );
  DFF_X1 op_1_reg_5_ ( .D(n139), .CK(clk), .Q(op_1[5]) );
  DFF_X1 op_1_reg_4_ ( .D(n140), .CK(clk), .Q(op_1[4]) );
  DFF_X1 op_1_reg_3_ ( .D(n141), .CK(clk), .Q(op_1[3]) );
  DFF_X1 op_1_reg_2_ ( .D(n142), .CK(clk), .Q(op_1[2]) );
  DFF_X1 op_1_reg_1_ ( .D(n143), .CK(clk), .Q(op_1[1]) );
  DFF_X1 op_1_reg_0_ ( .D(n144), .CK(clk), .Q(op_1[0]) );
  DFF_X1 data_out_reg_0_ ( .D(n155), .CK(clk), .Q(data_out[0]) );
  DFF_X1 ac_sum_old_reg_0_ ( .D(n145), .CK(clk), .Q(ac_sum_old[0]), .QN(n226)
         );
  DFF_X1 data_out_reg_1_ ( .D(n156), .CK(clk), .Q(data_out[1]) );
  DFF_X1 ac_sum_old_reg_1_ ( .D(n146), .CK(clk), .Q(ac_sum_old[1]), .QN(n227)
         );
  DFF_X1 data_out_reg_2_ ( .D(n157), .CK(clk), .Q(data_out[2]) );
  DFF_X1 ac_sum_old_reg_2_ ( .D(n147), .CK(clk), .Q(ac_sum_old[2]), .QN(n228)
         );
  DFF_X1 data_out_reg_3_ ( .D(n158), .CK(clk), .Q(data_out[3]) );
  DFF_X1 ac_sum_old_reg_3_ ( .D(n148), .CK(clk), .Q(ac_sum_old[3]), .QN(n229)
         );
  DFF_X1 data_out_reg_4_ ( .D(n159), .CK(clk), .Q(data_out[4]) );
  DFF_X1 ac_sum_old_reg_4_ ( .D(n149), .CK(clk), .Q(ac_sum_old[4]), .QN(n230)
         );
  DFF_X1 data_out_reg_5_ ( .D(n160), .CK(clk), .Q(data_out[5]) );
  DFF_X1 ac_sum_old_reg_5_ ( .D(n150), .CK(clk), .Q(ac_sum_old[5]), .QN(n231)
         );
  DFF_X1 data_out_reg_6_ ( .D(n161), .CK(clk), .Q(data_out[6]) );
  DFF_X1 ac_sum_old_reg_6_ ( .D(n151), .CK(clk), .Q(ac_sum_old[6]), .QN(n232)
         );
  DFF_X1 data_out_reg_7_ ( .D(n162), .CK(clk), .Q(data_out[7]) );
  DFF_X1 ac_sum_old_reg_7_ ( .D(n152), .CK(clk), .Q(ac_sum_old[7]), .QN(n233)
         );
  DFF_X1 data_out_reg_8_ ( .D(n163), .CK(clk), .Q(data_out[8]) );
  DFF_X1 ac_sum_old_reg_8_ ( .D(n153), .CK(clk), .Q(ac_sum_old[8]), .QN(n234)
         );
  DFF_X1 data_out_reg_9_ ( .D(n164), .CK(clk), .Q(data_out[9]) );
  DFF_X1 ac_sum_old_reg_9_ ( .D(n154), .CK(clk), .Q(ac_sum_old[9]), .QN(n235)
         );
  NOR3_X2 U82 ( .A1(n206), .A2(n208), .A3(n207), .ZN(n211) );
  NAND4_X1 U117 ( .A1(cnt[1]), .A2(n29), .A3(cnt[0]), .A4(n238), .ZN(n167) );
  XOR2_X1 U118 ( .A(n236), .B(cnt[1]), .Z(n165) );
  NAND3_X1 U119 ( .A1(mac_enable[0]), .A2(n169), .A3(rst_n), .ZN(n166) );
  NAND3_X1 U120 ( .A1(n236), .A2(n237), .A3(cnt[2]), .ZN(n169) );
  mac_operate_2 mac_operate_inst ( .op_1(op_1), .op_2(op_2), .ac_sum_old(
        ac_sum_old), .ac_sum_new(ac_sum_new) );
  INV_X1 U3 ( .A(ac_sum_new[0]), .ZN(n24) );
  INV_X1 U4 ( .A(n212), .ZN(n27) );
  NAND3_X1 U5 ( .A1(rst_n), .A2(n175), .A3(n211), .ZN(n212) );
  INV_X1 U6 ( .A(n175), .ZN(n30) );
  INV_X1 U7 ( .A(n174), .ZN(n26) );
  NOR2_X2 U8 ( .A1(n174), .A2(n213), .ZN(n207) );
  NOR3_X1 U9 ( .A1(n173), .A2(n170), .A3(n1), .ZN(n171) );
  AND2_X1 U10 ( .A1(n172), .A2(n171), .ZN(n206) );
  AND2_X1 U11 ( .A1(n173), .A2(rst_n), .ZN(n208) );
  NAND2_X1 U12 ( .A1(n171), .A2(n31), .ZN(n174) );
  INV_X1 U13 ( .A(n172), .ZN(n31) );
  NAND2_X1 U14 ( .A1(n26), .A2(n213), .ZN(n223) );
  NAND2_X1 U15 ( .A1(n170), .A2(rst_n), .ZN(n175) );
  INV_X1 U16 ( .A(n225), .ZN(n25) );
  INV_X1 U17 ( .A(ac_sum_new[8]), .ZN(n3) );
  INV_X1 U18 ( .A(ac_sum_new[7]), .ZN(n4) );
  INV_X1 U19 ( .A(ac_sum_new[6]), .ZN(n5) );
  INV_X1 U20 ( .A(ac_sum_new[5]), .ZN(n7) );
  INV_X1 U21 ( .A(ac_sum_new[4]), .ZN(n8) );
  INV_X1 U22 ( .A(ac_sum_new[3]), .ZN(n21) );
  INV_X1 U23 ( .A(ac_sum_new[2]), .ZN(n22) );
  INV_X1 U24 ( .A(ac_sum_new[1]), .ZN(n23) );
  NAND2_X1 U25 ( .A1(n177), .A2(n176), .ZN(n129) );
  AOI222_X1 U26 ( .A1(data_1[7]), .A2(n208), .B1(data_3[7]), .B2(n207), .C1(
        data_2[7]), .C2(n206), .ZN(n176) );
  AOI22_X1 U27 ( .A1(data_0[7]), .A2(n30), .B1(op_2[7]), .B2(n27), .ZN(n177)
         );
  OAI22_X1 U28 ( .A1(n212), .A2(n235), .B1(n211), .B2(n2), .ZN(n154) );
  OAI22_X1 U29 ( .A1(n212), .A2(n234), .B1(n211), .B2(n3), .ZN(n153) );
  OAI22_X1 U30 ( .A1(n212), .A2(n233), .B1(n211), .B2(n4), .ZN(n152) );
  OAI22_X1 U31 ( .A1(n212), .A2(n232), .B1(n211), .B2(n5), .ZN(n151) );
  OAI22_X1 U32 ( .A1(n212), .A2(n231), .B1(n211), .B2(n7), .ZN(n150) );
  OAI22_X1 U33 ( .A1(n212), .A2(n230), .B1(n211), .B2(n8), .ZN(n149) );
  OAI22_X1 U34 ( .A1(n212), .A2(n229), .B1(n211), .B2(n21), .ZN(n148) );
  OAI22_X1 U35 ( .A1(n212), .A2(n228), .B1(n211), .B2(n22), .ZN(n147) );
  OAI22_X1 U36 ( .A1(n212), .A2(n227), .B1(n211), .B2(n23), .ZN(n146) );
  OAI22_X1 U37 ( .A1(n212), .A2(n226), .B1(n211), .B2(n24), .ZN(n145) );
  NAND2_X1 U38 ( .A1(n193), .A2(n192), .ZN(n137) );
  AOI222_X1 U39 ( .A1(h_1[7]), .A2(n208), .B1(h_3[7]), .B2(n207), .C1(h_2[7]), 
        .C2(n206), .ZN(n192) );
  AOI22_X1 U40 ( .A1(h_0[7]), .A2(n30), .B1(op_1[7]), .B2(n27), .ZN(n193) );
  NAND2_X1 U41 ( .A1(n210), .A2(n209), .ZN(n144) );
  AOI222_X1 U42 ( .A1(h_1[0]), .A2(n208), .B1(h_3[0]), .B2(n207), .C1(h_2[0]), 
        .C2(n206), .ZN(n209) );
  AOI22_X1 U43 ( .A1(h_0[0]), .A2(n30), .B1(op_1[0]), .B2(n27), .ZN(n210) );
  NAND2_X1 U44 ( .A1(n205), .A2(n204), .ZN(n143) );
  AOI222_X1 U45 ( .A1(h_1[1]), .A2(n208), .B1(h_3[1]), .B2(n207), .C1(h_2[1]), 
        .C2(n206), .ZN(n204) );
  AOI22_X1 U46 ( .A1(h_0[1]), .A2(n30), .B1(op_1[1]), .B2(n27), .ZN(n205) );
  NAND2_X1 U47 ( .A1(n203), .A2(n202), .ZN(n142) );
  AOI222_X1 U48 ( .A1(h_1[2]), .A2(n208), .B1(h_3[2]), .B2(n207), .C1(h_2[2]), 
        .C2(n206), .ZN(n202) );
  AOI22_X1 U49 ( .A1(h_0[2]), .A2(n30), .B1(op_1[2]), .B2(n27), .ZN(n203) );
  NAND2_X1 U50 ( .A1(n201), .A2(n200), .ZN(n141) );
  AOI222_X1 U51 ( .A1(h_1[3]), .A2(n208), .B1(h_3[3]), .B2(n207), .C1(h_2[3]), 
        .C2(n206), .ZN(n200) );
  AOI22_X1 U52 ( .A1(h_0[3]), .A2(n30), .B1(op_1[3]), .B2(n27), .ZN(n201) );
  NAND2_X1 U53 ( .A1(n199), .A2(n198), .ZN(n140) );
  AOI222_X1 U54 ( .A1(h_1[4]), .A2(n208), .B1(h_3[4]), .B2(n207), .C1(h_2[4]), 
        .C2(n206), .ZN(n198) );
  AOI22_X1 U55 ( .A1(h_0[4]), .A2(n30), .B1(op_1[4]), .B2(n27), .ZN(n199) );
  NAND2_X1 U56 ( .A1(n197), .A2(n196), .ZN(n139) );
  AOI222_X1 U57 ( .A1(h_1[5]), .A2(n208), .B1(h_3[5]), .B2(n207), .C1(h_2[5]), 
        .C2(n206), .ZN(n196) );
  AOI22_X1 U58 ( .A1(h_0[5]), .A2(n30), .B1(op_1[5]), .B2(n27), .ZN(n197) );
  NAND2_X1 U59 ( .A1(n195), .A2(n194), .ZN(n138) );
  AOI222_X1 U60 ( .A1(h_1[6]), .A2(n208), .B1(h_3[6]), .B2(n207), .C1(h_2[6]), 
        .C2(n206), .ZN(n194) );
  AOI22_X1 U61 ( .A1(h_0[6]), .A2(n30), .B1(op_1[6]), .B2(n27), .ZN(n195) );
  NAND2_X1 U62 ( .A1(n191), .A2(n190), .ZN(n136) );
  AOI222_X1 U63 ( .A1(data_1[0]), .A2(n208), .B1(data_3[0]), .B2(n207), .C1(
        data_2[0]), .C2(n206), .ZN(n190) );
  AOI22_X1 U64 ( .A1(data_0[0]), .A2(n30), .B1(op_2[0]), .B2(n27), .ZN(n191)
         );
  NAND2_X1 U65 ( .A1(n189), .A2(n188), .ZN(n135) );
  AOI222_X1 U66 ( .A1(data_1[1]), .A2(n208), .B1(data_3[1]), .B2(n207), .C1(
        data_2[1]), .C2(n206), .ZN(n188) );
  AOI22_X1 U67 ( .A1(data_0[1]), .A2(n30), .B1(op_2[1]), .B2(n27), .ZN(n189)
         );
  NAND2_X1 U68 ( .A1(n187), .A2(n186), .ZN(n134) );
  AOI222_X1 U69 ( .A1(data_1[2]), .A2(n208), .B1(data_3[2]), .B2(n207), .C1(
        data_2[2]), .C2(n206), .ZN(n186) );
  AOI22_X1 U70 ( .A1(data_0[2]), .A2(n30), .B1(op_2[2]), .B2(n27), .ZN(n187)
         );
  NAND2_X1 U71 ( .A1(n185), .A2(n184), .ZN(n133) );
  AOI222_X1 U72 ( .A1(data_1[3]), .A2(n208), .B1(data_3[3]), .B2(n207), .C1(
        data_2[3]), .C2(n206), .ZN(n184) );
  AOI22_X1 U73 ( .A1(data_0[3]), .A2(n30), .B1(op_2[3]), .B2(n27), .ZN(n185)
         );
  NAND2_X1 U74 ( .A1(n183), .A2(n182), .ZN(n132) );
  AOI222_X1 U75 ( .A1(data_1[4]), .A2(n208), .B1(data_3[4]), .B2(n207), .C1(
        data_2[4]), .C2(n206), .ZN(n182) );
  AOI22_X1 U76 ( .A1(data_0[4]), .A2(n30), .B1(op_2[4]), .B2(n27), .ZN(n183)
         );
  NAND2_X1 U77 ( .A1(n181), .A2(n180), .ZN(n131) );
  AOI222_X1 U78 ( .A1(data_1[5]), .A2(n208), .B1(data_3[5]), .B2(n207), .C1(
        data_2[5]), .C2(n206), .ZN(n180) );
  AOI22_X1 U79 ( .A1(data_0[5]), .A2(n30), .B1(op_2[5]), .B2(n27), .ZN(n181)
         );
  NAND2_X1 U80 ( .A1(n179), .A2(n178), .ZN(n130) );
  AOI222_X1 U81 ( .A1(data_1[6]), .A2(n208), .B1(data_3[6]), .B2(n207), .C1(
        data_2[6]), .C2(n206), .ZN(n178) );
  AOI22_X1 U83 ( .A1(data_0[6]), .A2(n30), .B1(op_2[6]), .B2(n27), .ZN(n179)
         );
  NAND3_X1 U84 ( .A1(mac_enable[0]), .A2(n28), .A3(n26), .ZN(n225) );
  INV_X1 U85 ( .A(n169), .ZN(n28) );
  NOR2_X1 U86 ( .A1(n166), .A2(cnt[0]), .ZN(N16) );
  OAI21_X1 U87 ( .B1(n225), .B2(n2), .A(n224), .ZN(n164) );
  NAND2_X1 U88 ( .A1(data_out[9]), .A2(n223), .ZN(n224) );
  OAI21_X1 U89 ( .B1(n225), .B2(n3), .A(n222), .ZN(n163) );
  NAND2_X1 U90 ( .A1(data_out[8]), .A2(n223), .ZN(n222) );
  OAI21_X1 U91 ( .B1(n225), .B2(n4), .A(n221), .ZN(n162) );
  NAND2_X1 U92 ( .A1(data_out[7]), .A2(n223), .ZN(n221) );
  OAI21_X1 U93 ( .B1(n225), .B2(n5), .A(n220), .ZN(n161) );
  NAND2_X1 U94 ( .A1(data_out[6]), .A2(n223), .ZN(n220) );
  OAI21_X1 U95 ( .B1(n225), .B2(n7), .A(n219), .ZN(n160) );
  NAND2_X1 U96 ( .A1(data_out[5]), .A2(n223), .ZN(n219) );
  OAI21_X1 U97 ( .B1(n225), .B2(n8), .A(n218), .ZN(n159) );
  NAND2_X1 U98 ( .A1(data_out[4]), .A2(n223), .ZN(n218) );
  OAI21_X1 U99 ( .B1(n225), .B2(n21), .A(n217), .ZN(n158) );
  NAND2_X1 U100 ( .A1(data_out[3]), .A2(n223), .ZN(n217) );
  OAI21_X1 U101 ( .B1(n225), .B2(n22), .A(n216), .ZN(n157) );
  NAND2_X1 U102 ( .A1(data_out[2]), .A2(n223), .ZN(n216) );
  OAI21_X1 U103 ( .B1(n225), .B2(n23), .A(n215), .ZN(n156) );
  NAND2_X1 U104 ( .A1(data_out[1]), .A2(n223), .ZN(n215) );
  OAI21_X1 U105 ( .B1(n225), .B2(n24), .A(n214), .ZN(n155) );
  NAND2_X1 U106 ( .A1(data_out[0]), .A2(n223), .ZN(n214) );
  OAI21_X1 U107 ( .B1(n168), .B2(n238), .A(n167), .ZN(N18) );
  AOI21_X1 U108 ( .B1(n29), .B2(n237), .A(N16), .ZN(n168) );
  INV_X1 U109 ( .A(n166), .ZN(n29) );
  NOR2_X1 U110 ( .A1(n165), .A2(n166), .ZN(N17) );
  INV_X1 U111 ( .A(ac_sum_new[9]), .ZN(n2) );
  NOR3_X1 U112 ( .A1(n213), .A2(cnt[1]), .A3(n236), .ZN(n173) );
  NOR3_X1 U113 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n213), .ZN(n170) );
  NAND2_X1 U114 ( .A1(mac_enable[0]), .A2(n238), .ZN(n213) );
  NOR2_X1 U115 ( .A1(n213), .A2(cnt[0]), .ZN(n172) );
  INV_X1 U116 ( .A(rst_n), .ZN(n1) );
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
  INV_X1 U108 ( .A(n180), .ZN(n162) );
  INV_X1 U109 ( .A(n181), .ZN(n164) );
  INV_X1 U110 ( .A(n70), .ZN(n166) );
  INV_X1 U111 ( .A(n68), .ZN(n169) );
  INV_X1 U112 ( .A(n179), .ZN(n160) );
  INV_X1 U113 ( .A(b[1]), .ZN(n176) );
  INV_X1 U114 ( .A(b[0]), .ZN(n177) );
  INV_X1 U115 ( .A(b[2]), .ZN(n175) );
  INV_X1 U116 ( .A(a[0]), .ZN(n178) );
  INV_X1 U117 ( .A(a[1]), .ZN(n170) );
  INV_X1 U118 ( .A(a[2]), .ZN(n168) );
  INV_X1 U119 ( .A(a[3]), .ZN(n167) );
  INV_X1 U120 ( .A(a[4]), .ZN(n165) );
  INV_X1 U121 ( .A(a[6]), .ZN(n161) );
  INV_X1 U122 ( .A(a[5]), .ZN(n163) );
  INV_X1 U123 ( .A(b[6]), .ZN(n171) );
  INV_X1 U124 ( .A(b[3]), .ZN(n174) );
  INV_X1 U125 ( .A(b[4]), .ZN(n173) );
  INV_X1 U126 ( .A(b[5]), .ZN(n172) );
  NOR2_X1 U127 ( .A1(n167), .A2(n176), .ZN(n99) );
  NOR2_X1 U128 ( .A1(n167), .A2(n175), .ZN(n98) );
  NOR2_X1 U129 ( .A1(n167), .A2(n174), .ZN(n97) );
  NOR2_X1 U130 ( .A1(n167), .A2(n173), .ZN(n96) );
  NOR2_X1 U131 ( .A1(n167), .A2(n172), .ZN(n95) );
  NOR2_X1 U132 ( .A1(n167), .A2(n171), .ZN(n94) );
  NOR2_X1 U133 ( .A1(n165), .A2(n177), .ZN(n93) );
  NOR2_X1 U134 ( .A1(n176), .A2(n165), .ZN(n92) );
  NOR2_X1 U135 ( .A1(n175), .A2(n165), .ZN(n91) );
  NOR2_X1 U136 ( .A1(n174), .A2(n165), .ZN(n90) );
  NOR2_X1 U137 ( .A1(n173), .A2(n165), .ZN(n89) );
  NOR2_X1 U138 ( .A1(n172), .A2(n165), .ZN(n88) );
  NOR2_X1 U139 ( .A1(n171), .A2(n165), .ZN(n87) );
  NOR2_X1 U140 ( .A1(n177), .A2(n163), .ZN(n86) );
  NOR2_X1 U141 ( .A1(n176), .A2(n163), .ZN(n85) );
  NOR2_X1 U142 ( .A1(n175), .A2(n163), .ZN(n84) );
  NOR2_X1 U143 ( .A1(n174), .A2(n163), .ZN(n83) );
  NOR2_X1 U144 ( .A1(n173), .A2(n163), .ZN(n82) );
  NOR2_X1 U145 ( .A1(n172), .A2(n163), .ZN(n81) );
  NOR2_X1 U146 ( .A1(n171), .A2(n163), .ZN(n80) );
  NOR2_X1 U147 ( .A1(n177), .A2(n161), .ZN(n79) );
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
  NOR2_X1 U159 ( .A1(n168), .A2(n177), .ZN(n185) );
  NOR4_X1 U160 ( .A1(n170), .A2(n178), .A3(n177), .A4(n176), .ZN(n184) );
  NOR2_X1 U161 ( .A1(n175), .A2(n178), .ZN(n119) );
  NOR2_X1 U162 ( .A1(n174), .A2(n178), .ZN(n118) );
  NOR2_X1 U163 ( .A1(n173), .A2(n178), .ZN(n117) );
  NOR2_X1 U164 ( .A1(n172), .A2(n178), .ZN(n116) );
  NOR2_X1 U165 ( .A1(n171), .A2(n178), .ZN(n115) );
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
  NOR2_X1 U178 ( .A1(n167), .A2(n177), .ZN(n100) );
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
  AOI22_X1 U11 ( .A1(mul_temp[8]), .A2(n24), .B1(N22), .B2(flag), .ZN(n34) );
  INV_X1 U14 ( .A(flag), .ZN(n24) );
  INV_X1 U17 ( .A(n35), .ZN(n30) );
  AOI22_X1 U18 ( .A1(mul_temp[9]), .A2(n24), .B1(N23), .B2(flag), .ZN(n35) );
  INV_X1 U19 ( .A(n54), .ZN(n29) );
  AOI22_X1 U20 ( .A1(mul_temp[10]), .A2(n24), .B1(N24), .B2(flag), .ZN(n54) );
  INV_X1 U21 ( .A(n66), .ZN(op_2_ori[1]) );
  AOI22_X1 U22 ( .A1(N14), .A2(op_2[7]), .B1(op_2[1]), .B2(n23), .ZN(n66) );
  INV_X1 U25 ( .A(n67), .ZN(op_2_ori[2]) );
  AOI22_X1 U26 ( .A1(N15), .A2(op_2[7]), .B1(op_2[2]), .B2(n23), .ZN(n67) );
  INV_X1 U29 ( .A(n59), .ZN(op_1_ori[1]) );
  AOI22_X1 U30 ( .A1(N6), .A2(op_1[7]), .B1(op_1[1]), .B2(n25), .ZN(n59) );
  INV_X1 U31 ( .A(n60), .ZN(op_1_ori[2]) );
  AOI22_X1 U32 ( .A1(N7), .A2(op_1[7]), .B1(op_1[2]), .B2(n25), .ZN(n60) );
  INV_X1 U33 ( .A(n61), .ZN(op_1_ori[3]) );
  AOI22_X1 U34 ( .A1(N8), .A2(op_1[7]), .B1(op_1[3]), .B2(n25), .ZN(n61) );
  INV_X1 U35 ( .A(n62), .ZN(op_1_ori[4]) );
  AOI22_X1 U36 ( .A1(N9), .A2(op_1[7]), .B1(op_1[4]), .B2(n25), .ZN(n62) );
  INV_X1 U37 ( .A(n64), .ZN(op_1_ori[6]) );
  AOI22_X1 U38 ( .A1(op_1[7]), .A2(N11), .B1(op_1[6]), .B2(n25), .ZN(n64) );
  INV_X1 U39 ( .A(n63), .ZN(op_1_ori[5]) );
  AOI22_X1 U40 ( .A1(N10), .A2(op_1[7]), .B1(op_1[5]), .B2(n25), .ZN(n63) );
  INV_X1 U41 ( .A(n55), .ZN(n28) );
  AOI22_X1 U42 ( .A1(mul_temp[11]), .A2(n24), .B1(N25), .B2(flag), .ZN(n55) );
  INV_X1 U43 ( .A(n56), .ZN(n27) );
  AOI22_X1 U45 ( .A1(mul_temp[12]), .A2(n24), .B1(N26), .B2(flag), .ZN(n56) );
  INV_X1 U46 ( .A(n57), .ZN(n26) );
  AOI22_X1 U47 ( .A1(mul_temp[13]), .A2(n24), .B1(N27), .B2(flag), .ZN(n57) );
  INV_X1 U48 ( .A(n71), .ZN(op_2_ori[6]) );
  AOI22_X1 U49 ( .A1(op_2[7]), .A2(N19), .B1(op_2[6]), .B2(n23), .ZN(n71) );
  INV_X1 U50 ( .A(n68), .ZN(op_2_ori[3]) );
  AOI22_X1 U51 ( .A1(N16), .A2(op_2[7]), .B1(op_2[3]), .B2(n23), .ZN(n68) );
  INV_X1 U52 ( .A(n69), .ZN(op_2_ori[4]) );
  AOI22_X1 U53 ( .A1(N17), .A2(op_2[7]), .B1(op_2[4]), .B2(n23), .ZN(n69) );
  INV_X1 U54 ( .A(n70), .ZN(op_2_ori[5]) );
  AOI22_X1 U55 ( .A1(N18), .A2(op_2[7]), .B1(op_2[5]), .B2(n23), .ZN(n70) );
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
  XOR2_X1 U10 ( .A(n25), .B(op_2[7]), .Z(n73) );
  XOR2_X1 U12 ( .A(mul_temp[13]), .B(n74), .Z(N27) );
  NAND2_X1 U13 ( .A1(n6), .A2(sub_add_130_b0_carry[5]), .ZN(n74) );
  INV_X1 U15 ( .A(n75), .ZN(n32) );
  OAI21_X1 U16 ( .B1(n24), .B2(flag), .A(N21), .ZN(n75) );
  NOR2_X1 U23 ( .A1(N21), .A2(mul_temp[8]), .ZN(sub_add_130_b0_carry[2]) );
  XOR2_X1 U24 ( .A(op_1[6]), .B(n76), .Z(N11) );
  NAND2_X1 U27 ( .A1(n14), .A2(sub_add_125_b0_carry[5]), .ZN(n76) );
  XOR2_X1 U28 ( .A(op_2[6]), .B(n77), .Z(N19) );
  NAND2_X1 U44 ( .A1(n21), .A2(sub_add_126_b0_carry[5]), .ZN(n77) );
  INV_X1 U56 ( .A(op_2[7]), .ZN(n23) );
  INV_X1 U57 ( .A(op_1[7]), .ZN(n25) );
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
  wire   N16, N17, N18, n1, n2, n3, n4, n5, n7, n8, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238;
  wire   [2:0] cnt;
  wire   [9:0] ac_sum_new;
  wire   [7:0] op_1;
  wire   [7:0] op_2;
  wire   [9:0] ac_sum_old;

  DFF_X1 cnt_reg_0_ ( .D(N16), .CK(clk), .Q(cnt[0]), .QN(n236) );
  DFF_X1 cnt_reg_2_ ( .D(N18), .CK(clk), .Q(cnt[2]), .QN(n238) );
  DFF_X1 cnt_reg_1_ ( .D(N17), .CK(clk), .Q(cnt[1]), .QN(n237) );
  DFF_X1 op_2_reg_7_ ( .D(n129), .CK(clk), .Q(op_2[7]) );
  DFF_X1 op_2_reg_6_ ( .D(n130), .CK(clk), .Q(op_2[6]) );
  DFF_X1 op_2_reg_5_ ( .D(n131), .CK(clk), .Q(op_2[5]) );
  DFF_X1 op_2_reg_4_ ( .D(n132), .CK(clk), .Q(op_2[4]) );
  DFF_X1 op_2_reg_3_ ( .D(n133), .CK(clk), .Q(op_2[3]) );
  DFF_X1 op_2_reg_2_ ( .D(n134), .CK(clk), .Q(op_2[2]) );
  DFF_X1 op_2_reg_1_ ( .D(n135), .CK(clk), .Q(op_2[1]) );
  DFF_X1 op_2_reg_0_ ( .D(n136), .CK(clk), .Q(op_2[0]) );
  DFF_X1 mac_done_reg_0_ ( .D(n25), .CK(clk), .Q(mac_done[0]) );
  DFF_X1 op_1_reg_7_ ( .D(n137), .CK(clk), .Q(op_1[7]) );
  DFF_X1 op_1_reg_6_ ( .D(n138), .CK(clk), .Q(op_1[6]) );
  DFF_X1 op_1_reg_5_ ( .D(n139), .CK(clk), .Q(op_1[5]) );
  DFF_X1 op_1_reg_4_ ( .D(n140), .CK(clk), .Q(op_1[4]) );
  DFF_X1 op_1_reg_3_ ( .D(n141), .CK(clk), .Q(op_1[3]) );
  DFF_X1 op_1_reg_2_ ( .D(n142), .CK(clk), .Q(op_1[2]) );
  DFF_X1 op_1_reg_1_ ( .D(n143), .CK(clk), .Q(op_1[1]) );
  DFF_X1 op_1_reg_0_ ( .D(n144), .CK(clk), .Q(op_1[0]) );
  DFF_X1 data_out_reg_0_ ( .D(n155), .CK(clk), .Q(data_out[0]) );
  DFF_X1 ac_sum_old_reg_0_ ( .D(n145), .CK(clk), .Q(ac_sum_old[0]), .QN(n226)
         );
  DFF_X1 data_out_reg_1_ ( .D(n156), .CK(clk), .Q(data_out[1]) );
  DFF_X1 ac_sum_old_reg_1_ ( .D(n146), .CK(clk), .Q(ac_sum_old[1]), .QN(n227)
         );
  DFF_X1 data_out_reg_2_ ( .D(n157), .CK(clk), .Q(data_out[2]) );
  DFF_X1 ac_sum_old_reg_2_ ( .D(n147), .CK(clk), .Q(ac_sum_old[2]), .QN(n228)
         );
  DFF_X1 data_out_reg_3_ ( .D(n158), .CK(clk), .Q(data_out[3]) );
  DFF_X1 ac_sum_old_reg_3_ ( .D(n148), .CK(clk), .Q(ac_sum_old[3]), .QN(n229)
         );
  DFF_X1 data_out_reg_4_ ( .D(n159), .CK(clk), .Q(data_out[4]) );
  DFF_X1 ac_sum_old_reg_4_ ( .D(n149), .CK(clk), .Q(ac_sum_old[4]), .QN(n230)
         );
  DFF_X1 data_out_reg_5_ ( .D(n160), .CK(clk), .Q(data_out[5]) );
  DFF_X1 ac_sum_old_reg_5_ ( .D(n150), .CK(clk), .Q(ac_sum_old[5]), .QN(n231)
         );
  DFF_X1 data_out_reg_6_ ( .D(n161), .CK(clk), .Q(data_out[6]) );
  DFF_X1 ac_sum_old_reg_6_ ( .D(n151), .CK(clk), .Q(ac_sum_old[6]), .QN(n232)
         );
  DFF_X1 data_out_reg_7_ ( .D(n162), .CK(clk), .Q(data_out[7]) );
  DFF_X1 ac_sum_old_reg_7_ ( .D(n152), .CK(clk), .Q(ac_sum_old[7]), .QN(n233)
         );
  DFF_X1 data_out_reg_8_ ( .D(n163), .CK(clk), .Q(data_out[8]) );
  DFF_X1 ac_sum_old_reg_8_ ( .D(n153), .CK(clk), .Q(ac_sum_old[8]), .QN(n234)
         );
  DFF_X1 data_out_reg_9_ ( .D(n164), .CK(clk), .Q(data_out[9]) );
  DFF_X1 ac_sum_old_reg_9_ ( .D(n154), .CK(clk), .Q(ac_sum_old[9]), .QN(n235)
         );
  NOR3_X2 U82 ( .A1(n206), .A2(n208), .A3(n207), .ZN(n211) );
  NAND4_X1 U117 ( .A1(cnt[1]), .A2(n29), .A3(cnt[0]), .A4(n238), .ZN(n167) );
  XOR2_X1 U118 ( .A(n236), .B(cnt[1]), .Z(n165) );
  NAND3_X1 U119 ( .A1(mac_enable[0]), .A2(n169), .A3(rst_n), .ZN(n166) );
  NAND3_X1 U120 ( .A1(n236), .A2(n237), .A3(cnt[2]), .ZN(n169) );
  mac_operate_1 mac_operate_inst ( .op_1(op_1), .op_2(op_2), .ac_sum_old(
        ac_sum_old), .ac_sum_new(ac_sum_new) );
  INV_X1 U3 ( .A(ac_sum_new[0]), .ZN(n24) );
  INV_X1 U4 ( .A(n212), .ZN(n27) );
  NAND3_X1 U5 ( .A1(rst_n), .A2(n175), .A3(n211), .ZN(n212) );
  INV_X1 U6 ( .A(n175), .ZN(n30) );
  INV_X1 U7 ( .A(n174), .ZN(n26) );
  NOR2_X2 U8 ( .A1(n174), .A2(n213), .ZN(n207) );
  NOR3_X1 U9 ( .A1(n173), .A2(n170), .A3(n1), .ZN(n171) );
  AND2_X1 U10 ( .A1(n172), .A2(n171), .ZN(n206) );
  AND2_X1 U11 ( .A1(n173), .A2(rst_n), .ZN(n208) );
  NAND2_X1 U12 ( .A1(n171), .A2(n31), .ZN(n174) );
  INV_X1 U13 ( .A(n172), .ZN(n31) );
  NAND2_X1 U14 ( .A1(n26), .A2(n213), .ZN(n223) );
  NAND2_X1 U15 ( .A1(n170), .A2(rst_n), .ZN(n175) );
  INV_X1 U16 ( .A(n225), .ZN(n25) );
  INV_X1 U17 ( .A(ac_sum_new[8]), .ZN(n3) );
  INV_X1 U18 ( .A(ac_sum_new[7]), .ZN(n4) );
  INV_X1 U19 ( .A(ac_sum_new[6]), .ZN(n5) );
  INV_X1 U20 ( .A(ac_sum_new[5]), .ZN(n7) );
  INV_X1 U21 ( .A(ac_sum_new[4]), .ZN(n8) );
  INV_X1 U22 ( .A(ac_sum_new[3]), .ZN(n21) );
  INV_X1 U23 ( .A(ac_sum_new[2]), .ZN(n22) );
  INV_X1 U24 ( .A(ac_sum_new[1]), .ZN(n23) );
  NAND2_X1 U25 ( .A1(n177), .A2(n176), .ZN(n129) );
  AOI222_X1 U26 ( .A1(data_1[7]), .A2(n208), .B1(data_3[7]), .B2(n207), .C1(
        data_2[7]), .C2(n206), .ZN(n176) );
  AOI22_X1 U27 ( .A1(data_0[7]), .A2(n30), .B1(op_2[7]), .B2(n27), .ZN(n177)
         );
  OAI22_X1 U28 ( .A1(n212), .A2(n235), .B1(n211), .B2(n2), .ZN(n154) );
  OAI22_X1 U29 ( .A1(n212), .A2(n234), .B1(n211), .B2(n3), .ZN(n153) );
  OAI22_X1 U30 ( .A1(n212), .A2(n233), .B1(n211), .B2(n4), .ZN(n152) );
  OAI22_X1 U31 ( .A1(n212), .A2(n232), .B1(n211), .B2(n5), .ZN(n151) );
  OAI22_X1 U32 ( .A1(n212), .A2(n231), .B1(n211), .B2(n7), .ZN(n150) );
  OAI22_X1 U33 ( .A1(n212), .A2(n230), .B1(n211), .B2(n8), .ZN(n149) );
  OAI22_X1 U34 ( .A1(n212), .A2(n229), .B1(n211), .B2(n21), .ZN(n148) );
  OAI22_X1 U35 ( .A1(n212), .A2(n228), .B1(n211), .B2(n22), .ZN(n147) );
  OAI22_X1 U36 ( .A1(n212), .A2(n227), .B1(n211), .B2(n23), .ZN(n146) );
  OAI22_X1 U37 ( .A1(n212), .A2(n226), .B1(n211), .B2(n24), .ZN(n145) );
  NAND2_X1 U38 ( .A1(n193), .A2(n192), .ZN(n137) );
  AOI222_X1 U39 ( .A1(h_1[7]), .A2(n208), .B1(h_3[7]), .B2(n207), .C1(h_2[7]), 
        .C2(n206), .ZN(n192) );
  AOI22_X1 U40 ( .A1(h_0[7]), .A2(n30), .B1(op_1[7]), .B2(n27), .ZN(n193) );
  NAND2_X1 U41 ( .A1(n210), .A2(n209), .ZN(n144) );
  AOI222_X1 U42 ( .A1(h_1[0]), .A2(n208), .B1(h_3[0]), .B2(n207), .C1(h_2[0]), 
        .C2(n206), .ZN(n209) );
  AOI22_X1 U43 ( .A1(h_0[0]), .A2(n30), .B1(op_1[0]), .B2(n27), .ZN(n210) );
  NAND2_X1 U44 ( .A1(n205), .A2(n204), .ZN(n143) );
  AOI222_X1 U45 ( .A1(h_1[1]), .A2(n208), .B1(h_3[1]), .B2(n207), .C1(h_2[1]), 
        .C2(n206), .ZN(n204) );
  AOI22_X1 U46 ( .A1(h_0[1]), .A2(n30), .B1(op_1[1]), .B2(n27), .ZN(n205) );
  NAND2_X1 U47 ( .A1(n203), .A2(n202), .ZN(n142) );
  AOI222_X1 U48 ( .A1(h_1[2]), .A2(n208), .B1(h_3[2]), .B2(n207), .C1(h_2[2]), 
        .C2(n206), .ZN(n202) );
  AOI22_X1 U49 ( .A1(h_0[2]), .A2(n30), .B1(op_1[2]), .B2(n27), .ZN(n203) );
  NAND2_X1 U50 ( .A1(n201), .A2(n200), .ZN(n141) );
  AOI222_X1 U51 ( .A1(h_1[3]), .A2(n208), .B1(h_3[3]), .B2(n207), .C1(h_2[3]), 
        .C2(n206), .ZN(n200) );
  AOI22_X1 U52 ( .A1(h_0[3]), .A2(n30), .B1(op_1[3]), .B2(n27), .ZN(n201) );
  NAND2_X1 U53 ( .A1(n199), .A2(n198), .ZN(n140) );
  AOI222_X1 U54 ( .A1(h_1[4]), .A2(n208), .B1(h_3[4]), .B2(n207), .C1(h_2[4]), 
        .C2(n206), .ZN(n198) );
  AOI22_X1 U55 ( .A1(h_0[4]), .A2(n30), .B1(op_1[4]), .B2(n27), .ZN(n199) );
  NAND2_X1 U56 ( .A1(n197), .A2(n196), .ZN(n139) );
  AOI222_X1 U57 ( .A1(h_1[5]), .A2(n208), .B1(h_3[5]), .B2(n207), .C1(h_2[5]), 
        .C2(n206), .ZN(n196) );
  AOI22_X1 U58 ( .A1(h_0[5]), .A2(n30), .B1(op_1[5]), .B2(n27), .ZN(n197) );
  NAND2_X1 U59 ( .A1(n195), .A2(n194), .ZN(n138) );
  AOI222_X1 U60 ( .A1(h_1[6]), .A2(n208), .B1(h_3[6]), .B2(n207), .C1(h_2[6]), 
        .C2(n206), .ZN(n194) );
  AOI22_X1 U61 ( .A1(h_0[6]), .A2(n30), .B1(op_1[6]), .B2(n27), .ZN(n195) );
  NAND2_X1 U62 ( .A1(n191), .A2(n190), .ZN(n136) );
  AOI222_X1 U63 ( .A1(data_1[0]), .A2(n208), .B1(data_3[0]), .B2(n207), .C1(
        data_2[0]), .C2(n206), .ZN(n190) );
  AOI22_X1 U64 ( .A1(data_0[0]), .A2(n30), .B1(op_2[0]), .B2(n27), .ZN(n191)
         );
  NAND2_X1 U65 ( .A1(n189), .A2(n188), .ZN(n135) );
  AOI222_X1 U66 ( .A1(data_1[1]), .A2(n208), .B1(data_3[1]), .B2(n207), .C1(
        data_2[1]), .C2(n206), .ZN(n188) );
  AOI22_X1 U67 ( .A1(data_0[1]), .A2(n30), .B1(op_2[1]), .B2(n27), .ZN(n189)
         );
  NAND2_X1 U68 ( .A1(n187), .A2(n186), .ZN(n134) );
  AOI222_X1 U69 ( .A1(data_1[2]), .A2(n208), .B1(data_3[2]), .B2(n207), .C1(
        data_2[2]), .C2(n206), .ZN(n186) );
  AOI22_X1 U70 ( .A1(data_0[2]), .A2(n30), .B1(op_2[2]), .B2(n27), .ZN(n187)
         );
  NAND2_X1 U71 ( .A1(n185), .A2(n184), .ZN(n133) );
  AOI222_X1 U72 ( .A1(data_1[3]), .A2(n208), .B1(data_3[3]), .B2(n207), .C1(
        data_2[3]), .C2(n206), .ZN(n184) );
  AOI22_X1 U73 ( .A1(data_0[3]), .A2(n30), .B1(op_2[3]), .B2(n27), .ZN(n185)
         );
  NAND2_X1 U74 ( .A1(n183), .A2(n182), .ZN(n132) );
  AOI222_X1 U75 ( .A1(data_1[4]), .A2(n208), .B1(data_3[4]), .B2(n207), .C1(
        data_2[4]), .C2(n206), .ZN(n182) );
  AOI22_X1 U76 ( .A1(data_0[4]), .A2(n30), .B1(op_2[4]), .B2(n27), .ZN(n183)
         );
  NAND2_X1 U77 ( .A1(n181), .A2(n180), .ZN(n131) );
  AOI222_X1 U78 ( .A1(data_1[5]), .A2(n208), .B1(data_3[5]), .B2(n207), .C1(
        data_2[5]), .C2(n206), .ZN(n180) );
  AOI22_X1 U79 ( .A1(data_0[5]), .A2(n30), .B1(op_2[5]), .B2(n27), .ZN(n181)
         );
  NAND2_X1 U80 ( .A1(n179), .A2(n178), .ZN(n130) );
  AOI222_X1 U81 ( .A1(data_1[6]), .A2(n208), .B1(data_3[6]), .B2(n207), .C1(
        data_2[6]), .C2(n206), .ZN(n178) );
  AOI22_X1 U83 ( .A1(data_0[6]), .A2(n30), .B1(op_2[6]), .B2(n27), .ZN(n179)
         );
  NAND3_X1 U84 ( .A1(mac_enable[0]), .A2(n28), .A3(n26), .ZN(n225) );
  INV_X1 U85 ( .A(n169), .ZN(n28) );
  NOR2_X1 U86 ( .A1(n166), .A2(cnt[0]), .ZN(N16) );
  OAI21_X1 U87 ( .B1(n225), .B2(n2), .A(n224), .ZN(n164) );
  NAND2_X1 U88 ( .A1(data_out[9]), .A2(n223), .ZN(n224) );
  OAI21_X1 U89 ( .B1(n225), .B2(n3), .A(n222), .ZN(n163) );
  NAND2_X1 U90 ( .A1(data_out[8]), .A2(n223), .ZN(n222) );
  OAI21_X1 U91 ( .B1(n225), .B2(n4), .A(n221), .ZN(n162) );
  NAND2_X1 U92 ( .A1(data_out[7]), .A2(n223), .ZN(n221) );
  OAI21_X1 U93 ( .B1(n225), .B2(n5), .A(n220), .ZN(n161) );
  NAND2_X1 U94 ( .A1(data_out[6]), .A2(n223), .ZN(n220) );
  OAI21_X1 U95 ( .B1(n225), .B2(n7), .A(n219), .ZN(n160) );
  NAND2_X1 U96 ( .A1(data_out[5]), .A2(n223), .ZN(n219) );
  OAI21_X1 U97 ( .B1(n225), .B2(n8), .A(n218), .ZN(n159) );
  NAND2_X1 U98 ( .A1(data_out[4]), .A2(n223), .ZN(n218) );
  OAI21_X1 U99 ( .B1(n225), .B2(n21), .A(n217), .ZN(n158) );
  NAND2_X1 U100 ( .A1(data_out[3]), .A2(n223), .ZN(n217) );
  OAI21_X1 U101 ( .B1(n225), .B2(n22), .A(n216), .ZN(n157) );
  NAND2_X1 U102 ( .A1(data_out[2]), .A2(n223), .ZN(n216) );
  OAI21_X1 U103 ( .B1(n225), .B2(n23), .A(n215), .ZN(n156) );
  NAND2_X1 U104 ( .A1(data_out[1]), .A2(n223), .ZN(n215) );
  OAI21_X1 U105 ( .B1(n225), .B2(n24), .A(n214), .ZN(n155) );
  NAND2_X1 U106 ( .A1(data_out[0]), .A2(n223), .ZN(n214) );
  OAI21_X1 U107 ( .B1(n168), .B2(n238), .A(n167), .ZN(N18) );
  AOI21_X1 U108 ( .B1(n29), .B2(n237), .A(N16), .ZN(n168) );
  INV_X1 U109 ( .A(n166), .ZN(n29) );
  NOR2_X1 U110 ( .A1(n165), .A2(n166), .ZN(N17) );
  INV_X1 U111 ( .A(ac_sum_new[9]), .ZN(n2) );
  NOR3_X1 U112 ( .A1(n213), .A2(cnt[1]), .A3(n236), .ZN(n173) );
  NOR3_X1 U113 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n213), .ZN(n170) );
  NAND2_X1 U114 ( .A1(mac_enable[0]), .A2(n238), .ZN(n213) );
  NOR2_X1 U115 ( .A1(n213), .A2(cnt[0]), .ZN(n172) );
  INV_X1 U116 ( .A(rst_n), .ZN(n1) );
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
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n143,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n135, n136, n137, n138, n139, n141, n277, n280, n281, n282, n283,
         n284, n285, n286, n289, n290, n291, n292, n293, n294, n295, n296,
         n297;

  DFF_X1 h_0_reg_7_ ( .D(n276), .CK(clk), .Q(h_0[7]), .QN(n113) );
  DFF_X1 h_1_reg_7_ ( .D(n261), .CK(clk), .Q(h_1[7]), .QN(n105) );
  DFF_X1 h_2_reg_7_ ( .D(n253), .CK(clk), .Q(h_2[7]), .QN(n97) );
  DFF_X1 h_3_reg_7_ ( .D(n245), .CK(clk), .Q(h_3[7]), .QN(n89) );
  DFF_X1 h_4_reg_7_ ( .D(n237), .CK(clk), .Q(h_4[7]), .QN(n81) );
  DFF_X1 h_5_reg_7_ ( .D(n229), .CK(clk), .Q(h_5[7]), .QN(n73) );
  DFF_X1 h_6_reg_7_ ( .D(n221), .CK(clk), .Q(h_6[7]), .QN(n65) );
  DFF_X1 h_7_reg_7_ ( .D(n213), .CK(clk), .Q(h_7[7]), .QN(n57) );
  DFF_X1 h_8_reg_7_ ( .D(n205), .CK(clk), .Q(h_8[7]), .QN(n49) );
  DFF_X1 h_9_reg_7_ ( .D(n197), .CK(clk), .Q(h_9[7]), .QN(n41) );
  DFF_X1 h_10_reg_7_ ( .D(n189), .CK(clk), .Q(h_10[7]), .QN(n33) );
  DFF_X1 h_11_reg_7_ ( .D(n181), .CK(clk), .Q(h_11[7]), .QN(n25) );
  DFF_X1 h_12_reg_7_ ( .D(n173), .CK(clk), .Q(h_12[7]), .QN(n17) );
  DFF_X1 h_13_reg_7_ ( .D(n165), .CK(clk), .Q(h_13[7]), .QN(n9) );
  DFF_X1 h_14_reg_7_ ( .D(n157), .CK(clk), .Q(h_14[7]), .QN(n1) );
  DFF_X1 h_0_reg_6_ ( .D(n275), .CK(clk), .Q(h_0[6]), .QN(n114) );
  DFF_X1 h_1_reg_6_ ( .D(n262), .CK(clk), .Q(h_1[6]), .QN(n106) );
  DFF_X1 h_2_reg_6_ ( .D(n254), .CK(clk), .Q(h_2[6]), .QN(n98) );
  DFF_X1 h_3_reg_6_ ( .D(n246), .CK(clk), .Q(h_3[6]), .QN(n90) );
  DFF_X1 h_4_reg_6_ ( .D(n238), .CK(clk), .Q(h_4[6]), .QN(n82) );
  DFF_X1 h_5_reg_6_ ( .D(n230), .CK(clk), .Q(h_5[6]), .QN(n74) );
  DFF_X1 h_6_reg_6_ ( .D(n222), .CK(clk), .Q(h_6[6]), .QN(n66) );
  DFF_X1 h_7_reg_6_ ( .D(n214), .CK(clk), .Q(h_7[6]), .QN(n58) );
  DFF_X1 h_8_reg_6_ ( .D(n206), .CK(clk), .Q(h_8[6]), .QN(n50) );
  DFF_X1 h_9_reg_6_ ( .D(n198), .CK(clk), .Q(h_9[6]), .QN(n42) );
  DFF_X1 h_10_reg_6_ ( .D(n190), .CK(clk), .Q(h_10[6]), .QN(n34) );
  DFF_X1 h_11_reg_6_ ( .D(n182), .CK(clk), .Q(h_11[6]), .QN(n26) );
  DFF_X1 h_12_reg_6_ ( .D(n174), .CK(clk), .Q(h_12[6]), .QN(n18) );
  DFF_X1 h_13_reg_6_ ( .D(n166), .CK(clk), .Q(h_13[6]), .QN(n10) );
  DFF_X1 h_14_reg_6_ ( .D(n158), .CK(clk), .Q(h_14[6]), .QN(n2) );
  DFF_X1 h_0_reg_5_ ( .D(n274), .CK(clk), .Q(h_0[5]), .QN(n115) );
  DFF_X1 h_1_reg_5_ ( .D(n263), .CK(clk), .Q(h_1[5]), .QN(n107) );
  DFF_X1 h_2_reg_5_ ( .D(n255), .CK(clk), .Q(h_2[5]), .QN(n99) );
  DFF_X1 h_3_reg_5_ ( .D(n247), .CK(clk), .Q(h_3[5]), .QN(n91) );
  DFF_X1 h_4_reg_5_ ( .D(n239), .CK(clk), .Q(h_4[5]), .QN(n83) );
  DFF_X1 h_5_reg_5_ ( .D(n231), .CK(clk), .Q(h_5[5]), .QN(n75) );
  DFF_X1 h_6_reg_5_ ( .D(n223), .CK(clk), .Q(h_6[5]), .QN(n67) );
  DFF_X1 h_7_reg_5_ ( .D(n215), .CK(clk), .Q(h_7[5]), .QN(n59) );
  DFF_X1 h_8_reg_5_ ( .D(n207), .CK(clk), .Q(h_8[5]), .QN(n51) );
  DFF_X1 h_9_reg_5_ ( .D(n199), .CK(clk), .Q(h_9[5]), .QN(n43) );
  DFF_X1 h_10_reg_5_ ( .D(n191), .CK(clk), .Q(h_10[5]), .QN(n35) );
  DFF_X1 h_11_reg_5_ ( .D(n183), .CK(clk), .Q(h_11[5]), .QN(n27) );
  DFF_X1 h_12_reg_5_ ( .D(n175), .CK(clk), .Q(h_12[5]), .QN(n19) );
  DFF_X1 h_13_reg_5_ ( .D(n167), .CK(clk), .Q(h_13[5]), .QN(n11) );
  DFF_X1 h_14_reg_5_ ( .D(n159), .CK(clk), .Q(h_14[5]), .QN(n3) );
  DFF_X1 h_0_reg_4_ ( .D(n273), .CK(clk), .Q(h_0[4]), .QN(n116) );
  DFF_X1 h_1_reg_4_ ( .D(n264), .CK(clk), .Q(h_1[4]), .QN(n108) );
  DFF_X1 h_2_reg_4_ ( .D(n256), .CK(clk), .Q(h_2[4]), .QN(n100) );
  DFF_X1 h_3_reg_4_ ( .D(n248), .CK(clk), .Q(h_3[4]), .QN(n92) );
  DFF_X1 h_4_reg_4_ ( .D(n240), .CK(clk), .Q(h_4[4]), .QN(n84) );
  DFF_X1 h_5_reg_4_ ( .D(n232), .CK(clk), .Q(h_5[4]), .QN(n76) );
  DFF_X1 h_6_reg_4_ ( .D(n224), .CK(clk), .Q(h_6[4]), .QN(n68) );
  DFF_X1 h_7_reg_4_ ( .D(n216), .CK(clk), .Q(h_7[4]), .QN(n60) );
  DFF_X1 h_8_reg_4_ ( .D(n208), .CK(clk), .Q(h_8[4]), .QN(n52) );
  DFF_X1 h_9_reg_4_ ( .D(n200), .CK(clk), .Q(h_9[4]), .QN(n44) );
  DFF_X1 h_10_reg_4_ ( .D(n192), .CK(clk), .Q(h_10[4]), .QN(n36) );
  DFF_X1 h_11_reg_4_ ( .D(n184), .CK(clk), .Q(h_11[4]), .QN(n28) );
  DFF_X1 h_12_reg_4_ ( .D(n176), .CK(clk), .Q(h_12[4]), .QN(n20) );
  DFF_X1 h_13_reg_4_ ( .D(n168), .CK(clk), .Q(h_13[4]), .QN(n12) );
  DFF_X1 h_14_reg_4_ ( .D(n160), .CK(clk), .Q(h_14[4]), .QN(n4) );
  DFF_X1 h_0_reg_3_ ( .D(n272), .CK(clk), .Q(h_0[3]), .QN(n117) );
  DFF_X1 h_1_reg_3_ ( .D(n265), .CK(clk), .Q(h_1[3]), .QN(n109) );
  DFF_X1 h_2_reg_3_ ( .D(n257), .CK(clk), .Q(h_2[3]), .QN(n101) );
  DFF_X1 h_3_reg_3_ ( .D(n249), .CK(clk), .Q(h_3[3]), .QN(n93) );
  DFF_X1 h_4_reg_3_ ( .D(n241), .CK(clk), .Q(h_4[3]), .QN(n85) );
  DFF_X1 h_5_reg_3_ ( .D(n233), .CK(clk), .Q(h_5[3]), .QN(n77) );
  DFF_X1 h_6_reg_3_ ( .D(n225), .CK(clk), .Q(h_6[3]), .QN(n69) );
  DFF_X1 h_7_reg_3_ ( .D(n217), .CK(clk), .Q(h_7[3]), .QN(n61) );
  DFF_X1 h_8_reg_3_ ( .D(n209), .CK(clk), .Q(h_8[3]), .QN(n53) );
  DFF_X1 h_9_reg_3_ ( .D(n201), .CK(clk), .Q(h_9[3]), .QN(n45) );
  DFF_X1 h_10_reg_3_ ( .D(n193), .CK(clk), .Q(h_10[3]), .QN(n37) );
  DFF_X1 h_11_reg_3_ ( .D(n185), .CK(clk), .Q(h_11[3]), .QN(n29) );
  DFF_X1 h_12_reg_3_ ( .D(n177), .CK(clk), .Q(h_12[3]), .QN(n21) );
  DFF_X1 h_13_reg_3_ ( .D(n169), .CK(clk), .Q(h_13[3]), .QN(n13) );
  DFF_X1 h_14_reg_3_ ( .D(n161), .CK(clk), .Q(h_14[3]), .QN(n5) );
  DFF_X1 h_0_reg_2_ ( .D(n271), .CK(clk), .Q(h_0[2]), .QN(n118) );
  DFF_X1 h_1_reg_2_ ( .D(n266), .CK(clk), .Q(h_1[2]), .QN(n110) );
  DFF_X1 h_2_reg_2_ ( .D(n258), .CK(clk), .Q(h_2[2]), .QN(n102) );
  DFF_X1 h_3_reg_2_ ( .D(n250), .CK(clk), .Q(h_3[2]), .QN(n94) );
  DFF_X1 h_4_reg_2_ ( .D(n242), .CK(clk), .Q(h_4[2]), .QN(n86) );
  DFF_X1 h_5_reg_2_ ( .D(n234), .CK(clk), .Q(h_5[2]), .QN(n78) );
  DFF_X1 h_6_reg_2_ ( .D(n226), .CK(clk), .Q(h_6[2]), .QN(n70) );
  DFF_X1 h_7_reg_2_ ( .D(n218), .CK(clk), .Q(h_7[2]), .QN(n62) );
  DFF_X1 h_8_reg_2_ ( .D(n210), .CK(clk), .Q(h_8[2]), .QN(n54) );
  DFF_X1 h_9_reg_2_ ( .D(n202), .CK(clk), .Q(h_9[2]), .QN(n46) );
  DFF_X1 h_10_reg_2_ ( .D(n194), .CK(clk), .Q(h_10[2]), .QN(n38) );
  DFF_X1 h_11_reg_2_ ( .D(n186), .CK(clk), .Q(h_11[2]), .QN(n30) );
  DFF_X1 h_12_reg_2_ ( .D(n178), .CK(clk), .Q(h_12[2]), .QN(n22) );
  DFF_X1 h_13_reg_2_ ( .D(n170), .CK(clk), .Q(h_13[2]), .QN(n14) );
  DFF_X1 h_14_reg_2_ ( .D(n162), .CK(clk), .Q(h_14[2]), .QN(n6) );
  DFF_X1 h_0_reg_1_ ( .D(n270), .CK(clk), .Q(h_0[1]), .QN(n119) );
  DFF_X1 h_1_reg_1_ ( .D(n267), .CK(clk), .Q(h_1[1]), .QN(n111) );
  DFF_X1 h_2_reg_1_ ( .D(n259), .CK(clk), .Q(h_2[1]), .QN(n103) );
  DFF_X1 h_3_reg_1_ ( .D(n251), .CK(clk), .Q(h_3[1]), .QN(n95) );
  DFF_X1 h_4_reg_1_ ( .D(n243), .CK(clk), .Q(h_4[1]), .QN(n87) );
  DFF_X1 h_5_reg_1_ ( .D(n235), .CK(clk), .Q(h_5[1]), .QN(n79) );
  DFF_X1 h_6_reg_1_ ( .D(n227), .CK(clk), .Q(h_6[1]), .QN(n71) );
  DFF_X1 h_7_reg_1_ ( .D(n219), .CK(clk), .Q(h_7[1]), .QN(n63) );
  DFF_X1 h_8_reg_1_ ( .D(n211), .CK(clk), .Q(h_8[1]), .QN(n55) );
  DFF_X1 h_9_reg_1_ ( .D(n203), .CK(clk), .Q(h_9[1]), .QN(n47) );
  DFF_X1 h_10_reg_1_ ( .D(n195), .CK(clk), .Q(h_10[1]), .QN(n39) );
  DFF_X1 h_11_reg_1_ ( .D(n187), .CK(clk), .Q(h_11[1]), .QN(n31) );
  DFF_X1 h_12_reg_1_ ( .D(n179), .CK(clk), .Q(h_12[1]), .QN(n23) );
  DFF_X1 h_13_reg_1_ ( .D(n171), .CK(clk), .Q(h_13[1]), .QN(n15) );
  DFF_X1 h_14_reg_1_ ( .D(n163), .CK(clk), .Q(h_14[1]), .QN(n7) );
  DFF_X1 h_0_reg_0_ ( .D(n269), .CK(clk), .Q(h_0[0]), .QN(n120) );
  DFF_X1 h_1_reg_0_ ( .D(n268), .CK(clk), .Q(h_1[0]), .QN(n112) );
  DFF_X1 h_2_reg_0_ ( .D(n260), .CK(clk), .Q(h_2[0]), .QN(n104) );
  DFF_X1 h_3_reg_0_ ( .D(n252), .CK(clk), .Q(h_3[0]), .QN(n96) );
  DFF_X1 h_4_reg_0_ ( .D(n244), .CK(clk), .Q(h_4[0]), .QN(n88) );
  DFF_X1 h_5_reg_0_ ( .D(n236), .CK(clk), .Q(h_5[0]), .QN(n80) );
  DFF_X1 h_6_reg_0_ ( .D(n228), .CK(clk), .Q(h_6[0]), .QN(n72) );
  DFF_X1 h_7_reg_0_ ( .D(n220), .CK(clk), .Q(h_7[0]), .QN(n64) );
  DFF_X1 h_8_reg_0_ ( .D(n212), .CK(clk), .Q(h_8[0]), .QN(n56) );
  DFF_X1 h_9_reg_0_ ( .D(n204), .CK(clk), .Q(h_9[0]), .QN(n48) );
  DFF_X1 h_10_reg_0_ ( .D(n196), .CK(clk), .Q(h_10[0]), .QN(n40) );
  DFF_X1 h_11_reg_0_ ( .D(n188), .CK(clk), .Q(h_11[0]), .QN(n32) );
  DFF_X1 h_12_reg_0_ ( .D(n180), .CK(clk), .Q(h_12[0]), .QN(n24) );
  DFF_X1 h_13_reg_0_ ( .D(n172), .CK(clk), .Q(h_13[0]), .QN(n16) );
  DFF_X1 h_14_reg_0_ ( .D(n164), .CK(clk), .Q(h_14[0]), .QN(n8) );
  DFF_X1 h_15_reg_7_ ( .D(n156), .CK(clk), .Q(h_15[7]), .QN(n125) );
  DFF_X1 h_15_reg_6_ ( .D(n155), .CK(clk), .Q(h_15[6]), .QN(n126) );
  DFF_X1 h_15_reg_5_ ( .D(n154), .CK(clk), .Q(h_15[5]), .QN(n127) );
  DFF_X1 h_15_reg_4_ ( .D(n153), .CK(clk), .Q(h_15[4]), .QN(n128) );
  DFF_X1 h_15_reg_3_ ( .D(n152), .CK(clk), .Q(h_15[3]), .QN(n129) );
  DFF_X1 tap_num_reg_3_ ( .D(n145), .CK(clk), .Q(tap_num[3]), .QN(n121) );
  DFF_X1 h_15_reg_2_ ( .D(n151), .CK(clk), .Q(h_15[2]), .QN(n130) );
  DFF_X1 tap_num_reg_2_ ( .D(n146), .CK(clk), .Q(tap_num[2]), .QN(n122) );
  DFF_X1 h_15_reg_1_ ( .D(n150), .CK(clk), .Q(h_15[1]), .QN(n131) );
  DFF_X1 tap_num_reg_1_ ( .D(n147), .CK(clk), .Q(tap_num[1]), .QN(n123) );
  DFF_X1 h_15_reg_0_ ( .D(n149), .CK(clk), .Q(h_15[0]), .QN(n132) );
  DFF_X1 tap_num_reg_0_ ( .D(n148), .CK(clk), .Q(tap_num[0]), .QN(n124) );
  CLKBUF_X1 U6 ( .A(n143), .Z(n136) );
  CLKBUF_X1 U7 ( .A(n143), .Z(n137) );
  CLKBUF_X1 U8 ( .A(n143), .Z(n138) );
  CLKBUF_X1 U9 ( .A(n143), .Z(n139) );
  CLKBUF_X1 U10 ( .A(n143), .Z(n135) );
  CLKBUF_X1 U11 ( .A(n143), .Z(n141) );
  CLKBUF_X1 U12 ( .A(n143), .Z(n277) );
  OAI221_X1 U18 ( .B1(n135), .B2(n290), .C1(n282), .C2(n114), .A(rst_n), .ZN(
        n275) );
  INV_X1 U19 ( .A(data_in[6]), .ZN(n290) );
  OAI221_X1 U20 ( .B1(n286), .B2(n132), .C1(n285), .C2(n124), .A(rst_n), .ZN(
        n148) );
  OAI221_X1 U21 ( .B1(n286), .B2(n131), .C1(n285), .C2(n123), .A(rst_n), .ZN(
        n147) );
  OAI221_X1 U22 ( .B1(n286), .B2(n130), .C1(n284), .C2(n122), .A(rst_n), .ZN(
        n146) );
  OAI221_X1 U23 ( .B1(n286), .B2(n129), .C1(n284), .C2(n121), .A(rst_n), .ZN(
        n145) );
  OAI221_X1 U24 ( .B1(n135), .B2(n2), .C1(n283), .C2(n126), .A(rst_n), .ZN(
        n155) );
  OAI221_X1 U25 ( .B1(n135), .B2(n10), .C1(n282), .C2(n2), .A(rst_n), .ZN(n158) );
  OAI221_X1 U26 ( .B1(n135), .B2(n18), .C1(n281), .C2(n10), .A(rst_n), .ZN(
        n166) );
  OAI221_X1 U27 ( .B1(n135), .B2(n26), .C1(n285), .C2(n18), .A(rst_n), .ZN(
        n174) );
  OAI221_X1 U28 ( .B1(n135), .B2(n34), .C1(n284), .C2(n26), .A(rst_n), .ZN(
        n182) );
  OAI221_X1 U29 ( .B1(n135), .B2(n42), .C1(n283), .C2(n34), .A(rst_n), .ZN(
        n190) );
  OAI221_X1 U30 ( .B1(n136), .B2(n50), .C1(n284), .C2(n42), .A(rst_n), .ZN(
        n198) );
  OAI221_X1 U31 ( .B1(n135), .B2(n58), .C1(n284), .C2(n50), .A(rst_n), .ZN(
        n206) );
  OAI221_X1 U32 ( .B1(n135), .B2(n66), .C1(n283), .C2(n58), .A(rst_n), .ZN(
        n214) );
  OAI221_X1 U33 ( .B1(n135), .B2(n74), .C1(n282), .C2(n66), .A(rst_n), .ZN(
        n222) );
  OAI221_X1 U34 ( .B1(n136), .B2(n82), .C1(n283), .C2(n74), .A(rst_n), .ZN(
        n230) );
  OAI221_X1 U35 ( .B1(n136), .B2(n90), .C1(n285), .C2(n82), .A(rst_n), .ZN(
        n238) );
  OAI221_X1 U36 ( .B1(n136), .B2(n98), .C1(n285), .C2(n90), .A(rst_n), .ZN(
        n246) );
  OAI221_X1 U37 ( .B1(n135), .B2(n106), .C1(n282), .C2(n98), .A(rst_n), .ZN(
        n254) );
  OAI221_X1 U38 ( .B1(n135), .B2(n114), .C1(n281), .C2(n106), .A(rst_n), .ZN(
        n262) );
  OAI22_X1 U39 ( .A1(n280), .A2(n132), .B1(n143), .B2(n8), .ZN(n149) );
  OAI22_X1 U40 ( .A1(n283), .A2(n48), .B1(n143), .B2(n56), .ZN(n204) );
  OAI22_X1 U41 ( .A1(n284), .A2(n56), .B1(n143), .B2(n64), .ZN(n212) );
  OAI22_X1 U42 ( .A1(n285), .A2(n96), .B1(n143), .B2(n104), .ZN(n252) );
  OAI22_X1 U43 ( .A1(n285), .A2(n104), .B1(n143), .B2(n112), .ZN(n260) );
  OAI22_X1 U44 ( .A1(n281), .A2(n112), .B1(n143), .B2(n120), .ZN(n268) );
  OAI22_X1 U45 ( .A1(n281), .A2(n120), .B1(n143), .B2(n296), .ZN(n269) );
  INV_X1 U46 ( .A(data_in[0]), .ZN(n296) );
  OAI22_X1 U47 ( .A1(n284), .A2(n55), .B1(n143), .B2(n63), .ZN(n211) );
  OAI22_X1 U48 ( .A1(n285), .A2(n95), .B1(n143), .B2(n103), .ZN(n251) );
  OAI22_X1 U49 ( .A1(n285), .A2(n103), .B1(n143), .B2(n111), .ZN(n259) );
  OAI22_X1 U50 ( .A1(n285), .A2(n111), .B1(n143), .B2(n119), .ZN(n267) );
  OAI22_X1 U51 ( .A1(n285), .A2(n119), .B1(n143), .B2(n295), .ZN(n270) );
  INV_X1 U52 ( .A(data_in[1]), .ZN(n295) );
  OAI22_X1 U53 ( .A1(n284), .A2(n54), .B1(n143), .B2(n62), .ZN(n210) );
  OAI22_X1 U54 ( .A1(n285), .A2(n94), .B1(n143), .B2(n102), .ZN(n250) );
  OAI22_X1 U55 ( .A1(n285), .A2(n102), .B1(n143), .B2(n110), .ZN(n258) );
  OAI22_X1 U56 ( .A1(n285), .A2(n110), .B1(n143), .B2(n118), .ZN(n266) );
  OAI22_X1 U57 ( .A1(n283), .A2(n118), .B1(n143), .B2(n294), .ZN(n271) );
  INV_X1 U58 ( .A(data_in[2]), .ZN(n294) );
  OAI22_X1 U59 ( .A1(n284), .A2(n53), .B1(n143), .B2(n61), .ZN(n209) );
  OAI22_X1 U60 ( .A1(n284), .A2(n61), .B1(n143), .B2(n69), .ZN(n217) );
  OAI22_X1 U61 ( .A1(n282), .A2(n93), .B1(n143), .B2(n101), .ZN(n249) );
  OAI22_X1 U62 ( .A1(n285), .A2(n101), .B1(n143), .B2(n109), .ZN(n257) );
  OAI22_X1 U63 ( .A1(n285), .A2(n109), .B1(n143), .B2(n117), .ZN(n265) );
  OAI22_X1 U64 ( .A1(n284), .A2(n117), .B1(n143), .B2(n293), .ZN(n272) );
  INV_X1 U65 ( .A(data_in[3]), .ZN(n293) );
  OAI22_X1 U66 ( .A1(n284), .A2(n52), .B1(n143), .B2(n60), .ZN(n208) );
  OAI22_X1 U67 ( .A1(n284), .A2(n60), .B1(n143), .B2(n68), .ZN(n216) );
  OAI22_X1 U68 ( .A1(n283), .A2(n92), .B1(n143), .B2(n100), .ZN(n248) );
  OAI22_X1 U69 ( .A1(n285), .A2(n100), .B1(n143), .B2(n108), .ZN(n256) );
  OAI22_X1 U70 ( .A1(n285), .A2(n108), .B1(n143), .B2(n116), .ZN(n264) );
  OAI22_X1 U71 ( .A1(n283), .A2(n116), .B1(n143), .B2(n292), .ZN(n273) );
  INV_X1 U72 ( .A(data_in[4]), .ZN(n292) );
  OAI22_X1 U73 ( .A1(n283), .A2(n51), .B1(n143), .B2(n59), .ZN(n207) );
  OAI22_X1 U74 ( .A1(n284), .A2(n59), .B1(n143), .B2(n67), .ZN(n215) );
  OAI22_X1 U75 ( .A1(n285), .A2(n99), .B1(n143), .B2(n107), .ZN(n255) );
  OAI22_X1 U76 ( .A1(n282), .A2(n107), .B1(n143), .B2(n115), .ZN(n263) );
  OAI22_X1 U77 ( .A1(n281), .A2(n115), .B1(n143), .B2(n291), .ZN(n274) );
  INV_X1 U78 ( .A(data_in[5]), .ZN(n291) );
  OAI22_X1 U79 ( .A1(n283), .A2(n49), .B1(n143), .B2(n57), .ZN(n205) );
  OAI22_X1 U80 ( .A1(n284), .A2(n57), .B1(n143), .B2(n65), .ZN(n213) );
  OAI22_X1 U81 ( .A1(n282), .A2(n97), .B1(n143), .B2(n105), .ZN(n253) );
  OAI22_X1 U82 ( .A1(n285), .A2(n105), .B1(n143), .B2(n113), .ZN(n261) );
  OAI22_X1 U83 ( .A1(n280), .A2(n131), .B1(n137), .B2(n7), .ZN(n150) );
  OAI22_X1 U84 ( .A1(n280), .A2(n130), .B1(n136), .B2(n6), .ZN(n151) );
  OAI22_X1 U85 ( .A1(n129), .A2(n280), .B1(n136), .B2(n5), .ZN(n152) );
  OAI22_X1 U86 ( .A1(n280), .A2(n128), .B1(n136), .B2(n4), .ZN(n153) );
  OAI22_X1 U87 ( .A1(n280), .A2(n127), .B1(n136), .B2(n3), .ZN(n154) );
  OAI22_X1 U88 ( .A1(n280), .A2(n125), .B1(n136), .B2(n1), .ZN(n156) );
  OAI22_X1 U89 ( .A1(n281), .A2(n8), .B1(n138), .B2(n16), .ZN(n164) );
  OAI22_X1 U90 ( .A1(n281), .A2(n16), .B1(n137), .B2(n24), .ZN(n172) );
  OAI22_X1 U91 ( .A1(n282), .A2(n24), .B1(n138), .B2(n32), .ZN(n180) );
  OAI22_X1 U92 ( .A1(n282), .A2(n32), .B1(n138), .B2(n40), .ZN(n188) );
  OAI22_X1 U93 ( .A1(n283), .A2(n40), .B1(n139), .B2(n48), .ZN(n196) );
  OAI22_X1 U94 ( .A1(n284), .A2(n64), .B1(n141), .B2(n72), .ZN(n220) );
  OAI22_X1 U95 ( .A1(n284), .A2(n72), .B1(n141), .B2(n80), .ZN(n228) );
  OAI22_X1 U96 ( .A1(n284), .A2(n80), .B1(n277), .B2(n88), .ZN(n236) );
  OAI22_X1 U97 ( .A1(n281), .A2(n88), .B1(n277), .B2(n96), .ZN(n244) );
  OAI22_X1 U98 ( .A1(n281), .A2(n7), .B1(n136), .B2(n15), .ZN(n163) );
  OAI22_X1 U99 ( .A1(n281), .A2(n15), .B1(n137), .B2(n23), .ZN(n171) );
  OAI22_X1 U100 ( .A1(n282), .A2(n23), .B1(n137), .B2(n31), .ZN(n179) );
  OAI22_X1 U101 ( .A1(n282), .A2(n31), .B1(n138), .B2(n39), .ZN(n187) );
  OAI22_X1 U102 ( .A1(n283), .A2(n39), .B1(n139), .B2(n47), .ZN(n195) );
  OAI22_X1 U103 ( .A1(n283), .A2(n47), .B1(n139), .B2(n55), .ZN(n203) );
  OAI22_X1 U104 ( .A1(n284), .A2(n63), .B1(n141), .B2(n71), .ZN(n219) );
  OAI22_X1 U105 ( .A1(n283), .A2(n71), .B1(n141), .B2(n79), .ZN(n227) );
  OAI22_X1 U106 ( .A1(n285), .A2(n79), .B1(n277), .B2(n87), .ZN(n235) );
  OAI22_X1 U107 ( .A1(n281), .A2(n87), .B1(n277), .B2(n95), .ZN(n243) );
  OAI22_X1 U108 ( .A1(n281), .A2(n6), .B1(n138), .B2(n14), .ZN(n162) );
  OAI22_X1 U109 ( .A1(n281), .A2(n14), .B1(n137), .B2(n22), .ZN(n170) );
  OAI22_X1 U110 ( .A1(n282), .A2(n22), .B1(n138), .B2(n30), .ZN(n178) );
  OAI22_X1 U111 ( .A1(n282), .A2(n30), .B1(n139), .B2(n38), .ZN(n186) );
  OAI22_X1 U112 ( .A1(n283), .A2(n38), .B1(n139), .B2(n46), .ZN(n194) );
  OAI22_X1 U113 ( .A1(n283), .A2(n46), .B1(n139), .B2(n54), .ZN(n202) );
  OAI22_X1 U114 ( .A1(n284), .A2(n62), .B1(n141), .B2(n70), .ZN(n218) );
  OAI22_X1 U115 ( .A1(n282), .A2(n70), .B1(n141), .B2(n78), .ZN(n226) );
  OAI22_X1 U116 ( .A1(n281), .A2(n78), .B1(n277), .B2(n86), .ZN(n234) );
  OAI22_X1 U117 ( .A1(n285), .A2(n86), .B1(n277), .B2(n94), .ZN(n242) );
  OAI22_X1 U118 ( .A1(n280), .A2(n5), .B1(n137), .B2(n13), .ZN(n161) );
  OAI22_X1 U119 ( .A1(n281), .A2(n13), .B1(n137), .B2(n21), .ZN(n169) );
  OAI22_X1 U120 ( .A1(n284), .A2(n21), .B1(n138), .B2(n29), .ZN(n177) );
  OAI22_X1 U121 ( .A1(n282), .A2(n29), .B1(n139), .B2(n37), .ZN(n185) );
  OAI22_X1 U122 ( .A1(n283), .A2(n37), .B1(n139), .B2(n45), .ZN(n193) );
  OAI22_X1 U123 ( .A1(n283), .A2(n45), .B1(n139), .B2(n53), .ZN(n201) );
  OAI22_X1 U124 ( .A1(n284), .A2(n69), .B1(n141), .B2(n77), .ZN(n225) );
  OAI22_X1 U125 ( .A1(n283), .A2(n77), .B1(n277), .B2(n85), .ZN(n233) );
  OAI22_X1 U126 ( .A1(n283), .A2(n85), .B1(n277), .B2(n93), .ZN(n241) );
  OAI22_X1 U127 ( .A1(n280), .A2(n4), .B1(n137), .B2(n12), .ZN(n160) );
  OAI22_X1 U128 ( .A1(n281), .A2(n12), .B1(n137), .B2(n20), .ZN(n168) );
  OAI22_X1 U129 ( .A1(n281), .A2(n20), .B1(n137), .B2(n28), .ZN(n176) );
  OAI22_X1 U130 ( .A1(n282), .A2(n28), .B1(n138), .B2(n36), .ZN(n184) );
  OAI22_X1 U131 ( .A1(n282), .A2(n36), .B1(n139), .B2(n44), .ZN(n192) );
  OAI22_X1 U132 ( .A1(n283), .A2(n44), .B1(n139), .B2(n52), .ZN(n200) );
  OAI22_X1 U133 ( .A1(n282), .A2(n68), .B1(n141), .B2(n76), .ZN(n224) );
  OAI22_X1 U134 ( .A1(n281), .A2(n76), .B1(n141), .B2(n84), .ZN(n232) );
  OAI22_X1 U135 ( .A1(n282), .A2(n84), .B1(n277), .B2(n92), .ZN(n240) );
  OAI22_X1 U136 ( .A1(n280), .A2(n3), .B1(n137), .B2(n11), .ZN(n159) );
  OAI22_X1 U137 ( .A1(n281), .A2(n11), .B1(n137), .B2(n19), .ZN(n167) );
  OAI22_X1 U138 ( .A1(n281), .A2(n19), .B1(n137), .B2(n27), .ZN(n175) );
  OAI22_X1 U139 ( .A1(n282), .A2(n27), .B1(n138), .B2(n35), .ZN(n183) );
  OAI22_X1 U140 ( .A1(n282), .A2(n35), .B1(n138), .B2(n43), .ZN(n191) );
  OAI22_X1 U141 ( .A1(n283), .A2(n43), .B1(n139), .B2(n51), .ZN(n199) );
  OAI22_X1 U142 ( .A1(n285), .A2(n67), .B1(n141), .B2(n75), .ZN(n223) );
  OAI22_X1 U143 ( .A1(n284), .A2(n75), .B1(n141), .B2(n83), .ZN(n231) );
  OAI22_X1 U144 ( .A1(n284), .A2(n83), .B1(n277), .B2(n91), .ZN(n239) );
  OAI22_X1 U145 ( .A1(n281), .A2(n91), .B1(n277), .B2(n99), .ZN(n247) );
  OAI22_X1 U146 ( .A1(n280), .A2(n1), .B1(n136), .B2(n9), .ZN(n157) );
  OAI22_X1 U147 ( .A1(n281), .A2(n9), .B1(n136), .B2(n17), .ZN(n165) );
  OAI22_X1 U148 ( .A1(n281), .A2(n17), .B1(n138), .B2(n25), .ZN(n173) );
  OAI22_X1 U149 ( .A1(n282), .A2(n25), .B1(n138), .B2(n33), .ZN(n181) );
  OAI22_X1 U150 ( .A1(n282), .A2(n33), .B1(n138), .B2(n41), .ZN(n189) );
  OAI22_X1 U151 ( .A1(n283), .A2(n41), .B1(n139), .B2(n49), .ZN(n197) );
  OAI22_X1 U152 ( .A1(n283), .A2(n65), .B1(n141), .B2(n73), .ZN(n221) );
  OAI22_X1 U153 ( .A1(n282), .A2(n73), .B1(n141), .B2(n81), .ZN(n229) );
  OAI22_X1 U154 ( .A1(n285), .A2(n81), .B1(n277), .B2(n89), .ZN(n237) );
  OAI22_X1 U155 ( .A1(n281), .A2(n89), .B1(n277), .B2(n97), .ZN(n245) );
  OAI22_X1 U156 ( .A1(n280), .A2(n113), .B1(n136), .B2(n289), .ZN(n276) );
  INV_X1 U157 ( .A(data_in[7]), .ZN(n289) );
  INV_X1 U162 ( .A(n286), .ZN(n281) );
  INV_X1 U163 ( .A(n286), .ZN(n282) );
  INV_X1 U164 ( .A(n286), .ZN(n283) );
  INV_X1 U165 ( .A(n286), .ZN(n284) );
  INV_X1 U166 ( .A(n286), .ZN(n285) );
  NAND2_X2 U3 ( .A1(n280), .A2(rst_n), .ZN(n143) );
  INV_X1 U4 ( .A(n280), .ZN(n286) );
  NAND2_X1 U5 ( .A1(rst_n), .A2(n297), .ZN(n280) );
  NAND2_X1 U13 ( .A1(config_data_enable), .A2(config_enable), .ZN(n297) );
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
         config_enable, expand_enable, judge_enable, N10, N11, N12, N13, N14,
         N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84,
         N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98,
         N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137, N152, N153, N154, N164, N165, N166,
         N176, N177, N178, N188, N189, N190, N221, N222, N223, N224, N225,
         N226, N227, N228, N229, N230, N231, N232, N233, N234, N235, N236,
         N237, N238, N239, N240, N241, N242, N243, N244, N273, N274, N275,
         N276, N277, N278, N279, N280, N281, N282, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, N220, N219, N218, N217, N216, N215, N214,
         N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203,
         N202, N201, N200, N199, N198, N197, n282, n283, n284, n285, n286,
         n293, n294, n295, n296, n299, n300, n301, n308, n309, n310, n311,
         n312, n313, n314, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375;
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

  DFF_X1 data_15_reg_0_ ( .D(N130), .CK(clk), .Q(data_15[0]), .QN(n185) );
  DFF_X1 data_0_reg_7_ ( .D(N17), .CK(clk), .Q(data_0[7]), .QN(n170) );
  DFF_X1 data_1_reg_7_ ( .D(N25), .CK(clk), .Q(data_1[7]), .QN(n162) );
  DFF_X1 data_2_reg_7_ ( .D(N33), .CK(clk), .Q(data_2[7]), .QN(n154) );
  DFF_X1 data_3_reg_7_ ( .D(N41), .CK(clk), .Q(data_3[7]), .QN(n146) );
  DFF_X1 data_4_reg_7_ ( .D(N49), .CK(clk), .Q(data_4[7]), .QN(n138) );
  DFF_X1 data_5_reg_7_ ( .D(N57), .CK(clk), .Q(data_5[7]), .QN(n130) );
  DFF_X1 data_6_reg_7_ ( .D(N65), .CK(clk), .Q(data_6[7]), .QN(n122) );
  DFF_X1 data_7_reg_7_ ( .D(N73), .CK(clk), .Q(data_7[7]), .QN(n114) );
  DFF_X1 data_8_reg_7_ ( .D(N81), .CK(clk), .Q(data_8[7]), .QN(n106) );
  DFF_X1 data_9_reg_7_ ( .D(N89), .CK(clk), .Q(data_9[7]), .QN(n98) );
  DFF_X1 data_10_reg_7_ ( .D(N97), .CK(clk), .Q(data_10[7]), .QN(n90) );
  DFF_X1 data_0_reg_6_ ( .D(N16), .CK(clk), .Q(data_0[6]), .QN(n171) );
  DFF_X1 data_1_reg_6_ ( .D(N24), .CK(clk), .Q(data_1[6]), .QN(n163) );
  DFF_X1 data_2_reg_6_ ( .D(N32), .CK(clk), .Q(data_2[6]), .QN(n155) );
  DFF_X1 data_3_reg_6_ ( .D(N40), .CK(clk), .Q(data_3[6]), .QN(n147) );
  DFF_X1 data_4_reg_6_ ( .D(N48), .CK(clk), .Q(data_4[6]), .QN(n139) );
  DFF_X1 data_5_reg_6_ ( .D(N56), .CK(clk), .Q(data_5[6]), .QN(n131) );
  DFF_X1 data_6_reg_6_ ( .D(N64), .CK(clk), .Q(data_6[6]), .QN(n123) );
  DFF_X1 data_7_reg_6_ ( .D(N72), .CK(clk), .Q(data_7[6]), .QN(n115) );
  DFF_X1 data_8_reg_6_ ( .D(N80), .CK(clk), .Q(data_8[6]), .QN(n107) );
  DFF_X1 data_9_reg_6_ ( .D(N88), .CK(clk), .Q(data_9[6]), .QN(n99) );
  DFF_X1 data_10_reg_6_ ( .D(N96), .CK(clk), .Q(data_10[6]), .QN(n91) );
  DFF_X1 data_0_reg_5_ ( .D(N15), .CK(clk), .Q(data_0[5]), .QN(n172) );
  DFF_X1 data_1_reg_5_ ( .D(N23), .CK(clk), .Q(data_1[5]), .QN(n164) );
  DFF_X1 data_2_reg_5_ ( .D(N31), .CK(clk), .Q(data_2[5]), .QN(n156) );
  DFF_X1 data_3_reg_5_ ( .D(N39), .CK(clk), .Q(data_3[5]), .QN(n148) );
  DFF_X1 data_4_reg_5_ ( .D(N47), .CK(clk), .Q(data_4[5]), .QN(n140) );
  DFF_X1 data_5_reg_5_ ( .D(N55), .CK(clk), .Q(data_5[5]), .QN(n132) );
  DFF_X1 data_6_reg_5_ ( .D(N63), .CK(clk), .Q(data_6[5]), .QN(n124) );
  DFF_X1 data_7_reg_5_ ( .D(N71), .CK(clk), .Q(data_7[5]), .QN(n116) );
  DFF_X1 data_8_reg_5_ ( .D(N79), .CK(clk), .Q(data_8[5]), .QN(n108) );
  DFF_X1 data_9_reg_5_ ( .D(N87), .CK(clk), .Q(data_9[5]), .QN(n100) );
  DFF_X1 data_10_reg_5_ ( .D(N95), .CK(clk), .Q(data_10[5]), .QN(n92) );
  DFF_X1 data_0_reg_4_ ( .D(N14), .CK(clk), .Q(data_0[4]), .QN(n173) );
  DFF_X1 data_1_reg_4_ ( .D(N22), .CK(clk), .Q(data_1[4]), .QN(n165) );
  DFF_X1 data_2_reg_4_ ( .D(N30), .CK(clk), .Q(data_2[4]), .QN(n157) );
  DFF_X1 data_3_reg_4_ ( .D(N38), .CK(clk), .Q(data_3[4]), .QN(n149) );
  DFF_X1 data_4_reg_4_ ( .D(N46), .CK(clk), .Q(data_4[4]), .QN(n141) );
  DFF_X1 data_5_reg_4_ ( .D(N54), .CK(clk), .Q(data_5[4]), .QN(n133) );
  DFF_X1 data_6_reg_4_ ( .D(N62), .CK(clk), .Q(data_6[4]), .QN(n125) );
  DFF_X1 data_7_reg_4_ ( .D(N70), .CK(clk), .Q(data_7[4]), .QN(n117) );
  DFF_X1 data_8_reg_4_ ( .D(N78), .CK(clk), .Q(data_8[4]), .QN(n109) );
  DFF_X1 data_9_reg_4_ ( .D(N86), .CK(clk), .Q(data_9[4]), .QN(n101) );
  DFF_X1 data_10_reg_4_ ( .D(N94), .CK(clk), .Q(data_10[4]), .QN(n93) );
  DFF_X1 data_0_reg_3_ ( .D(N13), .CK(clk), .Q(data_0[3]), .QN(n174) );
  DFF_X1 data_1_reg_3_ ( .D(N21), .CK(clk), .Q(data_1[3]), .QN(n166) );
  DFF_X1 data_2_reg_3_ ( .D(N29), .CK(clk), .Q(data_2[3]), .QN(n158) );
  DFF_X1 data_3_reg_3_ ( .D(N37), .CK(clk), .Q(data_3[3]), .QN(n150) );
  DFF_X1 data_4_reg_3_ ( .D(N45), .CK(clk), .Q(data_4[3]), .QN(n142) );
  DFF_X1 data_5_reg_3_ ( .D(N53), .CK(clk), .Q(data_5[3]), .QN(n134) );
  DFF_X1 data_6_reg_3_ ( .D(N61), .CK(clk), .Q(data_6[3]), .QN(n126) );
  DFF_X1 data_7_reg_3_ ( .D(N69), .CK(clk), .Q(data_7[3]), .QN(n118) );
  DFF_X1 data_8_reg_3_ ( .D(N77), .CK(clk), .Q(data_8[3]), .QN(n110) );
  DFF_X1 data_9_reg_3_ ( .D(N85), .CK(clk), .Q(data_9[3]), .QN(n102) );
  DFF_X1 data_10_reg_3_ ( .D(N93), .CK(clk), .Q(data_10[3]), .QN(n94) );
  DFF_X1 data_0_reg_2_ ( .D(N12), .CK(clk), .Q(data_0[2]), .QN(n175) );
  DFF_X1 data_1_reg_2_ ( .D(N20), .CK(clk), .Q(data_1[2]), .QN(n167) );
  DFF_X1 data_2_reg_2_ ( .D(N28), .CK(clk), .Q(data_2[2]), .QN(n159) );
  DFF_X1 data_3_reg_2_ ( .D(N36), .CK(clk), .Q(data_3[2]), .QN(n151) );
  DFF_X1 data_4_reg_2_ ( .D(N44), .CK(clk), .Q(data_4[2]), .QN(n143) );
  DFF_X1 data_5_reg_2_ ( .D(N52), .CK(clk), .Q(data_5[2]), .QN(n135) );
  DFF_X1 data_6_reg_2_ ( .D(N60), .CK(clk), .Q(data_6[2]), .QN(n127) );
  DFF_X1 data_7_reg_2_ ( .D(N68), .CK(clk), .Q(data_7[2]), .QN(n119) );
  DFF_X1 data_8_reg_2_ ( .D(N76), .CK(clk), .Q(data_8[2]), .QN(n111) );
  DFF_X1 data_9_reg_2_ ( .D(N84), .CK(clk), .Q(data_9[2]), .QN(n103) );
  DFF_X1 data_10_reg_2_ ( .D(N92), .CK(clk), .Q(data_10[2]), .QN(n95) );
  DFF_X1 data_0_reg_1_ ( .D(N11), .CK(clk), .Q(data_0[1]), .QN(n176) );
  DFF_X1 data_1_reg_1_ ( .D(N19), .CK(clk), .Q(data_1[1]), .QN(n168) );
  DFF_X1 data_2_reg_1_ ( .D(N27), .CK(clk), .Q(data_2[1]), .QN(n160) );
  DFF_X1 data_3_reg_1_ ( .D(N35), .CK(clk), .Q(data_3[1]), .QN(n152) );
  DFF_X1 data_4_reg_1_ ( .D(N43), .CK(clk), .Q(data_4[1]), .QN(n144) );
  DFF_X1 data_5_reg_1_ ( .D(N51), .CK(clk), .Q(data_5[1]), .QN(n136) );
  DFF_X1 data_6_reg_1_ ( .D(N59), .CK(clk), .Q(data_6[1]), .QN(n128) );
  DFF_X1 data_7_reg_1_ ( .D(N67), .CK(clk), .Q(data_7[1]), .QN(n120) );
  DFF_X1 data_8_reg_1_ ( .D(N75), .CK(clk), .Q(data_8[1]), .QN(n112) );
  DFF_X1 data_9_reg_1_ ( .D(N83), .CK(clk), .Q(data_9[1]), .QN(n104) );
  DFF_X1 data_10_reg_1_ ( .D(N91), .CK(clk), .Q(data_10[1]), .QN(n96) );
  DFF_X1 data_11_reg_1_ ( .D(N99), .CK(clk), .Q(data_11[1]), .QN(n88) );
  DFF_X1 data_12_reg_1_ ( .D(N107), .CK(clk), .Q(data_12[1]), .QN(n80) );
  DFF_X1 data_13_reg_1_ ( .D(N115), .CK(clk), .Q(data_13[1]), .QN(n72) );
  DFF_X1 data_14_reg_1_ ( .D(N123), .CK(clk), .Q(data_14[1]), .QN(n64) );
  DFF_X1 data_15_reg_1_ ( .D(N131), .CK(clk), .Q(data_15[1]), .QN(n184) );
  DFF_X1 data_11_reg_7_ ( .D(N105), .CK(clk), .Q(data_11[7]), .QN(n82) );
  DFF_X1 data_12_reg_7_ ( .D(N113), .CK(clk), .Q(data_12[7]), .QN(n74) );
  DFF_X1 data_13_reg_7_ ( .D(N121), .CK(clk), .Q(data_13[7]), .QN(n66) );
  DFF_X1 data_14_reg_7_ ( .D(N129), .CK(clk), .Q(data_14[7]), .QN(n58) );
  DFF_X1 data_15_reg_7_ ( .D(N137), .CK(clk), .Q(data_15[7]), .QN(n178) );
  DFF_X1 data_11_reg_6_ ( .D(N104), .CK(clk), .Q(data_11[6]), .QN(n83) );
  DFF_X1 data_12_reg_6_ ( .D(N112), .CK(clk), .Q(data_12[6]), .QN(n75) );
  DFF_X1 data_13_reg_6_ ( .D(N120), .CK(clk), .Q(data_13[6]), .QN(n67) );
  DFF_X1 data_14_reg_6_ ( .D(N128), .CK(clk), .Q(data_14[6]), .QN(n59) );
  DFF_X1 data_15_reg_6_ ( .D(N136), .CK(clk), .Q(data_15[6]), .QN(n179) );
  DFF_X1 data_11_reg_5_ ( .D(N103), .CK(clk), .Q(data_11[5]), .QN(n84) );
  DFF_X1 data_12_reg_5_ ( .D(N111), .CK(clk), .Q(data_12[5]), .QN(n76) );
  DFF_X1 data_13_reg_5_ ( .D(N119), .CK(clk), .Q(data_13[5]), .QN(n68) );
  DFF_X1 data_14_reg_5_ ( .D(N127), .CK(clk), .Q(data_14[5]), .QN(n60) );
  DFF_X1 data_15_reg_5_ ( .D(N135), .CK(clk), .Q(data_15[5]), .QN(n180) );
  DFF_X1 data_11_reg_4_ ( .D(N102), .CK(clk), .Q(data_11[4]), .QN(n85) );
  DFF_X1 data_12_reg_4_ ( .D(N110), .CK(clk), .Q(data_12[4]), .QN(n77) );
  DFF_X1 data_13_reg_4_ ( .D(N118), .CK(clk), .Q(data_13[4]), .QN(n69) );
  DFF_X1 data_14_reg_4_ ( .D(N126), .CK(clk), .Q(data_14[4]), .QN(n61) );
  DFF_X1 data_15_reg_4_ ( .D(N134), .CK(clk), .Q(data_15[4]), .QN(n181) );
  DFF_X1 data_11_reg_3_ ( .D(N101), .CK(clk), .Q(data_11[3]), .QN(n86) );
  DFF_X1 data_12_reg_3_ ( .D(N109), .CK(clk), .Q(data_12[3]), .QN(n78) );
  DFF_X1 data_13_reg_3_ ( .D(N117), .CK(clk), .Q(data_13[3]), .QN(n70) );
  DFF_X1 data_14_reg_3_ ( .D(N125), .CK(clk), .Q(data_14[3]), .QN(n62) );
  DFF_X1 data_15_reg_3_ ( .D(N133), .CK(clk), .Q(data_15[3]), .QN(n182) );
  DFF_X1 data_11_reg_2_ ( .D(N100), .CK(clk), .Q(data_11[2]), .QN(n87) );
  DFF_X1 data_12_reg_2_ ( .D(N108), .CK(clk), .Q(data_12[2]), .QN(n79) );
  DFF_X1 data_13_reg_2_ ( .D(N116), .CK(clk), .Q(data_13[2]), .QN(n71) );
  DFF_X1 data_14_reg_2_ ( .D(N124), .CK(clk), .Q(data_14[2]), .QN(n63) );
  DFF_X1 data_15_reg_2_ ( .D(N132), .CK(clk), .Q(data_15[2]), .QN(n183) );
  DFF_X1 data_0_reg_0_ ( .D(N10), .CK(clk), .Q(data_0[0]), .QN(n177) );
  DFF_X1 data_1_reg_0_ ( .D(N18), .CK(clk), .Q(data_1[0]), .QN(n169) );
  DFF_X1 data_2_reg_0_ ( .D(N26), .CK(clk), .Q(data_2[0]), .QN(n161) );
  DFF_X1 data_3_reg_0_ ( .D(N34), .CK(clk), .Q(data_3[0]), .QN(n153) );
  DFF_X1 data_4_reg_0_ ( .D(N42), .CK(clk), .Q(data_4[0]), .QN(n145) );
  DFF_X1 data_5_reg_0_ ( .D(N50), .CK(clk), .Q(data_5[0]), .QN(n137) );
  DFF_X1 data_6_reg_0_ ( .D(N58), .CK(clk), .Q(data_6[0]), .QN(n129) );
  DFF_X1 data_7_reg_0_ ( .D(N66), .CK(clk), .Q(data_7[0]), .QN(n121) );
  DFF_X1 data_8_reg_0_ ( .D(N74), .CK(clk), .Q(data_8[0]), .QN(n113) );
  DFF_X1 data_9_reg_0_ ( .D(N82), .CK(clk), .Q(data_9[0]), .QN(n105) );
  DFF_X1 data_10_reg_0_ ( .D(N90), .CK(clk), .Q(data_10[0]), .QN(n97) );
  DFF_X1 data_11_reg_0_ ( .D(N98), .CK(clk), .Q(data_11[0]), .QN(n89) );
  DFF_X1 data_12_reg_0_ ( .D(N106), .CK(clk), .Q(data_12[0]), .QN(n81) );
  DFF_X1 data_13_reg_0_ ( .D(N114), .CK(clk), .Q(data_13[0]), .QN(n73) );
  DFF_X1 data_14_reg_0_ ( .D(N122), .CK(clk), .Q(data_14[0]), .QN(n65) );
  DFF_X1 sum_3_3_reg_11_ ( .D(N178), .CK(clk), .Q(sum_3_3[11]), .QN(n186) );
  DFF_X1 sum_3_3_reg_10_ ( .D(N177), .CK(clk), .Q(sum_3_3[10]), .QN(n187) );
  DFF_X1 sum_3_3_reg_9_ ( .D(N176), .CK(clk), .Q(sum_3_3[9]), .QN(n188) );
  DFF_X1 sum_3_3_reg_8_ ( .D(n347), .CK(clk), .Q(sum_3_3[8]) );
  DFF_X1 sum_3_3_reg_7_ ( .D(n346), .CK(clk), .Q(sum_3_3[7]) );
  DFF_X1 sum_3_3_reg_6_ ( .D(n345), .CK(clk), .Q(sum_3_3[6]) );
  DFF_X1 sum_3_3_reg_5_ ( .D(n344), .CK(clk), .Q(sum_3_3[5]) );
  DFF_X1 sum_3_3_reg_4_ ( .D(n343), .CK(clk), .Q(sum_3_3[4]) );
  DFF_X1 sum_3_3_reg_3_ ( .D(n342), .CK(clk), .Q(sum_3_3[3]) );
  DFF_X1 sum_3_3_reg_2_ ( .D(n341), .CK(clk), .Q(sum_3_3[2]) );
  DFF_X1 sum_3_3_reg_1_ ( .D(n340), .CK(clk), .Q(sum_3_3[1]) );
  DFF_X1 sum_3_3_reg_0_ ( .D(n339), .CK(clk), .Q(sum_3_3[0]) );
  DFF_X1 sum_2_2_reg_11_ ( .D(N166), .CK(clk), .Q(sum_2_2[11]), .QN(n189) );
  DFF_X1 sum_2_2_reg_10_ ( .D(N165), .CK(clk), .Q(sum_2_2[10]), .QN(n190) );
  DFF_X1 sum_2_2_reg_9_ ( .D(N164), .CK(clk), .Q(sum_2_2[9]), .QN(n191) );
  DFF_X1 sum_2_2_reg_8_ ( .D(n338), .CK(clk), .Q(sum_2_2[8]) );
  DFF_X1 sum_2_2_reg_7_ ( .D(n337), .CK(clk), .Q(sum_2_2[7]) );
  DFF_X1 sum_2_2_reg_6_ ( .D(n336), .CK(clk), .Q(sum_2_2[6]) );
  DFF_X1 sum_2_2_reg_5_ ( .D(n335), .CK(clk), .Q(sum_2_2[5]) );
  DFF_X1 sum_2_2_reg_4_ ( .D(n334), .CK(clk), .Q(sum_2_2[4]) );
  DFF_X1 sum_2_2_reg_3_ ( .D(n333), .CK(clk), .Q(sum_2_2[3]) );
  DFF_X1 sum_2_2_reg_2_ ( .D(n332), .CK(clk), .Q(sum_2_2[2]) );
  DFF_X1 sum_2_2_reg_1_ ( .D(n331), .CK(clk), .Q(sum_2_2[1]) );
  DFF_X1 sum_2_2_reg_0_ ( .D(n330), .CK(clk), .Q(sum_2_2[0]) );
  DFF_X1 sum_1_1_reg_11_ ( .D(N154), .CK(clk), .Q(sum_1_1[11]), .QN(n192) );
  DFF_X1 sum_1_1_reg_10_ ( .D(N153), .CK(clk), .Q(sum_1_1[10]), .QN(n193) );
  DFF_X1 sum_1_1_reg_9_ ( .D(N152), .CK(clk), .Q(sum_1_1[9]), .QN(n194) );
  DFF_X1 sum_1_1_reg_8_ ( .D(n365), .CK(clk), .Q(sum_1_1[8]) );
  DFF_X1 sum_1_1_reg_7_ ( .D(n364), .CK(clk), .Q(sum_1_1[7]) );
  DFF_X1 sum_1_1_reg_6_ ( .D(n363), .CK(clk), .Q(sum_1_1[6]) );
  DFF_X1 sum_1_1_reg_5_ ( .D(n362), .CK(clk), .Q(sum_1_1[5]) );
  DFF_X1 sum_1_1_reg_4_ ( .D(n361), .CK(clk), .Q(sum_1_1[4]) );
  DFF_X1 sum_1_1_reg_3_ ( .D(n360), .CK(clk), .Q(sum_1_1[3]) );
  DFF_X1 sum_1_1_reg_2_ ( .D(n359), .CK(clk), .Q(sum_1_1[2]) );
  DFF_X1 sum_1_1_reg_1_ ( .D(n358), .CK(clk), .Q(sum_1_1[1]) );
  DFF_X1 sum_1_1_reg_0_ ( .D(n357), .CK(clk), .Q(sum_1_1[0]) );
  DFF_X1 sum_4_4_reg_11_ ( .D(N190), .CK(clk), .Q(sum_4_4[11]), .QN(n195) );
  DFF_X1 sum_4_4_reg_10_ ( .D(N189), .CK(clk), .Q(sum_4_4[10]), .QN(n196) );
  DFF_X1 sum_4_4_reg_9_ ( .D(N188), .CK(clk), .Q(sum_4_4[9]), .QN(n197) );
  DFF_X1 sum_4_4_reg_8_ ( .D(n356), .CK(clk), .Q(sum_4_4[8]) );
  DFF_X1 sum_4_4_reg_7_ ( .D(n355), .CK(clk), .Q(sum_4_4[7]) );
  DFF_X1 sum_4_4_reg_6_ ( .D(n354), .CK(clk), .Q(sum_4_4[6]) );
  DFF_X1 sum_4_4_reg_5_ ( .D(n353), .CK(clk), .Q(sum_4_4[5]) );
  DFF_X1 sum_4_4_reg_4_ ( .D(n352), .CK(clk), .Q(sum_4_4[4]) );
  DFF_X1 sum_4_4_reg_3_ ( .D(n351), .CK(clk), .Q(sum_4_4[3]) );
  DFF_X1 sum_4_4_reg_2_ ( .D(n350), .CK(clk), .Q(sum_4_4[2]) );
  DFF_X1 sum_4_4_reg_1_ ( .D(n349), .CK(clk), .Q(sum_4_4[1]) );
  DFF_X1 sum_4_4_reg_0_ ( .D(n348), .CK(clk), .Q(sum_4_4[0]) );
  DFF_X1 sum_reg_11_ ( .D(N244), .CK(clk), .QN(n198) );
  DFF_X1 sum_reg_10_ ( .D(N243), .CK(clk), .QN(n199) );
  DFF_X1 sum_reg_9_ ( .D(N242), .CK(clk), .QN(n200) );
  DFF_X1 sum_reg_8_ ( .D(N241), .CK(clk), .QN(n201) );
  DFF_X1 sum_reg_7_ ( .D(N240), .CK(clk), .QN(n202) );
  DFF_X1 sum_reg_6_ ( .D(N239), .CK(clk), .QN(n203) );
  DFF_X1 sum_reg_5_ ( .D(N238), .CK(clk), .QN(n204) );
  DFF_X1 sum_reg_4_ ( .D(N237), .CK(clk), .QN(n205) );
  DFF_X1 sum_reg_3_ ( .D(N236), .CK(clk), .QN(n206) );
  DFF_X1 sum_reg_2_ ( .D(N235), .CK(clk), .QN(n207) );
  DFF_X1 sum_reg_1_ ( .D(N234), .CK(clk), .QN(n208) );
  DFF_X1 sum_reg_0_ ( .D(N233), .CK(clk), .QN(n209) );
  DFF_X1 overflow_flag_reg_1_ ( .D(N282), .CK(clk), .Q(overflow_flag[1]), .QN(
        n210) );
  DFF_X1 overflow_flag_reg_0_ ( .D(N281), .CK(clk), .Q(overflow_flag[0]), .QN(
        n211) );
  DFF_X1 data_out_reg_7_ ( .D(N280), .CK(clk), .Q(data_out[7]), .QN(n212) );
  DFF_X1 data_out_reg_6_ ( .D(N279), .CK(clk), .Q(data_out[6]) );
  DFF_X1 data_out_reg_5_ ( .D(N278), .CK(clk), .Q(data_out[5]) );
  DFF_X1 data_out_reg_4_ ( .D(N277), .CK(clk), .Q(data_out[4]) );
  DFF_X1 data_out_reg_3_ ( .D(N276), .CK(clk), .Q(data_out[3]) );
  DFF_X1 data_out_reg_2_ ( .D(N275), .CK(clk), .Q(data_out[2]) );
  DFF_X1 data_out_reg_1_ ( .D(N274), .CK(clk), .Q(data_out[1]) );
  DFF_X1 data_out_reg_0_ ( .D(N273), .CK(clk), .Q(data_out[0]) );
  NAND3_X1 U284 ( .A1(n237), .A2(n198), .A3(n366), .ZN(n227) );
  NAND4_X1 U285 ( .A1(n199), .A2(n202), .A3(n201), .A4(n200), .ZN(n237) );
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
        .CI(1'b0), .SUM({N208, N207, N206, N205, N204, N203, N202, N201, N200, 
        N199, N198, N197}) );
  FIR_DW01_add_1 add_2_root_add_0_root_add_228_3 ( .A(sum_2_2), .B(sum_4_4), 
        .CI(1'b0), .SUM({N220, N219, N218, N217, N216, N215, N214, N213, N212, 
        N211, N210, N209}) );
  FIR_DW01_add_0 add_0_root_add_0_root_add_228_3 ( .A({N220, N219, N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209}), .B({N208, N207, N206, 
        N205, N204, N203, N202, N201, N200, N199, N198, N197}), .CI(1'b0), 
        .SUM({N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, 
        N221}) );
  NOR2_X1 U286 ( .A1(n317), .A2(judge_enable), .ZN(n228) );
  CLKBUF_X1 U287 ( .A(n222), .Z(n311) );
  CLKBUF_X1 U290 ( .A(n222), .Z(n308) );
  CLKBUF_X1 U291 ( .A(n222), .Z(n309) );
  CLKBUF_X1 U292 ( .A(n222), .Z(n310) );
  INV_X1 U293 ( .A(n286), .ZN(n282) );
  INV_X1 U294 ( .A(n285), .ZN(n283) );
  CLKBUF_X1 U295 ( .A(n222), .Z(n314) );
  INV_X1 U296 ( .A(n286), .ZN(n284) );
  CLKBUF_X1 U299 ( .A(n223), .Z(n296) );
  CLKBUF_X1 U300 ( .A(n223), .Z(n295) );
  CLKBUF_X1 U302 ( .A(n223), .Z(n301) );
  CLKBUF_X1 U303 ( .A(n223), .Z(n300) );
  CLKBUF_X1 U304 ( .A(n223), .Z(n299) );
  CLKBUF_X1 U306 ( .A(n222), .Z(n312) );
  CLKBUF_X1 U307 ( .A(n222), .Z(n313) );
  CLKBUF_X1 U308 ( .A(n223), .Z(n293) );
  CLKBUF_X1 U309 ( .A(n223), .Z(n294) );
  INV_X1 U313 ( .A(n225), .ZN(n366) );
  INV_X1 U315 ( .A(n228), .ZN(n367) );
  OAI22_X1 U322 ( .A1(n222), .A2(n97), .B1(n223), .B2(n89), .ZN(N98) );
  OAI22_X1 U323 ( .A1(n310), .A2(n96), .B1(n223), .B2(n88), .ZN(N99) );
  OAI22_X1 U324 ( .A1(n222), .A2(n103), .B1(n223), .B2(n95), .ZN(N92) );
  OAI22_X1 U325 ( .A1(n222), .A2(n102), .B1(n223), .B2(n94), .ZN(N93) );
  OAI22_X1 U326 ( .A1(n222), .A2(n101), .B1(n223), .B2(n93), .ZN(N94) );
  OAI22_X1 U327 ( .A1(n222), .A2(n100), .B1(n223), .B2(n92), .ZN(N95) );
  OAI22_X1 U328 ( .A1(n222), .A2(n99), .B1(n223), .B2(n91), .ZN(N96) );
  OAI22_X1 U329 ( .A1(n222), .A2(n98), .B1(n223), .B2(n90), .ZN(N97) );
  OAI22_X1 U330 ( .A1(n222), .A2(n105), .B1(n223), .B2(n97), .ZN(N90) );
  OAI22_X1 U331 ( .A1(n222), .A2(n113), .B1(n223), .B2(n105), .ZN(N82) );
  OAI22_X1 U332 ( .A1(n308), .A2(n121), .B1(n301), .B2(n113), .ZN(N74) );
  OAI22_X1 U333 ( .A1(n308), .A2(n129), .B1(n300), .B2(n121), .ZN(N66) );
  OAI22_X1 U334 ( .A1(n309), .A2(n137), .B1(n300), .B2(n129), .ZN(N58) );
  OAI22_X1 U335 ( .A1(n309), .A2(n145), .B1(n299), .B2(n137), .ZN(N50) );
  OAI22_X1 U336 ( .A1(n310), .A2(n153), .B1(n223), .B2(n145), .ZN(N42) );
  OAI22_X1 U337 ( .A1(n311), .A2(n161), .B1(n223), .B2(n153), .ZN(N34) );
  OAI22_X1 U338 ( .A1(n311), .A2(n169), .B1(n223), .B2(n161), .ZN(N26) );
  OAI22_X1 U339 ( .A1(n222), .A2(n104), .B1(n223), .B2(n96), .ZN(N91) );
  OAI22_X1 U340 ( .A1(n222), .A2(n112), .B1(n223), .B2(n104), .ZN(N83) );
  OAI22_X1 U341 ( .A1(n222), .A2(n120), .B1(n301), .B2(n112), .ZN(N75) );
  OAI22_X1 U342 ( .A1(n308), .A2(n128), .B1(n300), .B2(n120), .ZN(N67) );
  OAI22_X1 U343 ( .A1(n309), .A2(n136), .B1(n300), .B2(n128), .ZN(N59) );
  OAI22_X1 U344 ( .A1(n309), .A2(n144), .B1(n299), .B2(n136), .ZN(N51) );
  OAI22_X1 U345 ( .A1(n310), .A2(n152), .B1(n223), .B2(n144), .ZN(N43) );
  OAI22_X1 U346 ( .A1(n311), .A2(n160), .B1(n223), .B2(n152), .ZN(N35) );
  OAI22_X1 U347 ( .A1(n311), .A2(n168), .B1(n223), .B2(n160), .ZN(N27) );
  OAI22_X1 U348 ( .A1(n222), .A2(n111), .B1(n223), .B2(n103), .ZN(N84) );
  OAI22_X1 U349 ( .A1(n222), .A2(n119), .B1(n301), .B2(n111), .ZN(N76) );
  OAI22_X1 U350 ( .A1(n308), .A2(n127), .B1(n301), .B2(n119), .ZN(N68) );
  OAI22_X1 U351 ( .A1(n309), .A2(n135), .B1(n300), .B2(n127), .ZN(N60) );
  OAI22_X1 U352 ( .A1(n309), .A2(n143), .B1(n299), .B2(n135), .ZN(N52) );
  OAI22_X1 U353 ( .A1(n310), .A2(n151), .B1(n299), .B2(n143), .ZN(N44) );
  OAI22_X1 U354 ( .A1(n311), .A2(n159), .B1(n223), .B2(n151), .ZN(N36) );
  OAI22_X1 U355 ( .A1(n311), .A2(n167), .B1(n223), .B2(n159), .ZN(N28) );
  OAI22_X1 U356 ( .A1(n222), .A2(n110), .B1(n223), .B2(n102), .ZN(N85) );
  OAI22_X1 U357 ( .A1(n222), .A2(n118), .B1(n301), .B2(n110), .ZN(N77) );
  OAI22_X1 U358 ( .A1(n308), .A2(n126), .B1(n301), .B2(n118), .ZN(N69) );
  OAI22_X1 U359 ( .A1(n309), .A2(n134), .B1(n300), .B2(n126), .ZN(N61) );
  OAI22_X1 U360 ( .A1(n309), .A2(n142), .B1(n299), .B2(n134), .ZN(N53) );
  OAI22_X1 U361 ( .A1(n310), .A2(n150), .B1(n299), .B2(n142), .ZN(N45) );
  OAI22_X1 U362 ( .A1(n310), .A2(n158), .B1(n223), .B2(n150), .ZN(N37) );
  OAI22_X1 U363 ( .A1(n311), .A2(n166), .B1(n223), .B2(n158), .ZN(N29) );
  OAI22_X1 U364 ( .A1(n222), .A2(n109), .B1(n223), .B2(n101), .ZN(N86) );
  OAI22_X1 U365 ( .A1(n222), .A2(n117), .B1(n301), .B2(n109), .ZN(N78) );
  OAI22_X1 U366 ( .A1(n308), .A2(n125), .B1(n301), .B2(n117), .ZN(N70) );
  OAI22_X1 U367 ( .A1(n308), .A2(n133), .B1(n300), .B2(n125), .ZN(N62) );
  OAI22_X1 U368 ( .A1(n309), .A2(n141), .B1(n299), .B2(n133), .ZN(N54) );
  OAI22_X1 U369 ( .A1(n310), .A2(n149), .B1(n299), .B2(n141), .ZN(N46) );
  OAI22_X1 U370 ( .A1(n310), .A2(n157), .B1(n223), .B2(n149), .ZN(N38) );
  OAI22_X1 U371 ( .A1(n311), .A2(n165), .B1(n223), .B2(n157), .ZN(N30) );
  OAI22_X1 U372 ( .A1(n222), .A2(n108), .B1(n223), .B2(n100), .ZN(N87) );
  OAI22_X1 U373 ( .A1(n222), .A2(n116), .B1(n301), .B2(n108), .ZN(N79) );
  OAI22_X1 U374 ( .A1(n308), .A2(n124), .B1(n301), .B2(n116), .ZN(N71) );
  OAI22_X1 U375 ( .A1(n308), .A2(n132), .B1(n300), .B2(n124), .ZN(N63) );
  OAI22_X1 U376 ( .A1(n309), .A2(n140), .B1(n299), .B2(n132), .ZN(N55) );
  OAI22_X1 U377 ( .A1(n310), .A2(n148), .B1(n299), .B2(n140), .ZN(N47) );
  OAI22_X1 U378 ( .A1(n310), .A2(n156), .B1(n223), .B2(n148), .ZN(N39) );
  OAI22_X1 U379 ( .A1(n311), .A2(n164), .B1(n223), .B2(n156), .ZN(N31) );
  OAI22_X1 U380 ( .A1(n222), .A2(n107), .B1(n223), .B2(n99), .ZN(N88) );
  OAI22_X1 U381 ( .A1(n222), .A2(n115), .B1(n223), .B2(n107), .ZN(N80) );
  OAI22_X1 U382 ( .A1(n308), .A2(n123), .B1(n301), .B2(n115), .ZN(N72) );
  OAI22_X1 U383 ( .A1(n308), .A2(n131), .B1(n300), .B2(n123), .ZN(N64) );
  OAI22_X1 U384 ( .A1(n309), .A2(n139), .B1(n300), .B2(n131), .ZN(N56) );
  OAI22_X1 U385 ( .A1(n310), .A2(n147), .B1(n299), .B2(n139), .ZN(N48) );
  OAI22_X1 U386 ( .A1(n310), .A2(n155), .B1(n223), .B2(n147), .ZN(N40) );
  OAI22_X1 U387 ( .A1(n311), .A2(n163), .B1(n223), .B2(n155), .ZN(N32) );
  OAI22_X1 U388 ( .A1(n311), .A2(n171), .B1(n223), .B2(n163), .ZN(N24) );
  OAI22_X1 U389 ( .A1(n222), .A2(n106), .B1(n223), .B2(n98), .ZN(N89) );
  OAI22_X1 U390 ( .A1(n222), .A2(n114), .B1(n223), .B2(n106), .ZN(N81) );
  OAI22_X1 U391 ( .A1(n308), .A2(n122), .B1(n301), .B2(n114), .ZN(N73) );
  OAI22_X1 U392 ( .A1(n308), .A2(n130), .B1(n300), .B2(n122), .ZN(N65) );
  OAI22_X1 U393 ( .A1(n309), .A2(n138), .B1(n300), .B2(n130), .ZN(N57) );
  OAI22_X1 U394 ( .A1(n309), .A2(n146), .B1(n299), .B2(n138), .ZN(N49) );
  OAI22_X1 U395 ( .A1(n310), .A2(n154), .B1(n223), .B2(n146), .ZN(N41) );
  OAI22_X1 U396 ( .A1(n311), .A2(n162), .B1(n223), .B2(n154), .ZN(N33) );
  OAI22_X1 U397 ( .A1(n311), .A2(n170), .B1(n223), .B2(n162), .ZN(N25) );
  OAI22_X1 U398 ( .A1(n222), .A2(n375), .B1(n293), .B2(n177), .ZN(N10) );
  INV_X1 U399 ( .A(data_in[0]), .ZN(n375) );
  OAI22_X1 U400 ( .A1(n88), .A2(n222), .B1(n293), .B2(n80), .ZN(N107) );
  OAI211_X1 U401 ( .C1(n229), .C2(n209), .A(n227), .B(n236), .ZN(N273) );
  NAND2_X1 U402 ( .A1(data_out[0]), .A2(n228), .ZN(n236) );
  OAI211_X1 U403 ( .C1(n229), .C2(n208), .A(n227), .B(n235), .ZN(N274) );
  NAND2_X1 U404 ( .A1(data_out[1]), .A2(n228), .ZN(n235) );
  OAI211_X1 U405 ( .C1(n229), .C2(n207), .A(n227), .B(n234), .ZN(N275) );
  NAND2_X1 U406 ( .A1(data_out[2]), .A2(n228), .ZN(n234) );
  OAI211_X1 U407 ( .C1(n229), .C2(n206), .A(n227), .B(n233), .ZN(N276) );
  NAND2_X1 U408 ( .A1(data_out[3]), .A2(n228), .ZN(n233) );
  OAI211_X1 U409 ( .C1(n229), .C2(n205), .A(n227), .B(n232), .ZN(N277) );
  NAND2_X1 U410 ( .A1(data_out[4]), .A2(n228), .ZN(n232) );
  OAI211_X1 U411 ( .C1(n229), .C2(n204), .A(n227), .B(n231), .ZN(N278) );
  NAND2_X1 U412 ( .A1(data_out[5]), .A2(n228), .ZN(n231) );
  OAI211_X1 U413 ( .C1(n229), .C2(n203), .A(n227), .B(n230), .ZN(N279) );
  NAND2_X1 U414 ( .A1(data_out[6]), .A2(n228), .ZN(n230) );
  OAI21_X1 U415 ( .B1(n367), .B2(n211), .A(n227), .ZN(N281) );
  NAND2_X1 U416 ( .A1(judge_enable), .A2(rst_n), .ZN(n225) );
  OAI21_X1 U419 ( .B1(n226), .B2(n198), .A(n366), .ZN(n229) );
  NOR2_X1 U420 ( .A1(n317), .A2(expand_enable), .ZN(n243) );
  NAND2_X1 U421 ( .A1(add_enable), .A2(rst_n), .ZN(n238) );
  OR2_X1 U423 ( .A1(n317), .A2(add_enable), .ZN(n239) );
  OAI22_X1 U424 ( .A1(n238), .A2(n318), .B1(n198), .B2(n239), .ZN(N244) );
  INV_X1 U425 ( .A(N232), .ZN(n318) );
  OAI22_X1 U426 ( .A1(n238), .A2(n319), .B1(n199), .B2(n239), .ZN(N243) );
  INV_X1 U427 ( .A(N231), .ZN(n319) );
  OAI22_X1 U428 ( .A1(n238), .A2(n322), .B1(n202), .B2(n239), .ZN(N240) );
  INV_X1 U429 ( .A(N228), .ZN(n322) );
  OAI22_X1 U430 ( .A1(n238), .A2(n321), .B1(n201), .B2(n239), .ZN(N241) );
  INV_X1 U431 ( .A(N229), .ZN(n321) );
  OAI22_X1 U432 ( .A1(n238), .A2(n320), .B1(n200), .B2(n239), .ZN(N242) );
  INV_X1 U433 ( .A(N230), .ZN(n320) );
  OAI22_X1 U434 ( .A1(n238), .A2(n329), .B1(n209), .B2(n239), .ZN(N233) );
  INV_X1 U435 ( .A(N221), .ZN(n329) );
  OAI22_X1 U436 ( .A1(n238), .A2(n328), .B1(n208), .B2(n239), .ZN(N234) );
  INV_X1 U437 ( .A(N222), .ZN(n328) );
  OAI22_X1 U438 ( .A1(n238), .A2(n327), .B1(n207), .B2(n239), .ZN(N235) );
  INV_X1 U439 ( .A(N223), .ZN(n327) );
  OAI22_X1 U440 ( .A1(n238), .A2(n326), .B1(n206), .B2(n239), .ZN(N236) );
  INV_X1 U441 ( .A(N224), .ZN(n326) );
  OAI22_X1 U442 ( .A1(n238), .A2(n325), .B1(n205), .B2(n239), .ZN(N237) );
  INV_X1 U443 ( .A(N225), .ZN(n325) );
  OAI22_X1 U444 ( .A1(n238), .A2(n324), .B1(n204), .B2(n239), .ZN(N238) );
  INV_X1 U445 ( .A(N226), .ZN(n324) );
  OAI22_X1 U446 ( .A1(n238), .A2(n323), .B1(n203), .B2(n239), .ZN(N239) );
  INV_X1 U447 ( .A(N227), .ZN(n323) );
  OAI22_X1 U448 ( .A1(n367), .A2(n212), .B1(n225), .B2(n198), .ZN(N280) );
  OAI22_X1 U449 ( .A1(n314), .A2(n73), .B1(n295), .B2(n65), .ZN(N122) );
  OAI22_X1 U450 ( .A1(n312), .A2(n177), .B1(n296), .B2(n169), .ZN(N18) );
  OAI22_X1 U451 ( .A1(n313), .A2(n63), .B1(n296), .B2(n183), .ZN(N132) );
  OAI22_X1 U452 ( .A1(n313), .A2(n71), .B1(n295), .B2(n63), .ZN(N124) );
  OAI22_X1 U453 ( .A1(n313), .A2(n62), .B1(n296), .B2(n182), .ZN(N133) );
  OAI22_X1 U454 ( .A1(n313), .A2(n70), .B1(n295), .B2(n62), .ZN(N125) );
  OAI22_X1 U455 ( .A1(n313), .A2(n61), .B1(n296), .B2(n181), .ZN(N134) );
  OAI22_X1 U456 ( .A1(n313), .A2(n69), .B1(n295), .B2(n61), .ZN(N126) );
  OAI22_X1 U457 ( .A1(n312), .A2(n60), .B1(n296), .B2(n180), .ZN(N135) );
  OAI22_X1 U458 ( .A1(n313), .A2(n68), .B1(n295), .B2(n60), .ZN(N127) );
  OAI22_X1 U459 ( .A1(n312), .A2(n59), .B1(n296), .B2(n179), .ZN(N136) );
  OAI22_X1 U460 ( .A1(n313), .A2(n67), .B1(n295), .B2(n59), .ZN(N128) );
  OAI22_X1 U461 ( .A1(n312), .A2(n58), .B1(n296), .B2(n178), .ZN(N137) );
  OAI22_X1 U462 ( .A1(n313), .A2(n66), .B1(n295), .B2(n58), .ZN(N129) );
  OAI22_X1 U463 ( .A1(n314), .A2(n74), .B1(n295), .B2(n66), .ZN(N121) );
  OAI22_X1 U464 ( .A1(n313), .A2(n64), .B1(n295), .B2(n184), .ZN(N131) );
  OAI22_X1 U465 ( .A1(n313), .A2(n72), .B1(n295), .B2(n64), .ZN(N123) );
  OAI22_X1 U466 ( .A1(n312), .A2(n176), .B1(n296), .B2(n168), .ZN(N19) );
  OAI22_X1 U467 ( .A1(n312), .A2(n175), .B1(n223), .B2(n167), .ZN(N20) );
  OAI22_X1 U468 ( .A1(n312), .A2(n174), .B1(n223), .B2(n166), .ZN(N21) );
  OAI22_X1 U469 ( .A1(n313), .A2(n372), .B1(n295), .B2(n174), .ZN(N13) );
  INV_X1 U470 ( .A(data_in[3]), .ZN(n372) );
  OAI22_X1 U471 ( .A1(n312), .A2(n173), .B1(n223), .B2(n165), .ZN(N22) );
  OAI22_X1 U472 ( .A1(n312), .A2(n371), .B1(n296), .B2(n173), .ZN(N14) );
  INV_X1 U473 ( .A(data_in[4]), .ZN(n371) );
  OAI22_X1 U474 ( .A1(n312), .A2(n172), .B1(n223), .B2(n164), .ZN(N23) );
  OAI22_X1 U475 ( .A1(n312), .A2(n370), .B1(n296), .B2(n172), .ZN(N15) );
  INV_X1 U476 ( .A(data_in[5]), .ZN(n370) );
  OAI22_X1 U477 ( .A1(n312), .A2(n369), .B1(n296), .B2(n171), .ZN(N16) );
  INV_X1 U478 ( .A(data_in[6]), .ZN(n369) );
  OAI22_X1 U479 ( .A1(n312), .A2(n368), .B1(n296), .B2(n170), .ZN(N17) );
  INV_X1 U480 ( .A(data_in[7]), .ZN(n368) );
  OAI22_X1 U481 ( .A1(n313), .A2(n65), .B1(n295), .B2(n185), .ZN(N130) );
  OAI22_X1 U482 ( .A1(n314), .A2(n81), .B1(n294), .B2(n73), .ZN(N114) );
  OAI22_X1 U483 ( .A1(n222), .A2(n89), .B1(n293), .B2(n81), .ZN(N106) );
  OAI22_X1 U484 ( .A1(n314), .A2(n79), .B1(n294), .B2(n71), .ZN(N116) );
  OAI22_X1 U485 ( .A1(n222), .A2(n87), .B1(n293), .B2(n79), .ZN(N108) );
  OAI22_X1 U486 ( .A1(n222), .A2(n95), .B1(n293), .B2(n87), .ZN(N100) );
  OAI22_X1 U487 ( .A1(n314), .A2(n78), .B1(n294), .B2(n70), .ZN(N117) );
  OAI22_X1 U488 ( .A1(n222), .A2(n86), .B1(n293), .B2(n78), .ZN(N109) );
  OAI22_X1 U489 ( .A1(n222), .A2(n94), .B1(n293), .B2(n86), .ZN(N101) );
  OAI22_X1 U490 ( .A1(n314), .A2(n77), .B1(n294), .B2(n69), .ZN(N118) );
  OAI22_X1 U491 ( .A1(n222), .A2(n85), .B1(n294), .B2(n77), .ZN(N110) );
  OAI22_X1 U492 ( .A1(n222), .A2(n93), .B1(n293), .B2(n85), .ZN(N102) );
  OAI22_X1 U493 ( .A1(n314), .A2(n76), .B1(n294), .B2(n68), .ZN(N119) );
  OAI22_X1 U494 ( .A1(n314), .A2(n84), .B1(n294), .B2(n76), .ZN(N111) );
  OAI22_X1 U495 ( .A1(n222), .A2(n92), .B1(n293), .B2(n84), .ZN(N103) );
  OAI22_X1 U496 ( .A1(n314), .A2(n75), .B1(n294), .B2(n67), .ZN(N120) );
  OAI22_X1 U497 ( .A1(n314), .A2(n83), .B1(n294), .B2(n75), .ZN(N112) );
  OAI22_X1 U498 ( .A1(n222), .A2(n91), .B1(n293), .B2(n83), .ZN(N104) );
  OAI22_X1 U499 ( .A1(n314), .A2(n82), .B1(n294), .B2(n74), .ZN(N113) );
  OAI22_X1 U500 ( .A1(n222), .A2(n90), .B1(n293), .B2(n82), .ZN(N105) );
  OAI22_X1 U501 ( .A1(n314), .A2(n80), .B1(n294), .B2(n72), .ZN(N115) );
  OAI22_X1 U502 ( .A1(n222), .A2(n374), .B1(n293), .B2(n176), .ZN(N11) );
  INV_X1 U503 ( .A(data_in[1]), .ZN(n374) );
  OAI22_X1 U504 ( .A1(n314), .A2(n373), .B1(n294), .B2(n175), .ZN(N12) );
  INV_X1 U505 ( .A(data_in[2]), .ZN(n373) );
  NAND2_X1 U506 ( .A1(sum_4[9]), .A2(n241), .ZN(n240) );
  NAND2_X1 U507 ( .A1(sum_1[9]), .A2(n241), .ZN(n272) );
  NAND2_X1 U508 ( .A1(sum_2[9]), .A2(n241), .ZN(n262) );
  NAND2_X1 U509 ( .A1(sum_3[9]), .A2(n241), .ZN(n252) );
  OAI21_X1 U510 ( .B1(n367), .B2(n210), .A(n224), .ZN(N282) );
  OR3_X1 U511 ( .A1(n225), .A2(n226), .A3(n198), .ZN(n224) );
  OAI21_X1 U512 ( .B1(n286), .B2(n197), .A(n240), .ZN(N188) );
  OAI21_X1 U513 ( .B1(n285), .B2(n196), .A(n240), .ZN(N189) );
  OAI21_X1 U514 ( .B1(n285), .B2(n195), .A(n240), .ZN(N190) );
  OAI21_X1 U515 ( .B1(n286), .B2(n194), .A(n272), .ZN(N152) );
  OAI21_X1 U516 ( .B1(n286), .B2(n193), .A(n272), .ZN(N153) );
  OAI21_X1 U517 ( .B1(n286), .B2(n192), .A(n272), .ZN(N154) );
  OAI21_X1 U518 ( .B1(n285), .B2(n191), .A(n262), .ZN(N164) );
  OAI21_X1 U519 ( .B1(n285), .B2(n190), .A(n262), .ZN(N165) );
  OAI21_X1 U520 ( .B1(n285), .B2(n189), .A(n262), .ZN(N166) );
  OAI21_X1 U521 ( .B1(n286), .B2(n188), .A(n252), .ZN(N176) );
  OAI21_X1 U522 ( .B1(n285), .B2(n187), .A(n252), .ZN(N177) );
  OAI21_X1 U523 ( .B1(n285), .B2(n186), .A(n252), .ZN(N178) );
  INV_X1 U524 ( .A(n281), .ZN(n357) );
  AOI22_X1 U525 ( .A1(sum_1_1[0]), .A2(n282), .B1(sum_1[0]), .B2(n241), .ZN(
        n281) );
  INV_X1 U526 ( .A(n280), .ZN(n358) );
  AOI22_X1 U527 ( .A1(sum_1_1[1]), .A2(n282), .B1(sum_1[1]), .B2(n241), .ZN(
        n280) );
  INV_X1 U528 ( .A(n279), .ZN(n359) );
  AOI22_X1 U529 ( .A1(sum_1_1[2]), .A2(n282), .B1(sum_1[2]), .B2(n241), .ZN(
        n279) );
  INV_X1 U530 ( .A(n278), .ZN(n360) );
  AOI22_X1 U531 ( .A1(sum_1_1[3]), .A2(n282), .B1(sum_1[3]), .B2(n241), .ZN(
        n278) );
  INV_X1 U532 ( .A(n277), .ZN(n361) );
  AOI22_X1 U533 ( .A1(sum_1_1[4]), .A2(n282), .B1(sum_1[4]), .B2(n241), .ZN(
        n277) );
  INV_X1 U534 ( .A(n276), .ZN(n362) );
  AOI22_X1 U535 ( .A1(sum_1_1[5]), .A2(n282), .B1(sum_1[5]), .B2(n241), .ZN(
        n276) );
  INV_X1 U536 ( .A(n275), .ZN(n363) );
  AOI22_X1 U537 ( .A1(sum_1_1[6]), .A2(n282), .B1(sum_1[6]), .B2(n241), .ZN(
        n275) );
  INV_X1 U538 ( .A(n274), .ZN(n364) );
  AOI22_X1 U539 ( .A1(sum_1_1[7]), .A2(n282), .B1(sum_1[7]), .B2(n241), .ZN(
        n274) );
  INV_X1 U540 ( .A(n273), .ZN(n365) );
  AOI22_X1 U541 ( .A1(sum_1_1[8]), .A2(n282), .B1(sum_1[8]), .B2(n241), .ZN(
        n273) );
  INV_X1 U542 ( .A(n271), .ZN(n330) );
  AOI22_X1 U543 ( .A1(sum_2_2[0]), .A2(n282), .B1(sum_2[0]), .B2(n241), .ZN(
        n271) );
  INV_X1 U544 ( .A(n270), .ZN(n331) );
  AOI22_X1 U545 ( .A1(sum_2_2[1]), .A2(n282), .B1(sum_2[1]), .B2(n241), .ZN(
        n270) );
  INV_X1 U546 ( .A(n269), .ZN(n332) );
  AOI22_X1 U547 ( .A1(sum_2_2[2]), .A2(n282), .B1(sum_2[2]), .B2(n241), .ZN(
        n269) );
  INV_X1 U548 ( .A(n268), .ZN(n333) );
  AOI22_X1 U549 ( .A1(sum_2_2[3]), .A2(n283), .B1(sum_2[3]), .B2(n241), .ZN(
        n268) );
  INV_X1 U550 ( .A(n267), .ZN(n334) );
  AOI22_X1 U551 ( .A1(sum_2_2[4]), .A2(n283), .B1(sum_2[4]), .B2(n241), .ZN(
        n267) );
  INV_X1 U552 ( .A(n266), .ZN(n335) );
  AOI22_X1 U553 ( .A1(sum_2_2[5]), .A2(n283), .B1(sum_2[5]), .B2(n241), .ZN(
        n266) );
  INV_X1 U554 ( .A(n265), .ZN(n336) );
  AOI22_X1 U555 ( .A1(sum_2_2[6]), .A2(n283), .B1(sum_2[6]), .B2(n241), .ZN(
        n265) );
  INV_X1 U556 ( .A(n264), .ZN(n337) );
  AOI22_X1 U557 ( .A1(sum_2_2[7]), .A2(n283), .B1(sum_2[7]), .B2(n241), .ZN(
        n264) );
  INV_X1 U558 ( .A(n263), .ZN(n338) );
  AOI22_X1 U559 ( .A1(sum_2_2[8]), .A2(n283), .B1(sum_2[8]), .B2(n241), .ZN(
        n263) );
  INV_X1 U560 ( .A(n261), .ZN(n339) );
  AOI22_X1 U561 ( .A1(sum_3_3[0]), .A2(n283), .B1(sum_3[0]), .B2(n241), .ZN(
        n261) );
  INV_X1 U562 ( .A(n260), .ZN(n340) );
  AOI22_X1 U563 ( .A1(sum_3_3[1]), .A2(n283), .B1(sum_3[1]), .B2(n241), .ZN(
        n260) );
  INV_X1 U564 ( .A(n259), .ZN(n341) );
  AOI22_X1 U565 ( .A1(sum_3_3[2]), .A2(n283), .B1(sum_3[2]), .B2(n241), .ZN(
        n259) );
  INV_X1 U566 ( .A(n258), .ZN(n342) );
  AOI22_X1 U567 ( .A1(sum_3_3[3]), .A2(n283), .B1(sum_3[3]), .B2(n241), .ZN(
        n258) );
  INV_X1 U568 ( .A(n257), .ZN(n343) );
  AOI22_X1 U569 ( .A1(sum_3_3[4]), .A2(n283), .B1(sum_3[4]), .B2(n241), .ZN(
        n257) );
  INV_X1 U570 ( .A(n256), .ZN(n344) );
  AOI22_X1 U571 ( .A1(sum_3_3[5]), .A2(n283), .B1(sum_3[5]), .B2(n241), .ZN(
        n256) );
  INV_X1 U572 ( .A(n251), .ZN(n348) );
  AOI22_X1 U573 ( .A1(sum_4_4[0]), .A2(n284), .B1(sum_4[0]), .B2(n241), .ZN(
        n251) );
  INV_X1 U574 ( .A(n250), .ZN(n349) );
  AOI22_X1 U575 ( .A1(sum_4_4[1]), .A2(n284), .B1(sum_4[1]), .B2(n241), .ZN(
        n250) );
  INV_X1 U576 ( .A(n249), .ZN(n350) );
  AOI22_X1 U577 ( .A1(sum_4_4[2]), .A2(n284), .B1(sum_4[2]), .B2(n241), .ZN(
        n249) );
  INV_X1 U578 ( .A(n248), .ZN(n351) );
  AOI22_X1 U579 ( .A1(sum_4_4[3]), .A2(n284), .B1(sum_4[3]), .B2(n241), .ZN(
        n248) );
  INV_X1 U580 ( .A(n247), .ZN(n352) );
  AOI22_X1 U581 ( .A1(sum_4_4[4]), .A2(n284), .B1(sum_4[4]), .B2(n241), .ZN(
        n247) );
  INV_X1 U582 ( .A(n246), .ZN(n353) );
  AOI22_X1 U583 ( .A1(sum_4_4[5]), .A2(n284), .B1(sum_4[5]), .B2(n241), .ZN(
        n246) );
  INV_X1 U584 ( .A(n245), .ZN(n354) );
  AOI22_X1 U585 ( .A1(sum_4_4[6]), .A2(n284), .B1(sum_4[6]), .B2(n241), .ZN(
        n245) );
  INV_X1 U586 ( .A(n244), .ZN(n355) );
  AOI22_X1 U587 ( .A1(sum_4_4[7]), .A2(n284), .B1(sum_4[7]), .B2(n241), .ZN(
        n244) );
  INV_X1 U588 ( .A(n242), .ZN(n356) );
  AOI22_X1 U589 ( .A1(sum_4_4[8]), .A2(n284), .B1(sum_4[8]), .B2(n241), .ZN(
        n242) );
  INV_X1 U590 ( .A(n255), .ZN(n345) );
  AOI22_X1 U591 ( .A1(sum_3_3[6]), .A2(n284), .B1(sum_3[6]), .B2(n241), .ZN(
        n255) );
  INV_X1 U592 ( .A(n254), .ZN(n346) );
  AOI22_X1 U593 ( .A1(sum_3_3[7]), .A2(n284), .B1(sum_3[7]), .B2(n241), .ZN(
        n254) );
  INV_X1 U594 ( .A(n253), .ZN(n347) );
  AOI22_X1 U595 ( .A1(sum_3_3[8]), .A2(n284), .B1(sum_3[8]), .B2(n241), .ZN(
        n253) );
  NOR4_X1 U596 ( .A1(n200), .A2(n201), .A3(n202), .A4(n199), .ZN(n226) );
  OR4_X1 U597 ( .A1(mac_2_done), .A2(mac_1_done), .A3(mac_4_done), .A4(
        mac_3_done), .ZN(mac_done) );
  INV_X1 U598 ( .A(n243), .ZN(n285) );
  INV_X1 U599 ( .A(n243), .ZN(n286) );
  OR2_X2 U288 ( .A1(n317), .A2(load_enable), .ZN(n223) );
  NAND2_X2 U289 ( .A1(rst_n), .A2(load_enable), .ZN(n222) );
  AND2_X2 U297 ( .A1(expand_enable), .A2(rst_n), .ZN(n241) );
  INV_X1 U298 ( .A(rst_n), .ZN(n317) );
endmodule

