
module PG_generate_0 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module SUM_generate_0 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module Carry_Generate_14 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_15 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_16 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module PG_generate_13 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_14 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_15 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module SUM_generate_13 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_14 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_15 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module CLA_basic_0 ( add_1, add_2, c_in, sum, Group_Generate, Group_Propagate
 );
  input [4:1] add_1;
  input [4:1] add_2;
  output [4:1] sum;
  output [0:0] Group_Generate;
  output [0:0] Group_Propagate;
  input c_in;
  wire   n2, n3, n4, n6, n1;
  wire   [4:1] Generate;
  wire   [4:1] Propagate;
  wire   [3:1] Carry;

  PG_generate_0 PG_GEN_1__PG_generate_inst ( .add_1(add_1[1]), .add_2(add_2[1]), .Propagate(Propagate[1]), .Generate(Generate[1]) );
  PG_generate_15 PG_GEN_2__PG_generate_inst ( .add_1(add_1[2]), .add_2(
        add_2[2]), .Propagate(Propagate[2]), .Generate(Generate[2]) );
  PG_generate_14 PG_GEN_3__PG_generate_inst ( .add_1(add_1[3]), .add_2(
        add_2[3]), .Propagate(Propagate[3]), .Generate(Generate[3]) );
  PG_generate_13 PG_GEN_4__PG_generate_inst ( .add_1(add_1[4]), .add_2(
        add_2[4]), .Propagate(Propagate[4]), .Generate(Generate[4]) );
  Carry_Generate_16 C_GEN_1__Carry_Generate_inst ( .Propagate(Propagate[1]), 
        .Generate(Generate[1]), .c_in(c_in), .c_out(Carry[1]) );
  Carry_Generate_15 C_GEN_2__Carry_Generate_inst ( .Propagate(Propagate[2]), 
        .Generate(Generate[2]), .c_in(Carry[1]), .c_out(Carry[2]) );
  Carry_Generate_14 C_GEN_3__Carry_Generate_inst ( .Propagate(Propagate[3]), 
        .Generate(Generate[3]), .c_in(Carry[2]), .c_out(Carry[3]) );
  SUM_generate_0 SUM_GEN_1__SUM_generate_inst ( .Propagate(Propagate[1]), 
        .c_in(c_in), .Sum(sum[1]) );
  SUM_generate_15 SUM_GEN_2__SUM_generate_inst ( .Propagate(Propagate[2]), 
        .c_in(Carry[1]), .Sum(sum[2]) );
  SUM_generate_14 SUM_GEN_3__SUM_generate_inst ( .Propagate(Propagate[3]), 
        .c_in(Carry[2]), .Sum(sum[3]) );
  SUM_generate_13 SUM_GEN_4__SUM_generate_inst ( .Propagate(Propagate[4]), 
        .c_in(Carry[3]), .Sum(sum[4]) );
  AOI21_X1 U1 ( .B1(Generate[1]), .B2(Propagate[2]), .A(Generate[2]), .ZN(n6)
         );
  AOI21_X1 U2 ( .B1(n4), .B2(Propagate[4]), .A(Generate[4]), .ZN(n3) );
  INV_X1 U5 ( .A(Propagate[3]), .ZN(n2) );
  AND4_X1 U6 ( .A1(Propagate[4]), .A2(Propagate[3]), .A3(Propagate[2]), .A4(
        Propagate[1]), .ZN(Group_Propagate[0]) );
  INV_X1 U7 ( .A(n3), .ZN(Group_Generate[0]) );
  OAI21_X1 U3 ( .B1(n6), .B2(n2), .A(n1), .ZN(n4) );
  INV_X1 U4 ( .A(Generate[3]), .ZN(n1) );
endmodule


module Carry_Generate_0 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n2) );
endmodule


