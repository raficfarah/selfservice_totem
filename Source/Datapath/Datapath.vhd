library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is
    port (
        prod_in : in std_logic_vector(3 downto 0);
        din : in std_logic_vector(2 downto 0);
        CLK : in std_logic;

        pinLd_Prod : in std_logic;
        pinLd_Bank, pinRST_Bank : in std_logic;
        pinLd_Troco, pinRST_Troco : in std_logic;

        pinMaior_B : out std_logic;
        pinMenor_P : out std_logic;

        prod_out : out std_logic_vector(3 downto 0);
        troco_out : out std_logic_vector(12 downto 0);

        BCD_M : out std_logic_vector(6 downto 0);
        BCD_C : out std_logic_vector(6 downto 0);
        BCD_D : out std_logic_vector(6 downto 0);
        BCD_U : out std_logic_vector(6 downto 0)
    );

end Datapath;

architecture RTL of Datapath is

    signal sigProd, sigM, sigC, sigD, sigU : std_logic_vector(3 downto 0);
    signal sigDin, sigBank, sigPrice, sigTroco : std_logic_vector(12 downto 0);
    signal sigSoma, sigSub : unsigned(12 downto 0);

    component RegW is
        generic (
            W : natural := 4
        );

        port (
            CLK  : in std_logic;
            RST  : in std_logic;
            D    : in std_logic_vector((W - 1) downto 0);
            Q    : out std_logic_vector((W - 1) downto 0) := (others => '0');
            LOAD : in std_logic
        );
    end component;

    --====--

    component MUX_Din is
        generic (
            W : integer := 13
        );

        port (
            S  : in std_logic_vector(2 downto 0);
            I0 : in std_logic_vector((W - 1) downto 0) := "0000000011001"; -- 25
            I1 : in std_logic_vector((W - 1) downto 0) := "0000000110010"; -- 50
            I2 : in std_logic_vector((W - 1) downto 0) := "0000001100100"; -- 100
            I3 : in std_logic_vector((W - 1) downto 0) := "0000011001000"; -- 200
            I4 : in std_logic_vector((W - 1) downto 0) := "0000111110100"; -- 500
            I5 : in std_logic_vector((W - 1) downto 0) := "0001111101000"; -- 1000
            I6 : in std_logic_vector((W - 1) downto 0) := "0011111010000"; -- 2000
            I7 : in std_logic_vector((W - 1) downto 0) := "1001110001000"; -- 5000
            Z  : out std_logic_vector((W - 1) downto 0)
        );
    end component;

    --====--

    component Somador is
        generic (
            DATA_WIDTH : natural := 13
        );

        port (
            a : in unsigned ((DATA_WIDTH - 1) downto 0);
            b : in unsigned ((DATA_WIDTH - 1) downto 0);
            result : out unsigned ((DATA_WIDTH - 1) downto 0)
        );
    end component;

    --====--

    component Subtrator is
        generic (
            DATA_WIDTH : natural := 8
        );

        port (
            a : in unsigned ((DATA_WIDTH - 1) downto 0);
            b : in unsigned ((DATA_WIDTH - 1) downto 0);
            result : out unsigned ((DATA_WIDTH - 1) downto 0)
        );
    end component;

    --====--

    component Comparador is
        generic (
            DATA_WIDTH : natural := 13
        );

        port (
            a : in std_logic_vector ((DATA_WIDTH - 1) downto 0);
            b : in std_logic_vector ((DATA_WIDTH - 1) downto 0);
            maior : out std_logic;
            menor : out std_logic;
            igual : out std_logic
        );
    end component;

    --====--

    component BCD_Conv is
        port (
            entrada : in unsigned(12 downto 0); -- 13-bit binary input
            milhar : out std_logic_vector(3 downto 0);
            centena : out std_logic_vector(3 downto 0);
            dezena : out std_logic_vector(3 downto 0);
            unidade : out std_logic_vector(3 downto 0)
        );
    end component;

    --====--

    component BCD_7seg is
        port (
            entrada : in std_logic_vector(3 downto 0);
            saida : out std_logic_vector(6 downto 0)
        );
    end component;

    --====--

    component Prices is
        generic (
            W : integer := 13
        );

        port (
            S : in std_logic_vector(3 downto 0);
            data : out std_logic_vector((W - 1) downto 0)
        );
    end component;

    --====--

begin

    Prod : RegW
    generic map(
        W => 4
    )

    port map(
        CLK => CLK,
        RST => '0',
        D => prod_in,
        Q => sigProd,
        LOAD => pinLd_Prod
    );

    Bank : RegW
    generic map(
        W => 13
    )

    port map(
        CLK => CLK,
        RST => pinRST_Bank,
        D => std_logic_vector(sigSoma),
        Q => sigBank,
        LOAD => pinLd_Bank
    );

    Troco : RegW
    generic map(
        W => 13
    )

    port map(
        CLK => CLK,
        RST => pinRST_Troco,
        D => std_logic_vector(sigSub),
        Q => sigTroco,
        LOAD => pinLd_Troco
    );

    mySomador : Somador
    generic map(
        DATA_WIDTH => 13
    )

    port map(
        a => unsigned(sigBank),
        b => unsigned(sigDin),
        result => sigSoma
    );

    mySubtrator : Subtrator
    generic map(
        DATA_WIDTH => 13
    )

    port map(
        a => unsigned(sigBank),
        b => unsigned(sigPrice),
        result => sigSub
    );

    ComparadorGT : Comparador
    generic map(
        DATA_WIDTH => 13
    )

    port map(
        a => sigBank,
        B => "1001110001000",
        maior => pinMaior_B
    );

    ComparadorLT : Comparador
    generic map(
        DATA_WIDTH => 13
    )

    port map(
        a => sigBank,
        B => sigPrice,
        maior => pinMenor_P
    );

    myMUX_Din : MUX_Din
    generic map(
        W => 13
    )

    port map(
        S => din,
        Z => sigDin
    );

    myBCD_Conv : BCD_Conv
    port map(
        entrada => unsigned(sigTroco),
        milhar => sigM,
        centena => sigC,
        dezena => sigD,
        unidade => sigU
    );

    myBCD_M : BCD_7seg
    port map(
        entrada => sigM,
        saida => BCD_M
    );

    myBCD_C : BCD_7seg
    port map(
        entrada => sigC,
        saida => BCD_C
    );

    myBCD_D : BCD_7seg
    port map(
        entrada => sigD,
        saida => BCD_D
    );

    myBCD_U : BCD_7seg
    port map(
        entrada => sigU,
        saida => BCD_U
    );

    prod_out <= sigProd;
    troco_out <= sigTroco;

    myPrices : Prices
    generic map(
        W => 13
    )

    port map(
        S => sigProd,
        data => sigPrice
    );

end RTL; -- RTL