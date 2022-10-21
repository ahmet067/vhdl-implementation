library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity petdff is
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end petdff;
architecture Behavioral of petdff is
component dlatch is
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end component;
signal h : STD_LOGIC;
begin
ddlatch1 : dlatch port map(D,not C,h);
ddlatch2 : dlatch port map(h,C,Q,Q1);
end Behavioral;

