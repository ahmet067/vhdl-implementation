--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:41:06 01/07/2021
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/xilinx/227/BCD_Counter_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCDCounter
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
 
ENTITY BCD_Counter_tb IS
END BCD_Counter_tb;
 
ARCHITECTURE behavior OF BCD_Counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCDCounter
    PORT(
         Clock : IN  std_logic;
         B : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCDCounter PORT MAP (
          Clock => Clock,
          B => B,
          Q => Q
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
      -- hold reset state for 100 ns.
      B<='1';
		wait for Clock_period;
		B<='0';
		wait for Clock_period;
		wait for Clock_period;
		wait for Clock_period;
		wait for Clock_period;
		wait for Clock_period;
		wait for Clock_period;
      wait for Clock_period;

      -- insert stimulus here 

      wait;
   end process;

END;
