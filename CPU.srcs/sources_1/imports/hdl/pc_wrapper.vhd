--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Tue Sep 22 23:00:11 2020
--Host        : DESKTOP-O6REA7C running 64-bit major release  (build 9200)
--Command     : generate_target pc_wrapper.bd
--Design      : pc_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pc_wrapper is
  port (
    CE_0 : in STD_LOGIC := '0';
    CLK_0 : in STD_LOGIC := '0';
    LOAD_0 : in STD_LOGIC := '0';
    L_0 : in STD_LOGIC_VECTOR ( 15 downto 0 ) := x"0000";
    Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 ) := x"0000");
end pc_wrapper;

architecture STRUCTURE of pc_wrapper is
  component pc is
  port (
    CE_0 : in STD_LOGIC;
    CLK_0 : in STD_LOGIC;
    L_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LOAD_0 : in STD_LOGIC;
    Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pc;
  
begin
pc_i: component pc
     port map (
      CE_0 => CE_0,
      CLK_0 => CLK_0,
      LOAD_0 => LOAD_0,
      L_0(15 downto 0) => L_0(15 downto 0),
      Q_0(15 downto 0) => Q_0(15 downto 0)
    );
end STRUCTURE;
