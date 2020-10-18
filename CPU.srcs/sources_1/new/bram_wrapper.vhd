----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.09.2020 20:34:35
-- Design Name: 
-- Module Name: bram_wrapper - Behavioral
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

entity bram_wrapper is
    Port (  clock: IN STD_LOGIC := '0';
            addr_in: IN STD_LOGIC_VECTOR(15 DOWNTO 0) := x"0000";
            data_out: OUT STD_LOGIC_VECTOR(15 DOWNTO 0) := x"0000");
end bram_wrapper;

architecture Behavioral of bram_wrapper is
--    component block_ram_wrapper
--        PORT (  BRAM_PORTA_0_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--                BRAM_PORTA_0_clk : IN STD_LOGIC;
--                BRAM_PORTA_0_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--                BRAM_PORTA_0_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--                BRAM_PORTA_0_we : IN STD_LOGIC_VECTOR(0 DOWNTO 0));
--
--    end component;
    
    -- fake signals for bram wrapper --
    --signal fake_clka: STD_LOGIC;
    --signal fake_ena: STD_LOGIC;
    --signal fake_wea: STD_LOGIC_VECTOR(0 DOWNTO 0);
    --signal fake_addra: STD_LOGIC_VECTOR(15 DOWNTO 0);
    --signal fake_dina: STD_LOGIC_VECTOR(15 DOWNTO 0);
    --signal fake_douta: STD_LOGIC_VECTOR(15 DOWNTO 0);
    
    
    -- create fake bram --
    type t_array_ram is array (0 to 12) of std_logic_vector(15 downto 0);
    signal array_ram: t_array_ram;
    
begin
--     MAPPING_BRAM: block_ram_wrapper port map (fake_addra, fake_clka, fake_dina, fake_douta, fake_wea);
    
    array_ram <= (  "0001000000000000",
                    "0001000000000001",
                    "0001000000000010",
                    "0001000000000011",
                    "0001000000000100",
                    "0001000000000101",
                    "0001000000000111",
                    "0001000000001000",
                    "1111000000000000",
                    "0001000000000001",
                    "0001000000000010",
                    "0000000000000000",
                    "0001000000000001");
    
    process (addr_in) is
        begin
            --if rising_edge(clock) then
                data_out <= array_ram(to_integer(unsigned(addr_in)));
            --end if;
    end process;
end Behavioral;
