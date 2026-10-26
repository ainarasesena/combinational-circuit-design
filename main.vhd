library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
	Port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 C : in STD_LOGIC;
			 Y : out STD_LOGIC);
end main;

architecture Behavioral of main is

	component func1 is
		Port ( A1 : in STD_LOGIC;
             B1 : in STD_LOGIC;
             C1 : in STD_LOGIC;
             Z1 : out STD_LOGIC);
    end component;

    component func2 is
		Port ( A2 : in STD_LOGIC;
             B2 : in STD_LOGIC;
             C2 : in STD_LOGIC;
             Z2 : out STD_LOGIC);
    end component;
	 
	 component func3 is
		Port ( A3 : in STD_LOGIC;
             B3 : in STD_LOGIC;
             C3 : in STD_LOGIC;
             Z3 : out STD_LOGIC);
    end component;
	 
	 signal sig_Z1 : STD_LOGIC;
    signal sig_Z2 : STD_LOGIC;
	 
begin
	U1:func1 port map (
      A1 => A,
      B1 => B,
      C1 => C,
      Z1 => sig_Z1
    );

    U2:func2 port map (
       A2 => A,
       B2 => B,
       C2 => C,
       Z2 => sig_Z2
    );
	 
	 U3:func3 port map (
       A3 => A,
       B3 => sig_Z1,
       C3 => sig_Z2,
       Z3 => Y
    );

end Behavioral;

