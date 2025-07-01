library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Prices is
end tb_Prices;

architecture Behaviour of tb_Prices is

    component Prices is
    generic (
		W	: integer := 13
	);

	Port ( 
		S: in std_logic_vector(3 downto 0);
		data : out std_logic_vector((W-1) downto 0)

	);
    end component;

    signal fio_S : std_logic_vector(3 downto 0);
    signal fio_data : std_logic_vector(12 downto 0);

begin

    myPrices: Prices
    generic map (
		W	=> 13
	)

	port map ( 
		S => fio_S,
		data => fio_data
	);

    -- fio_data: 0000000110010 (50), 0000001100100 (100), 0000011111010 (250)
    
	fio_S <= "0000", "1000" after 10 ns, "0100" after 20 ns;

end Behaviour; -- Behaviour