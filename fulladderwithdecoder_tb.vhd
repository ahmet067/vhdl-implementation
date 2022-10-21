--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:33:00 12/16/2020
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/pre2/pre2/fulladderwithdecoder_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladderwithdecoder
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
 
ENTITY fulladderwithdecoder_tb IS
END fulladderwithdecoder_tb;
 
ARCHITECTURE behavior OF fulladderwithdecoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladderwithdecoder
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         Z : IN  std_logic;
         S : OUT  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Z : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal C : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladderwithdecoder PORT MAP (
          X => X,
          Y => Y,
          Z => Z,
          S => S,
          C => C
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin	

		X<='0';Y<='0';Z<='0';wait for 100 ns;
		X<='0';Y<='0';Z<='1';wait for 100 ns;
		X<='0';Y<='1';Z<='1';wait for 100 ns;
		X<='1';Y<='1';Z<='0';wait for 100 ns;
		X<='1';Y<='1';Z<='1';wait for 100 ns;
   
      	

    

      -- insert stimulus here 

      wait;
   end process;

END;
