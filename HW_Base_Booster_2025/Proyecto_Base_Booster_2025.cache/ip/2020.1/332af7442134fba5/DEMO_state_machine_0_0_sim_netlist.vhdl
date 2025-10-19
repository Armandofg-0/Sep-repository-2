-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Oct 19 12:37:29 2025
-- Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DEMO_state_machine_0_0_sim_netlist.vhdl
-- Design      : DEMO_state_machine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_state_machine is
  port (
    state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    finished : in STD_LOGIC;
    btn_0 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_state_machine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_state_machine is
  signal \FSM_sequential_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \next_state_inferred__0/i__n_0\ : STD_LOGIC;
  signal \^state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "menu:01,game:10,title_screen:00,podium:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "menu:01,game:10,title_screen:00,podium:11";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[1]\ : label is "LD";
begin
  state(1 downto 0) <= \^state\(1 downto 0);
\/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6662"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => btn_0,
      I3 => finished,
      O => \next_state__0\(1)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_state(0),
      Q => \^state\(0),
      R => '0'
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_state(1),
      Q => \^state\(1),
      R => '0'
    );
\FSM_sequential_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[0]_i_1_n_0\,
      G => \next_state_inferred__0/i__n_0\,
      GE => '1',
      Q => next_state(0)
    );
\FSM_sequential_next_state_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0EF"
    )
        port map (
      I0 => finished,
      I1 => btn_0,
      I2 => \^state\(1),
      I3 => \^state\(0),
      O => \FSM_sequential_next_state_reg[0]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state__0\(1),
      G => \next_state_inferred__0/i__n_0\,
      GE => '1',
      Q => next_state(1)
    );
\next_state_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => btn_0,
      I1 => \^state\(1),
      I2 => \^state\(0),
      I3 => finished,
      O => \next_state_inferred__0/i__n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    btn_0 : in STD_LOGIC;
    finished : in STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DEMO_state_machine_0_0,state_machine,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "state_machine,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_state_machine
     port map (
      btn_0 => btn_0,
      clk => clk,
      finished => finished,
      state(1 downto 0) => state(1 downto 0)
    );
end STRUCTURE;
