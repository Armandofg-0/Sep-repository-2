// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Oct 18 23:31:02 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Karlsen/Sep-repository-2/Proyecto_Base_Booster/HW_Base_Booster_2025/Proyecto_Base_Booster_2025.srcs/sources_1/bd/DEMO/ip/DEMO_BUZZER_0_0/DEMO_BUZZER_0_0_stub.v
// Design      : DEMO_BUZZER_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "BUZZER,Vivado 2020.1" *)
module DEMO_BUZZER_0_0(clk, BTN_JY, BTN0, BTN1, LEDS, BUZZER_PWM)
/* synthesis syn_black_box black_box_pad_pin="clk,BTN_JY,BTN0,BTN1,LEDS[3:0],BUZZER_PWM" */;
  input clk;
  input BTN_JY;
  input BTN0;
  input BTN1;
  output [3:0]LEDS;
  output BUZZER_PWM;
endmodule
