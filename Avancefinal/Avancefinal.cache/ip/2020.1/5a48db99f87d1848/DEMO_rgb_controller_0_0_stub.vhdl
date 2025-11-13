-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Nov  9 22:37:21 2025
-- Host        : Armando running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DEMO_rgb_controller_0_0_stub.vhdl
-- Design      : DEMO_rgb_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    win : in STD_LOGIC;
    rgb_R_rainbow : in STD_LOGIC;
    rgb_G_rainbow : in STD_LOGIC;
    rgb_B_rainbow : in STD_LOGIC;
    rgb_R : out STD_LOGIC;
    rgb_G : out STD_LOGIC;
    rgb_B : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "state[1:0],win,rgb_R_rainbow,rgb_G_rainbow,rgb_B_rainbow,rgb_R,rgb_G,rgb_B";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rgb_controller,Vivado 2020.1";
begin
end;
