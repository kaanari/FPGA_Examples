library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity Counter_V2 is
 port(
	 count: in std_logic; -- KEY1
	 enable: in std_logic; -- SWITCH9
	 reset: in std_logic; -- KEY0
	 load: in std_logic; -- KEY2
	 upDown: in std_logic; -- SWITCH8
	 dataIn: in std_logic_vector(7 downto 0); -- SWITCH(0-7)
	 outputNum: out std_logic_vector(7 downto 0) -- LED(0-7)
 );
 end Counter_v2;
 
 
 architecture V2 of Counter_V2 is
	signal number: unsigned(7 downto 0);
 begin
 
	process(reset,load,count)
	begin
	
	if reset = '0' then
	
		number <= "00000000";
	
	elsif load = '0' then
	
		number <= unsigned(dataIn);
	
	else
		if rising_edge(count) and enable = '1' then
			if upDown = '0' then
				number <= number + 1;
			else
				number <= number - 1;		
			end if;
		
		end if;
	
	end if;

	
	
	
	
	end process;
 
	outputNum <= std_logic_vector(number);
 
	
	

 
 end V2;
