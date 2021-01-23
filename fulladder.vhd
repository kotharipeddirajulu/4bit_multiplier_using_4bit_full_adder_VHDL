----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:54 01/22/2021 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder is
    Port ( A,B,Cin : in  STD_LOGIC;
           S,Cout : out  STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is

begin

S<= A XOR B XOR Cin;
Cout<= (A AND B) OR (Cin AND A) OR (Cin AND B);

end Behavioral;

