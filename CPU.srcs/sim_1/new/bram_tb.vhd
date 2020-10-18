library ieee;
use ieee.std_logic_1164.all;

entity tb_bram is
end tb_bram;

architecture tb of tb_bram is

    component bram
        port (clka  : in std_logic;
              ena   : in std_logic;
              wea   : in std_logic_vector (0 downto 0);
              addra : in std_logic_vector (15 downto 0);
              dina  : in std_logic_vector (15 downto 0);
              douta : out std_logic_vector (15 downto 0));
    end component;

    signal clka  : std_logic;
    signal ena   : std_logic;
    signal wea   : std_logic_vector (0 downto 0);
    signal addra : std_logic_vector (15 downto 0);
    signal dina  : std_logic_vector (15 downto 0);
    signal douta : std_logic_vector (15 downto 0);

begin

    dut : bram
    port map (clka  => clka,
              ena   => ena,
              wea   => wea,
              addra => addra,
              dina  => dina,
              douta => douta);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        clka <= '0';
        ena <= '0';
        wea <= (others => '0');
        addra <= (others => '0');
        dina <= (others => '0');

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;