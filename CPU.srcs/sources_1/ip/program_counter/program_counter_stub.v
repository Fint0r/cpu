// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Sep 14 19:57:42 2020
// Host        : DESKTOP-O6REA7C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Projects/Xilinx/CPU/CPU.srcs/sources_1/ip/program_counter/program_counter_stub.v
// Design      : program_counter
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *)
module program_counter(CLK, CE, LOAD, L, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,LOAD,L[15:0],Q[15:0]" */;
  input CLK;
  input CE;
  input LOAD;
  input [15:0]L;
  output [15:0]Q;
endmodule
