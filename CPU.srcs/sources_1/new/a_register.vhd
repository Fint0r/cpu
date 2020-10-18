----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2020 13:48:11
-- Design Name: 
-- Module Name: a_register - Behavioral
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

entity a_register is
    Port ( a_in : in STD_LOGIC_VECTOR (7 downto 0) := x"00";
           load : in STD_LOGIC := '0';
           clock : in STD_LOGIC := '0';
           a_out : inout STD_LOGIC_VECTOR (7 downto 0) := x"00");
end a_register;

architecture Behavioral of a_register is
    component one_bit_register
            Port ( load : in STD_LOGIC;
               data : in STD_LOGIC;
               clock : in STD_LOGIC;
               Q : inout STD_LOGIC);
            end component;
    begin
        
        MAPPING: for I in 7 downto 0 generate
            MAPPING_ONE_BIT_REGISTER: one_bit_register port map (load, a_in(I), clock, a_out(I));
        end generate MAPPING;


end Behavioral;
