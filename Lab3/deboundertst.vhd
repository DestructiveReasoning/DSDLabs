library ieee;
use ieee.std_logic_1164.all;

entity deboundertst is
end;

architecture test of deboundertst is
	component g07_debounder
		port (
			x: in std_logic;
			clk: in std_logic;
			pulse: out std_logic
		);
	end component;

	SIGNAL X,CLK: std_logic;
	SIGNAL PULSE: std_logic;


begin

	debounder: g07_debounder port map (x => X, clk => CLK, pulse => PULSE);
	always: process
	begin
		X <= '0';
		CLK <= '1';
		for i in 0 to 1048576 loop
			X <= not X;
			WAIT FOR 10 ns;
			X <= not X;
			CLK <= not CLK;
			WAIT FOR 10 ns;
		end loop;
		WAIT;
	end process;
end test;
