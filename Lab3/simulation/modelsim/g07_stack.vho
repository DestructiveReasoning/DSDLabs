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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "03/01/2017 14:22:38"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g07_stack IS
    PORT (
	FULL : OUT std_logic;
	NUM : OUT std_logic_vector(5 DOWNTO 0);
	CLK : IN std_logic;
	MODE : IN std_logic_vector(1 DOWNTO 0);
	EMPTY : OUT std_logic;
	VALUE : OUT std_logic_vector(5 DOWNTO 0);
	ENABLE : IN std_logic;
	ADDR : IN std_logic_vector(5 DOWNTO 0);
	RST : IN std_logic;
	DATA : IN std_logic_vector(5 DOWNTO 0)
	);
END g07_stack;

-- Design Ports Information
-- FULL	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[5]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[4]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[3]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[2]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[1]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[0]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EMPTY	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[5]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[4]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[3]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[2]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[1]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[0]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[5]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MODE[1]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MODE[0]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENABLE	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g07_stack IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_FULL : std_logic;
SIGNAL ww_NUM : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MODE : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_EMPTY : std_logic;
SIGNAL ww_VALUE : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ENABLE : std_logic;
SIGNAL ww_ADDR : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_RST : std_logic;
SIGNAL ww_DATA : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst159|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~19_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~20_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~21_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~22_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~9_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~13_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~29_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~30_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~31_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~32_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~33_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~34_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~37_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~39_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~40_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~19_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~20_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~21_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~22_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~23_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~24_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~43_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~44_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~45_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~46_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~26_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~30_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~53_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~54_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~55_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~56_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~57_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~58_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~60_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~61_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~62_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~63_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~35_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~40_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~64_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~66_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~67_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~44_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~47_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~70_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~71_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~72_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~73_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~76_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~77_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~78_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~83_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~84_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~57_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~89_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~90_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~91_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~92_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~60_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~61_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~62_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~63_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~93_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~96_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~97_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~98_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~103_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~108_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~109_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~70_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~71_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~72_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~73_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~74_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~75_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~112_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~114_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~115_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~82_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~116_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~117_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~126_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~131_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~132_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~91_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~137_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~138_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~95_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~96_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~97_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~139_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~140_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~145_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~146_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~147_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~148_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~149_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~150_combout\ : std_logic;
SIGNAL \inst8|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst87|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst88|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst89|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst86|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst99|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst107|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst98|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst78|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst33|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst32|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst135|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst149|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst150|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst148|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst139|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst145|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst146|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst151|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst144|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst137|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst117|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst68|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst49|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst54|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst55|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst56|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst53|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst105|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst118|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst106|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst119|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst116|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst126|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst117|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst97|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst107|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst108|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst76|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst12|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst47|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst44|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst49|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst42|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst27|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst33|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst38|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst36|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \ENABLE~combout\ : std_logic;
SIGNAL \inst140|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \MODE[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst156|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst156|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst157|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst77|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \SnoopDogg|Mux1~0_combout\ : std_logic;
SIGNAL \SnoopDogg|Mux0~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[26]~33_combout\ : std_logic;
SIGNAL \inst64|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[20]~28_combout\ : std_logic;
SIGNAL \inst65|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[21]~30_combout\ : std_logic;
SIGNAL \inst66|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[22]~29_combout\ : std_logic;
SIGNAL \inst67|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[23]~31_combout\ : std_logic;
SIGNAL \inst75|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[24]~32_combout\ : std_logic;
SIGNAL \inst76|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[25]~34_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~14_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~11_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~12_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~15_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~16_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~35_combout\ : std_logic;
SIGNAL \inst42|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[12]~39_combout\ : std_logic;
SIGNAL \inst43|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[13]~36_combout\ : std_logic;
SIGNAL \inst44|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[14]~37_combout\ : std_logic;
SIGNAL \inst45|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[15]~38_combout\ : std_logic;
SIGNAL \inst53|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[16]~43_combout\ : std_logic;
SIGNAL \inst56|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[19]~42_combout\ : std_logic;
SIGNAL \inst55|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[18]~41_combout\ : std_logic;
SIGNAL \inst54|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[17]~40_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~26_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~27_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~16_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~28_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~23_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~24_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~25_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~36_combout\ : std_logic;
SIGNAL \inst108|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[35]~26_combout\ : std_logic;
SIGNAL \inst109|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[36]~8_combout\ : std_logic;
SIGNAL \inst110|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[37]~12_combout\ : std_logic;
SIGNAL \inst118|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[38]~9_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst121|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[41]~14_combout\ : std_logic;
SIGNAL \inst119|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[39]~13_combout\ : std_logic;
SIGNAL \inst120|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[40]~10_combout\ : std_logic;
SIGNAL \inst127|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[43]~15_combout\ : std_logic;
SIGNAL \inst126|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[42]~11_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~4_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~6_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~7_combout\ : std_logic;
SIGNAL \inst136|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[44]~3_combout\ : std_logic;
SIGNAL \inst137|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[45]~0_combout\ : std_logic;
SIGNAL \inst138|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[46]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[51]~6_combout\ : std_logic;
SIGNAL \inst150|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[50]~5_combout\ : std_logic;
SIGNAL \inst149|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[49]~4_combout\ : std_logic;
SIGNAL \inst148|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[48]~7_combout\ : std_logic;
SIGNAL \inst139|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[47]~2_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~12_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~13_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~14_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~15_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~8_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[2]~17_combout\ : std_logic;
SIGNAL \inst6|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[1]~16_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~17_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~18_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~152_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~17_combout\ : std_logic;
SIGNAL \inst59|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst58|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst57|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst45|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst44|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst43|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst42|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[11]~49_combout\ : std_logic;
SIGNAL \inst33|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[10]~48_combout\ : std_logic;
SIGNAL \inst32|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[9]~51_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[8]~50_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[7]~45_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[6]~44_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[5]~47_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[4]~46_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[0]~19_combout\ : std_logic;
SIGNAL \inst6|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst8|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[3]~18_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~41_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~42_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~153_combout\ : std_logic;
SIGNAL \inst134|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst133|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst132|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst125|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst124|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst117|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst116|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst115|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst114|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst106|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst105|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst104|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst103|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[34]~25_combout\ : std_logic;
SIGNAL \inst97|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[33]~24_combout\ : std_logic;
SIGNAL \inst96|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[32]~27_combout\ : std_logic;
SIGNAL \inst93|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[31]~22_combout\ : std_logic;
SIGNAL \inst92|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[30]~21_combout\ : std_logic;
SIGNAL \inst91|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[29]~20_combout\ : std_logic;
SIGNAL \inst90|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[28]~23_combout\ : std_logic;
SIGNAL \inst82|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst16|$00000|auto_generated|result_node[27]~35_combout\ : std_logic;
SIGNAL \inst81|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst60|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst68|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst69|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst70|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst71|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst79|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst80|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~31_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~28_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~27_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~29_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~32_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~33_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~50_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~51_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~52_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~47_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~48_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~49_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~59_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~38_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~18_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~25_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[4]~34_combout\ : std_logic;
SIGNAL \inst90|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst82|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst81|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst80|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst79|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst67|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst66|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst65|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst64|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst56|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst55|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst54|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst6|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst8|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst35|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst36|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst37|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst38|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst46|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst47|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst48|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst49|$00000|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst53|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~74_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~75_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~80_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~79_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~81_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~82_combout\ : std_logic;
SIGNAL \inst138|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst137|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst136|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst127|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst126|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst121|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst120|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~39_combout\ : std_logic;
SIGNAL \inst97|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst103|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst104|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst105|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst106|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst114|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst115|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~37_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~36_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~38_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~41_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~42_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~68_combout\ : std_logic;
SIGNAL \inst91|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst92|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst93|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst96|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~69_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~43_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~48_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~45_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~46_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~49_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~50_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~65_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~154_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[3]~51_combout\ : std_logic;
SIGNAL \inst136|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst125|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst124|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~56_combout\ : std_logic;
SIGNAL \inst97|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst103|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst104|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst109|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~53_combout\ : std_logic;
SIGNAL \inst116|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst110|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst118|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst119|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~54_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~55_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~58_combout\ : std_logic;
SIGNAL \inst138|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst139|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst144|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst151|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst146|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst145|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~85_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~86_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~52_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~59_combout\ : std_logic;
SIGNAL \inst48|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst47|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst46|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst33|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst32|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst27|$00000|auto_generated|result_node[2]~0_combout\ : std_logic;
SIGNAL \inst26|$00000|auto_generated|result_node[2]~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|result_node[2]~0_combout\ : std_logic;
SIGNAL \inst24|$00000|auto_generated|result_node[2]~0_combout\ : std_logic;
SIGNAL \inst8|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst6|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~87_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~88_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~155_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~102_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~99_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~100_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~101_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~104_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~94_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~95_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~105_combout\ : std_logic;
SIGNAL \inst96|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst93|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst92|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst91|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst90|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst78|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst77|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst69|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst70|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst71|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst75|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst76|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~65_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~64_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~66_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~67_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[2]~68_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst6|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst11|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~110_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~111_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~156_combout\ : std_logic;
SIGNAL \inst96|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst93|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst92|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst87|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst86|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~113_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~77_combout\ : std_logic;
SIGNAL \inst75|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst65|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst70|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst71|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~78_combout\ : std_logic;
SIGNAL \inst60|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst64|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~79_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~80_combout\ : std_logic;
SIGNAL \inst82|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst81|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~81_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~83_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~84_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~119_combout\ : std_logic;
SIGNAL \inst59|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst12|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst26|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst27|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst32|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst37|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst38|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst42|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst43|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst48|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst49|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst53|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst54|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~120_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~121_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~123_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~122_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~124_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~125_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~127_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~118_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~128_combout\ : std_logic;
SIGNAL \inst127|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst132|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst150|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst145|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst144|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst139|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst138|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst133|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~106_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~107_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~69_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~76_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[1]~85_combout\ : std_logic;
SIGNAL \inst60|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst53|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst58|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst55|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~142_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~143_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~144_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~141_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~151_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst10|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~133_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~134_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~157_combout\ : std_logic;
SIGNAL \inst146|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst149|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst144|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst139|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst134|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst137|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst132|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst127|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst77|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst82|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst86|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst91|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst88|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst93|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst96|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst97|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst103|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst108|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst105|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst110|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst114|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst119|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst116|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst121|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst113|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst124|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~90_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~88_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~87_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~89_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~92_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~129_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~130_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~86_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~93_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~135_combout\ : std_logic;
SIGNAL \inst159|auto_generated|_~136_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~94_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~98_combout\ : std_logic;
SIGNAL \inst64|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst69|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst66|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst71|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst75|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst80|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~99_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~100_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~101_combout\ : std_logic;
SIGNAL \inst159|auto_generated|result_node[0]~102_combout\ : std_logic;
SIGNAL \DATA~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \MODE~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst28|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst30|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst39|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst41|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst50|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst52|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst61|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst63|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst72|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst74|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst83|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst85|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst95|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst100|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst4|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst17|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst19|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst102|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst111|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst113|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst123|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst129|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst131|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst141|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst143|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst157|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst13|rom|srom|rom_block|auto_generated|q_a\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ADDR~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DFF10|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Ricky|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst40|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Julian|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst51|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DFF20|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst62|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Bubbles|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst73|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \GeorgeGreen|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DFF30|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst94|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Donna|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Trevor|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst18|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \RANDY|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst101|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Cyrus|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DFF40|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst122|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst128|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst130|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst140|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst142|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst151|$00000|auto_generated|result_node\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Corey|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_MODE~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst157|auto_generated|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);

BEGIN

FULL <= ww_FULL;
NUM <= ww_NUM;
ww_CLK <= CLK;
ww_MODE <= MODE;
EMPTY <= ww_EMPTY;
VALUE <= ww_VALUE;
ww_ENABLE <= ENABLE;
ww_ADDR <= ADDR;
ww_RST <= RST;
ww_DATA <= DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ADDR~combout\(5) & \ADDR~combout\(4) & \ADDR~combout\(3) & \ADDR~combout\(2) & \ADDR~combout\(1) & \ADDR~combout\(0));

\inst13|rom|srom|rom_block|auto_generated|q_a\(0) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst13|rom|srom|rom_block|auto_generated|q_a\(1) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst13|rom|srom|rom_block|auto_generated|q_a\(2) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst13|rom|srom|rom_block|auto_generated|q_a\(3) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst13|rom|srom|rom_block|auto_generated|q_a\(20) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst13|rom|srom|rom_block|auto_generated|q_a\(21) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst13|rom|srom|rom_block|auto_generated|q_a\(22) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst13|rom|srom|rom_block|auto_generated|q_a\(23) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst13|rom|srom|rom_block|auto_generated|q_a\(24) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst13|rom|srom|rom_block|auto_generated|q_a\(25) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst13|rom|srom|rom_block|auto_generated|q_a\(26) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst13|rom|srom|rom_block|auto_generated|q_a\(27) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst13|rom|srom|rom_block|auto_generated|q_a\(28) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst13|rom|srom|rom_block|auto_generated|q_a\(29) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst13|rom|srom|rom_block|auto_generated|q_a\(30) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst13|rom|srom|rom_block|auto_generated|q_a\(31) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst13|rom|srom|rom_block|auto_generated|q_a\(32) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst13|rom|srom|rom_block|auto_generated|q_a\(33) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst13|rom|srom|rom_block|auto_generated|q_a\(34) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst13|rom|srom|rom_block|auto_generated|q_a\(35) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst13|rom|srom|rom_block|auto_generated|q_a\(36) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst13|rom|srom|rom_block|auto_generated|q_a\(37) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst13|rom|srom|rom_block|auto_generated|q_a\(38) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst13|rom|srom|rom_block|auto_generated|q_a\(39) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst13|rom|srom|rom_block|auto_generated|q_a\(40) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\inst13|rom|srom|rom_block|auto_generated|q_a\(41) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\inst13|rom|srom|rom_block|auto_generated|q_a\(42) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\inst13|rom|srom|rom_block|auto_generated|q_a\(43) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\inst13|rom|srom|rom_block|auto_generated|q_a\(44) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\inst13|rom|srom|rom_block|auto_generated|q_a\(45) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\inst13|rom|srom|rom_block|auto_generated|q_a\(46) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\inst13|rom|srom|rom_block|auto_generated|q_a\(47) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);
\inst13|rom|srom|rom_block|auto_generated|q_a\(48) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(32);
\inst13|rom|srom|rom_block|auto_generated|q_a\(49) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(33);
\inst13|rom|srom|rom_block|auto_generated|q_a\(50) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(34);
\inst13|rom|srom|rom_block|auto_generated|q_a\(51) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(35);

\inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\ADDR~combout\(5) & \ADDR~combout\(4) & \ADDR~combout\(3) & \ADDR~combout\(2) & \ADDR~combout\(1) & \ADDR~combout\(0));

\inst13|rom|srom|rom_block|auto_generated|q_a\(4) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst13|rom|srom|rom_block|auto_generated|q_a\(5) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\inst13|rom|srom|rom_block|auto_generated|q_a\(6) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\inst13|rom|srom|rom_block|auto_generated|q_a\(7) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);
\inst13|rom|srom|rom_block|auto_generated|q_a\(8) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(4);
\inst13|rom|srom|rom_block|auto_generated|q_a\(9) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(5);
\inst13|rom|srom|rom_block|auto_generated|q_a\(10) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(6);
\inst13|rom|srom|rom_block|auto_generated|q_a\(11) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(7);
\inst13|rom|srom|rom_block|auto_generated|q_a\(12) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(8);
\inst13|rom|srom|rom_block|auto_generated|q_a\(13) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(9);
\inst13|rom|srom|rom_block|auto_generated|q_a\(14) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(10);
\inst13|rom|srom|rom_block|auto_generated|q_a\(15) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(11);
\inst13|rom|srom|rom_block|auto_generated|q_a\(16) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(12);
\inst13|rom|srom|rom_block|auto_generated|q_a\(17) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(13);
\inst13|rom|srom|rom_block|auto_generated|q_a\(18) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(14);
\inst13|rom|srom|rom_block|auto_generated|q_a\(19) <= \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(15);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\ALT_INV_MODE~combout\(0) <= NOT \MODE~combout\(0);
\inst157|auto_generated|ALT_INV_aneb_result_wire\(0) <= NOT \inst157|auto_generated|aneb_result_wire\(0);

-- Location: LCFF_X12_Y8_N1
\inst4|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst8|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(5));

-- Location: LCFF_X14_Y9_N31
\Corey|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst5|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corey|dffs\(5));

-- Location: LCFF_X12_Y12_N17
\inst83|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst87|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst83|dffs\(5));

-- Location: LCFF_X12_Y12_N7
\DFF30|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst88|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF30|dffs\(5));

-- Location: LCFF_X15_Y10_N25
\inst85|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst89|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst85|dffs\(5));

-- Location: LCFF_X13_Y12_N21
\GeorgeGreen|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst86|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeorgeGreen|dffs\(5));

-- Location: LCFF_X12_Y9_N11
\inst74|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst78|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst74|dffs\(5));

-- Location: LCFF_X15_Y7_N9
\inst18|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst22|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|dffs\(5));

-- Location: LCFF_X10_Y7_N25
\inst19|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst23|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|dffs\(5));

-- Location: LCFF_X15_Y7_N23
\Trevor|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst20|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Trevor|dffs\(5));

-- Location: LCFF_X12_Y8_N7
\inst17|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst21|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|dffs\(5));

-- Location: LCFF_X9_Y7_N9
\DFF10|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst33|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF10|dffs\(5));

-- Location: LCFF_X12_Y7_N7
\inst30|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst34|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst30|dffs\(5));

-- Location: LCFF_X9_Y7_N11
\RANDY|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst31|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RANDY|dffs\(5));

-- Location: LCFF_X10_Y7_N15
\inst28|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst32|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|dffs\(5));

-- Location: LCFF_X12_Y11_N21
\inst131|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst135|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst131|dffs\(4));

-- Location: LCFF_X12_Y11_N7
\inst141|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst145|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst141|dffs\(3));

-- Location: LCFF_X14_Y10_N1
\inst142|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst146|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst142|dffs\(3));

-- Location: LCFF_X14_Y10_N7
\inst140|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst144|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst140|dffs\(3));

-- Location: LCFF_X9_Y10_N31
\inst113|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst117|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst113|dffs\(2));

-- Location: LCFF_X13_Y7_N25
\inst50|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst54|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst50|dffs\(2));

-- Location: LCFF_X13_Y6_N9
\inst51|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst55|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst51|dffs\(2));

-- Location: LCFF_X13_Y6_N27
\inst52|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst56|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst52|dffs\(2));

-- Location: LCFF_X10_Y6_N23
\Julian|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst53|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Julian|dffs\(2));

-- Location: LCFF_X10_Y10_N11
\inst101|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst105|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst101|dffs\(1));

-- Location: LCFF_X10_Y9_N1
\inst102|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst106|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst102|dffs\(1));

-- Location: LCFF_X8_Y10_N17
\DFF40|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst116|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF40|dffs\(1));

-- Location: LCFF_X9_Y10_N27
\inst113|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst117|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst113|dffs\(1));

-- Location: LCFF_X15_Y10_N17
\inst95|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst97|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst95|dffs\(1));

-- Location: LCFF_X12_Y9_N29
\inst72|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst76|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|dffs\(1));

-- Location: LCFF_X14_Y7_N15
\inst40|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst44|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst40|dffs\(0));

-- Location: LCFF_X12_Y7_N25
\Ricky|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst42|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ricky|dffs\(0));

-- Location: LCFF_X15_Y7_N3
\inst18|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst22|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|dffs\(0));

-- Location: LCFF_X15_Y7_N17
\Trevor|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst20|$00000|auto_generated|result_node[0]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Trevor|dffs\(0));

-- Location: LCFF_X9_Y7_N27
\DFF10|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst33|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF10|dffs\(0));

-- Location: LCFF_X9_Y7_N21
\RANDY|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst31|$00000|auto_generated|result_node[0]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RANDY|dffs\(0));

-- Location: LCCOMB_X9_Y9_N24
\inst159|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~5_combout\ = (\ADDR~combout\(2) & ((\ADDR~combout\(1) & ((\inst102|dffs\(5)))) # (!\ADDR~combout\(1) & (\inst111|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(1),
	datac => \inst111|dffs\(5),
	datad => \inst102|dffs\(5),
	combout => \inst159|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X13_Y12_N6
\inst159|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~19_combout\ = (\ADDR~combout\(0) & ((\DFF30|dffs\(5)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst85|dffs\(5) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF30|dffs\(5),
	datab => \ADDR~combout\(0),
	datac => \inst85|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~19_combout\);

-- Location: LCCOMB_X13_Y12_N8
\inst159|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~20_combout\ = (\inst159|auto_generated|_~19_combout\ & (((\GeorgeGreen|dffs\(5)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~19_combout\ & (\inst83|dffs\(5) & ((\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~19_combout\,
	datab => \inst83|dffs\(5),
	datac => \GeorgeGreen|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~20_combout\);

-- Location: LCFF_X15_Y10_N9
\inst95|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst99|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst95|dffs\(5));

-- Location: LCFF_X9_Y11_N27
\Donna|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst107|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Donna|dffs\(5));

-- Location: LCCOMB_X10_Y10_N18
\inst159|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~21_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\Donna|dffs\(5))) # (!\ADDR~combout\(0) & ((\inst100|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Donna|dffs\(5),
	datab => \ADDR~combout\(1),
	datac => \inst100|dffs\(5),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~21_combout\);

-- Location: LCFF_X17_Y10_N13
\inst94|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst98|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst94|dffs\(5));

-- Location: LCCOMB_X17_Y10_N26
\inst159|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~22_combout\ = (\inst159|auto_generated|_~21_combout\ & (((\inst94|dffs\(5)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~21_combout\ & (\inst95|dffs\(5) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|dffs\(5),
	datab => \inst159|auto_generated|_~21_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst94|dffs\(5),
	combout => \inst159|auto_generated|_~22_combout\);

-- Location: LCCOMB_X17_Y8_N12
\inst159|auto_generated|result_node[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~9_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst159|auto_generated|_~20_combout\))) # (!\ADDR~combout\(2) & (\inst159|auto_generated|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~22_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~20_combout\,
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|result_node[5]~9_combout\);

-- Location: LCCOMB_X15_Y6_N0
\inst159|auto_generated|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~10_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\DFF20|dffs\(5)))) # (!\ADDR~combout\(1) & (\inst62|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|dffs\(5),
	datab => \ADDR~combout\(0),
	datac => \DFF20|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X13_Y8_N16
\inst159|auto_generated|result_node[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~13_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\Bubbles|dffs\(5)))) # (!\ADDR~combout\(1) & (\inst73|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst73|dffs\(5),
	datab => \ADDR~combout\(0),
	datac => \Bubbles|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[5]~13_combout\);

-- Location: LCCOMB_X14_Y8_N28
\inst159|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~29_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst18|dffs\(5)))) # (!\ADDR~combout\(0) & (\inst19|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(1),
	datac => \inst19|dffs\(5),
	datad => \inst18|dffs\(5),
	combout => \inst159|auto_generated|_~29_combout\);

-- Location: LCCOMB_X12_Y8_N20
\inst159|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~30_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\Trevor|dffs\(5)))) # (!\ADDR~combout\(0) & (\inst17|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|dffs\(5),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \Trevor|dffs\(5),
	combout => \inst159|auto_generated|_~30_combout\);

-- Location: LCCOMB_X13_Y8_N6
\inst159|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~31_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|_~30_combout\) # (\inst159|auto_generated|_~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~30_combout\,
	datad => \inst159|auto_generated|_~29_combout\,
	combout => \inst159|auto_generated|_~31_combout\);

-- Location: LCCOMB_X13_Y8_N4
\inst159|auto_generated|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~32_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\DFF10|dffs\(5)))) # (!\ADDR~combout\(0) & (\inst30|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|dffs\(5),
	datab => \ADDR~combout\(0),
	datac => \DFF10|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~32_combout\);

-- Location: LCCOMB_X13_Y8_N2
\inst159|auto_generated|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~33_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\RANDY|dffs\(5)))) # (!\ADDR~combout\(0) & (\inst28|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|dffs\(5),
	datab => \ADDR~combout\(0),
	datac => \RANDY|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~33_combout\);

-- Location: LCCOMB_X13_Y8_N28
\inst159|auto_generated|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~34_combout\ = (\inst159|auto_generated|_~31_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|_~32_combout\) # (\inst159|auto_generated|_~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~31_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~32_combout\,
	datad => \inst159|auto_generated|_~33_combout\,
	combout => \inst159|auto_generated|_~34_combout\);

-- Location: LCCOMB_X13_Y11_N18
\inst159|auto_generated|_~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~37_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst130|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst131|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst131|dffs\(4),
	datab => \inst130|dffs\(4),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~37_combout\);

-- Location: LCFF_X12_Y11_N9
\inst141|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst149|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst141|dffs\(4));

-- Location: LCFF_X10_Y11_N23
\inst142|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst150|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst142|dffs\(4));

-- Location: LCFF_X10_Y11_N29
\inst143|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst151|$00000|auto_generated|result_node\(4),
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst143|dffs\(4));

-- Location: LCCOMB_X13_Y11_N0
\inst159|auto_generated|_~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~39_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst142|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst143|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst143|dffs\(4),
	datab => \inst142|dffs\(4),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~39_combout\);

-- Location: LCFF_X14_Y10_N31
\inst140|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst140|dffs[4]~feeder_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst140|dffs\(4));

-- Location: LCCOMB_X13_Y11_N6
\inst159|auto_generated|_~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~40_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~39_combout\ & ((\inst140|dffs\(4)))) # (!\inst159|auto_generated|_~39_combout\ & (\inst141|dffs\(4))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst141|dffs\(4),
	datab => \inst140|dffs\(4),
	datac => \ADDR~combout\(1),
	datad => \inst159|auto_generated|_~39_combout\,
	combout => \inst159|auto_generated|_~40_combout\);

-- Location: LCCOMB_X9_Y10_N10
\inst159|auto_generated|result_node[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~19_combout\ = (\ADDR~combout\(2) & ((\ADDR~combout\(0) & ((\Cyrus|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst111|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst111|dffs\(4),
	datab => \Cyrus|dffs\(4),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|result_node[4]~19_combout\);

-- Location: LCCOMB_X9_Y10_N4
\inst159|auto_generated|result_node[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~20_combout\ = (!\ADDR~combout\(2) & ((\ADDR~combout\(0) & ((\inst122|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst123|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|dffs\(4),
	datab => \ADDR~combout\(0),
	datac => \inst122|dffs\(4),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|result_node[4]~20_combout\);

-- Location: LCCOMB_X8_Y10_N4
\inst159|auto_generated|result_node[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~21_combout\ = (!\ADDR~combout\(1) & ((\inst159|auto_generated|result_node[4]~20_combout\) # (\inst159|auto_generated|result_node[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[4]~20_combout\,
	datac => \inst159|auto_generated|result_node[4]~19_combout\,
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[4]~21_combout\);

-- Location: LCCOMB_X9_Y10_N6
\inst159|auto_generated|result_node[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~22_combout\ = (\ADDR~combout\(2) & ((\ADDR~combout\(0) & (\inst101|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst102|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst101|dffs\(4),
	datac => \ADDR~combout\(0),
	datad => \inst102|dffs\(4),
	combout => \inst159|auto_generated|result_node[4]~22_combout\);

-- Location: LCCOMB_X9_Y10_N28
\inst159|auto_generated|result_node[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~23_combout\ = (!\ADDR~combout\(2) & ((\ADDR~combout\(0) & (\DFF40|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst113|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF40|dffs\(4),
	datab => \ADDR~combout\(0),
	datac => \inst113|dffs\(4),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|result_node[4]~23_combout\);

-- Location: LCCOMB_X9_Y10_N18
\inst159|auto_generated|result_node[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~24_combout\ = (\inst159|auto_generated|result_node[4]~21_combout\) # ((\ADDR~combout\(1) & ((\inst159|auto_generated|result_node[4]~22_combout\) # (\inst159|auto_generated|result_node[4]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[4]~22_combout\,
	datab => \inst159|auto_generated|result_node[4]~21_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst159|auto_generated|result_node[4]~23_combout\,
	combout => \inst159|auto_generated|result_node[4]~24_combout\);

-- Location: LCCOMB_X12_Y12_N20
\inst159|auto_generated|_~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~43_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\DFF30|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst85|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \DFF30|dffs\(4),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~43_combout\);

-- Location: LCCOMB_X13_Y12_N4
\inst159|auto_generated|_~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~44_combout\ = (\inst159|auto_generated|_~43_combout\ & (((\GeorgeGreen|dffs\(4)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~43_combout\ & (\inst83|dffs\(4) & ((\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|dffs\(4),
	datab => \GeorgeGreen|dffs\(4),
	datac => \inst159|auto_generated|_~43_combout\,
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~44_combout\);

-- Location: LCCOMB_X9_Y11_N12
\inst159|auto_generated|_~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~45_combout\ = (\ADDR~combout\(0) & (((\Donna|dffs\(4)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst100|dffs\(4) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst100|dffs\(4),
	datac => \Donna|dffs\(4),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~45_combout\);

-- Location: LCCOMB_X14_Y11_N2
\inst159|auto_generated|_~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~46_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~45_combout\ & (\inst94|dffs\(4))) # (!\inst159|auto_generated|_~45_combout\ & ((\inst95|dffs\(4)))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst94|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \inst95|dffs\(4),
	datad => \inst159|auto_generated|_~45_combout\,
	combout => \inst159|auto_generated|_~46_combout\);

-- Location: LCCOMB_X14_Y12_N12
\inst159|auto_generated|result_node[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~26_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst159|auto_generated|_~44_combout\))) # (!\ADDR~combout\(2) & (\inst159|auto_generated|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~46_combout\,
	datab => \inst159|auto_generated|_~44_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|result_node[4]~26_combout\);

-- Location: LCCOMB_X12_Y9_N0
\inst159|auto_generated|result_node[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~30_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst73|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst74|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst74|dffs\(4),
	datac => \inst73|dffs\(4),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[4]~30_combout\);

-- Location: LCCOMB_X15_Y8_N30
\inst159|auto_generated|_~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~53_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\Trevor|dffs\(4)))) # (!\ADDR~combout\(1) & (\inst18|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst18|dffs\(4),
	datac => \ADDR~combout\(0),
	datad => \Trevor|dffs\(4),
	combout => \inst159|auto_generated|_~53_combout\);

-- Location: LCCOMB_X15_Y7_N18
\inst159|auto_generated|_~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~54_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst17|dffs\(4))) # (!\ADDR~combout\(1) & ((\inst19|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|dffs\(4),
	datab => \ADDR~combout\(0),
	datac => \inst19|dffs\(4),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~54_combout\);

-- Location: LCCOMB_X14_Y8_N30
\inst159|auto_generated|_~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~55_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|_~54_combout\) # (\inst159|auto_generated|_~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~54_combout\,
	datad => \inst159|auto_generated|_~53_combout\,
	combout => \inst159|auto_generated|_~55_combout\);

-- Location: LCCOMB_X9_Y7_N18
\inst159|auto_generated|_~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~56_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\RANDY|dffs\(4)))) # (!\ADDR~combout\(1) & (\DFF10|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \DFF10|dffs\(4),
	datac => \ADDR~combout\(0),
	datad => \RANDY|dffs\(4),
	combout => \inst159|auto_generated|_~56_combout\);

-- Location: LCCOMB_X9_Y8_N12
\inst159|auto_generated|_~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~57_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst28|dffs\(4))) # (!\ADDR~combout\(1) & ((\inst30|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst28|dffs\(4),
	datac => \inst30|dffs\(4),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~57_combout\);

-- Location: LCCOMB_X13_Y8_N26
\inst159|auto_generated|_~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~58_combout\ = (\inst159|auto_generated|_~55_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|_~57_combout\) # (\inst159|auto_generated|_~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~57_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~56_combout\,
	datad => \inst159|auto_generated|_~55_combout\,
	combout => \inst159|auto_generated|_~58_combout\);

-- Location: LCFF_X12_Y11_N23
\inst131|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst139|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst131|dffs\(3));

-- Location: LCCOMB_X13_Y11_N30
\inst159|auto_generated|_~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~60_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst130|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst131|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst131|dffs\(3),
	datab => \inst130|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~60_combout\);

-- Location: LCCOMB_X14_Y11_N18
\inst159|auto_generated|_~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~61_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~60_combout\ & ((\inst128|dffs\(3)))) # (!\inst159|auto_generated|_~60_combout\ & (\inst129|dffs\(3))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst129|dffs\(3),
	datab => \ADDR~combout\(1),
	datac => \inst159|auto_generated|_~60_combout\,
	datad => \inst128|dffs\(3),
	combout => \inst159|auto_generated|_~61_combout\);

-- Location: LCFF_X10_Y11_N7
\inst143|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst151|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst143|dffs\(3));

-- Location: LCCOMB_X14_Y10_N24
\inst159|auto_generated|_~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~62_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst142|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst143|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst143|dffs\(3),
	datac => \ADDR~combout\(0),
	datad => \inst142|dffs\(3),
	combout => \inst159|auto_generated|_~62_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst159|auto_generated|_~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~63_combout\ = (\inst159|auto_generated|_~62_combout\ & ((\inst140|dffs\(3)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~62_combout\ & (((\inst141|dffs\(3) & \ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst140|dffs\(3),
	datab => \inst141|dffs\(3),
	datac => \inst159|auto_generated|_~62_combout\,
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~63_combout\);

-- Location: LCCOMB_X14_Y8_N12
\inst159|auto_generated|result_node[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~35_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst159|auto_generated|_~61_combout\))) # (!\ADDR~combout\(2) & (\inst159|auto_generated|_~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~63_combout\,
	datad => \inst159|auto_generated|_~61_combout\,
	combout => \inst159|auto_generated|result_node[3]~35_combout\);

-- Location: LCCOMB_X12_Y10_N14
\inst159|auto_generated|result_node[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~40_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(2) & (\inst102|dffs\(3))) # (!\ADDR~combout\(2) & ((\inst113|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|dffs\(3),
	datab => \ADDR~combout\(2),
	datac => \inst113|dffs\(3),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[3]~40_combout\);

-- Location: LCCOMB_X14_Y9_N14
\inst159|auto_generated|_~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~64_combout\ = (\ADDR~combout\(0) & ((\inst3|dffs\(3)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst4|dffs\(3) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dffs\(3),
	datab => \inst4|dffs\(3),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~64_combout\);

-- Location: LCCOMB_X13_Y12_N24
\inst159|auto_generated|_~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~66_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\DFF30|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst85|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|dffs\(3),
	datab => \ADDR~combout\(1),
	datac => \DFF30|dffs\(3),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~66_combout\);

-- Location: LCCOMB_X13_Y12_N12
\inst159|auto_generated|_~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~67_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~66_combout\ & ((\GeorgeGreen|dffs\(3)))) # (!\inst159|auto_generated|_~66_combout\ & (\inst83|dffs\(3))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|dffs\(3),
	datab => \ADDR~combout\(1),
	datac => \inst159|auto_generated|_~66_combout\,
	datad => \GeorgeGreen|dffs\(3),
	combout => \inst159|auto_generated|_~67_combout\);

-- Location: LCCOMB_X10_Y8_N6
\inst159|auto_generated|result_node[3]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~44_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst62|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst63|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|dffs\(3),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst62|dffs\(3),
	combout => \inst159|auto_generated|result_node[3]~44_combout\);

