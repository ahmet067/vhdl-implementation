library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity comparator is
    Port ( X : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : in  STD_LOGIC_VECTOR (1 downto 0);
           Z : out  STD_LOGIC_VECTOR (2 downto 0));
end comparator;
architecture Behavioral of comparator is
component decoder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           E : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
signal h : STD_LOGIC_VECTOR (7 downto 0);
signal h2: STD_LOGIC_VECTOR (7 downto 0);
signal k : STD_LOGIC;
begin
decoder1 : decoder port map ('0',X(1),Y(1),'1',h);
decoder2 : decoder port map ('0',X(0),Y(0),k,h2);--A is always zero to convert 3x8 decoder to 2x4.
k <= h(0) or h(3);
Z(0) <= h(2) or h2(2);--GREATER
Z(1) <= h(1) or h2(1);--LESS
Z(2) <= h2(3) or h2(0);--EQUAL
end Behavioral;

