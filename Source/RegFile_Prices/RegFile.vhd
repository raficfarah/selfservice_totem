library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RegFile is
	generic (
		W	: integer := 13
	);

	Port ( 
		S0 : in std_logic;
		S1 : in std_logic;
		S2 : in std_logic;
		S3 : in std_logic;
		CLK : in std_logic;
		data 	 : out std_logic_vector((W-1) downto 0)

	);
end RegFile;

architecture Behavioral of RegFile is
-- components

	-- 13 bit Register for register file
	component RegW is
		generic(
			W	: natural := 13
		);
	
		Port(
			D : in std_logic_vector((W-1) downto 0);
			load : in std_logic;
			CLK : in std_logic;
			Q : out std_logic_vector((W-1) downto 0)
		);
	END component;
	
	
	-- 16x1 13 bits multiplexer
	component MUX_16x1_13bits is
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
	END component;
	
	-- signals
	signal 
		reg0_q, reg1_q, reg2_q, reg3_q,
		reg4_q, reg5_q, reg6_q, reg7_q,
		reg8_q, reg9_q, reg10_q, reg11_q,
		reg12_q, reg13_q, reg14_q, reg15_q, sig_data : std_logic_vector(12 downto 0);
		
	begin
	
	-- register 0: 50
	reg00: RegW
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0000000110010",
		load => '1',
		CLK => CLK,
		Q => reg0_q
	);
	
	-- register 1: 100
	reg01: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0000001100100",
		load => '1',
		CLK => CLK,
		Q => reg1_q
	);
	
	-- register 2: 250
	reg02: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0000011111010",
		load => '1',
		CLK => CLK,
		Q => reg2_q
	);
	
	-- register 3: 500
	reg03: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0000111110100",
		load => '1',
		CLK => CLK,
		Q => reg3_q
	);
	
	-- register 4: 900
	reg04: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0001110000100",
		load => '1',
		CLK => CLK,
		Q => reg4_q
	);
	
	-- register 5: 1200
	reg05: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0010010110000",
		load => '1',
		CLK => CLK,
		Q => reg5_q
	);
	
	-- register 6: 4500
	reg06: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "1000110010100",
		load => '1',
		CLK => CLK,
		Q => reg6_q
	);
	
	-- register 7: 3000
	reg07: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0101110111000",
		load => '1',
		CLK => CLK,
		Q => reg7_q
	);
	
	-- register 8: 2000
	reg08: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0011111010000",
		load => '1',
		CLK => CLK,
		Q => reg8_q
	);
	
	-- register 9: 3975
	reg09: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0111110000111",
		load => '1',
		CLK => CLK,
		Q => reg9_q
	);

	-- register 10: 5000
	reg10: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "1001110001000",
		load => '1',
		CLK => CLK,
		Q => reg10_q
	);
	
	-- register 11: 6000
	reg11: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "1011101110000",
		load => '1',
		CLK => CLK,
		Q => reg11_q
	);
	
	-- register 12: 75
	reg12: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0000001001011",
		load => '1',
		CLK => CLK,
		Q => reg12_q
	);
	
	-- register 13: 1000
	reg13: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0001111101000",
		load => '1',
		CLK => CLK,
		Q => reg13_q
	);
	
	-- register 14: 750
	reg14: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0001011101110",
		load => '1',
		CLK => CLK,
		Q => reg14_q
	);
	
	-- register 15: 2400
	reg15: RegW 
	generic map(
		W => 13
	)
	
	Port Map(
		D => "0100101100000",
		load => '1',
		CLK => CLK,
		Q => reg15_q
	);
	

	myMUX : MUX_16x1_13bits  
	Port Map(
		S0 => S0,
		S1 => S1,
		S2 => S2,
		S3 => S3,
		I0 => reg0_q,
		I1 => reg1_q,
		I2 => reg2_q,
		I3 => reg3_q,
		I4 => reg4_q,
		I5 => reg5_q,
		I6 => reg6_q,
		I7 => reg7_q,
		I8 => reg8_q,
		I9 => reg9_q,
		I10 => reg10_q,
		I11 => reg11_q,
		I12 => reg12_q,
		I13 => reg13_q,
		I14 => reg14_q,
		I15 => reg15_q,
		Z => sig_data
	);


	data <= sig_data;
	
end Behavioral;
