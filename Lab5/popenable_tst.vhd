library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity popenable_tst is
end;

architecture test of popenable_tst is
	component g07_popenable
		port (addr: in std_logic_vector(5 downto 0); clock: in std_logic; enables: out std_logic_vector(51 downto 0));
	end component;

	SIGNAL addr: std_logic_vector(5 downto 0);
	SIGNAL clock: std_logic := '0';
	SIGNAL finished: std_logic := '0';
	SIGNAL enables: std_logic_vector(51 downto 0);

begin
	pop: g07_popenable port map (addr => addr, clock => clock, enables => enables);

	clock <= '0' when finished = '1' else not clock after 10 ns;

	always: process
	begin
		for i in 0 to 63 LOOP
			addr <= std_logic_vector(to_unsigned(i,6));
			WAIT FOR 20 ns;
		end LOOP;
		finished <= '1';
		WAIT;
	end process always;
end test;
