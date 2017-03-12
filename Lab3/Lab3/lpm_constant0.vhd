-- megafunction wizard: %LPM_CONSTANT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_CONSTANT 

-- ============================================================
-- File Name: lpm_constant0.vhd
-- Megafunction Name(s):
-- 			LPM_CONSTANT
--
-- Simulation Library Files(s):
-- 			
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.0 Build 156 04/24/2013 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


--lpm_constant CBX_AUTO_BLACKBOX="ALL" ENABLE_RUNTIME_MOD="NO" LPM_CVALUE=0000000000000 LPM_WIDTH=52 result
--VERSION_BEGIN 13.0 cbx_lpm_constant 2013:04:24:18:16:58:SJ cbx_mgl 2013:04:24:18:18:51:SJ  VERSION_END

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  lpm_constant0_lpm_constant_d89 IS 
	 PORT 
	 ( 
		 result	:	OUT  STD_LOGIC_VECTOR (51 DOWNTO 0)
	 ); 
 END lpm_constant0_lpm_constant_d89;

 ARCHITECTURE RTL OF lpm_constant0_lpm_constant_d89 IS

 BEGIN

	result <= (OTHERS => '0');

 END RTL; --lpm_constant0_lpm_constant_d89
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lpm_constant0 IS
	PORT
	(
		result		: OUT STD_LOGIC_VECTOR (51 DOWNTO 0)
	);
END lpm_constant0;


ARCHITECTURE RTL OF lpm_constant0 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (51 DOWNTO 0);



	COMPONENT lpm_constant0_lpm_constant_d89
	PORT (
			result	: OUT STD_LOGIC_VECTOR (51 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(51 DOWNTO 0);

	lpm_constant0_lpm_constant_d89_component : lpm_constant0_lpm_constant_d89
	PORT MAP (
		result => sub_wire0
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
-- Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
-- Retrieval info: PRIVATE: Radix NUMERIC "16"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: Value NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "52"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_CVALUE NUMERIC "0"
-- Retrieval info: CONSTANT: LPM_HINT STRING "ENABLE_RUNTIME_MOD=NO"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CONSTANT"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "52"
-- Retrieval info: USED_PORT: result 0 0 52 0 OUTPUT NODEFVAL "result[51..0]"
-- Retrieval info: CONNECT: result 0 0 52 0 @result 0 0 52 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_constant0.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_constant0.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_constant0.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_constant0.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_constant0_inst.vhd FALSE
