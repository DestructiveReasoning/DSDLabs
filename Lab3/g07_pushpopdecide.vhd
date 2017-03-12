library ieee;
use ieee.std_logic_1164.all;

entity g07_pushpopdecide is
	port (
		MODE: IN STD_LOGIC_VECTOR(1 downto 0);
		FULL: IN STD_LOGIC;
		EMPTY: IN STD_LOGIC;
		ENABLE: IN STD_LOGIC;
		RES: OUT STD_LOGIC_VECTOR(1 downto 0)
	);
end g07_pushpopdecide;

architecture behavior of g07_pushpopdecide is
SIGNAL code: STD_LOGIC_VECTOR(4 downto 0);
begin
	code <= MODE & FULL & EMPTY & ENABLE;
	WITH code SELECT
		RES <= 
			  "00" WHEN "01000",
			  "00" WHEN "01010",
			  "00" WHEN "01100",
			  "00" WHEN "01110",
			  "00" WHEN "10000",
			  "00" WHEN "10010",
			  "00" WHEN "10100",
			  "00" WHEN "10110",
			  "00" WHEN "11000",
			  "00" WHEN "11010",
			  "00" WHEN "11100",
			  "00" WHEN "11110",
			  "00" WHEN "01101",
			  "00" WHEN "11011",
			  MODE WHEN others;
end behavior;
