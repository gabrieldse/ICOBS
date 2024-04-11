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
		IMG4: IN std_logic_vector(11 DOWNTO 0);
		BACKGROUND: in  STD_LOGIC_VECTOR (11 downto 0);
		R1: IN unsigned(9 DOWNTO 0);
		C1: IN unsigned(9 DOWNTO 0);
		R2: IN unsigned(9 DOWNTO 0);
		C2: IN unsigned(9 DOWNTO 0);
		R3: IN unsigned(9 DOWNTO 0);
		C3: IN unsigned(9 DOWNTO 0);
		R4: IN unsigned(9 DOWNTO 0);
		C4: IN unsigned(9 DOWNTO 0);
		vgaRed : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		vgaGreen : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		vgaBlue : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		rom_addr1 : OUT STD_LOGIC_VECTOR (12 DOWNTO 0);--TAMANHO AQUI
		rom_addr2 : OUT STD_LOGIC_VECTOR (12 DOWNTO 0);--TAMANHO AQUI]
		rom_addr3 : OUT STD_LOGIC_VECTOR (10 DOWNTO 0);--TAMANHO AQUI
		rom_addr4 : OUT STD_LOGIC_VECTOR (10 DOWNTO 0); --TAMANHO AQUI
		----- sprite 5 -------- NEW IMAGE
		IMG5: IN std_logic_vector(11 DOWNTO 0);
		R5: IN unsigned(9 DOWNTO 0);
		C5: IN unsigned(9 DOWNTO 0);
		rom_addr5 : OUT STD_LOGIC_VECTOR (10 DOWNTO 0);--TAMANHO AQUI
		----- sprite 6 -------- NEW IMAGE
		IMG6: IN std_logic_vector(11 DOWNTO 0);
		R6: IN unsigned(9 DOWNTO 0);
		C6: IN unsigned(9 DOWNTO 0);
		rom_addr6 : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);--TAMANHO AQUI
		----- sprite 7 -------- NEW IMAGE
		IMG7: IN std_logic_vector(11 DOWNTO 0);
		R7: IN unsigned(9 DOWNTO 0);
		C7: IN unsigned(9 DOWNTO 0);
		rom_addr7 : OUT STD_LOGIC_VECTOR (8 DOWNTO 0)--TAMANHO AQUI
		----- sprite 8 -------- NEW IMAGE
		--IMG8: IN std_logic_vector(11 DOWNTO 0);
		--R8: IN unsigned(9 DOWNTO 0);
		--C8: IN unsigned(9 DOWNTO 0);
		--rom_addr8 : OUT STD_LOGIC_VECTOR (18 DOWNTO 0);--TAMANHO AQUI
		----- sprite 9 -------- NEW IMAGE
		--IMG9: IN std_logic_vector(11 DOWNTO 0);
		--R9: IN unsigned(9 DOWNTO 0);
		--C9: IN unsigned(9 DOWNTO 0);
		--rom_addr9 : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);--TAMANHO AQUI
		----- sprite 10 -------- NEW IMAGE
		--IMG10: IN std_logic_vector(11 DOWNTO 0);
		--R10: IN unsigned(9 DOWNTO 0);
		--C10: IN unsigned(9 DOWNTO 0);
		--rom_addr10 : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--TAMANHO AQUI
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

--------------------------- sprite 4 -----------------------------
SIGNAL spriteon4 : STD_LOGIC;
--TAMANHO AQUI
    -- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	CONSTANT w4 : unsigned(9 DOWNTO 0) := to_unsigned(34, 10);
	CONSTANT h4 : unsigned(9 DOWNTO 0) := to_unsigned(34, 10); 
	SIGNAL xpix4, ypix4 : unsigned(9 DOWNTO 0);
	SIGNAL rom_addr_s4 : std_logic_vector(19 DOWNTO 0);
-------------------------------------------------------------------------------------	

--------------------------- sprite 5 -----------------------------
SIGNAL spriteon5 : STD_LOGIC;
--TAMANHO AQUI
    -- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	CONSTANT w5 : unsigned(9 DOWNTO 0) := to_unsigned(34, 10);
	CONSTANT h5 : unsigned(9 DOWNTO 0) := to_unsigned(34, 10); 
	SIGNAL xpix5, ypix5 : unsigned(9 DOWNTO 0);
	SIGNAL rom_addr_s5 : std_logic_vector(19 DOWNTO 0);
-------------------------------------------------------------------
--------------------------- sprite 6 -----------------------------
SIGNAL spriteon6 : STD_LOGIC;
--TAMANHO AQUI
    -- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	CONSTANT w6 : unsigned(9 DOWNTO 0) := to_unsigned(24, 10);
	CONSTANT h6 : unsigned(9 DOWNTO 0) := to_unsigned(24, 10); 
	SIGNAL xpix6, ypix6 : unsigned(9 DOWNTO 0);
	SIGNAL rom_addr_s6 : std_logic_vector(19 DOWNTO 0);
