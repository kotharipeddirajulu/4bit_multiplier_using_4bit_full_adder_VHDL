----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:19:50 01/23/2021 
-- Design Name: 
-- Module Name:    fourbit_fulladder - Behavioral 
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

entity fourbit_fulladder is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end fourbit_fulladder;

architecture Behavioral of fourbit_fulladder is

component fulladder
Port (A,B,Cin : in STD_LOGIC;
       S,Cout : out STD_LOGIC);
end component;

signal c: STD_LOGIC_VECTOR (2 downto 0);

begin

Fo1: fulladder port map( X(0), Y(0), Cin, S(0), c(0));
Fo2: fulladder  port map( X(1), Y(1), c(0), S(1), c(1));
Fo3: fulladder  port map( X(2), Y(2), c(1), S(2), c(2));
Fo4: fulladder  port map( X(3), Y(3), c(2), S(3), Cout);


end Behavioral;

