--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:44:21 01/07/2021
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/xilinx/227/AsenktronRipple_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AsenkronRipple
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
 
ENTITY AsenkronRipple_tb IS
END AsenkronRipple_tb;
 
ARCHITECTURE behavior OF AsenkronRipple_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AsenkronRipple
    PORT(
         Count : IN  std_logic;
         Reset : IN  std_logic;
         A : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Count : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal A : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AsenkronRipple PORT MAP (
          Count => Count,
          Reset => Reset,
          A => A
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
	Reset <= '1';
Count <= '1';
 wait for 100 ns;
Count <= '0';
 wait for 100 ns;
Reset <= '0';
wait for 100 ns;
Count <= '1';
 wait for 100 ns;
Count <= '0';
 wait for 100 ns;
Count <= '1';
 wait for 100 ns;
Count <= '0';
 wait for 100 ns;
Count <= '1';
wait for 100 ns;
Count <= '0';
wait for 100 ns;
Count <= '1';
wait for 100 ns;
Count <= '0';
      
      wait;
   end process;

END;
