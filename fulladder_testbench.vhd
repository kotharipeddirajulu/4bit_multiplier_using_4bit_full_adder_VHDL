--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:47:36 01/22/2021
-- Design Name:   
-- Module Name:   C:/users/kothari/Desktop/VLSI design/sample/fulladder_testbench.vhd
-- Project Name:  sample
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladder
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
 
ENTITY fulladder_testbench IS
END fulladder_testbench;
 
ARCHITECTURE behavior OF fulladder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 100 ns;
		A <= '1';
		B <= '0';
      Cin <= '0';
      wait for 10 ns;
 
      A <= '0';
      B <= '1';
      Cin <= '0';
      wait for 10 ns;
 
      A <= '1';
      B <= '1';
      Cin <= '0';
      wait for 10 ns;
 
      A <= '0';
      B <= '0';
      Cin <= '1';
      wait for 10 ns;
 
      A <= '1';
      B <= '0';
      Cin <= '1';
      wait for 10 ns;
 
      A <= '0';
      B <= '1';
      Cin <= '1';
      wait for 10 ns;
 
      A <= '1';
      B <= '1';
      Cin <= '1';
      wait for 10 ns;
 
		
		
 


       -- insert stimulus here 

      wait;
   end process;

END;
