library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity Basic_ALU is
port(
	opCode: in std_logic_vector(2 downto 0);
	operandA: in std_logic_vector(7 downto 0);
	operandB: in std_logic_vector(7 downto 0);
	dataOut: out std_logic_vector(7 downto 0);
	dataOutExtended: out std_logic_vector(7 downto 0)
);
end Basic_ALU;


architecture Behavioral of Basic_ALU is
signal multiplication: std_logic_vector(15 downto 0);

begin

	process(opCode,operandA,operandB,multiplication)
	begin
	
		dataOutExtended <= "00000000";
		multiplication <= "0000000000000000";
		
		case opCode is
			
			when "000" => 
				dataOut <= std_logic_vector(unsigned(operandA) + unsigned(operandB));

			when "001" => 
				dataOut <= std_logic_vector(unsigned(operandA) - unsigned(operandB));

			when "010" => 
				dataOut <= std_logic_vector(unsigned(operandA) / unsigned(operandB));				
				
			when "011" => 
				multiplication <= std_logic_vector(unsigned(operandA) * unsigned(operandB));
				dataOut <= multiplication(7 downto 0);
				dataOutExtended <= multiplication(15 downto 8);

			when "100" => 
				dataOut <= std_logic_vector(shift_left(unsigned(operandA),to_integer(unsigned(operandB))));

			when "101" => 
				dataOut <= std_logic_vector(shift_right(unsigned(operandA),to_integer(unsigned(operandB))));

			when "110" => 
				dataOut <= operandA and operandB;

			when "111" => 
				dataOut <= operandA or operandB;

			when others => 
				dataOut <= "00000000";
				
		end case;
		
	end process;






end Behavioral;