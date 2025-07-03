library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Totem is
end tb_Totem;

architecture Behaviour of tb_Totem is

    component Totem is
        port(
            E, Z						: in std_logic;
            CLK, RST					: in std_logic;
            
            prod_in						: in std_logic_vector(3 downto 0);
            din							: in std_logic_vector(2 downto 0);

            C, F						: out std_logic;
            prod_out					: out std_logic_vector(3 downto 0);
            troco_out 					: out std_logic_vector(12 downto 0);
            M_out, C_out, D_out, U_out 	: out std_logic_vector(6 downto 0)
	    );
    end component;

    constant CLK_PERIOD : time := 10 ns;

    signal fioCLK, fioRST : std_logic := '0';
    signal fioE, fioZ : std_logic := '0';

    signal fioProd_in, fioProd_out : std_logic_vector(3 downto 0);
    signal fioDin : std_logic_vector(2 downto 0);

    signal fioC, fioF : std_logic;
    signal fioTroco_out : std_logic_vector(12 downto 0);

    signal fioM_out, fioC_out, fioD_out, fioU_out : std_logic_vector(6 downto 0);

begin

    myTotem : Totem
    port map(
        E => fioE,
        Z => fioZ,
        CLK => fioCLK,
        RST => fioRST,
        prod_in => fioProd_in,
        din => fioDin,
        prod_out => fioProd_out,
        C => fioC,
        F => fioF,
        troco_out => fioTroco_out,
        M_out => fioM_out,
        C_out => fioC_out,
        D_out => fioD_out,
        U_out => fioU_out
    );

    fioCLK <= not(fioCLK) after (CLK_PERIOD/2);
    fioZ <= '1' after 5 ns;
    fioE <= '1' after 20 ns;
    fioProd_in <= "1000" after 10 ns;
    fioDin <= "000", "110" after 25 ns;


end Behaviour;