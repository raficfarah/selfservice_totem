library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_BCD_7seg is
end tb_BCD_7seg;

architecture Behaviour of tb_BCD_7seg is

    signal fio_entrada : std_logic_vector(3 downto 0);
    signal fio_saida : std_logic_vector(6 downto 0);

    component BCD_7seg is
        port (
            entrada: in std_logic_vector(3 downto 0);
            saida: out std_logic_vector(6 downto 0)
        );
    end component;

begin

    myBCD: BCD_7seg
    port map(
        entrada => fio_entrada,
        saida => fio_saida
    );

    -- 1000000, 1111001, 0100100
    fio_entrada <= "0000", "0001" after 5 ns, "0010" after 10 ns;

end Behaviour;