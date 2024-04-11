LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity VGA_Top is
 Port ( 
        clk : IN STD_LOGIC;
		btnR : IN STD_LOGIC;
		R1: IN unsigned(9 DOWNTO 0);
		C1: IN unsigned(9 DOWNTO 0);
		R2: IN unsigned(9 DOWNTO 0);
		C2: IN unsigned(9 DOWNTO 0);
		R3: IN unsigned(9 DOWNTO 0);
		C3: IN unsigned(9 DOWNTO 0);
		BACKGROUND : in STD_LOGIC_VECTOR (11 downto 0);
		Hsync : OUT STD_LOGIC;
		Vsync : OUT STD_LOGIC;
		vgaRed : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		vgaGreen : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		vgaBlue : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		R4: IN unsigned(9 DOWNTO 0); C4: IN unsigned(9 DOWNTO 0); --NEWIMAGE
		R5: IN unsigned(9 DOWNTO 0); C5: IN unsigned(9 DOWNTO 0); --NEWIMAGE
		R6: IN unsigned(9 DOWNTO 0); C6: IN unsigned(9 DOWNTO 0); --NEWIMAGE
		R7: IN unsigned(9 DOWNTO 0); C7: IN unsigned(9 DOWNTO 0) --NEWIMAGE
		--R8: IN unsigned(9 DOWNTO 0); C8: IN unsigned(9 DOWNTO 0); --NEWIMAGE
		--R9: IN unsigned(9 DOWNTO 0); C9: IN unsigned(9 DOWNTO 0); --NEWIMAGE
		--R10: IN unsigned(9 DOWNTO 0); C10: IN unsigned(9 DOWNTO 0) --NEWIMAGE
		
		
 );
end VGA_Top;

architecture Behavioral of VGA_Top is
------------------------------------COMPONENTS ---------------------------------------------------------

component VGA_640_x_480 is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           hc : out  STD_LOGIC_VECTOR (9 downto 0);
           vc : out  STD_LOGIC_VECTOR (9 downto 0);
           vidon : out  STD_LOGIC);
end component;

component VGA_clkdiv is
--Como fazer o cálculo do clock e manter em mente ele...
--F_Entrada/2*F_Desejada = Resultado q deve para ser convertido para binário para definição do N (número de bits)

	generic (N : integer := 19);
	port (
		mclk    : in std_logic;
		rst    : in std_logic;
		clk0001 : out std_logic
	);
end component;

component VGA_Display_Basic_ROM IS
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
END component;

component prom_sprite IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0); --TAMANHO
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0) --TAMANHO
  );
END component;

component prom_sprite2 IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0); --TAMANHO
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0) --TAMANHO
  );
END component;

component prom_sprite3 IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0); --TAMANHO
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)  --TAMANHO
  );
END component;

component prom_sprite4 IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0); --TAMANHO
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END component;

component prom_sprite5 IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0); --TAMANHO
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END component;

component prom_sprite6 IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0); --TAMANHO
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END component;

component prom_sprite7 IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0); --TAMANHO
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END component;

--component prom_sprite8 IS
  --PORT (
    --clka : IN STD_LOGIC;
    --addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0); --TAMANHO
    --douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  --);
--END component;

--component prom_sprite9 IS
  --PORT (
    --clka : IN STD_LOGIC;
    --addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --TAMANHO
    --douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  --);
--END component;

--component prom_sprite10 IS
  --PORT (
    --clka : IN STD_LOGIC;
    --addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --TAMANHO
    --douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  --);
--END component;

component VGA_Clock_Multi is
 port(
    mclk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    clk25 : OUT STD_LOGIC;
    clk100: out std_logic
 );
 end component;
------------------------------------COMPONENTS ---------------------------------------------------------


--signal N : integer := 19;
	SIGNAL rst, clk25, vidon, clk100,clk0001 : std_logic;
	SIGNAL hc1, vc1, hc, vc : std_logic_vector(9 DOWNTO 0);
	SIGNAL addr1: STD_LOGIC_VECTOR (12 DOWNTO 0);--TAMANHO AQUI
	SIGNAL addr2: STD_LOGIC_VECTOR (12 DOWNTO 0);--TAMANHO AQUI
	SIGNAL addr3, addr4,addr5: STD_LOGIC_VECTOR (10 DOWNTO 0);--TAMANHO AQUI
	SIGNAL addr6: STD_LOGIC_VECTOR (9 DOWNTO 0);--TAMANHO AQUI
	SIGNAL addr7: STD_LOGIC_VECTOR (8 DOWNTO 0);--TAMANHO AQUI
	--SIGNAL addr8: STD_LOGIC_VECTOR (18 DOWNTO 0);--TAMANHO AQUI
	--SIGNAL addr10: STD_LOGIC_VECTOR (15 DOWNTO 0);--TAMANHO AQUI
	--SIGNAL addr9: STD_LOGIC_VECTOR (15 DOWNTO 0);--TAMANHO AQUI
	
	
	SIGNAL douta1,douta2,douta3,douta4,douta5,douta6,douta7 : STD_LOGIC_VECTOR(11 DOWNTO 0); --douta8;douta9douta10
	
	
