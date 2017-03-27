library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dealerFSM_tst is
end;

architecture test of dealerFSM_tst is
	component g07_dealerFSM
		port (
			request_deal: in std_logic;
			rand_lt_num: in std_logic;
			reset: in std_logic;
			clock: in std_logic;
			stack_enable: out std_logic;
			rand_enable: out std_logic
		);
	end component;
	SIGNAL request_deal, rand_lt_num, reset, stack_enable, rand_enable: std_logic;
	SIGNAL clock: std_logic := '0';
	SIGNAL finished: std_logic := '0';

begin
	machine: g07_dealerFSM
	port map (
		request_deal => request_deal,
		rand_lt_num => rand_lt_num,
		reset => reset,
		clock => clock,
		stack_enable => stack_enable,
		rand_enable => rand_enable
	);

	clock <= '0' when finished = '1' else not clock after 10 ns;

	always: process
	begin
		request_deal <= '1';
		rand_lt_num <= '0';
		reset <= '0';
		WAIT FOR 20 ns;
		request_deal <= '0';
		WAIT FOR 20 ns;
		request_deal <= '1';
		WAIT FOR 20 ns;
		request_deal <= '0';
		WAIT FOR 20 ns;
		request_deal <= '1';
		WAIT FOR 20 ns;
		rand_lt_num <= '1';
		WAIT FOR 20 ns;
		rand_lt_num <= '0';
		WAIT FOR 20 ns;
		request_deal <= '0';
		WAIT FOR 20 ns;
		request_deal <= '1';
		WAIT FOR 23 ns;
		reset <= '1';
		WAIT FOR 2 ns;
		reset <= '0';
		WAIT FOR 15 ns;
		finished <= '1';
		WAIT;
	end process always;
end test;

