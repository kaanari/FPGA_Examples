library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Leds_On_With_Switch is
	port(
		switches: in std_logic_vector(9 downto 0);
		leds: out std_logic_vector(9 downto 0)
	);
end Leds_On_With_Switch;

architecture Behavioral of Leds_On_With_Switch is
begin

	leds <= switches;

end Behavioral;