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
-- CREATED		"Tue Mar  7 15:44:10 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
-- use the following when compiling in Quartus II
--LIBRARY lpm;
--USE lpm.lpm_components.all; 

-- use the following when compiling in third party tools --
-- add lpm_pack.vhd from the Quartus II library
LIBRARY work;
USE work.lpm_components.all;

ENTITY lpm_counter_1 IS 
PORT 
( 
	clock	:	IN	 STD_LOGIC;
	clk_en	:	IN	 STD_LOGIC;
	q	:	OUT	 STD_LOGIC_VECTOR(20 DOWNTO 0)
); 
END lpm_counter_1;

ARCHITECTURE bdf_type OF lpm_counter_1 IS 
BEGIN 

-- instantiate LPM macrofunction 

b2v_inst8 : lpm_counter
GENERIC MAP(LPM_WIDTH => 21)
PORT MAP(clock => clock,
		 clk_en => clk_en,
		 q => q);

END bdf_type; 