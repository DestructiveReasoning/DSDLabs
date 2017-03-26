library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_popenable is
	port (
		addr: in std_logic_vector(5 downto 0);
		clock: in std_logic;
		enables: out std_logic_vector(51 downto 0)
	);
end g07_popenable;

architecture rom of g07_popenable is
	type mem is array ( 0 to 51 ) of std_logic_vector(51 downto 0);
	constant the_rom: mem := (
		0 => x"FFFFFFFFFFFFF",
		1 => x"FFFFFFFFFFFFE",
		2 => x"FFFFFFFFFFFFC",
		3 => x"FFFFFFFFFFFF8",
		4 => x"FFFFFFFFFFFF0",
		5 => x"FFFFFFFFFFFE0",
		6 => x"FFFFFFFFFFFC0",
		7 => x"FFFFFFFFFFF80",
		8 => x"FFFFFFFFFFF00",
		9 => x"FFFFFFFFFFE00",
		10 => x"FFFFFFFFFFC00",
		11 => x"FFFFFFFFFF800",
		12 => x"FFFFFFFFFF000",
		13 => x"FFFFFFFFFE000",
		14 => x"FFFFFFFFFC000",
		15 => x"FFFFFFFFF8000",
		16 => x"FFFFFFFFF0000",
		17 => x"FFFFFFFFE0000",
		18 => x"FFFFFFFFC0000",
		19 => x"FFFFFFFF80000",
		20 => x"FFFFFFFF00000",
		21 => x"FFFFFFFE00000",
		22 => x"FFFFFFFC00000",
		23 => x"FFFFFFF800000",
		24 => x"FFFFFFF000000",
		25 => x"FFFFFFE000000",
		26 => x"FFFFFFC000000",
		27 => x"FFFFFF8000000",
		28 => x"FFFFFF0000000",
		29 => x"FFFFFE0000000",
		30 => x"FFFFFC0000000",
		31 => x"FFFFF80000000",
		32 => x"FFFFF00000000",
		33 => x"FFFFE00000000",
		34 => x"FFFFC00000000",
		35 => x"FFFF800000000",
		36 => x"FFFF000000000",
		37 => x"FFFE000000000",
		38 => x"FFFC000000000",
		39 => x"FFF8000000000",
		40 => x"FFF0000000000",
		41 => x"FFE0000000000",
		42 => x"FFC0000000000",
		43 => x"FF80000000000",
		44 => x"FF00000000000",
		45 => x"FE00000000000",
		46 => x"FC00000000000",
		47 => x"F800000000000",
		48 => x"E000000000000",
		49 => x"C000000000000",
		50 => x"8000000000000",
		51 => x"0000000000000" );
begin
	lookup: process(clock)
	begin
		if(clock'Event and clock = '1') then
			case addr is
				when "000000" => enables <= the_rom(0);
				when "000001" => enables <= the_rom(1);
				when "000010" => enables <= the_rom(2);
				when "000011" => enables <= the_rom(3);
				when "000100" => enables <= the_rom(4);
				when "000101" => enables <= the_rom(5);
				when "000110" => enables <= the_rom(6);
				when "000111" => enables <= the_rom(7);
				when "001000" => enables <= the_rom(8);
				when "001001" => enables <= the_rom(9);
				when "001010" => enables <= the_rom(10);
				when "001011" => enables <= the_rom(11);
				when "001100" => enables <= the_rom(12);
				when "001101" => enables <= the_rom(13);
				when "001110" => enables <= the_rom(14);
				when "001111" => enables <= the_rom(15);
				when "010000" => enables <= the_rom(16);
				when "010001" => enables <= the_rom(17);
				when "010010" => enables <= the_rom(18);
				when "010011" => enables <= the_rom(19);
				when "010100" => enables <= the_rom(20);
				when "010101" => enables <= the_rom(21);
				when "010110" => enables <= the_rom(22);
				when "010111" => enables <= the_rom(23);
				when "011000" => enables <= the_rom(24);
				when "011001" => enables <= the_rom(25);
				when "011010" => enables <= the_rom(26);
				when "011011" => enables <= the_rom(27);
				when "011100" => enables <= the_rom(28);
				when "011101" => enables <= the_rom(29);
				when "011110" => enables <= the_rom(30);
				when "011111" => enables <= the_rom(31);
				when "100000" => enables <= the_rom(32);
				when "100001" => enables <= the_rom(33);
				when "100010" => enables <= the_rom(34);
				when "100011" => enables <= the_rom(35);
				when "100100" => enables <= the_rom(36);
				when "100101" => enables <= the_rom(37);
				when "100110" => enables <= the_rom(38);
				when "100111" => enables <= the_rom(39);
				when "101000" => enables <= the_rom(40);
				when "101001" => enables <= the_rom(41);
				when "101010" => enables <= the_rom(42);
				when "101011" => enables <= the_rom(43);
				when "101100" => enables <= the_rom(44);
				when "101101" => enables <= the_rom(45);
				when "101110" => enables <= the_rom(46);
				when "101111" => enables <= the_rom(47);
				when "110000" => enables <= the_rom(48);
				when "110001" => enables <= the_rom(49);
				when "110010" => enables <= the_rom(50);
				when "110011" => enables <= the_rom(51);
				when others => enables <= x"0000000000000";
			end case;
		end if;
	end process lookup;
end rom;
