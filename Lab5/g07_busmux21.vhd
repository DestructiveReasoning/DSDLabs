library ieee;
use ieee.std_logic_1164.all;

entity g07_busmux21 is
	generic (
		width: INTEGER := 6
	);

	port (
		data0: in std_logic_vector(width-1 downto 0);
		data1: in std_logic_vector(width-1 downto 0);
		sel: in std_logic;
		output: out std_logic_vector(width-1 downto 0)
	);
end g07_busmux21;

architecture multiplexor of g07_busmux21 is
begin
	output <= data0 when sel = '0' else data1;
end multiplexor;
