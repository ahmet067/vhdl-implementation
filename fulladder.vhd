library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fulladder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end fulladder;
architecture Behavioral of fulladder is
component halfadder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S1 : out  STD_LOGIC;
           C1 : out  STD_LOGIC);
end component;
signal h1:STD_LOGIC;
signal h2:STD_LOGIC;
signal h3:STD_LOGIC;
begin
ha1 : halfadder port map(X,Y,h1,h2);
ha2 : halfadder port map(h1,Z,S,h3);
C <= h2 or h3;
end Behavioral;

