library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX_16x1_13bits is
	generic (
		W 	: integer := 13
	);
	
	Port ( 
		S0  : in std_logic;
		S1  : in std_logic;
		S2  : in std_logic;
		S3  : in std_logic;
		I0  : in std_logic_vector((W-1) downto 0);
		I1  : in std_logic_vector((W-1) downto 0);
		I2  : in std_logic_vector((W-1) downto 0);
		I3  : in std_logic_vector((W-1) downto 0);
		I4  : in std_logic_vector((W-1) downto 0);
		I5  : in std_logic_vector((W-1) downto 0);
		I6  : in std_logic_vector((W-1) downto 0);
		I7  : in std_logic_vector((W-1) downto 0);
		I8  : in std_logic_vector((W-1) downto 0);
		I9  : in std_logic_vector((W-1) downto 0);
		I10 : in std_logic_vector((W-1) downto 0);
		I11 : in std_logic_vector((W-1) downto 0);
		I12 : in std_logic_vector((W-1) downto 0);
		I13 : in std_logic_vector((W-1) downto 0);
		I14 : in std_logic_vector((W-1) downto 0);
		I15 : in std_logic_vector((W-1) downto 0);
		Z	: out std_logic_vector((W-1) downto 0)
	);
end MUX_16x1_13bits;

architecture Behavioral of MUX_16x1_13bits is
begin
	Z <= 
		I0 when S0 = '0' and S1 = '0' and S2 = '0' and S3 = '0' else  -- 0000
		I1 when S0 = '0' and S1 = '0' and S2 = '0' and S3 = '1' else  -- 0001
		I2 when S0 = '0' and S1 = '0' and S2 = '1' and S3 = '0' else  -- 0010
		I3 when S0 = '0' and S1 = '0' and S2 = '1' and S3 = '1' else  -- 0011
		I4 when S0 = '0' and S1 = '1' and S2 = '0' and S3 = '0' else  -- 0100
		I5 when S0 = '0' and S1 = '1' and S2 = '0' and S3 = '1' else  -- 0101
		I6 when S0 = '0' and S1 = '1' and S2 = '1' and S3 = '0' else  -- 0110
		I7 when S0 = '0' and S1 = '1' and S2 = '1' and S3 = '1' else  -- 0111
		I8 when S0 = '1' and S1 = '0' and S2 = '0' and S3 = '0' else  -- 1000
		I9 when S0 = '1' and S1 = '0' and S2 = '0' and S3 = '1' else  -- 1001
		I10 when S0 = '1' and S1 = '0' and S2 = '1' and S3 = '0' else -- 1010
		I11 when S0 = '1' and S1 = '0' and S2 = '1' and S3 = '1' else -- 1011
		I12 when S0 = '1' and S1 = '1' and S2 = '0' and S3 = '0' else -- 1100
		I13 when S0 = '1' and S1 = '1' and S2 = '0' and S3 = '1' else -- 1101
		I14 when S0 = '1' and S1 = '1' and S2 = '1' and S3 = '0' else -- 1110
		I15 when S0 = '1' and S1 = '1' and S2 = '1' and S3 = '1' else -- 1111
		"0000000000000";		   	   	
end Behavioral;
