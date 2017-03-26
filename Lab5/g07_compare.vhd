library ieee;
use ieee.std_logic_1164.all;

entity g07_compare is
	generic (width: integer);
	port (dataa: in std_logic_vector(width-1 downto 0);
		datab: in std_logic_vector(width-1 downto 0);
		eq: out std_logic;
		gt: out std_logic;
		lt: out std_logic
	);
end g07_compare;

architecture comp of g07_compare is
begin
	compare: process(dataa,datab)
	begin
		if (dataa > datab) then eq <= '0'; gt <= '1'; lt <= '0';
		elsif (dataa < datab) then eq <= '0'; gt <= '0'; lt <= '1';
		else eq <= '1'; gt <= '0'; lt <= '0';
		end if;
	end process compare;
end comp;