-- Location: LCCOMB_X10_Y8_N16
\inst159|auto_generated|result_node[3]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~47_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst73|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst74|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst74|dffs\(3),
	datab => \inst73|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[3]~47_combout\);

-- Location: LCCOMB_X17_Y7_N10
\inst159|auto_generated|_~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~70_combout\ = (\ADDR~combout\(0) & ((\inst40|dffs\(3)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst41|dffs\(3) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst40|dffs\(3),
	datac => \inst41|dffs\(3),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~70_combout\);

-- Location: LCCOMB_X17_Y7_N12
\inst159|auto_generated|_~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~71_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~70_combout\ & (\Ricky|dffs\(3))) # (!\inst159|auto_generated|_~70_combout\ & ((\inst39|dffs\(3)))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \Ricky|dffs\(3),
	datac => \inst39|dffs\(3),
	datad => \inst159|auto_generated|_~70_combout\,
	combout => \inst159|auto_generated|_~71_combout\);

-- Location: LCCOMB_X17_Y7_N6
\inst159|auto_generated|_~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~72_combout\ = (\inst159|auto_generated|_~71_combout\ & (\ADDR~combout\(5) & (\ADDR~combout\(2) & !\ADDR~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~71_combout\,
	datab => \ADDR~combout\(5),
	datac => \ADDR~combout\(2),
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|_~72_combout\);

-- Location: LCCOMB_X13_Y6_N6
\inst159|auto_generated|_~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~73_combout\ = (\ADDR~combout\(0) & (((\ADDR~combout\(1)) # (\inst51|dffs\(3))))) # (!\ADDR~combout\(0) & (\inst52|dffs\(3) & (!\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst52|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \inst51|dffs\(3),
	combout => \inst159|auto_generated|_~73_combout\);

-- Location: LCCOMB_X17_Y7_N26
\inst159|auto_generated|_~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~76_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst18|dffs\(3))) # (!\ADDR~combout\(0) & ((\inst19|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst18|dffs\(3),
	datac => \inst19|dffs\(3),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~76_combout\);

-- Location: LCCOMB_X15_Y7_N12
\inst159|auto_generated|_~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~77_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\Trevor|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst17|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst17|dffs\(3),
	datac => \ADDR~combout\(0),
	datad => \Trevor|dffs\(3),
	combout => \inst159|auto_generated|_~77_combout\);

-- Location: LCCOMB_X17_Y7_N20
\inst159|auto_generated|_~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~78_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|_~77_combout\) # (\inst159|auto_generated|_~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~77_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst159|auto_generated|_~76_combout\,
	combout => \inst159|auto_generated|_~78_combout\);

-- Location: LCFF_X13_Y9_N29
\inst129|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst137|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst129|dffs\(2));

-- Location: LCCOMB_X13_Y11_N2
\inst159|auto_generated|_~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~83_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst130|dffs\(2))) # (!\ADDR~combout\(0) & ((\inst131|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst130|dffs\(2),
	datab => \inst131|dffs\(2),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~83_combout\);

-- Location: LCCOMB_X14_Y11_N30
\inst159|auto_generated|_~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~84_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~83_combout\ & ((\inst128|dffs\(2)))) # (!\inst159|auto_generated|_~83_combout\ & (\inst129|dffs\(2))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst129|dffs\(2),
	datab => \inst128|dffs\(2),
	datac => \ADDR~combout\(1),
	datad => \inst159|auto_generated|_~83_combout\,
	combout => \inst159|auto_generated|_~84_combout\);

-- Location: LCCOMB_X9_Y10_N20
\inst159|auto_generated|result_node[2]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~57_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst113|dffs\(2)))) # (!\ADDR~combout\(1) & (\inst123|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|dffs\(2),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst113|dffs\(2),
	combout => \inst159|auto_generated|result_node[2]~57_combout\);

-- Location: LCCOMB_X12_Y12_N30
\inst159|auto_generated|_~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~89_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1)) # ((\DFF30|dffs\(2))))) # (!\ADDR~combout\(0) & (!\ADDR~combout\(1) & ((\inst85|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(1),
	datac => \DFF30|dffs\(2),
	datad => \inst85|dffs\(2),
	combout => \inst159|auto_generated|_~89_combout\);

-- Location: LCCOMB_X13_Y12_N16
\inst159|auto_generated|_~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~90_combout\ = (\inst159|auto_generated|_~89_combout\ & (((\GeorgeGreen|dffs\(2)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~89_combout\ & (\inst83|dffs\(2) & ((\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~89_combout\,
	datab => \inst83|dffs\(2),
	datac => \GeorgeGreen|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~90_combout\);

-- Location: LCCOMB_X9_Y11_N14
\inst159|auto_generated|_~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~91_combout\ = (\ADDR~combout\(0) & (((\Donna|dffs\(2)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst100|dffs\(2) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst100|dffs\(2),
	datac => \Donna|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~91_combout\);

-- Location: LCCOMB_X9_Y11_N4
\inst159|auto_generated|_~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~92_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~91_combout\ & ((\inst94|dffs\(2)))) # (!\inst159|auto_generated|_~91_combout\ & (\inst95|dffs\(2))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst95|dffs\(2),
	datac => \inst159|auto_generated|_~91_combout\,
	datad => \inst94|dffs\(2),
	combout => \inst159|auto_generated|_~92_combout\);

-- Location: LCCOMB_X9_Y11_N22
\inst159|auto_generated|result_node[2]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~60_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst159|auto_generated|_~90_combout\))) # (!\ADDR~combout\(2) & (\inst159|auto_generated|_~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst159|auto_generated|_~92_combout\,
	datac => \inst159|auto_generated|_~90_combout\,
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|result_node[2]~60_combout\);

-- Location: LCCOMB_X9_Y6_N18
\inst159|auto_generated|result_node[2]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~61_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst62|dffs\(2))) # (!\ADDR~combout\(0) & ((\inst63|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst62|dffs\(2),
	datac => \inst63|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[2]~61_combout\);

-- Location: LCFF_X9_Y6_N13
\DFF20|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst68|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF20|dffs\(2));

-- Location: LCCOMB_X9_Y6_N10
\inst159|auto_generated|result_node[2]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~62_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\DFF20|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst61|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst61|dffs\(2),
	datac => \DFF20|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[2]~62_combout\);

-- Location: LCCOMB_X9_Y6_N24
\inst159|auto_generated|result_node[2]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~63_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[2]~61_combout\) # (\inst159|auto_generated|result_node[2]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst159|auto_generated|result_node[2]~61_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst159|auto_generated|result_node[2]~62_combout\,
	combout => \inst159|auto_generated|result_node[2]~63_combout\);

-- Location: LCFF_X13_Y7_N27
\inst41|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst49|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|dffs\(2));

-- Location: LCCOMB_X14_Y6_N14
\inst159|auto_generated|_~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~93_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst40|dffs\(2))) # (!\ADDR~combout\(0) & ((\inst41|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|dffs\(2),
	datab => \ADDR~combout\(1),
	datac => \inst41|dffs\(2),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~93_combout\);

-- Location: LCCOMB_X14_Y8_N22
\inst159|auto_generated|_~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~96_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst51|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst52|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|dffs\(2),
	datab => \ADDR~combout\(1),
	datac => \inst51|dffs\(2),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~96_combout\);

-- Location: LCCOMB_X14_Y6_N26
\inst159|auto_generated|_~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~97_combout\ = (\inst159|auto_generated|_~96_combout\ & ((\Julian|dffs\(2)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~96_combout\ & (((\inst50|dffs\(2) & \ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~96_combout\,
	datab => \Julian|dffs\(2),
	datac => \inst50|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~97_combout\);

-- Location: LCCOMB_X14_Y6_N16
\inst159|auto_generated|_~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~98_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst159|auto_generated|_~97_combout\ & \inst159|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(5),
	datab => \inst159|auto_generated|_~97_combout\,
	datac => \ADDR~combout\(4),
	datad => \inst159|auto_generated|_~16_combout\,
	combout => \inst159|auto_generated|_~98_combout\);

-- Location: LCCOMB_X9_Y7_N0
\inst159|auto_generated|_~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~103_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\RANDY|dffs\(2))) # (!\ADDR~combout\(0) & ((\inst28|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \RANDY|dffs\(2),
	datac => \inst28|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~103_combout\);

-- Location: LCFF_X10_Y11_N17
\inst143|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst151|$00000|auto_generated|result_node\(1),
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst143|dffs\(1));

-- Location: LCCOMB_X14_Y10_N4
\inst159|auto_generated|_~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~108_combout\ = (\ADDR~combout\(0) & (((\inst142|dffs\(1)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst143|dffs\(1) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst143|dffs\(1),
	datab => \inst142|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~108_combout\);

-- Location: LCCOMB_X14_Y10_N14
\inst159|auto_generated|_~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~109_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~108_combout\ & ((\inst140|dffs\(1)))) # (!\inst159|auto_generated|_~108_combout\ & (\inst141|dffs\(1))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst141|dffs\(1),
	datac => \inst159|auto_generated|_~108_combout\,
	datad => \inst140|dffs\(1),
	combout => \inst159|auto_generated|_~109_combout\);

-- Location: LCFF_X12_Y10_N27
\Cyrus|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst118|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Cyrus|dffs\(1));

-- Location: LCCOMB_X10_Y9_N24
\inst159|auto_generated|result_node[1]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~70_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst101|dffs\(1))) # (!\ADDR~combout\(1) & ((\Cyrus|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst101|dffs\(1),
	datac => \ADDR~combout\(1),
	datad => \Cyrus|dffs\(1),
	combout => \inst159|auto_generated|result_node[1]~70_combout\);

-- Location: LCFF_X10_Y9_N23
\inst111|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst119|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst111|dffs\(1));

-- Location: LCCOMB_X9_Y9_N16
\inst159|auto_generated|result_node[1]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~71_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst102|dffs\(1)))) # (!\ADDR~combout\(1) & (\inst111|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst111|dffs\(1),
	datab => \inst102|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[1]~71_combout\);

-- Location: LCCOMB_X9_Y9_N2
\inst159|auto_generated|result_node[1]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~72_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[1]~71_combout\) # (\inst159|auto_generated|result_node[1]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datac => \inst159|auto_generated|result_node[1]~71_combout\,
	datad => \inst159|auto_generated|result_node[1]~70_combout\,
	combout => \inst159|auto_generated|result_node[1]~72_combout\);

-- Location: LCFF_X8_Y10_N15
\inst122|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst126|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst122|dffs\(1));

-- Location: LCCOMB_X9_Y9_N0
\inst159|auto_generated|result_node[1]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~73_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\DFF40|dffs\(1))) # (!\ADDR~combout\(1) & ((\inst122|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF40|dffs\(1),
	datab => \inst122|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[1]~73_combout\);

-- Location: LCCOMB_X9_Y10_N16
\inst159|auto_generated|result_node[1]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~74_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst113|dffs\(1)))) # (!\ADDR~combout\(1) & (\inst123|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst113|dffs\(1),
	combout => \inst159|auto_generated|result_node[1]~74_combout\);

-- Location: LCCOMB_X9_Y9_N26
\inst159|auto_generated|result_node[1]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~75_combout\ = (\inst159|auto_generated|result_node[1]~72_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[1]~74_combout\) # (\inst159|auto_generated|result_node[1]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst159|auto_generated|result_node[1]~72_combout\,
	datac => \inst159|auto_generated|result_node[1]~74_combout\,
	datad => \inst159|auto_generated|result_node[1]~73_combout\,
	combout => \inst159|auto_generated|result_node[1]~75_combout\);

-- Location: LCCOMB_X14_Y12_N6
\inst159|auto_generated|_~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~112_combout\ = (\ADDR~combout\(0) & ((\DFF30|dffs\(1)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst85|dffs\(1) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF30|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \inst85|dffs\(1),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~112_combout\);

-- Location: LCFF_X9_Y11_N17
\Donna|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst107|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Donna|dffs\(1));

-- Location: LCFF_X10_Y10_N9
\inst100|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst108|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst100|dffs\(1));

-- Location: LCCOMB_X9_Y11_N2
\inst159|auto_generated|_~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~114_combout\ = (\ADDR~combout\(0) & (((\Donna|dffs\(1)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst100|dffs\(1) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst100|dffs\(1),
	datac => \Donna|dffs\(1),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~114_combout\);

-- Location: LCCOMB_X9_Y11_N0
\inst159|auto_generated|_~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~115_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~114_combout\ & ((\inst94|dffs\(1)))) # (!\inst159|auto_generated|_~114_combout\ & (\inst95|dffs\(1))))) # (!\ADDR~combout\(1) & 
-- (\inst159|auto_generated|_~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst159|auto_generated|_~114_combout\,
	datac => \inst95|dffs\(1),
	datad => \inst94|dffs\(1),
	combout => \inst159|auto_generated|_~115_combout\);

-- Location: LCCOMB_X13_Y9_N16
\inst159|auto_generated|result_node[1]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~82_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\Bubbles|dffs\(1))) # (!\ADDR~combout\(0) & ((\inst72|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bubbles|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst72|dffs\(1),
	combout => \inst159|auto_generated|result_node[1]~82_combout\);

-- Location: LCCOMB_X13_Y7_N8
\inst159|auto_generated|_~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~116_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst40|dffs\(1))) # (!\ADDR~combout\(0) & ((\inst41|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst40|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \inst41|dffs\(1),
	combout => \inst159|auto_generated|_~116_combout\);

-- Location: LCCOMB_X14_Y7_N18
\inst159|auto_generated|_~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~117_combout\ = (\inst159|auto_generated|_~116_combout\ & (((\Ricky|dffs\(1)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~116_combout\ & (\inst39|dffs\(1) & ((\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~116_combout\,
	datab => \inst39|dffs\(1),
	datac => \Ricky|dffs\(1),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~117_combout\);

-- Location: LCCOMB_X9_Y7_N14
\inst159|auto_generated|_~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~126_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\RANDY|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst28|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst28|dffs\(1),
	datac => \RANDY|dffs\(1),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~126_combout\);

-- Location: LCCOMB_X13_Y11_N24
\inst159|auto_generated|_~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~131_combout\ = (\ADDR~combout\(0) & (((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst141|dffs\(0))) # (!\ADDR~combout\(1) & ((\inst143|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst141|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst143|dffs\(0),
	combout => \inst159|auto_generated|_~131_combout\);

-- Location: LCCOMB_X12_Y11_N4
\inst159|auto_generated|_~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~132_combout\ = (\ADDR~combout\(0) & ((\inst159|auto_generated|_~131_combout\ & ((\inst140|dffs\(0)))) # (!\inst159|auto_generated|_~131_combout\ & (\inst142|dffs\(0))))) # (!\ADDR~combout\(0) & 
-- (((\inst159|auto_generated|_~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst142|dffs\(0),
	datac => \inst140|dffs\(0),
	datad => \inst159|auto_generated|_~131_combout\,
	combout => \inst159|auto_generated|_~132_combout\);

-- Location: LCCOMB_X14_Y10_N28
\inst159|auto_generated|result_node[0]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~91_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst113|dffs\(0))) # (!\ADDR~combout\(1) & ((\inst123|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|dffs\(0),
	datab => \inst123|dffs\(0),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[0]~91_combout\);

-- Location: LCFF_X12_Y8_N17
\inst4|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst12|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(0));

-- Location: LCCOMB_X15_Y10_N12
\inst159|auto_generated|_~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~137_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0)) # (\inst95|dffs\(0))))) # (!\ADDR~combout\(1) & (\inst100|dffs\(0) & (!\ADDR~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst100|dffs\(0),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst95|dffs\(0),
	combout => \inst159|auto_generated|_~137_combout\);

-- Location: LCCOMB_X15_Y10_N22
\inst159|auto_generated|_~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~138_combout\ = (\inst159|auto_generated|_~137_combout\ & (((\inst94|dffs\(0)) # (!\ADDR~combout\(0))))) # (!\inst159|auto_generated|_~137_combout\ & (\Donna|dffs\(0) & (\ADDR~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~137_combout\,
	datab => \Donna|dffs\(0),
	datac => \ADDR~combout\(0),
	datad => \inst94|dffs\(0),
	combout => \inst159|auto_generated|_~138_combout\);

-- Location: LCCOMB_X10_Y12_N14
\inst159|auto_generated|result_node[0]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~95_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst62|dffs\(0))) # (!\ADDR~combout\(0) & ((\inst63|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst62|dffs\(0),
	datac => \ADDR~combout\(1),
	datad => \inst63|dffs\(0),
	combout => \inst159|auto_generated|result_node[0]~95_combout\);

-- Location: LCCOMB_X10_Y6_N30
\inst159|auto_generated|result_node[0]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~96_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\DFF20|dffs\(0))) # (!\ADDR~combout\(0) & ((\inst61|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF20|dffs\(0),
	datab => \ADDR~combout\(1),
	datac => \inst61|dffs\(0),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[0]~96_combout\);

-- Location: LCCOMB_X15_Y8_N12
\inst159|auto_generated|result_node[0]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~97_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[0]~96_combout\) # (\inst159|auto_generated|result_node[0]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[0]~96_combout\,
	datab => \ADDR~combout\(2),
	datad => \inst159|auto_generated|result_node[0]~95_combout\,
	combout => \inst159|auto_generated|result_node[0]~97_combout\);

-- Location: LCFF_X14_Y7_N29
\inst39|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst47|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst39|dffs\(0));

-- Location: LCFF_X13_Y7_N17
\inst41|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst49|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|dffs\(0));

-- Location: LCCOMB_X14_Y6_N30
\inst159|auto_generated|_~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~139_combout\ = (\ADDR~combout\(0) & ((\inst40|dffs\(0)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst41|dffs\(0) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst40|dffs\(0),
	datac => \inst41|dffs\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~139_combout\);

-- Location: LCCOMB_X14_Y7_N10
\inst159|auto_generated|_~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~140_combout\ = (\inst159|auto_generated|_~139_combout\ & ((\Ricky|dffs\(0)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~139_combout\ & (((\inst39|dffs\(0) & \ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ricky|dffs\(0),
	datab => \inst159|auto_generated|_~139_combout\,
	datac => \inst39|dffs\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~140_combout\);

-- Location: LCFF_X10_Y7_N1
\inst19|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst27|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|dffs\(0));

-- Location: LCCOMB_X15_Y8_N26
\inst159|auto_generated|_~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~145_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst18|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst19|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst19|dffs\(0),
	datac => \ADDR~combout\(0),
	datad => \inst18|dffs\(0),
	combout => \inst159|auto_generated|_~145_combout\);

-- Location: LCFF_X12_Y8_N19
\inst17|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst25|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|dffs\(0));

-- Location: LCCOMB_X15_Y8_N20
\inst159|auto_generated|_~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~146_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\Trevor|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst17|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst17|dffs\(0),
	datac => \ADDR~combout\(0),
	datad => \Trevor|dffs\(0),
	combout => \inst159|auto_generated|_~146_combout\);

-- Location: LCCOMB_X15_Y8_N6
\inst159|auto_generated|_~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~147_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|_~146_combout\) # (\inst159|auto_generated|_~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~146_combout\,
	datad => \inst159|auto_generated|_~145_combout\,
	combout => \inst159|auto_generated|_~147_combout\);

-- Location: LCFF_X12_Y7_N31
\inst30|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst38|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst30|dffs\(0));

-- Location: LCCOMB_X17_Y7_N16
\inst159|auto_generated|_~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~148_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\DFF10|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst30|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst30|dffs\(0),
	datac => \DFF10|dffs\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~148_combout\);

-- Location: LCFF_X10_Y7_N31
\inst28|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst36|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|dffs\(0));

-- Location: LCCOMB_X9_Y8_N2
\inst159|auto_generated|_~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~149_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\RANDY|dffs\(0))) # (!\ADDR~combout\(0) & ((\inst28|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RANDY|dffs\(0),
	datab => \ADDR~combout\(1),
	datac => \inst28|dffs\(0),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~149_combout\);

-- Location: LCCOMB_X15_Y8_N16
\inst159|auto_generated|_~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~150_combout\ = (\inst159|auto_generated|_~147_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|_~149_combout\) # (\inst159|auto_generated|_~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~149_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~148_combout\,
	datad => \inst159|auto_generated|_~147_combout\,
	combout => \inst159|auto_generated|_~150_combout\);

-- Location: LCCOMB_X12_Y8_N0
\inst8|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\Trevor|dffs\(5)))) # (!\MODE~combout\(1) & (\inst3|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst3|dffs\(5),
	datad => \Trevor|dffs\(5),
	combout => \inst8|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X14_Y9_N30
\inst5|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst2|dffs\(5)))) # (!\MODE~combout\(1) & (\DATA~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA~combout\(5),
	datac => \MODE~combout\(1),
	datad => \inst2|dffs\(5),
	combout => \inst5|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y12_N16
\inst87|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\DFF30|dffs\(5))) # (!\MODE~combout\(1) & ((\GeorgeGreen|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF30|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \GeorgeGreen|dffs\(5),
	combout => \inst87|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y12_N6
\inst88|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst88|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst85|dffs\(5)))) # (!\MODE~combout\(1) & (\inst83|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|dffs\(5),
	datab => \inst85|dffs\(5),
	datac => \MODE~combout\(1),
	combout => \inst88|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X15_Y10_N24
\inst89|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst94|dffs\(5)))) # (!\MODE~combout\(1) & (\DFF30|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF30|dffs\(5),
	datab => \MODE~combout\(1),
	datad => \inst94|dffs\(5),
	combout => \inst89|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X13_Y12_N20
\inst86|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst86|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst83|dffs\(5)))) # (!\MODE~combout\(1) & (\inst74|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst74|dffs\(5),
	datab => \inst83|dffs\(5),
	datad => \MODE~combout\(1),
	combout => \inst86|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X15_Y10_N8
\inst99|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst99|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\Donna|dffs\(5))) # (!\MODE~combout\(1) & ((\inst94|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \Donna|dffs\(5),
	datad => \inst94|dffs\(5),
	combout => \inst99|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X9_Y11_N26
\inst107|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst107|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst100|dffs\(5))) # (!\MODE~combout\(1) & ((\inst95|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst100|dffs\(5),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst95|dffs\(5),
	combout => \inst107|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X17_Y10_N12
\inst98|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst98|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst95|dffs\(5))) # (!\MODE~combout\(1) & ((\inst85|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|dffs\(5),
	datab => \MODE~combout\(1),
	datac => \inst85|dffs\(5),
	datad => \MODE~combout\(0),
	combout => \inst98|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y9_N10
\inst78|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst78|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\GeorgeGreen|dffs\(5)))) # (!\MODE~combout\(1) & (\inst73|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst73|dffs\(5),
	datad => \GeorgeGreen|dffs\(5),
	combout => \inst78|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X15_Y7_N8
\inst22|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst19|dffs\(5))) # (!\MODE~combout\(1) & ((\inst17|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst19|dffs\(5),
	datad => \inst17|dffs\(5),
	combout => \inst22|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y7_N24
\inst23|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\RANDY|dffs\(5))) # (!\MODE~combout\(1) & ((\inst18|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RANDY|dffs\(5),
	datac => \inst18|dffs\(5),
	datad => \MODE~combout\(1),
	combout => \inst23|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X15_Y7_N22
\inst20|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst17|dffs\(5)))) # (!\MODE~combout\(1) & (\inst4|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst17|dffs\(5),
	combout => \inst20|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y8_N6
\inst21|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst18|dffs\(5))) # (!\MODE~combout\(1) & ((\Trevor|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|dffs\(5),
	datab => \MODE~combout\(1),
	datad => \Trevor|dffs\(5),
	combout => \inst21|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X9_Y7_N8
\inst33|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst30|dffs\(5))) # (!\MODE~combout\(1) & ((\inst28|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst30|dffs\(5),
	datac => \inst28|dffs\(5),
	combout => \inst33|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y7_N6
\inst34|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\Ricky|dffs\(5)))) # (!\MODE~combout\(1) & (\DFF10|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \DFF10|dffs\(5),
	datad => \Ricky|dffs\(5),
	combout => \inst34|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X9_Y7_N10
\inst31|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst28|dffs\(5))) # (!\MODE~combout\(1) & ((\inst19|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst28|dffs\(5),
	datad => \inst19|dffs\(5),
	combout => \inst31|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y7_N14
\inst32|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\DFF10|dffs\(5))) # (!\MODE~combout\(1) & ((\RANDY|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \DFF10|dffs\(5),
	datad => \RANDY|dffs\(5),
	combout => \inst32|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y11_N20
\inst135|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst135|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & ((\inst140|dffs\(4)))) # (!\MODE~combout\(1) & (\inst130|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst130|dffs\(4),
	datad => \inst140|dffs\(4),
	combout => \inst135|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X12_Y11_N8
\inst149|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst149|$00000|auto_generated|result_node[4]~1_combout\ = ((\MODE~combout\(1) & (\inst142|dffs\(4))) # (!\MODE~combout\(1) & ((\inst140|dffs\(4))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst142|dffs\(4),
	datac => \MODE~combout\(0),
	datad => \inst140|dffs\(4),
	combout => \inst149|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X10_Y11_N22
\inst150|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst150|$00000|auto_generated|result_node[4]~1_combout\ = ((\MODE~combout\(1) & (\inst143|dffs\(4))) # (!\MODE~combout\(1) & ((\inst141|dffs\(4))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst143|dffs\(4),
	datac => \MODE~combout\(0),
	datad => \inst141|dffs\(4),
	combout => \inst150|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X10_Y11_N28
\inst151|$00000|auto_generated|result_node[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst151|$00000|auto_generated|result_node\(4) = ((!\MODE~combout\(1) & \inst142|dffs\(4))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datad => \inst142|dffs\(4),
	combout => \inst151|$00000|auto_generated|result_node\(4));

-- Location: LCCOMB_X13_Y11_N10
\inst148|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst148|$00000|auto_generated|result_node[4]~1_combout\ = ((\MODE~combout\(1) & ((\inst141|dffs\(4)))) # (!\MODE~combout\(1) & (\inst131|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst131|dffs\(4),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst141|dffs\(4),
	combout => \inst148|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X12_Y11_N22
\inst139|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst139|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & ((\inst140|dffs\(3)))) # (!\MODE~combout\(1) & (\inst130|dffs\(3)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst130|dffs\(3),
	datac => \MODE~combout\(0),
	datad => \inst140|dffs\(3),
	combout => \inst139|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X12_Y11_N6
\inst145|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst145|$00000|auto_generated|result_node[3]~0_combout\ = (\MODE~combout\(1) & ((\inst142|dffs\(3)))) # (!\MODE~combout\(1) & (\inst140|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst140|dffs\(3),
	datac => \inst142|dffs\(3),
	combout => \inst145|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst146|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst146|$00000|auto_generated|result_node[3]~0_combout\ = (\MODE~combout\(1) & (\inst143|dffs\(3))) # (!\MODE~combout\(1) & ((\inst141|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst143|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \inst141|dffs\(3),
	combout => \inst146|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X10_Y11_N6
\inst151|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst151|$00000|auto_generated|result_node[3]~0_combout\ = (!\MODE~combout\(1) & (\MODE~combout\(0) & \inst142|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst142|dffs\(3),
	combout => \inst151|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst144|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst144|$00000|auto_generated|result_node[3]~0_combout\ = (\MODE~combout\(1) & ((\inst141|dffs\(3)))) # (!\MODE~combout\(1) & (\inst131|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst131|dffs\(3),
	datab => \inst141|dffs\(3),
	datac => \MODE~combout\(1),
	combout => \inst144|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X13_Y9_N28
\inst137|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst137|$00000|auto_generated|result_node[2]~2_combout\ = ((\MODE~combout\(1) & ((\inst130|dffs\(2)))) # (!\MODE~combout\(1) & (\inst128|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst128|dffs\(2),
	datab => \inst130|dffs\(2),
	datac => \MODE~combout\(0),
	datad => \MODE~combout\(1),
	combout => \inst137|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X9_Y10_N30
\inst117|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst117|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & ((\inst122|dffs\(2)))) # (!\MODE~combout\(1) & (\DFF40|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF40|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst122|dffs\(2),
	combout => \inst117|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCCOMB_X9_Y6_N12
\inst68|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst68|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & ((\inst61|dffs\(2)))) # (!\MODE~combout\(1) & (\inst52|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|dffs\(2),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst61|dffs\(2),
	combout => \inst68|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCCOMB_X13_Y7_N26
\inst49|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst49|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & ((\Julian|dffs\(2)))) # (!\MODE~combout\(1) & (\inst40|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst40|dffs\(2),
	datac => \MODE~combout\(0),
	datad => \Julian|dffs\(2),
	combout => \inst49|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCCOMB_X13_Y7_N24
\inst54|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & ((\inst51|dffs\(2)))) # (!\MODE~combout\(1) & (\Julian|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Julian|dffs\(2),
	datab => \MODE~combout\(1),
	datad => \inst51|dffs\(2),
	combout => \inst54|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X13_Y6_N8
\inst55|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst55|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & (\inst52|dffs\(2))) # (!\MODE~combout\(1) & ((\inst50|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst52|dffs\(2),
	datac => \inst50|dffs\(2),
	datad => \MODE~combout\(1),
	combout => \inst55|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X13_Y6_N26
\inst56|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & ((\DFF20|dffs\(2)))) # (!\MODE~combout\(1) & (\inst51|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst51|dffs\(2),
	datad => \DFF20|dffs\(2),
	combout => \inst56|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X10_Y6_N22
