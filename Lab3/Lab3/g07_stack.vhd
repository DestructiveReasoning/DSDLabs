library ieee;
use ieee.std_logic_1164.all;
library lpm;
use lpm.all;

entity g07_stack is
	port (
		DATA: IN std_logic_vector(6 downto 0);
		MODE: IN std_logic_vector(1 downto 0);
		ADDR: IN std_logic_vector(6 downto 0);
		ENABLE: IN std_logic;
		RST: IN std_logic;
		CLK: IN std_logic;
		VALUE: OUT std_logic_vector(6 downto 0);
		NUM: OUT std_logic_vector(6 downto 0);
		FULL: OUT std_logic;
		EMPTY: OUT std_logic
	);
end g07_stack;

architecture behavior of g07_stack is
begin
end behavior;