-------------------------------------------------------------------
--------------------------- sprite 7 -----------------------------
SIGNAL spriteon7 : STD_LOGIC;
--TAMANHO AQUI
    -- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	CONSTANT w7 : unsigned(9 DOWNTO 0) := to_unsigned(20, 10);
	CONSTANT h7 : unsigned(9 DOWNTO 0) := to_unsigned(15, 10); 
	SIGNAL xpix7, ypix7 : unsigned(9 DOWNTO 0);
	SIGNAL rom_addr_s7 : std_logic_vector(19 DOWNTO 0);
-------------------------------------------------------------------

--------------------------- sprite 8 -----------------------------
--SIGNAL spriteon8 : STD_LOGIC;
--TAMANHO AQUI
    -- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	--CONSTANT w8 : unsigned(9 DOWNTO 0) := to_unsigned(xx, 10);
	--CONSTANT h8 : unsigned(9 DOWNTO 0) := to_unsigned(xx, 10); 
	--SIGNAL xpix8, ypix8 : unsigned(9 DOWNTO 0);
	--SIGNAL rom_addr_s8 : std_logic_vector(19 DOWNTO 0);
-------------------------------------------------------------------

--------------------------- sprite 9 -----------------------------
--SIGNAL spriteon9 : STD_LOGIC;
--TAMANHO AQUI
    -- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	--CONSTANT w9 : unsigned(9 DOWNTO 0) := to_unsigned(230, 10);
	--CONSTANT h9 : unsigned(9 DOWNTO 0) := to_unsigned(175, 10); 
	--SIGNAL xpix9, ypix9 : unsigned(9 DOWNTO 0);
	--SIGNAL rom_addr_s9 : std_logic_vector(19 DOWNTO 0);
-------------------------------------------------------------------

--------------------------- sprite 10 -----------------------------
--SIGNAL spriteon10 : STD_LOGIC;
--TAMANHO AQUI
    -- W =LARGURA Do sprite
	-- H = ALTURA Do sprite
	--CONSTANT w10 : unsigned(9 DOWNTO 0) := to_unsigned(230, 10);
	--CONSTANT h10 : unsigned(9 DOWNTO 0) := to_unsigned(175, 10); 
	--SIGNAL xpix10, ypix10 : unsigned(9 DOWNTO 0);
	--SIGNAL rom_addr_s10 : std_logic_vector(19 DOWNTO 0);
-------------------------------------------------------------------



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
  
 --------------------------- sprite 4 --------------------------------------------------------
xpix4 <= unsigned(hc) - (hbp + C4);
ypix4 <= unsigned(vc) - (vbp + R4);
rom_addr_s4 <= std_logic_vector((ypix4*w4) + xpix4);

rom_addr4 <= rom_addr_s4(10 downto 0); --TAMANHO AQUI

spriteon4 <= '1' WHEN (unsigned(hc) >= C4 + hbp AND unsigned(hc) < C4 + hbp + w4 AND
	            unsigned(vc) >= R4 + vbp AND unsigned(vc) < R4 + vbp + h4)
               ELSE '0';
 ---------------------------------------------------------------------------------------------- 
 
  --------------------------- sprite 5 --------------------------------------------------------
xpix5 <= unsigned(hc) - (hbp + C5);
ypix5 <= unsigned(vc) - (vbp + R5);
rom_addr_s5 <= std_logic_vector((ypix5*w5) + xpix5);

rom_addr5 <= rom_addr_s5(10 downto 0); --TAMANHO AQUI

spriteon5 <= '1' WHEN (unsigned(hc) >= C5 + hbp AND unsigned(hc) < C5 + hbp + w5 AND
	            unsigned(vc) >= R5 + vbp AND unsigned(vc) < R5 + vbp + h5)
               ELSE '0';
 ----------------------------------------------------------------------------------------------  
  --------------------------- sprite 6 --------------------------------------------------------
xpix6 <= unsigned(hc) - (hbp + C6);
ypix6 <= unsigned(vc) - (vbp + R6);
rom_addr_s6 <= std_logic_vector((ypix6*w6) + xpix6);

rom_addr6 <= rom_addr_s6(9 downto 0); --TAMANHO AQUI

spriteon6 <= '1' WHEN (unsigned(hc) >= C6 + hbp AND unsigned(hc) < C6 + hbp + w6 AND
	            unsigned(vc) >= R6 + vbp AND unsigned(vc) < R6 + vbp + h6)
               ELSE '0';
 ----------------------------------------------------------------------------------------------   
  --------------------------- sprite 7 --------------------------------------------------------
xpix7 <= unsigned(hc) - (hbp + C7);
ypix7 <= unsigned(vc) - (vbp + R7);
rom_addr_s7 <= std_logic_vector((ypix7*w7) + xpix7);

rom_addr7 <= rom_addr_s7(8 downto 0); --TAMANHO AQUI

