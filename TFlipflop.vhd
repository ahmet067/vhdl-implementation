library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tffwithreset is
    Port ( T : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end tffwithreset;
architecture Behavioral of tffwithreset is
signal tempQ : std_logic;
begin
process(Reset,Clock)
begin 
		if Clock'event and Clock = '1' then
					if Reset = '1' then
						tempQ <= '0';
					elsif T = '1' then
						tempQ <= not tempQ;
					end if;
		end if;
end process;
Q <= tempQ;
Qn <= not tempQ;
end Behavioral;

