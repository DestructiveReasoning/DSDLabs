library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g07_dff is
	generic (
		width: integer;
		svalue: integer
	);
	port (
		data: in std_logic_vector(width-1 downto 0);
		clock: in std_logic;
		enable: in std_logic;
		aclr: in std_logic;
		sset: in std_logic;
		q: out std_logic_vector(width-1 downto 0)
	);
end g07_dff;

architecture flippityflop of g07_dff is
begin
	flop: process(clock,aclr)
	begin
		if(aclr = '1') then q <= std_logic_vector(to_unsigned(0,width));
		elsif(sset = '1') then q <= std_logic_vector(to_unsigned(svalue,width));
		elsif(clock'Event and clock = '1' and enable = '1') then q <= data;
		end if;
	end process flop;
end flippityflop;
