
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY comparator_tb IS
END comparator_tb;
 
ARCHITECTURE behavior OF comparator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator
    PORT(
         X : IN  std_logic_vector(1 downto 0);
         Y : IN  std_logic_vector(1 downto 0);
         Z : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(1 downto 0) := (others => '0');
   signal Y : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator PORT MAP (
          X => X,
          Y => Y,
          Z => Z
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      
X<="00";Y<="00";wait for 100 ns;
X<="00";Y<="01";wait for 100 ns;
X<="11";Y<="10";wait for 100 ns;
X<="01";Y<="11";wait for 100 ns;
X<="10";Y<="01";wait for 100 ns;		
		
      

      

      -- insert stimulus here 

      wait;
   end process;

END;
