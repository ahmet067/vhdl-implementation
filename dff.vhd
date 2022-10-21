library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity dff is
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end dff;
architecture Behavioral of dff is
signal h : STD_LOGIC_VECTOR (3 downto 0);
begin
h(0) <= not(D and C);
h(1) <= not(not D and C);
h(2) <= not(h(0) and h(3));
h(3) <= not(h(1) and h(2));
Q <= h(2);
Q1<= h(3);
end Behavioral;

