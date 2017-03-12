library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_debounder_tst is
end g07_debounder_tst;

architecture test of g07_debounder_tst is
	component g07_debounder
		port (
			BUTTON: in std_logic;
			CLK: in std_logic;
			PULSE: out std_logic
		);
	end component;
	signal CLOCK: std_logic;
	signal B: std_logic;
	signal OUTPUT: std_logic;
begin
	gate: g07_debounder port map (BUTTON=> B, CLK => CLOCK, PULSE => OUTPUT);
always: process
begin
	B <= '0';
	CLOCK <= '0';
	WAIT FOR 5 ns;
	for i in 0 to 50000 LOOP
		B <= not B;
		WAIT FOR 100 ns;
		B <= not B;
		CLOCK <= NOT CLOCK;
		WAIT FOR 100 ns;
	end LOOP;
	WAIT;
end process always;

end test;

