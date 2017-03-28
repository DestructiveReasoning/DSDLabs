library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity g07_bjt is
	generic (
		bjt_depth: integer;
		width: integer
	);
	port (
		clock: in std_logic;
		enable: in std_logic;
		reset: in std_logic;
		mode: in std_logic_vector(1 downto 0);
		addr: in std_logic_vector(integer(ceil(log2(real(bjt_depth))))-1 downto 0);
		data: in std_logic_vector(width-1 downto 0);
		full: out std_logic := '0';
		empty: out std_logic := '1';
		num: out std_logic_vector(integer(ceil(log2(real(bjt_depth))))-1 downto 0) := (others => '0');
		value: out std_logic_vector(width-1 downto 0)
	);
end g07_bjt;

architecture stacklike of g07_bjt is
	SIGNAL memory: std_logic_vector(bjt_depth * width - 1 downto 0) := (others => '0');
	SIGNAL t_full: std_logic := '0';
	SIGNAL t_empty: std_logic := '1';
	SIGNAL t_num: integer := 0;
begin
	always: process(clock, reset)
	begin
		if(reset = '1') then 
			memory <= std_logic_vector(to_unsigned(0,width*bjt_depth));
			t_num <= 0;
		else
			if(clock'Event and clock = '1' and enable = '1') then
				if(mode = "01" and t_full = '0') then
--					memory <= data(width-1 downto 0)&memory(bjt_depth*width - 1 downto width - 1);
					memory <= memory(bjt_depth * width - 2 downto 0)&data;
					t_num <= t_num + 1;
				elsif(mode = "10") then
					for i in 0 to bjt_depth - 1 LOOP
						memory(width * (i+1) - 1 downto width * i) <= std_logic_vector(to_unsigned(i,width));
					end LOOP;
					t_num <= bjt_depth;
				elsif(mode = "11" and t_empty = '0') then
					if(to_integer(unsigned(addr)) < bjt_depth)then
						if(to_integer(unsigned(addr)) = 0) then memory <= std_logic_vector(to_unsigned(0,width))&memory(bjt_depth*width-1 downto width);
						elsif(to_integer(unsigned(addr)) = bjt_depth - 1) then memory <= std_logic_vector(to_unsigned(0,width))&memory(bjt_depth*(width-1)-1 downto 0);
						else memory <= std_logic_vector(to_unsigned(0,width))&memory(bjt_depth * width - 1 downto width * (to_integer(unsigned(addr))+1))&memory(width*to_integer(unsigned(addr)) - 1 downto 0);
						end if;
						t_num <= t_num - 1;
					end if;
				end if;
			end if;
		end if;
	end process always;

	t_full <= '1' when t_num = bjt_depth else '0';
	t_empty <= '1' when t_num = 0 else '0';
	value <= std_logic_vector(to_unsigned(0,width)) when (to_integer(unsigned(addr)) >= bjt_depth) else memory(width * (to_integer(unsigned(addr)) + 1) - 1 downto width * (to_integer(unsigned(addr))));
	full <= t_full;
	empty <= t_empty;
	num <= std_logic_vector(to_unsigned(t_num,integer(ceil(log2(real(bjt_depth))))));
end stacklike;
