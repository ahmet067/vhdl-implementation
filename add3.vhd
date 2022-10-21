library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity add_3 is
    Port ( A  : in   STD_LOGIC_VECTOR (3 downto 0);
           B  : out  STD_LOGIC_VECTOR (3 downto 0));
end add_3;
architecture Behavioral of add_3 is
begin
B(0)<= (A(3) AND NOT A(0)) OR (A(2) AND A(1) AND NOT A(0)) OR (NOT A(3) AND NOT A(2) AND A(0)); 
B(1)<= (A(3) AND NOT A(0)) OR (A(1) AND A(0)) OR (NOT A(2) AND A(1));
B(2)<= (A(2) AND NOT A(1) AND NOT A(0)) OR (A(3) AND A(0));
B(3)<= (A(2) AND A(0)) OR A(3) OR (A(2) AND A(1));
end Behavioral;

