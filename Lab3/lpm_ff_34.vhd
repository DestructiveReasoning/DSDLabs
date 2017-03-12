-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"
-- CREATED		"Tue Mar  7 15:06:33 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
-- use the following when compiling in Quartus II
--LIBRARY lpm;
--USE lpm.lpm_components.all; 

-- use the following when compiling in third party tools --
-- add lpm_pack.vhd from the Quartus II library
LIBRARY work;
USE work.lpm_components.all;

ENTITY lpm_ff_34 IS 
PORT 
( 
	enable	:	IN	 STD_LOGIC;
	clock	:	IN	 STD_LOGIC;
	aclr	:	IN	 STD_LOGIC;
	data	:	IN	 STD_LOGIC_VECTOR(5 DOWNTO 0);
	q	:	OUT	 STD_LOGIC_VECTOR(5 DOWNTO 0)
); 
END lpm_ff_34;

ARCHITECTURE bdf_type OF lpm_ff_34 IS 
BEGIN 

-- instantiate LPM macrofunction 

b2v_inst122 : lpm_ff
GENERIC MAP(LPM_AVALUE => 0,
			LPM_FFTYPE => "DFF",
			LPM_SVALUE => 1,
			LPM_WIDTH => 6)
PORT MAP(enable => enable,
		 clock => clock,
		 aclr => aclr,
		 data => data,
		 q => q);

END bdf_type; 