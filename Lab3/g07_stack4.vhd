library ieee;
library lpm;
use ieee.std_logic_1164.all;
use lpm.lpm_components.all;

entity g07_stack4 is
	port (
		data:	in std_logic_vector(5 downto 0);
		mode:	in std_logic_vector(1 downto 0);
		addr:	in std_logic_vector(1 downto 0);
		enable:	in std_logic;
		rst:	in std_logic;
		clk:	in std_logic;
		value:	out std_logic_vector(5 downto 0);
		empty:	out std_logic;
		full:	out std_logic;
		num:	out std_logic_vector(1 downto 0)
	);
end g07_stack4;

architecture behavior of g07_stack4 is
	D0: lpm_ff
	generic map (
		LPM_AVALUE => 0,
		LPM_FFTYPE => "DFF",
		LPM_SVALUE => 1,
		LPM_WIDTH => 6
	)
	port map (
		aclr => rst,
		sset => '0',
		data => data:q


