library ieee;
use ieee.std_logic_1164.all;

entity program_counter_tb is
end program_counter_tb;

architecture tb of program_counter_tb is

    component program_counter
        port (CLK  : in std_logic;
              CE   : in std_logic;
              LOAD : in std_logic;
              L    : in std_logic_vector (15 downto 0);
              Q    : out std_logic_vector (15 downto 0));
    end component;

    signal CLK  : std_logic;
    signal CE   : std_logic;
    signal LOAD : std_logic;
    signal L    : std_logic_vector (15 downto 0);
    signal Q    : std_logic_vector (15 downto 0);

begin

    dut : program_counter
    port map (CLK  => CLK,
              CE   => CE,
              LOAD => LOAD,
              L    => L,
              Q    => Q);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        CLK <= '0';
        CE <= '1';
        LOAD <= '0';
        L <= (others => '0');

        -- EDIT Add stimuli here
        for i in 0 to 65525 loop
            CLK <= '0';
            wait for 10ns;
            CLK <= '1';
            
            
            
            wait for 10ns;
        end loop;
        wait;
    end process;

end tb;