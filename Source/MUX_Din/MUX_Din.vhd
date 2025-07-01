library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- mux 8x1 de 13 bits
entity MUX_Din is
	generic (
		W 	: integer := 13
	);
	
	Port ( 
		S : in std_logic_vector (2 downto 0);
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
	with S select
		Z <= 
			I0 when "000",
			I1 when "001", 
			I2 when "010", 
			I3 when "011", 
			I4 when "100", 
			I5 when "101", 
			I6 when "110", 
			I7 when "111", 
			"0000000000000" when others;		   	   	
end Behavioral;
