library ieee;
use ieee.std_logic_1164.all;

entity g07_register6 is
	port (
		data_in: in std_logic_vector(5 downto 0);
		enable: in std_logic;
		clock: in std_logic;
		data_out: out std_logic_vector(5 downto 0)
	);
end g07_register6;

architecture reg of g07_register6 is
begin
	proc: process(clock)
	begin
		if (clock'event and clock = '1') then
			if (enable = '1') then
				data_out <= data_in;
			end if;
		end if;
	end process proc;
end reg;
