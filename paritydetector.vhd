library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity paritydetector is
    Port ( X  : in  STD_LOGIC;--X is the data.
           pi : in  STD_LOGIC;--parityin
           Reset : in  STD_LOGIC;
			  Clock : in  STD_LOGIC;
           po : out  STD_LOGIC;--parityout
           pc : out  STD_LOGIC);--paritycheck
end paritydetector;
architecture Behavioral of paritydetector is
component tffwithreset is
    Port ( T : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end component;
signal s : STD_LOGIC_VECTOR (1 downto 0);--s signals are the Q and Qn of the T flipflop.

begin
tffwithreset1 : tffwithreset port map (X,Reset,Clock,s(0),s(1));
po <= s(1);
pc <= pi xnor s(1);--We check whether parityin and parityout are equal or not.
end Behavioral;

