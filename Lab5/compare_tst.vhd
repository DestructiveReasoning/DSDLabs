library ieee;
use ieee.std_logic_1164.all;

entity compare_tst is
end;

architecture test of compare_tst is
	component g07_compare
		generic (width: integer);
		port (
			dataa: in std_logic_vector(width-1 downto 0);
			datab: in std_logic_vector(width-1 downto 0);
			eq : out std_logic;
			gt : out std_logic;
			lt : out std_logic
		);
	end component;
	SIGNAL dataa, datab: std_logic_vector(5 downto 0);
	SIGNAL eq,gt,lt: std_logic;
begin

	c: g07_compare generic map (width => 6) port map (dataa => dataa, datab => datab, eq => eq, gt => gt, lt => lt);

	always: process
	begin
		dataa <= "000001";
		datab <= "000101";
		WAIT FOR 5 ns;
		dataa <= "000101";
		WAIT FOR 5 ns;
		dataa <= "100000";
		WAIT FOR 5 ns;
		datab <= "100000";
		WAIT FOR 5 ns;
		datab <= "111111";
		WAIT FOR 5 ns;
		WAIT;
	end process always;
end test;

