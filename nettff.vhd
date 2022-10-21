library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity nettff is--it means negative edge triggered T flipflop.
    Port ( T : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q1 : out  STD_LOGIC);
end nettff;
architecture Behavioral of nettff is
component jkwithreset is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end component;
begin
--to get negative edge triggered T flipflop we just convert Clock to not Clock.
JkFlipflop : jkwithreset port map(T,T,not Clock,Reset,Q,Q1);
end Behavioral;

