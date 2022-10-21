--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:36:41 12/30/2020
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/xilinx/227/paritydetector_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: paritydetector
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
 
ENTITY paritydetector_tb IS
END paritydetector_tb;
 
ARCHITECTURE behavior OF paritydetector_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT paritydetector
    PORT(
         X : IN  std_logic;
         pi : IN  std_logic;
         Reset : IN  std_logic;
         Clock : IN  std_logic;
         po : OUT  std_logic;
         pc : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal pi : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal po : std_logic;
   signal pc : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: paritydetector PORT MAP (
          X => X,
          pi => pi,
          Reset => Reset,
          Clock => Clock,
          po => po,
          pc => pc
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
Reset<='0';pi<='0';wait for Clock_period/2;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
X<='1';wait for clock_period;
      

      

   end process;

END;
