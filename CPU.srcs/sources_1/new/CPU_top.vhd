----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2020 13:21:35
-- Design Name: 
-- Module Name: CPU_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_top is
    Port (  sys_clock: IN STD_LOGIC;
            alu_out_reg: inout STD_LOGIC_VECTOR (7 downto 0));
end CPU_top;

architecture Behavioral of CPU_top is
     component reg_file_wrapper
        port (
    BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_0_clk : in STD_LOGIC;
    BRAM_PORTA_0_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_0_en : in STD_LOGIC;
    BRAM_PORTA_0_rst : in STD_LOGIC;
    BRAM_PORTA_0_we : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
     end component;
     component CU
        Port ( func : in STD_LOGIC_VECTOR (3 downto 0);
           target : in STD_LOGIC_VECTOR (11 downto 0);
           clock : in STD_LOGIC;
           neg : in STD_LOGIC;
           a_reg_load : out STD_LOGIC;
           b_reg_load : out STD_LOGIC;
           a_reg_data: out STD_LOGIC_VECTOR (7 downto 0);
           b_reg_data: out STD_LOGIC_VECTOR (7 downto 0);
           pc_load : out STD_LOGIC;
           pc_ce : out STD_LOGIC;
           pc_load_data : out STD_LOGIC_VECTOR (15 downto 0);
           alu_addr : out STD_LOGIC_VECTOR (3 downto 0);
           BRAM_PORTA_0_addr	:	in STD_LOGIC_VECTOR ( 3 downto 0 );
           BRAM_PORTA_0_din	:	in STD_LOGIC_VECTOR ( 7 downto 0 );
           BRAM_PORTA_0_dout	:	out STD_LOGIC_VECTOR ( 7 downto 0 );
		   BRAM_PORTA_0_en	:	in STD_LOGIC;
		   BRAM_PORTA_0_we	:	in STD_LOGIC_VECTOR ( 0 to 0 ));
     end component;
     
     component bram_wrapper
        Port (  clock: IN STD_LOGIC;
                addr_in: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
                data_out: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
     end component;
     component pc_wrapper
        Port (  CE_0 : IN STD_LOGIC;
                CLK_0 : IN STD_LOGIC;
                LOAD_0 : IN STD_LOGIC;
                L_0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
                Q_0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
     end component;
     
     component alu
     Port (    clock : in STD_LOGIC;
               addr : in STD_LOGIC_VECTOR (3 downto 0);
               a_reg : in STD_LOGIC_VECTOR (7 downto 0);
               b_reg : in STD_LOGIC_VECTOR (7 downto 0);
               c_out_alu : out STD_LOGIC;
               alu_out : out STD_LOGIC_VECTOR (7 downto 0);
               alu_sub_res_neg : out STD_LOGIC);
     end component;
    
     component a_register
     Port ( a_in : in STD_LOGIC_VECTOR (7 downto 0);
           load : in STD_LOGIC;
           clock : in STD_LOGIC;
           a_out : inout STD_LOGIC_VECTOR (7 downto 0));
     end component;
     
     component b_register
     Port ( b_in : in STD_LOGIC_VECTOR (7 downto 0);
           load : in STD_LOGIC;
           clock : in STD_LOGIC;
           b_out : inout STD_LOGIC_VECTOR (7 downto 0));
     end component;
     
     component alu_out_register
     Port ( mux_out : in STD_LOGIC_VECTOR (7 downto 0);
           load : in STD_LOGIC;
           clock : in STD_LOGIC;
           alu_out : inout STD_LOGIC_VECTOR (7 downto 0));
     end component;
     
     signal a_reg_data_in: STD_LOGIC_VECTOR (7 downto 0);
     signal a_reg_data_out: STD_LOGIC_VECTOR (7 downto 0);
     signal a_reg_load: STD_LOGIC;
     
     signal b_reg_data_in: STD_LOGIC_VECTOR (7 downto 0);
     signal b_reg_data_out: STD_LOGIC_VECTOR (7 downto 0);
     signal b_reg_load: STD_LOGIC;
     
     signal alu_mux_out: STD_LOGIC_VECTOR (7 downto 0);
     signal alu_reg_data_out: STD_LOGIC_VECTOR (7 downto 0);
     signal alu_address: STD_LOGIC_VECTOR (3 downto 0);
     signal alu_carry_out: STD_LOGIC;
     signal alu_sub_res_neg: STD_LOGIC;
     signal alu_out_reg_load: STD_LOGIC;
     
     -- PC signals --
     signal pc_clock_enable: STD_LOGIC;
     signal pc_load: STD_LOGIC;
     signal pc_in: STD_LOGIC_VECTOR(15 DOWNTO 0);
     signal pc_out: STD_LOGIC_VECTOR(15 DOWNTO 0);
     signal pc_ce: STD_LOGIC;
     
          signal  en_pc_cu :  STD_LOGIC;
		 signal  en_bram_cu : STD_LOGIC;
		 signal  en_areg_cu :  STD_LOGIC;
		signal   en_breg_cu : STD_LOGIC;
		 signal  en_regs_cu :  STD_LOGIC;
		 signal  en_alu_cu : STD_LOGIC;
		 signal  en_alu_reg_cu : STD_LOGIC;
     
     -- BRAM signals --
     signal bram_addr_out: STD_LOGIC_VECTOR(15 DOWNTO 0);
     
     
     -- Registers signals --
     signal BRAM_PORTA_0_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
     --signal BRAM_PORTA_0_clk : STD_LOGIC;
     signal BRAM_PORTA_0_din : STD_LOGIC_VECTOR ( 7 downto 0 );
     signal BRAM_PORTA_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
     signal BRAM_PORTA_0_en : STD_LOGIC;
     --signal BRAM_PORTA_0_rst : STD_LOGIC;
     signal BRAM_PORTA_0_we : STD_LOGIC_VECTOR ( 0 to 0 );
     
     
begin
        
        MAPPING_CU: CU port map (
            func => bram_addr_out(15 downto 12),
            target => bram_addr_out(11 downto 0),
            pc_load_data => pc_in,
            pc_load => pc_load,
            pc_ce => pc_ce,
            clock => sys_clock,
            neg => alu_sub_res_neg,
            a_reg_load => a_reg_load,
            b_reg_load => b_reg_load,
            a_reg_data => a_reg_data_in,
            b_reg_data => b_reg_data_in,
            alu_addr => alu_address,
            BRAM_PORTA_0_addr => BRAM_PORTA_0_addr,
            BRAM_PORTA_0_din => BRAM_PORTA_0_din,
            BRAM_PORTA_0_dout => BRAM_PORTA_0_dout,
            BRAM_PORTA_0_en => BRAM_PORTA_0_en,
            BRAM_PORTA_0_we => BRAM_PORTA_0_we);

            
        MAPPING_BRAM_WRAPPER: bram_wrapper port map (sys_clock, pc_out, bram_addr_out);
        MAPPING_PC: pc_wrapper port map (pc_ce, sys_clock, pc_load, pc_in, pc_out);
        MAPPING_A_REG: a_register port map (a_reg_data_in, a_reg_load, sys_clock, a_reg_data_out);
        MAPPING_B_REG: b_register port map (b_reg_data_in, b_reg_load, sys_clock, b_reg_data_out);
        MAPPING_ALU_OUT_REGISTER: alu_out_register port map (alu_mux_out, alu_out_reg_load, sys_clock, alu_out_reg); 
        MAPPING_ALU: alu port map (sys_clock, alu_address, a_reg_data_out, b_reg_data_out, alu_carry_out, alu_mux_out, alu_sub_res_neg);
        MAPPING_REGISTERS: reg_file_wrapper port map(BRAM_PORTA_0_addr, sys_clock, BRAM_PORTA_0_din, BRAM_PORTA_0_dout, BRAM_PORTA_0_en, '0', BRAM_PORTA_0_we);
end Behavioral;
