library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity dtojk is--it means dflipflop to jkflipflop
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end dtojk;
architecture Behavioral of dtojk is
component dffwithreset is
Port ( D : in STD_LOGIC;
Reset : in STD_LOGIC; 
Clock : in STD_LOGIC;
Q : out STD_LOGIC;
Qn : out STD_LOGIC);
end component;
signal h : STD_LOGIC ;--h is connected to a D
signal s : STD_LOGIC_VECTOR (1 downto 0);--s signals are connected to Q and Qn states.
begin
h <= (s(1) and J) or (not K and s(0));
dflipflop : dffwithreset port map (h,Reset,Clock,s(0),s(1));
Q <= s(0);
Q1 <= s(1);
end Behavioral;

