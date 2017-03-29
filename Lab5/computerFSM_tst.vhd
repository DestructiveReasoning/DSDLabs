library ieee;
use ieee.std_logic_1164.all;

entity computerFSM_tst is
end;

architecture test of computerFSM_tst is
	component g07_computerFSM
		port (
			turn: in std_logic;
			cnt_lt_num: in std_logic;
			valid: in std_logic;
			clock: in std_logic;
			reset: in std_logic;
			stack_enable: out std_logic;
			stack_mode: out std_logic_vector(1 downto 0);
			cnt_reg_enable: out std_logic;
			cnt_reset: out std_logic;
			done: out std_logic
		);
	end component;

	SIGNAL turn,cnt_lt_num,valid,reset,stack_enable,cnt_reg_enable,cnt_reset,done: std_logic;
	SIGNAL clock: std_logic := '1';
	SIGNAL finished: std_logic := '0';
	SIGNAL stack_mode: std_logic_vector(1 downto 0);

begin
	fsm: g07_computerFSM
	port map (
		turn=>turn,
		cnt_lt_num => cnt_lt_num,
		valid => valid,
		clock => clock,
		reset => reset,
		stack_enable => stack_enable,
		stack_mode => stack_mode,
		cnt_reg_enable => cnt_reg_enable,
		cnt_reset => cnt_reset,
		done => done
	);

	clock <= '0' when finished = '1' else not clock after 10 ns;

	always: process
	begin
		turn <= '0';
		cnt_lt_num <= '1';
		valid <= '0';
		reset <= '0';
		WAIT FOR 18 ns;
		turn <= '1';
		WAIT FOR 20 ns;
		valid <= '1';
		WAIT FOR 20 ns;
		valid <= '0';
		turn <= '0';
		WAIT FOR 20 ns;
		turn <= '1';
		WAIT FOR 20 ns;
		cnt_lt_num <= '0';
		WAIT FOR 20 ns;
		cnt_lt_num <= '1';
		WAIT FOR 43 ns;
		reset <= '1';
		WAIT FOR 2 ns;
		turn <= '0';
		reset <= '0';
		WAIT FOR 15 ns;
		finished <= '1';
		WAIT;
	end process always;
end test;
