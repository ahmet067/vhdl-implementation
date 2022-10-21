--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:33:23 01/07/2021
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/xilinx/227/ROM_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
 
ENTITY ROM_tb IS
END ROM_tb;
 
ARCHITECTURE behavior OF ROM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         B : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal B : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          A => A,
          B => B
        );



   -- Stimulus process
   stim_proc: process
   begin		
     
   
A <= "000";
wait for 100 ns;
A <= "001";
wait for 100 ns;
A <= "010";
wait for 100 ns;
A <= "011";
wait for 100 ns;
A <= "100";
wait for 100 ns;
A <= "101";
wait for 100 ns;
A <= "110";
wait for 100 ns;
A <= "111";
wait for 100 ns;
      

      wait;
   end process;

END;
