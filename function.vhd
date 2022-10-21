library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity functionn is
    Port ( X : in  STD_LOGIC;
	        Y : in  STD_LOGIC;
	        Z : in  STD_LOGIC;
           F : out  STD_LOGIC);
end functionn;
architecture Behavioral of functionn is
component multiplexer is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end component;
signal k : STD_LOGIC_VECTOR (3 downto 0);
signal q : STD_LOGIC_VECTOR (1 downto 0);
begin
k(0) <= '1';
k(1) <= Z;
k(2) <= not Z;
k(3) <= '1';
q(0) <= Y;
q(1) <= X;
functionn : multiplexer port map (k,q,F);
end Behavioral;

