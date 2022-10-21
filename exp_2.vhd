
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity exp_2 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : out  STD_LOGIC_VECTOR (3 downto 0));
end exp_2;
architecture Behavioral of exp_2 is
component fulladder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end component;
signal h : STD_LOGIC_VECTOR (1 downto 0);
begin
B(0) <= A(0);
h(0) <= A(0) or A(1);
h(1) <= A(2) or A(1) or A(0);
fa1 : fulladder port map(A(1),A(0),'0',B(1));
fa2 : fulladder port map(h(0),A(2),'0',B(2));
fa3 : fulladder port map(h(1),A(3),'0',B(3));

end Behavioral;

