--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:13:23 12/17/2020
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - hacettepe.edu.tr/Desktop/pre2/pre2/bcdtosgmnt_tb.vhd
-- Project Name:  pre2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcdtosgmnt
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
 
ENTITY bcdtosgmnt_tb IS
END bcdtosgmnt_tb;
 
ARCHITECTURE behavior OF bcdtosgmnt_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcdtosgmnt
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         t : IN  std_logic;
         a : OUT  std_logic;
         b : OUT  std_logic;
         c : OUT  std_logic;
         d : OUT  std_logic;
         e : OUT  std_logic;
         f : OUT  std_logic;
         g : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';
   signal t : std_logic := '0';

 	--Outputs
   signal a : std_logic;
   signal b : std_logic;
   signal c : std_logic;
   signal d : std_logic;
   signal e : std_logic;
   signal f : std_logic;
   signal g : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcdtosgmnt PORT MAP (
          x => x,
          y => y,
          z => z,
          t => t,
          a => a,
          b => b,
          c => c,
          d => d,
          e => e,
          f => f,
          g => g
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      
x<='0';y<='0';z<='0';t<='0';wait for 100 ns;
x<='0';y<='1';z<='0';t<='1';wait for 100 ns;
x<='1';y<='0';z<='1';t<='0';wait for 100 ns;
x<='1';y<='1';z<='0';t<='0';wait for 100 ns;
x<='1';y<='1';z<='1';t<='1';wait for 100 ns;		

      

      -- insert stimulus here 

      wait;
   end process;

END;
