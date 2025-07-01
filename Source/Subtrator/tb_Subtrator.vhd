library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Subtrator is
end tb_Subtrator;

architecture Behaviour of tb_Subtrator is

    component Subtrator is
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
    end component;

    signal fio_a, fio_b, fio_result : unsigned(12 downto 0);

begin

	mySubtrator: Subtrator
	generic map
	(
		DATA_WIDTH => 13
	)

	port map
	(
		a => fio_a,
		b => fio_b,
		result => fio_result
	);

	-- fio_result: 0, 6, 24
	fio_a <= "0000000000000", "0000000001000" after 10 ns, "0000000100000" after 20 ns;
	fio_b <= "0000000000000", "0000000000010" after 10 ns, "0000000001000" after 20 ns;

end Behaviour ; -- Behaviour