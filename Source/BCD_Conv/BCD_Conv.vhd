library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_Conv is
    Port (
        entrada   : in  unsigned(12 downto 0); -- 13-bit binary input
        milhar   : out std_logic_vector(3 downto 0);
        centena  : out std_logic_vector(3 downto 0);
        dezena   : out std_logic_vector(3 downto 0);
        unidade  : out std_logic_vector(3 downto 0)
    );
end BCD_Conv;

architecture Behaviour of BCD_Conv is
begin
    process(entrada)
        variable temp : unsigned(28 downto 0); -- 13 (bin) + 4*4 (BCD)
        variable i : integer;
    begin
        temp := (others => '0');
        temp(12 downto 0) := entrada;

        -- Double Dabble Algorithm
        for i in 0 to 12 loop
            -- Add 3 to each BCD digit >= 5
            if temp(16 downto 13) >= "0101" then
                temp(16 downto 13) := temp(16 downto 13) + "0011";
            end if;
            if temp(20 downto 17) >= "0101" then
                temp(20 downto 17) := temp(20 downto 17) + "0011";
            end if;
            if temp(24 downto 21) >= "0101" then
                temp(24 downto 21) := temp(24 downto 21) + "0011";
            end if;
            if temp(28 downto 25) >= "0101" then
                temp(28 downto 25) := temp(28 downto 25) + "0011";
            end if;

            -- Shift left
            temp := temp(27 downto 0) & '0';
        end loop;

        -- Assign outputs
        unidade  <= std_logic_vector(temp(16 downto 13));
        dezena   <= std_logic_vector(temp(20 downto 17));
        centena  <= std_logic_vector(temp(24 downto 21));
        milhar   <= std_logic_vector(temp(28 downto 25));
    end process;

end Behaviour;