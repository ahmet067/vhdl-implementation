library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity bcdtosgmnt is
    Port ( x : in  STD_LOGIC;y : in  STD_LOGIC;z : in  STD_LOGIC ;t : in  STD_LOGIC;
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
           e: out  STD_LOGIC;
           f: out  STD_LOGIC;
           g : out  STD_LOGIC);
end bcdtosgmnt;
architecture Behavioral of bcdtosgmnt is
signal s: STD_LOGIC_VECTOR(9 downto 0);
begin
s(0)<= not x and not y and not z and not t;
s(1)<= not x and not y and not z and t;
s(2)<= not x and not y and z and not t;
s(3)<= not x and not y and z and t;
s(4)<= not x and  y and not z and not t;
s(5)<= not x and  y and not z and  t;
s(6)<= not x and  y and  z and not t;
s(7)<= not x and  y and  z and  t;
s(8)<=  x and not y and not z and not  t;
s(9)<=  x and not y and not z and t;
a<= (s(0)or s(2)or s(3)or s(5)or s(6) or s(7)or s(8)or s(9));
b<= (s(0)or s(1)or s(2)or s(3)or s(4)or s(7)or s(8)or s(9));
c<= (s(0)or s(1)or s(3)or s(4)or s(5)or s(6)or s(7)or s(8)or s(9));
d<= (s(0)or s(2)or s(3)or s(5)or s(6)or s(8)or s(9));
e<= (s(0)or s(2)or s(6)or s(8));
f<= (s(0)or s(4)or s(5)or s(6)or s(8)or s(9));
g<= (s(2)or s(3)or s(4)or s(5)or s(6)or s(8)or s(9));
end Behavioral;

