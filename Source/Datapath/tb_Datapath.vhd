library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Datapath is
end tb_Datapath;

architecture Behaviour of tb_Datapath is

    component Datapath is
        port (
            prod_in                     : in std_logic_vector(3 downto 0);
            din                         : in std_logic_vector(2 downto 0);
            CLK                         : in std_logic;

            pinLd_Prod                  : in std_logic;
            pinLd_Bank, pinRST_Bank     : in std_logic;
            pinLd_Troco, pinRST_Troco   : in std_logic;

            pinMaior_B                  : out std_logic;
            pinMenor_P                  : out std_logic;

            prod_out                    : out std_logic_vector(3 downto 0);
            troco_out                   : out std_logic_vector(12 downto 0);

            BCD_M                       : out std_logic_vector(6 downto 0);
            BCD_C                       : out std_logic_vector(6 downto 0);
            BCD_D                       : out std_logic_vector(6 downto 0);
            BCD_U                       : out std_logic_vector(6 downto 0)
        );
    end component;

begin

    myDatapath : Datapath
    port map(
        
    );

end Behaviour;