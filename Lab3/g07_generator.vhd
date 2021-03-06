library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_generator is
	port (
		O0: OUT STD_LOGIC_VECTOR(5 downto 0);
		O1: OUT STD_LOGIC_VECTOR(5 downto 0);
		O2: OUT STD_LOGIC_VECTOR(5 downto 0);
		O3: OUT STD_LOGIC_VECTOR(5 downto 0);
		O4: OUT STD_LOGIC_VECTOR(5 downto 0);
		O5: OUT STD_LOGIC_VECTOR(5 downto 0);
		O6: OUT STD_LOGIC_VECTOR(5 downto 0);
		O7: OUT STD_LOGIC_VECTOR(5 downto 0);
		O8: OUT STD_LOGIC_VECTOR(5 downto 0);
		O9: OUT STD_LOGIC_VECTOR(5 downto 0);
		O10: OUT STD_LOGIC_VECTOR(5 downto 0);
		O11: OUT STD_LOGIC_VECTOR(5 downto 0);
		O12: OUT STD_LOGIC_VECTOR(5 downto 0);
		O13: OUT STD_LOGIC_VECTOR(5 downto 0);
		O14: OUT STD_LOGIC_VECTOR(5 downto 0);
		O15: OUT STD_LOGIC_VECTOR(5 downto 0);
		O16: OUT STD_LOGIC_VECTOR(5 downto 0);
		O17: OUT STD_LOGIC_VECTOR(5 downto 0);
		O18: OUT STD_LOGIC_VECTOR(5 downto 0);
		O19: OUT STD_LOGIC_VECTOR(5 downto 0);
		O20: OUT STD_LOGIC_VECTOR(5 downto 0);
		O21: OUT STD_LOGIC_VECTOR(5 downto 0);
		O22: OUT STD_LOGIC_VECTOR(5 downto 0);
		O23: OUT STD_LOGIC_VECTOR(5 downto 0);
		O24: OUT STD_LOGIC_VECTOR(5 downto 0);
		O25: OUT STD_LOGIC_VECTOR(5 downto 0);
		O26: OUT STD_LOGIC_VECTOR(5 downto 0);
		O27: OUT STD_LOGIC_VECTOR(5 downto 0);
		O28: OUT STD_LOGIC_VECTOR(5 downto 0);
		O29: OUT STD_LOGIC_VECTOR(5 downto 0);
		O30: OUT STD_LOGIC_VECTOR(5 downto 0);
		O31: OUT STD_LOGIC_VECTOR(5 downto 0);
		O32: OUT STD_LOGIC_VECTOR(5 downto 0);
		O33: OUT STD_LOGIC_VECTOR(5 downto 0);
		O34: OUT STD_LOGIC_VECTOR(5 downto 0);
		O35: OUT STD_LOGIC_VECTOR(5 downto 0);
		O36: OUT STD_LOGIC_VECTOR(5 downto 0);
		O37: OUT STD_LOGIC_VECTOR(5 downto 0);
		O38: OUT STD_LOGIC_VECTOR(5 downto 0);
		O39: OUT STD_LOGIC_VECTOR(5 downto 0);
		O40: OUT STD_LOGIC_VECTOR(5 downto 0);
		O41: OUT STD_LOGIC_VECTOR(5 downto 0);
		O42: OUT STD_LOGIC_VECTOR(5 downto 0);
		O43: OUT STD_LOGIC_VECTOR(5 downto 0);
		O44: OUT STD_LOGIC_VECTOR(5 downto 0);
		O45: OUT STD_LOGIC_VECTOR(5 downto 0);
		O46: OUT STD_LOGIC_VECTOR(5 downto 0);
		O47: OUT STD_LOGIC_VECTOR(5 downto 0);
		O48: OUT STD_LOGIC_VECTOR(5 downto 0);
		O49: OUT STD_LOGIC_VECTOR(5 downto 0);
		O50: OUT STD_LOGIC_VECTOR(5 downto 0);
		O51: OUT STD_LOGIC_VECTOR(5 downto 0);
		ZERO: OUT STD_LOGIC_VECTOR(51 downto 0);
		ONES: OUT STD_LOGIC_VECTOR(51 downto 0)
	);
