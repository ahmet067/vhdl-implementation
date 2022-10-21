
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY functionn_tb IS
END functionn_tb;
 
ARCHITECTURE behavior OF functionn_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT functionn
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         Z : IN  std_logic;
         F : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Z : std_logic := '0';

 	--Outputs
   signal F : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: functionn PORT MAP (
          X => X,
          Y => Y,
          Z => Z,
          F => F
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
X<='0';Y<='0';Z<='0';wait for 100 ns;
X<='0';Y<='0';Z<='1';wait for 100 ns;	
X<='0';Y<='1';Z<='1';wait for 100 ns;	
X<='1';Y<='1';Z<='0';wait for 100 ns;	
X<='1';Y<='1';Z<='1';wait for 100 ns;			

      

      -- insert stimulus here 

      wait;
   end process;

END;
