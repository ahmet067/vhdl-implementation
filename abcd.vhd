
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           A : inout  STD_LOGIC);
end D_FF;
architecture Behavioral of D_FF is
signal h : STD_LOGIC;
begin
process (CLK,RESET) 
begin

    if RESET='1' then
	 
	 h<= '0' ;
	 
	 elsif CLK'event and CLK='1' then 
	 
	 h <= D ;
	 
	 else 
	 
	 h <= h ;
	 
	  
		 
		 end if;
end process ;	
A<= h;	 
end Behavioral;