library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compare6_tst is
end compare6_tst;

architecture test of compare6_tst is
	component g07_compare6
		port (
			dataa: in std_logic_vector(5 downto 0);
			datab: in std_logic_vector(5 downto 0);
			eq: out std_logic;
			lt, gt: out std_logic
		);
	end component;
	SIGNAL dataa, datab: std_logic_vector(5 downto 0);
	SIGNAL eq: std_logic;
	SIGNAL gt, lt: std_logic;

begin
	comp: g07_compare6 port map (dataa => dataa, datab => datab, eq => eq, lt => lt, gt => gt);

	always: process
	begin
		datab <= "110100";
		for i in 0 to 63 LOOP
			dataa <= std_logic_vector(to_unsigned(i,6));
			WAIT FOR 5 ns;
		end LOOP;
		WAIT;
	end process always;
end test;