module Carry_Generate_2 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_3 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_4 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module PG_generate_1 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_2 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_3 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_4 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module SUM_generate_1 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_2 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_3 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_4 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module CLA_basic_1 ( add_1, add_2, c_in, sum, Group_Generate, Group_Propagate
 );
  input [4:1] add_1;
  input [4:1] add_2;
  output [4:1] sum;
  output [0:0] Group_Generate;
  output [0:0] Group_Propagate;
  input c_in;
  wire   n1, n7, n8, n9, n10;
  wire   [4:1] Generate;
  wire   [4:1] Propagate;
  wire   [3:1] Carry;

  PG_generate_4 PG_GEN_1__PG_generate_inst ( .add_1(add_1[1]), .add_2(add_2[1]), .Propagate(Propagate[1]), .Generate(Generate[1]) );
  PG_generate_3 PG_GEN_2__PG_generate_inst ( .add_1(add_1[2]), .add_2(add_2[2]), .Propagate(Propagate[2]), .Generate(Generate[2]) );
  PG_generate_2 PG_GEN_3__PG_generate_inst ( .add_1(add_1[3]), .add_2(add_2[3]), .Propagate(Propagate[3]), .Generate(Generate[3]) );
  PG_generate_1 PG_GEN_4__PG_generate_inst ( .add_1(add_1[4]), .add_2(add_2[4]), .Propagate(Propagate[4]), .Generate(Generate[4]) );
  Carry_Generate_4 C_GEN_1__Carry_Generate_inst ( .Propagate(Propagate[1]), 
        .Generate(Generate[1]), .c_in(c_in), .c_out(Carry[1]) );
  Carry_Generate_3 C_GEN_2__Carry_Generate_inst ( .Propagate(Propagate[2]), 
        .Generate(Generate[2]), .c_in(Carry[1]), .c_out(Carry[2]) );
  Carry_Generate_2 C_GEN_3__Carry_Generate_inst ( .Propagate(Propagate[3]), 
        .Generate(Generate[3]), .c_in(Carry[2]), .c_out(Carry[3]) );
  SUM_generate_4 SUM_GEN_1__SUM_generate_inst ( .Propagate(Propagate[1]), 
        .c_in(c_in), .Sum(sum[1]) );
  SUM_generate_3 SUM_GEN_2__SUM_generate_inst ( .Propagate(Propagate[2]), 
        .c_in(Carry[1]), .Sum(sum[2]) );
  SUM_generate_2 SUM_GEN_3__SUM_generate_inst ( .Propagate(Propagate[3]), 
        .c_in(Carry[2]), .Sum(sum[3]) );
  SUM_generate_1 SUM_GEN_4__SUM_generate_inst ( .Propagate(Propagate[4]), 
        .c_in(Carry[3]), .Sum(sum[4]) );
  AOI21_X1 U1 ( .B1(Generate[1]), .B2(Propagate[2]), .A(Generate[2]), .ZN(n1)
         );
  AND4_X1 U2 ( .A1(Propagate[4]), .A2(Propagate[3]), .A3(Propagate[2]), .A4(
        Propagate[1]), .ZN(Group_Propagate[0]) );
  INV_X1 U3 ( .A(n8), .ZN(Group_Generate[0]) );
  AOI21_X1 U4 ( .B1(n7), .B2(Propagate[4]), .A(Generate[4]), .ZN(n8) );
  INV_X1 U7 ( .A(Propagate[3]), .ZN(n9) );
  OAI21_X1 U5 ( .B1(n1), .B2(n9), .A(n10), .ZN(n7) );
  INV_X1 U6 ( .A(Generate[3]), .ZN(n10) );
endmodule


