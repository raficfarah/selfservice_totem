library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_comparador is
end tb_comparador;

architecture Behaviour of tb_comparador is

    component comparador is
        generic
        (
            DATA_WIDTH : natural := 13
        );

        port 
        (
            a	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
            b	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
            maior	: out std_logic;
            menor	: out std_logic;
            igual	: out std_logic
        );
    end component;
    
    signal fio_a, fio_b : std_logic_vector(13 downto 0);
    signal fio_maior, fio_menor, fio_igual : std_logic;

begin

    myComparador: comparador
    generic map
    (
        DATA_WIDTH => 13
    )

    port map
    (
        a => fio_a,
        b => fio_b,
        maior => fio_maior,
        menor => fio_menor,
        igual => fio_igual    
    );

    -- [maior, menor, igual]: [0,0,1], [1,0,0], [0,1,0]
    fio_a <= "0000000000000000", "0000000000000001" after 10 ns, "0000000000000000" after 20 ns;
    fio_b <= "0000000000000000", "0000000000000000" after 10 ns, "0000000000000001" after 20 ns;

end Behaviour; 