
module one_bit_full_adder_0 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n2), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n2) );
  INV_X1 U1 ( .A(n3), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n2), .B2(c_in), .ZN(n3) );
endmodule


module one_bit_full_adder_1 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_2 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_3 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_4 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_5 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_6 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_7 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_8 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_9 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_10 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_11 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_12 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_13 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_14 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module one_bit_full_adder_15 ( add_1, add_2, c_in, sum, c_out );
  input add_1, add_2, c_in;
  output sum, c_out;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n3), .Z(sum) );
  XOR2_X1 U4 ( .A(add_1), .B(add_2), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(add_2), .A2(add_1), .B1(n3), .B2(c_in), .ZN(n1) );
endmodule


module RCA_adder ( add_1, add_2, c_in, sum, c_out );
  input [15:0] add_1;
  input [15:0] add_2;
  output [15:0] sum;
  input c_in;
  output c_out;

  wire   [15:1] temp_carry;

  one_bit_full_adder_0 add_chain_0__one_bit_full_adder_inst ( .add_1(add_1[0]), 
        .add_2(add_2[0]), .c_in(c_in), .sum(sum[0]), .c_out(temp_carry[1]) );
  one_bit_full_adder_15 add_chain_1__one_bit_full_adder_inst ( .add_1(add_1[1]), .add_2(add_2[1]), .c_in(temp_carry[1]), .sum(sum[1]), .c_out(temp_carry[2])
         );
  one_bit_full_adder_14 add_chain_2__one_bit_full_adder_inst ( .add_1(add_1[2]), .add_2(add_2[2]), .c_in(temp_carry[2]), .sum(sum[2]), .c_out(temp_carry[3])
         );
  one_bit_full_adder_13 add_chain_3__one_bit_full_adder_inst ( .add_1(add_1[3]), .add_2(add_2[3]), .c_in(temp_carry[3]), .sum(sum[3]), .c_out(temp_carry[4])
         );
  one_bit_full_adder_12 add_chain_4__one_bit_full_adder_inst ( .add_1(add_1[4]), .add_2(add_2[4]), .c_in(temp_carry[4]), .sum(sum[4]), .c_out(temp_carry[5])
         );
  one_bit_full_adder_11 add_chain_5__one_bit_full_adder_inst ( .add_1(add_1[5]), .add_2(add_2[5]), .c_in(temp_carry[5]), .sum(sum[5]), .c_out(temp_carry[6])
         );
  one_bit_full_adder_10 add_chain_6__one_bit_full_adder_inst ( .add_1(add_1[6]), .add_2(add_2[6]), .c_in(temp_carry[6]), .sum(sum[6]), .c_out(temp_carry[7])
         );
  one_bit_full_adder_9 add_chain_7__one_bit_full_adder_inst ( .add_1(add_1[7]), 
        .add_2(add_2[7]), .c_in(temp_carry[7]), .sum(sum[7]), .c_out(
        temp_carry[8]) );
  one_bit_full_adder_8 add_chain_8__one_bit_full_adder_inst ( .add_1(add_1[8]), 
        .add_2(add_2[8]), .c_in(temp_carry[8]), .sum(sum[8]), .c_out(
        temp_carry[9]) );
  one_bit_full_adder_7 add_chain_9__one_bit_full_adder_inst ( .add_1(add_1[9]), 
        .add_2(add_2[9]), .c_in(temp_carry[9]), .sum(sum[9]), .c_out(
        temp_carry[10]) );
  one_bit_full_adder_6 add_chain_10__one_bit_full_adder_inst ( .add_1(
        add_1[10]), .add_2(add_2[10]), .c_in(temp_carry[10]), .sum(sum[10]), 
        .c_out(temp_carry[11]) );
  one_bit_full_adder_5 add_chain_11__one_bit_full_adder_inst ( .add_1(
        add_1[11]), .add_2(add_2[11]), .c_in(temp_carry[11]), .sum(sum[11]), 
        .c_out(temp_carry[12]) );
  one_bit_full_adder_4 add_chain_12__one_bit_full_adder_inst ( .add_1(
        add_1[12]), .add_2(add_2[12]), .c_in(temp_carry[12]), .sum(sum[12]), 
        .c_out(temp_carry[13]) );
  one_bit_full_adder_3 add_chain_13__one_bit_full_adder_inst ( .add_1(
        add_1[13]), .add_2(add_2[13]), .c_in(temp_carry[13]), .sum(sum[13]), 
        .c_out(temp_carry[14]) );
  one_bit_full_adder_2 add_chain_14__one_bit_full_adder_inst ( .add_1(
        add_1[14]), .add_2(add_2[14]), .c_in(temp_carry[14]), .sum(sum[14]), 
        .c_out(temp_carry[15]) );
  one_bit_full_adder_1 add_chain_15__one_bit_full_adder_inst ( .add_1(
        add_1[15]), .add_2(add_2[15]), .c_in(temp_carry[15]), .sum(sum[15]), 
        .c_out(c_out) );
endmodule

