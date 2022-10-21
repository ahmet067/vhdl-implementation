library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fulladderwithdecoder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end fulladderwithdecoder;
architecture Behavioral of fulladderwithdecoder is
component decoder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           E : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
signal h : STD_LOGIC_VECTOR (7 downto 0);
begin
fulladder : decoder port map (X,Y,Z,'1',h);
S <= h(1) or h(2) or h(4) or h(7);
C <= h(3) or h(5) or h(6) or h(7);
--h(0) is never used, we didn't need it to desing fulladdder.
end Behavioral;

