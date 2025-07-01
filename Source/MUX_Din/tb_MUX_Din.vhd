library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_MUX_Din is
end tb_MUX_Din;

architecture Behaviour of tb_MUX_Din is

    component MUX_Din is
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
    end component;
    
    signal fio_S0, fio_S1, fio_S2 : std_logic;
	signal fio_Z : std_logic_vector(12 downto 0);

begin

	myMUX_Din: MUX_Din
	generic map
	(
		W => 13
	)

	port map
	(
		S0 => fio_S0,
		S1 => fio_S1,
		S2 => fio_S2,
		Z => fio_Z
	);

	-- fio_z: 0000000011001 (25), 0000000110010 (50), 0000001100100 (100)
	fio_S0 <= '0', '1' after 10 ns, '0' after 20 ns;
    fio_S1 <= '0', '0' after 10 ns, '1' after 20 ns;
    fio_S2 <= '0', '0' after 10 ns, '0' after 20 ns;


end Behaviour; -- Behaviour