\inst53|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & ((\inst50|dffs\(2)))) # (!\MODE~combout\(1) & (\inst41|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst41|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst50|dffs\(2),
	combout => \inst53|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X10_Y11_N16
\inst151|$00000|auto_generated|result_node[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst151|$00000|auto_generated|result_node\(1) = ((!\MODE~combout\(1) & \inst142|dffs\(1))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst142|dffs\(1),
	combout => \inst151|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X10_Y10_N10
\inst105|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst105|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & ((\inst102|dffs\(1)))) # (!\MODE~combout\(1) & (\inst100|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst100|dffs\(1),
	datad => \inst102|dffs\(1),
	combout => \inst105|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X12_Y10_N26
\inst118|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst118|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & (\inst111|dffs\(1))) # (!\MODE~combout\(1) & ((\inst102|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst111|dffs\(1),
	datac => \MODE~combout\(0),
	datad => \inst102|dffs\(1),
	combout => \inst118|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X10_Y9_N0
\inst106|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst106|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & ((\Cyrus|dffs\(1)))) # (!\MODE~combout\(1) & (\inst101|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst101|dffs\(1),
	datad => \Cyrus|dffs\(1),
	combout => \inst106|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X10_Y9_N22
\inst119|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst119|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & (\DFF40|dffs\(1))) # (!\MODE~combout\(1) & ((\Cyrus|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \DFF40|dffs\(1),
	datad => \Cyrus|dffs\(1),
	combout => \inst119|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X8_Y10_N16
\inst116|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst116|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & (\inst113|dffs\(1))) # (!\MODE~combout\(1) & ((\inst111|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst111|dffs\(1),
	combout => \inst116|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X8_Y10_N14
\inst126|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst126|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & ((\inst123|dffs\(1)))) # (!\MODE~combout\(1) & (\inst113|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|dffs\(1),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst123|dffs\(1),
	combout => \inst126|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X9_Y10_N26
\inst117|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst117|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & ((\inst122|dffs\(1)))) # (!\MODE~combout\(1) & (\DFF40|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DFF40|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst122|dffs\(1),
	combout => \inst117|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X15_Y10_N16
\inst97|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst97|$00000|auto_generated|result_node[1]~3_combout\ = (\MODE~combout\(1) & (\Donna|dffs\(1))) # (!\MODE~combout\(1) & ((\inst94|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Donna|dffs\(1),
	datab => \MODE~combout\(1),
	datad => \inst94|dffs\(1),
	combout => \inst97|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCCOMB_X9_Y11_N16
\inst107|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst107|$00000|auto_generated|result_node[1]~1_combout\ = ((\MODE~combout\(1) & (\inst100|dffs\(1))) # (!\MODE~combout\(1) & ((\inst95|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst100|dffs\(1),
	datac => \inst95|dffs\(1),
	datad => \MODE~combout\(0),
	combout => \inst107|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X10_Y10_N8
\inst108|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst108|$00000|auto_generated|result_node[1]~1_combout\ = ((\MODE~combout\(1) & ((\inst101|dffs\(1)))) # (!\MODE~combout\(1) & (\Donna|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \Donna|dffs\(1),
	datad => \inst101|dffs\(1),
	combout => \inst108|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X12_Y9_N28
\inst76|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst76|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & ((\inst73|dffs\(1)))) # (!\MODE~combout\(1) & (\Bubbles|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \Bubbles|dffs\(1),
	datad => \inst73|dffs\(1),
	combout => \inst76|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X12_Y8_N16
\inst12|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|$00000|auto_generated|result_node[0]~1_combout\ = ((\MODE~combout\(1) & (\Trevor|dffs\(0))) # (!\MODE~combout\(1) & ((\inst3|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \Trevor|dffs\(0),
	datad => \inst3|dffs\(0),
	combout => \inst12|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X14_Y7_N28
\inst47|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst47|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & ((\inst40|dffs\(0)))) # (!\MODE~combout\(1) & (\Ricky|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ricky|dffs\(0),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst40|dffs\(0),
	combout => \inst47|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X14_Y7_N14
\inst44|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|$00000|auto_generated|result_node[0]~2_combout\ = (\MODE~combout\(1) & ((\inst41|dffs\(0)))) # (!\MODE~combout\(1) & (\inst39|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|dffs\(0),
	datab => \inst41|dffs\(0),
	datac => \MODE~combout\(1),
	combout => \inst44|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X13_Y7_N16
\inst49|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst49|$00000|auto_generated|result_node[0]~3_combout\ = ((\MODE~combout\(1) & (\Julian|dffs\(0))) # (!\MODE~combout\(1) & ((\inst40|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Julian|dffs\(0),
	datac => \inst40|dffs\(0),
	datad => \MODE~combout\(0),
	combout => \inst49|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X12_Y7_N24
\inst42|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst42|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & ((\inst39|dffs\(0)))) # (!\MODE~combout\(1) & (\inst30|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst30|dffs\(0),
	datad => \inst39|dffs\(0),
	combout => \inst42|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X15_Y7_N2
\inst22|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & (\inst19|dffs\(0))) # (!\MODE~combout\(1) & ((\inst17|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|dffs\(0),
	datab => \MODE~combout\(1),
	datad => \inst17|dffs\(0),
	combout => \inst22|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X10_Y7_N0
\inst27|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & ((\RANDY|dffs\(0)))) # (!\MODE~combout\(1) & (\inst18|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst18|dffs\(0),
	datac => \RANDY|dffs\(0),
	datad => \MODE~combout\(0),
	combout => \inst27|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X15_Y7_N16
\inst20|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|result_node[0]~4_combout\ = (\MODE~combout\(1) & ((\inst17|dffs\(0)))) # (!\MODE~combout\(1) & (\inst4|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst4|dffs\(0),
	datad => \inst17|dffs\(0),
	combout => \inst20|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X12_Y8_N18
\inst25|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|result_node[0]~1_combout\ = ((\MODE~combout\(1) & ((\inst18|dffs\(0)))) # (!\MODE~combout\(1) & (\Trevor|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \Trevor|dffs\(0),
	datad => \inst18|dffs\(0),
	combout => \inst25|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X9_Y7_N26
\inst33|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & ((\inst30|dffs\(0)))) # (!\MODE~combout\(1) & (\inst28|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst28|dffs\(0),
	datad => \inst30|dffs\(0),
	combout => \inst33|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X12_Y7_N30
\inst38|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst38|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & ((\Ricky|dffs\(0)))) # (!\MODE~combout\(1) & (\DFF10|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF10|dffs\(0),
	datab => \MODE~combout\(0),
	datac => \Ricky|dffs\(0),
	datad => \MODE~combout\(1),
	combout => \inst38|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X9_Y7_N20
\inst31|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[0]~4_combout\ = (\MODE~combout\(1) & ((\inst28|dffs\(0)))) # (!\MODE~combout\(1) & (\inst19|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst19|dffs\(0),
	datad => \inst28|dffs\(0),
	combout => \inst31|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X10_Y7_N30
\inst36|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|$00000|auto_generated|result_node[0]~1_combout\ = ((\MODE~combout\(1) & ((\DFF10|dffs\(0)))) # (!\MODE~combout\(1) & (\RANDY|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RANDY|dffs\(0),
	datab => \MODE~combout\(0),
	datac => \DFF10|dffs\(0),
	datad => \MODE~combout\(1),
	combout => \inst36|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENABLE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ENABLE,
	combout => \ENABLE~combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA(5),
	combout => \DATA~combout\(5));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA(4),
	combout => \DATA~combout\(4));

-- Location: LCCOMB_X14_Y10_N30
\inst140|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst140|dffs[4]~feeder_combout\ = \inst148|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst148|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \inst140|dffs[4]~feeder_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MODE[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MODE(1),
	combout => \MODE~combout\(1));

-- Location: LCCOMB_X13_Y10_N16
\inst|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|auto_generated|counter_comb_bita0~combout\ = \inst|auto_generated|safe_q\(0) $ (((\MODE~combout\(1)) # (VCC)))
-- \inst|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|auto_generated|safe_q\(0) $ (\MODE~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|safe_q\(0),
	datab => \MODE~combout\(1),
	datad => VCC,
	combout => \inst|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X13_Y10_N18
\inst|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|auto_generated|counter_comb_bita1~combout\ = (\inst|auto_generated|counter_comb_bita0~COUT\ & (\inst|auto_generated|safe_q\(1) $ (((VCC) # (!\MODE~combout\(1)))))) # (!\inst|auto_generated|counter_comb_bita0~COUT\ & 
-- (((\inst|auto_generated|safe_q\(1)) # (GND))))
-- \inst|auto_generated|counter_comb_bita1~COUT\ = CARRY((\MODE~combout\(1) $ (!\inst|auto_generated|safe_q\(1))) # (!\inst|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X13_Y10_N14
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MODE[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MODE(0),
	combout => \MODE~combout\(0));

-- Location: LCFF_X13_Y10_N19
\inst|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_MODE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|auto_generated|safe_q\(1));

-- Location: LCCOMB_X13_Y10_N20
\inst|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|auto_generated|counter_comb_bita2~combout\ = (\inst|auto_generated|counter_comb_bita1~COUT\ & (\inst|auto_generated|safe_q\(2) & ((VCC)))) # (!\inst|auto_generated|counter_comb_bita1~COUT\ & (\inst|auto_generated|safe_q\(2) $ (((\MODE~combout\(1)) # 
-- (VCC)))))
-- \inst|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\inst|auto_generated|counter_comb_bita1~COUT\ & (\inst|auto_generated|safe_q\(2) $ (\MODE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|safe_q\(2),
	datab => \MODE~combout\(1),
	datad => VCC,
	cin => \inst|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X13_Y10_N22
\inst|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|auto_generated|counter_comb_bita3~combout\ = (\inst|auto_generated|counter_comb_bita2~COUT\ & (\inst|auto_generated|safe_q\(3) $ (((VCC) # (!\MODE~combout\(1)))))) # (!\inst|auto_generated|counter_comb_bita2~COUT\ & 
-- (((\inst|auto_generated|safe_q\(3)) # (GND))))
-- \inst|auto_generated|counter_comb_bita3~COUT\ = CARRY((\MODE~combout\(1) $ (!\inst|auto_generated|safe_q\(3))) # (!\inst|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X13_Y10_N23
\inst|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_MODE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|auto_generated|safe_q\(3));

-- Location: LCCOMB_X13_Y10_N24
\inst|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|auto_generated|counter_comb_bita4~combout\ = (\inst|auto_generated|counter_comb_bita3~COUT\ & (\inst|auto_generated|safe_q\(4) & ((VCC)))) # (!\inst|auto_generated|counter_comb_bita3~COUT\ & (\inst|auto_generated|safe_q\(4) $ (((\MODE~combout\(1)) # 
-- (VCC)))))
-- \inst|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\inst|auto_generated|counter_comb_bita3~COUT\ & (\inst|auto_generated|safe_q\(4) $ (\MODE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|safe_q\(4),
	datab => \MODE~combout\(1),
	datad => VCC,
	cin => \inst|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X13_Y10_N26
\inst|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|auto_generated|counter_comb_bita5~combout\ = \inst|auto_generated|counter_comb_bita4~COUT\ $ (\inst|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|auto_generated|safe_q\(5),
	cin => \inst|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|auto_generated|counter_comb_bita5~combout\);

-- Location: LCCOMB_X17_Y10_N20
\MODE[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \MODE[0]~_wirecell_combout\ = !\MODE~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MODE~combout\(0),
	combout => \MODE[0]~_wirecell_combout\);

-- Location: LCFF_X13_Y10_N27
\inst|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|auto_generated|counter_comb_bita5~combout\,
	sdata => \MODE[0]~_wirecell_combout\,
	sload => \ALT_INV_MODE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|auto_generated|safe_q\(5));

-- Location: LCFF_X13_Y10_N25
\inst|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|auto_generated|counter_comb_bita4~combout\,
	sdata => \MODE[0]~_wirecell_combout\,
	sload => \ALT_INV_MODE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|auto_generated|safe_q\(4));

-- Location: LCFF_X13_Y10_N21
\inst|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|auto_generated|counter_comb_bita2~combout\,
	sdata => \MODE[0]~_wirecell_combout\,
	sload => \ALT_INV_MODE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|auto_generated|safe_q\(2));

-- Location: LCCOMB_X13_Y10_N28
\inst156|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst156|auto_generated|op_1~0_combout\ = (!\inst|auto_generated|safe_q\(2) & (!\inst|auto_generated|safe_q\(3) & ((!\inst|auto_generated|safe_q\(1)) # (!\inst|auto_generated|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|safe_q\(0),
	datab => \inst|auto_generated|safe_q\(1),
	datac => \inst|auto_generated|safe_q\(2),
	datad => \inst|auto_generated|safe_q\(3),
	combout => \inst156|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X13_Y10_N10
\inst156|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst156|auto_generated|op_1~1_combout\ = ((\inst156|auto_generated|op_1~0_combout\) # (!\inst|auto_generated|safe_q\(4))) # (!\inst|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|auto_generated|safe_q\(5),
	datac => \inst|auto_generated|safe_q\(4),
	datad => \inst156|auto_generated|op_1~0_combout\,
	combout => \inst156|auto_generated|op_1~1_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCFF_X13_Y10_N17
\inst|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_MODE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|auto_generated|safe_q\(0));

-- Location: LCCOMB_X13_Y10_N12
\inst157|auto_generated|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst157|auto_generated|aneb_result_wire[0]~0_combout\ = (\inst|auto_generated|safe_q\(4)) # ((\inst|auto_generated|safe_q\(3)) # ((\inst|auto_generated|safe_q\(2)) # (\inst|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|safe_q\(4),
	datab => \inst|auto_generated|safe_q\(3),
	datac => \inst|auto_generated|safe_q\(2),
	datad => \inst|auto_generated|safe_q\(5),
	combout => \inst157|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X13_Y10_N30
\inst157|auto_generated|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst157|auto_generated|aneb_result_wire\(0) = (\inst|auto_generated|safe_q\(1)) # ((\inst|auto_generated|safe_q\(0)) # (\inst157|auto_generated|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|auto_generated|safe_q\(1),
	datac => \inst|auto_generated|safe_q\(0),
	datad => \inst157|auto_generated|aneb_result_wire[0]~0_combout\,
	combout => \inst157|auto_generated|aneb_result_wire\(0));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ADDR(2),
	combout => \ADDR~combout\(2));

-- Location: LCCOMB_X10_Y8_N8
\inst77|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst77|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst74|dffs\(5))) # (!\MODE~combout\(1) & ((\inst72|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst74|dffs\(5),
	datab => \MODE~combout\(1),
	datac => \inst72|dffs\(5),
	combout => \inst77|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: CLKCTRL_G1
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y10_N8
\SnoopDogg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SnoopDogg|Mux1~0_combout\ = (\ENABLE~combout\ & ((\inst157|auto_generated|aneb_result_wire\(0) & ((\MODE~combout\(1)) # (!\inst156|auto_generated|op_1~1_combout\))) # (!\inst157|auto_generated|aneb_result_wire\(0) & 
-- ((\inst156|auto_generated|op_1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~combout\,
	datab => \inst157|auto_generated|aneb_result_wire\(0),
	datac => \MODE~combout\(1),
	datad => \inst156|auto_generated|op_1~1_combout\,
	combout => \SnoopDogg|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y8_N4
\SnoopDogg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SnoopDogg|Mux0~0_combout\ = (\ENABLE~combout\ & \MODE~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~combout\,
	datac => \MODE~combout\(1),
	combout => \SnoopDogg|Mux0~0_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ADDR(0),
	combout => \ADDR~combout\(0));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ADDR(1),
	combout => \ADDR~combout\(1));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ADDR(3),
	combout => \ADDR~combout\(3));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ADDR(4),
	combout => \ADDR~combout\(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ADDR(5),
	combout => \ADDR~combout\(5));

-- Location: M4K_X11_Y10
\inst13|rom|srom|rom_block|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000800000000C00000000E00000000F00000000F80000000FC0000000FE0000000FF0000000FF8000000FFC000000FFE000000FFF000000FFF800000FFFC00000FFFE00000FFFF00000FFFF80000FFFFC0000FFFFE0000FFFFF0000FFFFF8000FFFFFC000FFFFFE000FFFFFF000FFFFFF800FFFFFFC00FFFFFFE00FFFFFFF00FFFFFFF80FFFFFFFC0FFFFFFFE0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF8FFFFFFFFCFFFFFFFFEFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "popen.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g07_popenable:inst13|lpm_rom:rom|altrom:srom|altsyncram:rom_block|altsyncram_q001:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 36,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLK~clkctrl_outclk\,
	portaaddr => \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst13|rom|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X10_Y8_N14
\inst16|$00000|auto_generated|result_node[26]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[26]~33_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux1~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(26)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\SnoopDogg|Mux1~0_combout\ & 
-- (\SnoopDogg|Mux0~0_combout\)))) # (!\MODE~combout\(0) & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux1~0_combout\,
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst16|$00000|auto_generated|result_node[26]~33_combout\);

-- Location: LCFF_X10_Y8_N9
\inst73|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst77|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst73|dffs\(5));

-- Location: LCCOMB_X10_Y6_N4
\inst64|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst61|dffs\(5)))) # (!\MODE~combout\(1) & (\inst52|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst61|dffs\(5),
	combout => \inst64|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y6_N8
\inst16|$00000|auto_generated|result_node[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[20]~28_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\MODE~combout\(0) & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(20)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\)))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(20),
	combout => \inst16|$00000|auto_generated|result_node[20]~28_combout\);

-- Location: LCFF_X10_Y6_N5
\DFF20|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst64|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF20|dffs\(5));

-- Location: LCCOMB_X12_Y6_N24
\inst65|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst62|dffs\(5)))) # (!\MODE~combout\(1) & (\DFF20|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \DFF20|dffs\(5),
	datad => \inst62|dffs\(5),
	combout => \inst65|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y6_N12
\inst16|$00000|auto_generated|result_node[21]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[21]~30_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(21)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(21),
	combout => \inst16|$00000|auto_generated|result_node[21]~30_combout\);

-- Location: LCFF_X12_Y6_N25
\inst61|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst65|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst61|dffs\(5));

-- Location: LCCOMB_X10_Y12_N16
\inst66|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst63|dffs\(5))) # (!\MODE~combout\(1) & ((\inst61|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst63|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst61|dffs\(5),
	combout => \inst66|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y12_N12
\inst16|$00000|auto_generated|result_node[22]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[22]~29_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(22)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0))))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \MODE~combout\(0),
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(22),
	combout => \inst16|$00000|auto_generated|result_node[22]~29_combout\);

-- Location: LCFF_X10_Y12_N17
\inst62|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst66|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|dffs\(5));

-- Location: LCCOMB_X12_Y6_N30
\inst67|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\Bubbles|dffs\(5))) # (!\MODE~combout\(1) & ((\inst62|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bubbles|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst62|dffs\(5),
	combout => \inst67|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y6_N22
\inst16|$00000|auto_generated|result_node[23]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[23]~31_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(23)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(23),
	combout => \inst16|$00000|auto_generated|result_node[23]~31_combout\);

-- Location: LCFF_X12_Y6_N31
\inst63|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst67|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|dffs\(5));

-- Location: LCCOMB_X10_Y12_N22
\inst75|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst75|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst72|dffs\(5)))) # (!\MODE~combout\(1) & (\inst63|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst63|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst72|dffs\(5),
	combout => \inst75|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y12_N30
\inst16|$00000|auto_generated|result_node[24]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[24]~32_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(24)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0))))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \MODE~combout\(0),
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(24),
	combout => \inst16|$00000|auto_generated|result_node[24]~32_combout\);

-- Location: LCFF_X10_Y12_N23
\Bubbles|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst75|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bubbles|dffs\(5));

-- Location: LCCOMB_X12_Y9_N8
\inst76|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst76|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst73|dffs\(5))) # (!\MODE~combout\(1) & ((\Bubbles|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst73|dffs\(5),
	datad => \Bubbles|dffs\(5),
	combout => \inst76|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y9_N4
\inst16|$00000|auto_generated|result_node[25]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[25]~34_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux1~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(25)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\SnoopDogg|Mux1~0_combout\ & 
-- (\SnoopDogg|Mux0~0_combout\)))) # (!\MODE~combout\(0) & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux1~0_combout\,
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(25),
	combout => \inst16|$00000|auto_generated|result_node[25]~34_combout\);

-- Location: LCFF_X12_Y9_N9
\inst72|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst76|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|dffs\(5));

-- Location: LCCOMB_X10_Y8_N18
\inst159|auto_generated|result_node[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~14_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst72|dffs\(5)))) # (!\ADDR~combout\(1) & (\inst74|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst74|dffs\(5),
	datab => \inst72|dffs\(5),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[5]~14_combout\);

-- Location: LCCOMB_X14_Y8_N24
\inst159|auto_generated|result_node[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~11_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst61|dffs\(5)))) # (!\ADDR~combout\(1) & (\inst63|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(1),
	datac => \inst63|dffs\(5),
	datad => \inst61|dffs\(5),
	combout => \inst159|auto_generated|result_node[5]~11_combout\);

-- Location: LCCOMB_X15_Y8_N8
\inst159|auto_generated|result_node[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~12_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[5]~10_combout\) # (\inst159|auto_generated|result_node[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[5]~10_combout\,
	datab => \ADDR~combout\(2),
	datad => \inst159|auto_generated|result_node[5]~11_combout\,
	combout => \inst159|auto_generated|result_node[5]~12_combout\);

-- Location: LCCOMB_X17_Y8_N26
\inst159|auto_generated|result_node[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~15_combout\ = (\inst159|auto_generated|result_node[5]~12_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[5]~13_combout\) # (\inst159|auto_generated|result_node[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[5]~13_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|result_node[5]~14_combout\,
	datad => \inst159|auto_generated|result_node[5]~12_combout\,
	combout => \inst159|auto_generated|result_node[5]~15_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst159|auto_generated|result_node[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~16_combout\ = (\ADDR~combout\(4) & ((\inst159|auto_generated|result_node[5]~9_combout\) # ((\inst159|auto_generated|result_node[5]~15_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[5]~9_combout\,
	datab => \inst159|auto_generated|result_node[5]~15_combout\,
	datac => \ADDR~combout\(4),
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|result_node[5]~16_combout\);

-- Location: LCCOMB_X17_Y7_N0
\inst159|auto_generated|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~35_combout\ = (\ADDR~combout\(5) & \ADDR~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(5),
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|_~35_combout\);

-- Location: LCCOMB_X12_Y7_N12
\inst42|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst42|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst39|dffs\(5)))) # (!\MODE~combout\(1) & (\inst30|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|dffs\(5),
	datab => \inst39|dffs\(5),
	datad => \MODE~combout\(1),
	combout => \inst42|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: M4K_X11_Y7
\inst13|rom|srom|rom_block|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000C000E000F000F800FC00FE00FF00FF80FFC0FFE0FFF0FFF8FFFCFFFEFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "popen.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g07_popenable:inst13|lpm_rom:rom|altrom:srom|altsyncram:rom_block|altsyncram_q001:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLK~clkctrl_outclk\,
	portaaddr => \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst13|rom|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y7_N14
\inst16|$00000|auto_generated|result_node[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[12]~39_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(12)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst16|$00000|auto_generated|result_node[12]~39_combout\);

-- Location: LCFF_X12_Y7_N13
\Ricky|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst42|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ricky|dffs\(5));

-- Location: LCCOMB_X14_Y7_N0
\inst43|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst43|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst40|dffs\(5)))) # (!\MODE~combout\(1) & (\Ricky|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ricky|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst40|dffs\(5),
	combout => \inst43|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X14_Y7_N12
\inst16|$00000|auto_generated|result_node[13]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[13]~36_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\MODE~combout\(0) & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(13)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\)))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst16|$00000|auto_generated|result_node[13]~36_combout\);

-- Location: LCFF_X14_Y7_N1
\inst39|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst43|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst39|dffs\(5));

-- Location: LCCOMB_X14_Y7_N30
\inst44|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst41|dffs\(5))) # (!\MODE~combout\(1) & ((\inst39|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst41|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst39|dffs\(5),
	combout => \inst44|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X14_Y7_N6
\inst16|$00000|auto_generated|result_node[14]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[14]~37_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\MODE~combout\(0) & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(14)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\)))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst16|$00000|auto_generated|result_node[14]~37_combout\);

-- Location: LCFF_X14_Y7_N31
\inst40|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst44|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst40|dffs\(5));

-- Location: LCCOMB_X13_Y7_N4
\inst45|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst45|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\Julian|dffs\(5))) # (!\MODE~combout\(1) & ((\inst40|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \Julian|dffs\(5),
	datad => \inst40|dffs\(5),
	combout => \inst45|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y7_N16
\inst16|$00000|auto_generated|result_node[15]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[15]~38_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(15)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst16|$00000|auto_generated|result_node[15]~38_combout\);

-- Location: LCFF_X13_Y7_N5
\inst41|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst45|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|dffs\(5));

-- Location: LCCOMB_X10_Y6_N10
\inst53|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst50|dffs\(5)))) # (!\MODE~combout\(1) & (\inst41|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst41|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst50|dffs\(5),
	combout => \inst53|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y6_N14
\inst16|$00000|auto_generated|result_node[16]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[16]~43_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(16)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0))))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \MODE~combout\(0),
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(16),
	combout => \inst16|$00000|auto_generated|result_node[16]~43_combout\);

-- Location: LCFF_X10_Y6_N11
\Julian|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst53|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Julian|dffs\(5));

-- Location: LCCOMB_X13_Y6_N18
\inst56|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\DFF20|dffs\(5)))) # (!\MODE~combout\(1) & (\inst51|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|dffs\(5),
	datab => \MODE~combout\(1),
	datac => \DFF20|dffs\(5),
	combout => \inst56|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y6_N14
\inst16|$00000|auto_generated|result_node[19]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[19]~42_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux1~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(19)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\SnoopDogg|Mux1~0_combout\ & 
-- ((\SnoopDogg|Mux0~0_combout\))))) # (!\MODE~combout\(0) & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux1~0_combout\,
	datac => \inst13|rom|srom|rom_block|auto_generated|q_a\(19),
	datad => \SnoopDogg|Mux0~0_combout\,
	combout => \inst16|$00000|auto_generated|result_node[19]~42_combout\);

-- Location: LCFF_X13_Y6_N19
\inst52|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst56|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst52|dffs\(5));

-- Location: LCCOMB_X13_Y6_N24
\inst55|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst55|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst52|dffs\(5))) # (!\MODE~combout\(1) & ((\inst50|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst52|dffs\(5),
	datad => \inst50|dffs\(5),
	combout => \inst55|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y6_N4
\inst16|$00000|auto_generated|result_node[18]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[18]~41_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(18)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(18),
	combout => \inst16|$00000|auto_generated|result_node[18]~41_combout\);

-- Location: LCFF_X13_Y6_N25
\inst51|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst55|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst51|dffs\(5));

-- Location: LCCOMB_X13_Y7_N6
\inst54|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst51|dffs\(5)))) # (!\MODE~combout\(1) & (\Julian|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \Julian|dffs\(5),
	datad => \inst51|dffs\(5),
	combout => \inst54|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y7_N20
\inst16|$00000|auto_generated|result_node[17]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[17]~40_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(17)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(17),
	combout => \inst16|$00000|auto_generated|result_node[17]~40_combout\);

-- Location: LCFF_X13_Y7_N7
\inst50|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst54|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst50|dffs\(5));

-- Location: LCCOMB_X10_Y6_N0
\inst159|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~26_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst51|dffs\(5)))) # (!\ADDR~combout\(0) & (\inst52|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|dffs\(5),
	datab => \ADDR~combout\(1),
	datac => \inst51|dffs\(5),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~26_combout\);

-- Location: LCCOMB_X10_Y6_N26
\inst159|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~27_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~26_combout\ & (\Julian|dffs\(5))) # (!\inst159|auto_generated|_~26_combout\ & ((\inst50|dffs\(5)))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Julian|dffs\(5),
	datab => \inst50|dffs\(5),
	datac => \ADDR~combout\(1),
	datad => \inst159|auto_generated|_~26_combout\,
	combout => \inst159|auto_generated|_~27_combout\);

-- Location: LCCOMB_X14_Y6_N12
\inst159|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~16_combout\ = (!\ADDR~combout\(2) & !\ADDR~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datac => \ADDR~combout\(3),
	combout => \inst159|auto_generated|_~16_combout\);

-- Location: LCCOMB_X14_Y8_N18
\inst159|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~28_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst159|auto_generated|_~27_combout\ & \inst159|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(5),
	datab => \inst159|auto_generated|_~27_combout\,
	datac => \ADDR~combout\(4),
	datad => \inst159|auto_generated|_~16_combout\,
	combout => \inst159|auto_generated|_~28_combout\);

