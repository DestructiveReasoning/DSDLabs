library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_omnimux is
	generic (
		input_width: integer;
		sel_width: integer
	);
	port (
		inputs: in std_logic_vector(input_width * (2**sel_width) - 1 downto 0);
		sel: in std_logic_vector(sel_width - 1 downto 0);
		output: out std_logic_vector(input_width -1 downto 0)
	);
end g07_omnimux;

architecture mux of g07_omnimux is
begin
	output <= inputs(input_width*(to_integer(unsigned(sel)) + 1) - 1 downto input_width * to_integer(unsigned(sel)));
end mux;


