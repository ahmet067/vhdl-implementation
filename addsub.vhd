
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity addsub is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (2 downto 0);
           m : in  STD_LOGIC;
           St: out  STD_LOGIC_VECTOR (3 downto 0));
end addsub;
architecture Behavioral of addsub is
component fulladder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end component;
signal c : STD_LOGIC_VECTOR (1 downto 0);
signal h : STD_LOGIC_VECTOR (2 downto 0);
begin
fa1 : fulladder port map(A(0),h(0),m,St(0),c(0));
fa2 : fulladder port map(A(1),h(1),c(0),St(1),c(1));
fa3 : fulladder port map(A(2),h(2),c(1),St(2),St(3));
h(0) <= B(0) xor m;
h(1) <= B(1) xor m;
h(2) <= B(2) xor m;
end Behavioral;

