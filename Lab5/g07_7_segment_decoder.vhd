library ieee;
use ieee.std_logic_1164.all;
entity g07_7_segment_decoder is
	port (
		code:			in std_logic_vector(3 downto 0);
		mode:			in std_logic;
		segments_out:	out std_logic_vector(6 downto 0)
	);
end g07_7_segment_decoder;

architecture costanza of g07_7_segment_decoder is
	SIGNAL xcode: std_logic_vector(4 downto 0);
BEGIN
	xcode(4 downto 1) <= code;
	xcode(0) <= mode;
	WITH xcode SELECT
		segments_out <=
			"1000000" WHEN "00000",
			"0001000" WHEN "00001",
			"1111001" WHEN "00010",
			"0100100" WHEN "00011",
			"0100100" WHEN "00100",
			"0110000" WHEN "00101",
			"0110000" WHEN "00110",
			"0011001" WHEN "00111",
			"0011001" WHEN "01000",
			"0010010" WHEN "01001",
			"0010010" WHEN "01010",
			"0000010" WHEN "01011",
			"0000010" WHEN "01100",
			"1111000" WHEN "01101",
			"1111000" WHEN "01110",
			"0000000" WHEN "01111",
			"0000000" WHEN "10000",
			"0010000" WHEN "10001",
			"0010000" WHEN "10010",
			"1000000" WHEN "10011",
			"0001000" WHEN "10100",
			"1100001" WHEN "10101",
			"0000011" WHEN "10110",
			"0100011" WHEN "10111",
			"1000110" WHEN "11000",
			"0001001" WHEN "11001",
			"0100001" WHEN "11010",
			"0111111" WHEN "11011",
			"0000110" WHEN "11100",
			"0111111" WHEN "11101",
			"0001110" WHEN "11110",
			"0111111" WHEN others;
END costanza;

