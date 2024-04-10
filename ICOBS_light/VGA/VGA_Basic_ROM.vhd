LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY VGA_Display_Basic_ROM IS
	PORT (
	   vidon : IN STD_LOGIC;
		hc : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		vc : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		IMG1: IN std_logic_vector(11 DOWNTO 0);
		IMG2: IN std_logic_vector(11 DOWNTO 0);
		IMG3: IN std_logic_vector(11 DOWNTO 0);
		BACKGROUND: in  STD_LOGIC_VECTOR (11 downto 0);
		R1: IN unsigned(9 DOWNTO 0);
		C1: IN unsigned(9 DOWNTO 0);
		R2: IN unsigned(9 DOWNTO 0);
		C2: IN unsigned(9 DOWNTO 0);
		R3: IN unsigned(9 DOWNTO 0);
		C3: IN unsigned(9 DOWNTO 0);
		vgaRed : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		vgaGreen : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		vgaBlue : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		rom_addr1 : OUT STD_LOGIC_VECTOR (12 DOWNTO 0);--TAMANHO AQUI
		rom_addr2 : OUT STD_LOGIC_VECTOR (12 DOWNTO 0);--TAMANHO AQUI]
		rom_addr3 : OUT STD_LOGIC_VECTOR (10 DOWNTO 0)--TAMANHO AQUI
	);
END VGA_Display_Basic_ROM;

ARCHITECTURE Behavioral OF VGA_Display_Basic_ROM IS

	CONSTANT hbp : unsigned(9 DOWNTO 0) := "0010010000"; -- horizontal back porch = 128 + 16 = 144 ou 96 + 48
	CONSTANT vbp : unsigned(9 DOWNTO 0) := "0000011111"; -- vertical back porch = 2 + 29 = 31

--------------------------- sprite 1 -----------------------------
	SIGNAL spriteon1 : STD_LOGIC;
	-- Função de conversão entre 2 argumentos sendo o primeiro é o valor a ser convertido e o tamanho para qual deve ser convertido
	-- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	--TAMANHO AQUI
	CONSTANT w1 : unsigned(9 DOWNTO 0) := to_unsigned(79, 10);--10 é tamanho padrão para esta resolução para conseguir calcular com as outras medias
	CONSTANT h1 : unsigned(9 DOWNTO 0) := to_unsigned(79, 10); 
	SIGNAL xpix1, ypix1 : unsigned(9 DOWNTO 0);
	SIGNAL rom_addr_s1 : std_logic_vector(19 DOWNTO 0);
	
--------------------------- sprite 2 -----------------------------
SIGNAL spriteon2 : STD_LOGIC;
--TAMANHO AQUI
-- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	CONSTANT w2 : unsigned(9 DOWNTO 0) := to_unsigned(78, 10);--10 é tamanho padrão para esta resolução para conseguir calcular com as outras medias
	CONSTANT h2 : unsigned(9 DOWNTO 0) := to_unsigned(78, 10); 
	SIGNAL xpix2, ypix2 : unsigned(9 DOWNTO 0);
	SIGNAL rom_addr_s2 : std_logic_vector(19 DOWNTO 0);
-------------------------------------------------------------------------------------

--------------------------- sprite 3 -----------------------------
SIGNAL spriteon3 : STD_LOGIC;
--TAMANHO AQUI
-- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	CONSTANT w3 : unsigned(9 DOWNTO 0) := to_unsigned(34, 10);--10 é tamanho padrão para esta resolução para conseguir calcular com as outras medias
	CONSTANT h3 : unsigned(9 DOWNTO 0) := to_unsigned(34, 10); 
	SIGNAL xpix3, ypix3 : unsigned(9 DOWNTO 0);
	SIGNAL rom_addr_s3 : std_logic_vector(19 DOWNTO 0);
-------------------------------------------------------------------------------------
	

