library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity bjt_tst is
end;

architecture test of bjt_tst is
	component g07_bjt
		generic (
			bjt_depth: integer;
			width: integer
		);
		port (
			clock: in std_logic;
			enable: in std_logic;
			reset: in std_logic;
			mode: in std_logic_vector(1 downto 0);
			addr: in std_logic_vector(integer(ceil(log2(real(bjt_depth))))-1 downto 0);
			data: in std_logic_vector(width-1 downto 0);
			full: out std_logic := '0';
			empty: out std_logic := '1';
			num: out std_logic_vector(integer(ceil(log2(real(bjt_depth))))-1 downto 0) := (others => '0');
			value: out std_logic_vector(width-1 downto 0)
		);
	end component;

	SIGNAL clock: std_logic := '1';
	SIGNAL finished: std_logic := '0';

	SIGNAL enable,reset,full,empty: std_logic;
	SIGNAL mode: std_logic_vector(1 downto 0);
	SIGNAL addr,num: std_logic_vector(5 downto 0);
	SIGNAL data, value: std_logic_vector(5 downto 0);

begin
	bjt: g07_bjt
	generic map (width => 6, bjt_depth => 52)
	port map (
		clock => clock,
		enable => enable,
		reset => reset,
		mode => mode,
		addr => addr,
		data => data,
		full => full,
		empty => empty,
		num => num,
		value => value
	);

	clock <= '0' when finished = '1' else not clock after 10 ns;

	always: process
	begin
		enable <= '0';
		reset <= '0';
		mode <= "00";
		addr <= "011000";
		data <= "101010";
		WAIT FOR 40 ns;
		mode <= "10";
		WAIT FOR 18 ns;
		enable <= '1';
		WAIT FOR 22 ns;
		addr <= "011001";
		WAIT FOR 18 ns;
		mode <= "01";
		WAIT FOR 20 ns;
		mode <= "11";
		WAIT FOR 20 ns;
		mode <= "00";
		addr <= "011010";
		WAIT FOR 20 ns;
		addr <= "011000";
		WAIT FOR 20 ns;
		mode <= "01";
		WAIT FOR 20 ns;
		mode <= "00";
		addr <= "000000";
		WAIT FOR 20 ns;
		mode <= "11";
		WAIT FOR 20 ns;
		mode <= "00";
		WAIT FOR 20 ns;
		addr <= "110011";
		mode <= "11";
		WAIT FOR 20 ns;
		mode <= "00";
		WAIT FOR 20 ns;
		addr <= "110010";
		WAIT FOR 3 ns;
		reset <= '1';
		WAIT FOR 2 ns;
		reset <= '0';
		WAIT FOR 15 ns;
		addr <= "111111";
		mode <= "11";
		WAIT FOR 20 ns;
		finished <= '1';
		WAIT;
	end process always;
end test;
