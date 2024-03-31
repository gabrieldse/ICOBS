----------------------------------------------------------------------------------
-- Company: Polytech / LIRMM
-- Engineer: Pascal Benoit
-- 
-- Create Date:    15:31:00 07/11/2014 
-- Design Name: 
-- Module Name:    clkdiv - Behavioral 
-- Project Name:  VGA_Nexys3
-- Target Devices: Spartan6 SLX16
-- Tool versions: ISE 14.4
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_Display is
    Port ( vidon : in  STD_LOGIC;
           hc : in  STD_LOGIC_VECTOR (9 downto 0);
           vc : in  STD_LOGIC_VECTOR (9 downto 0);
           sw: in  STD_LOGIC_VECTOR (11 downto 0);
           red : out  STD_LOGIC_VECTOR (3 downto 0);
           green : out  STD_LOGIC_VECTOR (3 downto 0);
           blue : out  STD_LOGIC_VECTOR (3 downto 0));
end VGA_Display;

architecture Behavioral of VGA_Display is

begin

process(vidon, sw)
begin
	
	if vidon = '1' then
		red   <=  sw(11 downto 8) ;
		green <= sw(7 downto 4);
		blue  <= sw(3 downto 0); 
		else 
		red   <= (others => '0') ;
		green <= (others => '0') ;
		blue  <= (others => '0') ;
	end if;
end process;

end Behavioral;
