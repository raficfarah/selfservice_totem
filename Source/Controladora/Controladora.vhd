library ieee;
use ieee.std_logic_1164.all;

entity Controladora is
   port (
		CLK, RST  		 : in std_logic;
		E, Z			 : in std_logic;
		Maior_B, Menor_P : in std_logic;

		Ld_Prod	    		    : out std_logic;
		Ld_Bank, RST_Bank       : out std_logic;
		Ld_Troco, RST_Troco     : out std_logic;
		C, F 					: out std_logic
    );
end Controladora;

architecture RTL of Controladora is
	type estado is (S0, S1, S2, S3, S4, S5, S6, S7);
	signal estado_atual, proximo_estado: estado;
begin
	
   process(RST,CLK) is
	begin
		if (RST = '1') then
			estado_atual <= S0;
		elsif(rising_edge(CLK)) then
			estado_atual <= proximo_estado;
		end if;
	end process;
	
	process(E, Z, Maior_B, Menor_P) is
	begin
		case estado_atual is
			when S0 =>
				Ld_Prod <= '0';
				Ld_Bank <= '0';
				RST_Bank <= '0';
				Ld_Troco <= '0';
				RST_Troco <= '0';
				C <= '0';
				F <= '0';
				
				if (Z='1') then
					proximo_estado <= S1;
				else
					proximo_estado <= S0;
				end if;
				
			when S1 =>
				Ld_Prod <= '0';
				Ld_Bank <= '0';
				RST_Bank <= '0';
				Ld_Troco <= '0';
				RST_Troco <= '0';
				C <= '0';
				F <= '0';
				
				if (E='1') then
					proximo_estado <= S2;
				else
					proximo_estado <= S1;
				end if;
				
			when S2 =>
				Ld_Prod <= '1';
				Ld_Bank <= '1';
				RST_Bank <= '0';
				Ld_Troco <= '0';
				RST_Troco <= '0';
				C <= '0';
				F <= '0';
				
				proximo_estado <= S3;

			when S3 =>
				Ld_Prod <= '0';
				Ld_Bank <= '1';
				RST_Bank <= '0';
				Ld_Troco <= '0';
				RST_Troco <= '0';
				C <= '0';
				F <= '0';
				
				if (E = '0' and Maior_B = '0') then
					proximo_estado <= S3;
				elsif (E = '1' and Maior_B = '0') then
					proximo_estado <= S5;
				else
					proximo_estado <= S4;
				end if;
				
			when S4 =>
				Ld_Prod <= '0';
				Ld_Bank <= '0';
				RST_Bank <= '1';
				Ld_Troco <= '0';
				RST_Troco <= '0';
				C <= '0';
				F <= '1';
				
				proximo_estado <= S1;

			when S5 =>
				Ld_Prod <= '0';
				Ld_Bank <= '0';
				RST_Bank <= '0';
				Ld_Troco <= '0';
				RST_Troco <= '0';
				C <= '0';
				F <= '0';
				
				if (Menor_P = '1') then
					proximo_estado <= S4;
				else
					proximo_estado <= S6;
				end if;
			
			when S6 =>
				Ld_Prod <= '0';
				Ld_Bank <= '0';
				RST_Bank <= '0';
				Ld_Troco <= '1';
				RST_Troco <= '0';
				C <= '1';
				F <= '0';
				
				proximo_estado <= S7;

			when S7 =>
				Ld_Prod <= '0';
				Ld_Bank <= '0';
				RST_Bank <= '1';
				Ld_Troco <= '0';
				RST_Troco <= '1';
				C <= '1';
				F <= '0';
				
				proximo_estado <= S0;
			
			when others =>
				Ld_Prod    <= '0';
				Ld_Bank    <= '0';
				RST_Bank   <= '0';
				Ld_Troco   <= '0';
				RST_Troco  <= '0';
				C            <= '0';
				F            <= '0';
				proximo_estado <= S0;
		end case;
	end process;
end RTL;