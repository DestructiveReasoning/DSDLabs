library ieee;
use ieee.std_logic_1164.all;

entity g07_testbed is
	port (
		b: in std_logic;
		clk: in std_logic;
		mode: in std_logic_vector(1 downto 0);
		addr: in std_logic_vector(5 downto 0);
		rst: in std_logic;
		led1, led2: out std_logic_vector(6 downto 0)
	);
end g07_testbed;

architecture behavior of g07_testbed is
	component g07_debounder
		port (
			button: in std_logic;
			clk: in std_logic;
			pulse: out std_logic
		);
	end component;
	component g07_stack
		port (
			mode: in std_logic_vector(1 downto 0);
			data: in std_logic_vector(5 downto 0);
			enable: in std_logic;
			rst: in std_logic;
			addr: in std_logic_vector(5 downto 0);
			clk: in std_logic;
			value: out std_logic_vector(5 downto 0);
			full: out std_logic;
			empty: out std_logic;
			num: out std_logic_vector(5 downto 0)
		);
	end component;
	component mod13
		port (
			x: in std_logic_vector(5 downto 0);
			modulo: out std_logic_vector(5 downto 0);
			floor: out std_logic_vector(5 downto 0)
		);
	end component;
	component g07_7_segment_decoder
		port (
			code: in std_logic_vector(3 downto 0);
			mode: in std_logic;
			segments_out: out std_logic_vector(6 downto 0)
		);
	end component;
	
	SIGNAL button: std_logic;
	SIGNAL pulse: std_logic;
	SIGNAL value: std_logic_vector(5 downto 0);
	SIGNAL modulo, floor: std_logic_vector(5 downto 0);

begin
	button <= not b;
	gen: g07_debounder port map (button => button, clk => clk, pulse => pulse);
	stack: g07_stack 
		port map (
			mode => mode,
			enable => pulse,
			data => "000000",
			rst => rst,
			clk => clk,
			addr => addr,
			value => value);
	modder: mod13 port map (x => value, floor => floor, modulo => modulo);
	d1: g07_7_segment_decoder port map (code => modulo(3 downto 0), mode => '0', segments_out => led1);
	d2: g07_7_segment_decoder port map (code => floor(3 downto 0), mode => '0', segments_out => led2);
end behavior;
