library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_bram_wrapper is
end tb_bram_wrapper;

architecture tb of tb_bram_wrapper is

    component bram_wrapper
        port (clock    : in std_logic;
              addr_in  : in std_logic_vector (15 downto 0);
              data_out : out std_logic_vector (15 downto 0));
    end component;

    signal clock    : std_logic;
    signal addr_in  : std_logic_vector (15 downto 0);
    signal data_out : std_logic_vector (15 downto 0);

begin

    dut : bram_wrapper
    port map (clock    => clock,
              addr_in  => addr_in,
              data_out => data_out);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        clock <= '0';
        addr_in <= (others => '0');

        -- EDIT Add stimuli here
        for i in 0 to 65525 loop
            addr_in <= std_logic_vector(to_unsigned(i, addr_in'length));
            clock <= '0';
            wait for 10ns;
            clock <= '1';
            
            wait for 10ns;
        end loop;
        wait;
    end process;

end tb;