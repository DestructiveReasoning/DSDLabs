library ieee;
use ieee.std_logic_1164.all;

entity g07_compare6 is
	port (
		dataa: in std_logic_vector(5 downto 0);
		datab: in std_logic_vector(5 downto 0);
		eq: out std_logic;
		lt: out std_logic;
		gt: out std_logic
	);
end g07_compare6;

architecture comp of g07_compare6 is
begin
	proc: process (dataa,datab)
	begin
		eq <= '0';
		gt <= '0';
		lt <= '0';
		if(dataa > datab) then gt <= '1'; lt <= '0'; eq <= '0';
		elsif (dataa < datab) then lt <= '1'; gt <= '0'; eq <= '0';
		else eq <= '1'; lt <= '0'; gt <= '0';
		end if;
	end process proc;
end comp;
