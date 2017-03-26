library ieee;
use ieee.std_logic_1164.all;

entity dff_tst is
end dff_tst;

architecture test of dff_tst is
	component g07_dff
		generic (width: integer; svalue: integer);
		port (
			data: in std_logic_vector(width-1 downto 0);
			clock: in std_logic;
			enable: in std_logic;
			aclr: in std_logic;
			sset: in std_logic;
			q: out std_logic_vector(width-1 downto 0)
		);
	end component;

	SIGNAL data: std_logic_vector(5 downto 0);
	SIGNAL clock: std_logic := '0';
	SIGNAL finished: std_logic := '0';
	SIGNAL enable,aclr,sset: std_logic;
	SIGNAL q: std_logic_vector(5 downto 0);

begin
	flipflop: g07_dff generic map (width => 6, svalue => 45)
	port map (
		data => data,
		clock => clock,
		enable => enable,
		aclr => aclr,
		sset => sset,
		q => q
	);

	clock <= '0' when finished = '1' else not clock after 10 ns;

	always: process
	begin
		data <= "110000";
		enable <= '0';
		aclr <= '0';
		sset <= '0';
		WAIT FOR 40 ns;
		enable <= '1';
		WAIT FOR 20 ns;
		enable <= '0';
		data <= "010101";
		WAIT FOR 10 ns;
		enable <= '1';
		WAIT FOR 30 ns;
		data <= "000000";
		sset <= '1';
		WAIT FOR 20 ns;
		sset <= '0';
		enable <= '0';
		WAIT FOR 20 ns;
		enable <= '0';
		sset <= '1';
		WAIT FOR 25 ns;
		sset <= '0';
		aclr <= '1';
		WAIT FOR 5 ns;
		aclr <= '0';
		WAIT FOR 10 ns;
		finished <= '1';
		WAIT;
	end process always;
end test;

