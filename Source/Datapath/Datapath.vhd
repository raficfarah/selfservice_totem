library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is
    
    port (
        prod_in : in std_logic_vector(3 downto 0);
        din     : in std_logic_vector(2 downto 0);
        CLK     : in std_logic;

        pinLd_Prod                : in std_logic;
        pinLd_Bank, pinRST_Bank   : in std_logic;
        pinLd_Troco, pinRST_Troco : in std_logic;

        pinMaior_B : out std_logic;
        pinMenor_P : out std_logic;

        prod_out  : out std_logic_vector(4 downto 0);
        troco_out : out std_logic_vector(12 downto 0);

        trocoBCD_0 : out std_logic_vector(6 downto 0);
        trocoBCD_1 : out std_logic_vector(6 downto 0);
        trocoBCD_2 : out std_logic_vector(6 downto 0);
        trocoBCD_3 : out std_logic_vector(6 downto 0);
    );

end Datapath;

architecture RTL of Datapath is

    signal sigProd, sigM, sigC, sigD, sigU : std_logic_vector(3 downto 0);  
    signal sigDin, sigBank, sigSoma, sigSub, sigPrice, sigTroco : std_logic_vector(12 downto 0);

begin

    component RegW is       
        generic (
            W	: natural := 4
        );
        
        port(
            CLK	: in std_logic;
            D		: in std_logic_vector((W-1) downto 0);
            Q		: out std_logic_vector((W-1) downto 0) := (others => '0');
            LOAD : in std_logic
        );
    end component;

    --====--

    component RegW is
    end component;

    --====--

    component RegW is
    end component;

    --====--

    component RegW is
    end component;

    --====--

    component RegW is
    end component;

    --====--

    component RegW is
    end component;

    --====--

    component RegW is
    end component;

    --====--

    component RegW is
    end component;

    --====--
    
end RTL; -- RTL