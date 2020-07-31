library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Leds_On is
	port(
		leds: out std_logic_vector(9 downto 0)
	);
end Leds_On;

architecture Behavioral of Leds_On is
begin

	leds <= "1110010111";

end Behavioral;