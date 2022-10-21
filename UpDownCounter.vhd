library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity UpDownCounter is
 Port ( U : in STD_LOGIC; --Up
 D : in STD_LOGIC; --Down
 Clock : in STD_LOGIC;
 Reset : in STD_LOGIC;
 A : out STD_LOGIC_VECTOR (3 downto 0));
end UpDownCounter;
architecture Behavioral of UpDownCounter is
component dffwithreset is
 Port ( D : in STD_LOGIC;
 Reset : in STD_LOGIC;
 Clock : in STD_LOGIC;
 Q : out STD_LOGIC;
 Qn : out STD_LOGIC);
end component;
signal x : STD_LOGIC_VECTOR (3 downto 0);
signal y : STD_LOGIC_VECTOR (3 downto 0);
signal z : STD_LOGIC_VECTOR (3 downto 0);
signal h : STD_LOGIC_VECTOR (10 downto 0);
begin
--Qn is never needed.
A <= y;
D1 : dffwithreset port map(x(0), Reset, Clock, y(0), z(0));
D2 : dffwithreset port map(x(1), Reset, Clock, y(1), z(1));
D3 : dffwithreset port map(x(2), Reset, Clock, y(2), z(2));
D4 : dffwithreset port map(x(3), Reset, Clock, y(3), z(3));
h(0) <= not u and d;
h(1) <= u or h(0);
x(0) <= h(1) xor y(0);
h(2) <= y(0) and u;
h(3) <= h(0) and z(0);
h(4) <= h(2) or h(3);
x(1) <= y(1) xor h(4);
h(5) <= h(2) and y(1);
h(6) <= h(3) and z(1);
h(7) <= h(5) or h(6);
x(2) <= h(7) xor y(2);
h(8) <= h(5) and y(2);
h(9) <= h(6) and z(2);
h(10) <= h(8) or h(9);
x(3) <= h(10) xor y(3);
end Behavioral;


