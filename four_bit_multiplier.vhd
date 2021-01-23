----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:28:31 01/23/2021 
-- Design Name: 
-- Module Name:    four_bit_multiplier - Behavioral 
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

entity four_bit_multiplier is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           P : out  STD_LOGIC_VECTOR (7 downto 0));
end four_bit_multiplier;

architecture Behavioral of four_bit_multiplier is

component fourbit_fulladder is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end component;

    signal AB: std_logic_vector(15 downto 0);
-- AND Product terms:
    signal K0, K1, K2:  std_logic_vector (3 downto 0);
-- Y Inputs (B0 has three bits of AND product)
    signal conn0, conn1, conn2:  std_logic_vector (3 downto 0);

begin
    AB(0)<= A(0) and B(0);
	 AB(1)<= A(1) and B(0);
	 AB(2)<= A(2) and B(0);
	 AB(3)<= A(3) and B(0);
	 
    AB(4)<= A(0) and B(1);
	 AB(5)<= A(1) and B(1);
	 AB(6)<= A(2) and B(1);
	 AB(7)<= A(3) and B(1);
	
    AB(8)<= A(0) and B(2);
	 AB(9)<= A(1) and B(2);
	 AB(10)<= A(2) and B(2);
	 AB(11)<= A(3) and B(2);
	 
    AB(12)<= A(0) and B(3);
	 AB(13)<= A(1) and B(3);
	 AB(14)<= A(2) and B(3);
	 AB(15)<= A(3) and B(3);
	 
	 K0 <= (AB(7),AB(6),AB(5),AB(4));
	 K1 <= (AB(11),AB(10),AB(9),AB(8));
	 K2 <= (AB(15),AB(14),AB(13),AB(12));
	 conn0 <= ('0',AB(3),AB(2),AB(1));
	 
	 P(0) <= AB(0);
	 
FBM1: fourbit_fulladder port map ( X=>K0,Y=>conn0,Cin=>'0',
                                   Cout=>conn1(3),
                                   S(3)=>conn1(2),S(2)=>conn1(1)
											  ,S(1)=>conn1(0),S(0)=>P(1));
											
FBM2: fourbit_fulladder port map ( X=>K1,Y=>conn1,Cin=>'0',
                                   Cout=>conn2(3),
                                   S(3)=>conn2(2),S(2)=>conn2(1)
											  ,S(1)=>conn2(0),S(0)=>P(2));
											  
FBM3: fourbit_fulladder port map ( X=>K2,Y=>conn2,Cin=>'0',
                                   Cout=>P(7),
                                   S => P(6 downto 3)
											  );


end Behavioral;

