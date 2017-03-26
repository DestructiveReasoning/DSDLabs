library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_counter is
	generic (width: integer; modulo: unsigned; svalue: integer);
	port (
		sset: in std_logic;
		updown: in std_logic;
		clock: in std_logic;
		cnt_en: in std_logic;
		aclr: in std_logic;
		count: out std_logic_vector(width-1 downto 0)
	);
end g07_counter;

architecture cnt of g07_counter is
	SIGNAL q: unsigned (width-1 downto 0) := (others => '0');
begin
	c: process(clock,aclr)
	begin
		if(aclr = '1') then q <= to_unsigned(0,width);
		elsif(clock'Event and clock = '1') then
			if(sset = '1') then q <= to_unsigned(svalue,width);
			elsif(cnt_en = '1') then
				if(updown = '1') then
					if(q+1 = modulo) then q <= (others => '0');
					else q <= q + 1;
					end if;
				else
					if(q = 0) then q <= modulo-1;
					else q <= q - 1;
					end if;
				end if;
			end if;
		end if;
--		if(aclr <= '1') then q <= to_unsigned(0,width);
--		elsif(clock'Event and clock = '1') then
--			q <= to_unsigned(3,width);
--			if(sset = '1') then q <= to_unsigned(svalue,width);
--			elsif(cnt_en = '1') then
--				if(updown = '1') then
--					if(q+1 >= modulo) then q <= to_unsigned(0,width);
--					else q <= q + 1;
--					end if;
--				else q <= q - 1;
--				end if;
--			end if;
--		end if;
	end process c;
	count <= std_logic_vector(q);
end cnt;

