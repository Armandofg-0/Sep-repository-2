// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Oct 19 12:37:30 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DEMO_rgb_controller_0_0_stub.v
// Design      : DEMO_rgb_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "rgb_controller,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(state, win, rgb_R_rainbow, rgb_G_rainbow, 
  rgb_B_rainbow, rgb_R, rgb_G, rgb_B)
/* synthesis syn_black_box black_box_pad_pin="state[1:0],win,rgb_R_rainbow,rgb_G_rainbow,rgb_B_rainbow,rgb_R,rgb_G,rgb_B" */;
  input [1:0]state;
  input win;
  input rgb_R_rainbow;
  input rgb_G_rainbow;
  input rgb_B_rainbow;
  output rgb_R;
  output rgb_G;
  output rgb_B;
endmodule
