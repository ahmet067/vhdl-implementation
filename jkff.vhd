library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity jkff is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end jkff;
architecture Behavioral of jkff is
signal h : STD_LOGIC_VECTOR (3 downto 0);
begin
h(0) <= not(J and C and h(3));
h(1) <= not(K and C and h(2));
h(2) <= h(0) nand h(3);
h(3) <= h(1) nand h(2);
Q <= h(2);
Q1<= h(3);
end Behavioral;

