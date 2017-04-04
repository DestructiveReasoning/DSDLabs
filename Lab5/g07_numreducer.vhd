library ieee;
use ieee.std_logic_1164.all;

entity g07_numreducer is
	port (
		num_in: in std_logic_vector(5 downto 0);
		mask_out: out std_logic_vector(5 downto 0)
	);
end g07_numreducer;

architecture reduce of g07_numreducer is
begin
	r: process(num_in)
	begin
		if(num_in(5) = '1') then mask_out <= "111111";
		elsif (num_in(4) = '1') then mask_out <= "011111";
		elsif (num_in(3) = '1') then mask_out <= "001111";
		elsif (num_in(2) = '1') then mask_out <= "000111";
		elsif (num_in(1) = '1') then mask_out <= "000011";
		else mask_out <= "000001";
		end if;
	end process r;
end reduce;
