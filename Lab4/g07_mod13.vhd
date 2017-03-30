library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_mod13 is
	port (
		X: IN STD_LOGIC_VECTOR(5 downto 0);
		MODULO: OUT STD_LOGIC_VECTOR(5 downto 0);
		FLOOR: OUT STD_LOGIC_VECTOR(5 downto 0)
	);
end g07_mod13;

architecture behavior of g07_mod13 is
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
	mul1 <= std_logic_vector(to_unsigned(to_integer(unsigned(s52)) + to_integer(unsigned(s50)),9));
	FL <= "000"&mul1(8 downto 6);
	s133 <= '0'&FL&"000";
	s132 <= "00"&FL&"00";
	s130 <= "0000"&FL;
	t <= std_logic_vector(to_unsigned(to_integer(unsigned(s133)) + to_integer(unsigned(s132)),10));
	mul2 <= std_logic_vector(to_unsigned(to_integer(unsigned(t)) + to_integer(unsigned(s130)),10));
	t2 <= "0000"&X;
	SM <= std_logic_vector(unsigned(t2) - unsigned(mul2));
	FLOOR <= FL;
	MODULO <= SM(5 downto 0);
end behavior;

