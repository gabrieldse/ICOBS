-- ##########################################################
-- ##########################################################
-- ##    __    ______   ______   .______        _______.   ##
-- ##   |  |  /      | /  __  \  |   _  \      /       |   ##
-- ##   |  | |  ,----'|  |  |  | |  |_)  |    |   (----`   ##
-- ##   |  | |  |     |  |  |  | |   _  <      \   \       ##
-- ##   |  | |  `----.|  `--'  | |  |_)  | .----)   |      ##
-- ##   |__|  \______| \______/  |______/  |_______/       ##
-- ##                                                      ##
-- ##########################################################
-- ##########################################################
-------------------------------------------------------------
-- ICOBS_MK7 Top module
-- ICOBS MK7
-- Author: Theo Soriano
-- Update: 26-05-2022
-- LIRMM, Univ Montpellier, CNRS, Montpellier, France
-------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library common;
use common.constants.all;

library interface;
use interface.obi_lib.all;

entity ICOBS_light_TOP is
    port (
        EXTCLK       	: in  std_logic;

        HARDRESET    	: in  std_logic;

		IOPA            : inout std_logic_vector(IOPA_LEN-1 downto 0);
		IOPB            : inout std_logic_vector(IOPB_LEN-1 downto 0);
		IOPC            : inout std_logic_vector(IOPC_LEN-1 downto 0);

		UART_RX			: in  std_logic;
		UART_TX			: out std_logic;
		
		--7seg diplay interface
        seg         : out std_logic_vector(0 to 6);
        an          : out std_logic_vector(3 downto 0);
        dp          : out std_logic;
        -- VGA
        Hsync : out  STD_LOGIC;
        Vsync : out  STD_LOGIC;
        vgaRed : out  STD_LOGIC_VECTOR (3 downto 0);
        vgaGreen : out  STD_LOGIC_VECTOR (3 downto 0);
        vgaBlue : out  STD_LOGIC_VECTOR (3 downto 0));
    end;

----------------------------------------------------------------
architecture arch of ICOBS_light_TOP is

    component poweron_reset
	port (
		CLK : in  std_logic;
		RST : out std_logic);
	end component;

    component top_mcu
    port (
        -- Reset and clock
		PWRRESET  		: in  std_logic;
        HARDRESET 		: in  std_logic;
        SYSCLK    		: in  std_logic;

		-- I/O
        IOPA_READ 		: in  std_logic_vector(IOPA_LEN-1 downto 0);
        IOPA_DOUT 		: out std_logic_vector(IOPA_LEN-1 downto 0);
		IOPA_TRIS 		: out std_logic_vector(IOPA_LEN-1 downto 0);

		IOPB_READ 		: in  std_logic_vector(IOPB_LEN-1 downto 0);
        IOPB_DOUT 		: out std_logic_vector(IOPB_LEN-1 downto 0);
		IOPB_TRIS 		: out std_logic_vector(IOPB_LEN-1 downto 0);

		IOPC_READ 		: in  std_logic_vector(IOPC_LEN-1 downto 0);
        IOPC_DOUT 		: out std_logic_vector(IOPC_LEN-1 downto 0);
		IOPC_TRIS 		: out std_logic_vector(IOPC_LEN-1 downto 0);

		UART_RX			: in  std_logic;
		UART_TX			: out std_logic;
		
		--7seg diplay interface
        seg         : out std_logic_vector(0 to 6);
        an          : out std_logic_vector(3 downto 0);
        dp          : out std_logic;
        -- VGA
        Hsync : out  STD_LOGIC;
        Vsync : out  STD_LOGIC;
        vgaRed : out  STD_LOGIC_VECTOR (3 downto 0);
        vgaGreen : out  STD_LOGIC_VECTOR (3 downto 0);
        vgaBlue : out  STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component io_driver
	generic (N : integer := 16);
	port (
		TS 				: in    std_logic_vector(N-1 downto 0);
		WR 				: in    std_logic_vector(N-1 downto 0);
		RD 				: out   std_logic_vector(N-1 downto 0);
		IO 				: inout std_logic_vector(N-1 downto 0));
	end component;

	component clk50
	Port (
		mclk 			: in STD_LOGIC;
		clk50 			: out STD_LOGIC);
	end component;

   -- Resets
	signal PWRRESET   		: std_logic;
	signal HARDRESETn 		: std_logic;
	-- Clocks
	signal SYSCLK    		: std_logic;
    signal CLK50M_s 		: std_logic;

    -- I/O
	signal IOPA_DOUT 		: std_logic_vector(IOPA'range);
	signal IOPA_TRIS 		: std_logic_vector(IOPA'range);
	signal IOPA_READ 		: std_logic_vector(IOPA'range);

	signal IOPB_DOUT 		: std_logic_vector(IOPB'range);
	signal IOPB_TRIS 		: std_logic_vector(IOPB'range);
	signal IOPB_READ 		: std_logic_vector(IOPB'range);

	signal IOPC_DOUT 		: std_logic_vector(IOPC'range);
	signal IOPC_TRIS 		: std_logic_vector(IOPC'range);
	signal IOPC_READ 		: std_logic_vector(IOPC'range);

----------------------------------------------------------------
begin
    POR: poweron_reset
	port map (
		CLK 			=> SYSCLK,
		RST 			=> PWRRESET);

	clock_div: clk50
	Port map (
		mclk 			=> EXTCLK,
		clk50 			=> CLK50M_s);

    MCU : top_mcu
    port map (
        PWRRESET  		=> PWRRESET,
        HARDRESET 		=> HARDRESETn,
		SYSCLK    		=> SYSCLK,

        IOPA_READ 		=> IOPA_READ,
        IOPA_DOUT 		=> IOPA_DOUT,
		IOPA_TRIS 		=> IOPA_TRIS,

		IOPB_READ 		=> IOPB_READ,
        IOPB_DOUT 		=> IOPB_DOUT,
		IOPB_TRIS 		=> IOPB_TRIS,

		IOPC_READ 		=> IOPC_READ,
        IOPC_DOUT 		=> IOPC_DOUT,
		IOPC_TRIS 		=> IOPC_TRIS,

		UART_RX			=> UART_RX,
		UART_TX			=> UART_TX,
		
        seg => seg,
        an => an,
        dp => dp,
        
        -- FOR VGA conector
        Hsync => Hsync,
        Vsync => Vsync,
        vgaRed => vgaRed,
        vgaGreen => vgaGreen,
        vgaBlue => vgaBlue
        );

    GPIOA: io_driver
	generic map (IOPA_LEN)
	port map (
		TS 				=> IOPA_TRIS,
		WR 				=> IOPA_DOUT,
		RD 				=> IOPA_READ,
		IO 				=> IOPA);

	GPIOB: io_driver
	generic map (IOPB_LEN)
	port map (
		TS 				=> IOPB_TRIS,
		WR 				=> IOPB_DOUT,
		RD 				=> IOPB_READ,
		IO 				=> IOPB);

	GPIOC: io_driver
	generic map (IOPC_LEN)
	port map (
		TS 				=> IOPC_TRIS,
		WR 				=> IOPC_DOUT,
		RD 				=> IOPC_READ,
		IO 				=> IOPC);

	-- Clock and reset
	SYSCLK 				<= CLK50M_s;
	HARDRESETn 			<= not HARDRESET;

end;
