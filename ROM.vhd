library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ROM is
 Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
 B : out STD_LOGIC_VECTOR (5 downto 0));
end ROM;
architecture Behavioral of ROM is
component decoder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           E : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
signal x : STD_LOGIC_VECTOR (7 downto 0);
begin
deco1 : decoder port map(A(2),A(1),A(0),'1',x);
B(5) <= x(6) or x(7);
B(4) <= x(4) or x(5) or x(7);
B(3) <= x(3) or x(5);
B(2) <= x(2) or x(6);
B(1) <= '0';
B(0) <= A(0);
end Behavioral;