library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BCD_Decoder is
port(
	binaryNumber: in std_logic_vector(9 downto 0);
	Reset: in std_logic;
	CLK: in std_logic;
	HEX0: out std_logic_vector(6 downto 0);
	HEX1: out std_logic_vector(6 downto 0);
	HEX2: out std_logic_vector(6 downto 0);
	HEX3: out std_logic_vector(6 downto 0);
	HEX4: out std_logic_vector(6 downto 0)
);
end BCD_Decoder;

architecture Behavioral of BCD_Decoder is

component Decoder is
port(

	A: in std_logic_vector(3 downto 0);
	Enable: in std_logic;
	O: out std_logic_vector(15 downto 0)

);
end component Decoder;

component Seven_Segment_Decoder_withENandRESET is
port(

	Enable: in std_logic;
	Reset: in std_logic;
	binaryNumber: in std_logic_vector(3 downto 0);
	output: out std_logic_vector(6 downto 0)
	
);
end component Seven_Segment_Decoder_withENandRESET;

signal integerNumber: integer range 0 to 2**16-1;
signal bcd0: std_logic_vector(3 downto 0);
signal bcd1: std_logic_vector(3 downto 0);
signal bcd2: std_logic_vector(3 downto 0);
signal bcd3: std_logic_vector(3 downto 0);
signal bcd4: std_logic_vector(3 downto 0);

signal dataBus: std_logic_vector(3 downto 0);

signal remainder1: integer range 0 to 2**16-1;
signal remainder2: integer range 0 to 2**16-1;
signal remainder3: integer range 0 to 2**16-1;

signal SEL: std_logic_vector(15 downto 0);
signal clockCount: integer range 0 to 10 := 0;

