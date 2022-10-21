library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity BCDCounter is
    Port ( Clock : in  STD_LOGIC;
	 B : in  STD_LOGIC;
	        Q : out STD_LOGIC_VECTOR (3 downto 0));
end BCDCounter;
architecture Behavioral of BCDCounter is
component tffwithreset is
    Port ( T : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end component;
signal h : STD_LOGIC_VECTOR (11 downto 0);--all signals are together.
signal s : STD_LOGIC ;--for Reset
begin
h(0)<=h(1) xor h(2);
h(3)<=h(4) xor h(5);
h(6)<=h(7) xor h(8);
h(9)<=h(10) xor h(11);
s <= (h(4) and h(10))or B;
TFF1 : tffwithreset port map(h(0),s,Clock,h(1),h(2));
TFF2 : tffwithreset port map(h(3),s,h(2),h(4),h(5));
TFF3 : tffwithreset port map(h(6),s,h(5),h(7),h(8));
TFF4 : tffwithreset port map(h(9),s,h(8),h(10),h(11));
Q(0)<=h(1);
Q(1)<=h(4);
Q(2)<=h(7);
Q(3)<=h(10);
end Behavioral;

