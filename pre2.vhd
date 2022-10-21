library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity pre2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC;
           S : out  STD_LOGIC);
end pre2;
architecture Behavioral of pre2 is
begin

S <= A xor B;
C <= A and B;

end Behavioral;

