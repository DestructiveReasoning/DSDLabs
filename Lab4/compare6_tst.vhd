library ieee;
use ieee.std_logic_1164.all;

entity compare6_tst is
end compare6_tst;

architecture test of compare6_tst is
	component g07_compare6
		port (
			dataa: in std_logic_vector(5 downto 0);
			datab: in std_logic_vector(5 downto 0);
			eq: out std_logic
		);
	end component;
	SIGNAL dataa, datab: std_logic_vector(5 downto 0);
	SIGNAL eq: std_logic;

begin
	comp: g07_compare6 port map (dataa => dataa, datab => datab, eq => eq);

	always: process
	begin
		dataa <= "111111";
		datab <= "000000";
		WAIT FOR 5 ns;
		dataa <= "010101";
		WAIT FOR 5 ns;
		datab <= "010101";
		WAIT FOR 5 ns;
		datab <= "110100";
		WAIT FOR 10 ns;
		dataa <= "110100";
		WAIT FOR 10 ns;
		WAIT;
	end process always;
end test;
