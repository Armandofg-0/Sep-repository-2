-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Nov  9 22:37:21 2025
-- Host        : Armando running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DEMO_rgb_controller_0_0_sim_netlist.vhdl
-- Design      : DEMO_rgb_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_controller is
  port (
    rgb_B : out STD_LOGIC;
    rgb_B_rainbow : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    win : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_controller is
begin
\/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8303"
    )
        port map (
      I0 => rgb_B_rainbow,
      I1 => state(1),
      I2 => state(0),
      I3 => win,
      O => rgb_B
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    win : in STD_LOGIC;
    rgb_R_rainbow : in STD_LOGIC;
    rgb_G_rainbow : in STD_LOGIC;
    rgb_B_rainbow : in STD_LOGIC;
    rgb_R : out STD_LOGIC;
    rgb_G : out STD_LOGIC;
    rgb_B : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DEMO_rgb_controller_0_0,rgb_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rgb_controller,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_controller
     port map (
      rgb_B => rgb_B,
      rgb_B_rainbow => rgb_B_rainbow,
      state(1 downto 0) => state(1 downto 0),
      win => win
    );
rgb_G_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B030"
    )
        port map (
      I0 => rgb_G_rainbow,
      I1 => state(1),
      I2 => state(0),
      I3 => win,
      O => rgb_G
    );
rgb_R_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C0C"
    )
        port map (
      I0 => rgb_R_rainbow,
      I1 => state(1),
      I2 => state(0),
      I3 => win,
      O => rgb_R
    );
end STRUCTURE;
