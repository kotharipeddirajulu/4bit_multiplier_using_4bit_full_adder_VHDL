--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:35:41 01/23/2021
-- Design Name:   
-- Module Name:   C:/users/kothari/Desktop/VLSI design/sample/forbit_fulladder_tb.vhd
-- Project Name:  sample
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourbit_fulladder
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
 
ENTITY forbit_fulladder_tb IS
END forbit_fulladder_tb;
 
ARCHITECTURE behavior OF forbit_fulladder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourbit_fulladder
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourbit_fulladder PORT MAP (
          X => X,
          Y => Y,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		X<="0000";
		Y<="0000";
		wait for 50 ns;	
		X<="0010";
		Y<="0001";
		wait for 50 ns;	
		X<="0001";
		Y<="0101";	

     

      -- insert stimulus here 

      wait;
   end process;

END;
