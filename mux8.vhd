library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux8 is
    Port ( i : in  STD_LOGIC_VECTOR (7 downto 0);
           s : in  STD_LOGIC_VECTOR (2 downto 0);
           y : out  STD_LOGIC);
end mux8;
architecture Behavioral of mux8 is
signal h : STD_LOGIC_VECTOR (7 downto 0);
begin
h(0) <= i(0) and not s(2) and not s(1) and not s(0);
h(1) <= i(1) and not s(2) and not s(1) and  s(0);
h(2) <= i(2) and not s(2) and  s(1) and not s(0);
h(3) <= i(3) and not s(2) and  s(1) and  s(0);
h(4) <= i(4) and  s(2) and not s(1) and not s(0);
h(5) <= i(5) and  s(2) and not s(1) and  s(0);
h(6) <= i(6) and  s(2) and  s(1) and not s(0);
h(7) <= i(7) and  s(2) and  s(1) and  s(0);
y <= h(0) or h(1) or h(2) or h(3) or h(4) or h(5) or h(6) or h(7);
end Behavioral;

