library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity tb_basic_alu is
end tb_basic_alu;


architecture TB of tb_basic_alu is
	signal opCode: std_logic_vector(2 downto 0) := (others => '0');
	signal operandA: std_logic_vector(7 downto 0) := "00000000";
	signal operandB: std_logic_vector(7 downto 0) := "00000000";
	signal dataOut: std_logic_vector(7 downto 0) := "00000000";
	signal dataOutExtended: std_logic_vector(7 downto 0) := "00000000";
	
	component Basic_ALU is
		port(
		opCode: in std_logic_vector(2 downto 0);
		operandA: in std_logic_vector(7 downto 0);
		operandB: in std_logic_vector(7 downto 0);
		dataOut: out std_logic_vector(7 downto 0);
		dataOutExtended: out std_logic_vector(7 downto 0)
		);
	end component Basic_ALU;
	
begin

	UUT: Basic_ALU port map(opCode,operandA,operandB,dataOut,dataOutExtended);
	
	
	process
	variable A: integer range 0 to 2**8-1 := 2;
	variable B: integer range 0 to 2**8-1 := 6;
	begin
	
		for I in 0 to 10 loop
		
			operandA <= std_logic_vector(to_unsigned(A,operandA'length));
			operandB <= std_logic_vector(to_unsigned(B,operandB'length));
				
			opCode <= "000";
			wait for 20 ns;
			
			opCode <= "001";
			wait for 20 ns;
			
			opCode <= "010";
			wait for 20 ns;
			
			opCode <= "011";
			wait for 20 ns;
			
			opCode <= "100";
			wait for 20 ns;
			
			opCode <= "101";
			wait for 20 ns;
			
			opCode <= "110";
			wait for 20 ns;
			
			opCode <= "111";
			wait for 20 ns;
			
			A := A + 10;
			B := B + 3;

		
		end loop;
		
		wait;
		
	end process;
	




end TB;