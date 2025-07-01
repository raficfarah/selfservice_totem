library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Somador is

	generic
	(
		DATA_WIDTH : natural := 13
	);

	port 
	(
		a	   : in unsigned  ((DATA_WIDTH-1) downto 0);
		b	   : in unsigned  ((DATA_WIDTH-1) downto 0);
		result : out unsigned ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of Somador is
begin

	result <= a + b;

end rtl;
