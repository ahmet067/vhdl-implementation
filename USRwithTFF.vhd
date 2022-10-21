library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity USRwithTFF is
    Port ( R : in  STD_LOGIC;--serial input for shift right
           L : in  STD_LOGIC;--serial input for shift left
           s : in  STD_LOGIC_VECTOR (1 downto 0);--selection inputs
           Clear : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           A : out  STD_LOGIC_VECTOR (3 downto 0));
end USRwithTFF;
architecture Behavioral of USRwithTFF is
component mux4 is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end component;
component tffwithreset is
    Port ( T : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end component;
signal h : STD_LOGIC_VECTOR (3 downto 0);
signal p : STD_LOGIC_VECTOR (3 downto 0);
signal k : STD_LOGIC_VECTOR (3 downto 0);
begin
k(3) <= p(3) xor h(3);k(2) <= p(2) xor h(2);k(1) <= p(1) xor h(1);k(0) <= p(0) xor h(0);				
mux4_1 : mux4 port map (i(0)=>p(3),i(1)=>R,i(2)=>p(2),i(3)=>B(3),s(0)=>s(0),s(1)=>s(1),Y=>h(3));
mux4_2 : mux4 port map (i(0)=>p(2),i(1)=>p(3),i(2)=>p(1),i(3)=>B(2),s(0)=>s(0),s(1)=>s(1),Y=>h(2));
mux4_3 : mux4 port map (i(0)=>p(1),i(1)=>p(2),i(2)=>p(0),i(3)=>B(1),s(0)=>s(0),s(1)=>s(1),Y=>h(1));
mux4_4 : mux4 port map (i(0)=>p(0),i(1)=>p(1),i(2)=>L,i(3)=>B(0),s(0)=>s(0),s(1)=>s(1),Y=>h(0));
TFF1 : tffwithreset port map (k(3),Clear,Clock,p(3));
TFF2 : tffwithreset port map (k(2),Clear,Clock,p(2));
TFF3 : tffwithreset port map (k(1),Clear,Clock,p(1));
TFF4 : tffwithreset port map (k(0),Clear,Clock,p(0));
A(3) <= p(3);A(2) <= p(2);A(1) <= p(1);A(0) <= p(0);
end Behavioral;

