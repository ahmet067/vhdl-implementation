--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:11:47 12/08/2020
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/pre2/pre2/multiplier_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplier
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
 
ENTITY multiplier_tb IS
END multiplier_tb;
 
ARCHITECTURE behavior OF multiplier_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplier
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         M : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal M : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplier PORT MAP (
          A => A,
          B => B,
          M => M
        );

   -- Clock process definitions
   
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		A<="000";B<="00";
      wait for 100 ns;
		A<="001";B<="01";
      wait for 100 ns;	
		A<="010";B<="10";
      wait for 100 ns;	
		A<="110";B<="11";
      wait for 100 ns;	
		A<="111";B<="11";
      wait for 100 ns;			

     

      -- insert stimulus here 

      wait;
   end process;

END;
