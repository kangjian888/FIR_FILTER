#!/bin/sh

vcs -full64 ../rtl/RCA_adder.v one_bit_full_adder.v RCA_tb.v +v2k -debug_all -top RCA_tb -timescale=1ns/1ps