// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Oct 19 12:37:31 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Karlsen/Sep-repository-2/Proyecto_Base_Booster/HW_Base_Booster_2025/Proyecto_Base_Booster_2025.srcs/sources_1/bd/DEMO/ip/DEMO_debouncer_0_0/DEMO_debouncer_0_0_sim_netlist.v
// Design      : DEMO_debouncer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DEMO_debouncer_0_0,debouncer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "debouncer,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module DEMO_debouncer_0_0
   (clk,
    button,
    debounced_pulse);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0" *) input clk;
  input button;
  output debounced_pulse;

  wire button;
  wire clk;
  wire debounced_pulse;

  DEMO_debouncer_0_0_debouncer U0
       (.button(button),
        .clk(clk),
        .debounced_pulse(debounced_pulse));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module DEMO_debouncer_0_0_debouncer
   (debounced_pulse,
    clk,
    button);
  output debounced_pulse;
  input clk;
  input button;

  wire button;
  wire button_last;
  wire button_stable_i_1_n_0;
  wire button_stable_reg_n_0;
  wire \button_sync_reg_n_0_[0] ;
  wire clk;
  wire [21:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[21]_i_1_n_0 ;
  wire \counter[21]_i_3_n_0 ;
  wire \counter[21]_i_4_n_0 ;
  wire \counter[21]_i_5_n_0 ;
  wire \counter[21]_i_6_n_0 ;
  wire \counter[21]_i_7_n_0 ;
  wire \counter[21]_i_8_n_0 ;
  wire [21:0]counter_0;
  wire [21:1]data0;
  wire debounced_pulse;
  wire p_0_in;
  wire pulse_reg0;
  wire [3:0]NLW_counter0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_counter0_carry__4_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    button_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(button_stable_reg_n_0),
        .Q(button_last),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    button_stable_i_1
       (.I0(\counter[21]_i_3_n_0 ),
        .I1(p_0_in),
        .I2(button_stable_reg_n_0),
        .O(button_stable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_stable_reg
       (.C(clk),
        .CE(1'b1),
        .D(button_stable_i_1_n_0),
        .Q(button_stable_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(button),
        .Q(\button_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\button_sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO(NLW_counter0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__4_O_UNCONNECTED[3:1],data0[21]}),
        .S({1'b0,1'b0,1'b0,counter[21]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[10]_i_1 
       (.I0(data0[10]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[11]_i_1 
       (.I0(data0[11]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_1 
       (.I0(data0[12]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[13]_i_1 
       (.I0(data0[13]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[14]_i_1 
       (.I0(data0[14]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[15]_i_1 
       (.I0(data0[15]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_1 
       (.I0(data0[16]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[17]_i_1 
       (.I0(data0[17]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[18]_i_1 
       (.I0(data0[18]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[19]_i_1 
       (.I0(data0[19]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[1]_i_1 
       (.I0(data0[1]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_1 
       (.I0(data0[20]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[20]));
  LUT2 #(
    .INIT(4'h9)) 
    \counter[21]_i_1 
       (.I0(button_stable_reg_n_0),
        .I1(p_0_in),
        .O(\counter[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[21]_i_2 
       (.I0(data0[21]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[21]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \counter[21]_i_3 
       (.I0(\counter[21]_i_4_n_0 ),
        .I1(\counter[21]_i_5_n_0 ),
        .I2(\counter[21]_i_6_n_0 ),
        .I3(\counter[21]_i_7_n_0 ),
        .I4(\counter[21]_i_8_n_0 ),
        .O(\counter[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \counter[21]_i_4 
       (.I0(counter[11]),
        .I1(counter[13]),
        .I2(counter[2]),
        .I3(counter[4]),
        .I4(counter[19]),
        .I5(counter[14]),
        .O(\counter[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[21]_i_5 
       (.I0(counter[7]),
        .I1(counter[3]),
        .I2(counter[10]),
        .I3(counter[15]),
        .O(\counter[21]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter[21]_i_6 
       (.I0(counter[21]),
        .I1(counter[5]),
        .I2(counter[12]),
        .I3(counter[20]),
        .O(\counter[21]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[21]_i_7 
       (.I0(counter[17]),
        .I1(counter[1]),
        .I2(counter[8]),
        .I3(counter[6]),
        .O(\counter[21]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[21]_i_8 
       (.I0(counter[16]),
        .I1(counter[0]),
        .I2(counter[18]),
        .I3(counter[9]),
        .O(\counter[21]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[2]_i_1 
       (.I0(data0[2]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[3]_i_1 
       (.I0(data0[3]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_1 
       (.I0(data0[4]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[5]_i_1 
       (.I0(data0[5]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[6]_i_1 
       (.I0(data0[6]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[7]_i_1 
       (.I0(data0[7]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_1 
       (.I0(data0[8]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[9]_i_1 
       (.I0(data0[9]),
        .I1(\counter[21]_i_3_n_0 ),
        .O(counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[10]),
        .Q(counter[10]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[11]),
        .Q(counter[11]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[12]),
        .Q(counter[12]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[13]),
        .Q(counter[13]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[14]),
        .Q(counter[14]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[15]),
        .Q(counter[15]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[16]),
        .Q(counter[16]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[17]),
        .Q(counter[17]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[18]),
        .Q(counter[18]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[19]),
        .Q(counter[19]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[20]),
        .Q(counter[20]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[21]),
        .Q(counter[21]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(\counter[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(\counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    pulse_reg_i_1
       (.I0(button_stable_reg_n_0),
        .I1(button_last),
        .O(pulse_reg0));
  FDRE #(
    .INIT(1'b0)) 
    pulse_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(pulse_reg0),
        .Q(debounced_pulse),
        .R(1'b0));
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
