library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity decoder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           E : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (7 downto 0));
end decoder;
architecture Behavioral of decoder is
begin
D(0) <= not A and not B and not C and E;
D(1) <= not A and not B and C and E;
D(2) <= not A and B and not C and E;
D(3) <= not A and B and C and E;
D(4) <=  A and not B and not C and E;
D(5) <=  A and not B and C and E;
D(6) <=  A and B and not C and E;
D(7) <=  A and B and C and E;
end Behavioral;

