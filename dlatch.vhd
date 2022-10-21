library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity dlatch is
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end dlatch;
architecture Behavioral of dlatch is
component srlatch is
    Port ( S : in  STD_LOGIC;
           C : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end component;
begin
srlatch1 : srlatch port map (D,C,not D,Q,Q1);
end Behavioral;

