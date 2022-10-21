--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:53:12 12/29/2020
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/xilinx/227/sequencedetector_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sequencedetector
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
 
ENTITY sequencedetector_tb IS
END sequencedetector_tb;
 
ARCHITECTURE behavior OF sequencedetector_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sequencedetector
    PORT(
         i : IN  std_logic;
         R : IN  std_logic;
         Clock : IN  std_logic;
         T : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic := '0';
   signal R : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal T : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sequencedetector PORT MAP (
          i => i,
          R => R,
          Clock => Clock,
          T => T
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
      
R<='1';wait for clock_period;
R<='0';wait for clock_period;
i<='0';wait for clock_period;
i<='1';wait for clock_period;
i<='0';wait for clock_period;
i<='1';wait for clock_period;
i<='1';wait for clock_period;
i<='0';wait for clock_period;
i<='1';wait for clock_period;
i<='1';wait for clock_period;
i<='0';wait for clock_period;

      -- insert stimulus here 

      wait;
   end process;

END;
