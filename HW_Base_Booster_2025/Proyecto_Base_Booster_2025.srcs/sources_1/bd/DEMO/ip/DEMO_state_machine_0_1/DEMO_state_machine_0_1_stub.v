// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Oct 19 14:10:45 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Karlsen/Sep-repository-2/HW_Base_Booster_2025/Proyecto_Base_Booster_2025.srcs/sources_1/bd/DEMO/ip/DEMO_state_machine_0_1/DEMO_state_machine_0_1_stub.v
// Design      : DEMO_state_machine_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "state_machine,Vivado 2020.1" *)
module DEMO_state_machine_0_1(clk, btn_0, finished, state)
/* synthesis syn_black_box black_box_pad_pin="clk,btn_0,finished,state[1:0]" */;
  input clk;
  input btn_0;
  input finished;
  output [1:0]state;
endmodule