-- Location: LCCOMB_X17_Y7_N8
\inst159|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~23_combout\ = (\ADDR~combout\(0) & (((\inst40|dffs\(5)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst41|dffs\(5) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst41|dffs\(5),
	datac => \inst40|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~23_combout\);

-- Location: LCCOMB_X17_Y7_N22
\inst159|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~24_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~23_combout\ & (\Ricky|dffs\(5))) # (!\inst159|auto_generated|_~23_combout\ & ((\inst39|dffs\(5)))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \Ricky|dffs\(5),
	datac => \inst159|auto_generated|_~23_combout\,
	datad => \inst39|dffs\(5),
	combout => \inst159|auto_generated|_~24_combout\);

-- Location: LCCOMB_X17_Y8_N10
\inst159|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~25_combout\ = (!\ADDR~combout\(3) & (\ADDR~combout\(5) & (\inst159|auto_generated|_~24_combout\ & \ADDR~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(5),
	datac => \inst159|auto_generated|_~24_combout\,
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|_~25_combout\);

-- Location: LCCOMB_X17_Y8_N0
\inst159|auto_generated|_~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~36_combout\ = (\inst159|auto_generated|_~28_combout\) # ((\inst159|auto_generated|_~25_combout\) # ((\inst159|auto_generated|_~34_combout\ & \inst159|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~34_combout\,
	datab => \inst159|auto_generated|_~35_combout\,
	datac => \inst159|auto_generated|_~28_combout\,
	datad => \inst159|auto_generated|_~25_combout\,
	combout => \inst159|auto_generated|_~36_combout\);

-- Location: LCCOMB_X10_Y10_N24
\inst108|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst108|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & ((\inst101|dffs\(5)))) # (!\MODE~combout\(1) & (\Donna|dffs\(5)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Donna|dffs\(5),
	datab => \MODE~combout\(0),
	datac => \inst101|dffs\(5),
	datad => \MODE~combout\(1),
	combout => \inst108|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y10_N22
\inst16|$00000|auto_generated|result_node[35]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[35]~26_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(35)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & ((\SnoopDogg|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \inst13|rom|srom|rom_block|auto_generated|q_a\(35),
	datad => \SnoopDogg|Mux1~0_combout\,
	combout => \inst16|$00000|auto_generated|result_node[35]~26_combout\);

-- Location: LCFF_X10_Y10_N25
\inst100|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst108|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst100|dffs\(5));

-- Location: LCCOMB_X10_Y10_N14
\inst109|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst109|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst102|dffs\(5))) # (!\MODE~combout\(1) & ((\inst100|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|dffs\(5),
	datab => \MODE~combout\(0),
	datac => \inst100|dffs\(5),
	datad => \MODE~combout\(1),
	combout => \inst109|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y10_N26
\inst16|$00000|auto_generated|result_node[36]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[36]~8_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\MODE~combout\(0) & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(36)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\)))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(36),
	combout => \inst16|$00000|auto_generated|result_node[36]~8_combout\);

-- Location: LCFF_X10_Y10_N15
\inst101|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst109|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst101|dffs\(5));

-- Location: LCCOMB_X10_Y9_N8
\inst110|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst110|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & ((\Cyrus|dffs\(5)))) # (!\MODE~combout\(1) & (\inst101|dffs\(5)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst101|dffs\(5),
	datad => \Cyrus|dffs\(5),
	combout => \inst110|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y9_N28
\inst16|$00000|auto_generated|result_node[37]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[37]~12_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(37)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(37),
	combout => \inst16|$00000|auto_generated|result_node[37]~12_combout\);

-- Location: LCFF_X10_Y9_N9
\inst102|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst110|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst102|dffs\(5));

-- Location: LCCOMB_X12_Y10_N20
\inst118|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst118|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst111|dffs\(5))) # (!\MODE~combout\(1) & ((\inst102|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst111|dffs\(5),
	datab => \inst102|dffs\(5),
	datac => \MODE~combout\(0),
	datad => \MODE~combout\(1),
	combout => \inst118|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y10_N12
\inst16|$00000|auto_generated|result_node[38]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[38]~9_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(38)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) & 
-- (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(38),
	combout => \inst16|$00000|auto_generated|result_node[38]~9_combout\);

-- Location: LCFF_X12_Y10_N21
\Cyrus|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst118|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Cyrus|dffs\(5));

-- Location: LCCOMB_X10_Y9_N10
\inst159|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~2_combout\ = (\ADDR~combout\(2) & ((\ADDR~combout\(1) & (\inst101|dffs\(5))) # (!\ADDR~combout\(1) & ((\Cyrus|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(2),
	datac => \inst101|dffs\(5),
	datad => \Cyrus|dffs\(5),
	combout => \inst159|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X12_Y10_N10
\inst121|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst121|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst122|dffs\(5))) # (!\MODE~combout\(1) & ((\DFF40|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|dffs\(5),
	datab => \DFF40|dffs\(5),
	datac => \MODE~combout\(0),
	datad => \MODE~combout\(1),
	combout => \inst121|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y10_N22
\inst16|$00000|auto_generated|result_node[41]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[41]~14_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(41)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(41),
	combout => \inst16|$00000|auto_generated|result_node[41]~14_combout\);

-- Location: LCFF_X12_Y10_N11
\inst113|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst121|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst113|dffs\(5));

-- Location: LCCOMB_X10_Y9_N30
\inst119|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst119|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & ((\DFF40|dffs\(5)))) # (!\MODE~combout\(1) & (\Cyrus|dffs\(5)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cyrus|dffs\(5),
	datab => \MODE~combout\(0),
	datac => \DFF40|dffs\(5),
	datad => \MODE~combout\(1),
	combout => \inst119|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y9_N14
\inst16|$00000|auto_generated|result_node[39]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[39]~13_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(39)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(39),
	combout => \inst16|$00000|auto_generated|result_node[39]~13_combout\);

-- Location: LCFF_X10_Y9_N31
\inst111|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst119|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst111|dffs\(5));

-- Location: LCCOMB_X8_Y10_N18
\inst120|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst120|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst113|dffs\(5))) # (!\MODE~combout\(1) & ((\inst111|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst113|dffs\(5),
	datad => \inst111|dffs\(5),
	combout => \inst120|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X8_Y10_N0
\inst16|$00000|auto_generated|result_node[40]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[40]~10_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(40)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0))))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \MODE~combout\(0),
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(40),
	combout => \inst16|$00000|auto_generated|result_node[40]~10_combout\);

-- Location: LCFF_X8_Y10_N19
\DFF40|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst120|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF40|dffs\(5));

-- Location: LCCOMB_X9_Y10_N8
\inst127|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst127|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst128|dffs\(5))) # (!\MODE~combout\(1) & ((\inst122|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst128|dffs\(5),
	datab => \MODE~combout\(1),
	datac => \MODE~combout\(0),
	datad => \inst122|dffs\(5),
	combout => \inst127|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y10_N20
\inst16|$00000|auto_generated|result_node[43]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[43]~15_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\MODE~combout\(0) & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(43)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\)))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(43),
	combout => \inst16|$00000|auto_generated|result_node[43]~15_combout\);

-- Location: LCFF_X9_Y10_N9
\inst123|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst127|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst123|dffs\(5));

-- Location: LCCOMB_X8_Y10_N24
\inst126|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst126|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & ((\inst123|dffs\(5)))) # (!\MODE~combout\(1) & (\inst113|dffs\(5)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst113|dffs\(5),
	datac => \inst123|dffs\(5),
	datad => \MODE~combout\(0),
	combout => \inst126|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X8_Y10_N6
\inst16|$00000|auto_generated|result_node[42]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[42]~11_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(42)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0))))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \MODE~combout\(0),
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(42),
	combout => \inst16|$00000|auto_generated|result_node[42]~11_combout\);

-- Location: LCFF_X8_Y10_N25
\inst122|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst126|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst122|dffs\(5));

-- Location: LCCOMB_X9_Y9_N8
\inst159|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~3_combout\ = (!\ADDR~combout\(2) & ((\ADDR~combout\(1) & (\DFF40|dffs\(5))) # (!\ADDR~combout\(1) & ((\inst122|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \DFF40|dffs\(5),
	datac => \inst122|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X9_Y9_N22
\inst159|auto_generated|result_node[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~4_combout\ = (\ADDR~combout\(0) & ((\inst159|auto_generated|result_node[5]~2_combout\) # (\inst159|auto_generated|result_node[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst159|auto_generated|result_node[5]~2_combout\,
	datac => \ADDR~combout\(0),
	datad => \inst159|auto_generated|result_node[5]~3_combout\,
	combout => \inst159|auto_generated|result_node[5]~4_combout\);

-- Location: LCCOMB_X8_Y10_N26
\inst159|auto_generated|result_node[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~6_combout\ = (!\ADDR~combout\(2) & ((\ADDR~combout\(1) & ((\inst113|dffs\(5)))) # (!\ADDR~combout\(1) & (\inst123|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst123|dffs\(5),
	datac => \inst113|dffs\(5),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|result_node[5]~6_combout\);

-- Location: LCCOMB_X9_Y9_N30
\inst159|auto_generated|result_node[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~7_combout\ = (\inst159|auto_generated|result_node[5]~4_combout\) # ((!\ADDR~combout\(0) & ((\inst159|auto_generated|result_node[5]~5_combout\) # (\inst159|auto_generated|result_node[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[5]~5_combout\,
	datab => \inst159|auto_generated|result_node[5]~4_combout\,
	datac => \ADDR~combout\(0),
	datad => \inst159|auto_generated|result_node[5]~6_combout\,
	combout => \inst159|auto_generated|result_node[5]~7_combout\);

-- Location: LCCOMB_X14_Y11_N8
\inst136|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst136|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst129|dffs\(5))) # (!\MODE~combout\(1) & ((\inst123|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst129|dffs\(5),
	datab => \inst123|dffs\(5),
	datac => \MODE~combout\(0),
	datad => \MODE~combout\(1),
	combout => \inst136|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X14_Y11_N22
\inst16|$00000|auto_generated|result_node[44]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[44]~3_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(44)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(44),
	combout => \inst16|$00000|auto_generated|result_node[44]~3_combout\);

-- Location: LCFF_X14_Y11_N9
\inst128|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst136|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst128|dffs\(5));

-- Location: LCCOMB_X13_Y9_N0
\inst137|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst137|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & ((\inst130|dffs\(5)))) # (!\MODE~combout\(1) & (\inst128|dffs\(5)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst128|dffs\(5),
	datad => \inst130|dffs\(5),
	combout => \inst137|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y9_N14
\inst16|$00000|auto_generated|result_node[45]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[45]~0_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux1~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(45)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\SnoopDogg|Mux1~0_combout\ & 
-- (\SnoopDogg|Mux0~0_combout\)))) # (!\MODE~combout\(0) & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux1~0_combout\,
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(45),
	combout => \inst16|$00000|auto_generated|result_node[45]~0_combout\);

-- Location: LCFF_X13_Y9_N1
\inst129|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst137|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst129|dffs\(5));

-- Location: LCCOMB_X13_Y11_N12
\inst138|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst138|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst131|dffs\(5))) # (!\MODE~combout\(1) & ((\inst129|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst131|dffs\(5),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst129|dffs\(5),
	combout => \inst138|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y11_N30
\inst16|$00000|auto_generated|result_node[46]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[46]~1_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(46)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(46),
	combout => \inst16|$00000|auto_generated|result_node[46]~1_combout\);

-- Location: LCFF_X13_Y11_N13
\inst130|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst138|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst130|dffs\(5));

-- Location: LCCOMB_X10_Y11_N4
\inst151|$00000|auto_generated|result_node[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst151|$00000|auto_generated|result_node\(5) = ((!\MODE~combout\(1) & \inst142|dffs\(5))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datad => \inst142|dffs\(5),
	combout => \inst151|$00000|auto_generated|result_node\(5));

-- Location: LCCOMB_X10_Y11_N24
\inst16|$00000|auto_generated|result_node[51]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[51]~6_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(51)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) & 
-- (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(51),
	combout => \inst16|$00000|auto_generated|result_node[51]~6_combout\);

-- Location: LCFF_X10_Y11_N5
\inst143|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst151|$00000|auto_generated|result_node\(5),
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst143|dffs\(5));

-- Location: LCCOMB_X10_Y11_N10
\inst150|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst150|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst143|dffs\(5))) # (!\MODE~combout\(1) & ((\inst141|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst143|dffs\(5),
	datac => \MODE~combout\(0),
	datad => \inst141|dffs\(5),
	combout => \inst150|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X10_Y10_N0
\inst16|$00000|auto_generated|result_node[50]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[50]~5_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\MODE~combout\(0) & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(50)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\)))) 
-- # (!\SnoopDogg|Mux1~0_combout\ & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(50),
	combout => \inst16|$00000|auto_generated|result_node[50]~5_combout\);

-- Location: LCFF_X10_Y11_N11
\inst142|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst150|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst142|dffs\(5));

-- Location: LCCOMB_X12_Y11_N18
\inst149|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst149|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst142|dffs\(5))) # (!\MODE~combout\(1) & ((\inst140|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst142|dffs\(5),
	datac => \MODE~combout\(0),
	datad => \inst140|dffs\(5),
	combout => \inst149|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y11_N10
\inst16|$00000|auto_generated|result_node[49]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[49]~4_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(49)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(49),
	combout => \inst16|$00000|auto_generated|result_node[49]~4_combout\);

-- Location: LCFF_X12_Y11_N19
\inst141|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst149|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst141|dffs\(5));

-- Location: LCCOMB_X14_Y10_N12
\inst148|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst148|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & (\inst141|dffs\(5))) # (!\MODE~combout\(1) & ((\inst131|dffs\(5))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst141|dffs\(5),
	datad => \inst131|dffs\(5),
	combout => \inst148|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst16|$00000|auto_generated|result_node[48]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[48]~7_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(48)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) & 
-- (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(48),
	combout => \inst16|$00000|auto_generated|result_node[48]~7_combout\);

-- Location: LCFF_X14_Y10_N13
\inst140|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst148|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst140|dffs\(5));

-- Location: LCCOMB_X12_Y11_N12
\inst139|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst139|$00000|auto_generated|result_node[5]~0_combout\ = ((\MODE~combout\(1) & ((\inst140|dffs\(5)))) # (!\MODE~combout\(1) & (\inst130|dffs\(5)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst130|dffs\(5),
	datac => \MODE~combout\(0),
	datad => \inst140|dffs\(5),
	combout => \inst139|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X12_Y11_N0
\inst16|$00000|auto_generated|result_node[47]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[47]~2_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(47)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(47),
	combout => \inst16|$00000|auto_generated|result_node[47]~2_combout\);

-- Location: LCFF_X12_Y11_N13
\inst131|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst139|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst131|dffs\(5));

-- Location: LCCOMB_X13_Y11_N14
\inst159|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~12_combout\ = (\ADDR~combout\(0) & ((\inst130|dffs\(5)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((!\ADDR~combout\(1) & \inst131|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst130|dffs\(5),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst131|dffs\(5),
	combout => \inst159|auto_generated|_~12_combout\);

-- Location: LCCOMB_X13_Y11_N4
\inst159|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~13_combout\ = (\inst159|auto_generated|_~12_combout\ & ((\inst128|dffs\(5)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~12_combout\ & (((\ADDR~combout\(1) & \inst129|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst128|dffs\(5),
	datab => \inst159|auto_generated|_~12_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst129|dffs\(5),
	combout => \inst159|auto_generated|_~13_combout\);

-- Location: LCCOMB_X10_Y11_N26
\inst159|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~14_combout\ = (\ADDR~combout\(0) & ((\inst142|dffs\(5)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst143|dffs\(5) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142|dffs\(5),
	datab => \ADDR~combout\(0),
	datac => \inst143|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~14_combout\);

-- Location: LCCOMB_X10_Y11_N8
\inst159|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~15_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~14_combout\ & (\inst140|dffs\(5))) # (!\inst159|auto_generated|_~14_combout\ & ((\inst141|dffs\(5)))))) # (!\ADDR~combout\(1) & 
-- (\inst159|auto_generated|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst159|auto_generated|_~14_combout\,
	datac => \inst140|dffs\(5),
	datad => \inst141|dffs\(5),
	combout => \inst159|auto_generated|_~15_combout\);

-- Location: LCCOMB_X9_Y11_N8
\inst159|auto_generated|result_node[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~1_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst159|auto_generated|_~13_combout\)) # (!\ADDR~combout\(2) & ((\inst159|auto_generated|_~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst159|auto_generated|_~13_combout\,
	datac => \inst159|auto_generated|_~15_combout\,
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|result_node[5]~1_combout\);

-- Location: LCCOMB_X9_Y9_N28
\inst159|auto_generated|result_node[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~8_combout\ = (\inst159|auto_generated|result_node[5]~0_combout\ & ((\inst159|auto_generated|result_node[5]~1_combout\) # ((\inst159|auto_generated|result_node[5]~7_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[5]~0_combout\,
	datab => \inst159|auto_generated|result_node[5]~7_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst159|auto_generated|result_node[5]~1_combout\,
	combout => \inst159|auto_generated|result_node[5]~8_combout\);

-- Location: LCCOMB_X14_Y9_N16
\inst7|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & (\inst4|dffs\(5))) # (!\MODE~combout\(1) & ((\inst2|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst2|dffs\(5),
	combout => \inst7|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X14_Y9_N24
\inst16|$00000|auto_generated|result_node[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[2]~17_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(2)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) & 
-- (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(2),
	combout => \inst16|$00000|auto_generated|result_node[2]~17_combout\);

-- Location: LCFF_X14_Y9_N17
\inst3|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst7|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dffs\(5));

-- Location: LCCOMB_X15_Y9_N4
\inst6|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|$00000|auto_generated|result_node[5]~0_combout\ = (\MODE~combout\(1) & ((\inst3|dffs\(5)))) # (!\MODE~combout\(1) & (\Corey|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corey|dffs\(5),
	datac => \MODE~combout\(1),
	datad => \inst3|dffs\(5),
	combout => \inst6|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X15_Y9_N0
\inst16|$00000|auto_generated|result_node[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[1]~16_combout\ = (\SnoopDogg|Mux1~0_combout\ & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(1)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0))))) # 
-- (!\SnoopDogg|Mux1~0_combout\ & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux1~0_combout\,
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \MODE~combout\(0),
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(1),
	combout => \inst16|$00000|auto_generated|result_node[1]~16_combout\);

-- Location: LCFF_X15_Y9_N5
\inst2|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst6|$00000|auto_generated|result_node[5]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|dffs\(5));

-- Location: LCCOMB_X15_Y9_N10
\inst159|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~17_combout\ = (\ADDR~combout\(0) & (((\inst3|dffs\(5)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst4|dffs\(5) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(5),
	datab => \inst3|dffs\(5),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~17_combout\);

-- Location: LCCOMB_X15_Y9_N16
\inst159|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~18_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~17_combout\ & (\Corey|dffs\(5))) # (!\inst159|auto_generated|_~17_combout\ & ((\inst2|dffs\(5)))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corey|dffs\(5),
	datab => \ADDR~combout\(1),
	datac => \inst2|dffs\(5),
	datad => \inst159|auto_generated|_~17_combout\,
	combout => \inst159|auto_generated|_~18_combout\);

-- Location: LCCOMB_X17_Y8_N28
\inst159|auto_generated|_~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~152_combout\ = ((!\ADDR~combout\(2) & (\inst159|auto_generated|_~18_combout\ & !\ADDR~combout\(3)))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~18_combout\,
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|_~152_combout\);

-- Location: LCCOMB_X17_Y8_N2
\inst159|auto_generated|result_node[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~17_combout\ = (\inst159|auto_generated|result_node[5]~8_combout\) # ((\inst159|auto_generated|_~36_combout\ & ((\inst159|auto_generated|_~152_combout\))) # (!\inst159|auto_generated|_~36_combout\ & 
-- (\inst159|auto_generated|result_node[5]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[5]~16_combout\,
	datab => \inst159|auto_generated|_~36_combout\,
	datac => \inst159|auto_generated|result_node[5]~8_combout\,
	datad => \inst159|auto_generated|_~152_combout\,
	combout => \inst159|auto_generated|result_node[5]~17_combout\);

-- Location: LCCOMB_X13_Y6_N10
\inst59|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst59|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & (\inst52|dffs\(4))) # (!\MODE~combout\(1) & ((\inst50|dffs\(4))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|dffs\(4),
	datab => \MODE~combout\(1),
	datac => \inst50|dffs\(4),
	datad => \MODE~combout\(0),
	combout => \inst59|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X13_Y6_N11
\inst51|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst59|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst51|dffs\(4));

-- Location: LCCOMB_X13_Y7_N12
\inst58|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst58|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & ((\inst51|dffs\(4)))) # (!\MODE~combout\(1) & (\Julian|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Julian|dffs\(4),
	datac => \MODE~combout\(0),
	datad => \inst51|dffs\(4),
	combout => \inst58|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X13_Y7_N13
\inst50|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst58|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst50|dffs\(4));

-- Location: LCCOMB_X10_Y6_N2
\inst57|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst57|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & ((\inst50|dffs\(4)))) # (!\MODE~combout\(1) & (\inst41|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst41|dffs\(4),
	datac => \MODE~combout\(0),
	datad => \inst50|dffs\(4),
	combout => \inst57|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X10_Y6_N3
\Julian|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst57|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Julian|dffs\(4));

-- Location: LCCOMB_X13_Y7_N28
\inst45|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst45|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & (\Julian|dffs\(4))) # (!\MODE~combout\(1) & ((\inst40|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Julian|dffs\(4),
	datac => \inst40|dffs\(4),
	combout => \inst45|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X13_Y7_N29
\inst41|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst45|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|dffs\(4));

-- Location: LCCOMB_X14_Y7_N26
\inst44|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst44|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\inst41|dffs\(4)))) # (!\MODE~combout\(1) & (\inst39|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|dffs\(4),
	datab => \inst41|dffs\(4),
	datac => \MODE~combout\(1),
	combout => \inst44|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X14_Y7_N27
\inst40|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst44|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst40|dffs\(4));

-- Location: LCCOMB_X14_Y7_N20
\inst43|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst43|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\inst40|dffs\(4)))) # (!\MODE~combout\(1) & (\Ricky|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ricky|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst40|dffs\(4),
	combout => \inst43|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X14_Y7_N21
\inst39|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst43|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst39|dffs\(4));

-- Location: LCCOMB_X12_Y7_N28
\inst42|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst42|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\inst39|dffs\(4)))) # (!\MODE~combout\(1) & (\inst30|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|dffs\(4),
	datab => \inst39|dffs\(4),
	datad => \MODE~combout\(1),
	combout => \inst42|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X12_Y7_N29
\Ricky|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst42|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ricky|dffs\(4));

-- Location: LCCOMB_X12_Y7_N10
\inst34|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\Ricky|dffs\(4)))) # (!\MODE~combout\(1) & (\DFF10|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \DFF10|dffs\(4),
	datad => \Ricky|dffs\(4),
	combout => \inst34|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X12_Y7_N2
\inst16|$00000|auto_generated|result_node[11]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[11]~49_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(11)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst16|$00000|auto_generated|result_node[11]~49_combout\);

-- Location: LCFF_X12_Y7_N11
\inst30|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst34|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst30|dffs\(4));

-- Location: LCCOMB_X9_Y7_N2
\inst33|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & (\inst30|dffs\(4))) # (!\MODE~combout\(1) & ((\inst28|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst30|dffs\(4),
	datad => \inst28|dffs\(4),
	combout => \inst33|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X10_Y7_N26
\inst16|$00000|auto_generated|result_node[10]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[10]~48_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(10)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- ((\SnoopDogg|Mux1~0_combout\))))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \inst13|rom|srom|rom_block|auto_generated|q_a\(10),
	datad => \SnoopDogg|Mux1~0_combout\,
	combout => \inst16|$00000|auto_generated|result_node[10]~48_combout\);

-- Location: LCFF_X9_Y7_N3
\DFF10|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst33|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF10|dffs\(4));

-- Location: LCCOMB_X10_Y7_N2
\inst32|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\DFF10|dffs\(4)))) # (!\MODE~combout\(1) & (\RANDY|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RANDY|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \DFF10|dffs\(4),
	combout => \inst32|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X10_Y7_N6
\inst16|$00000|auto_generated|result_node[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[9]~51_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(9)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst16|$00000|auto_generated|result_node[9]~51_combout\);

-- Location: LCFF_X10_Y7_N3
\inst28|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst32|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|dffs\(4));

-- Location: LCCOMB_X9_Y7_N12
\inst31|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\inst28|dffs\(4)))) # (!\MODE~combout\(1) & (\inst19|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst19|dffs\(4),
	datad => \inst28|dffs\(4),
	combout => \inst31|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X10_Y7_N4
\inst16|$00000|auto_generated|result_node[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[8]~50_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(8)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst16|$00000|auto_generated|result_node[8]~50_combout\);

-- Location: LCFF_X9_Y7_N13
\RANDY|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst31|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RANDY|dffs\(4));

-- Location: LCCOMB_X10_Y7_N28
\inst23|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\RANDY|dffs\(4)))) # (!\MODE~combout\(1) & (\inst18|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst18|dffs\(4),
	datad => \RANDY|dffs\(4),
	combout => \inst23|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X10_Y7_N20
\inst16|$00000|auto_generated|result_node[7]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[7]~45_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(7)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst16|$00000|auto_generated|result_node[7]~45_combout\);

-- Location: LCFF_X10_Y7_N29
\inst19|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst23|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|dffs\(4));

-- Location: LCCOMB_X15_Y7_N10
\inst22|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & (\inst19|dffs\(4))) # (!\MODE~combout\(1) & ((\inst17|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst19|dffs\(4),
	datad => \inst17|dffs\(4),
	combout => \inst22|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y7_N24
\inst16|$00000|auto_generated|result_node[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[6]~44_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux1~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(6)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\SnoopDogg|Mux1~0_combout\ & 
-- (\SnoopDogg|Mux0~0_combout\)))) # (!\MODE~combout\(0) & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux1~0_combout\,
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(6),
	combout => \inst16|$00000|auto_generated|result_node[6]~44_combout\);

-- Location: LCFF_X15_Y7_N11
\inst18|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst22|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|dffs\(4));

-- Location: LCCOMB_X12_Y8_N26
\inst21|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\inst18|dffs\(4)))) # (!\MODE~combout\(1) & (\Trevor|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \Trevor|dffs\(4),
	datad => \inst18|dffs\(4),
	combout => \inst21|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X12_Y8_N2
\inst16|$00000|auto_generated|result_node[5]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[5]~47_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux1~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(5)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\SnoopDogg|Mux1~0_combout\ & 
-- (\SnoopDogg|Mux0~0_combout\)))) # (!\MODE~combout\(0) & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux1~0_combout\,
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(5),
	combout => \inst16|$00000|auto_generated|result_node[5]~47_combout\);

-- Location: LCFF_X12_Y8_N27
\inst17|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst21|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|dffs\(4));

-- Location: LCCOMB_X15_Y7_N0
\inst20|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\inst17|dffs\(4)))) # (!\MODE~combout\(1) & (\inst4|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst4|dffs\(4),
	datad => \inst17|dffs\(4),
	combout => \inst20|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y7_N14
\inst16|$00000|auto_generated|result_node[4]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[4]~46_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux1~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(4)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\SnoopDogg|Mux1~0_combout\ & 
-- (\SnoopDogg|Mux0~0_combout\)))) # (!\MODE~combout\(0) & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux1~0_combout\,
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(4),
	combout => \inst16|$00000|auto_generated|result_node[4]~46_combout\);

-- Location: LCFF_X15_Y7_N1
\Trevor|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst20|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Trevor|dffs\(4));

-- Location: LCCOMB_X14_Y9_N18
\inst5|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & ((\inst2|dffs\(4)))) # (!\MODE~combout\(1) & (\DATA~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA~combout\(4),
	datac => \MODE~combout\(1),
	datad => \inst2|dffs\(4),
	combout => \inst5|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y9_N6
\inst16|$00000|auto_generated|result_node[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[0]~19_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(0)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) & 
-- (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(0),
	combout => \inst16|$00000|auto_generated|result_node[0]~19_combout\);

-- Location: LCFF_X14_Y9_N19
\Corey|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst5|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corey|dffs\(4));

-- Location: LCCOMB_X15_Y9_N6
\inst6|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & (\inst3|dffs\(4))) # (!\MODE~combout\(1) & ((\Corey|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \Corey|dffs\(4),
	combout => \inst6|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X15_Y9_N7
\inst2|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst6|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|dffs\(4));

-- Location: LCCOMB_X14_Y9_N20
\inst7|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & (\inst4|dffs\(4))) # (!\MODE~combout\(1) & ((\inst2|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst2|dffs\(4),
	combout => \inst7|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X14_Y9_N21
\inst3|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst7|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dffs\(4));

-- Location: LCCOMB_X12_Y8_N8
\inst8|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|$00000|auto_generated|result_node[4]~1_combout\ = (\MODE~combout\(1) & (\Trevor|dffs\(4))) # (!\MODE~combout\(1) & ((\inst3|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \Trevor|dffs\(4),
	datad => \inst3|dffs\(4),
	combout => \inst8|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X12_Y8_N12
\inst16|$00000|auto_generated|result_node[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[3]~18_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux1~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(3)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\SnoopDogg|Mux1~0_combout\ & 
-- (\SnoopDogg|Mux0~0_combout\)))) # (!\MODE~combout\(0) & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux1~0_combout\,
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(3),
	combout => \inst16|$00000|auto_generated|result_node[3]~18_combout\);

-- Location: LCFF_X12_Y8_N9
\inst4|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst8|$00000|auto_generated|result_node[4]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(4));

-- Location: LCCOMB_X15_Y9_N14
\inst159|auto_generated|_~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~41_combout\ = (\ADDR~combout\(0) & ((\inst3|dffs\(4)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst4|dffs\(4) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dffs\(4),
	datab => \ADDR~combout\(0),
	datac => \inst4|dffs\(4),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~41_combout\);

-- Location: LCCOMB_X15_Y9_N12
\inst159|auto_generated|_~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~42_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~41_combout\ & ((\Corey|dffs\(4)))) # (!\inst159|auto_generated|_~41_combout\ & (\inst2|dffs\(4))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \inst159|auto_generated|_~41_combout\,
	datad => \Corey|dffs\(4),
	combout => \inst159|auto_generated|_~42_combout\);

-- Location: LCCOMB_X17_Y9_N24
\inst159|auto_generated|_~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~153_combout\ = ((\inst159|auto_generated|_~42_combout\ & (!\ADDR~combout\(3) & !\ADDR~combout\(2)))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst159|auto_generated|_~42_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|_~153_combout\);

-- Location: LCCOMB_X13_Y11_N28
\inst134|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst134|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\inst131|dffs\(4))) # (!\MODE~combout\(1) & ((\inst129|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst131|dffs\(4),
	datac => \inst129|dffs\(4),
	datad => \MODE~combout\(1),
	combout => \inst134|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X13_Y11_N29
\inst130|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst134|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst130|dffs\(4));

-- Location: LCCOMB_X13_Y9_N24
\inst133|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst133|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\inst130|dffs\(4))) # (!\MODE~combout\(1) & ((\inst128|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst130|dffs\(4),
	datad => \inst128|dffs\(4),
	combout => \inst133|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X13_Y9_N25
\inst129|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst133|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst129|dffs\(4));

-- Location: LCCOMB_X14_Y11_N16
\inst132|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst132|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\inst129|dffs\(4))) # (!\MODE~combout\(1) & ((\inst123|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst129|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst123|dffs\(4),
	combout => \inst132|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X14_Y11_N17
\inst128|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst132|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst128|dffs\(4));

-- Location: LCCOMB_X9_Y10_N12
\inst125|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst125|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & ((\inst128|dffs\(4)))) # (!\MODE~combout\(1) & (\inst122|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst128|dffs\(4),
	combout => \inst125|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X9_Y10_N13
\inst123|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst125|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst123|dffs\(4));

-- Location: LCCOMB_X8_Y10_N20
\inst124|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst124|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\inst123|dffs\(4))) # (!\MODE~combout\(1) & ((\inst113|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst123|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst113|dffs\(4),
	combout => \inst124|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X8_Y10_N21
\inst122|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst124|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst122|dffs\(4));

-- Location: LCCOMB_X12_Y10_N6
\inst117|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst117|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\inst122|dffs\(4))) # (!\MODE~combout\(1) & ((\DFF40|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst122|dffs\(4),
	datad => \DFF40|dffs\(4),
	combout => \inst117|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X12_Y10_N7