spriteon7 <= '1' WHEN (unsigned(hc) >= C7 + hbp AND unsigned(hc) < C7 + hbp + w7 AND
	            unsigned(vc) >= R7 + vbp AND unsigned(vc) < R7 + vbp + h7)
               ELSE '0';
 ----------------------------------------------------------------------------------------------
 --------------------------- sprite 8 --------------------------------------------------------
--xpix8 <= unsigned(hc) - (hbp + C8);
--ypix8 <= unsigned(vc) - (vbp + R8);
--rom_addr_s8 <= std_logic_vector((ypix8*w8) + xpix8);

--rom_addr8 <= rom_addr_s8(18 downto 0); --TAMANHO AQUI

--spriteon8 <= '1' WHEN (unsigned(hc) >= C8 + hbp AND unsigned(hc) < C8 + hbp + w8 AND
	            --unsigned(vc) >= R8 + vbp AND unsigned(vc) < R8 + vbp + h8)
               --ELSE '0';
 ----------------------------------------------------------------------------------------------
 
 --------------------------- sprite 9 --------------------------------------------------------
--xpix9 <= unsigned(hc) - (hbp + C9);
--ypix9 <= unsigned(vc) - (vbp + R9);
--rom_addr_s9 <= std_logic_vector((ypix9*w9) + xpix9);

--rom_addr9 <= rom_addr_s9(15 downto 0); --TAMANHO AQUI

--spriteon9 <= '1' WHEN (unsigned(hc) >= C9 + hbp AND unsigned(hc) < C9 + hbp + w9 AND
	            --unsigned(vc) >= R9 + vbp AND unsigned(vc) < R9 + vbp + h9)
               --ELSE '0';
 ----------------------------------------------------------------------------------------------

 --------------------------- sprite 10 --------------------------------------------------------
--xpix10 <= unsigned(hc) - (hbp + C10);
--ypix10 <= unsigned(vc) - (vbp + R10);
--rom_addr_s10 <= std_logic_vector((ypix10*w10) + xpix10);

--rom_addr10 <= rom_addr_s10(15 downto 0); --TAMANHO AQUI

--spriteon10 <= '1' WHEN (unsigned(hc) >= C10 + hbp AND unsigned(hc) < C10 + hbp + w10 AND
	            --unsigned(vc) >= R10 + vbp AND unsigned(vc) < R10 + vbp + h10)
               --ELSE '0';
 ----------------------------------------------------------------------------------------------
 
       
               
-------------------------------------------ESCOLHE O BOM VETOR-----------------------------------------------------
-- spriteon9,IMG9,,spriteon10,,IMG10
	PROCESS (spriteon1,spriteon2,spriteon3,spriteon4,spriteon5,spriteon6,spriteon7,vidon, IMG1,IMG2,IMG3,IMG4,IMG5,IMG6,IMG7)
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
			
        --Imprime o sprite 4 se estiver dentro da tela
		ELSIF vidon = '1' AND spriteon4 = '1' THEN
			vgaRed <= IMG4 (11 DOWNTO 8);
			vgaGreen <=IMG4 (7 DOWNTO 4);
			vgaBlue <= IMG4 (3 DOWNTO 0);
        --sprite 5 -newimage
		ELSIF vidon = '1' AND spriteon5 = '1' THEN
			vgaRed <= IMG5 (11 DOWNTO 8);
			vgaGreen <=IMG5 (7 DOWNTO 4);
			vgaBlue <= IMG5 (3 DOWNTO 0);
        --sprite 6 -newimage
		ELSIF vidon = '1' AND spriteon6 = '1' THEN
			vgaRed <= IMG6 (11 DOWNTO 8);
			vgaGreen <=IMG6 (7 DOWNTO 4);
			vgaBlue <= IMG6 (3 DOWNTO 0);
        --sprite 7 -newimage
		ELSIF vidon = '1' AND spriteon7 = '1' THEN
			vgaRed <= IMG7 (11 DOWNTO 8);
			vgaGreen <=IMG7 (7 DOWNTO 4);
			vgaBlue <= IMG7 (3 DOWNTO 0);
        --sprite 9 -newimage
		--ELSIF vidon = '1' AND spriteon9 = '1' THEN
			--vgaRed <= IMG9 (11 DOWNTO 8);
			--vgaGreen <=IMG9 (7 DOWNTO 4);
			--vgaBlue <= IMG9 (3 DOWNTO 0);
        --sprite 10 -newimage
		--ELSIF vidon = '1' AND spriteon10 = '1' THEN
			--vgaRed <= IMG10 (11 DOWNTO 8);
			--vgaGreen <=IMG10 (7 DOWNTO 4);
			--vgaBlue <= IMG10 (3 DOWNTO 0);													
			--Muda a cor de fundo BACKGROUND
		ELSIF vidon = '1' THEN
		vgaRed <= BACKGROUND(11 downto 8) ;--(others =>'1');
		vgaGreen <= BACKGROUND(7 downto 4);-- 
		vgaBlue  <= BACKGROUND(3 downto 0); --(others =>'0');

 
		END IF;
	END PROCESS;

END Behavioral;