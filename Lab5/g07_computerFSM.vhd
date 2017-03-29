library ieee;
use ieee.std_logic_1164.all;

entity g07_computerFSM is
	port (
		turn: in std_logic;
		cnt_lt_num: in std_logic;
		valid: in std_logic;
		clock: in std_logic;
		reset: in std_logic;
		stack_enable: out std_logic;
		stack_mode: out std_logic_vector(1 downto 0);
		cnt_reg_enable: out std_logic;
		cnt_reset: out std_logic;
		done: out std_logic
	);
end g07_computerFSM;

architecture fsm of g07_computerFSM is
	Type State_Type is (A,B,C,D);
	SIGNAL state: State_Type := A;
begin

	machine:process(clock,reset)
	begin
		if(reset = '1') then state <= A;
		elsif(clock'Event and clock = '1') then
			case state is
				when A => 
					if(turn = '1') then state <= B;
					else state <= A;
					end if;
				when B =>
					if(valid = '1') then state <= C;
					elsif(cnt_lt_num = '0') then state <= D;
					else state <= B;
					end if;
				when C =>
					state <= A;
				when D =>
					state <= A;
			end case;
		end if;
	end process machine;

	stack_enable <= '1' when (state = C or state = D) else '0';
	cnt_reg_enable <= '1' when state = B else '0';
	stack_mode <= "00" when (state = A or state = B) else
				  "11" when state = C else
				  "01";
	cnt_reset <= '1' when state = A else '0';
	done <= '1' when (state = C or state = D) else '0';
end fsm;
