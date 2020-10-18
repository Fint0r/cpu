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

entity xor_func is
Port (  input_b_xor : in STD_LOGIC_VECTOR (7 downto 0);
                select_xor : in STD_LOGIC;
                output_b_xor : out STD_LOGIC_VECTOR (7 downto 0));
end xor_func;

architecture Behavioral of xor_func is

begin
     XOR_B: for I in 0 to 7 generate
        output_b_xor(I) <= input_b_xor(I) xor select_xor;
     end generate XOR_B;

end Behavioral;
