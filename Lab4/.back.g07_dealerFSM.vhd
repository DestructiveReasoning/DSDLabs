library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_FSM is
	port (
		request_deal: in std_logic;
		rand_lt_num: in std_logic;
		reset: in std_logic;
		clock: in std_logic;
		stack_enable: out std_logic;
		rand_enable: out std_logic
	);
end g07_FSM;

architecture machineOfState of g07_FSM is
	SIGNAL initial_seed: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(1337,32));
	SIGNAL random: std_logic_vector(31 downto 0);
	SIGNAL reg_out: std_logic_vector(5 downto 0);
	SIGNAL comp_lt: std_logic;
	SIGNAL stack_num: std_logic_vector(5 downto 0);

	TYPE State_type is (A,B,C,D);
	SIGNAL state: State_Type;
begin

	machine: process (clock, reset)
	begin
		stack_enable <= '0';
		rand_enable <= '0';
		if(reset = '1') then state <= A;
		elsif (clock'event and clock = '1') then
			case state is
				WHEN A =>
					if(request_deal = '0') then state <= B;
					else state <= A;
					end if;
				WHEN B =>
					if(request_deal = '0') then state <= B;
					else state <= C;
					end if;
				WHEN C =>
					rand_enable <= '1';
					if(rand_lt_num = '0') then state <= C;
					else state <= D;
					end if;
				WHEN D =>
					stack_enable <= '1';
					state <= A;
			end CASE;
		end if;
	end process machine;
end machineOfState;
