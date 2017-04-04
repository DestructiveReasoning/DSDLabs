library ieee;
use ieee.std_logic_1164.all;

entity systemFSM is
	port (
		play: in std_logic;
		done: in std_logic;
		reset: in std_logic;
		valid: in std_logic;
		card_dealt: in std_logic;
		count: in std_logic_vector(4 downto 0);
		cpu_num: in std_logic_vector(5 downto 0);
		hum_num: in std_logic_vector(5 downto 0);
		deck_num: in std_logic_vector(5 downto 0);
		clock: in std_logic;
		turn: out std_logic := '0';
		request_deal: out std_logic;
		game_start: out std_logic;
		cpu_en: out std_logic;
		hum_en: out std_logic;
		cnt_en: out std_logic;
		deck_mode: out std_logic_vector(1 downto 0);
		init_deck: out std_logic;
		invalid_led: out std_logic;
		gg_led: out std_logic;
		w_led: out std_logic;
		l_led: out std_logic;
		d_led: out std_logic;
		deck_en: out std_logic
	);
end systemFSM;

architecture system of systemFSM is
	Type State_Type is (A,WAIT_FOR_NEW_DECK,B,C,D,E,F,G,PILE);
	SIGNAL state: State_Type;

begin
	machine: process(clock, reset)
	begin
		if(reset = '1') then
			state <= A;
		elsif(clock'Event and clock='1') then
			case state is
				when A =>
					state <= WAIT_FOR_NEW_DECK;
				when WAIT_FOR_NEW_DECK =>
					state <= B;
				when B =>
					if(count >= "01111") then
						state <= PILE;
					else state <= B;
					end if;
				when PILE =>
					state <= C;
				when C =>
					if(cpu_num = "000000") then state <= G;
					else
						if(play = '0') then state <= C;
						else state <= D;
						end if;
						invalid_led <= '1';
					end if;
				when D =>
					if(valid = '0') then state <= E;
					else state <= F;
					end if;
				when E =>
					if(card_dealt <= '0') then state <= E;
					else state <= C;
					end if;
					invalid_led <= '0';
				when F =>
					if(hum_num = "000000") then state <= G;
					else
						if(done = '0') then state <= F;
						else state <= C;
						end if;
					end if;
				when G =>
					state <= G;
			end case;
		end if;
	end process machine;
	turn <= '1' when state = F else '0';
	request_deal <= '1' when state = E else '0';
	game_start <= '1' when state = B else '0';
	cpu_en <= '1' when state = B and count(0) = '1' else '0';
	hum_en <= '1' when (state = B and count(0) = '0') or (state = D and valid = '1') else '0';
	cnt_en <= '1' when state = B else '0';
	deck_mode <= "10" when state = A else "11" when (state = B or state = PILE or state = E) else "00";
	init_deck <= '1' when state = PILE else '0';
	gg_led <= '0' when state = G else '1';
	w_led <= '0' when state = G and hum_num = "000000" else '1';
	l_led <= '0' when state = G and cpu_num = "000000" else '1';
	d_led <= '0' when state = G and deck_num = "000000" else '1';
	deck_en <= '1' when (state = B or state = PILE) else '0';
end system;
