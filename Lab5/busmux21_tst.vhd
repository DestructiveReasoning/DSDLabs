library ieee;
use ieee.std_logic_1164.all;

entity busmux21_tst is
end;

architecture test of busmux21_tst is
	component g07_busmux21
		generic ( width: integer);
		port (
			data0: in std_logic_vector (width-1 downto 0);
			data1: in std_logic_vector (width-1 downto 0);
			sel: in std_logic;
			output: out std_logic_vector (width-1 downto 0)
		);
	end component;

	SIGNAL data0: std_logic_vector(5 downto 0);
	SIGNAL data1: std_logic_vector(5 downto 0);
	SIGNAL sel: std_logic;
	SIGNAL output: std_logic_vector(5 downto 0);

begin
	mux: g07_busmux21 generic map (width => 6) port map (data0 => data0, data1 => data1, sel => sel, output => output);

	t: process
	begin
		sel <= '0';
		data0 <= "000111";
		data1 <= "111000";
		WAIT FOR 5 ns;
		sel <= '1';
		WAIT FOR 5 ns;
		data0 <= "101010";
		WAIT FOR 5 ns;
		sel <= '0';
		WAIT FOR 5 ns;
		WAIT;
	end process t;
end test;


