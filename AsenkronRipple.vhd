library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity AsenkronRipple is
 Port ( Count : in STD_LOGIC;
 Reset : in STD_LOGIC;
 A : out STD_LOGIC_VECTOR (3 downto 0));
end AsenkronRipple;
architecture Behavioral of AsenkronRipple is
component jkwithreset is 
 Port ( J : in STD_LOGIC;
 K : in STD_LOGIC;
 Clock : in STD_LOGIC;
 Reset : in STD_LOGIC;
 Q : out STD_LOGIC;
 Qn : out STD_LOGIC);
end component;
signal logic1 : STD_LOGIC ;
signal c : std_logic_vector (3 downto 0);
signal x : std_logic_vector (3 downto 0);
signal y : std_logic_vector (3 downto 0);
begin
logic1 <= '1';
c(0) <= not Count;
c(1) <= not x(0);
c(2) <= not x(1);
c(3) <= not x(2);
JK1 : jkwithreset port map(logic1, logic1,c(0), Reset, x(0), y(0));
JK2 : jkwithreset port map(logic1, logic1,c(1), Reset, x(1), y(1));
JK3 : jkwithreset port map(logic1, logic1,c(2), Reset, x(2), y(2));
JK4 : jkwithreset port map(logic1, logic1,c(3), Reset, x(3), y(3));
A <= x;
end Behavioral;

