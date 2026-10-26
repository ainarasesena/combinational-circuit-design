library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity func1 is
	Port ( A1 : in STD_LOGIC;
			 B1 : in STD_LOGIC;
			 C1 : in STD_LOGIC;
			 Z1 : out STD_LOGIC);
end func1;

architecture Behavioral of func1 is

begin

	Z1 <= (not (A1 and B1)) xor (not (B1 or C1));
	
end Behavioral;

