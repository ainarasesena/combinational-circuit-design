library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity func3 is
	Port ( A3 : in STD_LOGIC;
			 B3 : in STD_LOGIC;
			 C3 : in STD_LOGIC;
			 Z3 : out STD_LOGIC);
end func3;

architecture Behavioral of func3 is

begin

	Z3 <= '1' when (A3 = '0' and B3 = '0' and C3 = '1') else
         '1' when (A3 = '0' and B3 = '1' and C3 = '1') else
         '1' when (A3 = '1' and B3 = '0' and C3 = '1') else
         '1' when (A3 = '1' and B3 = '1' and C3 = '0') else
         '0';

end Behavioral;

