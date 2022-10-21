library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tff is
    Port ( T : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end tff;
architecture Behavioral of tff is
signal h : STD_LOGIC_VECTOR (3 downto 0);
begin
h(0) <= not(h(3) and T and C);
h(1) <= not(h(2) and T and C);
h(2) <= h(0) nand h(3);
h(3) <= h(1) nand h(2);
Q <= h(2);
Q1<= h(3);
end Behavioral;

