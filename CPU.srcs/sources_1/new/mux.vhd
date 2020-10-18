----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2020 23:22:06
-- Design Name: 
-- Module Name: mux - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port (  clock : in STD_LOGIC;
            add_sub_input : in STD_LOGIC_VECTOR (7 downto 0);
            and_input : in STD_LOGIC_VECTOR (7 downto 0);
            or_input : in STD_LOGIC_VECTOR (7 downto 0);
            lefts_input : in STD_LOGIC_VECTOR (7 downto 0);
            rights_input : in STD_LOGIC_VECTOR (7 downto 0);
            addr_input : in STD_LOGIC_VECTOR (3 downto 0);
            mux_output : out STD_LOGIC_VECTOR (7 downto 0));
end mux;

architecture Behavioral of mux is
type t_array_mux is array (0 to 15) of std_logic_vector(7 downto 0);
signal array_mux  : t_array_mux;
begin
    array_mux(0) <= "00000000";
    array_mux(1) <= add_sub_input;
    array_mux(2) <= and_input;
    array_mux(3) <= or_input;
    array_mux(4) <= lefts_input;
    array_mux(5) <= "00000000";
    array_mux(6) <= "00000000";
    array_mux(7) <= "00000000";
    array_mux(8) <= "00000000";
    array_mux(9) <= add_sub_input;
    array_mux(10) <= and_input;
    array_mux(11) <= or_input;
    array_mux(12) <= rights_input;
    array_mux(13) <= "00000000";
    array_mux(14) <= "00000000";
    array_mux(15) <= "00000000";

process (clock) begin
    if rising_edge(clock) then
        mux_output <= array_mux(to_integer(unsigned(addr_input)));
    end if;
end process;
end Behavioral;
