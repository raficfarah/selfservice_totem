library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity prices is
	generic (
		W	: integer := 13
	);

	Port ( 
		S 	 : in std_logic_vector(3 downto 0);
		data : out std_logic_vector((W-1) downto 0)

	);
end prices;

architecture Behavioral of prices is	
begin
	with S select
		DATA <= 
		"0000000110010" when "0000", -- 50
		"0000001100100" when "0001", -- 100
		"0000011111010" when "0010", -- 250
		"0000111110100" when "0011", -- 500
		"0001110000100" when "0100", -- 900
		"0010010110000" when "0101", -- 1200
		"1000110010100" when "0110", -- 4500
		"0101110111000" when "0111", -- 3000
		"0011111010000" when "1000", -- 2000
		"0111110000111" when "1001", -- 3975
		"1001110001000" when "1010", -- 5000
		"0011100001000" when "1011", -- 1800
		"0000001001011" when "1100", -- 75
		"0001111101000" when "1101", -- 1000
		"0001011101110" when "1110", -- 750
		"0100101100000" when "1111", -- 2400
		"0000000000000" when others;
	
end Behavioral;
