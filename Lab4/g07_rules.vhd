library ieee;
use ieee.std_logic_1164.all;

entity g07_rules is
	port ( play_pile_top_card: in std_logic_vector(5 downto 0);
			card_to_play: in std_logic_vector(5 downto 0);
			legal_play: out std_logic);
end g07_rules;

architecture legal of g07_rules is
	component mod13
		port ( x: in std_logic_vector(5 downto 0);
				modulo: out std_logic_vector(5 downto 0);
				floor: out std_logic_vector(5 downto 0) );
	end component;

	signal pile_value, pile_suit, card_value, card_suit: std_logic_vector(5 downto 0);
begin
	m1: mod13 port map(x => play_pile_top_card, floor => pile_suit, modulo => pile_value);
	m2: mod13 port map(x => card_to_play, floor => card_suit, modulo => card_value);

	arbitration: process (pile_value,pile_suit,card_value,card_suit)
	begin
		if (pile_value = "000111") then legal_play <= '1';
		elsif (card_value = "000111") then legal_play <= '1';
		elsif (pile_value = card_value) then legal_play <= '1';
		elsif (pile_suit = card_suit) then legal_play <= '1';
		else legal_play <= '0';
		end if;
	end process arbitration;
end legal;
