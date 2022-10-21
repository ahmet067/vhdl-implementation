library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity halfadder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C1 : out  STD_LOGIC;
           S1 : out  STD_LOGIC);
end halfadder;
architecture Behavioral of halfadder is
begin

S1 <= A xor B;
C1 <= A and B;

end Behavioral;

