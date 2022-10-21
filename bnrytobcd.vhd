library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity bnrytobcd is
    Port ( X : in  STD_LOGIC_VECTOR (5 downto 0);
			  Y : out  STD_LOGIC_VECTOR (8 downto 0));
end bnrytobcd;
architecture Behavioral of bnrytobcd is
component add_3 is
    Port ( A  : in   STD_LOGIC_VECTOR (3 downto 0);
           B  : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
signal m : STD_LOGIC_VECTOR (11 downto 0);
signal x1,x2,x3,x4,x5,x6,x7,x8,x9,x10 : STD_LOGIC_VECTOR (3 downto 0);
begin
x1(0)<=X(4);x1(1)<=X(5);x1(2)<='0';x1(3)<='0';
x2(0)<=m(0);x2(1)<=m(1);x2(2)<=m(2);x2(3)<=m(3);
x3(0)<=X(3);x3(1)<=m(0);x3(2)<=m(1);x3(3)<=m(2);
x4(0)<=m(4);x4(1)<=m(5);x4(2)<=m(6);x4(3)<=m(7);
x5(0)<=X(2);x5(1)<=m(4);x5(2)<=m(5);x5(3)<=m(6);
x6(0)<=m(8);x6(1)<=m(9);x6(2)<=m(10);x6(3)<=m(11);
x7(0)<=X(1);x7(1)<=m(8);x7(2)<=m(9);x7(3)<=m(10);
Y(1)<=x8(0);Y(2)<=x8(1);Y(3)<=x8(2);Y(4)<=x8(3);
x9(0)<=m(11);x9(1)<=m(7);x9(2)<=m(3);x9(3)<='0';
Y(5)<=x10(0);Y(6)<=x10(1);Y(7)<=x10(2);Y(8)<=x10(3);
h1:add_3 port map(x1,x2);
h2:add_3 port map(x3,x4);
h3:add_3 port map(x5,x6);
h4:add_3 port map(x7,x8);
h5:add_3 port map(x9,x10);
Y(0)<=X(0);
end Behavioral;

