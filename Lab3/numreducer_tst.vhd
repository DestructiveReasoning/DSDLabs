library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity numreducer_tst is
end numreducer_tst;

architecture test of numreducer_tst is
	component g07_numreducer
		port (num_in: in std_logic_vector(5 downto 0); mask_out: out std_logic_vector(5 downto 0));
	end component;

	SIGNAL input, output: std_logic_vector(5 downto 0);

begin
	r: g07_numreducer port map (num_in => input, mask_out => output);

	always: process
	begin
		for i in 0 to 63 LOOP
			input <= std_logic_vector(to_unsigned(i,6));
			WAIT FOR 5 ns;
		end LOOP;
		WAIT;
	end process;
end test;