module Carry_Generate_6 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_7 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_8 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module PG_generate_5 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_6 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_7 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_8 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module SUM_generate_5 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_6 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_7 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_8 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module CLA_basic_2 ( add_1, add_2, c_in, sum, Group_Generate, Group_Propagate
 );
  input [4:1] add_1;
  input [4:1] add_2;
  output [4:1] sum;
  output [0:0] Group_Generate;
  output [0:0] Group_Propagate;
  input c_in;
  wire   n1, n7, n8, n9, n10;
  wire   [4:1] Generate;
  wire   [4:1] Propagate;
  wire   [3:1] Carry;

  PG_generate_8 PG_GEN_1__PG_generate_inst ( .add_1(add_1[1]), .add_2(add_2[1]), .Propagate(Propagate[1]), .Generate(Generate[1]) );
  PG_generate_7 PG_GEN_2__PG_generate_inst ( .add_1(add_1[2]), .add_2(add_2[2]), .Propagate(Propagate[2]), .Generate(Generate[2]) );
  PG_generate_6 PG_GEN_3__PG_generate_inst ( .add_1(add_1[3]), .add_2(add_2[3]), .Propagate(Propagate[3]), .Generate(Generate[3]) );
  PG_generate_5 PG_GEN_4__PG_generate_inst ( .add_1(add_1[4]), .add_2(add_2[4]), .Propagate(Propagate[4]), .Generate(Generate[4]) );
  Carry_Generate_8 C_GEN_1__Carry_Generate_inst ( .Propagate(Propagate[1]), 
        .Generate(Generate[1]), .c_in(c_in), .c_out(Carry[1]) );
  Carry_Generate_7 C_GEN_2__Carry_Generate_inst ( .Propagate(Propagate[2]), 
        .Generate(Generate[2]), .c_in(Carry[1]), .c_out(Carry[2]) );
  Carry_Generate_6 C_GEN_3__Carry_Generate_inst ( .Propagate(Propagate[3]), 
        .Generate(Generate[3]), .c_in(Carry[2]), .c_out(Carry[3]) );
  SUM_generate_8 SUM_GEN_1__SUM_generate_inst ( .Propagate(Propagate[1]), 
        .c_in(c_in), .Sum(sum[1]) );
  SUM_generate_7 SUM_GEN_2__SUM_generate_inst ( .Propagate(Propagate[2]), 
        .c_in(Carry[1]), .Sum(sum[2]) );
  SUM_generate_6 SUM_GEN_3__SUM_generate_inst ( .Propagate(Propagate[3]), 
        .c_in(Carry[2]), .Sum(sum[3]) );
  SUM_generate_5 SUM_GEN_4__SUM_generate_inst ( .Propagate(Propagate[4]), 
        .c_in(Carry[3]), .Sum(sum[4]) );
  AND4_X1 U1 ( .A1(Propagate[4]), .A2(Propagate[3]), .A3(Propagate[2]), .A4(
        Propagate[1]), .ZN(Group_Propagate[0]) );
  INV_X1 U2 ( .A(n8), .ZN(Group_Generate[0]) );
  AOI21_X1 U3 ( .B1(Generate[1]), .B2(Propagate[2]), .A(Generate[2]), .ZN(n1)
         );
  AOI21_X1 U4 ( .B1(n7), .B2(Propagate[4]), .A(Generate[4]), .ZN(n8) );
  INV_X1 U7 ( .A(Propagate[3]), .ZN(n9) );
  OAI21_X1 U5 ( .B1(n1), .B2(n9), .A(n10), .ZN(n7) );
  INV_X1 U6 ( .A(Generate[3]), .ZN(n10) );
endmodule


module Carry_Generate_10 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_11 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_12 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module PG_generate_9 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_10 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_11 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module PG_generate_12 ( add_1, add_2, Propagate, Generate );
  input add_1, add_2;
  output Propagate, Generate;


  XOR2_X1 U2 ( .A(add_2), .B(add_1), .Z(Propagate) );
  AND2_X1 U1 ( .A1(add_2), .A2(add_1), .ZN(Generate) );
endmodule


module SUM_generate_9 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_10 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_11 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module SUM_generate_12 ( Propagate, c_in, Sum );
  input [0:0] Propagate;
  input [0:0] c_in;
  output [0:0] Sum;


  XOR2_X1 U1 ( .A(c_in[0]), .B(Propagate[0]), .Z(Sum[0]) );
endmodule


module CLA_basic_3 ( add_1, add_2, c_in, sum, Group_Generate, Group_Propagate
 );
  input [4:1] add_1;
  input [4:1] add_2;
  output [4:1] sum;
  output [0:0] Group_Generate;
  output [0:0] Group_Propagate;
  input c_in;
  wire   n1, n7, n8, n9, n10;
  wire   [4:1] Generate;
  wire   [4:1] Propagate;
  wire   [3:1] Carry;

  PG_generate_12 PG_GEN_1__PG_generate_inst ( .add_1(add_1[1]), .add_2(
        add_2[1]), .Propagate(Propagate[1]), .Generate(Generate[1]) );
  PG_generate_11 PG_GEN_2__PG_generate_inst ( .add_1(add_1[2]), .add_2(
        add_2[2]), .Propagate(Propagate[2]), .Generate(Generate[2]) );
  PG_generate_10 PG_GEN_3__PG_generate_inst ( .add_1(add_1[3]), .add_2(
        add_2[3]), .Propagate(Propagate[3]), .Generate(Generate[3]) );
  PG_generate_9 PG_GEN_4__PG_generate_inst ( .add_1(add_1[4]), .add_2(add_2[4]), .Propagate(Propagate[4]), .Generate(Generate[4]) );
  Carry_Generate_12 C_GEN_1__Carry_Generate_inst ( .Propagate(Propagate[1]), 
        .Generate(Generate[1]), .c_in(c_in), .c_out(Carry[1]) );
  Carry_Generate_11 C_GEN_2__Carry_Generate_inst ( .Propagate(Propagate[2]), 
        .Generate(Generate[2]), .c_in(Carry[1]), .c_out(Carry[2]) );
  Carry_Generate_10 C_GEN_3__Carry_Generate_inst ( .Propagate(Propagate[3]), 
        .Generate(Generate[3]), .c_in(Carry[2]), .c_out(Carry[3]) );
  SUM_generate_12 SUM_GEN_1__SUM_generate_inst ( .Propagate(Propagate[1]), 
        .c_in(c_in), .Sum(sum[1]) );
  SUM_generate_11 SUM_GEN_2__SUM_generate_inst ( .Propagate(Propagate[2]), 
        .c_in(Carry[1]), .Sum(sum[2]) );
  SUM_generate_10 SUM_GEN_3__SUM_generate_inst ( .Propagate(Propagate[3]), 
        .c_in(Carry[2]), .Sum(sum[3]) );
  SUM_generate_9 SUM_GEN_4__SUM_generate_inst ( .Propagate(Propagate[4]), 
        .c_in(Carry[3]), .Sum(sum[4]) );
  AOI21_X1 U1 ( .B1(Generate[1]), .B2(Propagate[2]), .A(Generate[2]), .ZN(n1)
         );
  AND4_X1 U2 ( .A1(Propagate[4]), .A2(Propagate[3]), .A3(Propagate[2]), .A4(
        Propagate[1]), .ZN(Group_Propagate[0]) );
  INV_X1 U3 ( .A(n8), .ZN(Group_Generate[0]) );
  AOI21_X1 U4 ( .B1(n7), .B2(Propagate[4]), .A(Generate[4]), .ZN(n8) );
  INV_X1 U7 ( .A(Propagate[3]), .ZN(n9) );
  OAI21_X1 U5 ( .B1(n1), .B2(n9), .A(n10), .ZN(n7) );
  INV_X1 U6 ( .A(Generate[3]), .ZN(n10) );