\inst113|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst117|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst113|dffs\(4));

-- Location: LCCOMB_X8_Y10_N30
\inst116|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst116|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & ((\inst113|dffs\(4)))) # (!\MODE~combout\(1) & (\inst111|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst111|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst113|dffs\(4),
	combout => \inst116|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X8_Y10_N31
\DFF40|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst116|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF40|dffs\(4));

-- Location: LCCOMB_X10_Y9_N20
\inst115|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst115|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\DFF40|dffs\(4))) # (!\MODE~combout\(1) & ((\Cyrus|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \DFF40|dffs\(4),
	datad => \Cyrus|dffs\(4),
	combout => \inst115|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X10_Y9_N21
\inst111|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst115|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst111|dffs\(4));

-- Location: LCCOMB_X12_Y10_N4
\inst114|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst114|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & ((\inst111|dffs\(4)))) # (!\MODE~combout\(1) & (\inst102|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst102|dffs\(4),
	datad => \inst111|dffs\(4),
	combout => \inst114|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X12_Y10_N5
\Cyrus|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst114|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Cyrus|dffs\(4));

-- Location: LCCOMB_X10_Y9_N26
\inst106|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst106|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & ((\Cyrus|dffs\(4)))) # (!\MODE~combout\(1) & (\inst101|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst101|dffs\(4),
	datad => \Cyrus|dffs\(4),
	combout => \inst106|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X10_Y9_N27
\inst102|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst106|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst102|dffs\(4));

-- Location: LCCOMB_X10_Y10_N4
\inst105|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst105|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\inst102|dffs\(4))) # (!\MODE~combout\(1) & ((\inst100|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst102|dffs\(4),
	datad => \inst100|dffs\(4),
	combout => \inst105|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X10_Y10_N5
\inst101|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst105|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst101|dffs\(4));

-- Location: LCCOMB_X10_Y10_N6
\inst104|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst104|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\inst101|dffs\(4))) # (!\MODE~combout\(1) & ((\Donna|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst101|dffs\(4),
	datad => \Donna|dffs\(4),
	combout => \inst104|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X10_Y10_N7
\inst100|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst104|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst100|dffs\(4));

-- Location: LCCOMB_X9_Y11_N24
\inst103|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst103|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\inst100|dffs\(4))) # (!\MODE~combout\(1) & ((\inst95|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst100|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst95|dffs\(4),
	combout => \inst103|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X10_Y11_N14
\inst16|$00000|auto_generated|result_node[34]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[34]~25_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(34)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(34),
	combout => \inst16|$00000|auto_generated|result_node[34]~25_combout\);

-- Location: LCFF_X9_Y11_N25
\Donna|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst103|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Donna|dffs\(4));

-- Location: LCCOMB_X15_Y10_N18
\inst97|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst97|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & (\Donna|dffs\(4))) # (!\MODE~combout\(1) & ((\inst94|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \Donna|dffs\(4),
	datad => \inst94|dffs\(4),
	combout => \inst97|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X15_Y10_N14
\inst16|$00000|auto_generated|result_node[33]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[33]~24_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(33)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(33),
	combout => \inst16|$00000|auto_generated|result_node[33]~24_combout\);

-- Location: LCFF_X15_Y10_N19
\inst95|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst97|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst95|dffs\(4));

-- Location: LCCOMB_X14_Y11_N6
\inst96|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst96|$00000|auto_generated|result_node[4]~0_combout\ = (\MODE~combout\(1) & ((\inst95|dffs\(4)))) # (!\MODE~combout\(1) & (\inst85|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|dffs\(4),
	datab => \inst95|dffs\(4),
	datac => \MODE~combout\(1),
	combout => \inst96|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X12_Y10_N2
\inst16|$00000|auto_generated|result_node[32]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[32]~27_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(32)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(32),
	combout => \inst16|$00000|auto_generated|result_node[32]~27_combout\);

-- Location: LCFF_X14_Y11_N7
\inst94|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst96|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst94|dffs\(4));

-- Location: LCCOMB_X15_Y10_N10
\inst93|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & ((\inst94|dffs\(4)))) # (!\MODE~combout\(1) & (\DFF30|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \DFF30|dffs\(4),
	datad => \inst94|dffs\(4),
	combout => \inst93|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X15_Y10_N28
\inst16|$00000|auto_generated|result_node[31]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[31]~22_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux0~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(31)) # (!\SnoopDogg|Mux1~0_combout\))) # (!\SnoopDogg|Mux0~0_combout\ & 
-- (\SnoopDogg|Mux1~0_combout\)))) # (!\MODE~combout\(0) & (\SnoopDogg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux0~0_combout\,
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(31),
	combout => \inst16|$00000|auto_generated|result_node[31]~22_combout\);

-- Location: LCFF_X15_Y10_N11
\inst85|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst93|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst85|dffs\(4));

-- Location: LCCOMB_X12_Y12_N2
\inst92|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & ((\inst85|dffs\(4)))) # (!\MODE~combout\(1) & (\inst83|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|dffs\(4),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst85|dffs\(4),
	combout => \inst92|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X12_Y12_N26
\inst16|$00000|auto_generated|result_node[30]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[30]~21_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(30)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(30),
	combout => \inst16|$00000|auto_generated|result_node[30]~21_combout\);

-- Location: LCFF_X12_Y12_N3
\DFF30|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst92|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF30|dffs\(4));

-- Location: LCCOMB_X12_Y12_N12
\inst91|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & (\DFF30|dffs\(4))) # (!\MODE~combout\(1) & ((\GeorgeGreen|dffs\(4))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \DFF30|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \GeorgeGreen|dffs\(4),
	combout => \inst91|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X12_Y12_N0
\inst16|$00000|auto_generated|result_node[29]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[29]~20_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(29)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(29),
	combout => \inst16|$00000|auto_generated|result_node[29]~20_combout\);

-- Location: LCFF_X12_Y12_N13
\inst83|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst91|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst83|dffs\(4));

-- Location: LCCOMB_X13_Y12_N18
\inst90|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & ((\inst83|dffs\(4)))) # (!\MODE~combout\(1) & (\inst74|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst74|dffs\(4),
	datad => \inst83|dffs\(4),
	combout => \inst90|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X12_Y10_N24
\inst16|$00000|auto_generated|result_node[28]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[28]~23_combout\ = (\SnoopDogg|Mux0~0_combout\ & (((\inst13|rom|srom|rom_block|auto_generated|q_a\(28)) # (!\SnoopDogg|Mux1~0_combout\)) # (!\MODE~combout\(0)))) # (!\SnoopDogg|Mux0~0_combout\ & (\MODE~combout\(0) 
-- & (\SnoopDogg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SnoopDogg|Mux0~0_combout\,
	datab => \MODE~combout\(0),
	datac => \SnoopDogg|Mux1~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(28),
	combout => \inst16|$00000|auto_generated|result_node[28]~23_combout\);

-- Location: LCFF_X13_Y12_N19
\GeorgeGreen|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst90|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeorgeGreen|dffs\(4));

-- Location: LCCOMB_X12_Y9_N18
\inst82|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & (\GeorgeGreen|dffs\(4))) # (!\MODE~combout\(1) & ((\inst73|dffs\(4))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \GeorgeGreen|dffs\(4),
	datac => \inst73|dffs\(4),
	datad => \MODE~combout\(0),
	combout => \inst82|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X12_Y9_N6
\inst16|$00000|auto_generated|result_node[27]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|$00000|auto_generated|result_node[27]~35_combout\ = (\MODE~combout\(0) & ((\SnoopDogg|Mux1~0_combout\ & ((\inst13|rom|srom|rom_block|auto_generated|q_a\(27)) # (!\SnoopDogg|Mux0~0_combout\))) # (!\SnoopDogg|Mux1~0_combout\ & 
-- (\SnoopDogg|Mux0~0_combout\)))) # (!\MODE~combout\(0) & (((\SnoopDogg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \SnoopDogg|Mux1~0_combout\,
	datac => \SnoopDogg|Mux0~0_combout\,
	datad => \inst13|rom|srom|rom_block|auto_generated|q_a\(27),
	combout => \inst16|$00000|auto_generated|result_node[27]~35_combout\);

-- Location: LCFF_X12_Y9_N19
\inst74|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst82|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst74|dffs\(4));

-- Location: LCCOMB_X10_Y8_N20
\inst81|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst81|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & ((\inst74|dffs\(4)))) # (!\MODE~combout\(1) & (\inst72|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst72|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst74|dffs\(4),
	combout => \inst81|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X10_Y8_N21
\inst73|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst81|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst73|dffs\(4));

-- Location: LCCOMB_X13_Y6_N4
\inst60|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst60|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & (\DFF20|dffs\(4))) # (!\MODE~combout\(1) & ((\inst51|dffs\(4))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF20|dffs\(4),
	datab => \MODE~combout\(0),
	datac => \inst51|dffs\(4),
	datad => \MODE~combout\(1),
	combout => \inst60|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X13_Y6_N5
\inst52|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst60|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst52|dffs\(4));

-- Location: LCCOMB_X10_Y6_N24
\inst68|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst68|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & ((\inst61|dffs\(4)))) # (!\MODE~combout\(1) & (\inst52|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst52|dffs\(4),
	datac => \MODE~combout\(0),
	datad => \inst61|dffs\(4),
	combout => \inst68|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X10_Y6_N25
\DFF20|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst68|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF20|dffs\(4));

-- Location: LCCOMB_X12_Y6_N8
\inst69|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst69|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & ((\inst62|dffs\(4)))) # (!\MODE~combout\(1) & (\DFF20|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \DFF20|dffs\(4),
	datac => \MODE~combout\(0),
	datad => \inst62|dffs\(4),
	combout => \inst69|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X12_Y6_N9
\inst61|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst69|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst61|dffs\(4));

-- Location: LCCOMB_X10_Y12_N6
\inst70|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & (\inst63|dffs\(4))) # (!\MODE~combout\(1) & ((\inst61|dffs\(4))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst63|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst61|dffs\(4),
	combout => \inst70|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X10_Y12_N7
\inst62|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst70|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|dffs\(4));

-- Location: LCCOMB_X12_Y6_N2
\inst71|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & (\Bubbles|dffs\(4))) # (!\MODE~combout\(1) & ((\inst62|dffs\(4))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Bubbles|dffs\(4),
	datac => \MODE~combout\(0),
	datad => \inst62|dffs\(4),
	combout => \inst71|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X12_Y6_N3
\inst63|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst71|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|dffs\(4));

-- Location: LCCOMB_X10_Y12_N24
\inst79|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst79|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & ((\inst72|dffs\(4)))) # (!\MODE~combout\(1) & (\inst63|dffs\(4)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst63|dffs\(4),
	datac => \MODE~combout\(1),
	datad => \inst72|dffs\(4),
	combout => \inst79|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X10_Y12_N25
\Bubbles|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst79|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bubbles|dffs\(4));

-- Location: LCCOMB_X12_Y9_N22
\inst80|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst80|$00000|auto_generated|result_node[4]~0_combout\ = ((\MODE~combout\(1) & (\inst73|dffs\(4))) # (!\MODE~combout\(1) & ((\Bubbles|dffs\(4))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst73|dffs\(4),
	datac => \Bubbles|dffs\(4),
	datad => \MODE~combout\(0),
	combout => \inst80|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X12_Y9_N23
\inst72|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst80|$00000|auto_generated|result_node[4]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|dffs\(4));

-- Location: LCCOMB_X10_Y12_N2
\inst159|auto_generated|result_node[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~31_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\Bubbles|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst72|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bubbles|dffs\(4),
	datab => \inst72|dffs\(4),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[4]~31_combout\);

-- Location: LCCOMB_X14_Y6_N10
\inst159|auto_generated|result_node[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~28_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\DFF20|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst61|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(1),
	datac => \DFF20|dffs\(4),
	datad => \inst61|dffs\(4),
	combout => \inst159|auto_generated|result_node[4]~28_combout\);

-- Location: LCCOMB_X13_Y12_N2
\inst159|auto_generated|result_node[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~27_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst62|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst63|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \inst63|dffs\(4),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[4]~27_combout\);

-- Location: LCCOMB_X14_Y12_N2
\inst159|auto_generated|result_node[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~29_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[4]~28_combout\) # (\inst159|auto_generated|result_node[4]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|result_node[4]~28_combout\,
	datad => \inst159|auto_generated|result_node[4]~27_combout\,
	combout => \inst159|auto_generated|result_node[4]~29_combout\);

-- Location: LCCOMB_X14_Y12_N0
\inst159|auto_generated|result_node[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~32_combout\ = (\inst159|auto_generated|result_node[4]~29_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[4]~30_combout\) # (\inst159|auto_generated|result_node[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[4]~30_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|result_node[4]~31_combout\,
	datad => \inst159|auto_generated|result_node[4]~29_combout\,
	combout => \inst159|auto_generated|result_node[4]~32_combout\);

-- Location: LCCOMB_X14_Y12_N22
\inst159|auto_generated|result_node[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~33_combout\ = (\ADDR~combout\(4) & ((\inst159|auto_generated|result_node[4]~26_combout\) # ((\inst159|auto_generated|result_node[4]~32_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[4]~26_combout\,
	datab => \inst159|auto_generated|result_node[4]~32_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(4),
	combout => \inst159|auto_generated|result_node[4]~33_combout\);

-- Location: LCCOMB_X14_Y6_N2
\inst159|auto_generated|_~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~50_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst51|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst52|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \inst51|dffs\(4),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~50_combout\);

-- Location: LCCOMB_X14_Y6_N28
\inst159|auto_generated|_~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~51_combout\ = (\inst159|auto_generated|_~50_combout\ & ((\Julian|dffs\(4)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~50_combout\ & (((\inst50|dffs\(4) & \ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Julian|dffs\(4),
	datab => \inst159|auto_generated|_~50_combout\,
	datac => \inst50|dffs\(4),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~51_combout\);

-- Location: LCCOMB_X14_Y6_N22
\inst159|auto_generated|_~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~52_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst159|auto_generated|_~51_combout\ & \inst159|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(5),
	datab => \inst159|auto_generated|_~51_combout\,
	datac => \ADDR~combout\(4),
	datad => \inst159|auto_generated|_~16_combout\,
	combout => \inst159|auto_generated|_~52_combout\);

-- Location: LCCOMB_X14_Y6_N0
\inst159|auto_generated|_~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~47_combout\ = (\ADDR~combout\(0) & (((\inst40|dffs\(4)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst41|dffs\(4) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst41|dffs\(4),
	datac => \inst40|dffs\(4),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~47_combout\);

-- Location: LCCOMB_X14_Y6_N18
\inst159|auto_generated|_~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~48_combout\ = (\inst159|auto_generated|_~47_combout\ & ((\Ricky|dffs\(4)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~47_combout\ & (((\inst39|dffs\(4) & \ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ricky|dffs\(4),
	datab => \inst159|auto_generated|_~47_combout\,
	datac => \inst39|dffs\(4),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~48_combout\);

-- Location: LCCOMB_X14_Y6_N20
\inst159|auto_generated|_~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~49_combout\ = (\ADDR~combout\(5) & (\inst159|auto_generated|_~48_combout\ & (!\ADDR~combout\(3) & \ADDR~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(5),
	datab => \inst159|auto_generated|_~48_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|_~49_combout\);

-- Location: LCCOMB_X14_Y6_N24
\inst159|auto_generated|_~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~59_combout\ = (\inst159|auto_generated|_~52_combout\) # ((\inst159|auto_generated|_~49_combout\) # ((\inst159|auto_generated|_~58_combout\ & \inst159|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~58_combout\,
	datab => \inst159|auto_generated|_~52_combout\,
	datac => \inst159|auto_generated|_~49_combout\,
	datad => \inst159|auto_generated|_~35_combout\,
	combout => \inst159|auto_generated|_~59_combout\);

-- Location: LCCOMB_X17_Y9_N8
\inst159|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[5]~0_combout\ = (!\ADDR~combout\(4) & !\ADDR~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datac => \ADDR~combout\(5),
	combout => \inst159|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X13_Y9_N2
\inst159|auto_generated|_~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~38_combout\ = (\inst159|auto_generated|_~37_combout\ & (((\inst128|dffs\(4)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~37_combout\ & (\inst129|dffs\(4) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~37_combout\,
	datab => \inst129|dffs\(4),
	datac => \ADDR~combout\(1),
	datad => \inst128|dffs\(4),
	combout => \inst159|auto_generated|_~38_combout\);

-- Location: LCCOMB_X13_Y9_N20
\inst159|auto_generated|result_node[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~18_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst159|auto_generated|_~38_combout\))) # (!\ADDR~combout\(2) & (\inst159|auto_generated|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~40_combout\,
	datab => \inst159|auto_generated|_~38_combout\,
	datac => \ADDR~combout\(2),
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|result_node[4]~18_combout\);

-- Location: LCCOMB_X17_Y9_N26
\inst159|auto_generated|result_node[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~25_combout\ = (\inst159|auto_generated|result_node[5]~0_combout\ & ((\inst159|auto_generated|result_node[4]~18_combout\) # ((\inst159|auto_generated|result_node[4]~24_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[4]~24_combout\,
	datab => \ADDR~combout\(3),
	datac => \inst159|auto_generated|result_node[5]~0_combout\,
	datad => \inst159|auto_generated|result_node[4]~18_combout\,
	combout => \inst159|auto_generated|result_node[4]~25_combout\);

-- Location: LCCOMB_X17_Y9_N16
\inst159|auto_generated|result_node[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[4]~34_combout\ = (\inst159|auto_generated|result_node[4]~25_combout\) # ((\inst159|auto_generated|_~59_combout\ & (\inst159|auto_generated|_~153_combout\)) # (!\inst159|auto_generated|_~59_combout\ & 
-- ((\inst159|auto_generated|result_node[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~153_combout\,
	datab => \inst159|auto_generated|result_node[4]~33_combout\,
	datac => \inst159|auto_generated|_~59_combout\,
	datad => \inst159|auto_generated|result_node[4]~25_combout\,
	combout => \inst159|auto_generated|result_node[4]~34_combout\);

-- Location: LCCOMB_X13_Y12_N10
\inst90|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & (\inst83|dffs\(3))) # (!\MODE~combout\(1) & ((\inst74|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|dffs\(3),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst74|dffs\(3),
	combout => \inst90|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X13_Y12_N11
\GeorgeGreen|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst90|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeorgeGreen|dffs\(3));

-- Location: LCCOMB_X12_Y9_N24
\inst82|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & ((\GeorgeGreen|dffs\(3)))) # (!\MODE~combout\(1) & (\inst73|dffs\(3)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst73|dffs\(3),
	datac => \GeorgeGreen|dffs\(3),
	datad => \MODE~combout\(0),
	combout => \inst82|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X12_Y9_N25
\inst74|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst82|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst74|dffs\(3));

-- Location: LCCOMB_X10_Y8_N2
\inst81|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst81|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & (\inst74|dffs\(3))) # (!\MODE~combout\(1) & ((\inst72|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \inst74|dffs\(3),
	datad => \inst72|dffs\(3),
	combout => \inst81|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X10_Y8_N3
\inst73|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst81|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst73|dffs\(3));

-- Location: LCCOMB_X12_Y9_N30
\inst80|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst80|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & (\inst73|dffs\(3))) # (!\MODE~combout\(1) & ((\Bubbles|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst73|dffs\(3),
	datac => \Bubbles|dffs\(3),
	datad => \MODE~combout\(0),
	combout => \inst80|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X12_Y9_N31
\inst72|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst80|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|dffs\(3));

-- Location: LCCOMB_X10_Y12_N4
\inst79|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst79|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & ((\inst72|dffs\(3)))) # (!\MODE~combout\(1) & (\inst63|dffs\(3)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst63|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \inst72|dffs\(3),
	combout => \inst79|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X10_Y12_N5
\Bubbles|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst79|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bubbles|dffs\(3));

-- Location: LCCOMB_X12_Y6_N0
\inst67|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\Bubbles|dffs\(3))) # (!\MODE~combout\(1) & ((\inst62|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bubbles|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \inst62|dffs\(3),
	combout => \inst67|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X12_Y6_N1
\inst63|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst67|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|dffs\(3));

-- Location: LCCOMB_X10_Y12_N8
\inst66|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\inst63|dffs\(3))) # (!\MODE~combout\(1) & ((\inst61|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst63|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \inst61|dffs\(3),
	combout => \inst66|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X10_Y12_N9
\inst62|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst66|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|dffs\(3));

-- Location: LCCOMB_X12_Y6_N10
\inst65|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & ((\inst62|dffs\(3)))) # (!\MODE~combout\(1) & (\DFF20|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DFF20|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \inst62|dffs\(3),
	combout => \inst65|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X12_Y6_N11
\inst61|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst65|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst61|dffs\(3));

-- Location: LCCOMB_X10_Y6_N20
\inst64|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\inst61|dffs\(3))) # (!\MODE~combout\(1) & ((\inst52|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst61|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \inst52|dffs\(3),
	combout => \inst64|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X10_Y6_N21
\DFF20|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst64|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF20|dffs\(3));

-- Location: LCCOMB_X13_Y6_N30
\inst56|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\DFF20|dffs\(3))) # (!\MODE~combout\(1) & ((\inst51|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \DFF20|dffs\(3),
	datad => \inst51|dffs\(3),
	combout => \inst56|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X13_Y6_N31
\inst52|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst56|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst52|dffs\(3));

-- Location: LCCOMB_X13_Y6_N28
\inst55|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst55|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\inst52|dffs\(3))) # (!\MODE~combout\(1) & ((\inst50|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst52|dffs\(3),
	datac => \inst50|dffs\(3),
	datad => \MODE~combout\(1),
	combout => \inst55|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X13_Y6_N29
\inst51|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst55|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst51|dffs\(3));

-- Location: LCCOMB_X13_Y7_N2
\inst54|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & ((\inst51|dffs\(3)))) # (!\MODE~combout\(1) & (\Julian|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Julian|dffs\(3),
	datac => \inst51|dffs\(3),
	combout => \inst54|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X13_Y7_N3
\inst50|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst54|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst50|dffs\(3));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA(3),
	combout => \DATA~combout\(3));

-- Location: LCCOMB_X14_Y9_N26
\inst5|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[3]~2_combout\ = (\MODE~combout\(1) & (\inst2|dffs\(3))) # (!\MODE~combout\(1) & ((\DATA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \DATA~combout\(3),
	combout => \inst5|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X14_Y9_N27
\Corey|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst5|$00000|auto_generated|result_node[3]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corey|dffs\(3));

-- Location: LCCOMB_X15_Y9_N24
\inst6|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|$00000|auto_generated|result_node[3]~2_combout\ = (\MODE~combout\(1) & (\inst3|dffs\(3))) # (!\MODE~combout\(1) & ((\Corey|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \Corey|dffs\(3),
	combout => \inst6|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X15_Y9_N25
\inst2|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst6|$00000|auto_generated|result_node[3]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|dffs\(3));

-- Location: LCCOMB_X14_Y9_N12
\inst7|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[3]~2_combout\ = (\MODE~combout\(1) & (\inst4|dffs\(3))) # (!\MODE~combout\(1) & ((\inst2|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \inst2|dffs\(3),
	combout => \inst7|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X14_Y9_N13
\inst3|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst7|$00000|auto_generated|result_node[3]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dffs\(3));

-- Location: LCCOMB_X12_Y8_N4
\inst8|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|$00000|auto_generated|result_node[3]~2_combout\ = (\MODE~combout\(1) & ((\Trevor|dffs\(3)))) # (!\MODE~combout\(1) & (\inst3|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst3|dffs\(3),
	datad => \Trevor|dffs\(3),
	combout => \inst8|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X12_Y8_N5
\inst4|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst8|$00000|auto_generated|result_node[3]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(3));

-- Location: LCCOMB_X15_Y7_N30
\inst20|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|result_node[3]~2_combout\ = (\MODE~combout\(1) & ((\inst17|dffs\(3)))) # (!\MODE~combout\(1) & (\inst4|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst4|dffs\(3),
	datad => \inst17|dffs\(3),
	combout => \inst20|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X15_Y7_N31
\Trevor|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst20|$00000|auto_generated|result_node[3]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Trevor|dffs\(3));

-- Location: LCCOMB_X12_Y8_N14
\inst21|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[3]~2_combout\ = (\MODE~combout\(1) & (\inst18|dffs\(3))) # (!\MODE~combout\(1) & ((\Trevor|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst18|dffs\(3),
	datad => \Trevor|dffs\(3),
	combout => \inst21|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X12_Y8_N15
\inst17|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst21|$00000|auto_generated|result_node[3]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|dffs\(3));

-- Location: LCCOMB_X15_Y7_N28
\inst22|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[3]~2_combout\ = (\MODE~combout\(1) & (\inst19|dffs\(3))) # (!\MODE~combout\(1) & ((\inst17|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst19|dffs\(3),
	datad => \inst17|dffs\(3),
	combout => \inst22|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X15_Y7_N29
\inst18|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst22|$00000|auto_generated|result_node[3]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|dffs\(3));

-- Location: LCCOMB_X10_Y7_N16
\inst23|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[3]~2_combout\ = (\MODE~combout\(1) & (\RANDY|dffs\(3))) # (!\MODE~combout\(1) & ((\inst18|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \RANDY|dffs\(3),
	datad => \inst18|dffs\(3),
	combout => \inst23|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X10_Y7_N17
\inst19|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst23|$00000|auto_generated|result_node[3]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|dffs\(3));

-- Location: LCCOMB_X9_Y7_N6
\inst35|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|$00000|auto_generated|result_node[3]~0_combout\ = ((\MODE~combout\(1) & (\inst28|dffs\(3))) # (!\MODE~combout\(1) & ((\inst19|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst28|dffs\(3),
	datac => \inst19|dffs\(3),
	datad => \MODE~combout\(0),
	combout => \inst35|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCFF_X9_Y7_N7
\RANDY|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst35|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RANDY|dffs\(3));

-- Location: LCCOMB_X10_Y7_N22
\inst36|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|$00000|auto_generated|result_node[3]~0_combout\ = ((\MODE~combout\(1) & (\DFF10|dffs\(3))) # (!\MODE~combout\(1) & ((\RANDY|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \DFF10|dffs\(3),
	datac => \RANDY|dffs\(3),
	datad => \MODE~combout\(0),
	combout => \inst36|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCFF_X10_Y7_N23
\inst28|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst36|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|dffs\(3));

-- Location: LCCOMB_X9_Y7_N24
\inst37|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|$00000|auto_generated|result_node[3]~0_combout\ = ((\MODE~combout\(1) & ((\inst30|dffs\(3)))) # (!\MODE~combout\(1) & (\inst28|dffs\(3)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst28|dffs\(3),
	datac => \inst30|dffs\(3),
	datad => \MODE~combout\(1),
	combout => \inst37|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCFF_X9_Y7_N25
\DFF10|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst37|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF10|dffs\(3));

-- Location: LCCOMB_X12_Y7_N4
\inst38|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst38|$00000|auto_generated|result_node[3]~0_combout\ = ((\MODE~combout\(1) & (\Ricky|dffs\(3))) # (!\MODE~combout\(1) & ((\DFF10|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Ricky|dffs\(3),
	datac => \DFF10|dffs\(3),
	datad => \MODE~combout\(0),
	combout => \inst38|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCFF_X12_Y7_N5
\inst30|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst38|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst30|dffs\(3));

-- Location: LCCOMB_X12_Y7_N18
\inst46|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|$00000|auto_generated|result_node[3]~0_combout\ = ((\MODE~combout\(1) & (\inst39|dffs\(3))) # (!\MODE~combout\(1) & ((\inst30|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst39|dffs\(3),
	datac => \inst30|dffs\(3),
	datad => \MODE~combout\(0),
	combout => \inst46|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCFF_X12_Y7_N19
\Ricky|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst46|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ricky|dffs\(3));

-- Location: LCCOMB_X14_Y7_N4
\inst47|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst47|$00000|auto_generated|result_node[3]~0_combout\ = ((\MODE~combout\(1) & (\inst40|dffs\(3))) # (!\MODE~combout\(1) & ((\Ricky|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|dffs\(3),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \Ricky|dffs\(3),
	combout => \inst47|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCFF_X14_Y7_N5
\inst39|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst47|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst39|dffs\(3));

-- Location: LCCOMB_X14_Y7_N2
\inst48|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|$00000|auto_generated|result_node[3]~0_combout\ = ((\MODE~combout\(1) & ((\inst41|dffs\(3)))) # (!\MODE~combout\(1) & (\inst39|dffs\(3)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst39|dffs\(3),
	datad => \inst41|dffs\(3),
	combout => \inst48|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCFF_X14_Y7_N3
\inst40|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst48|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst40|dffs\(3));

-- Location: LCCOMB_X13_Y7_N22
\inst49|$00000|auto_generated|result_node[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst49|$00000|auto_generated|result_node[3]~0_combout\ = ((\MODE~combout\(1) & (\Julian|dffs\(3))) # (!\MODE~combout\(1) & ((\inst40|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \Julian|dffs\(3),
	datad => \inst40|dffs\(3),
	combout => \inst49|$00000|auto_generated|result_node[3]~0_combout\);

-- Location: LCFF_X13_Y7_N23
\inst41|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst49|$00000|auto_generated|result_node[3]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|dffs\(3));

-- Location: LCCOMB_X9_Y6_N28
\inst53|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\inst50|dffs\(3))) # (!\MODE~combout\(1) & ((\inst41|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \inst41|dffs\(3),
	combout => \inst53|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X9_Y6_N29
\Julian|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst53|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Julian|dffs\(3));

-- Location: LCCOMB_X13_Y7_N20
\inst159|auto_generated|_~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~74_combout\ = (\inst159|auto_generated|_~73_combout\ & ((\Julian|dffs\(3)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~73_combout\ & (((\ADDR~combout\(1) & \inst50|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~73_combout\,
	datab => \Julian|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \inst50|dffs\(3),
	combout => \inst159|auto_generated|_~74_combout\);

-- Location: LCCOMB_X17_Y7_N28
\inst159|auto_generated|_~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~75_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst159|auto_generated|_~74_combout\ & \inst159|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst159|auto_generated|_~74_combout\,
	datac => \inst159|auto_generated|_~16_combout\,
	datad => \ADDR~combout\(5),
	combout => \inst159|auto_generated|_~75_combout\);

-- Location: LCCOMB_X17_Y7_N4
\inst159|auto_generated|_~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~80_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\RANDY|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst28|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst28|dffs\(3),
	datac => \RANDY|dffs\(3),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~80_combout\);

-- Location: LCCOMB_X17_Y7_N18
\inst159|auto_generated|_~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~79_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\DFF10|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst30|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst30|dffs\(3),
	datac => \DFF10|dffs\(3),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~79_combout\);

-- Location: LCCOMB_X17_Y7_N14
\inst159|auto_generated|_~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~81_combout\ = (\inst159|auto_generated|_~78_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|_~80_combout\) # (\inst159|auto_generated|_~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~78_combout\,
	datab => \inst159|auto_generated|_~80_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst159|auto_generated|_~79_combout\,
	combout => \inst159|auto_generated|_~81_combout\);

-- Location: LCCOMB_X17_Y7_N24
\inst159|auto_generated|_~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~82_combout\ = (\inst159|auto_generated|_~72_combout\) # ((\inst159|auto_generated|_~75_combout\) # ((\inst159|auto_generated|_~81_combout\ & \inst159|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~72_combout\,
	datab => \inst159|auto_generated|_~75_combout\,
	datac => \inst159|auto_generated|_~81_combout\,
	datad => \inst159|auto_generated|_~35_combout\,
	combout => \inst159|auto_generated|_~82_combout\);