begin

	integerNumber <= to_integer(unsigned(binaryNumber));
	
	process(CLK,Reset,integerNumber)
	begin
		if Reset = '0' then
			bcd0 <= "0000";
			bcd1 <= "0000";
			bcd2 <= "0000";
			bcd3 <= "0000";
			bcd4 <= "0000";
		
	
		elsif rising_edge(CLK) then
		
			case integerNumber is
			
				when 0 to 9 => 
					bcd0 <= std_logic_vector(to_unsigned(integerNumber,bcd0'length));
					bcd1 <= "0000";
					bcd2 <= "0000";
					bcd3 <= "0000";
					bcd4 <= "0000";
					
				when 10 to 99 => 
					bcd0 <= std_logic_vector(to_unsigned(integerNumber mod 10,bcd0'length));
					
					bcd1 <= std_logic_vector(to_unsigned(integerNumber / 10,bcd1'length));
					
					bcd2 <= "0000";
					bcd3 <= "0000";
					bcd4 <= "0000";
				
				when 100 to 999 =>
					bcd0 <= std_logic_vector(to_unsigned(integerNumber mod 10,bcd0'length));

					remainder1 <= integerNumber mod 100;
					bcd1 <= std_logic_vector(to_unsigned(remainder1 / 10,bcd1'length));
					
					bcd2 <= std_logic_vector(to_unsigned(integerNumber / 100,bcd2'length));
					
					bcd3 <= "0000";
					bcd4 <= "0000";
			
				when 1000 to 9999 =>
					bcd0 <= std_logic_vector(to_unsigned(integerNumber mod 10,bcd0'length));
					
					remainder1 <= integerNumber mod 100;
					bcd1 <= std_logic_vector(to_unsigned(remainder1 / 10,bcd1'length));
					
					remainder2 <= integerNumber mod 1000;
					bcd2 <= std_logic_vector(to_unsigned(remainder2 / 100,bcd2'length));
					
					bcd3 <= std_logic_vector(to_unsigned(integerNumber / 1000,bcd3'length));
					
					bcd4 <= "0000";
					
				when 10000 to 2**16-1 =>
					bcd0 <= std_logic_vector(to_unsigned(integerNumber mod 10,bcd0'length));
					
					remainder1 <= integerNumber mod 100;
					bcd1 <= std_logic_vector(to_unsigned(remainder1 / 10,bcd1'length));
					
					remainder2 <= integerNumber mod 1000;
					bcd2 <= std_logic_vector(to_unsigned(remainder2 / 100,bcd2'length));
					
					remainder3 <= integerNumber mod 10000;
					bcd3 <= std_logic_vector(to_unsigned(remainder3 / 1000,bcd3'length));
					
					bcd4 <= std_logic_vector(to_unsigned(integerNumber / 10000,bcd4'length));

				when others =>
					bcd0 <= "1111";
					bcd1 <= "1111";
					bcd2 <= "1111";
					bcd3 <= "1111";
					bcd4 <= "1111";
					
			end case;
			
		end if;
	
	end process;
	
	process(CLK,clockCount)
	begin
	
		if rising_edge(CLK) then
			clockCount <= clockCount + 1;

		end if;
		
		if clockCount = 10 then
			clockCount <= 0;
			dataBus <= bcd0;

		elsif clockCount = 8 then
			dataBus <= bcd4;
		
		elsif clockCount = 6 then
			dataBus <= bcd3;
		
		elsif clockCount = 4 then
			dataBus <= bcd2;
		
		elsif clockCount = 2 then
			dataBus <= bcd1;
			
		elsif clockCount = 0 then
			dataBus <= bcd0;
			
		
		end if;
	
	end process;
	
		
	--DEC0: Decoder port map(std_logic_vector(to_unsigned(clockCount,4)),'0',SEL);
		
	BDEC0: Seven_Segment_Decoder_withENandRESET port map(not SEL(1),Reset,dataBus,HEX0);
	BDEC1: Seven_Segment_Decoder_withENandRESET port map(not SEL(3),Reset,dataBus,HEX1);
	BDEC2: Seven_Segment_Decoder_withENandRESET port map(not SEL(5),Reset,dataBus,HEX2);
	BDEC3: Seven_Segment_Decoder_withENandRESET port map(not SEL(7),Reset,dataBus,HEX3);
	BDEC4: Seven_Segment_Decoder_withENandRESET port map(not SEL(9),Reset,dataBus,HEX4);


end Behavioral;

architecture RTL of BCD_Decoder is

component Decoder is
port(

	A: in std_logic_vector(3 downto 0);
	Enable: in std_logic;
	O: out std_logic_vector(15 downto 0)

);
end component Decoder;

component Seven_Segment_Decoder_withENandRESET is
port(

	Enable: in std_logic;
	Reset: in std_logic;
	binaryNumber: in std_logic_vector(3 downto 0);
	output: out std_logic_vector(6 downto 0)
	
);
end component Seven_Segment_Decoder_withENandRESET;

signal integerNumber: integer range 0 to 2**16-1;
signal bcd0: std_logic_vector(3 downto 0);
signal bcd1: std_logic_vector(3 downto 0);
signal bcd2: std_logic_vector(3 downto 0);
signal bcd3: std_logic_vector(3 downto 0);
signal bcd4: std_logic_vector(3 downto 0);

signal dataBus: std_logic_vector(3 downto 0);

signal remainder1: integer range 0 to 2**16-1;
signal remainder2: integer range 0 to 2**16-1;
signal remainder3: integer range 0 to 2**16-1;

signal SEL: std_logic_vector(15 downto 0);
signal clockCount: integer range 0 to 10 := 0;

begin

	integerNumber <= to_integer(unsigned(binaryNumber));
	
	process(CLK,Reset,integerNumber)
	begin
		if Reset = '0' then
			bcd0 <= "0000";
			bcd1 <= "0000";
			bcd2 <= "0000";
			bcd3 <= "0000";
			bcd4 <= "0000";
		
	
		elsif rising_edge(CLK) then
		
			case integerNumber is
			
				when 0 to 9 => 
					bcd0 <= std_logic_vector(to_unsigned(integerNumber,bcd0'length));
					bcd1 <= "0000";
					bcd2 <= "0000";
					bcd3 <= "0000";
					bcd4 <= "0000";
					
				when 10 to 99 => 
					bcd0 <= std_logic_vector(to_unsigned(integerNumber mod 10,bcd0'length));
					
					bcd1 <= std_logic_vector(to_unsigned(integerNumber / 10,bcd1'length));
					
					bcd2 <= "0000";
					bcd3 <= "0000";
					bcd4 <= "0000";
				
				when 100 to 999 =>
					bcd0 <= std_logic_vector(to_unsigned(integerNumber mod 10,bcd0'length));

					remainder1 <= integerNumber mod 100;
					bcd1 <= std_logic_vector(to_unsigned(remainder1 / 10,bcd1'length));
					
					bcd2 <= std_logic_vector(to_unsigned(integerNumber / 100,bcd2'length));
					
					bcd3 <= "0000";
					bcd4 <= "0000";
			
				when 1000 to 9999 =>
					bcd0 <= std_logic_vector(to_unsigned(integerNumber mod 10,bcd0'length));
					
					remainder1 <= integerNumber mod 100;
					bcd1 <= std_logic_vector(to_unsigned(remainder1 / 10,bcd1'length));
					
					remainder2 <= integerNumber mod 1000;
					bcd2 <= std_logic_vector(to_unsigned(remainder2 / 100,bcd2'length));
					
					bcd3 <= std_logic_vector(to_unsigned(integerNumber / 1000,bcd3'length));
					
					bcd4 <= "0000";
					
				when 10000 to 2**16-1 =>
					bcd0 <= std_logic_vector(to_unsigned(integerNumber mod 10,bcd0'length));
					
					remainder1 <= integerNumber mod 100;
					bcd1 <= std_logic_vector(to_unsigned(remainder1 / 10,bcd1'length));
					
					remainder2 <= integerNumber mod 1000;
					bcd2 <= std_logic_vector(to_unsigned(remainder2 / 100,bcd2'length));
					
					remainder3 <= integerNumber mod 10000;
					bcd3 <= std_logic_vector(to_unsigned(remainder3 / 1000,bcd3'length));
					
					bcd4 <= std_logic_vector(to_unsigned(integerNumber / 10000,bcd4'length));

				when others =>
					bcd0 <= "1111";
					bcd1 <= "1111";
					bcd2 <= "1111";
					bcd3 <= "1111";
					bcd4 <= "1111";
					
			end case;
			
		end if;
	
	end process;
	
	
	
		
		
	BDEC0: Seven_Segment_Decoder_withENandRESET port map('0',Reset,bcd0,HEX0);
	BDEC1: Seven_Segment_Decoder_withENandRESET port map('0',Reset,bcd1,HEX1);
	BDEC2: Seven_Segment_Decoder_withENandRESET port map('0',Reset,bcd2,HEX2);
	BDEC3: Seven_Segment_Decoder_withENandRESET port map('0',Reset,bcd3,HEX3);
	BDEC4: Seven_Segment_Decoder_withENandRESET port map('0',Reset,bcd4,HEX4);


end RTL;