BEGIN
--------------------------- sprite 1 ---------------------------------------------------------
xpix1 <= unsigned(hc) - (hbp + C1);
ypix1 <= unsigned(vc) - (vbp + R1);
rom_addr_s1 <= std_logic_vector((ypix1*w1) + xpix1);

rom_addr1 <= rom_addr_s1(12 downto 0); --TAMANHO AQUI

spriteon1 <= '1' WHEN (unsigned(hc) >= C1 + hbp AND unsigned(hc) < C1 + hbp + w1 AND
	            unsigned(vc) >= R1 + vbp AND unsigned(vc) < R1 + vbp + h1)
                ELSE '0';
                

--------------------------- sprite 2 ----------------------------------------------------------
xpix2 <= unsigned(hc) - (hbp + C2);
ypix2 <= unsigned(vc) - (vbp + R2);
rom_addr_s2 <= std_logic_vector((ypix2*w2) + xpix2);

rom_addr2 <= rom_addr_s2(12 downto 0); --TAMANHO AQUI

spriteon2 <= '1' WHEN (unsigned(hc) >= C2 + hbp AND unsigned(hc) < C2 + hbp + w2 AND
	            unsigned(vc) >= R2 + vbp AND unsigned(vc) < R2 + vbp + h2)
               ELSE '0';
  ----------------------------------------------------------------------------------------------  
  
--------------------------- sprite 3 ----------------------------------------------------------
xpix3 <= unsigned(hc) - (hbp + C3);
ypix3 <= unsigned(vc) - (vbp + R3);
rom_addr_s3 <= std_logic_vector((ypix3*w3) + xpix3);

rom_addr3 <= rom_addr_s3(10 downto 0); --TAMANHO AQUI

spriteon3 <= '1' WHEN (unsigned(hc) >= C3 + hbp AND unsigned(hc) < C3 + hbp + w3 AND
	            unsigned(vc) >= R3 + vbp AND unsigned(vc) < R3 + vbp + h3)
               ELSE '0';
  ----------------------------------------------------------------------------------------------             
               
-------------------------------------------ESCOLHE O BOM VETOR-----------------------------------------------------
	PROCESS (spriteon1,spriteon2,spriteon3, vidon, IMG1,IMG2,IMG3)
	BEGIN
		vgaRed <= (OTHERS => '0');
		vgaGreen <= (OTHERS => '0');
		vgaBlue <= (OTHERS => '0');
		--Se o spriteon estiver ativo é para mostrar a cruzinha definida no M pelo ROM
		--Imprime o sprite 1 se estiver dentro da tela
		IF vidon = '1' AND spriteon1 = '1' THEN
			vgaRed <= IMG1 (11 DOWNTO 8);
			vgaGreen <=IMG1 (7 DOWNTO 4);
			vgaBlue <= IMG1 (3 DOWNTO 0);
		--Imprime o sprite 2 se estiver dentro da tela
		ELSIF vidon = '1' AND spriteon2 = '1' THEN
			vgaRed <= IMG2 (11 DOWNTO 8);
			vgaGreen <=IMG2 (7 DOWNTO 4);
			vgaBlue <= IMG2 (3 DOWNTO 0);
	   --Imprime o sprite 3 se estiver dentro da tela
		ELSIF vidon = '1' AND spriteon3 = '1' THEN
			vgaRed <= IMG3 (11 DOWNTO 8);
			vgaGreen <=IMG3 (7 DOWNTO 4);
			vgaBlue <= IMG3 (3 DOWNTO 0);
			--Muda a cor de fundo BACKGROUND
		ELSIF vidon = '1' THEN
		vgaRed <= BACKGROUND(11 downto 8) ;--(others =>'1');
		vgaGreen <= BACKGROUND(7 downto 4);-- 
		vgaBlue  <= BACKGROUND(3 downto 0); --(others =>'0');

 
		END IF;
	END PROCESS;

END Behavioral;