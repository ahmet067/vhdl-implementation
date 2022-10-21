--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:07:28 12/31/2020
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/xilinx/227/dtojk_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dtojk
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
 
ENTITY dtojk_tb IS
END dtojk_tb;
 
ARCHITECTURE behavior OF dtojk_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dtojk
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         Reset : IN  std_logic;
         Clock : IN  std_logic;
         Q : OUT  std_logic;
         Q1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Q1 : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dtojk PORT MAP (
          J => J,
          K => K,
          Reset => Reset,
          Clock => Clock,
          Q => Q,
          Q1 => Q1
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
     
Reset<='1';wait for clock_period;
Reset<='0';	  
J<='0';K<='0';wait for clock_period;
J<='0';K<='1';wait for clock_period;
J<='1';K<='0';wait for clock_period;
J<='1';K<='1';wait for clock_period;
J<='1';K<='0';wait for clock_period;
J<='0';K<='1';wait for clock_period;

      

      wait;
   end process;

END;
