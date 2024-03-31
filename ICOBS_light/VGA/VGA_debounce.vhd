library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.VGA_Generic_Package.all;

entity VGA_debounce is
    Port ( btn : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           debounce : out STD_LOGIC);
end VGA_debounce;

architecture archi of VGA_debounce is
signal delay: std_logic_vector (3 downto 1);
begin
process (clk, rst)
begin 
if rst = '1' then
delay <= (others =>'0');
elsif rising_edge (clk) then 
delay(1)<=btn;
delay(2)<=delay(1);
delay(3)<=delay(2);
end if;

end process;
debounce <= delay(1) and delay(2) and delay(3);
end archi;
