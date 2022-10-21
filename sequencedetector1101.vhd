library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sequencedetector1101 is
    Port ( A : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           B : out  STD_LOGIC);
end sequencedetector1101;
architecture Behavioral of sequencedetector1101 is
component tffwithreset is
    Port ( T : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end component;
signal h : STD_LOGIC_VECTOR (1 downto 0);
signal s : STD_LOGIC_VECTOR (3 downto 0);
begin
h(0) <= (A and s(2)) or (s(0) and s(2));
h(1) <= (A and s(1)) or (s(2) and s(1)) or (not A and s(0));
TFlipFlop1 : tffwithreset port map(h(0),Reset,Clock,s(0),s(1));
TFlipFlop2 : tffwithreset port map(h(1),Reset,Clock,s(2),s(3));
B <= s(0) and s(2) and A;
end Behavioral;


