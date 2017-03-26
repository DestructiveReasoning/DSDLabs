library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity omnimux_tst is
end;

architecture test of omnimux_tst is
	component g07_omnimux
		generic (
			input_width: integer;
			sel_width: integer
		);
		port (
			inputs: in std_logic_vector(input_width * (2**sel_width) - 1 downto 0);
			sel: in std_logic_vector(sel_width - 1 downto 0);
			output: out std_logic_vector(input_width -1 downto 0)
		);
	end component;
	SIGNAL inputs: std_logic_vector(23 downto 0);
	SIGNAL sel: std_logic_vector(2 downto 0);
	SIGNAL output: std_logic_vector(2 downto 0);
	SIGNAL a0,a1,a2,a3,a4,a5,a6,a7: std_logic_vector(2 downto 0);

begin
	a0 <= "000";
	a1 <= "001";
	a2 <= "010";
	a3 <= "011";
	a4 <= "100";
	a5 <= "101";
	a6 <= "110";
	a7 <= "111";
	inputs <= a7&a6&a5&a4&a3&a2&a1&a0;
	mux: g07_omnimux generic map (input_width => 3, sel_width => 3)
	port map (inputs => inputs, sel => sel, output => output);

	always: process
	begin
		sel <= "000";
		for i in 0 to 7 LOOP
			sel <= std_logic_vector(to_unsigned(i,3));
			WAIT FOR 5 ns;
		end LOOP;
		WAIT;
	end process always;
end test;
