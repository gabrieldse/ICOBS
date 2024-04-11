library ieee;
use ieee.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;
library amba3;
use amba3.ahblite.all;

----------------------------------------------------------------
entity ahblite_my_vga is
port (
	HRESETn     : in  std_logic;
	HCLK        : in  std_logic;
	HSEL        : in  std_logic;
	HREADY      : in  std_logic;

-- FOR VGA conector
     Hsync : out  STD_LOGIC;
     Vsync : out  STD_LOGIC;
     vgaRed : out  STD_LOGIC_VECTOR (3 downto 0);
     vgaGreen : out  STD_LOGIC_VECTOR (3 downto 0);
     vgaBlue : out  STD_LOGIC_VECTOR (3 downto 0);
    
	-- AHB-Lite interface
	AHBLITE_IN  : in  AHBLite_master_vector;
	AHBLITE_OUT : out AHBLite_slave_vector
	 );
end;

----------------------------------------------------------------
architecture arch of ahblite_my_vga is

component VGA_Top is
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
		
 );
end component;
----------------------------------------------------------------
        -- Signal PARA Resetar o VGA 
    	signal RST : std_logic;

	signal transfer : std_logic;
	signal invalid  : std_logic;
	signal SlaveIn  : AHBLite_master;
	signal SlaveOut : AHBLite_slave;

	signal address  : std_logic_vector(9 downto 2);
	signal lastaddr : std_logic_vector(9 downto 2);
	signal lastwr   : std_logic;

	-- Memory organization:
	-- +--------+--------+---------------------------+
	-- | OFFSET | NAME   | DESCRIPTION               |
	-- +--------+--------+---------------------------+
	-- |  x000  | REG1   | Basic R/W Register      	 |
	-- |  x004  | REG2   | Basic R/W Register      	 |
	-- |  x008  | REG3   | Basic R/W Register      	 |
	-- |  x00C  | REG4   | Basic R/W Register      	 |
    -- |  x00C  | REG4   | Basic R/W Register      	 |
	-- +--------+--------+---------------------------+
	
-- FOR THE BACKGROUND CONTROL 
	signal Background    : std_logic_vector(31 downto 0);
	--FOR THE SPRITE  1 CONTROL 
	Signal Y1POS_vector:  unsigned(9 DOWNTO 0);
	signal X1POS_vector:  unsigned(9 DOWNTO 0);
	Signal Y1POS:  std_logic_vector(31 downto 0);
	signal X1POS:  std_logic_vector(31 downto 0);
	
	--FOR THE SPRITE  2 CONTROL 
	Signal Y2POS_vector:  unsigned(9 DOWNTO 0);
	signal X2POS_vector:  unsigned(9 DOWNTO 0);
	Signal Y2POS:  std_logic_vector(31 downto 0);
	signal X2POS:  std_logic_vector(31 downto 0);

	--FOR THE SPRITE  3 CONTROL 
	Signal Y3POS_vector:  unsigned(9 DOWNTO 0);
	signal X3POS_vector:  unsigned(9 DOWNTO 0);
	Signal Y3POS:  std_logic_vector(31 downto 0);
	signal X3POS:  std_logic_vector(31 downto 0);
	
	--FOR THE SPRITE  4 CONTROL -- NEWIMAGE
	Signal Y4POS_vector:  unsigned(9 DOWNTO 0);
	signal X4POS_vector:  unsigned(9 DOWNTO 0);
	Signal Y4POS:  std_logic_vector(31 downto 0);
	signal X4POS:  std_logic_vector(31 downto 0);
	
	--FOR THE SPRITE  5 CONTROL -- NEWIMAGE
	Signal Y5POS_vector:  unsigned(9 DOWNTO 0);
	signal X5POS_vector:  unsigned(9 DOWNTO 0);
	Signal Y5POS:  std_logic_vector(31 downto 0);
	signal X5POS:  std_logic_vector(31 downto 0);
	
	--FOR THE SPRITE  6 CONTROL -- NEWIMAGE
	Signal Y6POS_vector:  unsigned(9 DOWNTO 0);
	signal X6POS_vector:  unsigned(9 DOWNTO 0);
	Signal Y6POS:  std_logic_vector(31 downto 0);
	signal X6POS:  std_logic_vector(31 downto 0);
	
	--FOR THE SPRITE  7 CONTROL -- NEWIMAGE
	Signal Y7POS_vector:  unsigned(9 DOWNTO 0);
	signal X7POS_vector:  unsigned(9 DOWNTO 0);
	Signal Y7POS:  std_logic_vector(31 downto 0);
	signal X7POS:  std_logic_vector(31 downto 0);
		
----------------------------------------------------------------
begin
X1POS_vector <= UNSIGNED(X1POS(9 downto 0));
Y1POS_vector <= UNSIGNED(Y1POS(9 downto 0));

X2POS_vector <= UNSIGNED(X2POS(9 downto 0));
Y2POS_vector <= UNSIGNED(Y2POS(9 downto 0));

X3POS_vector <= UNSIGNED(X3POS(9 downto 0));
Y3POS_vector <= UNSIGNED(Y3POS(9 downto 0));

X4POS_vector <= UNSIGNED(X4POS(9 downto 0));
Y4POS_vector <= UNSIGNED(Y4POS(9 downto 0)); --NEWIMAGE

X5POS_vector <= UNSIGNED(X5POS(9 downto 0));
Y5POS_vector <= UNSIGNED(Y5POS(9 downto 0)); --NEWIMAGE

X6POS_vector <= UNSIGNED(X6POS(9 downto 0));
Y6POS_vector <= UNSIGNED(Y6POS(9 downto 0)); --NEWIMAGE

X7POS_vector <= UNSIGNED(X7POS(9 downto 0));
Y7POS_vector <= UNSIGNED(Y7POS(9 downto 0)); --NEWIMAGE

