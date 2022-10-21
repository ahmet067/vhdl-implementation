--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:43:35 01/06/2021
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/xilinx/227/UpDownCounter_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UpDownCounter
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
 
ENTITY UpDownCounter_tb IS
END UpDownCounter_tb;
 
ARCHITECTURE behavior OF UpDownCounter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UpDownCounter
    PORT(
         U : IN  std_logic;
         D : IN  std_logic;
         Clock : IN  std_logic;
         Reset : IN  std_logic;
         A : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal U : std_logic := '0';
   signal D : std_logic := '0';
   signal Clock : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal A : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UpDownCounter PORT MAP (
          U => U,
          D => D,
          Clock => Clock,
          Reset => Reset,
          A => A
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
Reset <= '1';
wait for clock_period;
wait for clock_period;
wait for clock_period;
Reset <= '0';

u <= '0';
d <= '1';
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;
wait for clock_period;


      

      wait;
   end process;

END;
