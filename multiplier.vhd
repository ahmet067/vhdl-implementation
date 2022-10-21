library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity multiplier is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           M : out  STD_LOGIC_VECTOR (4 downto 0));
end multiplier;
architecture Behavioral of multiplier is
component fulladder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end component;
signal h : STD_LOGIC_VECTOR (4 downto 0);
signal c : STD_LOGIC_VECTOR (2 downto 0);
begin
	h(0)<= A(1) and B(0);
	h(1)<= A(2) and B(0);
	h(2)<= A(0) and B(1);
	h(3)<= A(1) and B(1);
	h(4)<= A(2) and B(1);
	M(0)<= A(0) and B(0);
	fa1 : fulladder port map(h(0),h(2),'0',M(1),c(0));
	fa2 : fulladder port map(h(1),h(3),c(0),M(2),c(1));
	fa3 : fulladder port map('0',h(4),c(1),M(3),c(2));
	M(4)<= c(2);
end Behavioral;

