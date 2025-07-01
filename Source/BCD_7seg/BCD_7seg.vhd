LIBRARY IEEE;
use ieee.std_logic_1164.all;

Entity BCD_7seg is
	port (
	entrada: in std_logic_vector(3 downto 0);
	saida: out std_logic_vector(6 downto 0)
	);
end BCD_7seg;

architecture with_select_bcd7seg of Bcd_7seg is
begin
	with entrada select
		saida <= 
		"1000000" when "0000", --0
		"1111001" when "0001", --1
		"0100100" when "0010", --2
		"0110000" when "0011", --3
		"0011001" when "0100", --4
		"0010010" when "0101", --5
		"0000010" when "0110", --6
		"1111000" when "0111", --7
		"0000000" when "1000", --8
		"0010000" when "1001", --9
		"0000000" when others;
end with_select_bcd7seg;
		