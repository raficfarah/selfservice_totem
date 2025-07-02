library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Totem is

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

end Totem;

architecture RTL of Totem is
	
	signal pinLd_Prod, pinRST_Prod 					: std_logic;
	signal pinLd_Bank, pinRST_Bank 	: std_logic;
    signal pinLd_Troco, pinRST_Troco 	: std_logic;

	signal pinMaior_B, pinMenor_P		: std_logic;

	component Datapath is
		port (
			prod_in 					: in std_logic_vector(3 downto 0);
			din 						: in std_logic_vector(2 downto 0);
			CLK 						: in std_logic;

			pinLd_Prod, pinRST_Prod 					: in std_logic;
			pinLd_Bank, pinRST_Bank 	: in std_logic;
			pinLd_Troco, pinRST_Troco 	: in std_logic;

			pinMaior_B 					: out std_logic;
			pinMenor_P 					: out std_logic;

			prod_out 					: out std_logic_vector(3 downto 0);
			troco_out 					: out std_logic_vector(12 downto 0);

			BCD_M 						: out std_logic_vector(6 downto 0);
			BCD_C 						: out std_logic_vector(6 downto 0);
			BCD_D 						: out std_logic_vector(6 downto 0);
			BCD_U 						: out std_logic_vector(6 downto 0)
    	);
	end component;
	
	--====--
	
	component Controladora is
		port (
			CLK, RST  		 		: in std_logic;
			E, Z			 		: in std_logic;
			Maior_B, Menor_P 		: in std_logic;

			Ld_Prod, RST_Prod	    		    : out std_logic;
			Ld_Bank, RST_Bank       : out std_logic;
			Ld_Troco, RST_Troco     : out std_logic;
			C, F 					: out std_logic
		);
	end component;

begin
	
	myDatapath : Datapath
	port map(
		prod_in => prod_in,
		din => din,
		CLK => CLK,

		pinLd_Prod => pinLd_Prod,
		pinRST_Prod => pinRST_Prod,
		pinLd_Bank => pinLd_Bank,
		pinRST_Bank => pinRST_Bank,
		pinLd_Troco => pinLd_Troco,
		pinRST_Troco => pinRST_Troco,
		pinMaior_B => pinMaior_B,
		pinMenor_P => pinMenor_P,
		
		prod_out => prod_out,
		troco_out => troco_out,
		BCD_M => M_out,
		BCD_C => C_out,
		BCD_D => D_out,
		BCD_U => U_out
	);
	
	--====--

	myControladora : Controladora
	port map(
		E => E,
		Z => Z,
		CLK => CLK,
		RST => RST,

		Maior_B => pinMaior_B,
		Menor_P => pinMenor_p,
		Ld_Prod => pinLd_Prod,
		RST_Prod => pinRST_Prod,
		Ld_Bank => pinLd_Bank,
		RST_Bank => pinRST_Bank,
		Ld_Troco => pinLd_Troco,
		RST_Troco => pinRST_Troco,

		C => C,
		F => F
	);
	
end RTL;
