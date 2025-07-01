library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- mux 8x1 de 13 bits
entity MUX_Din is
	generic (
		W 	: integer := 13
	);
	
	Port ( 
		S0  : in std_logic;
		S1  : in std_logic;
		S2  : in std_logic;
		I0  : in std_logic_vector((W-1) downto 0) := "0000000011001"; -- 25
		I1  : in std_logic_vector((W-1) downto 0) := "0000000110010"; -- 50
		I2  : in std_logic_vector((W-1) downto 0) := "0000001100100"; -- 100
		I3  : in std_logic_vector((W-1) downto 0) := "0000011001000"; -- 200
		I4  : in std_logic_vector((W-1) downto 0) := "0000111110100"; -- 500
		I5  : in std_logic_vector((W-1) downto 0) := "0001111101000"; -- 1000
		I6  : in std_logic_vector((W-1) downto 0) := "0011111010000"; -- 2000
		I7  : in std_logic_vector((W-1) downto 0) := "1001110001000"; -- 5000
		Z	: out std_logic_vector((W-1) downto 0)
	);
end MUX_Din;

architecture Behavioral of MUX_Din is
begin
	Z <= 
		I0 when S0 = '0' and S1 = '0' and S2 = '0' else  
		I1 when S0 = '0' and S1 = '0' and S2 = '1' else  
		I2 when S0 = '0' and S1 = '1' and S2 = '0' else  
		I3 when S0 = '0' and S1 = '1' and S2 = '1' else  
		I4 when S0 = '1' and S1 = '0' and S2 = '0' else  
		I5 when S0 = '1' and S1 = '0' and S2 = '1' else  
		I6 when S0 = '1' and S1 = '1' and S2 = '0' else  
		I7 when S0 = '1' and S1 = '1' and S2 = '1' else  
		"0000000000000";		   	   	
end Behavioral;
