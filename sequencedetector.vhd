library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sequencedetector is
    Port ( i : in  STD_LOGIC;
			  R : in  STD_LOGIC;
			  Clock : in STD_LOGIC;
           T : out  STD_LOGIC);
end sequencedetector;
architecture Behavioral of sequencedetector is
component jkwithreset is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end component;
signal h : STD_LOGIC_VECTOR (5 downto 0);
signal s : STD_LOGIC_VECTOR (5 downto 0);
begin
h(0)<=s(1) and s(2) and s(4) and i;
h(1)<=s(3) and s(5);
h(2)<=(s(1) and s(4) and not i) or (s(0) and s(3) and s(5) and not i);
h(3)<=(s(1) and s(5) and not i) or (s(1) and  s(4) and  i);
h(4)<=(s(1) and i) or (s(3) and s(5) and i);
h(5)<=(s(1) and s(2)) or (s(1) and s(4) and not i);
jkwithreset1 : jkwithreset port map (h(0),h(1),Clock,R,s(0),s(1));
jkwithreset2 : jkwithreset port map (h(2),h(3),Clock,R,s(2),s(3));
jkwithreset3 : jkwithreset port map (h(4),h(5),Clock,R,s(4),s(5));
T<=s(0) and not s(1) and not s(2);
end Behavioral;

