
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY USRwithTFF_tb IS
END USRwithTFF_tb;
 
ARCHITECTURE behavior OF USRwithTFF_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT USRwithTFF
    PORT(
         R : IN  std_logic;
         L : IN  std_logic;
         s : IN  std_logic_vector(1 downto 0);
         Clear : IN  std_logic;
         Clock : IN  std_logic;
         B : IN  std_logic_vector(3 downto 0);
         A : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic := '0';
   signal L : std_logic := '0';
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal Clear : std_logic := '0';
   signal Clock : std_logic := '0';
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal A : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: USRwithTFF PORT MAP (
          R => R,
          L => L,
          s => s,
          Clear => Clear,
          Clock => Clock,
          B => B,
          A => A
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		Clear<='1';
		wait for 100ns;
		Clear<='0';
		wait for clock_period;
		s(0)<='0';s(1)<='1';--shiftleft
		L<='0';
		wait for clock_period;
		L<='1';
		wait for clock_period;
		L<='0';
		wait for clock_period;
		L<='1';
		wait for clock_period;
		s(0)<='1';s(1)<='1';--parallel load
		B<="1101";
      

      

      wait;
   end process;

END;