BEGIN
	rst <= btnR;

	clkIP: VGA_Clock_Multi
	PORT MAP(mclk => clk, reset => rst, clk25 => clk25,clk100=>clk100);
	clkPequeno: VGA_clkdiv
	generic map(N =>19)
	PORT MAP(mclk => clk, rst => rst,clk0001=>clk0001);
	U_definicao : VGA_640_x_480
	PORT MAP(rst => rst, clk => clk25, hsync => Hsync, vsync => Vsync, hc => hc, vc => vc, vidon => vidon);
	U_Afichage : VGA_Display_Basic_ROM
	port map (vidon => vidon,
	    hc => hc,
	    vc => vc,
	    BACKGROUND => BACKGROUND,
	    rom_addr2 => addr2,
	    rom_addr3 => addr3,
	    R2=>R2,
	    R3=>R3,
	    C2=>C2,
	    C3=>C3,
	    IMG2=> douta2,
	    IMG3=> douta3,
	    vgaRed=>vgaRed,
	    vgaGreen=>vgaGreen,
	    vgaBlue=>vgaBlue,
	    rom_addr1 => addr1, R1=>R1, C1=>C1, IMG1=> douta1,
	    rom_addr4 => addr4, R4=>R4, C4=>C4, IMG4=> douta4, -- NEWIMAGE
	    rom_addr5 => addr5, R5=>R5, C5=>C5, IMG5=> douta5, -- NEWIMAGE
	    rom_addr6 => addr6, R6=>R6, C6=>C6, IMG6=> douta6, -- NEWIMAGE
	    rom_addr7 => addr7, R7=>R7, C7=>C7, IMG7=> douta7 -- NEWIMAGE
	    --rom_addr8 => addr8, R8=>R8, C8=>C8, IMG8=> douta8, -- NEWIMAGE
	    --rom_addr9 => addr9, R9=>R9, C9=>C9, IMG9=> douta9, -- NEWIMAGE
	    --rom_addr10 => addr10, R10=>R10, C10=>C10, IMG10=> douta10 -- NEWIMAGE
	    
	    
	    );
	
	U_promsprite : prom_sprite
	PORT MAP(clka => clk100, addra => addr1, douta => douta1);
	U_promsprite2 : prom_sprite2 
	port map (clka => clk100, addra => addr2, douta => douta2);
	U_promsprite3 : prom_sprite3 
	port map (clka => clk100, addra => addr3, douta => douta3);
	U_promsprite4 : prom_sprite4 
	port map (clka => clk100, addra => addr4, douta => douta4);
	U_promsprite5 : prom_sprite5 
	port map (clka => clk100, addra => addr5, douta => douta5);
	U_promsprite6 : prom_sprite6 
	port map (clka => clk100, addra => addr6, douta => douta6);
	U_promsprite7 : prom_sprite7 
	port map (clka => clk100, addra => addr7, douta => douta7);
	--U_promsprite8 : prom_sprite8 
	--port map (clka => clk100, addra => addr8, douta => douta8);
	--U_promsprite9 : prom_sprite9 
	--port map (clka => clk100, addra => addr9, douta => douta9);
	--U_promsprite10 : prom_sprite10 
	--port map (clka => clk100, addra => addr10, douta => douta10); --newimage
	
	
	
	
	
end Behavioral;


----MOVE COM BOTAO
--LIBRARY IEEE;
--USE IEEE.STD_LOGIC_1164.ALL;
--USE IEEE.NUMERIC_STD.ALL;
--USE work.VGA_Generic_Package.ALL;

--entity VGA_Mover_Top is
-- Port ( 
--        clk : IN STD_LOGIC;
--		btn : IN std_logic_vector (3 downto 0);
--		btnRst : IN STD_LOGIC;
--		Hsync : OUT STD_LOGIC;
--		Vsync : OUT STD_LOGIC;
--		vgaRed : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
--		vgaGreen : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
--		vgaBlue : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
-- );
--end VGA_Mover_Top;

--architecture Behavioral of VGA_Mover_Top is
--signal N : integer := 19;
--	SIGNAL rst, clk25, vidon,clk100,clk0001 : std_logic;
--	SIGNAL hc, vc : std_logic_vector(9 DOWNTO 0);
--	SIGNAL addr : vector16;
--	SIGNAL douta : STD_LOGIC_VECTOR(11 DOWNTO 0);
--	SIGNAL R1 :  unsigned(9 DOWNTO 0);
--	SIGNAL C1 :  unsigned(9 DOWNTO 0);
--	signal boutonDebounced : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
--BEGIN
--	rst <= btnRst;



--	clkIP: VGA_Clock_Multi
--	PORT MAP(mclk => clk, reset => rst, clk25 => clk25,clk100=>clk100);
--	Botao0: VGA_debounce
--	PORT MAP(clk => clk25, rst => rst,btn => btn(0),debounce=>boutonDebounced(0));
--	Botao1: VGA_debounce
--	PORT MAP(clk => clk25, rst => rst,btn => btn(1),debounce=>boutonDebounced(1));
--	Botao2: VGA_debounce
--	PORT MAP(clk => clk25, rst => rst,btn => btn(2),debounce=>boutonDebounced(2));
--	Botao3: VGA_debounce
--	PORT MAP(clk => clk25, rst => rst,btn => btn(3),debounce=>boutonDebounced(3));
--	U2 : VGA_640_x_480
--	PORT MAP(rst => rst, clk => clk25, hsync => Hsync, vsync => Vsync, hc => hc, vc => vc, vidon => vidon);
--	U3 : prom_sprite
--	PORT MAP(clka => clk100, addra => addr, douta => douta);
--	mover: VGA_Mover_Button
--	PORT MAP(clk => clk0001, rst=>rst, btn =>boutonDebounced,R1=>R1 ,C1=>C1);
--    U4 : VGA_Basic_ROM  
--	port map (vidon => vidon, hc => hc, vc => vc, rom_addr4 => addr, R1=>R1,C1=>C1,IMG=> douta,vgaRed=>vgaRed,vgaGreen=>vgaGreen,vgaBlue=>vgaBlue);
	

--end Behavioral;