RST <= not HRESETn;

U_VGA :  VGA_Top
 Port map ( 
        clk => HCLK,
		btnR => rst,
		R1 => Y1POS_vector,
		C1 => X1POS_vector,
		R2 => Y2POS_vector,
		C2 => X2POS_vector,
		R3 => Y3POS_vector,
		C3 => X3POS_vector,
		BACKGROUND => background(11 downto 0),
		Hsync => Hsync,
		Vsync => Vsync,
		vgaRed => vgaRed,
		vgaGreen => vgaGreen,
		vgaBlue => vgaBlue,
		R4 => Y4POS_vector,C4 => X4POS_vector, --newimage
		R5 => Y5POS_vector,C5 => X5POS_vector, --newimage
		R6 => Y6POS_vector,C6 => X6POS_vector, --newimage
		R7 => Y7POS_vector,C7 => X7POS_vector --newimage
 );

	AHBLITE_OUT <= to_vector(SlaveOut);
	SlaveIn <= to_record(AHBLITE_IN);

	transfer <= HSEL and SlaveIn.HTRANS(1) and HREADY;
	-- Invalid if not a 32-bit aligned transfer
	invalid  <= transfer and (SlaveIn.HSIZE(2) or (not SlaveIn.HSIZE(1)) or SlaveIn.HSIZE(0) or SlaveIn.HADDR(1) or SlaveIn.HADDR(0));

	address <= SlaveIn.HADDR(address'range);

	----------------------------------------------------------------
	process (HCLK, HRESETn) begin
		if HRESETn = '0' then
			-- Reset
			SlaveOut.HREADYOUT <= '1';
			SlaveOut.HRESP <= '0';
			SlaveOut.HRDATA <= (others => '0');

			lastwr <= '0';
			lastaddr <= (others => '0');

			-- Reset values
			Background <= (others => '0');
			X1POS <=(others => '0');
			Y1POS <= (others => '0');
			X2POS <=(others => '0');
			Y2POS <= (others => '0');
			X3POS <=(others => '0');
			Y3POS <= (others => '0');
			X4POS <=(others => '0'); Y4POS <= (others => '0'); --newimage
			X5POS <=(others => '0'); Y5POS <= (others => '0'); --newimage
			X6POS <=(others => '0'); Y6POS <= (others => '0'); --newimage
			X7POS <=(others => '0'); Y7POS <= (others => '0'); --newimage
			
			
			--RST <= '1';
			--xpos  <= (others => '0');
			--ypos <= (others => '0');
			--Reg4 <= (others => '0')

		--------------------------------
		elsif rising_edge(HCLK) then
			-- Error management
			SlaveOut.HREADYOUT <= not invalid;
			SlaveOut.HRESP <= invalid or not SlaveOut.HREADYOUT;

			-- Performe write if requested last cycle and no error occured
			if SlaveOut.HRESP = '0' and lastwr = '1' then
				case lastaddr is
					when x"00" => Background    <= SlaveIn.HWDATA;
					when x"01" => X1POS   <= SlaveIn.HWDATA; when x"02" => Y1POS   <= SlaveIn.HWDATA;
					when x"03" => X2POS   <= SlaveIn.HWDATA; when x"04" => Y2POS   <= SlaveIn.HWDATA;
					when x"05" => X3POS   <= SlaveIn.HWDATA; when x"06" => Y3POS   <= SlaveIn.HWDATA;  
					when x"07" => X4POS   <= SlaveIn.HWDATA; when x"08" => Y4POS   <= SlaveIn.HWDATA;  --newimage
					when x"09" => X5POS   <= SlaveIn.HWDATA; when x"0a" => Y5POS   <= SlaveIn.HWDATA;  --newimage
					when x"0b" => X6POS   <= SlaveIn.HWDATA; when x"0c" => Y6POS   <= SlaveIn.HWDATA;  --newimage
					when x"0d" => X7POS   <= SlaveIn.HWDATA; when x"0e" => Y7POS   <= SlaveIn.HWDATA;  --newimage

					when others =>
				end case;
			end if;

			-- Check for transfer
			if transfer = '1' and invalid = '0' then
				-- Read operation: retrieve data and fill empty spaces with '0'
				if SlaveIn.HWRITE = '0' then
					SlaveOut.HRDATA <= (others => '0');
					case address is
						when x"00" => SlaveOut.HRDATA    <= Background;
						when x"01" => SlaveOut.HRDATA    <= X1POS; when x"02" => SlaveOut.HRDATA    <= Y1POS;
						when x"03" => SlaveOut.HRDATA    <= X2POS; when x"04" => SlaveOut.HRDATA    <= Y2POS;
						when x"05" => SlaveOut.HRDATA    <= X3POS; when x"06" => SlaveOut.HRDATA    <= Y3POS;
						when x"07" => SlaveOut.HRDATA    <= X4POS; when x"08" => SlaveOut.HRDATA    <= Y4POS; --newimage
						when x"09" => SlaveOut.HRDATA    <= X5POS; when x"0a" => SlaveOut.HRDATA    <= Y5POS; --newimage
						when x"0b" => SlaveOut.HRDATA    <= X6POS; when x"0c" => SlaveOut.HRDATA    <= Y6POS; --newimage
						when x"0d" => SlaveOut.HRDATA    <= X7POS; when x"0e" => SlaveOut.HRDATA    <= Y7POS; --newimage
						
						--when x"03" => SlaveOut.HRDATA    <= Reg4;
						when others =>
					end case;
				end if;

				-- Keep address and write command for next cycle
				lastaddr <= address;
				lastwr <= SlaveIn.HWRITE;
			else
				lastwr <= '0';
			end if;
		end if;
	end process;

end;