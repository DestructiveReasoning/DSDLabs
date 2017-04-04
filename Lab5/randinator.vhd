library ieee;
use ieee.std_logic_1164.all;

entity randinator is
	port (
		--seed: in std_logic_vector(31 downto 0);
		clock: in std_logic;
		sel: in std_logic;
		rand: out std_logic_vector(31 downto 0)
	);
end randinator;

architecture random of randinator is
	component g07_RANDU is
		port (
			SEED: in std_logic_vector(31 downto 0);
			RAND: out std_logic_vector(31 downto 0)
		);
	end component;
	SIGNAL s: std_logic_vector(31 downto 0);
	SIGNAL r: std_logic_vector(31 downto 0);

begin
	randu: g07_RANDU port map(SEED => s, RAND => r);
	blah: process(clock)
	begin
		if(clock'Event and clock='1') then
			if(sel = '1') then s <= x"4598FD9F";
			else s <= r;
			end if;
		end if;
	end process;
	rand <= r;
end random;