endmodule


module Carry_Generate_17 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_18 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Carry_Generate_19 ( Propagate, Generate, c_in, c_out );
  input [0:0] Propagate;
  input [0:0] Generate;
  input [0:0] c_in;
  output [0:0] c_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(c_out[0]) );
  AOI21_X1 U2 ( .B1(c_in[0]), .B2(Propagate[0]), .A(Generate[0]), .ZN(n1) );
endmodule


module Hiera_CLA ( add_1, add_2, c_in, c_out, sum );
  input [15:0] add_1;
  input [15:0] add_2;
  input [0:0] c_in;
  output [0:0] c_out;
  output [15:0] sum;

  wire   [3:1] Group_Carry;
  wire   [4:1] Group_Propagate;
  wire   [4:1] Group_Generate;

  CLA_basic_0 CLA_BASIC_1__CLA_basic_inst ( .add_1(add_1[3:0]), .add_2(
        add_2[3:0]), .c_in(c_in[0]), .sum(sum[3:0]), .Group_Generate(
        Group_Generate[1]), .Group_Propagate(Group_Propagate[1]) );
  CLA_basic_3 CLA_BASIC_2__CLA_basic_inst ( .add_1(add_1[7:4]), .add_2(
        add_2[7:4]), .c_in(Group_Carry[1]), .sum(sum[7:4]), .Group_Generate(
        Group_Generate[2]), .Group_Propagate(Group_Propagate[2]) );
  CLA_basic_2 CLA_BASIC_3__CLA_basic_inst ( .add_1(add_1[11:8]), .add_2(
        add_2[11:8]), .c_in(Group_Carry[2]), .sum(sum[11:8]), .Group_Generate(
        Group_Generate[3]), .Group_Propagate(Group_Propagate[3]) );
  CLA_basic_1 CLA_BASIC_4__CLA_basic_inst ( .add_1(add_1[15:12]), .add_2(
        add_2[15:12]), .c_in(Group_Carry[3]), .sum(sum[15:12]), 
        .Group_Generate(Group_Generate[4]), .Group_Propagate(
        Group_Propagate[4]) );
  Carry_Generate_0 C_GEN_1__Carry_Generate_inst ( .Propagate(
        Group_Propagate[1]), .Generate(Group_Generate[1]), .c_in(c_in[0]), 
        .c_out(Group_Carry[1]) );
  Carry_Generate_19 C_GEN_2__Carry_Generate_inst ( .Propagate(
        Group_Propagate[2]), .Generate(Group_Generate[2]), .c_in(
        Group_Carry[1]), .c_out(Group_Carry[2]) );
  Carry_Generate_18 C_GEN_3__Carry_Generate_inst ( .Propagate(
        Group_Propagate[3]), .Generate(Group_Generate[3]), .c_in(
        Group_Carry[2]), .c_out(Group_Carry[3]) );
  Carry_Generate_17 C_GEN_4__Carry_Generate_inst ( .Propagate(
        Group_Propagate[4]), .Generate(Group_Generate[4]), .c_in(
        Group_Carry[3]), .c_out(c_out[0]) );
endmodule

