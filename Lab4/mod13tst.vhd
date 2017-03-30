library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mod13tst is
end mod13tst;

architecture test of mod13tst is
	component g07_mod13
		port (
			X: IN STD_LOGIC_VECTOR(5 downto 0);
			MODULO: OUT STD_LOGIC_VECTOR(5 downto 0);
			FLOOR: OUT STD_LOGIC_VECTOR(5 downto 0)
		);
	end component;
	SIGNAL X,MODULO,FLOOR: STD_LOGIC_VECTOR(5 downto 0);
begin
	g1: g07_mod13 port map (X => X, MODULO => MODULO, FLOOR => FLOOR);

	always:PROCESS
	begin
		for i in 0 to 63 LOOP
			X <= std_logic_vector(to_unsigned(i,6));
			WAIT FOR 10 ns;
		END LOOP;
		WAIT;
	end process always;
end test;
