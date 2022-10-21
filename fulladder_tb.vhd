
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY fulladder_tb IS
END fulladder_tb;
 
ARCHITECTURE behavior OF fulladder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladder
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         Z : IN  std_logic;
         S : OUT  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Z : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal C : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladder PORT MAP (
          X => X,
          Y => Y,
          Z => Z,
          S => S,
          C => C
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin	
	
		X <= '0';
		Y <= '0';
		Z <= '0';	
      wait for 100 ns;
		X <= '0';
		Y <= '0';
		Z <= '1';	
      wait for 100 ns;	
		X <= '0';
		Y <= '1';
		Z <= '0';	
      wait for 100 ns;	
		X <= '0';
		Y <= '1';
		Z <= '1';	
      wait for 100 ns;	
		X <= '1';
		Y <= '0';
		Z <= '0';	
      wait for 100 ns;	
		X <= '1';
		Y <= '0';
		Z <= '1';	
      wait for 100 ns;	
		X <= '1';
		Y <= '1';
		Z <= '0';	
      wait for 100 ns;	
		X <= '1';
		Y <= '1';
		Z <= '1';	
      wait for 100 ns;	

     

      -- insert stimulus here 

      wait;
   end process;

END;
