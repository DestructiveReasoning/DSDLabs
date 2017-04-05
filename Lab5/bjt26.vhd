library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity bjt26 is
	port (
		clock: in std_logic;
		enable: in std_logic;
		reset: in std_logic;
		mode: in std_logic_vector(1 downto 0);
		addr: in std_logic_vector(5 downto 0);
		--data: in std_logic_vector(6-1 downto 0);
		data: in std_logic_vector(5 downto 0);
		full: out std_logic := '0';
		empty: out std_logic := '1';
		num: out std_logic_vector(5 downto 0) := (others => '0');
		value: out std_logic_vector(5 downto 0)
	);
end bjt26;

architecture stacklike of bjt26 is
	type donald is array (26-1 downto 0) of std_logic_vector(5 downto 0);
	SIGNAL memory: donald;
	--SIGNAL memory: std_logic_vector(26 * 6 - 1 downto 0) := (others => '0');
	SIGNAL t_full: std_logic := '0';
	SIGNAL t_empty: std_logic := '1';
	SIGNAL t_num: integer range 0 to 31 := 0;
begin
	always: process(clock, reset,enable)
	begin
		if(reset = '1') then 
			for i in 0 to 26-1 LOOP
				memory(i) <= std_logic_vector(to_unsigned(0,6));
			end LOOP;
			t_num <= 0;
		else
			if(clock'Event and clock = '1' and enable = '1') then
				if(mode = "01" and t_full = '0') then
					for i in 1 to 26-1 LOOP
						memory(i) <= memory(i-1);
					end LOOP;
					memory(0) <= data;

					--memory <= memory((26-1) * 6 - 1 downto 0)&data;
					t_num <= t_num + 1;
				elsif(mode = "10") then
					for i in 0 to 26 - 1 LOOP
						memory(i) <= std_logic_vector(to_unsigned(i,6));
					end LOOP;
					t_num <= 26;
				elsif(mode = "11" and t_empty = '0') then
					if(to_integer(unsigned(addr)) < 26)then
						if(to_integer(unsigned(addr)) = 0) then 
							for i in 0 to 26 - 2 LOOP
								memory(i) <= memory(i+1);
							end LOOP;
							memory(26 - 1) <= std_logic_vector(to_unsigned(0,6));
						elsif(to_integer(unsigned(addr)) = 26 - 1) then memory(26-1) <= std_logic_vector(to_unsigned(0,6));
						else 
							for i in 0 to 26 - 2 LOOP
								if(i >= to_integer(unsigned(addr))) then
									memory(i) <= memory(i+1);
								end if;
							end LOOP;
							memory(26 - 1) <= std_logic_vector(to_unsigned(0,6));
						end if;
						t_num <= t_num - 1;
					end if;
				end if;
			end if;
		end if;
	end process always;

	t_full <= '1' when t_num = 26 else '0';
	t_empty <= '1' when t_num = 0 else '0';
	value <= std_logic_vector(to_unsigned(0,6)) when
			 (to_integer(unsigned(addr)) >= 26) else
			 memory(to_integer(unsigned(addr)));
	full <= t_full;
	empty <= t_empty;
	num <= std_logic_vector(to_unsigned(t_num,6));
end stacklike;
