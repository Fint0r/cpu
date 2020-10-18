--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Tue Sep 22 23:36:48 2020
--Host        : DESKTOP-O6REA7C running 64-bit major release  (build 9200)
--Command     : generate_target pc.bd
--Design      : pc
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pc is
  port (
    CE_0 : in STD_LOGIC;
    CLK_0 : in STD_LOGIC;
    LOAD_0 : in STD_LOGIC;
    L_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pc : entity is "pc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pc,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pc : entity is "pc.hwdef";
end pc;

architecture STRUCTURE of pc is
  component pc_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pc_c_counter_binary_0_0;
  signal CE_0_1 : STD_LOGIC;
  signal CLK_0_1 : STD_LOGIC;
  signal LOAD_0_1 : STD_LOGIC;
  signal L_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CE_0 : signal is "xilinx.com:signal:clockenable:1.0 CE.CE_0 CE";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CE_0 : signal is "XIL_INTERFACENAME CE.CE_0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of CLK_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER of CLK_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN pc_CLK_0, FREQ_HZ 10000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of LOAD_0 : signal is "xilinx.com:signal:data:1.0 DATA.LOAD_0 DATA";
  attribute X_INTERFACE_PARAMETER of LOAD_0 : signal is "XIL_INTERFACENAME DATA.LOAD_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of L_0 : signal is "xilinx.com:signal:data:1.0 DATA.L_0 DATA";
  attribute X_INTERFACE_PARAMETER of L_0 : signal is "XIL_INTERFACENAME DATA.L_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of Q_0 : signal is "xilinx.com:signal:data:1.0 DATA.Q_0 DATA";
  attribute X_INTERFACE_PARAMETER of Q_0 : signal is "XIL_INTERFACENAME DATA.Q_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}";
begin
  CE_0_1 <= CE_0;
  CLK_0_1 <= CLK_0;
  LOAD_0_1 <= LOAD_0;
  L_0_1(15 downto 0) <= L_0(15 downto 0);
  Q_0(15 downto 0) <= c_counter_binary_0_Q(15 downto 0);
c_counter_binary_0: component pc_c_counter_binary_0_0
     port map (
      CE => CE_0_1,
      CLK => CLK_0_1,
      L(15 downto 0) => L_0_1(15 downto 0),
      LOAD => LOAD_0_1,
      Q(15 downto 0) => c_counter_binary_0_Q(15 downto 0)
    );
end STRUCTURE;
