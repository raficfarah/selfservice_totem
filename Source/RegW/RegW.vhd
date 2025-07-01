LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity RegW is

	generic (
		W	: natural := 4
	);
	
	port(
		CLK	: in std_logic;
		RST : in std_logic;
	   	D		: in std_logic_vector((W-1) downto 0);
		Q		: out std_logic_vector((W-1) downto 0) := (others => '0');
		LOAD : in std_logic
	);
	
end RegW;

architecture RTL of RegW is
	signal Reg : std_logic_vector((W-1) downto 0);
begin
	process(CLK, load, RST)
	begin
		if (RST = '1') then
			Reg <= (others => '0');
		elsif (rising_edge(CLK) and LOAD='1') then
			Reg <= D;
		end if;
	end process;

	Q <= Reg;
end RTL;