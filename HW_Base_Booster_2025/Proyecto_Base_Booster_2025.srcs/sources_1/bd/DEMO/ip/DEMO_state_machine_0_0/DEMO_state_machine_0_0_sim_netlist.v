// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Oct 19 12:37:30 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Karlsen/Sep-repository-2/Proyecto_Base_Booster/HW_Base_Booster_2025/Proyecto_Base_Booster_2025.srcs/sources_1/bd/DEMO/ip/DEMO_state_machine_0_0/DEMO_state_machine_0_0_sim_netlist.v
// Design      : DEMO_state_machine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DEMO_state_machine_0_0,state_machine,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "state_machine,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module DEMO_state_machine_0_0
   (clk,
    btn_0,
    finished,
    state);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0" *) input clk;
  input btn_0;
  input finished;
  output [1:0]state;

  wire btn_0;
  wire clk;
  wire finished;
  wire [1:0]state;

  DEMO_state_machine_0_0_state_machine U0
       (.btn_0(btn_0),
        .clk(clk),
        .finished(finished),
        .state(state));
endmodule

(* ORIG_REF_NAME = "state_machine" *) 
module DEMO_state_machine_0_0_state_machine
   (state,
    finished,
    btn_0,
    clk);
  output [1:0]state;
  input finished;
  input btn_0;
  input clk;

  wire \FSM_sequential_next_state_reg[0]_i_1_n_0 ;
  wire btn_0;
  wire clk;
  wire finished;
  wire [1:0]next_state;
  wire [1:1]next_state__0;
  wire \next_state_inferred__0/i__n_0 ;
  wire [1:0]state;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6662)) 
    \/i_ 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(btn_0),
        .I3(finished),
        .O(next_state__0));
  (* FSM_ENCODED_STATES = "menu:01,game:10,title_screen:00,podium:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "menu:01,game:10,title_screen:00,podium:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(state[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[0]_i_1_n_0 ),
        .G(\next_state_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF0EF)) 
    \FSM_sequential_next_state_reg[0]_i_1 
       (.I0(finished),
        .I1(btn_0),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[1] 
       (.CLR(1'b0),
        .D(next_state__0),
        .G(\next_state_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \next_state_inferred__0/i_ 
       (.I0(btn_0),
        .I1(state[1]),
        .I2(state[0]),
        .I3(finished),
        .O(\next_state_inferred__0/i__n_0 ));
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
