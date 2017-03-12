library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stacktest is
end stacktest;

architecture test of stacktest is
	component g07_stack
		port (
		mode: in std_logic_vector(1 downto 0);
		addr: in std_logic_vector(5 downto 0);
		data: in std_logic_vector(5 downto 0);
		enable: in std_logic;
		rst: in std_logic;
		clk: in std_logic;
		value: out std_logic_vector(5 downto 0);
		num: out std_logic_vector(5 downto 0);
		full: out std_logic;
		empty: out std_logic
		);
	end component;
	SIGNAL mode: std_logic_vector(1 downto 0);
	SIGNAL addr, data: std_logic_vector(5 downto 0);
	SIGNAL enable, rst: std_logic;
	SIGNAL clk: std_logic;
	SIGNAL value, num: std_logic_vector(5 downto 0);
	SIGNAL full, empty: std_logic;

begin
	jenga: g07_stack
	port map (
		mode => mode,
		clk => clk,
		enable => enable,
		rst => rst,
		addr => addr,
		data => data,
		value => value,
		num => num,
		full => full,
		empty => empty
	);
	clockproc: process 
	begin
		for i in 0 to 500 LOOP
			clk <= '0';
			WAIT FOR 5 ns;
			clk <= '1';
			WAIT FOR 5 ns;
		end LOOP;
		WAIT;
	end process;
	always: process
	begin
		enable <= '1';
		rst <= '0';
		addr <= "000000";
		data <= "000000";
		mode <= "10";
		wait for 20 ns;
		mode <= "00";
		addr <= "110011";
		wait for 20 ns;
		WAIT;
	end process;
end test;
