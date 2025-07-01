library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_BCD_Conv is
end tb_BCD_Conv;

architecture Behaviour of tb_BCD_Conv is

    component BCD_Conv is
        Port (
        entrada   : in  unsigned(12 downto 0); -- 13-bit binary input
        milhar   : out std_logic_vector(3 downto 0);
        centena  : out std_logic_vector(3 downto 0);
        dezena   : out std_logic_vector(3 downto 0);
        unidade  : out std_logic_vector(3 downto 0)
    );
    end component;

    signal fio_entrada : unsigned(12 downto 0);
    signal signal_m, signal_c, signal_d, signal_u : std_logic_vector(3 downto 0);

begin

    myBCD_Conv: BCD_Conv
    port map
    (
        entrada => fio_entrada,
        milhar => signal_m,
        centena => signal_c,
        dezena => signal_d,
        unidade => signal_u
    );

    -- n = [m,c,d,u]: 
    -- 0 = ["0000","0000","0000","0000"]
    -- 750 = ["0000","0111","0101","0000"]
    -- 3975 = ["0011","1001","0111","0101"]

    fio_entrada <= "0000000000000", "0001011101110" after 10 ns, "0111110000111" after 20 ns;

end Behaviour; -- Behaviour