// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Oct 19 12:37:30 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DEMO_rgb_controller_0_0_sim_netlist.v
// Design      : DEMO_rgb_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DEMO_rgb_controller_0_0,rgb_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "rgb_controller,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (state,
    win,
    rgb_R_rainbow,
    rgb_G_rainbow,
    rgb_B_rainbow,
    rgb_R,
    rgb_G,
    rgb_B);
  input [1:0]state;
  input win;
  input rgb_R_rainbow;
  input rgb_G_rainbow;
  input rgb_B_rainbow;
  output rgb_R;
  output rgb_G;
  output rgb_B;

  wire rgb_B;
  wire rgb_B_rainbow;
  wire rgb_G;
  wire rgb_G_rainbow;
  wire rgb_R;
  wire rgb_R_rainbow;
  wire [1:0]state;
  wire win;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_controller U0
       (.rgb_B(rgb_B),
        .rgb_B_rainbow(rgb_B_rainbow),
        .state(state),
        .win(win));
  LUT4 #(
    .INIT(16'hB030)) 
    rgb_G_INST_0
       (.I0(rgb_G_rainbow),
        .I1(state[1]),
        .I2(state[0]),
        .I3(win),
        .O(rgb_G));
  LUT4 #(
    .INIT(16'h8C0C)) 
    rgb_R_INST_0
       (.I0(rgb_R_rainbow),
        .I1(state[1]),
        .I2(state[0]),
        .I3(win),
        .O(rgb_R));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_controller
   (rgb_B,
    rgb_B_rainbow,
    state,
    win);
  output rgb_B;
  input rgb_B_rainbow;
  input [1:0]state;
  input win;

  wire rgb_B;
  wire rgb_B_rainbow;
  wire [1:0]state;
  wire win;

  LUT4 #(
    .INIT(16'h8303)) 
    \/i_ 
       (.I0(rgb_B_rainbow),
        .I1(state[1]),
        .I2(state[0]),
        .I3(win),
        .O(rgb_B));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
