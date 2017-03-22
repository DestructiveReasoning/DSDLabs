library ieee;
use ieee.std_logic_1164.all;

entity g07_compare6 is
	port (
		dataa: in std_logic_vector(5 downto 0);
		datab: in std_logic_vector(5 downto 0);
		eq: out std_logic
	);
end g07_compare6;

architecture comp of g07_compare6 is
begin
	eq <= (dataa(5) xnor datab(5)) and (dataa(4) xnor datab(4)) and (dataa(3) xnor datab(3)) and (dataa(2) xnor datab(2)) and (dataa(1) xnor datab(1)) and (dataa(0) xnor datab(0));
end comp;
