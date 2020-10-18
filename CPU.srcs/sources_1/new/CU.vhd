----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2020 12:38:44
-- Design Name: 
-- Module Name: CU - Behavioral
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

entity CU is
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
end CU;

architecture Behavioral of CU is
    signal init_state: integer := 1;
    signal init_state_over: integer := 0;

begin
    
    
    process (clock)  begin
        if init_state = 1 then
            pc_ce <= '0';
            pc_load <= '0';
            pc_load_data <= x"0000";
            
            init_state <= 0;
        elsif (init_state_over = 0) and rising_edge(clock) then
            pc_ce <= '1';
            init_state_over <= 1;
        end if;
        
        if rising_edge(clock)then
            case func is
                when "0001" =>   -- A + B
                    a_reg_load <= '1';
                    a_reg_data <= target(7 downto 0);
                    b_reg_load <= '1';
                    b_reg_data <= "00000111";
                    alu_addr <= func;
                when "1111" =>
                    pc_ce <= '0';
                when "0000" =>
                    pc_ce <= '1';
                when others => null;
            end case;            
        end if;        
    end process;

end Behavioral;
