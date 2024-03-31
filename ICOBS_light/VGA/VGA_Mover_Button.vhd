library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.VGA_Generic_Package.all;

entity VGA_Mover_Button is
	port (
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		btn : in std_logic_vector (3 downto 0);
		R1 : out unsigned(9 downto 0);
		C1 : out unsigned(9 downto 0)
	);
end VGA_Mover_Button;

architecture Behavioral of VGA_Mover_Button is

	constant w : unsigned(9 downto 0) := to_unsigned(268, 10);--10 é tamanho padrão para esta resolução paraconseguir calcular com as outras medias
	constant h : unsigned(9 downto 0) := to_unsigned(188, 10);
	signal y, x : unsigned(9 downto 0);
	signal dx, dy, trash : std_logic;
begin
	R1 <= y;
	C1 <= x;
	controle : process (clk, rst, btn)
	begin
		if rst = '1' then
			--Defines the image in the center
			C1 <= TO_UNSIGNED(150, 10);
			R1 <= TO_UNSIGNED(150, 10); --boa altura pro centro
			-- verifica a borda de subida do clock para fazer as mudanças
		elsif rising_edge(clk) then
				if dx = '0'then
				-- and x >0 and  x + w <= 639 
					x <= x + 1;
				elsif dx = '1' then
					x <= x - 1;
				end if;
				
				if dy = '0'then
				--and y>0 and y + h <= 479 
					y <= y + 1;
				elsif dy = '1' then
					y <= y - 1;
				end if;
			end if;
    end process;
 
 
		atribuiBotao : process (btn)
		begin
			case btn is
				when "0000" => dx <= '1'; dy <='0';
				when "0001" => dx <= '0';dy <='0';
				when "0010" => dy <= '1';dx <='0';
				when "0100" => dy <= '0';dx <='0';
				when others => dy <='1';dx <='1';
			end case;
		end process;
end Behavioral;