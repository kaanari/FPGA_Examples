library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_std.all;

entity Counter_V1 is
  port (Clock, Reset, Enable, Load, UpDn, Count: in Std_logic;
        Data: in Std_logic_vector(7 downto 0);
        Q:   out Std_logic_vector(7 downto 0));
end;

architecture RTL of Counter_V1 is
  signal Cnt: Unsigned(7 downto 0);
  signal flag: Std_logic;
begin
  process (Clock, Reset)
  begin
    if Reset = '0' then
	   
      Cnt <= "00000000";
    elsif Rising_edge(Clock) then
      if Enable = '0' then
		  flag <= Count;
		
        if Load = '0' then
          Cnt <= Unsigned(Data);
		  else	  
		  
		    if Count = not flag and Count = '0' then
			  
				  if UpDn = '0' then
					 Cnt <= Cnt + 1;
				  else
					 Cnt <= Cnt - 1;
					 
				  end if;
				  
          end if; 
      end if;
    end if;
	end if;
  end process;
  
  Q <= Std_logic_vector(Cnt);

end;