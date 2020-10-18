----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2020 21:41:47
-- Design Name: 
-- Module Name: ripple_carry_adder - Behavioral
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

entity ripple_carry_adder is
    Port ( clock : in STD_LOGIC;
           A_rpl : in STD_LOGIC;
           B_rpl : in STD_LOGIC;
           C_in_rpl : in STD_LOGIC;
           S_rpl : out STD_LOGIC;
           C_out_rpl : out STD_LOGIC);
end ripple_carry_adder;

architecture Behavioral of ripple_carry_adder is

begin
process (clock) begin
    if rising_edge(clock) then
        S_rpl <= ((A_rpl xor B_rpl) xor C_in_rpl);
        C_out_rpl <= ((A_rpl and B_rpl) or ((C_in_rpl) and (A_rpl xor B_rpl)));
    end if;
end process;
end Behavioral;
