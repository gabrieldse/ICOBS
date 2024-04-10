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
		vgaBlue : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
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
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0); --size
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END component;

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
	SIGNAL addr3: STD_LOGIC_VECTOR (10 DOWNTO 0);--TAMANHO AQUI
	SIGNAL douta1,douta2,douta3 : STD_LOGIC_VECTOR(11 DOWNTO 0);
	
	
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
	port map (vidon => vidon, hc => hc, vc => vc, rom_addr1 => addr1, rom_addr2 => addr2,rom_addr3 => addr3,R1=>R1,R2=>R2,R3=>R3,BACKGROUND => BACKGROUND,C1=>C1,C2=>C2,C3=>C3,IMG1=> douta1,IMG2=> douta2,IMG3=> douta3,vgaRed=>vgaRed,vgaGreen=>vgaGreen,vgaBlue=>vgaBlue);
	
	U_promsprite : prom_sprite
	PORT MAP(clka => clk100, addra => addr1, douta => douta1);
	U_promsprite2 : prom_sprite2 
	port map (clka => clk100, addra => addr2, douta => douta2);
	U_promsprite3 : prom_sprite3 
	port map (clka => clk100, addra => addr3, douta => douta3);
	
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
