library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.VGA_Generic_Package.all;

entity VGA_Mover is
	port (
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		R1 : out unsigned(9 downto 0);
		C1 : out unsigned(9 downto 0)
	);
end VGA_Mover;

--a - At initialization, the x and y coordinates are fixed so that the image is in the middle of the
--screen. Two variables, dx=1 and dy=-1, are initialized to represent the direction of movement
--(+1 increment by 1 pixel, - 1 decrement by 1 pixel).
--b - At each clock edge:
--x = x + dx
--y = y + dy
--if (x <0 or x + w > 640)
--dx = -dx
--if (y<0 or y + h > 480)
--dy = -dy

architecture archi of VGA_Mover is
	signal dx, dy : std_logic;
	signal x, y : unsigned(9 downto 0);
	-- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	constant w : unsigned(9 downto 0) := to_unsigned(268, 10);--10 é tamanho padrão para esta resolução paraconseguir calcular com as outras medias
	constant h : unsigned(9 downto 0) := to_unsigned(188, 10);
	--signal rom_addr_s : std_logic_vector(19 downto 0);

begin
	R1 <= y;
	C1 <= x;
	-- combinatoire pour reduir le clock
	control : process (clk, rst)
	begin
		-- para usar o rst e o clk tem q colocar if rst elsif clock
		-- se não ele só executa dentro do rst.

		if rst = '1' then
		--Defines the image in the center
			x <= TO_UNSIGNED(200, 10);
			y <= TO_UNSIGNED(150, 10); --bom tamanho
			--Restart the movement
			dx <= '1';
			dy <= '0';
			-- verifica a borda de subida do clock para fazer as mudanças
		elsif clk'EVENT and clk = '1' then
			if dx = '1' then
				x <= x + 1;
			elsif dx = '0' then
				x <= x - 1;
			end if;
 
			if dy = '1' then
				y <= y + 1;

			elsif dy = '0' then
				y <= y - 1;
			end if;
 
			if (x = 0) then
				dx <= '1';
			--eliminar 1 bit pra ele n ficar no limbo, tem q inverter antes para o póximo ciclo	
			elsif x + w >= 639 then
			dx <= '0';
			end if;
 
			if y = 0 then
				dy <= '1';
			elsif y + h >= 479 then
				dy <= '0';
			end if;
		end if;
	end process;
end archi;





--Repeat all the previous steps, but this time with the following constraints:
-- movement is carried out manually, using the buttons on the Basys3 board
-- the sprite is automatically blocked when it touches an edge of the screen
--You can include a debounce filter for the buttons in your design

