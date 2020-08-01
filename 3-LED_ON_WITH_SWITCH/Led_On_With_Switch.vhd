library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Led_On_With_Switch is
	port(
		switch: in std_logic;
		led: out std_logic
	);
end Led_On_With_Switch;

architecture Behavioral of Led_On_With_Switch is
begin

	led <= switch;

end Behavioral;