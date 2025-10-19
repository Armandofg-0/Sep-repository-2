-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Oct 19 12:37:31 2025
-- Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Karlsen/Sep-repository-2/Proyecto_Base_Booster/HW_Base_Booster_2025/Proyecto_Base_Booster_2025.srcs/sources_1/bd/DEMO/ip/DEMO_debouncer_0_0/DEMO_debouncer_0_0_stub.vhdl
-- Design      : DEMO_debouncer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMO_debouncer_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    button : in STD_LOGIC;
    debounced_pulse : out STD_LOGIC
  );

end DEMO_debouncer_0_0;

architecture stub of DEMO_debouncer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,button,debounced_pulse";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "debouncer,Vivado 2020.1";
begin
end;
