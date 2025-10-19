-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Oct 19 14:10:45 2025
-- Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Karlsen/Sep-repository-2/HW_Base_Booster_2025/Proyecto_Base_Booster_2025.srcs/sources_1/bd/DEMO/ip/DEMO_state_machine_0_1/DEMO_state_machine_0_1_sim_netlist.vhdl
-- Design      : DEMO_state_machine_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_state_machine_0_1_state_machine is
  port (
    state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    btn_0 : in STD_LOGIC;
    finished : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DEMO_state_machine_0_1_state_machine : entity is "state_machine";
end DEMO_state_machine_0_1_state_machine;

architecture STRUCTURE of DEMO_state_machine_0_1_state_machine is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "menu:01,game:10,title_screen:00,podium:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "menu:01,game:10,title_screen:00,podium:11";
begin
  state(1 downto 0) <= \^state\(1 downto 0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DEDA"
    )
        port map (
      I0 => btn_0,
      I1 => \^state\(1),
      I2 => \^state\(0),
      I3 => finished,
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => btn_0,
      I1 => \^state\(1),
      I2 => \^state\(0),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
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
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => \^state\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_state_machine_0_1 is
  port (
    clk : in STD_LOGIC;
    btn_0 : in STD_LOGIC;
    finished : in STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DEMO_state_machine_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DEMO_state_machine_0_1 : entity is "DEMO_state_machine_0_1,state_machine,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DEMO_state_machine_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of DEMO_state_machine_0_1 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of DEMO_state_machine_0_1 : entity is "state_machine,Vivado 2020.1";
end DEMO_state_machine_0_1;

architecture STRUCTURE of DEMO_state_machine_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0";
begin
U0: entity work.DEMO_state_machine_0_1_state_machine
     port map (
      btn_0 => btn_0,
      clk => clk,
      finished => finished,
      state(1 downto 0) => state(1 downto 0)
    );
end STRUCTURE;
