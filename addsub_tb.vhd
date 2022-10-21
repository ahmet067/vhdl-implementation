
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY addsub_tb IS
END addsub_tb;
 
ARCHITECTURE behavior OF addsub_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT addsub
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         B : IN  std_logic_vector(2 downto 0);
         m : IN  std_logic;
         St: OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');
   signal B : std_logic_vector(2 downto 0) := (others => '0');
   signal m : std_logic := '0';

 	--Outputs
   signal St : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: addsub PORT MAP (
          A => A,
          B => B,
          m => m,
          St => St
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin		
     
	  A <= "000";
	  B <= "000";
	  m <= '0';	  	  wait for 100 ns;
	  
     A <= "101";
	  B <= "010";
	  m <= '1';	  	  wait for 100 ns;
	  
     A <= "110";
	  B <= "011";
	  m <= '0';	  	  wait for 100 ns;
	  
     A <= "010";
	  B <= "001";
	  m <= '1';	  	  wait for 100 ns;
	  
     A <= "111";
	  B <= "010";
	  m <= '0';	  	  wait for 100 ns;
	  

      

      -- insert stimulus here 

      wait;
   end process;

END;
