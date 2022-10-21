
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY pre2_tb IS
END pre2_tb;
 
ARCHITECTURE behavior OF pre2_tb IS 
 
 
    COMPONENT pre2
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal C : std_logic;
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pre2 PORT MAP (
          A => A,
          B => B,
          C => C,
          S => S
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
     
	A <= '0';
	B <= '0';
wait for 100 ns;
	A <= '0';
	B <= '1';
wait for 100 ns;	
	A <= '1';
	B <= '0';
wait for 100 ns;	
	A <= '1';
	B <= '1';
wait for 100 ns;	
	
      
   
      wait;
   end process;

END;
