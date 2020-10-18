-- Generated by Fintor Jozsef's script.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_one_bit_register is
end tb_one_bit_register;

architecture tb of tb_one_bit_register is
	component one_bit_register
		port (
			load	:	in STD_LOGIC;
			data	:	in STD_LOGIC;
			clock	:	in STD_LOGIC;
			Q	:	inout STD_LOGIC);
	end component;

	 signal load	: STD_LOGIC;
	 signal data	: STD_LOGIC;
	 signal clock	: STD_LOGIC;
	 signal Q	: STD_LOGIC;

begin

	dut : one_bit_register
	port map (
			load	 => load,
			data	 => data,
			clock	 => clock,
			Q	 => Q);
    

	stimuli : process
    
	begin
		-- Write initialization here.
        load <= '1';
        data <= '0';
        clock <= '0';
        
        wait for 10ns;
        clock <= '1';
        wait for 10ns;
        load <= '0';
        for i in 0 to 5 loop
            clock <= ( clock xor '1');
            wait for 10ns;
        end loop;
        load <= '0';
        wait for 100ns;
        
		-- Write stimuli here.
        wait for 10ns;
        load <= '1';
        data <= '1';
        wait for 10ns;
        clock <= '1';
        wait for 10ns;
        
        for i in 0 to 10 loop
            clock <= ( clock xor '1');
            wait for 10ns;
        end loop;
        
        
        wait for 10ns;
        load <= '1';
        data <= '0';
        wait for 10ns;
        clock <= '1';
        wait for 10ns;
        
        for i in 0 to 10 loop
            clock <= ( clock xor '1');
            wait for 10ns;
        end loop;
        

		wait;
	end process;

end tb;