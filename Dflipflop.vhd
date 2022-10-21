entity DFlipFlop is
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end DFlipFlop;

architecture Behavioral of DFlipFlop is
signal h : STD_LOGIC_VECTOR (3 downto 0);
begin
h(0) <= D nand C;
h(1) <= (not D) nand C;
h(2) <= h(0) nor h(3);
h(3) <= h(1) nor h(2);
Q <= h(2);
Qn<= h(3);

end Behavioral;
