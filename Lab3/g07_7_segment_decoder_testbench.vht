library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_7_segment_decoder_testbench is
end g07_7_segment_decoder_testbench;

architecture test of g07_7_segment_decoder_testbench is
	component g07_7_segment_decoder
		port(
			code: in std_logic_vector(3 downto 0);
			mode: in std_logic; 
			segments_out: out std_logic_vector(6 downto 0)
		);
	end component;
	SIGNAL c: std_logic_vector(3 downto 0);
	SIGNAL m: std_logic;
	SIGNAL segments: std_logic_vector(6 downto 0);
	
BEGIN
	decoder: g07_7_segment_decoder
	port map (
		CODE => c,
		MODE => m,
		SEGMENTS_OUT => segments
	);

	always: PROCESS
	BEGIN
		m <= '0';
		for i in 0 to 15 LOOP
			c <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR 5 ns;
			m <= not m;
			--WAIT FOR 5 ns;
			c <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR 5 ns;
			m <= not m;
		END LOOP;
		WAIT;
	END PROCESS always;
END test;
