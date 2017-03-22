library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register6_tst is
end register6_tst;

architecture test of register6_tst is
	component g07_register6
		port(
			data_in: in std_logic_vector(5 downto 0);
			enable: in std_logic;
			clock: in std_logic;
			data_out: out std_logic_vector(5 downto 0));
	end component;
	SIGNAL input, output: std_logic_vector(5 downto 0);
	SIGNAL enable: std_logic;
	SIGNAL clock: std_logic := '0';
	SIGNAL finished: std_logic := '0';

begin
	reg: g07_register6 port map (data_in => input, enable => enable, clock => clock, data_out => output);

	clock <= not clock after 5 ns when finished = '0' else '0';

	reg_update: process
	begin
		finished <= '0';
		enable <= '0';
		input <= "110100";
		WAIT FOR 14 ns;
		enable <= '1';
		WAIT FOR 11 ns;
		enable <= '0';
		WAIT FOR 5 ns;
		input <= "010011";
		WAIT FOR 10 ns;
		enable <= '1';
		WAIT FOR 15 ns;
		finished <= '1';
		WAIT;
	end process reg_update;
end test;
