library ieee;
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity mod13 is
	port (
		X: IN STD_LOGIC_VECTOR(5 downto 0);
		MODULO: OUT STD_LOGIC_VECTOR(5 downto 0);
		FLOOR: OUT STD_LOGIC_VECTOR(5 downto 0)
	);
end mod13;

architecture behavior of mod13 is
	SIGNAL s52: STD_LOGIC_VECTOR(8 downto 0);
	SIGNAL s50: STD_LOGIC_VECTOR(8 downto 0);
	SIGNAL mul1: STD_LOGIC_VECTOR(8 downto 0);
	SIGNAL FL: STD_LOGIC_VECTOR(5 downto 0);
	SIGNAL s132: STD_LOGIC_VECTOR(9 downto 0);
	SIGNAL s133: STD_LOGIC_VECTOR(9 downto 0);
	SIGNAL t: STD_LOGIC_VECTOR(9 downto 0);
	SIGNAL t2: STD_LOGIC_VECTOR(9 downto 0);
	SIGNAL s130: STD_LOGIC_VECTOR(9 downto 0);
	SIGNAL mul2: STD_LOGIC_VECTOR(9 downto 0);
	SIGNAL SM: STD_LOGIC_VECTOR(9 downto 0);
begin
	s52 <= '0'&X&"00";
	s50 <= "000"&X;
	A1: lpm_add_sub 
	generic map (lpm_width => 9, lpm_direction => "ADD")
	port map (dataa => s52, datab => s50, result => mul1);
	FL <= "000"&mul1(8 downto 6);
	s133 <= '0'&FL&"000";
	s132 <= "00"&FL&"00";
	s130 <= "0000"&FL;
	A2: lpm_add_sub 
	generic map (lpm_width => 10, lpm_direction => "ADD")
	port map (dataa => s133, datab => s132, result => t);
	A3: lpm_add_sub 
	generic map (lpm_width => 10, lpm_direction => "ADD")
	port map (dataa => t, datab => s130, result => mul2);
	t2 <= "0000"&X;
	A4: lpm_add_sub 
	generic map (lpm_width => 10, lpm_direction => "SUB")
	port map (dataa => t2, datab => mul2, result => SM);
	FLOOR <= FL;
	MODULO <= SM(5 downto 0);
end behavior;

