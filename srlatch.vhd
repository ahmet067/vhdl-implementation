library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity srlatch is
    Port ( S : in  STD_LOGIC;
           C : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end srlatch;
architecture Behavioral of srlatch is
signal h : STD_LOGIC_VECTOR (3 downto 0);
begin
h(0) <= not(S and C);
h(1) <= not(R and C);
h(2) <= not(h(0)and h(3));
h(3) <= not(h(1)and h(2));
Q <= h(2);
Q1 <= h(3);  
end Behavioral;