-- Location: LCCOMB_X13_Y11_N8
\inst138|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst138|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & (\inst131|dffs\(3))) # (!\MODE~combout\(1) & ((\inst129|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst131|dffs\(3),
	datab => \MODE~combout\(0),
	datac => \inst129|dffs\(3),
	datad => \MODE~combout\(1),
	combout => \inst138|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X13_Y11_N9
\inst130|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst138|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst130|dffs\(3));

-- Location: LCCOMB_X13_Y9_N14
\inst137|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst137|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & (\inst130|dffs\(3))) # (!\MODE~combout\(1) & ((\inst128|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst130|dffs\(3),
	datad => \inst128|dffs\(3),
	combout => \inst137|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X13_Y9_N15
\inst129|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst137|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst129|dffs\(3));

-- Location: LCCOMB_X14_Y11_N12
\inst136|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst136|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & ((\inst129|dffs\(3)))) # (!\MODE~combout\(1) & (\inst123|dffs\(3)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst123|dffs\(3),
	datac => \MODE~combout\(0),
	datad => \inst129|dffs\(3),
	combout => \inst136|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X14_Y11_N13
\inst128|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst136|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst128|dffs\(3));

-- Location: LCCOMB_X9_Y10_N24
\inst127|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst127|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & ((\inst128|dffs\(3)))) # (!\MODE~combout\(1) & (\inst122|dffs\(3)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|dffs\(3),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst128|dffs\(3),
	combout => \inst127|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X9_Y10_N25
\inst123|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst127|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst123|dffs\(3));

-- Location: LCCOMB_X8_Y10_N2
\inst126|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst126|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & (\inst123|dffs\(3))) # (!\MODE~combout\(1) & ((\inst113|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst123|dffs\(3),
	datac => \MODE~combout\(0),
	datad => \inst113|dffs\(3),
	combout => \inst126|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X8_Y10_N3
\inst122|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst126|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst122|dffs\(3));

-- Location: LCCOMB_X12_Y10_N8
\inst121|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst121|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & ((\inst122|dffs\(3)))) # (!\MODE~combout\(1) & (\DFF40|dffs\(3)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF40|dffs\(3),
	datab => \inst122|dffs\(3),
	datac => \MODE~combout\(0),
	datad => \MODE~combout\(1),
	combout => \inst121|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X12_Y10_N9
\inst113|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst121|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst113|dffs\(3));

-- Location: LCCOMB_X8_Y10_N12
\inst120|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst120|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & ((\inst113|dffs\(3)))) # (!\MODE~combout\(1) & (\inst111|dffs\(3)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst111|dffs\(3),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst113|dffs\(3),
	combout => \inst120|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X8_Y10_N13
\DFF40|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst120|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF40|dffs\(3));

-- Location: LCCOMB_X13_Y10_N2
\inst159|auto_generated|result_node[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~39_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(2) & (\inst101|dffs\(3))) # (!\ADDR~combout\(2) & ((\DFF40|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|dffs\(3),
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(0),
	datad => \DFF40|dffs\(3),
	combout => \inst159|auto_generated|result_node[3]~39_combout\);

-- Location: LCCOMB_X15_Y10_N0
\inst97|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst97|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & ((\Donna|dffs\(3)))) # (!\MODE~combout\(1) & (\inst94|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst94|dffs\(3),
	datac => \Donna|dffs\(3),
	datad => \MODE~combout\(1),
	combout => \inst97|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X15_Y10_N1
\inst95|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst97|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst95|dffs\(3));

-- Location: LCCOMB_X9_Y11_N18
\inst103|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst103|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\inst100|dffs\(3))) # (!\MODE~combout\(1) & ((\inst95|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst100|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \inst95|dffs\(3),
	combout => \inst103|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X9_Y11_N19
\Donna|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst103|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Donna|dffs\(3));

-- Location: LCCOMB_X10_Y10_N30
\inst104|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst104|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & ((\inst101|dffs\(3)))) # (!\MODE~combout\(1) & (\Donna|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Donna|dffs\(3),
	datac => \inst101|dffs\(3),
	combout => \inst104|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X10_Y10_N31
\inst100|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst104|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst100|dffs\(3));

-- Location: LCCOMB_X10_Y10_N16
\inst105|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst105|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\inst102|dffs\(3))) # (!\MODE~combout\(1) & ((\inst100|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst102|dffs\(3),
	datad => \inst100|dffs\(3),
	combout => \inst105|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X10_Y10_N17
\inst101|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst105|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst101|dffs\(3));

-- Location: LCCOMB_X10_Y9_N18
\inst106|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst106|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & ((\Cyrus|dffs\(3)))) # (!\MODE~combout\(1) & (\inst101|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst101|dffs\(3),
	datad => \Cyrus|dffs\(3),
	combout => \inst106|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X10_Y9_N19
\inst102|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst106|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst102|dffs\(3));

-- Location: LCCOMB_X12_Y10_N16
\inst114|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst114|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & ((\inst111|dffs\(3)))) # (!\MODE~combout\(1) & (\inst102|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst102|dffs\(3),
	datad => \inst111|dffs\(3),
	combout => \inst114|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X12_Y10_N17
\Cyrus|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst114|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Cyrus|dffs\(3));

-- Location: LCCOMB_X10_Y9_N16
\inst115|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst115|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\DFF40|dffs\(3))) # (!\MODE~combout\(1) & ((\Cyrus|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \DFF40|dffs\(3),
	datad => \Cyrus|dffs\(3),
	combout => \inst115|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X10_Y9_N17
\inst111|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst115|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst111|dffs\(3));

-- Location: LCCOMB_X12_Y10_N18
\inst159|auto_generated|result_node[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~37_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(2) & ((\inst111|dffs\(3)))) # (!\ADDR~combout\(2) & (\inst123|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|dffs\(3),
	datab => \inst111|dffs\(3),
	datac => \ADDR~combout\(2),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[3]~37_combout\);

-- Location: LCCOMB_X12_Y10_N28
\inst159|auto_generated|result_node[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~36_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(2) & (\Cyrus|dffs\(3))) # (!\ADDR~combout\(2) & ((\inst122|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cyrus|dffs\(3),
	datab => \inst122|dffs\(3),
	datac => \ADDR~combout\(2),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[3]~36_combout\);

-- Location: LCCOMB_X13_Y10_N0
\inst159|auto_generated|result_node[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~38_combout\ = (!\ADDR~combout\(1) & ((\inst159|auto_generated|result_node[3]~37_combout\) # (\inst159|auto_generated|result_node[3]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst159|auto_generated|result_node[3]~37_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst159|auto_generated|result_node[3]~36_combout\,
	combout => \inst159|auto_generated|result_node[3]~38_combout\);

-- Location: LCCOMB_X13_Y10_N4
\inst159|auto_generated|result_node[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~41_combout\ = (\inst159|auto_generated|result_node[3]~38_combout\) # ((\ADDR~combout\(1) & ((\inst159|auto_generated|result_node[3]~40_combout\) # (\inst159|auto_generated|result_node[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[3]~40_combout\,
	datab => \inst159|auto_generated|result_node[3]~39_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst159|auto_generated|result_node[3]~38_combout\,
	combout => \inst159|auto_generated|result_node[3]~41_combout\);

-- Location: LCCOMB_X14_Y8_N2
\inst159|auto_generated|result_node[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~42_combout\ = (\inst159|auto_generated|result_node[5]~0_combout\ & ((\inst159|auto_generated|result_node[3]~35_combout\) # ((\inst159|auto_generated|result_node[3]~41_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[3]~35_combout\,
	datab => \inst159|auto_generated|result_node[3]~41_combout\,
	datac => \inst159|auto_generated|result_node[5]~0_combout\,
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|result_node[3]~42_combout\);

-- Location: LCCOMB_X9_Y11_N10
\inst159|auto_generated|_~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~68_combout\ = (\ADDR~combout\(0) & ((\Donna|dffs\(3)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst100|dffs\(3) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \Donna|dffs\(3),
	datac => \inst100|dffs\(3),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~68_combout\);

-- Location: LCCOMB_X12_Y12_N10
\inst91|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & (\DFF30|dffs\(3))) # (!\MODE~combout\(1) & ((\GeorgeGreen|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \DFF30|dffs\(3),
	datac => \MODE~combout\(1),
	datad => \GeorgeGreen|dffs\(3),
	combout => \inst91|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X12_Y12_N11
\inst83|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst91|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst83|dffs\(3));

-- Location: LCCOMB_X12_Y12_N4
\inst92|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & (\inst85|dffs\(3))) # (!\MODE~combout\(1) & ((\inst83|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \inst85|dffs\(3),
	datad => \inst83|dffs\(3),
	combout => \inst92|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X12_Y12_N5
\DFF30|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst92|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF30|dffs\(3));

-- Location: LCCOMB_X15_Y10_N4
\inst93|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|$00000|auto_generated|result_node[3]~1_combout\ = ((\MODE~combout\(1) & (\inst94|dffs\(3))) # (!\MODE~combout\(1) & ((\DFF30|dffs\(3))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst94|dffs\(3),
	datab => \DFF30|dffs\(3),
	datac => \MODE~combout\(0),
	datad => \MODE~combout\(1),
	combout => \inst93|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X15_Y10_N5
\inst85|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst93|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst85|dffs\(3));

-- Location: LCCOMB_X17_Y10_N0
\inst96|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst96|$00000|auto_generated|result_node[3]~1_combout\ = (\MODE~combout\(1) & (\inst95|dffs\(3))) # (!\MODE~combout\(1) & ((\inst85|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|dffs\(3),
	datab => \MODE~combout\(1),
	datac => \inst85|dffs\(3),
	combout => \inst96|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCFF_X17_Y10_N1
\inst94|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst96|$00000|auto_generated|result_node[3]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst94|dffs\(3));

-- Location: LCCOMB_X15_Y11_N4
\inst159|auto_generated|_~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~69_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~68_combout\ & ((\inst94|dffs\(3)))) # (!\inst159|auto_generated|_~68_combout\ & (\inst95|dffs\(3))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst95|dffs\(3),
	datac => \inst159|auto_generated|_~68_combout\,
	datad => \inst94|dffs\(3),
	combout => \inst159|auto_generated|_~69_combout\);

-- Location: LCCOMB_X14_Y12_N8
\inst159|auto_generated|result_node[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~43_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst159|auto_generated|_~67_combout\)) # (!\ADDR~combout\(2) & ((\inst159|auto_generated|_~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~67_combout\,
	datab => \inst159|auto_generated|_~69_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|result_node[3]~43_combout\);

-- Location: LCCOMB_X10_Y8_N30
\inst159|auto_generated|result_node[3]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~48_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\Bubbles|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst72|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst72|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \Bubbles|dffs\(3),
	combout => \inst159|auto_generated|result_node[3]~48_combout\);

-- Location: LCCOMB_X10_Y6_N16
\inst159|auto_generated|result_node[3]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~45_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\DFF20|dffs\(3))) # (!\ADDR~combout\(0) & ((\inst61|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF20|dffs\(3),
	datab => \inst61|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[3]~45_combout\);

-- Location: LCCOMB_X10_Y8_N28
\inst159|auto_generated|result_node[3]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~46_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[3]~44_combout\) # (\inst159|auto_generated|result_node[3]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[3]~44_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst159|auto_generated|result_node[3]~45_combout\,
	combout => \inst159|auto_generated|result_node[3]~46_combout\);

-- Location: LCCOMB_X10_Y8_N24
\inst159|auto_generated|result_node[3]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~49_combout\ = (\inst159|auto_generated|result_node[3]~46_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[3]~47_combout\) # (\inst159|auto_generated|result_node[3]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[3]~47_combout\,
	datab => \inst159|auto_generated|result_node[3]~48_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst159|auto_generated|result_node[3]~46_combout\,
	combout => \inst159|auto_generated|result_node[3]~49_combout\);

-- Location: LCCOMB_X14_Y8_N16
\inst159|auto_generated|result_node[3]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~50_combout\ = (\ADDR~combout\(4) & ((\inst159|auto_generated|result_node[3]~43_combout\) # ((\inst159|auto_generated|result_node[3]~49_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst159|auto_generated|result_node[3]~43_combout\,
	datac => \inst159|auto_generated|result_node[3]~49_combout\,
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|result_node[3]~50_combout\);

-- Location: LCCOMB_X15_Y9_N18
\inst159|auto_generated|_~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~65_combout\ = (\inst159|auto_generated|_~64_combout\ & ((\Corey|dffs\(3)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~64_combout\ & (((\inst2|dffs\(3) & \ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~64_combout\,
	datab => \Corey|dffs\(3),
	datac => \inst2|dffs\(3),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~65_combout\);

-- Location: LCCOMB_X17_Y7_N2
\inst159|auto_generated|_~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~154_combout\ = ((\inst159|auto_generated|_~65_combout\ & (!\ADDR~combout\(2) & !\ADDR~combout\(3)))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst159|auto_generated|_~65_combout\,
	datac => \ADDR~combout\(2),
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|_~154_combout\);

-- Location: LCCOMB_X17_Y7_N30
\inst159|auto_generated|result_node[3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[3]~51_combout\ = (\inst159|auto_generated|result_node[3]~42_combout\) # ((\inst159|auto_generated|_~82_combout\ & ((\inst159|auto_generated|_~154_combout\))) # (!\inst159|auto_generated|_~82_combout\ & 
-- (\inst159|auto_generated|result_node[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~82_combout\,
	datab => \inst159|auto_generated|result_node[3]~42_combout\,
	datac => \inst159|auto_generated|result_node[3]~50_combout\,
	datad => \inst159|auto_generated|_~154_combout\,
	combout => \inst159|auto_generated|result_node[3]~51_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst136|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst136|$00000|auto_generated|result_node[2]~2_combout\ = ((\MODE~combout\(1) & (\inst129|dffs\(2))) # (!\MODE~combout\(1) & ((\inst123|dffs\(2))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst129|dffs\(2),
	datab => \inst123|dffs\(2),
	datac => \MODE~combout\(0),
	datad => \MODE~combout\(1),
	combout => \inst136|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X14_Y11_N5
\inst128|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst136|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst128|dffs\(2));

-- Location: LCCOMB_X9_Y10_N0
\inst125|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst125|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & ((\inst128|dffs\(2)))) # (!\MODE~combout\(1) & (\inst122|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst128|dffs\(2),
	combout => \inst125|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X9_Y10_N1
\inst123|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst125|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst123|dffs\(2));

-- Location: LCCOMB_X8_Y10_N10
\inst124|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst124|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & ((\inst123|dffs\(2)))) # (!\MODE~combout\(1) & (\inst113|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|dffs\(2),
	datab => \inst123|dffs\(2),
	datac => \MODE~combout\(1),
	combout => \inst124|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X8_Y10_N11
\inst122|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst124|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst122|dffs\(2));

-- Location: LCCOMB_X9_Y10_N2
\inst159|auto_generated|result_node[2]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~56_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\DFF40|dffs\(2))) # (!\ADDR~combout\(1) & ((\inst122|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF40|dffs\(2),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst122|dffs\(2),
	combout => \inst159|auto_generated|result_node[2]~56_combout\);

-- Location: LCCOMB_X15_Y10_N30
\inst97|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst97|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & ((\Donna|dffs\(2)))) # (!\MODE~combout\(1) & (\inst94|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst94|dffs\(2),
	datac => \Donna|dffs\(2),
	datad => \MODE~combout\(1),
	combout => \inst97|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X15_Y10_N31
\inst95|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst97|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst95|dffs\(2));

-- Location: LCCOMB_X9_Y11_N28
\inst103|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst103|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & (\inst100|dffs\(2))) # (!\MODE~combout\(1) & ((\inst95|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst100|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst95|dffs\(2),
	combout => \inst103|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X9_Y11_N29
\Donna|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst103|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Donna|dffs\(2));

-- Location: LCCOMB_X10_Y10_N12
\inst104|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst104|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & (\inst101|dffs\(2))) # (!\MODE~combout\(1) & ((\Donna|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst101|dffs\(2),
	datac => \Donna|dffs\(2),
	combout => \inst104|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X10_Y10_N13
\inst100|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst104|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst100|dffs\(2));

-- Location: LCCOMB_X9_Y11_N20
\inst109|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst109|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & (\inst102|dffs\(2))) # (!\MODE~combout\(1) & ((\inst100|dffs\(2))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|dffs\(2),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst100|dffs\(2),
	combout => \inst109|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X9_Y11_N21
\inst101|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst109|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst101|dffs\(2));

-- Location: LCCOMB_X9_Y12_N0
\inst159|auto_generated|result_node[2]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~53_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst101|dffs\(2)))) # (!\ADDR~combout\(1) & (\Cyrus|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cyrus|dffs\(2),
	datab => \ADDR~combout\(1),
	datac => \inst101|dffs\(2),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[2]~53_combout\);

-- Location: LCCOMB_X8_Y10_N8
\inst116|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst116|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & (\inst113|dffs\(2))) # (!\MODE~combout\(1) & ((\inst111|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst111|dffs\(2),
	combout => \inst116|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X8_Y10_N9
\DFF40|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst116|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF40|dffs\(2));

-- Location: LCCOMB_X10_Y9_N4
\inst110|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst110|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & ((\Cyrus|dffs\(2)))) # (!\MODE~combout\(1) & (\inst101|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|dffs\(2),
	datab => \Cyrus|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \MODE~combout\(0),
	combout => \inst110|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X10_Y9_N5
\inst102|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst110|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst102|dffs\(2));

-- Location: LCCOMB_X12_Y10_N0
\inst118|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst118|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & (\inst111|dffs\(2))) # (!\MODE~combout\(1) & ((\inst102|dffs\(2))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst111|dffs\(2),
	datad => \inst102|dffs\(2),
	combout => \inst118|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X12_Y10_N1
\Cyrus|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst118|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Cyrus|dffs\(2));

-- Location: LCCOMB_X10_Y9_N2
\inst119|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst119|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & (\DFF40|dffs\(2))) # (!\MODE~combout\(1) & ((\Cyrus|dffs\(2))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \DFF40|dffs\(2),
	datad => \Cyrus|dffs\(2),
	combout => \inst119|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X10_Y9_N3
\inst111|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst119|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst111|dffs\(2));

-- Location: LCCOMB_X9_Y12_N2
\inst159|auto_generated|result_node[2]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~54_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst102|dffs\(2))) # (!\ADDR~combout\(1) & ((\inst111|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|dffs\(2),
	datab => \ADDR~combout\(1),
	datac => \inst111|dffs\(2),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[2]~54_combout\);

-- Location: LCCOMB_X9_Y12_N8
\inst159|auto_generated|result_node[2]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~55_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[2]~53_combout\) # (\inst159|auto_generated|result_node[2]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst159|auto_generated|result_node[2]~53_combout\,
	datad => \inst159|auto_generated|result_node[2]~54_combout\,
	combout => \inst159|auto_generated|result_node[2]~55_combout\);

-- Location: LCCOMB_X9_Y6_N2
\inst159|auto_generated|result_node[2]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~58_combout\ = (\inst159|auto_generated|result_node[2]~55_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[2]~57_combout\) # (\inst159|auto_generated|result_node[2]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[2]~57_combout\,
	datab => \inst159|auto_generated|result_node[2]~56_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst159|auto_generated|result_node[2]~55_combout\,
	combout => \inst159|auto_generated|result_node[2]~58_combout\);

-- Location: LCCOMB_X13_Y11_N20
\inst138|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst138|$00000|auto_generated|result_node[2]~2_combout\ = ((\MODE~combout\(1) & ((\inst131|dffs\(2)))) # (!\MODE~combout\(1) & (\inst129|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst129|dffs\(2),
	datab => \inst131|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \MODE~combout\(0),
	combout => \inst138|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X13_Y11_N21
\inst130|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst138|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst130|dffs\(2));

-- Location: LCCOMB_X12_Y11_N16
\inst139|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst139|$00000|auto_generated|result_node[2]~2_combout\ = ((\MODE~combout\(1) & ((\inst140|dffs\(2)))) # (!\MODE~combout\(1) & (\inst130|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst130|dffs\(2),
	datac => \inst140|dffs\(2),
	datad => \MODE~combout\(1),
	combout => \inst139|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X12_Y11_N17
\inst131|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst139|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst131|dffs\(2));

-- Location: LCCOMB_X14_Y10_N16
\inst144|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst144|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & (\inst141|dffs\(2))) # (!\MODE~combout\(1) & ((\inst131|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst141|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst131|dffs\(2),
	combout => \inst144|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X14_Y10_N17
\inst140|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst144|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst140|dffs\(2));

-- Location: LCCOMB_X10_Y11_N20
\inst151|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst151|$00000|auto_generated|result_node[2]~1_combout\ = (!\MODE~combout\(1) & (\MODE~combout\(0) & \inst142|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datad => \inst142|dffs\(2),
	combout => \inst151|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X10_Y11_N21
\inst143|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst151|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst143|dffs\(2));

-- Location: LCCOMB_X10_Y11_N12
\inst146|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst146|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & (\inst143|dffs\(2))) # (!\MODE~combout\(1) & ((\inst141|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst143|dffs\(2),
	datad => \inst141|dffs\(2),
	combout => \inst146|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X10_Y11_N13
\inst142|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst146|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst142|dffs\(2));

-- Location: LCCOMB_X12_Y11_N24
\inst145|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst145|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & ((\inst142|dffs\(2)))) # (!\MODE~combout\(1) & (\inst140|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst140|dffs\(2),
	datac => \inst142|dffs\(2),
	combout => \inst145|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X12_Y11_N25
\inst141|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst145|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst141|dffs\(2));

-- Location: LCCOMB_X10_Y11_N30
\inst159|auto_generated|_~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~85_combout\ = (\ADDR~combout\(0) & ((\inst142|dffs\(2)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst143|dffs\(2) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142|dffs\(2),
	datab => \ADDR~combout\(0),
	datac => \inst143|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~85_combout\);

-- Location: LCCOMB_X10_Y11_N0
\inst159|auto_generated|_~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~86_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~85_combout\ & ((\inst140|dffs\(2)))) # (!\inst159|auto_generated|_~85_combout\ & (\inst141|dffs\(2))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst141|dffs\(2),
	datac => \inst140|dffs\(2),
	datad => \inst159|auto_generated|_~85_combout\,
	combout => \inst159|auto_generated|_~86_combout\);

-- Location: LCCOMB_X10_Y11_N18
\inst159|auto_generated|result_node[2]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~52_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst159|auto_generated|_~84_combout\)) # (!\ADDR~combout\(2) & ((\inst159|auto_generated|_~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~84_combout\,
	datab => \inst159|auto_generated|_~86_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|result_node[2]~52_combout\);

-- Location: LCCOMB_X9_Y6_N16
\inst159|auto_generated|result_node[2]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~59_combout\ = (\inst159|auto_generated|result_node[5]~0_combout\ & ((\inst159|auto_generated|result_node[2]~52_combout\) # ((\inst159|auto_generated|result_node[2]~58_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[5]~0_combout\,
	datab => \inst159|auto_generated|result_node[2]~58_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst159|auto_generated|result_node[2]~52_combout\,
	combout => \inst159|auto_generated|result_node[2]~59_combout\);

-- Location: LCCOMB_X14_Y7_N22
\inst48|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & (\inst41|dffs\(2))) # (!\MODE~combout\(1) & ((\inst39|dffs\(2))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|dffs\(2),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst39|dffs\(2),
	combout => \inst48|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X14_Y7_N23
\inst40|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst48|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst40|dffs\(2));

-- Location: LCCOMB_X14_Y7_N16
\inst47|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst47|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & ((\inst40|dffs\(2)))) # (!\MODE~combout\(1) & (\Ricky|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ricky|dffs\(2),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst40|dffs\(2),
	combout => \inst47|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X14_Y7_N17
\inst39|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst47|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst39|dffs\(2));

-- Location: LCCOMB_X12_Y7_N26
\inst46|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst46|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & ((\inst39|dffs\(2)))) # (!\MODE~combout\(1) & (\inst30|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst30|dffs\(2),
	datac => \inst39|dffs\(2),
	datad => \MODE~combout\(0),
	combout => \inst46|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X12_Y7_N27
\Ricky|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst46|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ricky|dffs\(2));

-- Location: LCCOMB_X12_Y7_N0
\inst34|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & ((\Ricky|dffs\(2)))) # (!\MODE~combout\(1) & (\DFF10|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \DFF10|dffs\(2),
	datad => \Ricky|dffs\(2),
	combout => \inst34|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X12_Y7_N1
\inst30|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst34|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst30|dffs\(2));

-- Location: LCCOMB_X9_Y7_N28
\inst33|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & (\inst30|dffs\(2))) # (!\MODE~combout\(1) & ((\inst28|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst30|dffs\(2),
	datac => \inst28|dffs\(2),
	combout => \inst33|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X9_Y7_N29
\DFF10|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst33|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF10|dffs\(2));

-- Location: LCCOMB_X10_Y7_N10
\inst32|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & ((\DFF10|dffs\(2)))) # (!\MODE~combout\(1) & (\RANDY|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RANDY|dffs\(2),
	datab => \DFF10|dffs\(2),
	datad => \MODE~combout\(1),
	combout => \inst32|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X10_Y7_N11
\inst28|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst32|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|dffs\(2));

-- Location: LCCOMB_X9_Y7_N30
\inst31|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & (\inst28|dffs\(2))) # (!\MODE~combout\(1) & ((\inst19|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst28|dffs\(2),
	datad => \inst19|dffs\(2),
	combout => \inst31|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X9_Y7_N31
\RANDY|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst31|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RANDY|dffs\(2));

-- Location: LCCOMB_X10_Y7_N8
\inst27|$00000|auto_generated|result_node[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|$00000|auto_generated|result_node[2]~0_combout\ = ((\MODE~combout\(1) & ((\RANDY|dffs\(2)))) # (!\MODE~combout\(1) & (\inst18|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst18|dffs\(2),
	datac => \RANDY|dffs\(2),
	datad => \MODE~combout\(0),
	combout => \inst27|$00000|auto_generated|result_node[2]~0_combout\);

-- Location: LCFF_X10_Y7_N9
\inst19|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst27|$00000|auto_generated|result_node[2]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|dffs\(2));

-- Location: LCCOMB_X15_Y7_N26
\inst26|$00000|auto_generated|result_node[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|$00000|auto_generated|result_node[2]~0_combout\ = ((\MODE~combout\(1) & (\inst19|dffs\(2))) # (!\MODE~combout\(1) & ((\inst17|dffs\(2))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst19|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst17|dffs\(2),
	combout => \inst26|$00000|auto_generated|result_node[2]~0_combout\);

-- Location: LCFF_X15_Y7_N27
\inst18|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst26|$00000|auto_generated|result_node[2]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|dffs\(2));

-- Location: LCCOMB_X12_Y8_N24
\inst25|$00000|auto_generated|result_node[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|result_node[2]~0_combout\ = ((\MODE~combout\(1) & ((\inst18|dffs\(2)))) # (!\MODE~combout\(1) & (\Trevor|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \Trevor|dffs\(2),
	datad => \inst18|dffs\(2),
	combout => \inst25|$00000|auto_generated|result_node[2]~0_combout\);

-- Location: LCFF_X12_Y8_N25
\inst17|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst25|$00000|auto_generated|result_node[2]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|dffs\(2));

-- Location: LCCOMB_X15_Y7_N4
\inst24|$00000|auto_generated|result_node[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|$00000|auto_generated|result_node[2]~0_combout\ = ((\MODE~combout\(1) & (\inst17|dffs\(2))) # (!\MODE~combout\(1) & ((\inst4|dffs\(2))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst17|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst4|dffs\(2),
	combout => \inst24|$00000|auto_generated|result_node[2]~0_combout\);

-- Location: LCFF_X15_Y7_N5
\Trevor|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst24|$00000|auto_generated|result_node[2]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Trevor|dffs\(2));

-- Location: LCCOMB_X12_Y8_N28
\inst8|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|$00000|auto_generated|result_node[2]~3_combout\ = (\MODE~combout\(1) & (\Trevor|dffs\(2))) # (!\MODE~combout\(1) & ((\inst3|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \Trevor|dffs\(2),
	datad => \inst3|dffs\(2),
	combout => \inst8|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X12_Y8_N29
\inst4|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst8|$00000|auto_generated|result_node[2]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(2));

-- Location: LCCOMB_X14_Y9_N4
\inst7|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[2]~3_combout\ = (\MODE~combout\(1) & (\inst4|dffs\(2))) # (!\MODE~combout\(1) & ((\inst2|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst2|dffs\(2),
	combout => \inst7|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X14_Y9_N5
\inst3|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst7|$00000|auto_generated|result_node[2]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dffs\(2));

-- Location: LCCOMB_X15_Y9_N30
\inst6|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|$00000|auto_generated|result_node[2]~3_combout\ = (\MODE~combout\(1) & (\inst3|dffs\(2))) # (!\MODE~combout\(1) & ((\Corey|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \Corey|dffs\(2),
	combout => \inst6|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X15_Y9_N31
\inst2|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst6|$00000|auto_generated|result_node[2]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|dffs\(2));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA(2),
	combout => \DATA~combout\(2));

-- Location: LCCOMB_X14_Y9_N10
\inst5|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[2]~3_combout\ = (\MODE~combout\(1) & (\inst2|dffs\(2))) # (!\MODE~combout\(1) & ((\DATA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \DATA~combout\(2),
	combout => \inst5|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X14_Y9_N11
\Corey|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst5|$00000|auto_generated|result_node[2]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corey|dffs\(2));

