library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_unsigned.all;

entity VGA_clkdiv is
--Como fazer o cálculo do clock e manter em mente ele...
--F_Entrada/2*F_Desejada = Resultado q deve para ser convertido para binário para definição do N (número de bits)

	generic (N : integer := 19);
	port (
		mclk    : in std_logic;
		rst    : in std_logic;
		clk0001 : out std_logic
	);
end VGA_clkdiv;

architecture archi of VGA_clkdiv is
    --signal clk_value : std_logic := '0';
 	signal counter : std_logic_vector (N-1 downto 0);

 begin
	--combinatoire pour reduir le clock
	control : process (mclk, rst)
	begin
	-- para usar o rst e o clk tem q colocar if rst elsif clock
	-- se não ele só executa dentro do rst.
		if rst = '1' then
			counter <= (others=>'0');
			-- verifica a borda de subida do clock para fazer as mudanças
		elsif mclk'EVENT and mclk = '1' then 
					counter <= counter + 1;
			end if;
		end process;
clk0001 <= counter(N-1);
end archi;