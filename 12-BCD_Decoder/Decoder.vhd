library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity Decoder is
port(

	A: in std_logic_vector(3 downto 0);
	Enable: in std_logic;
	O: out std_logic_vector(15 downto 0)

);
end Decoder;

architecture Behavioral of Decoder is
begin

	process(A)
	begin
		
		if Enable = '0' then
		
			case A is
				
				when "0000" => O <= "0000000000000001";
				when "0001" => O <= "0000000000000010";
				when "0010" => O <= "0000000000000100";
				when "0011" => O <= "0000000000001000";
				when "0100" => O <= "0000000000010000";
				when "0101" => O <= "0000000000100000";
				when "0110" => O <= "0000000001000000";
				when "0111" => O <= "0000000010000000";
				when "1000" => O <= "0000000100000000";
				when "1001" => O <= "0000001000000000";
				when "1010" => O <= "0000010000000000";
				when "1011" => O <= "0000100000000000";
				when "1100" => O <= "0001000000000000";
				when "1101" => O <= "0010000000000000";
				when "1110" => O <= "0100000000000000";
				when "1111" => O <= "1000000000000000";
				when others => O <= "XXXXXXXXXXXXXXXX";
				
			end case;
			
		end if;
	
	
	end process;





end Behavioral;