library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_RegFile is
end tb_RegFile;

architecture Behaviour of tb_RegFile is

    component RegFile is
    generic (
		W	: integer := 13
	);

	Port ( 
		S0 : in std_logic;
		S1 : in std_logic;
		S2 : in std_logic;
		S3 : in std_logic;
		CLK : in std_logic;
		data : out std_logic_vector((W-1) downto 0)

	);
    end component;

    signal fio_S0, fio_S1, fio_S2, fio_S3: std_logic;
    signal fio_CLK : std_logic := '0';
    signal fio_data : std_logic_vector(12 downto 0);

begin

    myRegFile: RegFile
    generic map (
		W	=> 13
	)

	port map ( 
		S0 => fio_S0,
		S1 => fio_S1,
		S2 => fio_S2,
		S3 => fio_S3,
		CLK => fio_CLK,
		data => fio_data
	);

    -- fio_data: 0000000110010 (50), 0000001100100 (100), 0000011111010 (250)
    
    fio_S0 <= '0', '1' after 10 ns, '0' after 20 ns;
    fio_S1 <= '0', '0' after 10 ns, '1' after 20 ns;
    fio_S2 <= '0', '0' after 10 ns, '0' after 20 ns;
    fio_S3 <= '0', '0' after 10 ns, '0' after 20 ns;
    fio_CLK <= '1';


end Behaviour; -- Behaviour