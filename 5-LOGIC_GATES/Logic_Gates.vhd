library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Logic_Gates is
port(
	in1: in std_logic; -- SWITCH0
	in2: in std_logic; -- SWITCH1
	in3: in std_logic; -- SWITCH2
	in4: in std_logic; -- SWITCH3	
	leds: out std_logic_vector(9 downto 0) -- Simulate the logic gates results
);
end Logic_Gates;

architecture Behavioral of Logic_Gates is
begin

	leds(0) <= NOT in1; -- NOT Gate
	leds(1) <= in1 AND in2; -- 2-INPUT AND GATE
	leds(2) <= in1 NAND in2; -- 2-INPUT NAND GATE
	leds(3) <= in1 OR in2; -- 2-INPUT OR GATE
	leds(4) <= in1 NOR in2; -- 2-INPUT NOR GATE
	leds(5) <= in1 XOR in2; -- 2-INPUT XOR GATE
	leds(6) <= in1 XNOR in2; -- 2-INPUT XNOR GATE
	
	-- EXCEPT NOT GATE, ALL THE OTHER GATES CAN HAVE MULTIDIMENSIONAL INPUT. 
	-- SOME EXAMPLES:
	
	leds(7) <= in1 AND in2 AND in3; -- 3-INPUT AND GATE
	leds(8) <= in1 XOR in2 XOR in3 XOR in4; -- 4-INPUT XOR GATE
	
	-- WE CAN USE MORE COMPLEX LOGIC WITH GATES:
	
	leds(9) <= (NOT (in1 AND in2)) XOR (NOT in3 OR in4);


end Behavioral;