library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity func2 is
	Port ( A2 : in STD_LOGIC;
			 B2 : in STD_LOGIC;
			 C2 : in STD_LOGIC;
			 Z2 : out STD_LOGIC);
end func2;

architecture Behavioral of func2 is

begin

	Z2 <= ((not A2) and (not B2) and (not C2)) or
         ((not A2) and (not B2) and C2) or
         ((not A2) and B2 and (not C2)) or
         (A2 and (not B2) and C2);
end Behavioral;

