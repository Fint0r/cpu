----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2020 02:11:07
-- Design Name: 
-- Module Name: xor_func - Behavioral
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

entity and_func is
        Port (  input_a_and : in STD_LOGIC_VECTOR (7 downto 0);
                input_b_and : in STD_LOGIC_VECTOR (7 downto 0);
                output_a_and : out STD_LOGIC_VECTOR (7 downto 0));
end and_func;

architecture Behavioral of and_func is

begin
     AND_AB: for I in 0 to 7 generate
        output_a_and(I) <= input_a_and(I) and input_b_and(I);
     end generate AND_AB;
end Behavioral;
