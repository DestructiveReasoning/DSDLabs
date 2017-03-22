library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_rules_tst is
end g07_rules_tst;

architecture test of g07_rules_tst is
	component g07_rules
		port (
			play_pile_top_card: in std_logic_vector(5 downto 0);
			card_to_play: in std_logic_vector(5 downto 0);
			legal_play: out std_logic);
	end component;
	component mod13
		port (
			x: in std_logic_vector(5 downto 0);
			modulo: out std_logic_vector(5 downto 0);
			floor: out std_logic_vector(5 downto 0));
	end component;

	SIGNAL top_card,play_card: std_logic_vector(5 downto 0);
	SIGNAL top_card_suit,play_card_suit,top_card_value,play_card_value: std_logic_vector(5 downto 0);
	SIGNAL legal: std_logic;

begin
	arbiter: g07_rules
	port map (
		play_pile_top_card => top_card,
		card_to_play => play_card,
		legal_play => legal
	);

	m1: mod13
	port map (
		x => top_card,
		modulo => top_card_value,
		floor => top_card_suit
	);

	m2: mod13
	port map (
		x => play_card,
		modulo => play_card_value,
		floor => play_card_suit
	);

	always: process
	begin
		top_card <= "000100";
		play_card <= "001000";
		WAIT FOR 10 ns;
		top_card <= "001000";
		play_card <= "001111";
		WAIT FOR 10 ns;
		top_card <= "001111";
		play_card <= "010000";
		WAIT FOR 10 ns;
		top_card <= "010000";
		play_card <= "010111";
		WAIT FOR 10 ns;
		top_card <= "010111";
		play_card <= "101010";
		WAIT FOR 10 ns;
		top_card <= "101010";
		play_card <= "001000";
		WAIT;
	end process always;
end test;
