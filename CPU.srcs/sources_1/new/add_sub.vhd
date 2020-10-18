----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2020 19:04:53
-- Design Name: 
-- Module Name: add_sub - Behavioral
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

entity add_sub is
    Port ( clock : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C_in : in STD_LOGIC;
           C_out : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0));
end add_sub;

architecture Behavioral of add_sub is
    component ripple_carry_adder
            Port (  clock : in STD_LOGIC;
                    A_rpl : in STD_LOGIC;
                    B_rpl : in STD_LOGIC;
                    C_in_rpl : in STD_LOGIC;
                    S_rpl : out STD_LOGIC;
                    C_out_rpl : out STD_LOGIC);
    end component;
    
    signal C_internal : STD_LOGIC_VECTOR (6 downto 0);
begin
    RIPPLE_LSB: ripple_carry_adder port map (clock, A(0), B(0), C_in, S(0), C_internal(0));
    RIPPLE_MSB: ripple_carry_adder port map (clock, A(7), B(7), C_internal(6), S(7), C_out);
    MAPPING: for I in 1 to 6 generate
        RIPPLE_INTERNAL: ripple_carry_adder port map (clock, A(I), B(I), C_internal(I-1), S(I), C_internal(I));
    end generate MAPPING;
    
end Behavioral;
