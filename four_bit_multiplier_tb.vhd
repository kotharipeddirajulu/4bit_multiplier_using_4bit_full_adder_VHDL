--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:16:55 01/23/2021
-- Design Name:   
-- Module Name:   C:/users/kothari/Desktop/VLSI design/sample/four_bit_multiplier_tb.vhd
-- Project Name:  sample
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_multiplier
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
 
ENTITY four_bit_multiplier_tb IS
END four_bit_multiplier_tb;
 
ARCHITECTURE behavior OF four_bit_multiplier_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_multiplier
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         P : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal P : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_multiplier PORT MAP (
          A => A,
          B => B,
          P => P
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		A<="0010";
		B<="0010";
		wait for 50 ns;	
		A<="0011";
		B<="0010";
		

     
      -- insert stimulus here 

      wait;
   end process;

END;