-- Location: LCCOMB_X12_Y8_N10
\inst159|auto_generated|_~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~87_combout\ = (\ADDR~combout\(0) & (((\inst3|dffs\(2)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst4|dffs\(2) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(2),
	datab => \inst3|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~87_combout\);

-- Location: LCCOMB_X9_Y9_N18
\inst159|auto_generated|_~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~88_combout\ = (\inst159|auto_generated|_~87_combout\ & (((\Corey|dffs\(2)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~87_combout\ & (\inst2|dffs\(2) & ((\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dffs\(2),
	datab => \Corey|dffs\(2),
	datac => \inst159|auto_generated|_~87_combout\,
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~88_combout\);

-- Location: LCCOMB_X9_Y6_N26
\inst159|auto_generated|_~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~155_combout\ = ((!\ADDR~combout\(2) & (\inst159|auto_generated|_~88_combout\ & !\ADDR~combout\(3)))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst159|auto_generated|_~88_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(4),
	combout => \inst159|auto_generated|_~155_combout\);

-- Location: LCCOMB_X13_Y7_N0
\inst159|auto_generated|_~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~102_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\DFF10|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst30|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|dffs\(2),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \DFF10|dffs\(2),
	combout => \inst159|auto_generated|_~102_combout\);

-- Location: LCCOMB_X14_Y8_N20
\inst159|auto_generated|_~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~99_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst18|dffs\(2))) # (!\ADDR~combout\(0) & ((\inst19|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(1),
	datac => \inst18|dffs\(2),
	datad => \inst19|dffs\(2),
	combout => \inst159|auto_generated|_~99_combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst159|auto_generated|_~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~100_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\Trevor|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst17|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst17|dffs\(2),
	datad => \Trevor|dffs\(2),
	combout => \inst159|auto_generated|_~100_combout\);

-- Location: LCCOMB_X14_Y8_N10
\inst159|auto_generated|_~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~101_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|_~99_combout\) # (\inst159|auto_generated|_~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~99_combout\,
	datad => \inst159|auto_generated|_~100_combout\,
	combout => \inst159|auto_generated|_~101_combout\);

-- Location: LCCOMB_X14_Y8_N8
\inst159|auto_generated|_~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~104_combout\ = (\inst159|auto_generated|_~101_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|_~103_combout\) # (\inst159|auto_generated|_~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~103_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|_~102_combout\,
	datad => \inst159|auto_generated|_~101_combout\,
	combout => \inst159|auto_generated|_~104_combout\);

-- Location: LCCOMB_X15_Y6_N30
\inst159|auto_generated|_~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~94_combout\ = (\inst159|auto_generated|_~93_combout\ & (((\Ricky|dffs\(2))) # (!\ADDR~combout\(1)))) # (!\inst159|auto_generated|_~93_combout\ & (\ADDR~combout\(1) & ((\inst39|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~93_combout\,
	datab => \ADDR~combout\(1),
	datac => \Ricky|dffs\(2),
	datad => \inst39|dffs\(2),
	combout => \inst159|auto_generated|_~94_combout\);

-- Location: LCCOMB_X14_Y6_N8
\inst159|auto_generated|_~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~95_combout\ = (\ADDR~combout\(5) & (\inst159|auto_generated|_~94_combout\ & (!\ADDR~combout\(3) & \ADDR~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(5),
	datab => \inst159|auto_generated|_~94_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|_~95_combout\);

-- Location: LCCOMB_X14_Y6_N6
\inst159|auto_generated|_~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~105_combout\ = (\inst159|auto_generated|_~98_combout\) # ((\inst159|auto_generated|_~95_combout\) # ((\inst159|auto_generated|_~104_combout\ & \inst159|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~98_combout\,
	datab => \inst159|auto_generated|_~104_combout\,
	datac => \inst159|auto_generated|_~95_combout\,
	datad => \inst159|auto_generated|_~35_combout\,
	combout => \inst159|auto_generated|_~105_combout\);

-- Location: LCCOMB_X17_Y10_N6
\inst96|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst96|$00000|auto_generated|result_node[2]~2_combout\ = (\MODE~combout\(1) & (\inst95|dffs\(2))) # (!\MODE~combout\(1) & ((\inst85|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|dffs\(2),
	datab => \MODE~combout\(1),
	datac => \inst85|dffs\(2),
	combout => \inst96|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X17_Y10_N7
\inst94|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst96|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst94|dffs\(2));

-- Location: LCCOMB_X15_Y10_N26
\inst93|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|$00000|auto_generated|result_node[2]~2_combout\ = ((\MODE~combout\(1) & ((\inst94|dffs\(2)))) # (!\MODE~combout\(1) & (\DFF30|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF30|dffs\(2),
	datab => \MODE~combout\(1),
	datac => \MODE~combout\(0),
	datad => \inst94|dffs\(2),
	combout => \inst93|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X15_Y10_N27
\inst85|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst93|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst85|dffs\(2));

-- Location: LCCOMB_X12_Y12_N24
\inst92|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|$00000|auto_generated|result_node[2]~2_combout\ = ((\MODE~combout\(1) & ((\inst85|dffs\(2)))) # (!\MODE~combout\(1) & (\inst83|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst83|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst85|dffs\(2),
	combout => \inst92|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X12_Y12_N25
\DFF30|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst92|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF30|dffs\(2));

-- Location: LCCOMB_X12_Y12_N18
\inst91|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|$00000|auto_generated|result_node[2]~2_combout\ = ((\MODE~combout\(1) & ((\DFF30|dffs\(2)))) # (!\MODE~combout\(1) & (\GeorgeGreen|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeorgeGreen|dffs\(2),
	datab => \MODE~combout\(1),
	datac => \DFF30|dffs\(2),
	datad => \MODE~combout\(0),
	combout => \inst91|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X12_Y12_N19
\inst83|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst91|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst83|dffs\(2));

-- Location: LCCOMB_X13_Y12_N26
\inst90|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|$00000|auto_generated|result_node[2]~2_combout\ = ((\MODE~combout\(1) & ((\inst83|dffs\(2)))) # (!\MODE~combout\(1) & (\inst74|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst74|dffs\(2),
	datad => \inst83|dffs\(2),
	combout => \inst90|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X13_Y12_N27
\GeorgeGreen|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst90|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeorgeGreen|dffs\(2));

-- Location: LCCOMB_X12_Y9_N12
\inst78|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst78|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & ((\GeorgeGreen|dffs\(2)))) # (!\MODE~combout\(1) & (\inst73|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst73|dffs\(2),
	datac => \GeorgeGreen|dffs\(2),
	combout => \inst78|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X12_Y9_N13
\inst74|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst78|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst74|dffs\(2));

-- Location: LCCOMB_X10_Y8_N10
\inst77|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst77|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & (\inst74|dffs\(2))) # (!\MODE~combout\(1) & ((\inst72|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst74|dffs\(2),
	datad => \inst72|dffs\(2),
	combout => \inst77|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X10_Y8_N11
\inst73|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst77|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst73|dffs\(2));

-- Location: LCCOMB_X12_Y6_N28
\inst69|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst69|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & ((\inst62|dffs\(2)))) # (!\MODE~combout\(1) & (\DFF20|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF20|dffs\(2),
	datab => \MODE~combout\(1),
	datac => \MODE~combout\(0),
	datad => \inst62|dffs\(2),
	combout => \inst69|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X12_Y6_N29
\inst61|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst69|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst61|dffs\(2));

-- Location: LCCOMB_X10_Y12_N26
\inst70|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & ((\inst63|dffs\(2)))) # (!\MODE~combout\(1) & (\inst61|dffs\(2)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst61|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst63|dffs\(2),
	combout => \inst70|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X10_Y12_N27
\inst62|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst70|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|dffs\(2));

-- Location: LCCOMB_X12_Y6_N6
\inst71|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|$00000|auto_generated|result_node[2]~1_combout\ = ((\MODE~combout\(1) & (\Bubbles|dffs\(2))) # (!\MODE~combout\(1) & ((\inst62|dffs\(2))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Bubbles|dffs\(2),
	datac => \MODE~combout\(0),
	datad => \inst62|dffs\(2),
	combout => \inst71|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X12_Y6_N7
\inst63|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst71|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|dffs\(2));

-- Location: LCCOMB_X10_Y12_N10
\inst75|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst75|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & ((\inst72|dffs\(2)))) # (!\MODE~combout\(1) & (\inst63|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst63|dffs\(2),
	datac => \MODE~combout\(1),
	datad => \inst72|dffs\(2),
	combout => \inst75|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X10_Y12_N11
\Bubbles|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst75|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bubbles|dffs\(2));

-- Location: LCCOMB_X12_Y9_N26
\inst76|$00000|auto_generated|result_node[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst76|$00000|auto_generated|result_node[2]~1_combout\ = (\MODE~combout\(1) & (\inst73|dffs\(2))) # (!\MODE~combout\(1) & ((\Bubbles|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst73|dffs\(2),
	datad => \Bubbles|dffs\(2),
	combout => \inst76|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: LCFF_X12_Y9_N27
\inst72|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst76|$00000|auto_generated|result_node[2]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|dffs\(2));

-- Location: LCCOMB_X9_Y6_N30
\inst159|auto_generated|result_node[2]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~65_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\Bubbles|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst72|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst72|dffs\(2),
	datac => \Bubbles|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[2]~65_combout\);

-- Location: LCCOMB_X10_Y8_N26
\inst159|auto_generated|result_node[2]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~64_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst73|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst74|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst74|dffs\(2),
	datab => \inst73|dffs\(2),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|result_node[2]~64_combout\);

-- Location: LCCOMB_X9_Y6_N4
\inst159|auto_generated|result_node[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~66_combout\ = (\inst159|auto_generated|result_node[2]~63_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[2]~65_combout\) # (\inst159|auto_generated|result_node[2]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[2]~63_combout\,
	datab => \inst159|auto_generated|result_node[2]~65_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst159|auto_generated|result_node[2]~64_combout\,
	combout => \inst159|auto_generated|result_node[2]~66_combout\);

-- Location: LCCOMB_X9_Y6_N22
\inst159|auto_generated|result_node[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~67_combout\ = (\ADDR~combout\(4) & ((\inst159|auto_generated|result_node[2]~60_combout\) # ((\ADDR~combout\(3) & \inst159|auto_generated|result_node[2]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[2]~60_combout\,
	datab => \ADDR~combout\(3),
	datac => \inst159|auto_generated|result_node[2]~66_combout\,
	datad => \ADDR~combout\(4),
	combout => \inst159|auto_generated|result_node[2]~67_combout\);

-- Location: LCCOMB_X9_Y6_N8
\inst159|auto_generated|result_node[2]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[2]~68_combout\ = (\inst159|auto_generated|result_node[2]~59_combout\) # ((\inst159|auto_generated|_~105_combout\ & (\inst159|auto_generated|_~155_combout\)) # (!\inst159|auto_generated|_~105_combout\ & 
-- ((\inst159|auto_generated|result_node[2]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[2]~59_combout\,
	datab => \inst159|auto_generated|_~155_combout\,
	datac => \inst159|auto_generated|_~105_combout\,
	datad => \inst159|auto_generated|result_node[2]~67_combout\,
	combout => \inst159|auto_generated|result_node[2]~68_combout\);

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA(1),
	combout => \DATA~combout\(1));

-- Location: LCCOMB_X14_Y9_N0
\inst5|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[1]~4_combout\ = (\MODE~combout\(1) & (\inst2|dffs\(1))) # (!\MODE~combout\(1) & ((\DATA~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \DATA~combout\(1),
	combout => \inst5|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X14_Y9_N1
\Corey|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst5|$00000|auto_generated|result_node[1]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corey|dffs\(1));

-- Location: LCCOMB_X15_Y9_N20
\inst6|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|$00000|auto_generated|result_node[1]~4_combout\ = (\MODE~combout\(1) & (\inst3|dffs\(1))) # (!\MODE~combout\(1) & ((\Corey|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dffs\(1),
	datab => \MODE~combout\(1),
	datac => \Corey|dffs\(1),
	combout => \inst6|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X15_Y9_N21
\inst2|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst6|$00000|auto_generated|result_node[1]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|dffs\(1));

-- Location: LCCOMB_X14_Y9_N28
\inst11|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|$00000|auto_generated|result_node[1]~0_combout\ = ((\MODE~combout\(1) & (\inst4|dffs\(1))) # (!\MODE~combout\(1) & ((\inst2|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(1),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst2|dffs\(1),
	combout => \inst11|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X14_Y9_N29
\inst3|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dffs\(1));

-- Location: LCCOMB_X14_Y9_N22
\inst159|auto_generated|_~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~110_combout\ = (\ADDR~combout\(0) & (((\inst3|dffs\(1)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst4|dffs\(1) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(1),
	datab => \inst3|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~110_combout\);

-- Location: LCCOMB_X15_Y9_N28
\inst159|auto_generated|_~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~111_combout\ = (\inst159|auto_generated|_~110_combout\ & ((\Corey|dffs\(1)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~110_combout\ & (((\inst2|dffs\(1) & \ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corey|dffs\(1),
	datab => \inst159|auto_generated|_~110_combout\,
	datac => \inst2|dffs\(1),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~111_combout\);

-- Location: LCCOMB_X17_Y9_N10
\inst159|auto_generated|_~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~156_combout\ = ((\inst159|auto_generated|_~111_combout\ & (!\ADDR~combout\(3) & !\ADDR~combout\(2)))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst159|auto_generated|_~111_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|_~156_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst96|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst96|$00000|auto_generated|result_node[1]~3_combout\ = (\MODE~combout\(1) & (\inst95|dffs\(1))) # (!\MODE~combout\(1) & ((\inst85|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|dffs\(1),
	datab => \MODE~combout\(1),
	datac => \inst85|dffs\(1),
	combout => \inst96|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X17_Y10_N25
\inst94|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst96|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst94|dffs\(1));

-- Location: LCCOMB_X15_Y10_N20
\inst93|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|$00000|auto_generated|result_node[1]~3_combout\ = ((\MODE~combout\(1) & ((\inst94|dffs\(1)))) # (!\MODE~combout\(1) & (\DFF30|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \DFF30|dffs\(1),
	datad => \inst94|dffs\(1),
	combout => \inst93|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X15_Y10_N21
\inst85|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst93|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst85|dffs\(1));

-- Location: LCCOMB_X12_Y12_N8
\inst92|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|$00000|auto_generated|result_node[1]~3_combout\ = ((\MODE~combout\(1) & ((\inst85|dffs\(1)))) # (!\MODE~combout\(1) & (\inst83|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst83|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst85|dffs\(1),
	combout => \inst92|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X12_Y12_N9
\DFF30|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst92|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF30|dffs\(1));

-- Location: LCCOMB_X12_Y12_N28
\inst87|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|$00000|auto_generated|result_node[1]~1_combout\ = (\MODE~combout\(1) & ((\DFF30|dffs\(1)))) # (!\MODE~combout\(1) & (\GeorgeGreen|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeorgeGreen|dffs\(1),
	datab => \DFF30|dffs\(1),
	datac => \MODE~combout\(1),
	combout => \inst87|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X12_Y12_N29
\inst83|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst87|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst83|dffs\(1));

-- Location: LCCOMB_X13_Y12_N22
\inst86|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst86|$00000|auto_generated|result_node[1]~1_combout\ = (\MODE~combout\(1) & ((\inst83|dffs\(1)))) # (!\MODE~combout\(1) & (\inst74|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst74|dffs\(1),
	datab => \inst83|dffs\(1),
	datad => \MODE~combout\(1),
	combout => \inst86|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X13_Y12_N23
\GeorgeGreen|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst86|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeorgeGreen|dffs\(1));

-- Location: LCCOMB_X13_Y12_N14
\inst159|auto_generated|_~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~113_combout\ = (\inst159|auto_generated|_~112_combout\ & (((\GeorgeGreen|dffs\(1)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~112_combout\ & (\inst83|dffs\(1) & ((\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~112_combout\,
	datab => \inst83|dffs\(1),
	datac => \GeorgeGreen|dffs\(1),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~113_combout\);

-- Location: LCCOMB_X14_Y12_N16
\inst159|auto_generated|result_node[1]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~77_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst159|auto_generated|_~113_combout\))) # (!\ADDR~combout\(2) & (\inst159|auto_generated|_~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~115_combout\,
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(3),
	datad => \inst159|auto_generated|_~113_combout\,
	combout => \inst159|auto_generated|result_node[1]~77_combout\);

-- Location: LCCOMB_X10_Y12_N0
\inst75|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst75|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & (\inst72|dffs\(1))) # (!\MODE~combout\(1) & ((\inst63|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|dffs\(1),
	datab => \inst63|dffs\(1),
	datac => \MODE~combout\(1),
	combout => \inst75|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X10_Y12_N1
\Bubbles|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst75|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bubbles|dffs\(1));

-- Location: LCCOMB_X12_Y6_N16
\inst65|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & ((\inst62|dffs\(1)))) # (!\MODE~combout\(1) & (\DFF20|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF20|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst62|dffs\(1),
	combout => \inst65|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X12_Y6_N17
\inst61|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst65|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst61|dffs\(1));

-- Location: LCCOMB_X10_Y12_N20
\inst70|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & (\inst63|dffs\(1))) # (!\MODE~combout\(1) & ((\inst61|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst63|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst61|dffs\(1),
	combout => \inst70|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X10_Y12_N21
\inst62|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst70|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|dffs\(1));

-- Location: LCCOMB_X12_Y6_N26
\inst71|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & (\Bubbles|dffs\(1))) # (!\MODE~combout\(1) & ((\inst62|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Bubbles|dffs\(1),
	datac => \MODE~combout\(0),
	datad => \inst62|dffs\(1),
	combout => \inst71|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X12_Y6_N27
\inst63|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst71|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|dffs\(1));

-- Location: LCCOMB_X13_Y9_N26
\inst159|auto_generated|result_node[1]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~78_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst62|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst63|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst63|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \inst62|dffs\(1),
	combout => \inst159|auto_generated|result_node[1]~78_combout\);

-- Location: LCCOMB_X13_Y6_N14
\inst60|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst60|$00000|auto_generated|result_node[1]~1_combout\ = ((\MODE~combout\(1) & ((\DFF20|dffs\(1)))) # (!\MODE~combout\(1) & (\inst51|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|dffs\(1),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \DFF20|dffs\(1),
	combout => \inst60|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X13_Y6_N15
\inst52|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst60|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst52|dffs\(1));

-- Location: LCCOMB_X10_Y6_N28
\inst64|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & (\inst61|dffs\(1))) # (!\MODE~combout\(1) & ((\inst52|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst61|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst52|dffs\(1),
	combout => \inst64|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X10_Y6_N29
\DFF20|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst64|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF20|dffs\(1));

-- Location: LCCOMB_X14_Y6_N4
\inst159|auto_generated|result_node[1]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~79_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\DFF20|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst61|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst61|dffs\(1),
	datac => \DFF20|dffs\(1),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[1]~79_combout\);

-- Location: LCCOMB_X13_Y9_N4
\inst159|auto_generated|result_node[1]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~80_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[1]~78_combout\) # (\inst159|auto_generated|result_node[1]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst159|auto_generated|result_node[1]~78_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst159|auto_generated|result_node[1]~79_combout\,
	combout => \inst159|auto_generated|result_node[1]~80_combout\);

-- Location: LCCOMB_X12_Y9_N16
\inst82|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & ((\GeorgeGreen|dffs\(1)))) # (!\MODE~combout\(1) & (\inst73|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst73|dffs\(1),
	datac => \GeorgeGreen|dffs\(1),
	datad => \MODE~combout\(1),
	combout => \inst82|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X12_Y9_N17
\inst74|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst82|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst74|dffs\(1));

-- Location: LCCOMB_X10_Y8_N12
\inst81|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst81|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & ((\inst74|dffs\(1)))) # (!\MODE~combout\(1) & (\inst72|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|dffs\(1),
	datab => \MODE~combout\(1),
	datac => \inst74|dffs\(1),
	datad => \MODE~combout\(0),
	combout => \inst81|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X10_Y8_N13
\inst73|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst81|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst73|dffs\(1));

-- Location: LCCOMB_X13_Y9_N30
\inst159|auto_generated|result_node[1]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~81_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst73|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst74|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst74|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst73|dffs\(1),
	combout => \inst159|auto_generated|result_node[1]~81_combout\);

-- Location: LCCOMB_X13_Y9_N10
\inst159|auto_generated|result_node[1]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~83_combout\ = (\inst159|auto_generated|result_node[1]~80_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[1]~82_combout\) # (\inst159|auto_generated|result_node[1]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[1]~82_combout\,
	datab => \inst159|auto_generated|result_node[1]~80_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst159|auto_generated|result_node[1]~81_combout\,
	combout => \inst159|auto_generated|result_node[1]~83_combout\);

-- Location: LCCOMB_X17_Y9_N2
\inst159|auto_generated|result_node[1]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~84_combout\ = (\ADDR~combout\(4) & ((\inst159|auto_generated|result_node[1]~77_combout\) # ((\ADDR~combout\(3) & \inst159|auto_generated|result_node[1]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst159|auto_generated|result_node[1]~77_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst159|auto_generated|result_node[1]~83_combout\,
	combout => \inst159|auto_generated|result_node[1]~84_combout\);

-- Location: LCCOMB_X13_Y6_N20
\inst159|auto_generated|_~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~119_combout\ = (\ADDR~combout\(0) & ((\inst51|dffs\(1)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst52|dffs\(1) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \inst52|dffs\(1),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~119_combout\);

-- Location: LCCOMB_X13_Y6_N12
\inst59|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst59|$00000|auto_generated|result_node[1]~1_combout\ = ((\MODE~combout\(1) & (\inst52|dffs\(1))) # (!\MODE~combout\(1) & ((\inst50|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst52|dffs\(1),
	datad => \inst50|dffs\(1),
	combout => \inst59|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X13_Y6_N13
\inst51|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst59|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst51|dffs\(1));

-- Location: LCCOMB_X12_Y8_N22
\inst12|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|$00000|auto_generated|result_node[1]~0_combout\ = ((\MODE~combout\(1) & (\Trevor|dffs\(1))) # (!\MODE~combout\(1) & ((\inst3|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \Trevor|dffs\(1),
	datad => \inst3|dffs\(1),
	combout => \inst12|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X12_Y8_N23
\inst4|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst12|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(1));

-- Location: LCCOMB_X15_Y7_N20
\inst20|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|result_node[1]~3_combout\ = (\MODE~combout\(1) & ((\inst17|dffs\(1)))) # (!\MODE~combout\(1) & (\inst4|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst4|dffs\(1),
	datad => \inst17|dffs\(1),
	combout => \inst20|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X15_Y7_N21
\Trevor|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst20|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Trevor|dffs\(1));

-- Location: LCCOMB_X12_Y8_N30
\inst21|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[1]~3_combout\ = (\MODE~combout\(1) & ((\inst18|dffs\(1)))) # (!\MODE~combout\(1) & (\Trevor|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \Trevor|dffs\(1),
	datad => \inst18|dffs\(1),
	combout => \inst21|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X12_Y8_N31
\inst17|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst21|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|dffs\(1));

-- Location: LCCOMB_X15_Y7_N6
\inst26|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|$00000|auto_generated|result_node[1]~1_combout\ = ((\MODE~combout\(1) & (\inst19|dffs\(1))) # (!\MODE~combout\(1) & ((\inst17|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst19|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst17|dffs\(1),
	combout => \inst26|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X15_Y7_N7
\inst18|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst26|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|dffs\(1));

-- Location: LCCOMB_X10_Y7_N18
\inst27|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|$00000|auto_generated|result_node[1]~1_combout\ = ((\MODE~combout\(1) & (\RANDY|dffs\(1))) # (!\MODE~combout\(1) & ((\inst18|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \RANDY|dffs\(1),
	datac => \inst18|dffs\(1),
	datad => \MODE~combout\(1),
	combout => \inst27|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X10_Y7_N19
\inst19|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst27|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|dffs\(1));

-- Location: LCCOMB_X9_Y7_N16
\inst31|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[1]~3_combout\ = (\MODE~combout\(1) & ((\inst28|dffs\(1)))) # (!\MODE~combout\(1) & (\inst19|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst19|dffs\(1),
	datac => \inst28|dffs\(1),
	combout => \inst31|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X9_Y7_N17
\RANDY|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst31|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RANDY|dffs\(1));

-- Location: LCCOMB_X10_Y7_N12
\inst32|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|$00000|auto_generated|result_node[1]~3_combout\ = (\MODE~combout\(1) & (\DFF10|dffs\(1))) # (!\MODE~combout\(1) & ((\RANDY|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \DFF10|dffs\(1),
	datad => \RANDY|dffs\(1),
	combout => \inst32|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X10_Y7_N13
\inst28|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst32|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|dffs\(1));

-- Location: LCCOMB_X9_Y7_N22
\inst37|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|$00000|auto_generated|result_node[1]~1_combout\ = ((\MODE~combout\(1) & (\inst30|dffs\(1))) # (!\MODE~combout\(1) & ((\inst28|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst30|dffs\(1),
	datac => \inst28|dffs\(1),
	datad => \MODE~combout\(1),
	combout => \inst37|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X9_Y7_N23
\DFF10|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst37|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF10|dffs\(1));

-- Location: LCCOMB_X12_Y7_N8
\inst38|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst38|$00000|auto_generated|result_node[1]~1_combout\ = ((\MODE~combout\(1) & (\Ricky|dffs\(1))) # (!\MODE~combout\(1) & ((\DFF10|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Ricky|dffs\(1),
	datac => \DFF10|dffs\(1),
	datad => \MODE~combout\(0),
	combout => \inst38|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X12_Y7_N9
\inst30|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst38|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst30|dffs\(1));

-- Location: LCCOMB_X12_Y7_N22
\inst42|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst42|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & ((\inst39|dffs\(1)))) # (!\MODE~combout\(1) & (\inst30|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst30|dffs\(1),
	datad => \inst39|dffs\(1),
	combout => \inst42|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X12_Y7_N23
\Ricky|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst42|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ricky|dffs\(1));

-- Location: LCCOMB_X14_Y7_N8
\inst43|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst43|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & (\inst40|dffs\(1))) # (!\MODE~combout\(1) & ((\Ricky|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|dffs\(1),
	datac => \Ricky|dffs\(1),
	datad => \MODE~combout\(1),
	combout => \inst43|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X14_Y7_N9
\inst39|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst43|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst39|dffs\(1));

-- Location: LCCOMB_X14_Y7_N24
\inst48|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & ((\inst41|dffs\(1)))) # (!\MODE~combout\(1) & (\inst39|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst39|dffs\(1),
	datad => \inst41|dffs\(1),
	combout => \inst48|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X14_Y7_N25
\inst40|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst48|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst40|dffs\(1));

-- Location: LCCOMB_X13_Y7_N18
\inst49|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst49|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & (\Julian|dffs\(1))) # (!\MODE~combout\(1) & ((\inst40|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \Julian|dffs\(1),
	datad => \inst40|dffs\(1),
	combout => \inst49|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X13_Y7_N19
\inst41|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst49|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst41|dffs\(1));

-- Location: LCCOMB_X10_Y6_N6
\inst53|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|$00000|auto_generated|result_node[1]~3_combout\ = (\MODE~combout\(1) & ((\inst50|dffs\(1)))) # (!\MODE~combout\(1) & (\inst41|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst41|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst50|dffs\(1),
	combout => \inst53|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X10_Y6_N7
\Julian|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst53|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Julian|dffs\(1));

-- Location: LCCOMB_X13_Y7_N30
\inst54|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|$00000|auto_generated|result_node[1]~3_combout\ = (\MODE~combout\(1) & (\inst51|dffs\(1))) # (!\MODE~combout\(1) & ((\Julian|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst51|dffs\(1),
	datac => \Julian|dffs\(1),
	combout => \inst54|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X13_Y7_N31
\inst50|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst54|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst50|dffs\(1));

-- Location: LCCOMB_X13_Y7_N10
\inst159|auto_generated|_~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~120_combout\ = (\inst159|auto_generated|_~119_combout\ & ((\Julian|dffs\(1)) # ((!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~119_combout\ & (((\ADDR~combout\(1) & \inst50|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Julian|dffs\(1),
	datab => \inst159|auto_generated|_~119_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst50|dffs\(1),
	combout => \inst159|auto_generated|_~120_combout\);

-- Location: LCCOMB_X17_Y9_N22
\inst159|auto_generated|_~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~121_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst159|auto_generated|_~16_combout\ & \inst159|auto_generated|_~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst159|auto_generated|_~16_combout\,
	datac => \ADDR~combout\(5),
	datad => \inst159|auto_generated|_~120_combout\,
	combout => \inst159|auto_generated|_~121_combout\);

-- Location: LCCOMB_X14_Y8_N26
\inst159|auto_generated|_~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~123_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\Trevor|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst17|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|dffs\(1),
	datab => \ADDR~combout\(1),
	datac => \Trevor|dffs\(1),
	datad => \ADDR~combout\(0),
	combout => \inst159|auto_generated|_~123_combout\);

-- Location: LCCOMB_X9_Y9_N12
\inst159|auto_generated|_~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~122_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst18|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst19|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|dffs\(1),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst18|dffs\(1),
	combout => \inst159|auto_generated|_~122_combout\);

-- Location: LCCOMB_X9_Y9_N14
\inst159|auto_generated|_~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~124_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|_~123_combout\) # (\inst159|auto_generated|_~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst159|auto_generated|_~123_combout\,
	datad => \inst159|auto_generated|_~122_combout\,
	combout => \inst159|auto_generated|_~124_combout\);

-- Location: LCCOMB_X9_Y7_N4
\inst159|auto_generated|_~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~125_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\DFF10|dffs\(1))) # (!\ADDR~combout\(0) & ((\inst30|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \DFF10|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \inst30|dffs\(1),
	combout => \inst159|auto_generated|_~125_combout\);

-- Location: LCCOMB_X9_Y9_N20
\inst159|auto_generated|_~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~127_combout\ = (\inst159|auto_generated|_~124_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|_~126_combout\) # (\inst159|auto_generated|_~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~126_combout\,
	datab => \inst159|auto_generated|_~124_combout\,
	datac => \inst159|auto_generated|_~125_combout\,
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|_~127_combout\);

-- Location: LCCOMB_X17_Y9_N12
\inst159|auto_generated|_~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~118_combout\ = (\inst159|auto_generated|_~117_combout\ & (\ADDR~combout\(5) & (!\ADDR~combout\(3) & \ADDR~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~117_combout\,
	datab => \ADDR~combout\(5),
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|_~118_combout\);

-- Location: LCCOMB_X17_Y9_N20
\inst159|auto_generated|_~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~128_combout\ = (\inst159|auto_generated|_~121_combout\) # ((\inst159|auto_generated|_~118_combout\) # ((\inst159|auto_generated|_~35_combout\ & \inst159|auto_generated|_~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~35_combout\,
	datab => \inst159|auto_generated|_~121_combout\,
	datac => \inst159|auto_generated|_~127_combout\,
	datad => \inst159|auto_generated|_~118_combout\,
	combout => \inst159|auto_generated|_~128_combout\);

-- Location: LCCOMB_X9_Y10_N14
\inst127|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst127|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & ((\inst128|dffs\(1)))) # (!\MODE~combout\(1) & (\inst122|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|dffs\(1),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst128|dffs\(1),
	combout => \inst127|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X9_Y10_N15
\inst123|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst127|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst123|dffs\(1));

-- Location: LCCOMB_X14_Y11_N28
\inst132|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst132|$00000|auto_generated|result_node[1]~1_combout\ = (\MODE~combout\(1) & (\inst129|dffs\(1))) # (!\MODE~combout\(1) & ((\inst123|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst129|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst123|dffs\(1),
	combout => \inst132|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X14_Y11_N29
\inst128|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst132|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst128|dffs\(1));

-- Location: LCCOMB_X14_Y10_N18
\inst150|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst150|$00000|auto_generated|result_node[1]~2_combout\ = ((\MODE~combout\(1) & (\inst143|dffs\(1))) # (!\MODE~combout\(1) & ((\inst141|dffs\(1))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst143|dffs\(1),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst141|dffs\(1),
	combout => \inst150|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X14_Y10_N19
\inst142|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst150|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst142|dffs\(1));

-- Location: LCCOMB_X12_Y11_N2
\inst145|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst145|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & (\inst142|dffs\(1))) # (!\MODE~combout\(1) & ((\inst140|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst142|dffs\(1),
	datad => \inst140|dffs\(1),
	combout => \inst145|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X12_Y11_N3
\inst141|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst145|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst141|dffs\(1));

-- Location: LCCOMB_X14_Y10_N10
\inst144|$00000|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst144|$00000|auto_generated|result_node[1]~2_combout\ = (\MODE~combout\(1) & (\inst141|dffs\(1))) # (!\MODE~combout\(1) & ((\inst131|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst141|dffs\(1),
	datac => \MODE~combout\(1),
	datad => \inst131|dffs\(1),
	combout => \inst144|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: LCFF_X14_Y10_N11
\inst140|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst144|$00000|auto_generated|result_node[1]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst140|dffs\(1));

-- Location: LCCOMB_X12_Y11_N26
\inst139|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst139|$00000|auto_generated|result_node[1]~3_combout\ = ((\MODE~combout\(1) & ((\inst140|dffs\(1)))) # (!\MODE~combout\(1) & (\inst130|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst130|dffs\(1),
	datac => \MODE~combout\(0),
	datad => \inst140|dffs\(1),
	combout => \inst139|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X12_Y11_N27
\inst131|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst139|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst131|dffs\(1));

