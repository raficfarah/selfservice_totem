library ieee;
use ieee.std_logic_1164.all;

entity Controladora is
   port (
	   CLK   			: 	in    std_logic; -- clock input
		RESET	 			:	in 	std_logic;
		Maior, Menor	: 	in		std_logic;
		
		LoadE, ResetMA	: 	out std_logic;
		S, D, A			: 	out std_logic
		
      --S       : in    std_logic; -- control input
      --A,B,C,D : in    std_logic; -- data inputs
		 
      --Q       : out   std_logic  -- data output
    );
end Controladora;

architecture RTL of Controladora is
	type estado is (S0,S1,S2,S3,S4);
	
	--attribute enum_encoding : string;
	--attribute enum_encoding of estado : type is "00 01 10 11";
	
	signal estado_atual, proximo_estado: estado;
begin
	
   process(RESET,CLK) is
	begin
		if (RESET = '1') then
			estado_atual <= S0;
		elsif(rising_edge(CLK)) then
			estado_atual <= proximo_estado;
		end if;
	end process;
	
	process(Maior, Menor, estado_atual) is
	begin
		case estado_atual is
			when S0 =>
				 LoadE <= '1';
				 ResetMA <= '1';
				 S <= '1';
				 D <= '1';
				 A <= '1';
				 
				 proximo_estado <= S1;
				
			when S1 =>
				LoadE <= '0';
				ResetMA <= '0';
				A <= '0';
				
				S <= '1'; -- S e D recebem valores simbolicos para completar a tabela verdade
				D <= '1';
				
				if (Maior='1') then
					proximo_estado <= S2;
				elsif (Maior='0' and Menor='1') then
					proximo_estado <= S3;
				elsif (Maior='0' and Menor='0') then
					proximo_estado <= S4;
				else
					proximo_estado <= S1;
				end if;
				
			when S2 =>
				LoadE <= '1';
				ResetMA <= '0';
				A <= '1';
				
				S <= '1';
				D <= '0';
				
				proximo_estado <= S1;
				
			when S3 =>
				LoadE <= '1';
				ResetMA <= '0';
				A <= '1';
				
				S <= '0';
				D <= '1';
				
				proximo_estado <= S1;
				
			when S4 =>
				LoadE <= '1';
				ResetMA <= '0';
				A <= '1';
				
				S <= '0';
				D <= '0';
				
				proximo_estado <= S1;
			when others =>
				LoadE <= '0';
				ResetMA <= '0';
				A <= '0';
				
				S <= '1';
				D <= '1';
			
				proximo_estado <= S1;
		end case;
	end process;
end RTL;

