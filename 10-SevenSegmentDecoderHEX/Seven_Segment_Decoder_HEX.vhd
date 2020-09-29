library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Seven_Segment_Decoder_HEX is
port(

	binaryNumber: in std_logic_vector(3 downto 0);
	output: out std_logic_vector(6 downto 0)
	
);
end Seven_Segment_Decoder_HEX;


architecture Behavioral of Seven_Segment_Decoder_HEX is
signal binaryNumber_int: integer range 0 to 15;
begin
   
	binaryNumber_int <= to_integer(unsigned(binaryNumber));
	
	
	process(binaryNumber_int)
	begin
	
		case binaryNumber_int is
			--                  "0123456"
			when 0 => output <= "1000000"; -- DIGIT ZERO
			when 1 => output <= "1111001"; -- DIGIT ONE
			when 2 => output <= "0100100"; -- DIGIT TWO
			when 3 => output <= "0110000"; -- DIGIT THREE
			when 4 => output <= "0011001"; -- DIGIT FOUR
			when 5 => output <= "0010010"; -- DIGIT FIVE
			when 6 => output <= "0000010"; -- DIGIT SIX
			when 7 => output <= "1111000"; -- DIGIT SEVEN
			when 8 => output <= "0000000"; -- DIGIT EIGHT
			when 9 => output <= "0010000"; -- DIGIT NINE
			when 10 => output <= "0001000"; -- DIGIT A
			when 11 => output <= "0000011"; -- DIGIT B
			when 12 => output <= "1000110"; -- DIGIT C
			when 13 => output <= "0100001"; -- DIGIT D
			when 14 => output <= "0000110"; -- DIGIT E
			when 15 => output <= "0001110"; -- DIGIT F
			when others => output <= "1111111"; -- OTHER CASES;
			
		end case;
	end process;

end Behavioral;