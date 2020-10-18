library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity alu_tb is
end;

architecture bench of alu_tb is

  component alu
      Port ( addr : in STD_LOGIC_VECTOR (3 downto 0);
             a_reg : in STD_LOGIC_VECTOR (7 downto 0);
             b_reg : in STD_LOGIC_VECTOR (7 downto 0);
             c_out_alu : out STD_LOGIC;
             alu_out : out STD_LOGIC_VECTOR (7 downto 0);
             alu_sub_res_neg : out STD_LOGIC);
  end component;

  signal addr: STD_LOGIC_VECTOR (3 downto 0);
  signal a_reg: STD_LOGIC_VECTOR (7 downto 0);
  signal b_reg: STD_LOGIC_VECTOR (7 downto 0);
  signal c_out_alu: STD_LOGIC;
  signal alu_out: STD_LOGIC_VECTOR (7 downto 0);
  signal alu_sub_res_neg: STD_LOGIC;
  
  -- a function to print a logic vector to console
  function to_string ( a: std_logic_vector) return string is
  variable b : string (1 to a'length) := (others => NUL);
  variable stri : integer := 1; 
  begin
      for i in a'range loop
          b(stri) := std_logic'image(a((i)))(2);
      stri := stri+1;
      end loop;
  return b;
  end function;

begin

  uut: alu port map ( addr      => addr,
                      a_reg     => a_reg,
                      b_reg     => b_reg,
                      c_out_alu => c_out_alu,
                      alu_out   => alu_out,
                      alu_sub_res_neg => alu_sub_res_neg);

  stimulus: process
  begin
    report "===========  TESTING STARTED  ===========";
    
    -- 0: One failing test for presentation
            addr    <= "0000";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;
            assert 1 = 0 report "This will always fail!" severity error;
              
            
    -- 1: Testing the NOP operation
        -- TC1 test NOP operation with full 1s in both registers
            addr    <= "0000";
            a_reg   <= "11111111";
            b_reg   <= "11111111";
            wait for 10ns;
            assert alu_out = "00000000" report "1.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "1.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
    
            
        -- TC2 test NOP operation with full 0s in both registers
            addr    <= "0000";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "00000000" report "1.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "1.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
               
            
    -- 2: Testing addition
        -- TC1 test 255 + 255
            addr    <= "0001";
            a_reg   <= "11111111";
            b_reg   <= "11111111";
            wait for 10ns;
            assert alu_out = "11111110" report "2.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11111110" severity error;
            assert c_out_alu = '1' report "2.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 1" severity error;
    
            
        -- TC2 test 0 + 0
            addr    <= "0001";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;        
            assert alu_out = "00000000" report "2.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "2.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC3 test 123 + 75
            addr    <= "0001";
            a_reg   <= "01111011";
            b_reg   <= "01001011";
            wait for 10ns;
            assert alu_out = "11000110" report "2.3.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11000110" severity error;
            assert c_out_alu = '0' report "2.3.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
     
     
    -- 3: Testing substraction
        -- TC1 test 255 - 255
            addr    <= "1001";
            a_reg   <= "11111111";
            b_reg   <= "11111111";
            wait for 10ns;
            assert alu_out = "00000000" report "3.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "3.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC2 test 0 - 0
            addr    <= "1001";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "00000000" report "3.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "3.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC3 test 123 - 75
            addr    <= "1001";
            a_reg   <= "01111011";
            b_reg   <= "01001011";
            wait for 10ns;
            assert alu_out = "00110000" report "3.3.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00110000" severity error;
            assert c_out_alu = '0' report "3.3.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC4 test 75 - 123
            addr    <= "1001";
            a_reg   <= "01001011";
            b_reg   <= "01111011";
            wait for 10ns;
            assert alu_out = "11010000" report "3.4.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11010000" severity error;
            assert c_out_alu = '0' report "3.4.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
            
    -- 4: Testing logical AND
        -- TC1 test with 0 AND 0
            addr    <= "0010";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "00000000" report "4.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "4.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC2 test with 255 AND 255
            addr    <= "0010";
            a_reg   <= "11111111";
            b_reg   <= "11111111";
            wait for 10ns;
            assert alu_out = "11111111" report "4.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11111111" severity error;
            assert c_out_alu = '0' report "4.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC3 test with 123 AND 75
            addr    <= "0010";
            a_reg   <= "01111011";
            b_reg   <= "01001011";
            wait for 10ns;
            assert alu_out = "01001011" report "4.3.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 01001011" severity error;
            assert c_out_alu = '0' report "4.3.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC4 test with 75 AND 123
            addr    <= "0010";
            a_reg   <= "01001011";
            b_reg   <= "01111011";
            wait for 10ns;
            assert alu_out = "01001011" report "4.4.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 01001011" severity error;
            assert c_out_alu = '0' report "4.4.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
            
     -- 5: Testing logical OR
        -- TC1 test with 0 OR 0
            addr    <= "0011";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "00000000" report "5.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "5.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC2 test with 255 OR 255
            addr    <= "0011";
            a_reg   <= "11111111";
            b_reg   <= "11111111";
            wait for 10ns;
            assert alu_out = "11111111" report "5.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11111111" severity error;
            assert c_out_alu = '0' report "5.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC3 test with 123 OR 203
            addr    <= "0011";
            a_reg   <= "01111011";
            b_reg   <= "11001011";
            wait for 10ns;
            assert alu_out = "11111011" report "5.3.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11111011" severity error;
            assert c_out_alu = '0' report "5.3.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC4 test with 203 OR 123
            addr    <= "0011";
            a_reg   <= "11001011";
            b_reg   <= "01111011";
            wait for 10ns;
            assert alu_out = "11111011" report "5.4.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11111011" severity error;
            assert c_out_alu = '0' report "5.4.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;       
          
          
     -- 6: Testing left shifting
        -- TC1 test with A = 0, B = 0
            addr    <= "0100";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "00000000" report "6.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "6.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC2 test with A = 255, B = 0
            addr    <= "0100";
            a_reg   <= "11111111";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "11111110" report "6.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11111110" severity error;
            assert c_out_alu = '0' report "6.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC3 test with A = 123, B = random number
            addr    <= "0100";
            a_reg   <= "01111011";
            b_reg   <= "11001011";
            wait for 10ns;
            assert alu_out = "11110110" report "6.3.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11110110" severity error;
            assert c_out_alu = '0' report "6.3.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC4 test with A = 203, B = random numbe
            addr    <= "0100";
            a_reg   <= "11001011";
            b_reg   <= "01111011";
            wait for 10ns;
            assert alu_out = "10010110" report "6.4.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 10010110" severity error;
            assert c_out_alu = '0' report "6.4.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;    


     -- 7: Testing right shifting
        -- TC1 test with A = 0, B = 0
            addr    <= "1100";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "00000000" report "7.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "7.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC2 test with A = 255, B = 0
            addr    <= "1100";
            a_reg   <= "11111111";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "01111111" report "7.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 01111111" severity error;
            assert c_out_alu = '0' report "7.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC3 test with A = 123, B = random number
            addr    <= "1100";
            a_reg   <= "01111011";
            b_reg   <= "11001011";
            wait for 10ns;
            assert alu_out = "00111101" report "7.3.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00111101" severity error;
            assert c_out_alu = '0' report "7.3.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC4 test with A = 203, B = random numbe
            addr    <= "1100";
            a_reg   <= "11001011";
            b_reg   <= "01111011";
            wait for 10ns;
            assert alu_out = "01100101" report "7.4.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 01100101" severity error;
            assert c_out_alu = '0' report "7.4.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
            
    -- 8: Testing logical AND with !B
        -- TC1 test with 0
            addr    <= "1010";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "00000000" report "8.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "8.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC2 test with 255
            addr    <= "1010";
            a_reg   <= "11111111";
            b_reg   <= "11111111";
            wait for 10ns;
            assert alu_out = "00000000" report "8.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "8.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC3 test with 255 AND 0
            addr    <= "1010";
            a_reg   <= "11111111";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "11111111" report "8.3.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11111111" severity error;
            assert c_out_alu = '0' report "8.3.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC4 test with 237 AND 91
            addr    <= "1010";
            a_reg   <= "11101101";
            b_reg   <= "01011011";
            wait for 10ns;
            assert alu_out = "10100100" report "8.4.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 10100100" severity error;
            assert c_out_alu = '0' report "8.4.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
    
    
    -- 9: Testing logical AND with !B
        -- TC1 test with 0
            addr    <= "1011";
            a_reg   <= "00000000";
            b_reg   <= "00000000";
            wait for 10ns;
            assert alu_out = "11111111" report "9.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "9.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC2 test with 255
            addr    <= "1011";
            a_reg   <= "11111111";
            b_reg   <= "11111111";
            wait for 10ns;
            assert alu_out = "11111111" report "9.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11111111" severity error;
            assert c_out_alu = '0' report "9.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC3 test with 0 AND 255
            addr    <= "1011";
            a_reg   <= "00000000";
            b_reg   <= "11111111";
            wait for 10ns;
            assert alu_out = "00000000" report "9.3.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "9.3.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC4 test with 237 AND 91
            addr    <= "1011";
            a_reg   <= "11101101";
            b_reg   <= "01011011";
            wait for 10ns;
            assert alu_out = "11101101" report "9.4.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 11101101" severity error;
            assert c_out_alu = '0' report "9.4.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
    
    -- 10: Testing other addresses with random register inputs. Shall be 0
        -- TC1 test address 0101
            addr    <= "0101";
            a_reg   <= "11101101";
            b_reg   <= "01011011";
            wait for 10ns;
            assert alu_out = "00000000" report "10.1.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "10.1.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
    
        -- TC2 test address 0110
            addr    <= "0110";
            a_reg   <= "11101101";
            b_reg   <= "01011011";
            wait for 10ns;
            assert alu_out = "00000000" report "10.2.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "10.2.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC3 test address 0111
            addr    <= "0111";
            a_reg   <= "11101101";
            b_reg   <= "01011011";
            wait for 10ns;
            assert alu_out = "00000000" report "10.3.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "10.3.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC4 test address 1000
            addr    <= "1000";
            a_reg   <= "11101101";
            b_reg   <= "01011011";
            wait for 10ns;
            assert alu_out = "00000000" report "10.4.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "10.4.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
            
        -- TC5 test address 1101
            addr    <= "1101";
            a_reg   <= "11101101";
            b_reg   <= "01011011";
            wait for 10ns;
            assert alu_out = "00000000" report "10.5.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "10.5.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
             
        -- TC6 test address 1110
            addr    <= "1110";
            a_reg   <= "11101101";
            b_reg   <= "01011011";
            wait for 10ns;
            assert alu_out = "00000000" report "10.6.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "10.6.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
    
        -- TC7 test address 1111
            addr    <= "1111";
            a_reg   <= "11101101";
            b_reg   <= "01011011";
            wait for 10ns;
            assert alu_out = "00000000" report "10.7.1 TC failed! Actual: " & to_string(alu_out) & "   Expected: 00000000" severity error;
            assert c_out_alu = '0' report "10.7.2 TC failed! Actual: " & std_logic'image(c_out_alu) & "   Expected: 0" severity error;
    
    report "===========  TESTING FINISHED  ===========";
    wait;
  end process;


end;