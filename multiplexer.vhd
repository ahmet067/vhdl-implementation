library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux4 is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end mux4;
architecture Behavioral of mux4 is
signal h : STD_LOGIC_VECTOR (3 downto 0);
begin
h(0) <= i(0) and not s(1) and not s(0);
h(1) <= i(1) and not s(1) and s(0);
h(2) <= i(2) and s(1) and not s(0);
h(3) <= i(3) and s(1) and s(0);
Y <= h(0) or h(1) or h(2) or h(3);
end Behavioral;

