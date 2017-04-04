library ieee;
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity g07_RANDU is
	port( 
		SEED:	in std_logic_vector(31 downto 0);
		RAND: out std_logic_vector (31 downto 0)
	);
end g07_RANDU;

architecture generator of g07_RANDU is
--signal mul, sh, three, modmask: std_logic_vector(31 downto 0);
signal sh1: std_logic_vector(31 downto 0);
signal sh2: std_logic_vector (31 downto 0);
signal sh3: std_logic_vector (31 downto 0);
signal sum1: std_logic_vector(31 downto 0);
signal mul: std_logic_vector (31 downto 0);

begin

sh1 <= SEED(15 downto 0) & "0000000000000000";
sh2 <= SEED(30 downto 0) & "0";
sh3 <= SEED;

M1: lpm_add_sub generic map (lpm_width => 32) port map(dataa => sh1,datab => sh2,result => sum1);
M2: lpm_add_sub generic map (lpm_width => 32) port map(dataa => sum1, datab => sh3, result => mul);

RAND <= "0" & mul(30 downto 0);

--end;
end generator;