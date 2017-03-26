library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_tst is
end;

architecture test of counter_tst is
	component g07_counter 
		generic (width: integer; modulo: unsigned; svalue: integer);
		port (
			sset: in std_logic;
			updown: in std_logic;
			clock: in std_logic;
			cnt_en: in std_logic;
			aclr: in std_logic;
			count: out std_logic_vector(width-1 downto 0)
		);
	end component;

	SIGNAL sset,updown,cnt_en,aclr: std_logic;
	SIGNAL clock: std_logic := '0';
	SIGNAL count: std_logic_vector(2 downto 0);
	SIGNAL finished: std_logic := '0';

begin
	counter: g07_counter generic map(width => 3, modulo => to_unsigned(5,3), svalue => 4)
	port map (
		sset => sset,
		aclr => aclr,
		updown => updown,
		cnt_en => cnt_en,
		clock => clock,
		count => count
	);

	clock <= '0' when (finished = '1') else not clock after 10 ns;

	always: process
	begin
		sset <= '0';
		aclr <= '0';
		cnt_en <= '0';
		updown <= '1';
		WAIT FOR 40 ns;
		cnt_en <= '1';
		WAIT FOR 105 ns;
		aclr <= '1';
		WAIT FOR 2 ns;
		aclr <= '0';
		updown <= '0';
		WAIT FOR 13 ns;
		WAIT FOR 100 ns;
		sset <= '1';
		WAIT FOR 20 ns;
		sset <= '0';
		WAIT FOR 100 ns;
		finished <= '1';
		WAIT;
	end process always;
end test;