-- Location: LCCOMB_X13_Y11_N16
\inst138|$00000|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst138|$00000|auto_generated|result_node[1]~3_combout\ = ((\MODE~combout\(1) & ((\inst131|dffs\(1)))) # (!\MODE~combout\(1) & (\inst129|dffs\(1)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst129|dffs\(1),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst131|dffs\(1),
	combout => \inst138|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X13_Y11_N17
\inst130|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst138|$00000|auto_generated|result_node[1]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst130|dffs\(1));

-- Location: LCCOMB_X13_Y9_N22
\inst133|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst133|$00000|auto_generated|result_node[1]~1_combout\ = (\MODE~combout\(1) & ((\inst130|dffs\(1)))) # (!\MODE~combout\(1) & (\inst128|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst128|dffs\(1),
	datac => \inst130|dffs\(1),
	combout => \inst133|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X13_Y9_N23
\inst129|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst133|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst129|dffs\(1));

-- Location: LCCOMB_X13_Y9_N18
\inst159|auto_generated|_~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~106_combout\ = (\ADDR~combout\(0) & ((\inst130|dffs\(1)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((!\ADDR~combout\(1) & \inst131|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst130|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst131|dffs\(1),
	combout => \inst159|auto_generated|_~106_combout\);

-- Location: LCCOMB_X13_Y9_N12
\inst159|auto_generated|_~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~107_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~106_combout\ & ((\inst128|dffs\(1)))) # (!\inst159|auto_generated|_~106_combout\ & (\inst129|dffs\(1))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst129|dffs\(1),
	datac => \inst128|dffs\(1),
	datad => \inst159|auto_generated|_~106_combout\,
	combout => \inst159|auto_generated|_~107_combout\);

-- Location: LCCOMB_X17_Y9_N30
\inst159|auto_generated|result_node[1]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~69_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst159|auto_generated|_~107_combout\))) # (!\ADDR~combout\(2) & (\inst159|auto_generated|_~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~109_combout\,
	datab => \inst159|auto_generated|_~107_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|result_node[1]~69_combout\);

-- Location: LCCOMB_X17_Y9_N0
\inst159|auto_generated|result_node[1]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~76_combout\ = (\inst159|auto_generated|result_node[5]~0_combout\ & ((\inst159|auto_generated|result_node[1]~69_combout\) # ((\inst159|auto_generated|result_node[1]~75_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[1]~75_combout\,
	datab => \ADDR~combout\(3),
	datac => \inst159|auto_generated|result_node[5]~0_combout\,
	datad => \inst159|auto_generated|result_node[1]~69_combout\,
	combout => \inst159|auto_generated|result_node[1]~76_combout\);

-- Location: LCCOMB_X17_Y9_N18
\inst159|auto_generated|result_node[1]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[1]~85_combout\ = (\inst159|auto_generated|result_node[1]~76_combout\) # ((\inst159|auto_generated|_~128_combout\ & (\inst159|auto_generated|_~156_combout\)) # (!\inst159|auto_generated|_~128_combout\ & 
-- ((\inst159|auto_generated|result_node[1]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~156_combout\,
	datab => \inst159|auto_generated|result_node[1]~84_combout\,
	datac => \inst159|auto_generated|_~128_combout\,
	datad => \inst159|auto_generated|result_node[1]~76_combout\,
	combout => \inst159|auto_generated|result_node[1]~85_combout\);

-- Location: LCCOMB_X13_Y6_N2
\inst60|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst60|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & (\DFF20|dffs\(0))) # (!\MODE~combout\(1) & ((\inst51|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF20|dffs\(0),
	datab => \MODE~combout\(1),
	datac => \inst51|dffs\(0),
	datad => \MODE~combout\(0),
	combout => \inst60|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X13_Y6_N3
\inst52|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst60|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst52|dffs\(0));

-- Location: LCCOMB_X10_Y6_N18
\inst53|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|$00000|auto_generated|result_node[0]~4_combout\ = (\MODE~combout\(1) & ((\inst50|dffs\(0)))) # (!\MODE~combout\(1) & (\inst41|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst50|dffs\(0),
	combout => \inst53|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCFF_X10_Y6_N19
\Julian|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst53|$00000|auto_generated|result_node[0]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Julian|dffs\(0));

-- Location: LCCOMB_X13_Y7_N14
\inst58|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst58|$00000|auto_generated|result_node[0]~1_combout\ = ((\MODE~combout\(1) & ((\inst51|dffs\(0)))) # (!\MODE~combout\(1) & (\Julian|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Julian|dffs\(0),
	datac => \MODE~combout\(0),
	datad => \inst51|dffs\(0),
	combout => \inst58|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X13_Y7_N15
\inst50|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst58|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst50|dffs\(0));

-- Location: LCCOMB_X13_Y6_N16
\inst55|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst55|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & (\inst52|dffs\(0))) # (!\MODE~combout\(1) & ((\inst50|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst52|dffs\(0),
	datac => \inst50|dffs\(0),
	datad => \MODE~combout\(1),
	combout => \inst55|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X13_Y6_N17
\inst51|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst55|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst51|dffs\(0));

-- Location: LCCOMB_X13_Y6_N0
\inst159|auto_generated|_~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~142_combout\ = (\ADDR~combout\(0) & (((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst50|dffs\(0))) # (!\ADDR~combout\(1) & ((\inst52|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst52|dffs\(0),
	combout => \inst159|auto_generated|_~142_combout\);

-- Location: LCCOMB_X13_Y6_N22
\inst159|auto_generated|_~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~143_combout\ = (\ADDR~combout\(0) & ((\inst159|auto_generated|_~142_combout\ & (\Julian|dffs\(0))) # (!\inst159|auto_generated|_~142_combout\ & ((\inst51|dffs\(0)))))) # (!\ADDR~combout\(0) & 
-- (((\inst159|auto_generated|_~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Julian|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \inst51|dffs\(0),
	datad => \inst159|auto_generated|_~142_combout\,
	combout => \inst159|auto_generated|_~143_combout\);

-- Location: LCCOMB_X15_Y8_N0
\inst159|auto_generated|_~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~144_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst159|auto_generated|_~16_combout\ & \inst159|auto_generated|_~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~16_combout\,
	datab => \inst159|auto_generated|_~143_combout\,
	datac => \ADDR~combout\(5),
	datad => \ADDR~combout\(4),
	combout => \inst159|auto_generated|_~144_combout\);

-- Location: LCCOMB_X14_Y8_N0
\inst159|auto_generated|_~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~141_combout\ = (\inst159|auto_generated|_~140_combout\ & (\ADDR~combout\(2) & (\ADDR~combout\(5) & !\ADDR~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~140_combout\,
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(5),
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|_~141_combout\);

-- Location: LCCOMB_X15_Y8_N10
\inst159|auto_generated|_~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~151_combout\ = (\inst159|auto_generated|_~144_combout\) # ((\inst159|auto_generated|_~141_combout\) # ((\inst159|auto_generated|_~150_combout\ & \inst159|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~150_combout\,
	datab => \inst159|auto_generated|_~144_combout\,
	datac => \inst159|auto_generated|_~141_combout\,
	datad => \inst159|auto_generated|_~35_combout\,
	combout => \inst159|auto_generated|_~151_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA(0),
	combout => \DATA~combout\(0));

-- Location: LCCOMB_X14_Y9_N8
\inst5|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[0]~5_combout\ = (\MODE~combout\(1) & ((\inst2|dffs\(0)))) # (!\MODE~combout\(1) & (\DATA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \DATA~combout\(0),
	datad => \inst2|dffs\(0),
	combout => \inst5|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X14_Y9_N9
\Corey|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst5|$00000|auto_generated|result_node[0]~5_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corey|dffs\(0));

-- Location: LCCOMB_X15_Y9_N2
\inst10|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|$00000|auto_generated|result_node[0]~0_combout\ = ((\MODE~combout\(1) & (\inst3|dffs\(0))) # (!\MODE~combout\(1) & ((\Corey|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \inst3|dffs\(0),
	datac => \MODE~combout\(0),
	datad => \Corey|dffs\(0),
	combout => \inst10|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCFF_X15_Y9_N3
\inst2|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|$00000|auto_generated|result_node[0]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|dffs\(0));

-- Location: LCCOMB_X14_Y9_N2
\inst7|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[0]~4_combout\ = (\MODE~combout\(1) & (\inst4|dffs\(0))) # (!\MODE~combout\(1) & ((\inst2|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst2|dffs\(0),
	combout => \inst7|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCFF_X14_Y9_N3
\inst3|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst7|$00000|auto_generated|result_node[0]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dffs\(0));

-- Location: LCCOMB_X15_Y9_N8
\inst159|auto_generated|_~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~133_combout\ = (\ADDR~combout\(0) & (((\inst3|dffs\(0)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst4|dffs\(0) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(0),
	datab => \inst3|dffs\(0),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~133_combout\);

-- Location: LCCOMB_X15_Y9_N22
\inst159|auto_generated|_~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~134_combout\ = (\ADDR~combout\(1) & ((\inst159|auto_generated|_~133_combout\ & (\Corey|dffs\(0))) # (!\inst159|auto_generated|_~133_combout\ & ((\inst2|dffs\(0)))))) # (!\ADDR~combout\(1) & 
-- (((\inst159|auto_generated|_~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corey|dffs\(0),
	datab => \ADDR~combout\(1),
	datac => \inst159|auto_generated|_~133_combout\,
	datad => \inst2|dffs\(0),
	combout => \inst159|auto_generated|_~134_combout\);

-- Location: LCCOMB_X15_Y8_N2
\inst159|auto_generated|_~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~157_combout\ = ((!\ADDR~combout\(3) & (\inst159|auto_generated|_~134_combout\ & !\ADDR~combout\(2)))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(4),
	datac => \inst159|auto_generated|_~134_combout\,
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|_~157_combout\);

-- Location: LCCOMB_X10_Y11_N2
\inst151|$00000|auto_generated|result_node[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst151|$00000|auto_generated|result_node\(0) = ((!\MODE~combout\(1) & \inst142|dffs\(0))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst142|dffs\(0),
	combout => \inst151|$00000|auto_generated|result_node\(0));

-- Location: LCFF_X10_Y11_N3
\inst143|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst151|$00000|auto_generated|result_node\(0),
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst143|dffs\(0));

-- Location: LCCOMB_X14_Y10_N20
\inst146|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst146|$00000|auto_generated|result_node[0]~2_combout\ = (\MODE~combout\(1) & (\inst143|dffs\(0))) # (!\MODE~combout\(1) & ((\inst141|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst143|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst141|dffs\(0),
	combout => \inst146|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X14_Y10_N21
\inst142|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst146|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst142|dffs\(0));

-- Location: LCCOMB_X12_Y11_N14
\inst149|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst149|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & (\inst142|dffs\(0))) # (!\MODE~combout\(1) & ((\inst140|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst142|dffs\(0),
	datac => \inst140|dffs\(0),
	datad => \MODE~combout\(1),
	combout => \inst149|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X12_Y11_N15
\inst141|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst149|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst141|dffs\(0));

-- Location: LCCOMB_X14_Y10_N26
\inst144|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst144|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & (\inst141|dffs\(0))) # (!\MODE~combout\(1) & ((\inst131|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst141|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst131|dffs\(0),
	combout => \inst144|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X14_Y10_N27
\inst140|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst144|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst140|dffs\(0));

-- Location: LCCOMB_X12_Y11_N28
\inst139|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst139|$00000|auto_generated|result_node[0]~4_combout\ = ((\MODE~combout\(1) & (\inst140|dffs\(0))) # (!\MODE~combout\(1) & ((\inst130|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \inst140|dffs\(0),
	datac => \inst130|dffs\(0),
	datad => \MODE~combout\(1),
	combout => \inst139|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCFF_X12_Y11_N29
\inst131|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst139|$00000|auto_generated|result_node[0]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst131|dffs\(0));

-- Location: LCCOMB_X13_Y11_N26
\inst134|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst134|$00000|auto_generated|result_node[0]~1_combout\ = (\MODE~combout\(1) & ((\inst131|dffs\(0)))) # (!\MODE~combout\(1) & (\inst129|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst129|dffs\(0),
	datad => \inst131|dffs\(0),
	combout => \inst134|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X13_Y11_N27
\inst130|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst134|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst130|dffs\(0));

-- Location: LCCOMB_X13_Y9_N8
\inst137|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst137|$00000|auto_generated|result_node[0]~3_combout\ = ((\MODE~combout\(1) & (\inst130|dffs\(0))) # (!\MODE~combout\(1) & ((\inst128|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst130|dffs\(0),
	datad => \inst128|dffs\(0),
	combout => \inst137|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X13_Y9_N9
\inst129|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst137|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst129|dffs\(0));

-- Location: LCCOMB_X14_Y11_N26
\inst132|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst132|$00000|auto_generated|result_node[0]~2_combout\ = (\MODE~combout\(1) & ((\inst129|dffs\(0)))) # (!\MODE~combout\(1) & (\inst123|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst123|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst129|dffs\(0),
	combout => \inst132|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X14_Y11_N27
\inst128|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst132|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst128|dffs\(0));

-- Location: LCCOMB_X9_Y10_N22
\inst127|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst127|$00000|auto_generated|result_node[0]~3_combout\ = ((\MODE~combout\(1) & ((\inst128|dffs\(0)))) # (!\MODE~combout\(1) & (\inst122|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|dffs\(0),
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst128|dffs\(0),
	combout => \inst127|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X9_Y10_N23
\inst123|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst127|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst123|dffs\(0));

-- Location: LCCOMB_X10_Y8_N0
\inst77|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst77|$00000|auto_generated|result_node[0]~2_combout\ = (\MODE~combout\(1) & ((\inst74|dffs\(0)))) # (!\MODE~combout\(1) & (\inst72|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|dffs\(0),
	datab => \MODE~combout\(1),
	datad => \inst74|dffs\(0),
	combout => \inst77|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X10_Y8_N1
\inst73|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst77|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst73|dffs\(0));

-- Location: LCCOMB_X12_Y9_N2
\inst82|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst82|$00000|auto_generated|result_node[0]~3_combout\ = ((\MODE~combout\(1) & (\GeorgeGreen|dffs\(0))) # (!\MODE~combout\(1) & ((\inst73|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \GeorgeGreen|dffs\(0),
	datac => \inst73|dffs\(0),
	datad => \MODE~combout\(0),
	combout => \inst82|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X12_Y9_N3
\inst74|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst82|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst74|dffs\(0));

-- Location: LCCOMB_X13_Y12_N28
\inst86|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst86|$00000|auto_generated|result_node[0]~2_combout\ = (\MODE~combout\(1) & ((\inst83|dffs\(0)))) # (!\MODE~combout\(1) & (\inst74|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst74|dffs\(0),
	datad => \inst83|dffs\(0),
	combout => \inst86|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X13_Y12_N29
\GeorgeGreen|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst86|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeorgeGreen|dffs\(0));

-- Location: LCCOMB_X12_Y12_N14
\inst91|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|$00000|auto_generated|result_node[0]~3_combout\ = ((\MODE~combout\(1) & (\DFF30|dffs\(0))) # (!\MODE~combout\(1) & ((\GeorgeGreen|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \DFF30|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \GeorgeGreen|dffs\(0),
	combout => \inst91|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X12_Y12_N15
\inst83|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst91|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst83|dffs\(0));

-- Location: LCCOMB_X12_Y12_N22
\inst88|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst88|$00000|auto_generated|result_node[0]~1_combout\ = (\MODE~combout\(1) & ((\inst85|dffs\(0)))) # (!\MODE~combout\(1) & (\inst83|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst83|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst85|dffs\(0),
	combout => \inst88|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X12_Y12_N23
\DFF30|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst88|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF30|dffs\(0));

-- Location: LCCOMB_X15_Y10_N6
\inst93|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|$00000|auto_generated|result_node[0]~4_combout\ = ((\MODE~combout\(1) & ((\inst94|dffs\(0)))) # (!\MODE~combout\(1) & (\DFF30|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \DFF30|dffs\(0),
	datad => \inst94|dffs\(0),
	combout => \inst93|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCFF_X15_Y10_N7
\inst85|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst93|$00000|auto_generated|result_node[0]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst85|dffs\(0));

-- Location: LCCOMB_X17_Y10_N22
\inst96|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst96|$00000|auto_generated|result_node[0]~4_combout\ = (\MODE~combout\(1) & ((\inst95|dffs\(0)))) # (!\MODE~combout\(1) & (\inst85|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(1),
	datac => \inst85|dffs\(0),
	datad => \inst95|dffs\(0),
	combout => \inst96|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCFF_X17_Y10_N23
\inst94|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst96|$00000|auto_generated|result_node[0]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst94|dffs\(0));

-- Location: LCCOMB_X15_Y10_N2
\inst97|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst97|$00000|auto_generated|result_node[0]~4_combout\ = (\MODE~combout\(1) & (\Donna|dffs\(0))) # (!\MODE~combout\(1) & ((\inst94|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Donna|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst94|dffs\(0),
	combout => \inst97|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCFF_X15_Y10_N3
\inst95|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst97|$00000|auto_generated|result_node[0]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst95|dffs\(0));

-- Location: LCCOMB_X9_Y11_N30
\inst103|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst103|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & (\inst100|dffs\(0))) # (!\MODE~combout\(1) & ((\inst95|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst100|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst95|dffs\(0),
	combout => \inst103|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X9_Y11_N31
\Donna|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst103|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Donna|dffs\(0));

-- Location: LCCOMB_X10_Y10_N2
\inst108|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst108|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & ((\inst101|dffs\(0)))) # (!\MODE~combout\(1) & (\Donna|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Donna|dffs\(0),
	datac => \MODE~combout\(0),
	datad => \inst101|dffs\(0),
	combout => \inst108|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X10_Y10_N3
\inst100|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst108|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst100|dffs\(0));

-- Location: LCCOMB_X10_Y10_N28
\inst105|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst105|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & (\inst102|dffs\(0))) # (!\MODE~combout\(1) & ((\inst100|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datac => \inst102|dffs\(0),
	datad => \inst100|dffs\(0),
	combout => \inst105|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X10_Y10_N29
\inst101|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst105|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst101|dffs\(0));

-- Location: LCCOMB_X10_Y9_N12
\inst110|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst110|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & ((\Cyrus|dffs\(0)))) # (!\MODE~combout\(1) & (\inst101|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \inst101|dffs\(0),
	datad => \Cyrus|dffs\(0),
	combout => \inst110|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X10_Y9_N13
\inst102|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst110|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst102|dffs\(0));

-- Location: LCCOMB_X12_Y10_N30
\inst114|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst114|$00000|auto_generated|result_node[0]~2_combout\ = (\MODE~combout\(1) & (\inst111|dffs\(0))) # (!\MODE~combout\(1) & ((\inst102|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst111|dffs\(0),
	datac => \inst102|dffs\(0),
	datad => \MODE~combout\(1),
	combout => \inst114|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X12_Y10_N31
\Cyrus|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst114|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Cyrus|dffs\(0));

-- Location: LCCOMB_X10_Y9_N6
\inst119|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst119|$00000|auto_generated|result_node[0]~3_combout\ = ((\MODE~combout\(1) & (\DFF40|dffs\(0))) # (!\MODE~combout\(1) & ((\Cyrus|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \MODE~combout\(0),
	datac => \DFF40|dffs\(0),
	datad => \Cyrus|dffs\(0),
	combout => \inst119|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X10_Y9_N7
\inst111|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst119|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst111|dffs\(0));

-- Location: LCCOMB_X8_Y10_N22
\inst116|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst116|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & ((\inst113|dffs\(0)))) # (!\MODE~combout\(1) & (\inst111|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst111|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst113|dffs\(0),
	combout => \inst116|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X8_Y10_N23
\DFF40|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst116|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF40|dffs\(0));

-- Location: LCCOMB_X13_Y8_N10
\inst121|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst121|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & (\inst122|dffs\(0))) # (!\MODE~combout\(1) & ((\DFF40|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(0),
	datab => \MODE~combout\(1),
	datac => \inst122|dffs\(0),
	datad => \DFF40|dffs\(0),
	combout => \inst121|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X13_Y10_N6
\inst113|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst113|dffs[0]~feeder_combout\ = \inst121|$00000|auto_generated|result_node[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst121|$00000|auto_generated|result_node[0]~2_combout\,
	combout => \inst113|dffs[0]~feeder_combout\);

-- Location: LCFF_X13_Y10_N7
\inst113|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst113|dffs[0]~feeder_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst113|dffs\(0));

-- Location: LCCOMB_X8_Y10_N28
\inst124|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst124|$00000|auto_generated|result_node[0]~2_combout\ = (\MODE~combout\(1) & (\inst123|dffs\(0))) # (!\MODE~combout\(1) & ((\inst113|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst123|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst113|dffs\(0),
	combout => \inst124|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X8_Y10_N29
\inst122|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst124|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst122|dffs\(0));

-- Location: LCCOMB_X13_Y8_N24
\inst159|auto_generated|result_node[0]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~90_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\DFF40|dffs\(0)))) # (!\ADDR~combout\(1) & (\inst122|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst122|dffs\(0),
	datac => \ADDR~combout\(0),
	datad => \DFF40|dffs\(0),
	combout => \inst159|auto_generated|result_node[0]~90_combout\);

-- Location: LCCOMB_X13_Y8_N20
\inst159|auto_generated|result_node[0]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~88_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst102|dffs\(0))) # (!\ADDR~combout\(1) & ((\inst111|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|dffs\(0),
	datab => \inst111|dffs\(0),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[0]~88_combout\);

-- Location: LCCOMB_X13_Y8_N22
\inst159|auto_generated|result_node[0]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~87_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst101|dffs\(0))) # (!\ADDR~combout\(1) & ((\Cyrus|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst101|dffs\(0),
	datac => \ADDR~combout\(0),
	datad => \Cyrus|dffs\(0),
	combout => \inst159|auto_generated|result_node[0]~87_combout\);

-- Location: LCCOMB_X13_Y8_N30
\inst159|auto_generated|result_node[0]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~89_combout\ = (\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[0]~88_combout\) # (\inst159|auto_generated|result_node[0]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|result_node[0]~88_combout\,
	datad => \inst159|auto_generated|result_node[0]~87_combout\,
	combout => \inst159|auto_generated|result_node[0]~89_combout\);

-- Location: LCCOMB_X13_Y8_N14
\inst159|auto_generated|result_node[0]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~92_combout\ = (\inst159|auto_generated|result_node[0]~89_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[0]~91_combout\) # (\inst159|auto_generated|result_node[0]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[0]~91_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|result_node[0]~90_combout\,
	datad => \inst159|auto_generated|result_node[0]~89_combout\,
	combout => \inst159|auto_generated|result_node[0]~92_combout\);

-- Location: LCCOMB_X13_Y11_N22
\inst159|auto_generated|_~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~129_combout\ = (\ADDR~combout\(0) & ((\inst130|dffs\(0)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((!\ADDR~combout\(1) & \inst131|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst130|dffs\(0),
	datac => \ADDR~combout\(1),
	datad => \inst131|dffs\(0),
	combout => \inst159|auto_generated|_~129_combout\);

-- Location: LCCOMB_X14_Y11_N20
\inst159|auto_generated|_~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~130_combout\ = (\inst159|auto_generated|_~129_combout\ & (((\inst128|dffs\(0)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~129_combout\ & (\inst129|dffs\(0) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst129|dffs\(0),
	datab => \inst159|auto_generated|_~129_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst128|dffs\(0),
	combout => \inst159|auto_generated|_~130_combout\);

-- Location: LCCOMB_X13_Y8_N12
\inst159|auto_generated|result_node[0]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~86_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst159|auto_generated|_~130_combout\))) # (!\ADDR~combout\(2) & (\inst159|auto_generated|_~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~132_combout\,
	datab => \inst159|auto_generated|_~130_combout\,
	datac => \ADDR~combout\(2),
	datad => \ADDR~combout\(3),
	combout => \inst159|auto_generated|result_node[0]~86_combout\);

-- Location: LCCOMB_X13_Y8_N0
\inst159|auto_generated|result_node[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~93_combout\ = (\inst159|auto_generated|result_node[5]~0_combout\ & ((\inst159|auto_generated|result_node[0]~86_combout\) # ((\ADDR~combout\(3) & \inst159|auto_generated|result_node[0]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst159|auto_generated|result_node[5]~0_combout\,
	datac => \inst159|auto_generated|result_node[0]~92_combout\,
	datad => \inst159|auto_generated|result_node[0]~86_combout\,
	combout => \inst159|auto_generated|result_node[0]~93_combout\);

-- Location: LCCOMB_X14_Y12_N26
\inst159|auto_generated|_~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~135_combout\ = (\ADDR~combout\(0) & (((\DFF30|dffs\(0)) # (\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (\inst85|dffs\(0) & ((!\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \DFF30|dffs\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~135_combout\);

-- Location: LCCOMB_X13_Y12_N0
\inst159|auto_generated|_~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|_~136_combout\ = (\inst159|auto_generated|_~135_combout\ & (((\GeorgeGreen|dffs\(0)) # (!\ADDR~combout\(1))))) # (!\inst159|auto_generated|_~135_combout\ & (\inst83|dffs\(0) & ((\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|dffs\(0),
	datab => \GeorgeGreen|dffs\(0),
	datac => \inst159|auto_generated|_~135_combout\,
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|_~136_combout\);

-- Location: LCCOMB_X14_Y12_N28
\inst159|auto_generated|result_node[0]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~94_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst159|auto_generated|_~136_combout\))) # (!\ADDR~combout\(2) & (\inst159|auto_generated|_~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~138_combout\,
	datab => \ADDR~combout\(3),
	datac => \inst159|auto_generated|_~136_combout\,
	datad => \ADDR~combout\(2),
	combout => \inst159|auto_generated|result_node[0]~94_combout\);

-- Location: LCCOMB_X10_Y8_N22
\inst159|auto_generated|result_node[0]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~98_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst73|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst74|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst74|dffs\(0),
	datac => \ADDR~combout\(1),
	datad => \inst73|dffs\(0),
	combout => \inst159|auto_generated|result_node[0]~98_combout\);

-- Location: LCCOMB_X10_Y6_N12
\inst64|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & (\inst61|dffs\(0))) # (!\MODE~combout\(1) & ((\inst52|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst52|dffs\(0),
	combout => \inst64|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X10_Y6_N13
\DFF20|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst64|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DFF20|dffs\(0));

-- Location: LCCOMB_X12_Y6_N18
\inst69|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst69|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & ((\inst62|dffs\(0)))) # (!\MODE~combout\(1) & (\DFF20|dffs\(0)))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \DFF20|dffs\(0),
	datac => \MODE~combout\(0),
	datad => \inst62|dffs\(0),
	combout => \inst69|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X12_Y6_N19
\inst61|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst69|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst61|dffs\(0));

-- Location: LCCOMB_X10_Y12_N18
\inst66|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|$00000|auto_generated|result_node[0]~2_combout\ = (\MODE~combout\(1) & (\inst63|dffs\(0))) # (!\MODE~combout\(1) & ((\inst61|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst63|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst61|dffs\(0),
	combout => \inst66|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X10_Y12_N19
\inst62|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst66|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|dffs\(0));

-- Location: LCCOMB_X12_Y6_N20
\inst71|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst71|$00000|auto_generated|result_node[0]~3_combout\ = ((\MODE~combout\(1) & (\Bubbles|dffs\(0))) # (!\MODE~combout\(1) & ((\inst62|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~combout\(1),
	datab => \Bubbles|dffs\(0),
	datac => \MODE~combout\(0),
	datad => \inst62|dffs\(0),
	combout => \inst71|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X12_Y6_N21
\inst63|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst71|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst63|dffs\(0));

-- Location: LCCOMB_X10_Y12_N28
\inst75|$00000|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst75|$00000|auto_generated|result_node[0]~3_combout\ = (\MODE~combout\(1) & (\inst72|dffs\(0))) # (!\MODE~combout\(1) & ((\inst63|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|dffs\(0),
	datac => \MODE~combout\(1),
	datad => \inst63|dffs\(0),
	combout => \inst75|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: LCFF_X10_Y12_N29
\Bubbles|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst75|$00000|auto_generated|result_node[0]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_MODE~combout\(0),
	ena => \inst16|$00000|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bubbles|dffs\(0));

-- Location: LCCOMB_X12_Y9_N20
\inst80|$00000|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst80|$00000|auto_generated|result_node[0]~2_combout\ = ((\MODE~combout\(1) & (\inst73|dffs\(0))) # (!\MODE~combout\(1) & ((\Bubbles|dffs\(0))))) # (!\MODE~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst73|dffs\(0),
	datab => \MODE~combout\(1),
	datac => \Bubbles|dffs\(0),
	datad => \MODE~combout\(0),
	combout => \inst80|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X12_Y9_N21
\inst72|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst80|$00000|auto_generated|result_node[0]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \inst16|$00000|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst72|dffs\(0));

-- Location: LCCOMB_X15_Y8_N18
\inst159|auto_generated|result_node[0]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~99_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\Bubbles|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst72|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst72|dffs\(0),
	datac => \Bubbles|dffs\(0),
	datad => \ADDR~combout\(1),
	combout => \inst159|auto_generated|result_node[0]~99_combout\);

-- Location: LCCOMB_X15_Y8_N24
\inst159|auto_generated|result_node[0]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~100_combout\ = (\inst159|auto_generated|result_node[0]~97_combout\) # ((!\ADDR~combout\(2) & ((\inst159|auto_generated|result_node[0]~98_combout\) # (\inst159|auto_generated|result_node[0]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|result_node[0]~97_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst159|auto_generated|result_node[0]~98_combout\,
	datad => \inst159|auto_generated|result_node[0]~99_combout\,
	combout => \inst159|auto_generated|result_node[0]~100_combout\);

-- Location: LCCOMB_X15_Y8_N22
\inst159|auto_generated|result_node[0]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~101_combout\ = (\ADDR~combout\(4) & ((\inst159|auto_generated|result_node[0]~94_combout\) # ((\ADDR~combout\(3) & \inst159|auto_generated|result_node[0]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst159|auto_generated|result_node[0]~94_combout\,
	datac => \inst159|auto_generated|result_node[0]~100_combout\,
	datad => \ADDR~combout\(4),
	combout => \inst159|auto_generated|result_node[0]~101_combout\);

-- Location: LCCOMB_X15_Y8_N4
\inst159|auto_generated|result_node[0]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst159|auto_generated|result_node[0]~102_combout\ = (\inst159|auto_generated|result_node[0]~93_combout\) # ((\inst159|auto_generated|_~151_combout\ & (\inst159|auto_generated|_~157_combout\)) # (!\inst159|auto_generated|_~151_combout\ & 
-- ((\inst159|auto_generated|result_node[0]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst159|auto_generated|_~151_combout\,
	datab => \inst159|auto_generated|_~157_combout\,
	datac => \inst159|auto_generated|result_node[0]~93_combout\,
	datad => \inst159|auto_generated|result_node[0]~101_combout\,
	combout => \inst159|auto_generated|result_node[0]~102_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FULL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst156|auto_generated|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FULL);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(5));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(4));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(3));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(1));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(0));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EMPTY~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst157|auto_generated|ALT_INV_aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EMPTY);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst159|auto_generated|result_node[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(5));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst159|auto_generated|result_node[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(4));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst159|auto_generated|result_node[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(3));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst159|auto_generated|result_node[2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(2));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst159|auto_generated|result_node[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst159|auto_generated|result_node[0]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(0));
END structure;


