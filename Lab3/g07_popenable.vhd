library ieee;
library lpm;
use ieee.std_logic_1164.all;
use lpm.lpm_components.all;

entity g07_popenable is
	port (
		N: IN STD_LOGIC_VECTOR(5 downto 0);
		CLK: IN STD_LOGIC;
		P_EN: OUT STD_LOGIC_VECTOR(51 downto 0)
	);
end g07_popenable;

architecture behavior of g07_popenable is
BEGIN
	rom: lpm_rom
	GENERIC MAP(
		LPM_WIDTH => 52,
		LPM_WIDTHAD => 6,
		LPM_FILE => "popen.mif",
		LPM_OUTDATA => "UNREGISTERED",
		LPM_ADDRESS_CONTROL => "REGISTERED"
	)
	PORT MAP (
		inclock => CLK,
		address => N,
		q => P_EN
	);
END behavior;
