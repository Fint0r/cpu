----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2020 13:06:50
-- Design Name: 
-- Module Name: register - Behavioral
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

entity one_bit_register is
    Port ( load : in STD_LOGIC;
           data : in STD_LOGIC;
           clock : in STD_LOGIC;
           Q : inout STD_LOGIC);
end one_bit_register;
    
    
architecture Behavioral of one_bit_register is
    component d_flip_flop
            Port ( D : in STD_LOGIC;
               clock_ff : in STD_LOGIC;
               Q_ff : inout STD_LOGIC);
    end component;
    
    signal ff_input : STD_LOGIC;
    begin
    
    MAPPING_D_FLIP_FLOP: d_flip_flop port map (ff_input, clock, Q);
    
    process (clock)
    begin
        --if rising_edge(clock) then
            ff_input <= ((Q and (not load)) or (load and data));
        --end if;
    end process;
end Behavioral;
