----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2020 02:11:39
-- Design Name: 
-- Module Name: or_func - Behavioral
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

entity or_func is
Port (  input_a_or : in STD_LOGIC_VECTOR (7 downto 0);
                input_b_or : in STD_LOGIC_VECTOR (7 downto 0);
                output_a_or : out STD_LOGIC_VECTOR (7 downto 0));
end or_func;

architecture Behavioral of or_func is

begin
     OR_AB: for I in 0 to 7 generate
        output_a_or(I) <= input_a_or(I) or input_b_or(I);
     end generate OR_AB;

end Behavioral;
