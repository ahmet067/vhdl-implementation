library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity JohnsonCounter is
 Port ( Clock : in STD_LOGIC;
 Reset : in STD_LOGIC;
 A : out STD_LOGIC_VECTOR (7 downto 0));
end JohnsonCounter;
architecture Behavioral of JohnsonCounter is
component tffwithreset is
 Port ( T : in STD_LOGIC;
 Reset : in STD_LOGIC;
 Clock : in STD_LOGIC;
 Q : out STD_LOGIC;
 Qn : out STD_LOGIC);
end component;
signal x : std_logic_vector (3 downto 0);
signal y : std_logic_vector (3 downto 0);
signal z : std_logic_vector (3 downto 0);
begin
z(0) <= x(0) xor x(1);
z(1) <= x(1) xor x(2);
z(2) <= x(2) xor x(3);
z(3) <= x(3) xor y(0);
A(0) <= y(3) and y(0);
A(1) <= x(3) and y(2);
A(2) <= x(2) and y(1);
A(3) <= x(1) and y(0);
A(4) <= x(3) and x(0);
A(5) <= y(3) and x(2);
A(6) <= y(2) and x(1);
A(7) <= y(1) and x(0);
T1 : tffwithreset port map(z(0), Reset, Clock, x(0), y(0));
T2 : tffwithreset port map(z(1), Reset, Clock, x(1), y(1));
T3 : tffwithreset port map(z(2), Reset, Clock, x(2), y(2));
T4 : tffwithreset port map(z(3), Reset, Clock, x(3), y(3));
end Behavioral;
