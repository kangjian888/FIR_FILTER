#!/bin/sh

################################################################################
# Specify the filepath of the verilog library file of standard cell
################################################################################
vcs -full64 PPA.mapped.v PPA_tb.v +v2k -debug_all -top PPA_tb \
  -timescale=1ns/1ps +neg_tchk +warn=noTFIPC -v /afs/ee.ust.hk/staff/ee/dept/public/elec516/eesm_5020_2017spring/eesm_5020/lib/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Verilog/NangateOpenCellLibrary.v