end g07_generator;

architecture behavior of g07_generator is
begin
		O0 <= std_logic_vector (to_unsigned(0,6));
		O1 <= std_logic_vector (to_unsigned(1,6));
		O2 <= std_logic_vector (to_unsigned(2,6));
		O3 <= std_logic_vector (to_unsigned(3,6));
		O4 <= std_logic_vector (to_unsigned(4,6));
		O5 <= std_logic_vector (to_unsigned(5,6));
		O6 <= std_logic_vector (to_unsigned(6,6));
		O7 <= std_logic_vector (to_unsigned(7,6));
		O8 <= std_logic_vector (to_unsigned(8,6));
		O9 <= std_logic_vector (to_unsigned(9,6));
		O10 <= std_logic_vector (to_unsigned(10,6));
		O11 <= std_logic_vector (to_unsigned(11,6));
		O12 <= std_logic_vector (to_unsigned(12,6));
		O13 <= std_logic_vector (to_unsigned(13,6));
		O14 <= std_logic_vector (to_unsigned(14,6));
		O15 <= std_logic_vector (to_unsigned(15,6));
		O16 <= std_logic_vector (to_unsigned(16,6));
		O17 <= std_logic_vector (to_unsigned(17,6));
		O18 <= std_logic_vector (to_unsigned(18,6));
		O19 <= std_logic_vector (to_unsigned(19,6));
		O20 <= std_logic_vector (to_unsigned(20,6));
		O21 <= std_logic_vector (to_unsigned(21,6));
		O22 <= std_logic_vector (to_unsigned(22,6));
		O23 <= std_logic_vector (to_unsigned(23,6));
		O24 <= std_logic_vector (to_unsigned(24,6));
		O25 <= std_logic_vector (to_unsigned(25,6));
		O26 <= std_logic_vector (to_unsigned(26,6));
		O27 <= std_logic_vector (to_unsigned(27,6));
		O28 <= std_logic_vector (to_unsigned(28,6));
		O29 <= std_logic_vector (to_unsigned(29,6));
		O30 <= std_logic_vector (to_unsigned(30,6));
		O31 <= std_logic_vector (to_unsigned(31,6));
		O32 <= std_logic_vector (to_unsigned(32,6));
		O33 <= std_logic_vector (to_unsigned(33,6));
		O34 <= std_logic_vector (to_unsigned(34,6));
		O35 <= std_logic_vector (to_unsigned(35,6));
		O36 <= std_logic_vector (to_unsigned(36,6));
		O37 <= std_logic_vector (to_unsigned(37,6));
		O38 <= std_logic_vector (to_unsigned(38,6));
		O39 <= std_logic_vector (to_unsigned(39,6));
		O40 <= std_logic_vector (to_unsigned(40,6));
		O41 <= std_logic_vector (to_unsigned(41,6));
		O42 <= std_logic_vector (to_unsigned(42,6));
		O43 <= std_logic_vector (to_unsigned(43,6));
		O44 <= std_logic_vector (to_unsigned(44,6));
		O45 <= std_logic_vector (to_unsigned(45,6));
		O46 <= std_logic_vector (to_unsigned(46,6));
		O47 <= std_logic_vector (to_unsigned(47,6));
		O48 <= std_logic_vector (to_unsigned(48,6));
		O49 <= std_logic_vector (to_unsigned(49,6));
		O50 <= std_logic_vector (to_unsigned(50,6));
		O51 <= std_logic_vector (to_unsigned(51,6));
		ZERO <= X"0000000000000";
		ONES <= X"FFFFFFFFFFFFF";
end behavior;
