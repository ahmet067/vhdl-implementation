--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:50:29 12/10/2020
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/pre2/pre2/exp_2_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: exp_2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY exp_2_tb IS
END exp_2_tb;
 
ARCHITECTURE behavior OF exp_2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT exp_2
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal B : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: exp_2 PORT MAP (
          A => A,
          B => B
        );

   -- Clock process definitions
   
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      A <="0000";wait for 100 ns;A <="0001";wait for 100 ns;
		A <="0010";wait for 100 ns;A <="0011";wait for 100 ns;
		A <="0101";wait for 100 ns;A <="1000";wait for 100 ns;
		A <="1001";wait for 100 ns;A <="1010";wait for 100 ns;
		A <="1100";wait for 100 ns;A <="1110";wait for 100 ns;
		
      

     

      -- insert stimulus here 

      wait;
   end process;

END;
