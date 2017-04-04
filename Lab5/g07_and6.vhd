library ieee;
use ieee.std_logic_1164.all;

entity g07_and6 is
	port (
		dataa: in std_logic_vector(5 downto 0);
		datab: in std_logic_vector(5 downto 0);
		output: out std_logic_vector(5 downto 0)
	);
end g07_and6;

architecture anding of g07_and6 is
begin
	output(0) <= dataa(0) and datab(0);
	output(1) <= dataa(1) and datab(1);
	output(2) <= dataa(2) and datab(2);
	output(3) <= dataa(3) and datab(3);
	output(4) <= dataa(4) and datab(4);
	output(5) <= dataa(5) and datab(5);
end anding;
