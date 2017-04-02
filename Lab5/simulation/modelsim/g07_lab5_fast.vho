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

-- DATE "03/30/2017 17:05:43"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bjt IS
    PORT (
	clock : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	mode : IN std_logic_vector(1 DOWNTO 0);
	addr : IN std_logic_vector(5 DOWNTO 0);
	data : IN std_logic_vector(5 DOWNTO 0);
	full : OUT std_logic;
	empty : OUT std_logic;
	num : OUT std_logic_vector(5 DOWNTO 0);
	value : OUT std_logic_vector(5 DOWNTO 0)
	);
END bjt;

-- Design Ports Information
-- full	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- empty	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[1]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[3]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[5]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[1]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[2]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[5]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addr[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[1]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[2]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[4]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[5]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bjt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_full : std_logic;
SIGNAL ww_empty : std_logic;
SIGNAL ww_num : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_value : std_logic_vector(5 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t_num[19]~72_combout\ : std_logic;
SIGNAL \Add1~102_combout\ : std_logic;
SIGNAL \t_num[24]~82_combout\ : std_logic;
SIGNAL \Add1~112_combout\ : std_logic;
SIGNAL \t_num[26]~86_combout\ : std_logic;
SIGNAL \Add1~116_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \value~0_combout\ : std_logic;
SIGNAL \value~2_combout\ : std_logic;
SIGNAL \value~3_combout\ : std_logic;
SIGNAL \value~4_combout\ : std_logic;
SIGNAL \value~5_combout\ : std_logic;
SIGNAL \value~6_combout\ : std_logic;
SIGNAL \value~18_combout\ : std_logic;
SIGNAL \value~19_combout\ : std_logic;
SIGNAL \value~21_combout\ : std_logic;
SIGNAL \value~22_combout\ : std_logic;
SIGNAL \value~23_combout\ : std_logic;
SIGNAL \value~24_combout\ : std_logic;
SIGNAL \value~25_combout\ : std_logic;
SIGNAL \value~26_combout\ : std_logic;
SIGNAL \value~27_combout\ : std_logic;
SIGNAL \value~28_combout\ : std_logic;
SIGNAL \value~29_combout\ : std_logic;
SIGNAL \value~30_combout\ : std_logic;
SIGNAL \value~37_combout\ : std_logic;
SIGNAL \value~38_combout\ : std_logic;
SIGNAL \value~50_combout\ : std_logic;
SIGNAL \value~51_combout\ : std_logic;
SIGNAL \value~55_combout\ : std_logic;
SIGNAL \value~56_combout\ : std_logic;
SIGNAL \value~58_combout\ : std_logic;
SIGNAL \value~59_combout\ : std_logic;
SIGNAL \value~60_combout\ : std_logic;
SIGNAL \value~61_combout\ : std_logic;
SIGNAL \value~62_combout\ : std_logic;
SIGNAL \value~63_combout\ : std_logic;
SIGNAL \value~64_combout\ : std_logic;
SIGNAL \value~65_combout\ : std_logic;
SIGNAL \value~66_combout\ : std_logic;
SIGNAL \value~67_combout\ : std_logic;
SIGNAL \value~72_combout\ : std_logic;
SIGNAL \value~73_combout\ : std_logic;
SIGNAL \value~74_combout\ : std_logic;
SIGNAL \value~75_combout\ : std_logic;
SIGNAL \value~76_combout\ : std_logic;
SIGNAL \value~77_combout\ : std_logic;
SIGNAL \value~78_combout\ : std_logic;
SIGNAL \value~83_combout\ : std_logic;
SIGNAL \value~90_combout\ : std_logic;
SIGNAL \value~91_combout\ : std_logic;
SIGNAL \value~104_combout\ : std_logic;
SIGNAL \value~122_combout\ : std_logic;
SIGNAL \value~123_combout\ : std_logic;
SIGNAL \value~128_combout\ : std_logic;
SIGNAL \value~129_combout\ : std_logic;
SIGNAL \value~130_combout\ : std_logic;
SIGNAL \value~131_combout\ : std_logic;
SIGNAL \value~132_combout\ : std_logic;
SIGNAL \value~133_combout\ : std_logic;
SIGNAL \value~134_combout\ : std_logic;
SIGNAL \value~135_combout\ : std_logic;
SIGNAL \value~136_combout\ : std_logic;
SIGNAL \value~137_combout\ : std_logic;
SIGNAL \value~142_combout\ : std_logic;
SIGNAL \value~143_combout\ : std_logic;
SIGNAL \value~144_combout\ : std_logic;
SIGNAL \value~147_combout\ : std_logic;
SIGNAL \value~148_combout\ : std_logic;
SIGNAL \value~149_combout\ : std_logic;
SIGNAL \value~150_combout\ : std_logic;
SIGNAL \value~151_combout\ : std_logic;
SIGNAL \value~153_combout\ : std_logic;
SIGNAL \value~154_combout\ : std_logic;
SIGNAL \value~155_combout\ : std_logic;
SIGNAL \value~156_combout\ : std_logic;
SIGNAL \value~163_combout\ : std_logic;
SIGNAL \value~164_combout\ : std_logic;
SIGNAL \value~165_combout\ : std_logic;
SIGNAL \value~166_combout\ : std_logic;
SIGNAL \memory[51][4]~regout\ : std_logic;
SIGNAL \value~177_combout\ : std_logic;
SIGNAL \value~178_combout\ : std_logic;
SIGNAL \value~179_combout\ : std_logic;
SIGNAL \value~182_combout\ : std_logic;
SIGNAL \value~183_combout\ : std_logic;
SIGNAL \value~184_combout\ : std_logic;
SIGNAL \value~185_combout\ : std_logic;
SIGNAL \value~186_combout\ : std_logic;
SIGNAL \value~188_combout\ : std_logic;
SIGNAL \value~189_combout\ : std_logic;
SIGNAL \value~192_combout\ : std_logic;
SIGNAL \value~193_combout\ : std_logic;
SIGNAL \value~198_combout\ : std_logic;
SIGNAL \value~199_combout\ : std_logic;
SIGNAL \value~200_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \always~0_combout\ : std_logic;
SIGNAL \always~2_combout\ : std_logic;
SIGNAL \memory[44][0]~25_combout\ : std_logic;
SIGNAL \memory[46][0]~35_combout\ : std_logic;
SIGNAL \memory[35][0]~38_combout\ : std_logic;
SIGNAL \memory[35][0]~41_combout\ : std_logic;
SIGNAL \memory[39][0]~48_combout\ : std_logic;
SIGNAL \memory[34][0]~54_combout\ : std_logic;
SIGNAL \memory[38][0]~60_combout\ : std_logic;
SIGNAL \memory[41][0]~69_combout\ : std_logic;
SIGNAL \memory[5][0]~76_combout\ : std_logic;
SIGNAL \LessThan50~0_combout\ : std_logic;
SIGNAL \memory[21][0]~106_combout\ : std_logic;
SIGNAL \memory[27][0]~112_combout\ : std_logic;
SIGNAL \memory[26][0]~115_combout\ : std_logic;
SIGNAL \memory[5][0]~130_combout\ : std_logic;
SIGNAL \memory[48][0]~162_combout\ : std_logic;
SIGNAL \Add1~144_combout\ : std_logic;
SIGNAL \Add1~149_combout\ : std_logic;
SIGNAL \Add1~151_combout\ : std_logic;
SIGNAL \memory[36][0]~422_combout\ : std_logic;
SIGNAL \memory[6][0]~423_combout\ : std_logic;
SIGNAL \memory[4][0]~424_combout\ : std_logic;
SIGNAL \memory~427_combout\ : std_logic;
SIGNAL \t_num[0]~32_combout\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add1~128_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \t_num[2]~39\ : std_logic;
SIGNAL \t_num[3]~41\ : std_logic;
SIGNAL \t_num[4]~42_combout\ : std_logic;
SIGNAL \Add1~65\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~69\ : std_logic;
SIGNAL \Add1~71\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~158_combout\ : std_logic;
SIGNAL \t_num[5]~44_combout\ : std_logic;
SIGNAL \Add1~73\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~159_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \t_num[17]~69\ : std_logic;
SIGNAL \t_num[18]~70_combout\ : std_logic;
SIGNAL \t_num[12]~58_combout\ : std_logic;
SIGNAL \t_num[10]~54_combout\ : std_logic;
SIGNAL \t_num[6]~46_combout\ : std_logic;
SIGNAL \Add1~75\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \Add1~131_combout\ : std_logic;
SIGNAL \Add1~77\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~81\ : std_logic;
SIGNAL \Add1~83\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~135_combout\ : std_logic;
SIGNAL \Add1~85\ : std_logic;
SIGNAL \Add1~87\ : std_logic;
SIGNAL \Add1~88_combout\ : std_logic;
SIGNAL \Add1~137_combout\ : std_logic;
SIGNAL \Add1~89\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~93\ : std_logic;
SIGNAL \Add1~95\ : std_logic;
SIGNAL \Add1~97\ : std_logic;
SIGNAL \Add1~99\ : std_logic;
SIGNAL \Add1~100_combout\ : std_logic;
SIGNAL \Add1~143_combout\ : std_logic;
SIGNAL \t_num[18]~71\ : std_logic;
SIGNAL \t_num[19]~73\ : std_logic;
SIGNAL \t_num[20]~74_combout\ : std_logic;
SIGNAL \Add1~101\ : std_logic;
SIGNAL \Add1~103\ : std_logic;
SIGNAL \Add1~104_combout\ : std_logic;
SIGNAL \Add1~145_combout\ : std_logic;
SIGNAL \t_num[20]~75\ : std_logic;
SIGNAL \t_num[21]~77\ : std_logic;
SIGNAL \t_num[22]~79\ : std_logic;
SIGNAL \t_num[23]~80_combout\ : std_logic;
SIGNAL \t_num[22]~78_combout\ : std_logic;
SIGNAL \t_num[21]~76_combout\ : std_logic;
SIGNAL \Add1~105\ : std_logic;
SIGNAL \Add1~106_combout\ : std_logic;
SIGNAL \Add1~146_combout\ : std_logic;
SIGNAL \Add1~107\ : std_logic;
SIGNAL \Add1~108_combout\ : std_logic;
SIGNAL \Add1~147_combout\ : std_logic;
SIGNAL \Add1~109\ : std_logic;
SIGNAL \Add1~110_combout\ : std_logic;
SIGNAL \Add1~148_combout\ : std_logic;
SIGNAL \t_num[23]~81\ : std_logic;
SIGNAL \t_num[24]~83\ : std_logic;
SIGNAL \t_num[25]~84_combout\ : std_logic;
SIGNAL \Add1~111\ : std_logic;
SIGNAL \Add1~113\ : std_logic;
SIGNAL \Add1~114_combout\ : std_logic;
SIGNAL \Add1~150_combout\ : std_logic;
SIGNAL \t_num[25]~85\ : std_logic;
SIGNAL \t_num[26]~87\ : std_logic;
SIGNAL \t_num[27]~88_combout\ : std_logic;
SIGNAL \Add1~115\ : std_logic;
SIGNAL \Add1~117\ : std_logic;
SIGNAL \Add1~118_combout\ : std_logic;
SIGNAL \Add1~152_combout\ : std_logic;
SIGNAL \t_num[27]~89\ : std_logic;
SIGNAL \t_num[28]~91\ : std_logic;
SIGNAL \t_num[29]~92_combout\ : std_logic;
SIGNAL \t_num[28]~90_combout\ : std_logic;
SIGNAL \Add1~119\ : std_logic;
SIGNAL \Add1~120_combout\ : std_logic;
SIGNAL \Add1~153_combout\ : std_logic;
SIGNAL \Add1~121\ : std_logic;
SIGNAL \Add1~122_combout\ : std_logic;
SIGNAL \Add1~154_combout\ : std_logic;
SIGNAL \t_num[29]~93\ : std_logic;
SIGNAL \t_num[30]~94_combout\ : std_logic;
SIGNAL \Add1~123\ : std_logic;
SIGNAL \Add1~124_combout\ : std_logic;
SIGNAL \Add1~155_combout\ : std_logic;
SIGNAL \t_num[30]~95\ : std_logic;
SIGNAL \t_num[31]~96_combout\ : std_logic;
SIGNAL \Add1~125\ : std_logic;
SIGNAL \Add1~126_combout\ : std_logic;
SIGNAL \Add1~156_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \LessThan52~0_combout\ : std_logic;
SIGNAL \t_num[0]~34_combout\ : std_logic;
SIGNAL \memory~22_combout\ : std_logic;
SIGNAL \t_num[0]~35_combout\ : std_logic;
SIGNAL \t_num[4]~43\ : std_logic;
SIGNAL \t_num[5]~45\ : std_logic;
SIGNAL \t_num[6]~47\ : std_logic;
SIGNAL \t_num[7]~48_combout\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~132_combout\ : std_logic;
SIGNAL \t_num[7]~49\ : std_logic;
SIGNAL \t_num[8]~51\ : std_logic;
SIGNAL \t_num[9]~52_combout\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~134_combout\ : std_logic;
SIGNAL \t_num[9]~53\ : std_logic;
SIGNAL \t_num[10]~55\ : std_logic;
SIGNAL \t_num[11]~56_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~136_combout\ : std_logic;
SIGNAL \t_num[11]~57\ : std_logic;
SIGNAL \t_num[12]~59\ : std_logic;
SIGNAL \t_num[13]~60_combout\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~138_combout\ : std_logic;
SIGNAL \t_num[13]~61\ : std_logic;
SIGNAL \t_num[14]~62_combout\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \Add1~139_combout\ : std_logic;
SIGNAL \t_num[14]~63\ : std_logic;
SIGNAL \t_num[15]~64_combout\ : std_logic;
SIGNAL \Add1~94_combout\ : std_logic;
SIGNAL \Add1~140_combout\ : std_logic;
SIGNAL \t_num[15]~65\ : std_logic;
SIGNAL \t_num[16]~66_combout\ : std_logic;
SIGNAL \Add1~96_combout\ : std_logic;
SIGNAL \Add1~141_combout\ : std_logic;
SIGNAL \t_num[16]~67\ : std_logic;
SIGNAL \t_num[17]~68_combout\ : std_logic;
SIGNAL \Add1~98_combout\ : std_logic;
SIGNAL \Add1~142_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \t_num[8]~50_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~133_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \always~1_combout\ : std_logic;
SIGNAL \t_num[0]~33\ : std_logic;
SIGNAL \t_num[1]~36_combout\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \Add1~129_combout\ : std_logic;
SIGNAL \t_num[1]~37\ : std_logic;
SIGNAL \t_num[2]~38_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~157_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \Equal5~10_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \t_num[3]~40_combout\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~130_combout\ : std_logic;
SIGNAL \value~34_combout\ : std_logic;
SIGNAL \memory~425_combout\ : std_logic;
SIGNAL \memory[51][0]~regout\ : std_logic;
SIGNAL \memory~158_combout\ : std_logic;
SIGNAL \memory~155_combout\ : std_logic;
SIGNAL \memory~161_combout\ : std_logic;
SIGNAL \memory~71_combout\ : std_logic;
SIGNAL \memory~33_combout\ : std_logic;
SIGNAL \memory~62_combout\ : std_logic;
SIGNAL \memory~23_combout\ : std_logic;
SIGNAL \memory~65_combout\ : std_logic;
SIGNAL \memory~27_combout\ : std_logic;
SIGNAL \memory~68_combout\ : std_logic;
SIGNAL \memory~30_combout\ : std_logic;
SIGNAL \memory~47_combout\ : std_logic;
SIGNAL \memory~59_combout\ : std_logic;
SIGNAL \memory~37_combout\ : std_logic;
SIGNAL \memory~50_combout\ : std_logic;
SIGNAL \memory~40_combout\ : std_logic;
SIGNAL \memory~52_combout\ : std_logic;
SIGNAL \memory~43_combout\ : std_logic;
SIGNAL \memory~56_combout\ : std_logic;
SIGNAL \memory~117_combout\ : std_logic;
SIGNAL \memory~108_combout\ : std_logic;
SIGNAL \memory~85_combout\ : std_logic;
SIGNAL \memory~74_combout\ : std_logic;
SIGNAL \memory~111_combout\ : std_logic;
SIGNAL \memory~114_combout\ : std_logic;
SIGNAL \memory~79_combout\ : std_logic;
SIGNAL \memory~82_combout\ : std_logic;
SIGNAL \memory~95_combout\ : std_logic;
SIGNAL \memory~88_combout\ : std_logic;
SIGNAL \memory~105_combout\ : std_logic;
SIGNAL \memory~98_combout\ : std_logic;
SIGNAL \memory~91_combout\ : std_logic;
SIGNAL \memory~93_combout\ : std_logic;
SIGNAL \memory~101_combout\ : std_logic;
SIGNAL \memory~103_combout\ : std_logic;
SIGNAL \memory~153_combout\ : std_logic;
SIGNAL \memory~149_combout\ : std_logic;
SIGNAL \memory~146_combout\ : std_logic;
SIGNAL \memory~151_combout\ : std_logic;
SIGNAL \memory~126_combout\ : std_logic;
SIGNAL \memory~119_combout\ : std_logic;
SIGNAL \memory~122_combout\ : std_logic;
SIGNAL \memory~124_combout\ : std_logic;
SIGNAL \memory~136_combout\ : std_logic;
SIGNAL \memory~132_combout\ : std_logic;
SIGNAL \memory~129_combout\ : std_logic;
SIGNAL \memory~134_combout\ : std_logic;
SIGNAL \memory~144_combout\ : std_logic;
SIGNAL \memory~138_combout\ : std_logic;
SIGNAL \memory~140_combout\ : std_logic;
SIGNAL \memory~142_combout\ : std_logic;
SIGNAL \memory[1][0]~44_combout\ : std_logic;
SIGNAL \LessThan33~0_combout\ : std_logic;
SIGNAL \memory[5][0]~77_combout\ : std_logic;
SIGNAL \memory[0][0]~143_combout\ : std_logic;
SIGNAL \memory[0][0]~regout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \memory[2][0]~120_combout\ : std_logic;
SIGNAL \memory[1][0]~141_combout\ : std_logic;
SIGNAL \memory[1][0]~regout\ : std_logic;
SIGNAL \memory[2][0]~53_combout\ : std_logic;
SIGNAL \memory[2][0]~139_combout\ : std_logic;
SIGNAL \memory[2][0]~regout\ : std_logic;
SIGNAL \LessThan52~1_combout\ : std_logic;
SIGNAL \memory[3][0]~145_combout\ : std_logic;
SIGNAL \memory[3][0]~regout\ : std_logic;
SIGNAL \memory[4][0]~135_combout\ : std_logic;
SIGNAL \memory[4][0]~regout\ : std_logic;
SIGNAL \memory[5][0]~131_combout\ : std_logic;
SIGNAL \memory[5][0]~regout\ : std_logic;
SIGNAL \memory[6][0]~133_combout\ : std_logic;
SIGNAL \memory[6][0]~regout\ : std_logic;
SIGNAL \memory[7][0]~137_combout\ : std_logic;
SIGNAL \memory[7][0]~regout\ : std_logic;
SIGNAL \memory[8][0]~125_combout\ : std_logic;
SIGNAL \memory[8][0]~regout\ : std_logic;
SIGNAL \LessThan42~0_combout\ : std_logic;
SIGNAL \memory[9][0]~123_combout\ : std_logic;
SIGNAL \memory[9][0]~regout\ : std_logic;
SIGNAL \memory[10][0]~121_combout\ : std_logic;
SIGNAL \memory[10][0]~regout\ : std_logic;
SIGNAL \memory[43][0]~127_combout\ : std_logic;
SIGNAL \memory[11][0]~128_combout\ : std_logic;
SIGNAL \memory[11][0]~regout\ : std_logic;
SIGNAL \memory[12][0]~152_combout\ : std_logic;
SIGNAL \memory[12][0]~regout\ : std_logic;
SIGNAL \memory[46][0]~147_combout\ : std_logic;
SIGNAL \memory[13][0]~148_combout\ : std_logic;
SIGNAL \memory[13][0]~regout\ : std_logic;
SIGNAL \memory[46][0]~34_combout\ : std_logic;
SIGNAL \memory[14][0]~150_combout\ : std_logic;
SIGNAL \memory[14][0]~regout\ : std_logic;
SIGNAL \memory[15][0]~154_combout\ : std_logic;
SIGNAL \memory[15][0]~regout\ : std_logic;
SIGNAL \LessThan49~0_combout\ : std_logic;
SIGNAL \memory[16][0]~104_combout\ : std_logic;
SIGNAL \memory[16][0]~regout\ : std_logic;
SIGNAL \memory[17][0]~102_combout\ : std_logic;
SIGNAL \memory[17][0]~regout\ : std_logic;
SIGNAL \LessThan51~0_combout\ : std_logic;
SIGNAL \memory[18][0]~94_combout\ : std_logic;
SIGNAL \memory[18][0]~regout\ : std_logic;
SIGNAL \memory[19][0]~92_combout\ : std_logic;
SIGNAL \memory[19][0]~regout\ : std_logic;
SIGNAL \LessThan45~0_combout\ : std_logic;
SIGNAL \memory[20][0]~99_combout\ : std_logic;
SIGNAL \memory[20][0]~100_combout\ : std_logic;
SIGNAL \memory[20][0]~regout\ : std_logic;
SIGNAL \memory[21][0]~107_combout\ : std_logic;
SIGNAL \memory[21][0]~regout\ : std_logic;
SIGNAL \memory[22][0]~89_combout\ : std_logic;
SIGNAL \memory[22][0]~90_combout\ : std_logic;
SIGNAL \memory[22][0]~regout\ : std_logic;
SIGNAL \memory[23][0]~96_combout\ : std_logic;
SIGNAL \memory[23][0]~97_combout\ : std_logic;
SIGNAL \memory[23][0]~regout\ : std_logic;
SIGNAL \LessThan41~0_combout\ : std_logic;
SIGNAL \memory[24][0]~83_combout\ : std_logic;
SIGNAL \memory[24][0]~84_combout\ : std_logic;
SIGNAL \memory[24][0]~regout\ : std_logic;
SIGNAL \memory[25][0]~80_combout\ : std_logic;
SIGNAL \memory[25][0]~81_combout\ : std_logic;
SIGNAL \memory[25][0]~regout\ : std_logic;
SIGNAL \memory[26][0]~116_combout\ : std_logic;
SIGNAL \memory[26][0]~regout\ : std_logic;
SIGNAL \memory[27][0]~113_combout\ : std_logic;
SIGNAL \memory[27][0]~regout\ : std_logic;
SIGNAL \memory[44][0]~24_combout\ : std_logic;
SIGNAL \memory[28][0]~75_combout\ : std_logic;
SIGNAL \memory[28][0]~78_combout\ : std_logic;
SIGNAL \memory[28][0]~regout\ : std_logic;
SIGNAL \memory[29][0]~86_combout\ : std_logic;
SIGNAL \memory[29][0]~87_combout\ : std_logic;
SIGNAL \memory[29][0]~regout\ : std_logic;
SIGNAL \memory[30][0]~109_combout\ : std_logic;
SIGNAL \memory[30][0]~110_combout\ : std_logic;
SIGNAL \memory[30][0]~regout\ : std_logic;
SIGNAL \memory[31][0]~118_combout\ : std_logic;
SIGNAL \memory[31][0]~regout\ : std_logic;
SIGNAL \memory[32][0]~57_combout\ : std_logic;
SIGNAL \always~3_combout\ : std_logic;
SIGNAL \memory[32][0]~58_combout\ : std_logic;
SIGNAL \memory[32][0]~regout\ : std_logic;
SIGNAL \memory[33][0]~45_combout\ : std_logic;
SIGNAL \memory[33][0]~46_combout\ : std_logic;
SIGNAL \memory[33][0]~regout\ : std_logic;
SIGNAL \memory[34][0]~55_combout\ : std_logic;
SIGNAL \memory[34][0]~regout\ : std_logic;
SIGNAL \memory[35][0]~42_combout\ : std_logic;
SIGNAL \memory[35][0]~regout\ : std_logic;
SIGNAL \memory[36][0]~51_combout\ : std_logic;
SIGNAL \memory[36][0]~regout\ : std_logic;
SIGNAL \LessThan47~0_combout\ : std_logic;
SIGNAL \memory[37][0]~421_combout\ : std_logic;
SIGNAL \memory[37][0]~39_combout\ : std_logic;
SIGNAL \memory[37][0]~regout\ : std_logic;
SIGNAL \memory[38][0]~61_combout\ : std_logic;
SIGNAL \memory[38][0]~regout\ : std_logic;
SIGNAL \memory[39][0]~49_combout\ : std_logic;
SIGNAL \memory[39][0]~regout\ : std_logic;
SIGNAL \memory[40][0]~31_combout\ : std_logic;
SIGNAL \memory[40][0]~32_combout\ : std_logic;
SIGNAL \memory[40][0]~regout\ : std_logic;
SIGNAL \memory[41][0]~70_combout\ : std_logic;
SIGNAL \memory[41][0]~regout\ : std_logic;
SIGNAL \LessThan43~0_combout\ : std_logic;
SIGNAL \memory[42][0]~28_combout\ : std_logic;
SIGNAL \memory[42][0]~29_combout\ : std_logic;
SIGNAL \memory[42][0]~regout\ : std_logic;
SIGNAL \memory[43][0]~66_combout\ : std_logic;
SIGNAL \memory[43][0]~67_combout\ : std_logic;
SIGNAL \memory[43][0]~regout\ : std_logic;
SIGNAL \memory[44][0]~26_combout\ : std_logic;
SIGNAL \memory[44][0]~regout\ : std_logic;
SIGNAL \memory[45][0]~63_combout\ : std_logic;
SIGNAL \memory[45][0]~64_combout\ : std_logic;
SIGNAL \memory[45][0]~regout\ : std_logic;
SIGNAL \memory[46][0]~36_combout\ : std_logic;
SIGNAL \memory[46][0]~regout\ : std_logic;
SIGNAL \memory[47][0]~72_combout\ : std_logic;
SIGNAL \memory[47][0]~73_combout\ : std_logic;
SIGNAL \memory[47][0]~regout\ : std_logic;
SIGNAL \memory[48][0]~163_combout\ : std_logic;
SIGNAL \memory[48][0]~regout\ : std_logic;
SIGNAL \memory[49][0]~156_combout\ : std_logic;
SIGNAL \memory[49][0]~157_combout\ : std_logic;
SIGNAL \memory[49][0]~regout\ : std_logic;
SIGNAL \memory[50][0]~159_combout\ : std_logic;
SIGNAL \memory[50][0]~160_combout\ : std_logic;
SIGNAL \memory[50][0]~regout\ : std_logic;
SIGNAL \value~32_combout\ : std_logic;
SIGNAL \value~33_combout\ : std_logic;
SIGNAL \value~7_combout\ : std_logic;
SIGNAL \value~8_combout\ : std_logic;
SIGNAL \value~1_combout\ : std_logic;
SIGNAL \value~9_combout\ : std_logic;
SIGNAL \value~10_combout\ : std_logic;
SIGNAL \value~15_combout\ : std_logic;
SIGNAL \value~16_combout\ : std_logic;
SIGNAL \value~13_combout\ : std_logic;
SIGNAL \value~14_combout\ : std_logic;
SIGNAL \value~17_combout\ : std_logic;
SIGNAL \value~11_combout\ : std_logic;
SIGNAL \value~12_combout\ : std_logic;
SIGNAL \value~20_combout\ : std_logic;
SIGNAL \value~31_combout\ : std_logic;
SIGNAL \value~35_combout\ : std_logic;
SIGNAL \memory~188_combout\ : std_logic;
SIGNAL \memory~193_combout\ : std_logic;
SIGNAL \memory~181_combout\ : std_logic;
SIGNAL \memory~185_combout\ : std_logic;
SIGNAL \memory~189_combout\ : std_logic;
SIGNAL \memory~194_combout\ : std_logic;
SIGNAL \memory~182_combout\ : std_logic;
SIGNAL \memory~186_combout\ : std_logic;
SIGNAL \memory~190_combout\ : std_logic;
SIGNAL \memory~211_combout\ : std_logic;
SIGNAL \memory~209_combout\ : std_logic;
SIGNAL \memory~208_combout\ : std_logic;
SIGNAL \memory~210_combout\ : std_logic;
SIGNAL \memory~199_combout\ : std_logic;
SIGNAL \memory~196_combout\ : std_logic;
SIGNAL \memory~197_combout\ : std_logic;
SIGNAL \memory~198_combout\ : std_logic;
SIGNAL \memory~203_combout\ : std_logic;
SIGNAL \memory~201_combout\ : std_logic;
SIGNAL \memory~200_combout\ : std_logic;
SIGNAL \memory~202_combout\ : std_logic;
SIGNAL \memory~207_combout\ : std_logic;
SIGNAL \memory~204_combout\ : std_logic;
SIGNAL \memory~205_combout\ : std_logic;
SIGNAL \memory~206_combout\ : std_logic;
SIGNAL \memory[0][1]~regout\ : std_logic;
SIGNAL \memory[1][1]~regout\ : std_logic;
SIGNAL \memory[2][1]~regout\ : std_logic;
SIGNAL \memory[3][1]~regout\ : std_logic;
SIGNAL \memory[4][1]~regout\ : std_logic;
SIGNAL \memory[5][1]~regout\ : std_logic;
SIGNAL \memory[6][1]~regout\ : std_logic;
SIGNAL \memory[7][1]~regout\ : std_logic;
SIGNAL \memory[8][1]~regout\ : std_logic;
SIGNAL \memory[9][1]~regout\ : std_logic;
SIGNAL \memory[10][1]~regout\ : std_logic;
SIGNAL \memory[11][1]~regout\ : std_logic;
SIGNAL \memory[12][1]~regout\ : std_logic;
SIGNAL \memory[13][1]~regout\ : std_logic;
SIGNAL \memory[14][1]~regout\ : std_logic;
SIGNAL \memory[15][1]~regout\ : std_logic;
SIGNAL \memory[16][1]~regout\ : std_logic;
SIGNAL \memory[17][1]~regout\ : std_logic;
SIGNAL \memory[18][1]~regout\ : std_logic;
SIGNAL \memory[19][1]~regout\ : std_logic;
SIGNAL \memory[20][1]~regout\ : std_logic;
SIGNAL \memory[21][1]~regout\ : std_logic;
SIGNAL \memory[22][1]~regout\ : std_logic;
SIGNAL \memory[23][1]~regout\ : std_logic;
SIGNAL \memory[24][1]~regout\ : std_logic;
SIGNAL \value~52_combout\ : std_logic;
SIGNAL \value~53_combout\ : std_logic;
SIGNAL \value~54_combout\ : std_logic;
SIGNAL \value~48_combout\ : std_logic;
SIGNAL \memory~178_combout\ : std_logic;
SIGNAL \memory[32][1]~regout\ : std_logic;
SIGNAL \memory~195_combout\ : std_logic;
SIGNAL \memory[31][1]~regout\ : std_logic;
SIGNAL \memory~183_combout\ : std_logic;
SIGNAL \memory~187_combout\ : std_logic;
SIGNAL \memory~191_combout\ : std_logic;
SIGNAL \memory~192_combout\ : std_logic;
SIGNAL \memory~180_combout\ : std_logic;
SIGNAL \memory~184_combout\ : std_logic;
SIGNAL \memory[25][1]~regout\ : std_logic;
SIGNAL \memory[26][1]~regout\ : std_logic;
SIGNAL \memory[27][1]~regout\ : std_logic;
SIGNAL \memory[28][1]~regout\ : std_logic;
SIGNAL \memory[29][1]~regout\ : std_logic;
SIGNAL \memory[30][1]~regout\ : std_logic;
SIGNAL \value~49_combout\ : std_logic;
SIGNAL \value~57_combout\ : std_logic;
SIGNAL \value~68_combout\ : std_logic;
SIGNAL \memory~426_combout\ : std_logic;
SIGNAL \memory[51][1]~regout\ : std_logic;
SIGNAL \memory~213_combout\ : std_logic;
SIGNAL \memory~212_combout\ : std_logic;
SIGNAL \memory~214_combout\ : std_logic;
SIGNAL \memory~167_combout\ : std_logic;
SIGNAL \memory~164_combout\ : std_logic;
SIGNAL \memory~165_combout\ : std_logic;
SIGNAL \memory~166_combout\ : std_logic;
SIGNAL \memory~171_combout\ : std_logic;
SIGNAL \memory~169_combout\ : std_logic;
SIGNAL \memory~168_combout\ : std_logic;
SIGNAL \memory~170_combout\ : std_logic;
SIGNAL \memory~175_combout\ : std_logic;
SIGNAL \memory~172_combout\ : std_logic;
SIGNAL \memory~173_combout\ : std_logic;
SIGNAL \memory~174_combout\ : std_logic;
SIGNAL \memory~179_combout\ : std_logic;
SIGNAL \memory~177_combout\ : std_logic;
SIGNAL \memory~176_combout\ : std_logic;
SIGNAL \memory[33][1]~regout\ : std_logic;
SIGNAL \memory[34][1]~regout\ : std_logic;
SIGNAL \memory[35][1]~regout\ : std_logic;
SIGNAL \memory[36][1]~regout\ : std_logic;
SIGNAL \memory[37][1]~regout\ : std_logic;
SIGNAL \memory[38][1]~regout\ : std_logic;
SIGNAL \memory[39][1]~regout\ : std_logic;
SIGNAL \memory[40][1]~regout\ : std_logic;
SIGNAL \memory[41][1]~regout\ : std_logic;
SIGNAL \memory[42][1]~regout\ : std_logic;
SIGNAL \memory[43][1]~regout\ : std_logic;
SIGNAL \memory[44][1]~regout\ : std_logic;
SIGNAL \memory[45][1]~regout\ : std_logic;
SIGNAL \memory[46][1]~regout\ : std_logic;
SIGNAL \memory[47][1]~regout\ : std_logic;
SIGNAL \memory[48][1]~regout\ : std_logic;
SIGNAL \memory[49][1]~regout\ : std_logic;
SIGNAL \memory[50][1]~regout\ : std_logic;
SIGNAL \value~69_combout\ : std_logic;
SIGNAL \value~70_combout\ : std_logic;
SIGNAL \value~36_combout\ : std_logic;
SIGNAL \value~39_combout\ : std_logic;
SIGNAL \value~40_combout\ : std_logic;
SIGNAL \value~41_combout\ : std_logic;
SIGNAL \value~44_combout\ : std_logic;
SIGNAL \value~45_combout\ : std_logic;
SIGNAL \value~42_combout\ : std_logic;
SIGNAL \value~43_combout\ : std_logic;
SIGNAL \value~46_combout\ : std_logic;
SIGNAL \value~47_combout\ : std_logic;
SIGNAL \value~71_combout\ : std_logic;
SIGNAL \memory~234_combout\ : std_logic;
SIGNAL \memory[27][2]~regout\ : std_logic;
SIGNAL \memory~231_combout\ : std_logic;
SIGNAL \memory~232_combout\ : std_logic;
SIGNAL \memory~233_combout\ : std_logic;
SIGNAL \memory~238_combout\ : std_logic;
SIGNAL \memory~236_combout\ : std_logic;
SIGNAL \memory~235_combout\ : std_logic;
SIGNAL \memory~237_combout\ : std_logic;
SIGNAL \memory~242_combout\ : std_logic;
SIGNAL \memory~239_combout\ : std_logic;
SIGNAL \memory~240_combout\ : std_logic;
SIGNAL \memory~241_combout\ : std_logic;
SIGNAL \memory~262_combout\ : std_logic;
SIGNAL \memory~254_combout\ : std_logic;
SIGNAL \memory~250_combout\ : std_logic;
SIGNAL \memory~258_combout\ : std_logic;
SIGNAL \memory~259_combout\ : std_logic;
SIGNAL \memory~251_combout\ : std_logic;
SIGNAL \memory~247_combout\ : std_logic;
SIGNAL \memory~255_combout\ : std_logic;
SIGNAL \memory~260_combout\ : std_logic;
SIGNAL \memory~252_combout\ : std_logic;
SIGNAL \memory~248_combout\ : std_logic;
SIGNAL \memory~256_combout\ : std_logic;
SIGNAL \memory~261_combout\ : std_logic;
SIGNAL \memory~253_combout\ : std_logic;
SIGNAL \memory~249_combout\ : std_logic;
SIGNAL \memory~257_combout\ : std_logic;
SIGNAL \memory[0][2]~regout\ : std_logic;
SIGNAL \memory[1][2]~regout\ : std_logic;
SIGNAL \memory[2][2]~regout\ : std_logic;
SIGNAL \memory[3][2]~regout\ : std_logic;
SIGNAL \memory[4][2]~regout\ : std_logic;
SIGNAL \memory[5][2]~regout\ : std_logic;
SIGNAL \memory[6][2]~regout\ : std_logic;
SIGNAL \memory[7][2]~regout\ : std_logic;
SIGNAL \memory[8][2]~regout\ : std_logic;
SIGNAL \memory[9][2]~regout\ : std_logic;
SIGNAL \memory[10][2]~regout\ : std_logic;
SIGNAL \memory[11][2]~regout\ : std_logic;
SIGNAL \memory[12][2]~regout\ : std_logic;
SIGNAL \memory[13][2]~regout\ : std_logic;
SIGNAL \memory[14][2]~regout\ : std_logic;
SIGNAL \memory[15][2]~regout\ : std_logic;
SIGNAL \memory[16][2]~regout\ : std_logic;
SIGNAL \memory[17][2]~regout\ : std_logic;
SIGNAL \memory[18][2]~regout\ : std_logic;
SIGNAL \memory[19][2]~regout\ : std_logic;
SIGNAL \memory[20][2]~regout\ : std_logic;
SIGNAL \memory[21][2]~regout\ : std_logic;
SIGNAL \memory[22][2]~regout\ : std_logic;
SIGNAL \memory[23][2]~regout\ : std_logic;
SIGNAL \memory[24][2]~regout\ : std_logic;
SIGNAL \memory[25][2]~regout\ : std_logic;
SIGNAL \memory[26][2]~regout\ : std_logic;
SIGNAL \value~84_combout\ : std_logic;
SIGNAL \value~85_combout\ : std_logic;
SIGNAL \value~86_combout\ : std_logic;
SIGNAL \value~87_combout\ : std_logic;
SIGNAL \value~88_combout\ : std_logic;
SIGNAL \value~89_combout\ : std_logic;
SIGNAL \value~92_combout\ : std_logic;
SIGNAL \value~100_combout\ : std_logic;
SIGNAL \value~101_combout\ : std_logic;
SIGNAL \value~93_combout\ : std_logic;
SIGNAL \value~94_combout\ : std_logic;
SIGNAL \value~95_combout\ : std_logic;
SIGNAL \value~96_combout\ : std_logic;
SIGNAL \value~97_combout\ : std_logic;
SIGNAL \value~98_combout\ : std_logic;
SIGNAL \value~99_combout\ : std_logic;
SIGNAL \value~102_combout\ : std_logic;
SIGNAL \value~103_combout\ : std_logic;
SIGNAL \memory~266_combout\ : std_logic;
SIGNAL \memory[51][2]~regout\ : std_logic;
SIGNAL \memory~263_combout\ : std_logic;
SIGNAL \memory~264_combout\ : std_logic;
SIGNAL \memory~265_combout\ : std_logic;
SIGNAL \memory~218_combout\ : std_logic;
SIGNAL \memory~222_combout\ : std_logic;
SIGNAL \memory~226_combout\ : std_logic;
SIGNAL \memory~230_combout\ : std_logic;
SIGNAL \memory~216_combout\ : std_logic;
SIGNAL \memory~219_combout\ : std_logic;
SIGNAL \memory~224_combout\ : std_logic;
SIGNAL \memory~227_combout\ : std_logic;
SIGNAL \memory~215_combout\ : std_logic;
SIGNAL \memory~220_combout\ : std_logic;
SIGNAL \memory~223_combout\ : std_logic;
SIGNAL \memory~228_combout\ : std_logic;
SIGNAL \memory~217_combout\ : std_logic;
SIGNAL \memory~221_combout\ : std_logic;
SIGNAL \memory~225_combout\ : std_logic;
SIGNAL \memory~229_combout\ : std_logic;
SIGNAL \memory~246_combout\ : std_logic;
SIGNAL \memory~244_combout\ : std_logic;
SIGNAL \memory~243_combout\ : std_logic;
SIGNAL \memory~245_combout\ : std_logic;
SIGNAL \memory[28][2]~regout\ : std_logic;
SIGNAL \memory[29][2]~regout\ : std_logic;
SIGNAL \memory[30][2]~regout\ : std_logic;
SIGNAL \memory[31][2]~regout\ : std_logic;
SIGNAL \memory[32][2]~regout\ : std_logic;
SIGNAL \memory[33][2]~regout\ : std_logic;
SIGNAL \memory[34][2]~regout\ : std_logic;
SIGNAL \memory[35][2]~regout\ : std_logic;
SIGNAL \memory[36][2]~regout\ : std_logic;
SIGNAL \memory[37][2]~regout\ : std_logic;
SIGNAL \memory[38][2]~regout\ : std_logic;
SIGNAL \memory[39][2]~regout\ : std_logic;
SIGNAL \memory[40][2]~regout\ : std_logic;
SIGNAL \memory[41][2]~regout\ : std_logic;
SIGNAL \memory[42][2]~regout\ : std_logic;
SIGNAL \memory[43][2]~regout\ : std_logic;
SIGNAL \memory[44][2]~regout\ : std_logic;
SIGNAL \memory[45][2]~regout\ : std_logic;
SIGNAL \memory[46][2]~regout\ : std_logic;
SIGNAL \memory[47][2]~regout\ : std_logic;
SIGNAL \memory[48][2]~regout\ : std_logic;
SIGNAL \memory[49][2]~regout\ : std_logic;
SIGNAL \memory[50][2]~regout\ : std_logic;
SIGNAL \value~105_combout\ : std_logic;
SIGNAL \value~79_combout\ : std_logic;
SIGNAL \value~80_combout\ : std_logic;
SIGNAL \value~81_combout\ : std_logic;
SIGNAL \value~82_combout\ : std_logic;
SIGNAL \value~106_combout\ : std_logic;
SIGNAL \memory~317_combout\ : std_logic;
SIGNAL \memory~270_combout\ : std_logic;
SIGNAL \memory~268_combout\ : std_logic;
SIGNAL \memory~267_combout\ : std_logic;
SIGNAL \memory~269_combout\ : std_logic;
SIGNAL \memory~278_combout\ : std_logic;
SIGNAL \memory~275_combout\ : std_logic;
SIGNAL \memory~276_combout\ : std_logic;
SIGNAL \memory~277_combout\ : std_logic;
SIGNAL \memory~274_combout\ : std_logic;
SIGNAL \memory~272_combout\ : std_logic;
SIGNAL \memory~271_combout\ : std_logic;
SIGNAL \memory~273_combout\ : std_logic;
SIGNAL \memory~282_combout\ : std_logic;
SIGNAL \memory~279_combout\ : std_logic;
SIGNAL \memory~280_combout\ : std_logic;
SIGNAL \memory~281_combout\ : std_logic;
SIGNAL \memory~298_combout\ : std_logic;
SIGNAL \memory~290_combout\ : std_logic;
SIGNAL \memory~286_combout\ : std_logic;
SIGNAL \memory~294_combout\ : std_logic;
SIGNAL \memory~295_combout\ : std_logic;
SIGNAL \memory~288_combout\ : std_logic;
SIGNAL \memory~283_combout\ : std_logic;
SIGNAL \memory~292_combout\ : std_logic;
SIGNAL \memory~296_combout\ : std_logic;
SIGNAL \memory~287_combout\ : std_logic;
SIGNAL \memory~284_combout\ : std_logic;
SIGNAL \memory~291_combout\ : std_logic;
SIGNAL \memory~297_combout\ : std_logic;
SIGNAL \memory~289_combout\ : std_logic;
SIGNAL \memory~285_combout\ : std_logic;
SIGNAL \memory~293_combout\ : std_logic;
SIGNAL \memory~314_combout\ : std_logic;
SIGNAL \memory~311_combout\ : std_logic;
SIGNAL \memory~312_combout\ : std_logic;
SIGNAL \memory~313_combout\ : std_logic;
SIGNAL \memory~302_combout\ : std_logic;
SIGNAL \memory~300_combout\ : std_logic;
SIGNAL \memory~299_combout\ : std_logic;
SIGNAL \memory~301_combout\ : std_logic;
SIGNAL \memory~306_combout\ : std_logic;
SIGNAL \memory~303_combout\ : std_logic;
SIGNAL \memory~304_combout\ : std_logic;
SIGNAL \memory~305_combout\ : std_logic;
SIGNAL \memory~310_combout\ : std_logic;
SIGNAL \memory~308_combout\ : std_logic;
SIGNAL \memory~307_combout\ : std_logic;
SIGNAL \memory~309_combout\ : std_logic;
SIGNAL \memory[0][3]~regout\ : std_logic;
SIGNAL \memory[1][3]~regout\ : std_logic;
SIGNAL \memory[2][3]~regout\ : std_logic;
SIGNAL \memory[3][3]~regout\ : std_logic;
SIGNAL \memory[4][3]~regout\ : std_logic;
SIGNAL \memory[5][3]~regout\ : std_logic;
SIGNAL \memory[6][3]~regout\ : std_logic;
SIGNAL \memory[7][3]~regout\ : std_logic;
SIGNAL \memory[8][3]~regout\ : std_logic;
SIGNAL \memory[9][3]~regout\ : std_logic;
SIGNAL \memory[10][3]~regout\ : std_logic;
SIGNAL \memory[11][3]~regout\ : std_logic;
SIGNAL \memory[12][3]~regout\ : std_logic;
SIGNAL \memory[13][3]~regout\ : std_logic;
SIGNAL \memory[14][3]~regout\ : std_logic;
SIGNAL \memory[15][3]~regout\ : std_logic;
SIGNAL \memory[16][3]~regout\ : std_logic;
SIGNAL \memory[17][3]~regout\ : std_logic;
SIGNAL \memory[18][3]~regout\ : std_logic;
SIGNAL \memory[19][3]~regout\ : std_logic;
SIGNAL \memory[20][3]~regout\ : std_logic;
SIGNAL \memory[21][3]~regout\ : std_logic;
SIGNAL \memory[22][3]~regout\ : std_logic;
SIGNAL \memory[23][3]~regout\ : std_logic;
SIGNAL \memory[24][3]~regout\ : std_logic;
SIGNAL \memory[25][3]~regout\ : std_logic;
SIGNAL \memory[26][3]~regout\ : std_logic;
SIGNAL \memory[27][3]~regout\ : std_logic;
SIGNAL \memory[28][3]~regout\ : std_logic;
SIGNAL \memory[29][3]~regout\ : std_logic;
SIGNAL \memory[30][3]~regout\ : std_logic;
SIGNAL \memory[31][3]~regout\ : std_logic;
SIGNAL \memory[32][3]~regout\ : std_logic;
SIGNAL \memory[33][3]~regout\ : std_logic;
SIGNAL \memory[34][3]~regout\ : std_logic;
SIGNAL \memory[35][3]~regout\ : std_logic;
SIGNAL \memory[36][3]~regout\ : std_logic;
SIGNAL \memory[37][3]~regout\ : std_logic;
SIGNAL \memory[38][3]~regout\ : std_logic;
SIGNAL \memory[39][3]~regout\ : std_logic;
SIGNAL \memory[40][3]~regout\ : std_logic;
SIGNAL \memory[41][3]~regout\ : std_logic;
SIGNAL \memory[42][3]~regout\ : std_logic;
SIGNAL \memory[43][3]~regout\ : std_logic;
SIGNAL \memory[44][3]~regout\ : std_logic;
SIGNAL \memory[45][3]~regout\ : std_logic;
SIGNAL \memory[46][3]~regout\ : std_logic;
SIGNAL \memory[47][3]~regout\ : std_logic;
SIGNAL \memory[48][3]~regout\ : std_logic;
SIGNAL \memory~318_combout\ : std_logic;
SIGNAL \memory[51][3]~regout\ : std_logic;
SIGNAL \memory~316_combout\ : std_logic;
SIGNAL \memory~315_combout\ : std_logic;
SIGNAL \memory[49][3]~regout\ : std_logic;
SIGNAL \memory[50][3]~regout\ : std_logic;
SIGNAL \value~139_combout\ : std_logic;
SIGNAL \value~140_combout\ : std_logic;
SIGNAL \value~120_combout\ : std_logic;
SIGNAL \value~121_combout\ : std_logic;
SIGNAL \value~124_combout\ : std_logic;
SIGNAL \value~118_combout\ : std_logic;
SIGNAL \value~119_combout\ : std_logic;
SIGNAL \value~125_combout\ : std_logic;
SIGNAL \value~126_combout\ : std_logic;
SIGNAL \value~127_combout\ : std_logic;
SIGNAL \value~138_combout\ : std_logic;
SIGNAL \value~112_combout\ : std_logic;
SIGNAL \value~113_combout\ : std_logic;
SIGNAL \value~114_combout\ : std_logic;
SIGNAL \value~115_combout\ : std_logic;
SIGNAL \value~116_combout\ : std_logic;
SIGNAL \value~107_combout\ : std_logic;
SIGNAL \value~108_combout\ : std_logic;
SIGNAL \value~109_combout\ : std_logic;
SIGNAL \value~110_combout\ : std_logic;
SIGNAL \value~111_combout\ : std_logic;
SIGNAL \value~117_combout\ : std_logic;
SIGNAL \value~141_combout\ : std_logic;
SIGNAL \memory~351_combout\ : std_logic;
SIGNAL \memory[10][4]~regout\ : std_logic;
SIGNAL \memory~356_combout\ : std_logic;
SIGNAL \memory[9][4]~regout\ : std_logic;
SIGNAL \memory~359_combout\ : std_logic;
SIGNAL \memory~363_combout\ : std_logic;
SIGNAL \memory~352_combout\ : std_logic;
SIGNAL \memory~355_combout\ : std_logic;
SIGNAL \memory~360_combout\ : std_logic;
SIGNAL \memory~365_combout\ : std_logic;
SIGNAL \memory~353_combout\ : std_logic;
SIGNAL \memory~357_combout\ : std_logic;
SIGNAL \memory~361_combout\ : std_logic;
SIGNAL \memory[0][4]~regout\ : std_logic;
SIGNAL \memory[1][4]~regout\ : std_logic;
SIGNAL \memory[2][4]~regout\ : std_logic;
SIGNAL \memory[3][4]~regout\ : std_logic;
SIGNAL \memory[4][4]~regout\ : std_logic;
SIGNAL \memory[5][4]~regout\ : std_logic;
SIGNAL \memory[6][4]~regout\ : std_logic;
SIGNAL \memory[7][4]~regout\ : std_logic;
SIGNAL \memory[8][4]~regout\ : std_logic;
SIGNAL \value~167_combout\ : std_logic;
SIGNAL \value~168_combout\ : std_logic;
SIGNAL \value~169_combout\ : std_logic;
SIGNAL \memory~364_combout\ : std_logic;
SIGNAL \memory[11][4]~regout\ : std_logic;
SIGNAL \value~170_combout\ : std_logic;
SIGNAL \value~171_combout\ : std_logic;
SIGNAL \value~172_combout\ : std_logic;
SIGNAL \memory~342_combout\ : std_logic;
SIGNAL \memory[23][4]~regout\ : std_logic;
SIGNAL \memory~339_combout\ : std_logic;
SIGNAL \memory[22][4]~regout\ : std_logic;
SIGNAL \memory~340_combout\ : std_logic;
SIGNAL \memory[21][4]~regout\ : std_logic;
SIGNAL \memory~341_combout\ : std_logic;
SIGNAL \memory[20][4]~regout\ : std_logic;
SIGNAL \memory~346_combout\ : std_logic;
SIGNAL \memory~344_combout\ : std_logic;
SIGNAL \memory~343_combout\ : std_logic;
SIGNAL \memory~345_combout\ : std_logic;
SIGNAL \memory~366_combout\ : std_logic;
SIGNAL \memory~354_combout\ : std_logic;
SIGNAL \memory~358_combout\ : std_logic;
SIGNAL \memory~362_combout\ : std_logic;
SIGNAL \memory[12][4]~regout\ : std_logic;
SIGNAL \memory[13][4]~regout\ : std_logic;
SIGNAL \memory[14][4]~regout\ : std_logic;
SIGNAL \memory[15][4]~regout\ : std_logic;
SIGNAL \memory[16][4]~regout\ : std_logic;
SIGNAL \memory[17][4]~regout\ : std_logic;
SIGNAL \memory[18][4]~regout\ : std_logic;
SIGNAL \memory[19][4]~regout\ : std_logic;
SIGNAL \value~157_combout\ : std_logic;
SIGNAL \value~158_combout\ : std_logic;
SIGNAL \value~159_combout\ : std_logic;
SIGNAL \memory~329_combout\ : std_logic;
SIGNAL \memory[34][4]~regout\ : std_logic;
SIGNAL \memory~325_combout\ : std_logic;
SIGNAL \memory[33][4]~regout\ : std_logic;
SIGNAL \memory~333_combout\ : std_logic;
SIGNAL \memory[32][4]~regout\ : std_logic;
SIGNAL \memory~350_combout\ : std_logic;
SIGNAL \memory[31][4]~regout\ : std_logic;
SIGNAL \memory~347_combout\ : std_logic;
SIGNAL \memory[30][4]~regout\ : std_logic;
SIGNAL \memory~348_combout\ : std_logic;
SIGNAL \memory~349_combout\ : std_logic;
SIGNAL \memory~338_combout\ : std_logic;
SIGNAL \memory~336_combout\ : std_logic;
SIGNAL \memory~335_combout\ : std_logic;
SIGNAL \memory~337_combout\ : std_logic;
SIGNAL \memory[24][4]~regout\ : std_logic;
SIGNAL \memory[25][4]~regout\ : std_logic;
SIGNAL \memory[26][4]~regout\ : std_logic;
SIGNAL \memory[27][4]~regout\ : std_logic;
SIGNAL \memory[28][4]~regout\ : std_logic;
SIGNAL \memory[29][4]~regout\ : std_logic;
SIGNAL \value~160_combout\ : std_logic;
SIGNAL \value~161_combout\ : std_logic;
SIGNAL \value~162_combout\ : std_logic;
SIGNAL \value~173_combout\ : std_logic;
SIGNAL \memory~322_combout\ : std_logic;
SIGNAL \memory[47][4]~regout\ : std_logic;
SIGNAL \memory~330_combout\ : std_logic;
SIGNAL \memory[46][4]~regout\ : std_logic;
SIGNAL \memory~326_combout\ : std_logic;
SIGNAL \memory~334_combout\ : std_logic;
SIGNAL \memory~319_combout\ : std_logic;
SIGNAL \memory~328_combout\ : std_logic;
SIGNAL \memory~323_combout\ : std_logic;
SIGNAL \memory~332_combout\ : std_logic;
SIGNAL \memory~320_combout\ : std_logic;
SIGNAL \memory~327_combout\ : std_logic;
SIGNAL \memory~324_combout\ : std_logic;
SIGNAL \memory~331_combout\ : std_logic;
SIGNAL \memory~321_combout\ : std_logic;
SIGNAL \memory[35][4]~regout\ : std_logic;
SIGNAL \memory[36][4]~regout\ : std_logic;
SIGNAL \memory[37][4]~regout\ : std_logic;
SIGNAL \memory[38][4]~regout\ : std_logic;
SIGNAL \memory[39][4]~regout\ : std_logic;
SIGNAL \memory[40][4]~regout\ : std_logic;
SIGNAL \memory[41][4]~regout\ : std_logic;
SIGNAL \memory[42][4]~regout\ : std_logic;
SIGNAL \memory[43][4]~regout\ : std_logic;
SIGNAL \memory[44][4]~regout\ : std_logic;
SIGNAL \memory[45][4]~regout\ : std_logic;
SIGNAL \value~145_combout\ : std_logic;
SIGNAL \value~146_combout\ : std_logic;
SIGNAL \value~152_combout\ : std_logic;
SIGNAL \memory~367_combout\ : std_logic;
SIGNAL \memory[50][4]~regout\ : std_logic;
SIGNAL \memory~368_combout\ : std_logic;
SIGNAL \memory[49][4]~regout\ : std_logic;
SIGNAL \memory~369_combout\ : std_logic;
SIGNAL \memory[48][4]~regout\ : std_logic;
SIGNAL \value~174_combout\ : std_logic;
SIGNAL \value~175_combout\ : std_logic;
SIGNAL \value~176_combout\ : std_logic;
SIGNAL \memory~372_combout\ : std_logic;
SIGNAL \memory[44][5]~regout\ : std_logic;
SIGNAL \memory~377_combout\ : std_logic;
SIGNAL \memory~375_combout\ : std_logic;
SIGNAL \memory~374_combout\ : std_logic;
SIGNAL \memory~376_combout\ : std_logic;
SIGNAL \memory~381_combout\ : std_logic;
SIGNAL \memory~378_combout\ : std_logic;
SIGNAL \memory~379_combout\ : std_logic;
SIGNAL \memory~380_combout\ : std_logic;
SIGNAL \memory~385_combout\ : std_logic;
SIGNAL \memory~383_combout\ : std_logic;
SIGNAL \memory~382_combout\ : std_logic;
SIGNAL \memory~384_combout\ : std_logic;
SIGNAL \memory~401_combout\ : std_logic;
SIGNAL \memory~389_combout\ : std_logic;
SIGNAL \memory~393_combout\ : std_logic;
SIGNAL \memory~397_combout\ : std_logic;
SIGNAL \memory~399_combout\ : std_logic;
SIGNAL \memory~386_combout\ : std_logic;
SIGNAL \memory~391_combout\ : std_logic;
SIGNAL \memory~394_combout\ : std_logic;
SIGNAL \memory~398_combout\ : std_logic;
SIGNAL \memory~387_combout\ : std_logic;
SIGNAL \memory~390_combout\ : std_logic;
SIGNAL \memory~395_combout\ : std_logic;
SIGNAL \memory~400_combout\ : std_logic;
SIGNAL \memory~388_combout\ : std_logic;
SIGNAL \memory~392_combout\ : std_logic;
SIGNAL \memory~396_combout\ : std_logic;
SIGNAL \memory~417_combout\ : std_logic;
SIGNAL \memory~415_combout\ : std_logic;
SIGNAL \memory~414_combout\ : std_logic;
SIGNAL \memory~416_combout\ : std_logic;
SIGNAL \memory~409_combout\ : std_logic;
SIGNAL \memory~406_combout\ : std_logic;
SIGNAL \memory~407_combout\ : std_logic;
SIGNAL \memory~408_combout\ : std_logic;
SIGNAL \memory~405_combout\ : std_logic;
SIGNAL \memory~403_combout\ : std_logic;
SIGNAL \memory~402_combout\ : std_logic;
SIGNAL \memory~404_combout\ : std_logic;
SIGNAL \memory~413_combout\ : std_logic;
SIGNAL \memory~410_combout\ : std_logic;
SIGNAL \memory~411_combout\ : std_logic;
SIGNAL \memory~412_combout\ : std_logic;
SIGNAL \memory[0][5]~regout\ : std_logic;
SIGNAL \memory[1][5]~regout\ : std_logic;
SIGNAL \memory[2][5]~regout\ : std_logic;
SIGNAL \memory[3][5]~regout\ : std_logic;
SIGNAL \memory[4][5]~regout\ : std_logic;
SIGNAL \memory[5][5]~regout\ : std_logic;
SIGNAL \memory[6][5]~regout\ : std_logic;
SIGNAL \memory[7][5]~regout\ : std_logic;
SIGNAL \memory[8][5]~regout\ : std_logic;
SIGNAL \memory[9][5]~regout\ : std_logic;
SIGNAL \memory[10][5]~regout\ : std_logic;
SIGNAL \memory[11][5]~regout\ : std_logic;
SIGNAL \memory[12][5]~regout\ : std_logic;
SIGNAL \memory[13][5]~regout\ : std_logic;
SIGNAL \memory[14][5]~regout\ : std_logic;
SIGNAL \memory[15][5]~regout\ : std_logic;
SIGNAL \memory[16][5]~regout\ : std_logic;
SIGNAL \memory[17][5]~regout\ : std_logic;
SIGNAL \memory[18][5]~regout\ : std_logic;
SIGNAL \memory[19][5]~regout\ : std_logic;
SIGNAL \memory[20][5]~regout\ : std_logic;
SIGNAL \memory[21][5]~regout\ : std_logic;
SIGNAL \memory[22][5]~regout\ : std_logic;
SIGNAL \memory[23][5]~regout\ : std_logic;
SIGNAL \memory[24][5]~regout\ : std_logic;
SIGNAL \memory[25][5]~regout\ : std_logic;
SIGNAL \memory[26][5]~regout\ : std_logic;
SIGNAL \memory[27][5]~regout\ : std_logic;
SIGNAL \memory[28][5]~regout\ : std_logic;
SIGNAL \memory[29][5]~regout\ : std_logic;
SIGNAL \memory[30][5]~regout\ : std_logic;
SIGNAL \memory[31][5]~regout\ : std_logic;
SIGNAL \memory[32][5]~regout\ : std_logic;
SIGNAL \memory[33][5]~regout\ : std_logic;
SIGNAL \memory[34][5]~regout\ : std_logic;
SIGNAL \memory[35][5]~regout\ : std_logic;
SIGNAL \memory[36][5]~regout\ : std_logic;
SIGNAL \memory[37][5]~regout\ : std_logic;
SIGNAL \memory[38][5]~regout\ : std_logic;
SIGNAL \memory[39][5]~regout\ : std_logic;
SIGNAL \memory[40][5]~regout\ : std_logic;
SIGNAL \memory[41][5]~regout\ : std_logic;
SIGNAL \memory[42][5]~regout\ : std_logic;
SIGNAL \memory[43][5]~regout\ : std_logic;
SIGNAL \value~180_combout\ : std_logic;
SIGNAL \value~181_combout\ : std_logic;
SIGNAL \value~187_combout\ : std_logic;
SIGNAL \memory~419_combout\ : std_logic;
SIGNAL \memory~418_combout\ : std_logic;
SIGNAL \memory~420_combout\ : std_logic;
SIGNAL \memory~373_combout\ : std_logic;
SIGNAL \memory~370_combout\ : std_logic;
SIGNAL \memory~371_combout\ : std_logic;
SIGNAL \memory[45][5]~regout\ : std_logic;
SIGNAL \memory[46][5]~regout\ : std_logic;
SIGNAL \memory[47][5]~regout\ : std_logic;
SIGNAL \memory[48][5]~regout\ : std_logic;
SIGNAL \memory[49][5]~regout\ : std_logic;
SIGNAL \memory[50][5]~regout\ : std_logic;
SIGNAL \memory~428_combout\ : std_logic;
SIGNAL \memory[51][5]~regout\ : std_logic;
SIGNAL \value~209_combout\ : std_logic;
SIGNAL \value~210_combout\ : std_logic;
SIGNAL \value~201_combout\ : std_logic;
SIGNAL \value~202_combout\ : std_logic;
SIGNAL \value~203_combout\ : std_logic;
SIGNAL \value~204_combout\ : std_logic;
SIGNAL \value~205_combout\ : std_logic;
SIGNAL \value~206_combout\ : std_logic;
SIGNAL \value~207_combout\ : std_logic;
SIGNAL \value~190_combout\ : std_logic;
SIGNAL \value~191_combout\ : std_logic;
SIGNAL \value~194_combout\ : std_logic;
SIGNAL \value~195_combout\ : std_logic;
SIGNAL \value~196_combout\ : std_logic;
SIGNAL \value~197_combout\ : std_logic;
SIGNAL \value~208_combout\ : std_logic;
SIGNAL \value~211_combout\ : std_logic;
SIGNAL t_num : std_logic_vector(31 DOWNTO 0);
SIGNAL \mode~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \data~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \addr~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_always~1_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_enable <= enable;
ww_reset <= reset;
ww_mode <= mode;
ww_addr <= addr;
ww_data <= data;
full <= ww_full;
empty <= ww_empty;
num <= ww_num;
value <= ww_value;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_always~1_combout\ <= NOT \always~1_combout\;

-- Location: LCFF_X23_Y15_N7
\t_num[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[19]~72_combout\,
	sdata => \Add1~144_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(19));

-- Location: LCFF_X23_Y15_N17
\t_num[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[24]~82_combout\,
	sdata => \Add1~149_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(24));

-- Location: LCFF_X23_Y15_N21
\t_num[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[26]~86_combout\,
	sdata => \Add1~151_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(26));

-- Location: LCCOMB_X23_Y15_N6
\t_num[19]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[19]~72_combout\ = (t_num(19) & (!\t_num[18]~71\)) # (!t_num(19) & ((\t_num[18]~71\) # (GND)))
-- \t_num[19]~73\ = CARRY((!\t_num[18]~71\) # (!t_num(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(19),
	datad => VCC,
	cin => \t_num[18]~71\,
	combout => \t_num[19]~72_combout\,
	cout => \t_num[19]~73\);

-- Location: LCCOMB_X22_Y15_N6
\Add1~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~102_combout\ = (t_num(19) & (\Add1~101\ & VCC)) # (!t_num(19) & (!\Add1~101\))
-- \Add1~103\ = CARRY((!t_num(19) & !\Add1~101\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(19),
	datad => VCC,
	cin => \Add1~101\,
	combout => \Add1~102_combout\,
	cout => \Add1~103\);

-- Location: LCCOMB_X23_Y15_N16
\t_num[24]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[24]~82_combout\ = (t_num(24) & (\t_num[23]~81\ $ (GND))) # (!t_num(24) & (!\t_num[23]~81\ & VCC))
-- \t_num[24]~83\ = CARRY((t_num(24) & !\t_num[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(24),
	datad => VCC,
	cin => \t_num[23]~81\,
	combout => \t_num[24]~82_combout\,
	cout => \t_num[24]~83\);

-- Location: LCCOMB_X22_Y15_N16
\Add1~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~112_combout\ = (t_num(24) & ((GND) # (!\Add1~111\))) # (!t_num(24) & (\Add1~111\ $ (GND)))
-- \Add1~113\ = CARRY((t_num(24)) # (!\Add1~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(24),
	datad => VCC,
	cin => \Add1~111\,
	combout => \Add1~112_combout\,
	cout => \Add1~113\);

-- Location: LCCOMB_X23_Y15_N20
\t_num[26]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[26]~86_combout\ = (t_num(26) & (\t_num[25]~85\ $ (GND))) # (!t_num(26) & (!\t_num[25]~85\ & VCC))
-- \t_num[26]~87\ = CARRY((t_num(26) & !\t_num[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(26),
	datad => VCC,
	cin => \t_num[25]~85\,
	combout => \t_num[26]~86_combout\,
	cout => \t_num[26]~87\);

-- Location: LCCOMB_X22_Y15_N20
\Add1~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~116_combout\ = (t_num(26) & ((GND) # (!\Add1~115\))) # (!t_num(26) & (\Add1~115\ $ (GND)))
-- \Add1~117\ = CARRY((t_num(26)) # (!\Add1~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(26),
	datad => VCC,
	cin => \Add1~115\,
	combout => \Add1~116_combout\,
	cout => \Add1~117\);

-- Location: LCCOMB_X23_Y18_N6
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!t_num(0) & (!t_num(1) & (!t_num(6) & !t_num(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_num(0),
	datab => t_num(1),
	datac => t_num(6),
	datad => t_num(3),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\Equal5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!t_num(24) & (!t_num(25) & (!t_num(23) & !t_num(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_num(24),
	datab => t_num(25),
	datac => t_num(23),
	datad => t_num(26),
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X27_Y18_N10
\value~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~0_combout\ = (\addr~combout\(1) & ((\addr~combout\(2)) # ((\memory[42][0]~regout\)))) # (!\addr~combout\(1) & (!\addr~combout\(2) & (\memory[40][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(2),
	datac => \memory[40][0]~regout\,
	datad => \memory[42][0]~regout\,
	combout => \value~0_combout\);

-- Location: LCCOMB_X23_Y19_N24
\value~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~2_combout\ = (\addr~combout\(1) & (((\addr~combout\(2)) # (\memory[35][0]~regout\)))) # (!\addr~combout\(1) & (\memory[33][0]~regout\ & (!\addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[33][0]~regout\,
	datab => \addr~combout\(1),
	datac => \addr~combout\(2),
	datad => \memory[35][0]~regout\,
	combout => \value~2_combout\);

-- Location: LCCOMB_X24_Y22_N0
\value~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~3_combout\ = (\value~2_combout\ & ((\memory[39][0]~regout\) # ((!\addr~combout\(2))))) # (!\value~2_combout\ & (((\memory[37][0]~regout\ & \addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~2_combout\,
	datab => \memory[39][0]~regout\,
	datac => \memory[37][0]~regout\,
	datad => \addr~combout\(2),
	combout => \value~3_combout\);

-- Location: LCCOMB_X25_Y22_N2
\value~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~4_combout\ = (\addr~combout\(1) & ((\memory[34][0]~regout\) # ((\addr~combout\(2))))) # (!\addr~combout\(1) & (((\memory[32][0]~regout\ & !\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[34][0]~regout\,
	datab => \addr~combout\(1),
	datac => \memory[32][0]~regout\,
	datad => \addr~combout\(2),
	combout => \value~4_combout\);

-- Location: LCCOMB_X24_Y22_N18
\value~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~5_combout\ = (\value~4_combout\ & ((\memory[38][0]~regout\) # ((!\addr~combout\(2))))) # (!\value~4_combout\ & (((\memory[36][0]~regout\ & \addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~4_combout\,
	datab => \memory[38][0]~regout\,
	datac => \memory[36][0]~regout\,
	datad => \addr~combout\(2),
	combout => \value~5_combout\);

-- Location: LCCOMB_X25_Y22_N12
\value~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~6_combout\ = (\addr~combout\(0) & (((\value~3_combout\) # (\addr~combout\(3))))) # (!\addr~combout\(0) & (\value~5_combout\ & ((!\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \value~5_combout\,
	datac => \value~3_combout\,
	datad => \addr~combout\(3),
	combout => \value~6_combout\);

-- Location: LCCOMB_X21_Y20_N8
\value~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~18_combout\ = (\addr~combout\(0) & (((\memory[27][0]~regout\) # (\addr~combout\(2))))) # (!\addr~combout\(0) & (\memory[26][0]~regout\ & ((!\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[26][0]~regout\,
	datab => \addr~combout\(0),
	datac => \memory[27][0]~regout\,
	datad => \addr~combout\(2),
	combout => \value~18_combout\);

-- Location: LCCOMB_X22_Y20_N14
\value~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~19_combout\ = (\value~18_combout\ & (((\memory[31][0]~regout\) # (!\addr~combout\(2))))) # (!\value~18_combout\ & (\memory[30][0]~regout\ & (\addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~18_combout\,
	datab => \memory[30][0]~regout\,
	datac => \addr~combout\(2),
	datad => \memory[31][0]~regout\,
	combout => \value~19_combout\);

-- Location: LCCOMB_X25_Y22_N18
\value~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~21_combout\ = (\addr~combout\(0) & ((\memory[9][0]~regout\) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\memory[8][0]~regout\ & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[9][0]~regout\,
	datab => \memory[8][0]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~21_combout\);

-- Location: LCCOMB_X25_Y22_N24
\value~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~22_combout\ = (\value~21_combout\ & ((\memory[11][0]~regout\) # ((!\addr~combout\(1))))) # (!\value~21_combout\ & (((\memory[10][0]~regout\ & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[11][0]~regout\,
	datab => \value~21_combout\,
	datac => \memory[10][0]~regout\,
	datad => \addr~combout\(1),
	combout => \value~22_combout\);

-- Location: LCCOMB_X21_Y19_N16
\value~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~23_combout\ = (\addr~combout\(1) & (((\memory[6][0]~regout\) # (\addr~combout\(0))))) # (!\addr~combout\(1) & (\memory[4][0]~regout\ & ((!\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[4][0]~regout\,
	datab => \memory[6][0]~regout\,
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \value~23_combout\);

-- Location: LCCOMB_X21_Y19_N6
\value~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~24_combout\ = (\value~23_combout\ & (((\memory[7][0]~regout\) # (!\addr~combout\(0))))) # (!\value~23_combout\ & (\memory[5][0]~regout\ & ((\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][0]~regout\,
	datab => \memory[7][0]~regout\,
	datac => \value~23_combout\,
	datad => \addr~combout\(0),
	combout => \value~24_combout\);

-- Location: LCCOMB_X25_Y22_N6
\value~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~25_combout\ = (\addr~combout\(0) & (((\memory[1][0]~regout\) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\memory[0][0]~regout\ & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[0][0]~regout\,
	datac => \memory[1][0]~regout\,
	datad => \addr~combout\(1),
	combout => \value~25_combout\);

-- Location: LCCOMB_X25_Y22_N8
\value~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~26_combout\ = (\value~25_combout\ & (((\memory[3][0]~regout\) # (!\addr~combout\(1))))) # (!\value~25_combout\ & (\memory[2][0]~regout\ & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~25_combout\,
	datab => \memory[2][0]~regout\,
	datac => \memory[3][0]~regout\,
	datad => \addr~combout\(1),
	combout => \value~26_combout\);

-- Location: LCCOMB_X25_Y22_N26
\value~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~27_combout\ = (\addr~combout\(2) & ((\value~24_combout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((\value~26_combout\ & !\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \value~24_combout\,
	datac => \value~26_combout\,
	datad => \addr~combout\(3),
	combout => \value~27_combout\);

-- Location: LCCOMB_X25_Y21_N28
\value~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~28_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\memory[14][0]~regout\))) # (!\addr~combout\(1) & (\memory[12][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[12][0]~regout\,
	datab => \memory[14][0]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~28_combout\);

-- Location: LCCOMB_X25_Y21_N2
\value~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~29_combout\ = (\addr~combout\(0) & ((\value~28_combout\ & (\memory[15][0]~regout\)) # (!\value~28_combout\ & ((\memory[13][0]~regout\))))) # (!\addr~combout\(0) & (((\value~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[15][0]~regout\,
	datab => \memory[13][0]~regout\,
	datac => \addr~combout\(0),
	datad => \value~28_combout\,
	combout => \value~29_combout\);

-- Location: LCCOMB_X25_Y22_N4
\value~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~30_combout\ = (\value~27_combout\ & ((\value~29_combout\) # ((!\addr~combout\(3))))) # (!\value~27_combout\ & (((\value~22_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~29_combout\,
	datab => \value~27_combout\,
	datac => \value~22_combout\,
	datad => \addr~combout\(3),
	combout => \value~30_combout\);

-- Location: LCCOMB_X27_Y17_N24
\value~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~37_combout\ = (\addr~combout\(0) & ((\addr~combout\(1)) # ((\memory[45][1]~regout\)))) # (!\addr~combout\(0) & (!\addr~combout\(1) & ((\memory[44][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \memory[45][1]~regout\,
	datad => \memory[44][1]~regout\,
	combout => \value~37_combout\);

-- Location: LCCOMB_X26_Y17_N2
\value~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~38_combout\ = (\value~37_combout\ & ((\memory[47][1]~regout\) # ((!\addr~combout\(1))))) # (!\value~37_combout\ & (((\memory[46][1]~regout\ & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[47][1]~regout\,
	datab => \value~37_combout\,
	datac => \memory[46][1]~regout\,
	datad => \addr~combout\(1),
	combout => \value~38_combout\);

-- Location: LCCOMB_X21_Y17_N10
\value~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~50_combout\ = (\addr~combout\(2) & (((\memory[21][1]~regout\) # (\addr~combout\(3))))) # (!\addr~combout\(2) & (\memory[17][1]~regout\ & ((!\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[17][1]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[21][1]~regout\,
	datad => \addr~combout\(3),
	combout => \value~50_combout\);

-- Location: LCCOMB_X21_Y21_N6
\value~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~51_combout\ = (\value~50_combout\ & (((\memory[29][1]~regout\) # (!\addr~combout\(3))))) # (!\value~50_combout\ & (\memory[25][1]~regout\ & ((\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[25][1]~regout\,
	datab => \value~50_combout\,
	datac => \memory[29][1]~regout\,
	datad => \addr~combout\(3),
	combout => \value~51_combout\);

-- Location: LCCOMB_X20_Y20_N16
\value~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~55_combout\ = (\addr~combout\(3) & (\addr~combout\(2))) # (!\addr~combout\(3) & ((\addr~combout\(2) & ((\memory[23][1]~regout\))) # (!\addr~combout\(2) & (\memory[19][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \memory[19][1]~regout\,
	datad => \memory[23][1]~regout\,
	combout => \value~55_combout\);

-- Location: LCCOMB_X20_Y20_N6
\value~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~56_combout\ = (\addr~combout\(3) & ((\value~55_combout\ & ((\memory[31][1]~regout\))) # (!\value~55_combout\ & (\memory[27][1]~regout\)))) # (!\addr~combout\(3) & (((\value~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \memory[27][1]~regout\,
	datac => \value~55_combout\,
	datad => \memory[31][1]~regout\,
	combout => \value~56_combout\);

-- Location: LCCOMB_X25_Y22_N30
\value~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~58_combout\ = (\addr~combout\(0) & (((\memory[9][1]~regout\) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\memory[8][1]~regout\ & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[8][1]~regout\,
	datab => \memory[9][1]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~58_combout\);

-- Location: LCCOMB_X25_Y22_N0
\value~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~59_combout\ = (\value~58_combout\ & ((\memory[11][1]~regout\) # ((!\addr~combout\(1))))) # (!\value~58_combout\ & (((\memory[10][1]~regout\ & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[11][1]~regout\,
	datab => \value~58_combout\,
	datac => \memory[10][1]~regout\,
	datad => \addr~combout\(1),
	combout => \value~59_combout\);

-- Location: LCCOMB_X21_Y18_N4
\value~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~60_combout\ = (\addr~combout\(1) & ((\memory[6][1]~regout\) # ((\addr~combout\(0))))) # (!\addr~combout\(1) & (((!\addr~combout\(0) & \memory[4][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[6][1]~regout\,
	datac => \addr~combout\(0),
	datad => \memory[4][1]~regout\,
	combout => \value~60_combout\);

-- Location: LCCOMB_X21_Y18_N2
\value~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~61_combout\ = (\addr~combout\(0) & ((\value~60_combout\ & ((\memory[7][1]~regout\))) # (!\value~60_combout\ & (\memory[5][1]~regout\)))) # (!\addr~combout\(0) & (\value~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \value~60_combout\,
	datac => \memory[5][1]~regout\,
	datad => \memory[7][1]~regout\,
	combout => \value~61_combout\);

-- Location: LCCOMB_X23_Y22_N16
\value~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~62_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\memory[1][1]~regout\))) # (!\addr~combout\(0) & (\memory[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[0][1]~regout\,
	datab => \addr~combout\(1),
	datac => \memory[1][1]~regout\,
	datad => \addr~combout\(0),
	combout => \value~62_combout\);

-- Location: LCCOMB_X23_Y21_N20
\value~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~63_combout\ = (\addr~combout\(1) & ((\value~62_combout\ & ((\memory[3][1]~regout\))) # (!\value~62_combout\ & (\memory[2][1]~regout\)))) # (!\addr~combout\(1) & (\value~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \value~62_combout\,
	datac => \memory[2][1]~regout\,
	datad => \memory[3][1]~regout\,
	combout => \value~63_combout\);

-- Location: LCCOMB_X21_Y21_N10
\value~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~64_combout\ = (\addr~combout\(2) & ((\value~61_combout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((\value~63_combout\ & !\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~61_combout\,
	datab => \value~63_combout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \value~64_combout\);

-- Location: LCCOMB_X25_Y21_N16
\value~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~65_combout\ = (\addr~combout\(1) & ((\memory[14][1]~regout\) # ((\addr~combout\(0))))) # (!\addr~combout\(1) & (((!\addr~combout\(0) & \memory[12][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[14][1]~regout\,
	datac => \addr~combout\(0),
	datad => \memory[12][1]~regout\,
	combout => \value~65_combout\);

-- Location: LCCOMB_X25_Y21_N6
\value~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~66_combout\ = (\addr~combout\(0) & ((\value~65_combout\ & ((\memory[15][1]~regout\))) # (!\value~65_combout\ & (\memory[13][1]~regout\)))) # (!\addr~combout\(0) & (((\value~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[13][1]~regout\,
	datab => \addr~combout\(0),
	datac => \value~65_combout\,
	datad => \memory[15][1]~regout\,
	combout => \value~66_combout\);

-- Location: LCCOMB_X21_Y21_N12
\value~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~67_combout\ = (\value~64_combout\ & ((\value~66_combout\) # ((!\addr~combout\(3))))) # (!\value~64_combout\ & (((\value~59_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~64_combout\,
	datab => \value~66_combout\,
	datac => \value~59_combout\,
	datad => \addr~combout\(3),
	combout => \value~67_combout\);

-- Location: LCCOMB_X25_Y20_N6
\value~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~72_combout\ = (\addr~combout\(3) & (((\memory[43][2]~regout\) # (\addr~combout\(2))))) # (!\addr~combout\(3) & (\memory[35][2]~regout\ & ((!\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][2]~regout\,
	datab => \memory[43][2]~regout\,
	datac => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \value~72_combout\);

-- Location: LCCOMB_X25_Y20_N16
\value~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~73_combout\ = (\addr~combout\(2) & ((\value~72_combout\ & ((\memory[47][2]~regout\))) # (!\value~72_combout\ & (\memory[39][2]~regout\)))) # (!\addr~combout\(2) & (((\value~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[39][2]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[47][2]~regout\,
	datad => \value~72_combout\,
	combout => \value~73_combout\);

-- Location: LCCOMB_X26_Y19_N4
\value~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~74_combout\ = (\addr~combout\(2) & ((\memory[38][2]~regout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((!\addr~combout\(3) & \memory[34][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[38][2]~regout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \memory[34][2]~regout\,
	combout => \value~74_combout\);

-- Location: LCCOMB_X26_Y19_N26
\value~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~75_combout\ = (\value~74_combout\ & (((\memory[46][2]~regout\) # (!\addr~combout\(3))))) # (!\value~74_combout\ & (\memory[42][2]~regout\ & (\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[42][2]~regout\,
	datab => \value~74_combout\,
	datac => \addr~combout\(3),
	datad => \memory[46][2]~regout\,
	combout => \value~75_combout\);

-- Location: LCCOMB_X26_Y19_N12
\value~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~76_combout\ = (\addr~combout\(0) & (\value~73_combout\)) # (!\addr~combout\(0) & ((\value~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datac => \value~73_combout\,
	datad => \value~75_combout\,
	combout => \value~76_combout\);

-- Location: LCCOMB_X26_Y19_N6
\value~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~77_combout\ = (\addr~combout\(2) & (((\addr~combout\(3))))) # (!\addr~combout\(2) & ((\addr~combout\(3) & (\memory[41][2]~regout\)) # (!\addr~combout\(3) & ((\memory[33][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[41][2]~regout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \memory[33][2]~regout\,
	combout => \value~77_combout\);

-- Location: LCCOMB_X26_Y19_N24
\value~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~78_combout\ = (\addr~combout\(2) & ((\value~77_combout\ & ((\memory[45][2]~regout\))) # (!\value~77_combout\ & (\memory[37][2]~regout\)))) # (!\addr~combout\(2) & (((\value~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[37][2]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[45][2]~regout\,
	datad => \value~77_combout\,
	combout => \value~78_combout\);

-- Location: LCCOMB_X23_Y20_N12
\value~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~83_combout\ = (\addr~combout\(0) & ((\memory[25][2]~regout\) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\memory[24][2]~regout\ & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[25][2]~regout\,
	datab => \addr~combout\(0),
	datac => \memory[24][2]~regout\,
	datad => \addr~combout\(1),
	combout => \value~83_combout\);

-- Location: LCCOMB_X22_Y25_N8
\value~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~90_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & (\memory[30][2]~regout\)) # (!\addr~combout\(1) & ((\memory[28][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[30][2]~regout\,
	datab => \memory[28][2]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~90_combout\);

-- Location: LCCOMB_X22_Y18_N16
\value~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~91_combout\ = (\addr~combout\(0) & ((\value~90_combout\ & ((\memory[31][2]~regout\))) # (!\value~90_combout\ & (\memory[29][2]~regout\)))) # (!\addr~combout\(0) & (((\value~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[29][2]~regout\,
	datab => \addr~combout\(0),
	datac => \value~90_combout\,
	datad => \memory[31][2]~regout\,
	combout => \value~91_combout\);

-- Location: LCCOMB_X26_Y17_N12
\value~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~104_combout\ = (\addr~combout\(0) & ((\memory[49][2]~regout\) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\memory[48][2]~regout\ & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[49][2]~regout\,
	datab => \memory[48][2]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~104_combout\);

-- Location: LCCOMB_X19_Y19_N26
\value~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~122_combout\ = (\addr~combout\(3) & (((\addr~combout\(2)) # (\memory[24][3]~regout\)))) # (!\addr~combout\(3) & (\memory[16][3]~regout\ & (!\addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \memory[16][3]~regout\,
	datac => \addr~combout\(2),
	datad => \memory[24][3]~regout\,
	combout => \value~122_combout\);

-- Location: LCCOMB_X19_Y19_N12
\value~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~123_combout\ = (\value~122_combout\ & (((\memory[28][3]~regout\) # (!\addr~combout\(2))))) # (!\value~122_combout\ & (\memory[20][3]~regout\ & (\addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[20][3]~regout\,
	datab => \value~122_combout\,
	datac => \addr~combout\(2),
	datad => \memory[28][3]~regout\,
	combout => \value~123_combout\);

-- Location: LCCOMB_X24_Y21_N12
\value~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~128_combout\ = (\addr~combout\(1) & (((\memory[10][3]~regout\) # (\addr~combout\(0))))) # (!\addr~combout\(1) & (\memory[8][3]~regout\ & ((!\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[8][3]~regout\,
	datab => \memory[10][3]~regout\,
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \value~128_combout\);

-- Location: LCCOMB_X24_Y21_N2
\value~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~129_combout\ = (\addr~combout\(0) & ((\value~128_combout\ & (\memory[11][3]~regout\)) # (!\value~128_combout\ & ((\memory[9][3]~regout\))))) # (!\addr~combout\(0) & (((\value~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[11][3]~regout\,
	datac => \memory[9][3]~regout\,
	datad => \value~128_combout\,
	combout => \value~129_combout\);

-- Location: LCCOMB_X21_Y18_N16
\value~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~130_combout\ = (\addr~combout\(0) & ((\memory[5][3]~regout\) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\memory[4][3]~regout\ & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][3]~regout\,
	datab => \memory[4][3]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~130_combout\);

-- Location: LCCOMB_X21_Y18_N10
\value~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~131_combout\ = (\value~130_combout\ & ((\memory[7][3]~regout\) # ((!\addr~combout\(1))))) # (!\value~130_combout\ & (((\memory[6][3]~regout\ & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[7][3]~regout\,
	datab => \memory[6][3]~regout\,
	datac => \value~130_combout\,
	datad => \addr~combout\(1),
	combout => \value~131_combout\);

-- Location: LCCOMB_X23_Y22_N10
\value~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~132_combout\ = (\addr~combout\(1) & ((\memory[2][3]~regout\) # ((\addr~combout\(0))))) # (!\addr~combout\(1) & (((\memory[0][3]~regout\ & !\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][3]~regout\,
	datab => \addr~combout\(1),
	datac => \memory[0][3]~regout\,
	datad => \addr~combout\(0),
	combout => \value~132_combout\);

-- Location: LCCOMB_X23_Y22_N6
\value~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~133_combout\ = (\value~132_combout\ & (((\memory[3][3]~regout\) # (!\addr~combout\(0))))) # (!\value~132_combout\ & (\memory[1][3]~regout\ & ((\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~132_combout\,
	datab => \memory[1][3]~regout\,
	datac => \memory[3][3]~regout\,
	datad => \addr~combout\(0),
	combout => \value~133_combout\);

-- Location: LCCOMB_X20_Y19_N14
\value~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~134_combout\ = (\addr~combout\(2) & (((\value~131_combout\) # (\addr~combout\(3))))) # (!\addr~combout\(2) & (\value~133_combout\ & ((!\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~133_combout\,
	datab => \value~131_combout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \value~134_combout\);

-- Location: LCCOMB_X21_Y19_N14
\value~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~135_combout\ = (\addr~combout\(0) & ((\memory[13][3]~regout\) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\memory[12][3]~regout\ & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[13][3]~regout\,
	datab => \addr~combout\(0),
	datac => \memory[12][3]~regout\,
	datad => \addr~combout\(1),
	combout => \value~135_combout\);

-- Location: LCCOMB_X21_Y19_N8
\value~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~136_combout\ = (\addr~combout\(1) & ((\value~135_combout\ & ((\memory[15][3]~regout\))) # (!\value~135_combout\ & (\memory[14][3]~regout\)))) # (!\addr~combout\(1) & (\value~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \value~135_combout\,
	datac => \memory[14][3]~regout\,
	datad => \memory[15][3]~regout\,
	combout => \value~136_combout\);

-- Location: LCCOMB_X20_Y19_N20
\value~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~137_combout\ = (\value~134_combout\ & (((\value~136_combout\) # (!\addr~combout\(3))))) # (!\value~134_combout\ & (\value~129_combout\ & ((\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~129_combout\,
	datab => \value~136_combout\,
	datac => \value~134_combout\,
	datad => \addr~combout\(3),
	combout => \value~137_combout\);

-- Location: LCCOMB_X25_Y20_N18
\value~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~142_combout\ = (\addr~combout\(3) & (((\addr~combout\(2))))) # (!\addr~combout\(3) & ((\addr~combout\(2) & ((\memory[39][4]~regout\))) # (!\addr~combout\(2) & (\memory[35][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][4]~regout\,
	datab => \memory[39][4]~regout\,
	datac => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \value~142_combout\);

-- Location: LCCOMB_X25_Y20_N10
\value~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~143_combout\ = (\addr~combout\(3) & ((\value~142_combout\ & (\memory[47][4]~regout\)) # (!\value~142_combout\ & ((\memory[43][4]~regout\))))) # (!\addr~combout\(3) & (((\value~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[47][4]~regout\,
	datab => \memory[43][4]~regout\,
	datac => \addr~combout\(3),
	datad => \value~142_combout\,
	combout => \value~143_combout\);

-- Location: LCCOMB_X25_Y20_N26
\value~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~144_combout\ = (\addr~combout\(2) & ((\memory[37][4]~regout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((!\addr~combout\(3) & \memory[33][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[37][4]~regout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \memory[33][4]~regout\,
	combout => \value~144_combout\);

-- Location: LCCOMB_X25_Y19_N10
\value~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~147_combout\ = (\addr~combout\(2) & (((\addr~combout\(3))))) # (!\addr~combout\(2) & ((\addr~combout\(3) & ((\memory[42][4]~regout\))) # (!\addr~combout\(3) & (\memory[34][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \memory[34][4]~regout\,
	datac => \memory[42][4]~regout\,
	datad => \addr~combout\(3),
	combout => \value~147_combout\);

-- Location: LCCOMB_X25_Y19_N0
\value~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~148_combout\ = (\addr~combout\(2) & ((\value~147_combout\ & (\memory[46][4]~regout\)) # (!\value~147_combout\ & ((\memory[38][4]~regout\))))) # (!\addr~combout\(2) & (((\value~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[46][4]~regout\,
	datab => \memory[38][4]~regout\,
	datac => \addr~combout\(2),
	datad => \value~147_combout\,
	combout => \value~148_combout\);

-- Location: LCCOMB_X25_Y20_N12
\value~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~149_combout\ = (\addr~combout\(3) & (((\memory[40][4]~regout\) # (\addr~combout\(2))))) # (!\addr~combout\(3) & (\memory[32][4]~regout\ & ((!\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[32][4]~regout\,
	datab => \memory[40][4]~regout\,
	datac => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \value~149_combout\);

-- Location: LCCOMB_X25_Y20_N20
\value~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~150_combout\ = (\value~149_combout\ & (((\memory[44][4]~regout\)) # (!\addr~combout\(2)))) # (!\value~149_combout\ & (\addr~combout\(2) & (\memory[36][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~149_combout\,
	datab => \addr~combout\(2),
	datac => \memory[36][4]~regout\,
	datad => \memory[44][4]~regout\,
	combout => \value~150_combout\);

-- Location: LCCOMB_X25_Y20_N2
\value~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~151_combout\ = (\addr~combout\(1) & (\value~148_combout\)) # (!\addr~combout\(1) & ((\value~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~148_combout\,
	datac => \value~150_combout\,
	datad => \addr~combout\(1),
	combout => \value~151_combout\);

-- Location: LCCOMB_X23_Y20_N14
\value~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~153_combout\ = (\addr~combout\(1) & ((\memory[26][4]~regout\) # ((\addr~combout\(0))))) # (!\addr~combout\(1) & (((\memory[24][4]~regout\ & !\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[26][4]~regout\,
	datac => \memory[24][4]~regout\,
	datad => \addr~combout\(0),
	combout => \value~153_combout\);

-- Location: LCCOMB_X20_Y20_N12
\value~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~154_combout\ = (\addr~combout\(0) & ((\value~153_combout\ & (\memory[27][4]~regout\)) # (!\value~153_combout\ & ((\memory[25][4]~regout\))))) # (!\addr~combout\(0) & (((\value~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[27][4]~regout\,
	datab => \addr~combout\(0),
	datac => \memory[25][4]~regout\,
	datad => \value~153_combout\,
	combout => \value~154_combout\);

-- Location: LCCOMB_X20_Y18_N6
\value~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~155_combout\ = (\addr~combout\(0) & (((\memory[21][4]~regout\) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\memory[20][4]~regout\ & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[20][4]~regout\,
	datab => \addr~combout\(0),
	datac => \memory[21][4]~regout\,
	datad => \addr~combout\(1),
	combout => \value~155_combout\);

-- Location: LCCOMB_X22_Y21_N4
\value~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~156_combout\ = (\value~155_combout\ & (((\memory[23][4]~regout\) # (!\addr~combout\(1))))) # (!\value~155_combout\ & (\memory[22][4]~regout\ & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[22][4]~regout\,
	datab => \value~155_combout\,
	datac => \memory[23][4]~regout\,
	datad => \addr~combout\(1),
	combout => \value~156_combout\);

-- Location: LCCOMB_X25_Y17_N2
\value~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~163_combout\ = (\addr~combout\(2) & (((\memory[6][4]~regout\) # (\addr~combout\(3))))) # (!\addr~combout\(2) & (\memory[2][4]~regout\ & ((!\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][4]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[6][4]~regout\,
	datad => \addr~combout\(3),
	combout => \value~163_combout\);

-- Location: LCCOMB_X25_Y17_N6
\value~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~164_combout\ = (\value~163_combout\ & (((\memory[14][4]~regout\) # (!\addr~combout\(3))))) # (!\value~163_combout\ & (\memory[10][4]~regout\ & ((\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[10][4]~regout\,
	datab => \value~163_combout\,
	datac => \memory[14][4]~regout\,
	datad => \addr~combout\(3),
	combout => \value~164_combout\);

-- Location: LCCOMB_X25_Y17_N16
\value~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~165_combout\ = (\addr~combout\(2) & (((\addr~combout\(3))))) # (!\addr~combout\(2) & ((\addr~combout\(3) & ((\memory[9][4]~regout\))) # (!\addr~combout\(3) & (\memory[1][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[1][4]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[9][4]~regout\,
	datad => \addr~combout\(3),
	combout => \value~165_combout\);

-- Location: LCCOMB_X25_Y17_N12
\value~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~166_combout\ = (\addr~combout\(2) & ((\value~165_combout\ & (\memory[13][4]~regout\)) # (!\value~165_combout\ & ((\memory[5][4]~regout\))))) # (!\addr~combout\(2) & (((\value~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[13][4]~regout\,
	datab => \addr~combout\(2),
	datac => \value~165_combout\,
	datad => \memory[5][4]~regout\,
	combout => \value~166_combout\);

-- Location: LCFF_X23_Y17_N21
\memory[51][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~427_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[51][4]~regout\);

-- Location: LCCOMB_X27_Y17_N20
\value~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~177_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\memory[45][5]~regout\)) # (!\addr~combout\(0) & ((\memory[44][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[45][5]~regout\,
	datab => \memory[44][5]~regout\,
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \value~177_combout\);

-- Location: LCCOMB_X26_Y17_N14
\value~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~178_combout\ = (\addr~combout\(1) & ((\value~177_combout\ & (\memory[47][5]~regout\)) # (!\value~177_combout\ & ((\memory[46][5]~regout\))))) # (!\addr~combout\(1) & (((\value~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[47][5]~regout\,
	datac => \memory[46][5]~regout\,
	datad => \value~177_combout\,
	combout => \value~178_combout\);

-- Location: LCCOMB_X27_Y18_N0
\value~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~179_combout\ = (\addr~combout\(1) & (((\addr~combout\(0)) # (\memory[42][5]~regout\)))) # (!\addr~combout\(1) & (\memory[40][5]~regout\ & (!\addr~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[40][5]~regout\,
	datac => \addr~combout\(0),
	datad => \memory[42][5]~regout\,
	combout => \value~179_combout\);

-- Location: LCCOMB_X26_Y18_N0
\value~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~182_combout\ = (\addr~combout\(0) & (((\memory[37][5]~regout\) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\memory[36][5]~regout\ & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[36][5]~regout\,
	datab => \memory[37][5]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~182_combout\);

-- Location: LCCOMB_X24_Y19_N14
\value~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~183_combout\ = (\addr~combout\(1) & ((\value~182_combout\ & ((\memory[39][5]~regout\))) # (!\value~182_combout\ & (\memory[38][5]~regout\)))) # (!\addr~combout\(1) & (((\value~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[38][5]~regout\,
	datac => \memory[39][5]~regout\,
	datad => \value~182_combout\,
	combout => \value~183_combout\);

-- Location: LCCOMB_X25_Y19_N18
\value~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~184_combout\ = (\addr~combout\(1) & ((\memory[34][5]~regout\) # ((\addr~combout\(0))))) # (!\addr~combout\(1) & (((\memory[32][5]~regout\ & !\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[34][5]~regout\,
	datac => \memory[32][5]~regout\,
	datad => \addr~combout\(0),
	combout => \value~184_combout\);

-- Location: LCCOMB_X25_Y19_N20
\value~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~185_combout\ = (\value~184_combout\ & (((\memory[35][5]~regout\) # (!\addr~combout\(0))))) # (!\value~184_combout\ & (\memory[33][5]~regout\ & ((\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[33][5]~regout\,
	datab => \value~184_combout\,
	datac => \memory[35][5]~regout\,
	datad => \addr~combout\(0),
	combout => \value~185_combout\);

-- Location: LCCOMB_X25_Y19_N14
\value~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~186_combout\ = (\addr~combout\(2) & ((\value~183_combout\))) # (!\addr~combout\(2) & (\value~185_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datac => \value~185_combout\,
	datad => \value~183_combout\,
	combout => \value~186_combout\);

-- Location: LCCOMB_X21_Y17_N6
\value~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~188_combout\ = (\addr~combout\(2) & (((\memory[22][5]~regout\) # (\addr~combout\(3))))) # (!\addr~combout\(2) & (\memory[18][5]~regout\ & ((!\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \memory[18][5]~regout\,
	datac => \memory[22][5]~regout\,
	datad => \addr~combout\(3),
	combout => \value~188_combout\);

-- Location: LCCOMB_X21_Y17_N12
\value~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~189_combout\ = (\value~188_combout\ & ((\memory[30][5]~regout\) # ((!\addr~combout\(3))))) # (!\value~188_combout\ & (((\memory[26][5]~regout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~188_combout\,
	datab => \memory[30][5]~regout\,
	datac => \memory[26][5]~regout\,
	datad => \addr~combout\(3),
	combout => \value~189_combout\);

-- Location: LCCOMB_X21_Y17_N14
\value~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~192_combout\ = (\addr~combout\(2) & ((\memory[20][5]~regout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((\memory[16][5]~regout\ & !\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[20][5]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[16][5]~regout\,
	datad => \addr~combout\(3),
	combout => \value~192_combout\);

-- Location: LCCOMB_X21_Y17_N24
\value~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~193_combout\ = (\value~192_combout\ & ((\memory[28][5]~regout\) # ((!\addr~combout\(3))))) # (!\value~192_combout\ & (((\memory[24][5]~regout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[28][5]~regout\,
	datab => \memory[24][5]~regout\,
	datac => \value~192_combout\,
	datad => \addr~combout\(3),
	combout => \value~193_combout\);

-- Location: LCCOMB_X21_Y18_N28
\value~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~198_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & (\memory[6][5]~regout\)) # (!\addr~combout\(1) & ((\memory[4][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[6][5]~regout\,
	datab => \memory[4][5]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~198_combout\);

-- Location: LCCOMB_X21_Y18_N30
\value~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~199_combout\ = (\value~198_combout\ & (((\memory[7][5]~regout\) # (!\addr~combout\(0))))) # (!\value~198_combout\ & (\memory[5][5]~regout\ & (\addr~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][5]~regout\,
	datab => \value~198_combout\,
	datac => \addr~combout\(0),
	datad => \memory[7][5]~regout\,
	combout => \value~199_combout\);

-- Location: LCCOMB_X24_Y20_N12
\value~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~200_combout\ = (\addr~combout\(0) & (((\memory[9][5]~regout\) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\memory[8][5]~regout\ & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[8][5]~regout\,
	datab => \memory[9][5]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~200_combout\);

-- Location: LCCOMB_X24_Y20_N18
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\mode~combout\(1) & !\mode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y18_N26
\always~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always~0_combout\ = (!\mode~combout\(1) & \mode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \always~0_combout\);

-- Location: LCCOMB_X25_Y18_N4
\always~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \always~2_combout\ = (\mode~combout\(1) & \mode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \always~2_combout\);

-- Location: LCCOMB_X26_Y19_N18
\memory[44][0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[44][0]~25_combout\ = ((!\memory[44][0]~24_combout\ & !\addr~combout\(4))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(5),
	datac => \memory[44][0]~24_combout\,
	datad => \addr~combout\(4),
	combout => \memory[44][0]~25_combout\);

-- Location: LCCOMB_X25_Y18_N6
\memory[46][0]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[46][0]~35_combout\ = ((!\addr~combout\(4) & !\memory[46][0]~34_combout\)) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(4),
	datac => \memory[46][0]~34_combout\,
	datad => \addr~combout\(5),
	combout => \memory[46][0]~35_combout\);

-- Location: LCCOMB_X26_Y20_N10
\memory[35][0]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[35][0]~38_combout\ = (!\addr~combout\(4) & !\addr~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~combout\(4),
	datad => \addr~combout\(3),
	combout => \memory[35][0]~38_combout\);

-- Location: LCCOMB_X26_Y20_N2
\memory[35][0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[35][0]~41_combout\ = ((!\addr~combout\(3) & (!\addr~combout\(4) & !\addr~combout\(2)))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \addr~combout\(2),
	datad => \addr~combout\(5),
	combout => \memory[35][0]~41_combout\);

-- Location: LCCOMB_X25_Y17_N4
\memory[39][0]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[39][0]~48_combout\ = ((!\addr~combout\(3) & !\addr~combout\(4))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(3),
	datac => \addr~combout\(4),
	datad => \addr~combout\(5),
	combout => \memory[39][0]~48_combout\);

-- Location: LCCOMB_X20_Y19_N12
\memory[34][0]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[34][0]~54_combout\ = ((\memory[2][0]~53_combout\ & !\addr~combout\(4))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][0]~53_combout\,
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	combout => \memory[34][0]~54_combout\);

-- Location: LCCOMB_X26_Y20_N24
\memory[38][0]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[38][0]~60_combout\ = ((\memory[35][0]~38_combout\ & ((!\LessThan47~0_combout\) # (!\addr~combout\(0))))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][0]~38_combout\,
	datab => \addr~combout\(0),
	datac => \LessThan47~0_combout\,
	datad => \addr~combout\(5),
	combout => \memory[38][0]~60_combout\);

-- Location: LCCOMB_X26_Y20_N8
\memory[41][0]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[41][0]~69_combout\ = ((!\addr~combout\(4) & !\LessThan42~0_combout\)) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	datad => \LessThan42~0_combout\,
	combout => \memory[41][0]~69_combout\);

-- Location: LCCOMB_X26_Y20_N22
\memory[5][0]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[5][0]~76_combout\ = (\mode~combout\(0) & (\mode~combout\(1) & !\addr~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \addr~combout\(5),
	combout => \memory[5][0]~76_combout\);

-- Location: LCCOMB_X20_Y19_N2
\LessThan50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan50~0_combout\ = (\addr~combout\(4) & ((\addr~combout\(3)) # ((\addr~combout\(2)) # (\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \addr~combout\(4),
	datad => \addr~combout\(1),
	combout => \LessThan50~0_combout\);

-- Location: LCCOMB_X21_Y20_N24
\memory[21][0]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[21][0]~106_combout\ = ((!\addr~combout\(3) & ((!\addr~combout\(2)) # (!\addr~combout\(1))))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(1),
	datac => \addr~combout\(4),
	datad => \addr~combout\(2),
	combout => \memory[21][0]~106_combout\);

-- Location: LCCOMB_X21_Y20_N2
\memory[27][0]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[27][0]~112_combout\ = ((!\addr~combout\(3)) # (!\addr~combout\(4))) # (!\addr~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datac => \addr~combout\(4),
	datad => \addr~combout\(3),
	combout => \memory[27][0]~112_combout\);

-- Location: LCCOMB_X20_Y20_N0
\memory[26][0]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[26][0]~115_combout\ = (!\addr~combout\(4)) # (!\LessThan43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan43~0_combout\,
	datac => \addr~combout\(4),
	combout => \memory[26][0]~115_combout\);

-- Location: LCCOMB_X21_Y20_N12
\memory[5][0]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[5][0]~130_combout\ = (!\addr~combout\(3) & (!\addr~combout\(4) & ((!\addr~combout\(2)) # (!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(1),
	datac => \addr~combout\(4),
	datad => \addr~combout\(2),
	combout => \memory[5][0]~130_combout\);

-- Location: LCCOMB_X21_Y20_N22
\memory[48][0]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[48][0]~162_combout\ = (((!\addr~combout\(0) & \memory[1][0]~44_combout\)) # (!\addr~combout\(5))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \addr~combout\(0),
	datac => \memory[1][0]~44_combout\,
	datad => \addr~combout\(5),
	combout => \memory[48][0]~162_combout\);

-- Location: LCCOMB_X24_Y15_N6
\Add1~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~144_combout\ = (\Add1~102_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~102_combout\,
	combout => \Add1~144_combout\);

-- Location: LCCOMB_X21_Y15_N22
\Add1~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~149_combout\ = (\Add1~112_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \Add1~112_combout\,
	combout => \Add1~149_combout\);

-- Location: LCCOMB_X21_Y15_N10
\Add1~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~151_combout\ = (\Add1~116_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~116_combout\,
	combout => \Add1~151_combout\);

-- Location: LCCOMB_X21_Y20_N28
\memory[36][0]~422\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[36][0]~422_combout\ = ((!\LessThan45~0_combout\ & (!\addr~combout\(3) & !\addr~combout\(4)))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan45~0_combout\,
	datab => \addr~combout\(3),
	datac => \addr~combout\(4),
	datad => \addr~combout\(5),
	combout => \memory[36][0]~422_combout\);

-- Location: LCCOMB_X20_Y20_N8
\memory[6][0]~423\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[6][0]~423_combout\ = (!\addr~combout\(4) & (!\addr~combout\(3) & ((!\addr~combout\(0)) # (!\LessThan47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan47~0_combout\,
	datab => \addr~combout\(0),
	datac => \addr~combout\(4),
	datad => \addr~combout\(3),
	combout => \memory[6][0]~423_combout\);

-- Location: LCCOMB_X21_Y20_N10
\memory[4][0]~424\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[4][0]~424_combout\ = (!\LessThan45~0_combout\ & (!\addr~combout\(4) & !\addr~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan45~0_combout\,
	datac => \addr~combout\(4),
	datad => \addr~combout\(3),
	combout => \memory[4][0]~424_combout\);

-- Location: LCCOMB_X23_Y17_N20
\memory~427\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~427_combout\ = (\mode~combout\(0) & (((\memory[50][4]~regout\ & \always~1_combout\)))) # (!\mode~combout\(0) & ((\mode~combout\(1)) # ((\memory[50][4]~regout\ & \always~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \memory[50][4]~regout\,
	datad => \always~1_combout\,
	combout => \memory~427_combout\);

-- Location: LCCOMB_X23_Y16_N0
\t_num[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[0]~32_combout\ = t_num(0) $ (VCC)
-- \t_num[0]~33\ = CARRY(t_num(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => t_num(0),
	datad => VCC,
	combout => \t_num[0]~32_combout\,
	cout => \t_num[0]~33\);

-- Location: LCCOMB_X22_Y16_N0
\Add1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = t_num(0) $ (VCC)
-- \Add1~65\ = CARRY(t_num(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => t_num(0),
	datad => VCC,
	combout => \Add1~64_combout\,
	cout => \Add1~65\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[0]~I\ : cycloneii_io
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
	padio => ww_mode(0),
	combout => \mode~combout\(0));

-- Location: LCCOMB_X21_Y16_N0
\Add1~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~128_combout\ = (\Add1~64_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datac => \Add1~64_combout\,
	datad => \mode~combout\(0),
	combout => \Add1~128_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y16_N4
\t_num[2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[2]~38_combout\ = (t_num(2) & (\t_num[1]~37\ $ (GND))) # (!t_num(2) & (!\t_num[1]~37\ & VCC))
-- \t_num[2]~39\ = CARRY((t_num(2) & !\t_num[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(2),
	datad => VCC,
	cin => \t_num[1]~37\,
	combout => \t_num[2]~38_combout\,
	cout => \t_num[2]~39\);

-- Location: LCCOMB_X23_Y16_N6
\t_num[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[3]~40_combout\ = (t_num(3) & (!\t_num[2]~39\)) # (!t_num(3) & ((\t_num[2]~39\) # (GND)))
-- \t_num[3]~41\ = CARRY((!\t_num[2]~39\) # (!t_num(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(3),
	datad => VCC,
	cin => \t_num[2]~39\,
	combout => \t_num[3]~40_combout\,
	cout => \t_num[3]~41\);

-- Location: LCCOMB_X23_Y16_N8
\t_num[4]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[4]~42_combout\ = (t_num(4) & (\t_num[3]~41\ $ (GND))) # (!t_num(4) & (!\t_num[3]~41\ & VCC))
-- \t_num[4]~43\ = CARRY((t_num(4) & !\t_num[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(4),
	datad => VCC,
	cin => \t_num[3]~41\,
	combout => \t_num[4]~42_combout\,
	cout => \t_num[4]~43\);

-- Location: LCCOMB_X22_Y16_N2
\Add1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (t_num(1) & (\Add1~65\ & VCC)) # (!t_num(1) & (!\Add1~65\))
-- \Add1~67\ = CARRY((!t_num(1) & !\Add1~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(1),
	datad => VCC,
	cin => \Add1~65\,
	combout => \Add1~66_combout\,
	cout => \Add1~67\);

-- Location: LCCOMB_X22_Y16_N4
\Add1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (t_num(2) & ((GND) # (!\Add1~67\))) # (!t_num(2) & (\Add1~67\ $ (GND)))
-- \Add1~69\ = CARRY((t_num(2)) # (!\Add1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(2),
	datad => VCC,
	cin => \Add1~67\,
	combout => \Add1~68_combout\,
	cout => \Add1~69\);

-- Location: LCCOMB_X22_Y16_N6
\Add1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = (t_num(3) & (\Add1~69\ & VCC)) # (!t_num(3) & (!\Add1~69\))
-- \Add1~71\ = CARRY((!t_num(3) & !\Add1~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(3),
	datad => VCC,
	cin => \Add1~69\,
	combout => \Add1~70_combout\,
	cout => \Add1~71\);

-- Location: LCCOMB_X22_Y16_N8
\Add1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (t_num(4) & ((GND) # (!\Add1~71\))) # (!t_num(4) & (\Add1~71\ $ (GND)))
-- \Add1~73\ = CARRY((t_num(4)) # (!\Add1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(4),
	datad => VCC,
	cin => \Add1~71\,
	combout => \Add1~72_combout\,
	cout => \Add1~73\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[1]~I\ : cycloneii_io
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
	padio => ww_mode(1),
	combout => \mode~combout\(1));

-- Location: LCCOMB_X24_Y16_N14
\Add1~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~158_combout\ = (\Add1~72_combout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(0),
	datac => \Add1~72_combout\,
	datad => \mode~combout\(1),
	combout => \Add1~158_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[5]~I\ : cycloneii_io
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
	padio => ww_addr(5),
	combout => \addr~combout\(5));

-- Location: LCCOMB_X23_Y16_N10
\t_num[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[5]~44_combout\ = (t_num(5) & (!\t_num[4]~43\)) # (!t_num(5) & ((\t_num[4]~43\) # (GND)))
-- \t_num[5]~45\ = CARRY((!\t_num[4]~43\) # (!t_num(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(5),
	datad => VCC,
	cin => \t_num[4]~43\,
	combout => \t_num[5]~44_combout\,
	cout => \t_num[5]~45\);

-- Location: LCCOMB_X22_Y16_N10
\Add1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (t_num(5) & (\Add1~73\ & VCC)) # (!t_num(5) & (!\Add1~73\))
-- \Add1~75\ = CARRY((!t_num(5) & !\Add1~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(5),
	datad => VCC,
	cin => \Add1~73\,
	combout => \Add1~74_combout\,
	cout => \Add1~75\);

-- Location: LCCOMB_X24_Y16_N8
\Add1~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~159_combout\ = (\Add1~74_combout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \Add1~74_combout\,
	combout => \Add1~159_combout\);

-- Location: LCFF_X23_Y16_N11
\t_num[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[5]~44_combout\,
	sdata => \Add1~159_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(5));

-- Location: LCCOMB_X23_Y18_N2
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!t_num(4) & (!t_num(2) & !t_num(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_num(4),
	datac => t_num(2),
	datad => t_num(5),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X23_Y15_N2
\t_num[17]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[17]~68_combout\ = (t_num(17) & (!\t_num[16]~67\)) # (!t_num(17) & ((\t_num[16]~67\) # (GND)))
-- \t_num[17]~69\ = CARRY((!\t_num[16]~67\) # (!t_num(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(17),
	datad => VCC,
	cin => \t_num[16]~67\,
	combout => \t_num[17]~68_combout\,
	cout => \t_num[17]~69\);

-- Location: LCCOMB_X23_Y15_N4
\t_num[18]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[18]~70_combout\ = (t_num(18) & (\t_num[17]~69\ $ (GND))) # (!t_num(18) & (!\t_num[17]~69\ & VCC))
-- \t_num[18]~71\ = CARRY((t_num(18) & !\t_num[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(18),
	datad => VCC,
	cin => \t_num[17]~69\,
	combout => \t_num[18]~70_combout\,
	cout => \t_num[18]~71\);

-- Location: LCCOMB_X23_Y16_N24
\t_num[12]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[12]~58_combout\ = (t_num(12) & (\t_num[11]~57\ $ (GND))) # (!t_num(12) & (!\t_num[11]~57\ & VCC))
-- \t_num[12]~59\ = CARRY((t_num(12) & !\t_num[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(12),
	datad => VCC,
	cin => \t_num[11]~57\,
	combout => \t_num[12]~58_combout\,
	cout => \t_num[12]~59\);

-- Location: LCCOMB_X23_Y16_N20
\t_num[10]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[10]~54_combout\ = (t_num(10) & (\t_num[9]~53\ $ (GND))) # (!t_num(10) & (!\t_num[9]~53\ & VCC))
-- \t_num[10]~55\ = CARRY((t_num(10) & !\t_num[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(10),
	datad => VCC,
	cin => \t_num[9]~53\,
	combout => \t_num[10]~54_combout\,
	cout => \t_num[10]~55\);

-- Location: LCCOMB_X23_Y16_N12
\t_num[6]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[6]~46_combout\ = (t_num(6) & (\t_num[5]~45\ $ (GND))) # (!t_num(6) & (!\t_num[5]~45\ & VCC))
-- \t_num[6]~47\ = CARRY((t_num(6) & !\t_num[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(6),
	datad => VCC,
	cin => \t_num[5]~45\,
	combout => \t_num[6]~46_combout\,
	cout => \t_num[6]~47\);

-- Location: LCCOMB_X22_Y16_N12
\Add1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = (t_num(6) & ((GND) # (!\Add1~75\))) # (!t_num(6) & (\Add1~75\ $ (GND)))
-- \Add1~77\ = CARRY((t_num(6)) # (!\Add1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(6),
	datad => VCC,
	cin => \Add1~75\,
	combout => \Add1~76_combout\,
	cout => \Add1~77\);

-- Location: LCCOMB_X21_Y16_N6
\Add1~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~131_combout\ = (\Add1~76_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datac => \Add1~76_combout\,
	datad => \mode~combout\(0),
	combout => \Add1~131_combout\);

-- Location: LCFF_X23_Y16_N13
\t_num[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[6]~46_combout\,
	sdata => \Add1~131_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(6));

-- Location: LCCOMB_X22_Y16_N14
\Add1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (t_num(7) & (\Add1~77\ & VCC)) # (!t_num(7) & (!\Add1~77\))
-- \Add1~79\ = CARRY((!t_num(7) & !\Add1~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(7),
	datad => VCC,
	cin => \Add1~77\,
	combout => \Add1~78_combout\,
	cout => \Add1~79\);

-- Location: LCCOMB_X22_Y16_N16
\Add1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (t_num(8) & ((GND) # (!\Add1~79\))) # (!t_num(8) & (\Add1~79\ $ (GND)))
-- \Add1~81\ = CARRY((t_num(8)) # (!\Add1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(8),
	datad => VCC,
	cin => \Add1~79\,
	combout => \Add1~80_combout\,
	cout => \Add1~81\);

-- Location: LCCOMB_X22_Y16_N18
\Add1~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = (t_num(9) & (\Add1~81\ & VCC)) # (!t_num(9) & (!\Add1~81\))
-- \Add1~83\ = CARRY((!t_num(9) & !\Add1~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(9),
	datad => VCC,
	cin => \Add1~81\,
	combout => \Add1~82_combout\,
	cout => \Add1~83\);

-- Location: LCCOMB_X22_Y16_N20
\Add1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (t_num(10) & ((GND) # (!\Add1~83\))) # (!t_num(10) & (\Add1~83\ $ (GND)))
-- \Add1~85\ = CARRY((t_num(10)) # (!\Add1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(10),
	datad => VCC,
	cin => \Add1~83\,
	combout => \Add1~84_combout\,
	cout => \Add1~85\);

-- Location: LCCOMB_X24_Y16_N4
\Add1~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~135_combout\ = (\Add1~84_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \Add1~84_combout\,
	combout => \Add1~135_combout\);

-- Location: LCFF_X23_Y16_N21
\t_num[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[10]~54_combout\,
	sdata => \Add1~135_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(10));

-- Location: LCCOMB_X22_Y16_N22
\Add1~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (t_num(11) & (\Add1~85\ & VCC)) # (!t_num(11) & (!\Add1~85\))
-- \Add1~87\ = CARRY((!t_num(11) & !\Add1~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(11),
	datad => VCC,
	cin => \Add1~85\,
	combout => \Add1~86_combout\,
	cout => \Add1~87\);

-- Location: LCCOMB_X22_Y16_N24
\Add1~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~88_combout\ = (t_num(12) & ((GND) # (!\Add1~87\))) # (!t_num(12) & (\Add1~87\ $ (GND)))
-- \Add1~89\ = CARRY((t_num(12)) # (!\Add1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(12),
	datad => VCC,
	cin => \Add1~87\,
	combout => \Add1~88_combout\,
	cout => \Add1~89\);

-- Location: LCCOMB_X24_Y16_N26
\Add1~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~137_combout\ = (\Add1~88_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \Add1~88_combout\,
	combout => \Add1~137_combout\);

-- Location: LCFF_X23_Y16_N25
\t_num[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[12]~58_combout\,
	sdata => \Add1~137_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(12));

-- Location: LCCOMB_X22_Y16_N26
\Add1~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (t_num(13) & (\Add1~89\ & VCC)) # (!t_num(13) & (!\Add1~89\))
-- \Add1~91\ = CARRY((!t_num(13) & !\Add1~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(13),
	datad => VCC,
	cin => \Add1~89\,
	combout => \Add1~90_combout\,
	cout => \Add1~91\);

-- Location: LCCOMB_X22_Y16_N28
\Add1~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = (t_num(14) & ((GND) # (!\Add1~91\))) # (!t_num(14) & (\Add1~91\ $ (GND)))
-- \Add1~93\ = CARRY((t_num(14)) # (!\Add1~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(14),
	datad => VCC,
	cin => \Add1~91\,
	combout => \Add1~92_combout\,
	cout => \Add1~93\);

-- Location: LCCOMB_X22_Y16_N30
\Add1~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~94_combout\ = (t_num(15) & (\Add1~93\ & VCC)) # (!t_num(15) & (!\Add1~93\))
-- \Add1~95\ = CARRY((!t_num(15) & !\Add1~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(15),
	datad => VCC,
	cin => \Add1~93\,
	combout => \Add1~94_combout\,
	cout => \Add1~95\);

-- Location: LCCOMB_X22_Y15_N0
\Add1~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~96_combout\ = (t_num(16) & ((GND) # (!\Add1~95\))) # (!t_num(16) & (\Add1~95\ $ (GND)))
-- \Add1~97\ = CARRY((t_num(16)) # (!\Add1~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(16),
	datad => VCC,
	cin => \Add1~95\,
	combout => \Add1~96_combout\,
	cout => \Add1~97\);

-- Location: LCCOMB_X22_Y15_N2
\Add1~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~98_combout\ = (t_num(17) & (\Add1~97\ & VCC)) # (!t_num(17) & (!\Add1~97\))
-- \Add1~99\ = CARRY((!t_num(17) & !\Add1~97\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(17),
	datad => VCC,
	cin => \Add1~97\,
	combout => \Add1~98_combout\,
	cout => \Add1~99\);

-- Location: LCCOMB_X22_Y15_N4
\Add1~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~100_combout\ = (t_num(18) & ((GND) # (!\Add1~99\))) # (!t_num(18) & (\Add1~99\ $ (GND)))
-- \Add1~101\ = CARRY((t_num(18)) # (!\Add1~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(18),
	datad => VCC,
	cin => \Add1~99\,
	combout => \Add1~100_combout\,
	cout => \Add1~101\);

-- Location: LCCOMB_X24_Y15_N8
\Add1~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~143_combout\ = (\Add1~100_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \Add1~100_combout\,
	combout => \Add1~143_combout\);

-- Location: LCFF_X23_Y15_N5
\t_num[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[18]~70_combout\,
	sdata => \Add1~143_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(18));

-- Location: LCCOMB_X23_Y15_N8
\t_num[20]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[20]~74_combout\ = (t_num(20) & (\t_num[19]~73\ $ (GND))) # (!t_num(20) & (!\t_num[19]~73\ & VCC))
-- \t_num[20]~75\ = CARRY((t_num(20) & !\t_num[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(20),
	datad => VCC,
	cin => \t_num[19]~73\,
	combout => \t_num[20]~74_combout\,
	cout => \t_num[20]~75\);

-- Location: LCCOMB_X22_Y15_N8
\Add1~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~104_combout\ = (t_num(20) & ((GND) # (!\Add1~103\))) # (!t_num(20) & (\Add1~103\ $ (GND)))
-- \Add1~105\ = CARRY((t_num(20)) # (!\Add1~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(20),
	datad => VCC,
	cin => \Add1~103\,
	combout => \Add1~104_combout\,
	cout => \Add1~105\);

-- Location: LCCOMB_X21_Y15_N8
\Add1~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~145_combout\ = (\Add1~104_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \Add1~104_combout\,
	combout => \Add1~145_combout\);

-- Location: LCFF_X23_Y15_N9
\t_num[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[20]~74_combout\,
	sdata => \Add1~145_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(20));

-- Location: LCCOMB_X23_Y15_N10
\t_num[21]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[21]~76_combout\ = (t_num(21) & (!\t_num[20]~75\)) # (!t_num(21) & ((\t_num[20]~75\) # (GND)))
-- \t_num[21]~77\ = CARRY((!\t_num[20]~75\) # (!t_num(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(21),
	datad => VCC,
	cin => \t_num[20]~75\,
	combout => \t_num[21]~76_combout\,
	cout => \t_num[21]~77\);

-- Location: LCCOMB_X23_Y15_N12
\t_num[22]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[22]~78_combout\ = (t_num(22) & (\t_num[21]~77\ $ (GND))) # (!t_num(22) & (!\t_num[21]~77\ & VCC))
-- \t_num[22]~79\ = CARRY((t_num(22) & !\t_num[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(22),
	datad => VCC,
	cin => \t_num[21]~77\,
	combout => \t_num[22]~78_combout\,
	cout => \t_num[22]~79\);

-- Location: LCCOMB_X23_Y15_N14
\t_num[23]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[23]~80_combout\ = (t_num(23) & (!\t_num[22]~79\)) # (!t_num(23) & ((\t_num[22]~79\) # (GND)))
-- \t_num[23]~81\ = CARRY((!\t_num[22]~79\) # (!t_num(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(23),
	datad => VCC,
	cin => \t_num[22]~79\,
	combout => \t_num[23]~80_combout\,
	cout => \t_num[23]~81\);

-- Location: LCCOMB_X22_Y15_N10
\Add1~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~106_combout\ = (t_num(21) & (\Add1~105\ & VCC)) # (!t_num(21) & (!\Add1~105\))
-- \Add1~107\ = CARRY((!t_num(21) & !\Add1~105\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(21),
	datad => VCC,
	cin => \Add1~105\,
	combout => \Add1~106_combout\,
	cout => \Add1~107\);

-- Location: LCCOMB_X24_Y15_N16
\Add1~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~146_combout\ = (\Add1~106_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~106_combout\,
	combout => \Add1~146_combout\);

-- Location: LCFF_X23_Y15_N11
\t_num[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[21]~76_combout\,
	sdata => \Add1~146_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(21));

-- Location: LCCOMB_X22_Y15_N12
\Add1~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~108_combout\ = (t_num(22) & ((GND) # (!\Add1~107\))) # (!t_num(22) & (\Add1~107\ $ (GND)))
-- \Add1~109\ = CARRY((t_num(22)) # (!\Add1~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(22),
	datad => VCC,
	cin => \Add1~107\,
	combout => \Add1~108_combout\,
	cout => \Add1~109\);

-- Location: LCCOMB_X24_Y15_N10
\Add1~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~147_combout\ = (\Add1~108_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~108_combout\,
	combout => \Add1~147_combout\);

-- Location: LCFF_X23_Y15_N13
\t_num[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[22]~78_combout\,
	sdata => \Add1~147_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(22));

-- Location: LCCOMB_X22_Y15_N14
\Add1~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~110_combout\ = (t_num(23) & (\Add1~109\ & VCC)) # (!t_num(23) & (!\Add1~109\))
-- \Add1~111\ = CARRY((!t_num(23) & !\Add1~109\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(23),
	datad => VCC,
	cin => \Add1~109\,
	combout => \Add1~110_combout\,
	cout => \Add1~111\);

-- Location: LCCOMB_X24_Y15_N0
\Add1~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~148_combout\ = (\Add1~110_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~110_combout\,
	combout => \Add1~148_combout\);

-- Location: LCFF_X23_Y15_N15
\t_num[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[23]~80_combout\,
	sdata => \Add1~148_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(23));

-- Location: LCCOMB_X23_Y15_N18
\t_num[25]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[25]~84_combout\ = (t_num(25) & (!\t_num[24]~83\)) # (!t_num(25) & ((\t_num[24]~83\) # (GND)))
-- \t_num[25]~85\ = CARRY((!\t_num[24]~83\) # (!t_num(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(25),
	datad => VCC,
	cin => \t_num[24]~83\,
	combout => \t_num[25]~84_combout\,
	cout => \t_num[25]~85\);

-- Location: LCCOMB_X22_Y15_N18
\Add1~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~114_combout\ = (t_num(25) & (\Add1~113\ & VCC)) # (!t_num(25) & (!\Add1~113\))
-- \Add1~115\ = CARRY((!t_num(25) & !\Add1~113\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(25),
	datad => VCC,
	cin => \Add1~113\,
	combout => \Add1~114_combout\,
	cout => \Add1~115\);

-- Location: LCCOMB_X21_Y15_N4
\Add1~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~150_combout\ = (\Add1~114_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~114_combout\,
	combout => \Add1~150_combout\);

-- Location: LCFF_X23_Y15_N19
\t_num[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[25]~84_combout\,
	sdata => \Add1~150_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(25));

-- Location: LCCOMB_X23_Y15_N22
\t_num[27]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[27]~88_combout\ = (t_num(27) & (!\t_num[26]~87\)) # (!t_num(27) & ((\t_num[26]~87\) # (GND)))
-- \t_num[27]~89\ = CARRY((!\t_num[26]~87\) # (!t_num(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(27),
	datad => VCC,
	cin => \t_num[26]~87\,
	combout => \t_num[27]~88_combout\,
	cout => \t_num[27]~89\);

-- Location: LCCOMB_X22_Y15_N22
\Add1~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~118_combout\ = (t_num(27) & (\Add1~117\ & VCC)) # (!t_num(27) & (!\Add1~117\))
-- \Add1~119\ = CARRY((!t_num(27) & !\Add1~117\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(27),
	datad => VCC,
	cin => \Add1~117\,
	combout => \Add1~118_combout\,
	cout => \Add1~119\);

-- Location: LCCOMB_X21_Y15_N24
\Add1~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~152_combout\ = (\Add1~118_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~118_combout\,
	combout => \Add1~152_combout\);

-- Location: LCFF_X23_Y15_N23
\t_num[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[27]~88_combout\,
	sdata => \Add1~152_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(27));

-- Location: LCCOMB_X23_Y15_N24
\t_num[28]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[28]~90_combout\ = (t_num(28) & (\t_num[27]~89\ $ (GND))) # (!t_num(28) & (!\t_num[27]~89\ & VCC))
-- \t_num[28]~91\ = CARRY((t_num(28) & !\t_num[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(28),
	datad => VCC,
	cin => \t_num[27]~89\,
	combout => \t_num[28]~90_combout\,
	cout => \t_num[28]~91\);

-- Location: LCCOMB_X23_Y15_N26
\t_num[29]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[29]~92_combout\ = (t_num(29) & (!\t_num[28]~91\)) # (!t_num(29) & ((\t_num[28]~91\) # (GND)))
-- \t_num[29]~93\ = CARRY((!\t_num[28]~91\) # (!t_num(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(29),
	datad => VCC,
	cin => \t_num[28]~91\,
	combout => \t_num[29]~92_combout\,
	cout => \t_num[29]~93\);

-- Location: LCCOMB_X22_Y15_N24
\Add1~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~120_combout\ = (t_num(28) & ((GND) # (!\Add1~119\))) # (!t_num(28) & (\Add1~119\ $ (GND)))
-- \Add1~121\ = CARRY((t_num(28)) # (!\Add1~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(28),
	datad => VCC,
	cin => \Add1~119\,
	combout => \Add1~120_combout\,
	cout => \Add1~121\);

-- Location: LCCOMB_X24_Y15_N26
\Add1~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~153_combout\ = (\Add1~120_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~120_combout\,
	combout => \Add1~153_combout\);

-- Location: LCFF_X23_Y15_N25
\t_num[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[28]~90_combout\,
	sdata => \Add1~153_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(28));

-- Location: LCCOMB_X22_Y15_N26
\Add1~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~122_combout\ = (t_num(29) & (\Add1~121\ & VCC)) # (!t_num(29) & (!\Add1~121\))
-- \Add1~123\ = CARRY((!t_num(29) & !\Add1~121\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(29),
	datad => VCC,
	cin => \Add1~121\,
	combout => \Add1~122_combout\,
	cout => \Add1~123\);

-- Location: LCCOMB_X21_Y15_N18
\Add1~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~154_combout\ = (\Add1~122_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \Add1~122_combout\,
	combout => \Add1~154_combout\);

-- Location: LCFF_X23_Y15_N27
\t_num[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[29]~92_combout\,
	sdata => \Add1~154_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(29));

-- Location: LCCOMB_X23_Y15_N28
\t_num[30]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[30]~94_combout\ = (t_num(30) & (\t_num[29]~93\ $ (GND))) # (!t_num(30) & (!\t_num[29]~93\ & VCC))
-- \t_num[30]~95\ = CARRY((t_num(30) & !\t_num[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(30),
	datad => VCC,
	cin => \t_num[29]~93\,
	combout => \t_num[30]~94_combout\,
	cout => \t_num[30]~95\);

-- Location: LCCOMB_X22_Y15_N28
\Add1~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~124_combout\ = (t_num(30) & ((GND) # (!\Add1~123\))) # (!t_num(30) & (\Add1~123\ $ (GND)))
-- \Add1~125\ = CARRY((t_num(30)) # (!\Add1~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(30),
	datad => VCC,
	cin => \Add1~123\,
	combout => \Add1~124_combout\,
	cout => \Add1~125\);

-- Location: LCCOMB_X24_Y15_N12
\Add1~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~155_combout\ = (\Add1~124_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~124_combout\,
	combout => \Add1~155_combout\);

-- Location: LCFF_X23_Y15_N29
\t_num[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[30]~94_combout\,
	sdata => \Add1~155_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(30));

-- Location: LCCOMB_X23_Y15_N30
\t_num[31]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[31]~96_combout\ = \t_num[30]~95\ $ (t_num(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => t_num(31),
	cin => \t_num[30]~95\,
	combout => \t_num[31]~96_combout\);

-- Location: LCCOMB_X22_Y15_N30
\Add1~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~126_combout\ = \Add1~125\ $ (!t_num(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => t_num(31),
	cin => \Add1~125\,
	combout => \Add1~126_combout\);

-- Location: LCCOMB_X24_Y15_N14
\Add1~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~156_combout\ = (\Add1~126_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~126_combout\,
	combout => \Add1~156_combout\);

-- Location: LCFF_X23_Y15_N31
\t_num[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[31]~96_combout\,
	sdata => \Add1~156_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(31));

-- Location: LCCOMB_X22_Y18_N14
\Equal5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!t_num(19) & (!t_num(21) & (!t_num(22) & !t_num(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_num(19),
	datab => t_num(21),
	datac => t_num(22),
	datad => t_num(20),
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X22_Y18_N30
\Equal5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (!t_num(28) & (!t_num(27) & (!t_num(29) & !t_num(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_num(28),
	datab => t_num(27),
	datac => t_num(29),
	datad => t_num(30),
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X22_Y18_N28
\Equal5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (\Equal5~6_combout\ & (!t_num(31) & (\Equal5~5_combout\ & \Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~6_combout\,
	datab => t_num(31),
	datac => \Equal5~5_combout\,
	datad => \Equal5~7_combout\,
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X23_Y18_N16
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Equal6~0_combout\ & (\Equal5~4_combout\ & \Equal5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~0_combout\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~8_combout\,
	combout => \Equal6~1_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[2]~I\ : cycloneii_io
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
	padio => ww_addr(2),
	combout => \addr~combout\(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[3]~I\ : cycloneii_io
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
	padio => ww_addr(3),
	combout => \addr~combout\(3));

-- Location: LCCOMB_X20_Y19_N16
\LessThan52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan52~0_combout\ = ((!\addr~combout\(2) & !\addr~combout\(3))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \LessThan52~0_combout\);

-- Location: LCCOMB_X23_Y18_N20
\t_num[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[0]~34_combout\ = ((\Equal6~1_combout\) # ((\addr~combout\(5) & !\LessThan52~0_combout\))) # (!\always~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always~2_combout\,
	datab => \addr~combout\(5),
	datac => \Equal6~1_combout\,
	datad => \LessThan52~0_combout\,
	combout => \t_num[0]~34_combout\);

-- Location: LCCOMB_X23_Y18_N18
\memory~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~22_combout\ = (\mode~combout\(0) & ((\mode~combout\(1)) # (\Equal5~10_combout\))) # (!\mode~combout\(0) & (!\mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \Equal5~10_combout\,
	combout => \memory~22_combout\);

-- Location: LCCOMB_X23_Y18_N12
\t_num[0]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[0]~35_combout\ = (\enable~combout\ & ((!\memory~22_combout\) # (!\t_num[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datac => \t_num[0]~34_combout\,
	datad => \memory~22_combout\,
	combout => \t_num[0]~35_combout\);

-- Location: LCFF_X23_Y16_N9
\t_num[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[4]~42_combout\,
	sdata => \Add1~158_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(4));

-- Location: LCCOMB_X23_Y16_N14
\t_num[7]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[7]~48_combout\ = (t_num(7) & (!\t_num[6]~47\)) # (!t_num(7) & ((\t_num[6]~47\) # (GND)))
-- \t_num[7]~49\ = CARRY((!\t_num[6]~47\) # (!t_num(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(7),
	datad => VCC,
	cin => \t_num[6]~47\,
	combout => \t_num[7]~48_combout\,
	cout => \t_num[7]~49\);

-- Location: LCCOMB_X24_Y16_N12
\Add1~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~132_combout\ = (\Add1~78_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(0),
	datac => \Add1~78_combout\,
	datad => \mode~combout\(1),
	combout => \Add1~132_combout\);

-- Location: LCFF_X23_Y16_N15
\t_num[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[7]~48_combout\,
	sdata => \Add1~132_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(7));

-- Location: LCCOMB_X23_Y16_N16
\t_num[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[8]~50_combout\ = (t_num(8) & (\t_num[7]~49\ $ (GND))) # (!t_num(8) & (!\t_num[7]~49\ & VCC))
-- \t_num[8]~51\ = CARRY((t_num(8) & !\t_num[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t_num(8),
	datad => VCC,
	cin => \t_num[7]~49\,
	combout => \t_num[8]~50_combout\,
	cout => \t_num[8]~51\);

-- Location: LCCOMB_X23_Y16_N18
\t_num[9]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[9]~52_combout\ = (t_num(9) & (!\t_num[8]~51\)) # (!t_num(9) & ((\t_num[8]~51\) # (GND)))
-- \t_num[9]~53\ = CARRY((!\t_num[8]~51\) # (!t_num(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(9),
	datad => VCC,
	cin => \t_num[8]~51\,
	combout => \t_num[9]~52_combout\,
	cout => \t_num[9]~53\);

-- Location: LCCOMB_X21_Y16_N8
\Add1~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~134_combout\ = (\Add1~82_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~82_combout\,
	combout => \Add1~134_combout\);

-- Location: LCFF_X23_Y16_N19
\t_num[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[9]~52_combout\,
	sdata => \Add1~134_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(9));

-- Location: LCCOMB_X23_Y16_N22
\t_num[11]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[11]~56_combout\ = (t_num(11) & (!\t_num[10]~55\)) # (!t_num(11) & ((\t_num[10]~55\) # (GND)))
-- \t_num[11]~57\ = CARRY((!\t_num[10]~55\) # (!t_num(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(11),
	datad => VCC,
	cin => \t_num[10]~55\,
	combout => \t_num[11]~56_combout\,
	cout => \t_num[11]~57\);

-- Location: LCCOMB_X21_Y16_N2
\Add1~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~136_combout\ = (\Add1~86_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~86_combout\,
	combout => \Add1~136_combout\);

-- Location: LCFF_X23_Y16_N23
\t_num[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[11]~56_combout\,
	sdata => \Add1~136_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(11));

-- Location: LCCOMB_X23_Y16_N26
\t_num[13]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[13]~60_combout\ = (t_num(13) & (!\t_num[12]~59\)) # (!t_num(13) & ((\t_num[12]~59\) # (GND)))
-- \t_num[13]~61\ = CARRY((!\t_num[12]~59\) # (!t_num(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(13),
	datad => VCC,
	cin => \t_num[12]~59\,
	combout => \t_num[13]~60_combout\,
	cout => \t_num[13]~61\);

-- Location: LCCOMB_X21_Y16_N12
\Add1~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~138_combout\ = (\Add1~90_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datac => \Add1~90_combout\,
	datad => \mode~combout\(0),
	combout => \Add1~138_combout\);

-- Location: LCFF_X23_Y16_N27
\t_num[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[13]~60_combout\,
	sdata => \Add1~138_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(13));

-- Location: LCCOMB_X23_Y16_N28
\t_num[14]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[14]~62_combout\ = (t_num(14) & (\t_num[13]~61\ $ (GND))) # (!t_num(14) & (!\t_num[13]~61\ & VCC))
-- \t_num[14]~63\ = CARRY((t_num(14) & !\t_num[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(14),
	datad => VCC,
	cin => \t_num[13]~61\,
	combout => \t_num[14]~62_combout\,
	cout => \t_num[14]~63\);

-- Location: LCCOMB_X24_Y16_N16
\Add1~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~139_combout\ = (\Add1~92_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \Add1~92_combout\,
	combout => \Add1~139_combout\);

-- Location: LCFF_X23_Y16_N29
\t_num[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[14]~62_combout\,
	sdata => \Add1~139_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(14));

-- Location: LCCOMB_X23_Y16_N30
\t_num[15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[15]~64_combout\ = (t_num(15) & (!\t_num[14]~63\)) # (!t_num(15) & ((\t_num[14]~63\) # (GND)))
-- \t_num[15]~65\ = CARRY((!\t_num[14]~63\) # (!t_num(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(15),
	datad => VCC,
	cin => \t_num[14]~63\,
	combout => \t_num[15]~64_combout\,
	cout => \t_num[15]~65\);

-- Location: LCCOMB_X24_Y16_N10
\Add1~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~140_combout\ = (\Add1~94_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \Add1~94_combout\,
	combout => \Add1~140_combout\);

-- Location: LCFF_X23_Y16_N31
\t_num[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[15]~64_combout\,
	sdata => \Add1~140_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(15));

-- Location: LCCOMB_X23_Y15_N0
\t_num[16]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[16]~66_combout\ = (t_num(16) & (\t_num[15]~65\ $ (GND))) # (!t_num(16) & (!\t_num[15]~65\ & VCC))
-- \t_num[16]~67\ = CARRY((t_num(16) & !\t_num[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(16),
	datad => VCC,
	cin => \t_num[15]~65\,
	combout => \t_num[16]~66_combout\,
	cout => \t_num[16]~67\);

-- Location: LCCOMB_X21_Y15_N12
\Add1~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~141_combout\ = (\Add1~96_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \Add1~96_combout\,
	datac => \mode~combout\(1),
	combout => \Add1~141_combout\);

-- Location: LCFF_X23_Y15_N1
\t_num[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[16]~66_combout\,
	sdata => \Add1~141_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(16));

-- Location: LCCOMB_X21_Y15_N26
\Add1~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~142_combout\ = (\Add1~98_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~98_combout\,
	combout => \Add1~142_combout\);

-- Location: LCFF_X23_Y15_N3
\t_num[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[17]~68_combout\,
	sdata => \Add1~142_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(17));

-- Location: LCCOMB_X23_Y18_N14
\Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (!t_num(15) & (!t_num(17) & (!t_num(16) & !t_num(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_num(15),
	datab => t_num(17),
	datac => t_num(16),
	datad => t_num(18),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X23_Y18_N24
\Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!t_num(12) & (!t_num(11) & (!t_num(14) & !t_num(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_num(12),
	datab => t_num(11),
	datac => t_num(14),
	datad => t_num(13),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X24_Y16_N18
\Add1~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~133_combout\ = (\Add1~80_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(0),
	datac => \Add1~80_combout\,
	datad => \mode~combout\(1),
	combout => \Add1~133_combout\);

-- Location: LCFF_X23_Y16_N17
\t_num[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[8]~50_combout\,
	sdata => \Add1~133_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(8));

-- Location: LCCOMB_X24_Y16_N20
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!t_num(7) & (!t_num(8) & (!t_num(10) & !t_num(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_num(7),
	datab => t_num(8),
	datac => t_num(10),
	datad => t_num(9),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X23_Y18_N4
\Equal5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~0_combout\ & (\Equal5~3_combout\ & (\Equal5~2_combout\ & \Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal5~3_combout\,
	datac => \Equal5~2_combout\,
	datad => \Equal5~1_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X23_Y18_N10
\always~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always~1_combout\ = (\always~0_combout\ & (((!\Equal5~9_combout\) # (!\Equal5~8_combout\)) # (!\Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always~0_combout\,
	datab => \Equal5~4_combout\,
	datac => \Equal5~8_combout\,
	datad => \Equal5~9_combout\,
	combout => \always~1_combout\);

-- Location: LCFF_X23_Y16_N1
\t_num[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[0]~32_combout\,
	sdata => \Add1~128_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(0));

-- Location: LCCOMB_X23_Y16_N2
\t_num[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \t_num[1]~36_combout\ = (t_num(1) & (!\t_num[0]~33\)) # (!t_num(1) & ((\t_num[0]~33\) # (GND)))
-- \t_num[1]~37\ = CARRY((!\t_num[0]~33\) # (!t_num(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t_num(1),
	datad => VCC,
	cin => \t_num[0]~33\,
	combout => \t_num[1]~36_combout\,
	cout => \t_num[1]~37\);

-- Location: LCCOMB_X21_Y16_N18
\Add1~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~129_combout\ = (\Add1~66_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~66_combout\,
	combout => \Add1~129_combout\);

-- Location: LCFF_X23_Y16_N3
\t_num[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[1]~36_combout\,
	sdata => \Add1~129_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(1));

-- Location: LCCOMB_X24_Y16_N28
\Add1~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~157_combout\ = (\Add1~68_combout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \Add1~68_combout\,
	combout => \Add1~157_combout\);

-- Location: LCFF_X23_Y16_N5
\t_num[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[2]~38_combout\,
	sdata => \Add1~157_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(2));

-- Location: LCCOMB_X23_Y18_N22
\Equal5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (t_num(4) & (t_num(2) & t_num(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_num(4),
	datac => t_num(2),
	datad => t_num(5),
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Equal5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~10_combout\ = (\Equal5~9_combout\ & (\Equal5~4_combout\ & \Equal5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~8_combout\,
	combout => \Equal5~10_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y16_N20
\Add1~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~130_combout\ = (\Add1~70_combout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \Add1~70_combout\,
	combout => \Add1~130_combout\);

-- Location: LCFF_X23_Y16_N7
\t_num[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \t_num[3]~40_combout\,
	sdata => \Add1~130_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \ALT_INV_always~1_combout\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_num(3));

-- Location: LCCOMB_X21_Y21_N16
\value~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~34_combout\ = (\addr~combout\(4) & (\addr~combout\(5) & (!\addr~combout\(2) & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \addr~combout\(5),
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \value~34_combout\);

-- Location: LCCOMB_X24_Y16_N6
\memory~425\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~425_combout\ = (\memory[50][0]~regout\ & ((\always~1_combout\) # ((!\mode~combout\(0) & \mode~combout\(1))))) # (!\memory[50][0]~regout\ & (!\mode~combout\(0) & ((\mode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[50][0]~regout\,
	datab => \mode~combout\(0),
	datac => \always~1_combout\,
	datad => \mode~combout\(1),
	combout => \memory~425_combout\);

-- Location: LCFF_X24_Y16_N7
\memory[51][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~425_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[51][0]~regout\);

-- Location: LCCOMB_X23_Y17_N16
\memory~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~158_combout\ = (\memory[51][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[51][0]~regout\,
	combout => \memory~158_combout\);

-- Location: LCCOMB_X24_Y16_N0
\memory~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~155_combout\ = (\memory[50][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[50][0]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~155_combout\);

-- Location: LCCOMB_X25_Y16_N24
\memory~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~161_combout\ = (\memory[49][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[49][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~161_combout\);

-- Location: LCCOMB_X26_Y17_N28
\memory~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~71_combout\ = (\memory[48][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[48][0]~regout\,
	combout => \memory~71_combout\);

-- Location: LCCOMB_X25_Y18_N16
\memory~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~33_combout\ = (\memory[47][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[47][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~33_combout\);

-- Location: LCCOMB_X27_Y18_N16
\memory~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~62_combout\ = (\memory[46][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[46][0]~regout\,
	combout => \memory~62_combout\);

-- Location: LCCOMB_X27_Y17_N12
\memory~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~23_combout\ = (\memory[45][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[45][0]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~23_combout\);

-- Location: LCCOMB_X24_Y17_N30
\memory~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~65_combout\ = (\memory[44][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[44][0]~regout\,
	combout => \memory~65_combout\);

-- Location: LCCOMB_X24_Y17_N16
\memory~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~27_combout\ = (\memory[43][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[43][0]~regout\,
	combout => \memory~27_combout\);

-- Location: LCCOMB_X27_Y18_N30
\memory~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~68_combout\ = (\memory[42][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[42][0]~regout\,
	combout => \memory~68_combout\);

-- Location: LCCOMB_X24_Y19_N12
\memory~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~30_combout\ = (\memory[41][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[41][0]~regout\,
	combout => \memory~30_combout\);

-- Location: LCCOMB_X24_Y19_N24
\memory~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~47_combout\ = (\memory[40][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[40][0]~regout\,
	combout => \memory~47_combout\);

-- Location: LCCOMB_X24_Y22_N2
\memory~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~59_combout\ = (\memory[39][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[39][0]~regout\,
	combout => \memory~59_combout\);

-- Location: LCCOMB_X24_Y22_N8
\memory~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~37_combout\ = (\memory[38][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[38][0]~regout\,
	combout => \memory~37_combout\);

-- Location: LCCOMB_X26_Y18_N10
\memory~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~50_combout\ = (\memory[37][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[37][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~50_combout\);

-- Location: LCCOMB_X26_Y18_N2
\memory~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~40_combout\ = (\memory[36][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[36][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~40_combout\);

-- Location: LCCOMB_X23_Y19_N0
\memory~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~52_combout\ = (\memory[35][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[35][0]~regout\,
	combout => \memory~52_combout\);

-- Location: LCCOMB_X25_Y19_N16
\memory~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~43_combout\ = (\memory[34][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[34][0]~regout\,
	combout => \memory~43_combout\);

-- Location: LCCOMB_X23_Y19_N14
\memory~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~56_combout\ = (\memory[33][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[33][0]~regout\,
	combout => \memory~56_combout\);

-- Location: LCCOMB_X22_Y22_N30
\memory~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~117_combout\ = (\memory[32][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[32][0]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~117_combout\);

-- Location: LCCOMB_X22_Y22_N16
\memory~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~108_combout\ = (\memory[31][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[31][0]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~108_combout\);

-- Location: LCCOMB_X22_Y19_N18
\memory~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~85_combout\ = (\memory[30][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[30][0]~regout\,
	combout => \memory~85_combout\);

-- Location: LCCOMB_X22_Y19_N20
\memory~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~74_combout\ = (\memory[29][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[29][0]~regout\,
	combout => \memory~74_combout\);

-- Location: LCCOMB_X21_Y20_N16
\memory~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~111_combout\ = (\memory[28][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[28][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~111_combout\);

-- Location: LCCOMB_X20_Y20_N28
\memory~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~114_combout\ = (\memory[27][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[27][0]~regout\,
	combout => \memory~114_combout\);

-- Location: LCCOMB_X23_Y20_N4
\memory~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~79_combout\ = (\memory[26][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[26][0]~regout\,
	combout => \memory~79_combout\);

-- Location: LCCOMB_X22_Y21_N12
\memory~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~82_combout\ = (\memory[25][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[25][0]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~82_combout\);

-- Location: LCCOMB_X22_Y21_N6
\memory~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~95_combout\ = (\memory[24][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[24][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~95_combout\);

-- Location: LCCOMB_X20_Y18_N14
\memory~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~88_combout\ = (\memory[23][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[23][0]~regout\,
	combout => \memory~88_combout\);

-- Location: LCCOMB_X21_Y18_N24
\memory~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~105_combout\ = (\memory[22][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[22][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~105_combout\);

-- Location: LCCOMB_X19_Y18_N2
\memory~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~98_combout\ = (\memory[21][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[21][0]~regout\,
	combout => \memory~98_combout\);

-- Location: LCCOMB_X18_Y18_N20
\memory~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~91_combout\ = (\memory[20][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[20][0]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~91_combout\);

-- Location: LCCOMB_X19_Y18_N8
\memory~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~93_combout\ = (\memory[19][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[19][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~93_combout\);

-- Location: LCCOMB_X18_Y18_N26
\memory~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~101_combout\ = (\memory[18][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[18][0]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~101_combout\);

-- Location: LCCOMB_X22_Y17_N20
\memory~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~103_combout\ = (\memory[17][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[17][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~103_combout\);

-- Location: LCCOMB_X22_Y17_N24
\memory~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~153_combout\ = (\memory[16][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[16][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~153_combout\);

-- Location: LCCOMB_X25_Y21_N4
\memory~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~149_combout\ = (\memory[15][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[15][0]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~149_combout\);

-- Location: LCCOMB_X24_Y18_N12
\memory~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~146_combout\ = (\memory[14][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[14][0]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~146_combout\);

-- Location: LCCOMB_X24_Y18_N4
\memory~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~151_combout\ = (\memory[13][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[13][0]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~151_combout\);

-- Location: LCCOMB_X25_Y22_N10
\memory~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~126_combout\ = (\memory[12][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[12][0]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~126_combout\);

-- Location: LCCOMB_X25_Y22_N20
\memory~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~119_combout\ = (\memory[11][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[11][0]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~119_combout\);

-- Location: LCCOMB_X24_Y20_N24
\memory~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~122_combout\ = (\memory[10][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[10][0]~regout\,
	combout => \memory~122_combout\);

-- Location: LCCOMB_X24_Y21_N8
\memory~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~124_combout\ = (\memory[9][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[9][0]~regout\,
	combout => \memory~124_combout\);

-- Location: LCCOMB_X24_Y20_N10
\memory~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~136_combout\ = (\memory[8][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[8][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~136_combout\);

-- Location: LCCOMB_X21_Y18_N18
\memory~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~132_combout\ = (\memory[7][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[7][0]~regout\,
	combout => \memory~132_combout\);

-- Location: LCCOMB_X22_Y20_N20
\memory~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~129_combout\ = (\memory[6][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[6][0]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~129_combout\);

-- Location: LCCOMB_X22_Y20_N28
\memory~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~134_combout\ = (\memory[5][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~134_combout\);

-- Location: LCCOMB_X23_Y21_N28
\memory~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~144_combout\ = (\memory[4][0]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[4][0]~regout\,
	combout => \memory~144_combout\);

-- Location: LCCOMB_X23_Y21_N2
\memory~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~138_combout\ = (\memory[3][0]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[3][0]~regout\,
	combout => \memory~138_combout\);

-- Location: LCCOMB_X23_Y22_N28
\memory~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~140_combout\ = (\memory[2][0]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][0]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~140_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[0]~I\ : cycloneii_io
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
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: LCCOMB_X23_Y22_N24
\memory~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~142_combout\ = (\always~1_combout\ & (((\data~combout\(0))))) # (!\always~1_combout\ & (!\Equal1~0_combout\ & (\memory[1][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \memory[1][0]~regout\,
	datac => \data~combout\(0),
	datad => \always~1_combout\,
	combout => \memory~142_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[1]~I\ : cycloneii_io
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
	padio => ww_addr(1),
	combout => \addr~combout\(1));

-- Location: LCCOMB_X19_Y19_N10
\memory[1][0]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[1][0]~44_combout\ = (!\addr~combout\(3) & (!\addr~combout\(2) & !\addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \addr~combout\(1),
	combout => \memory[1][0]~44_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[4]~I\ : cycloneii_io
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
	padio => ww_addr(4),
	combout => \addr~combout\(4));

-- Location: LCCOMB_X20_Y19_N8
\LessThan33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan33~0_combout\ = (\addr~combout\(0)) # ((\addr~combout\(4)) # (!\memory[1][0]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[1][0]~44_combout\,
	datac => \addr~combout\(4),
	combout => \LessThan33~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\memory[5][0]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[5][0]~77_combout\ = (\memory[5][0]~76_combout\ & (((!\Equal6~0_combout\) # (!\Equal5~4_combout\)) # (!\Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][0]~76_combout\,
	datab => \Equal5~8_combout\,
	datac => \Equal5~4_combout\,
	datad => \Equal6~0_combout\,
	combout => \memory[5][0]~77_combout\);

-- Location: LCCOMB_X23_Y22_N2
\memory[0][0]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[0][0]~143_combout\ = (\enable~combout\ & (((!\LessThan33~0_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \LessThan33~0_combout\,
	datac => \memory~22_combout\,
	datad => \memory[5][0]~77_combout\,
	combout => \memory[0][0]~143_combout\);

-- Location: LCFF_X23_Y22_N25
\memory[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~142_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \memory[0][0]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[0][0]~regout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
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
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: LCCOMB_X24_Y18_N14
\memory[2][0]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[2][0]~120_combout\ = (\always~2_combout\ & (!\addr~combout\(5) & (!\addr~combout\(4) & !\Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always~2_combout\,
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	datad => \Equal6~1_combout\,
	combout => \memory[2][0]~120_combout\);

-- Location: LCCOMB_X24_Y18_N10
\memory[1][0]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[1][0]~141_combout\ = (\enable~combout\ & (((\memory[1][0]~44_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[1][0]~44_combout\,
	datab => \enable~combout\,
	datac => \memory[2][0]~120_combout\,
	datad => \memory~22_combout\,
	combout => \memory[1][0]~141_combout\);

-- Location: LCFF_X23_Y22_N29
\memory[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~140_combout\,
	sdata => \memory[0][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[1][0]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[1][0]~regout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[0]~I\ : cycloneii_io
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
	padio => ww_addr(0),
	combout => \addr~combout\(0));

-- Location: LCCOMB_X21_Y19_N26
\memory[2][0]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[2][0]~53_combout\ = (!\addr~combout\(3) & (!\addr~combout\(2) & ((!\addr~combout\(0)) # (!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(1),
	datac => \addr~combout\(2),
	datad => \addr~combout\(0),
	combout => \memory[2][0]~53_combout\);

-- Location: LCCOMB_X24_Y18_N26
\memory[2][0]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[2][0]~139_combout\ = (\enable~combout\ & (((\memory[2][0]~53_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[2][0]~53_combout\,
	datac => \memory[2][0]~120_combout\,
	datad => \memory~22_combout\,
	combout => \memory[2][0]~139_combout\);

-- Location: LCFF_X23_Y21_N3
\memory[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~138_combout\,
	sdata => \memory[1][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[2][0]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[2][0]~regout\);

-- Location: LCCOMB_X24_Y21_N30
\LessThan52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan52~1_combout\ = (!\addr~combout\(3) & !\addr~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \LessThan52~1_combout\);

-- Location: LCCOMB_X23_Y21_N30
\memory[3][0]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[3][0]~145_combout\ = (\enable~combout\ & (((\LessThan52~1_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \LessThan52~1_combout\,
	datac => \memory[2][0]~120_combout\,
	datad => \memory~22_combout\,
	combout => \memory[3][0]~145_combout\);

-- Location: LCFF_X23_Y21_N29
\memory[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~144_combout\,
	sdata => \memory[2][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[3][0]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[3][0]~regout\);

-- Location: LCCOMB_X22_Y20_N6
\memory[4][0]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[4][0]~135_combout\ = (\enable~combout\ & (((\memory[4][0]~424_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[4][0]~424_combout\,
	datab => \enable~combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[4][0]~135_combout\);

-- Location: LCFF_X22_Y20_N29
\memory[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~134_combout\,
	sdata => \memory[3][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[4][0]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[4][0]~regout\);

-- Location: LCCOMB_X22_Y20_N30
\memory[5][0]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[5][0]~131_combout\ = (\enable~combout\ & (((\memory[5][0]~130_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][0]~130_combout\,
	datab => \enable~combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[5][0]~131_combout\);

-- Location: LCFF_X22_Y20_N21
\memory[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~129_combout\,
	sdata => \memory[4][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[5][0]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[5][0]~regout\);

-- Location: LCCOMB_X21_Y18_N14
\memory[6][0]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[6][0]~133_combout\ = (\enable~combout\ & (((\memory[6][0]~423_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[6][0]~423_combout\,
	datab => \enable~combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[6][0]~133_combout\);

-- Location: LCFF_X21_Y18_N19
\memory[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~132_combout\,
	sdata => \memory[5][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[6][0]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[6][0]~regout\);

-- Location: LCCOMB_X24_Y20_N2
\memory[7][0]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[7][0]~137_combout\ = (\enable~combout\ & (((!\addr~combout\(3) & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~22_combout\,
	datab => \enable~combout\,
	datac => \addr~combout\(3),
	datad => \memory[2][0]~120_combout\,
	combout => \memory[7][0]~137_combout\);

-- Location: LCFF_X24_Y20_N11
\memory[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~136_combout\,
	sdata => \memory[6][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[7][0]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[7][0]~regout\);

-- Location: LCCOMB_X24_Y18_N20
\memory[8][0]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[8][0]~125_combout\ = (\enable~combout\ & (((!\LessThan41~0_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan41~0_combout\,
	datab => \enable~combout\,
	datac => \memory[2][0]~120_combout\,
	datad => \memory~22_combout\,
	combout => \memory[8][0]~125_combout\);

-- Location: LCFF_X24_Y21_N9
\memory[8][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~124_combout\,
	sdata => \memory[7][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[8][0]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[8][0]~regout\);

-- Location: LCCOMB_X25_Y20_N14
\LessThan42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan42~0_combout\ = (\addr~combout\(3) & ((\addr~combout\(2)) # (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \addr~combout\(1),
	combout => \LessThan42~0_combout\);

-- Location: LCCOMB_X24_Y20_N8
\memory[9][0]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[9][0]~123_combout\ = (\enable~combout\ & (((!\LessThan42~0_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~22_combout\,
	datab => \enable~combout\,
	datac => \LessThan42~0_combout\,
	datad => \memory[2][0]~120_combout\,
	combout => \memory[9][0]~123_combout\);

-- Location: LCFF_X24_Y20_N25
\memory[9][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~122_combout\,
	sdata => \memory[8][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[9][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[9][0]~regout\);

-- Location: LCCOMB_X24_Y18_N6
\memory[10][0]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[10][0]~121_combout\ = (\enable~combout\ & (((!\LessThan43~0_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan43~0_combout\,
	datab => \enable~combout\,
	datac => \memory[2][0]~120_combout\,
	datad => \memory~22_combout\,
	combout => \memory[10][0]~121_combout\);

-- Location: LCFF_X25_Y22_N21
\memory[10][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~119_combout\,
	sdata => \memory[9][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[10][0]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[10][0]~regout\);

-- Location: LCCOMB_X25_Y20_N8
\memory[43][0]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[43][0]~127_combout\ = (\addr~combout\(3) & \addr~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \memory[43][0]~127_combout\);

-- Location: LCCOMB_X24_Y18_N16
\memory[11][0]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[11][0]~128_combout\ = (\enable~combout\ & (((!\memory[43][0]~127_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[43][0]~127_combout\,
	datac => \memory[2][0]~120_combout\,
	datad => \memory~22_combout\,
	combout => \memory[11][0]~128_combout\);

-- Location: LCFF_X25_Y22_N11
\memory[11][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~126_combout\,
	sdata => \memory[10][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[11][0]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[11][0]~regout\);

-- Location: LCCOMB_X24_Y18_N22
\memory[12][0]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[12][0]~152_combout\ = (\enable~combout\ & (((!\memory[44][0]~24_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[44][0]~24_combout\,
	datab => \enable~combout\,
	datac => \memory[2][0]~120_combout\,
	datad => \memory~22_combout\,
	combout => \memory[12][0]~152_combout\);

-- Location: LCFF_X24_Y18_N5
\memory[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~151_combout\,
	sdata => \memory[11][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[12][0]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[12][0]~regout\);

-- Location: LCCOMB_X25_Y20_N4
\memory[46][0]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[46][0]~147_combout\ = (\addr~combout\(2) & (\addr~combout\(3) & \addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \addr~combout\(1),
	combout => \memory[46][0]~147_combout\);

-- Location: LCCOMB_X24_Y18_N0
\memory[13][0]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[13][0]~148_combout\ = (\enable~combout\ & (((!\memory[46][0]~147_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[46][0]~147_combout\,
	datac => \memory[2][0]~120_combout\,
	datad => \memory~22_combout\,
	combout => \memory[13][0]~148_combout\);

-- Location: LCFF_X24_Y18_N13
\memory[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~146_combout\,
	sdata => \memory[12][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[13][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[13][0]~regout\);

-- Location: LCCOMB_X23_Y20_N22
\memory[46][0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[46][0]~34_combout\ = (\addr~combout\(1) & (\addr~combout\(0) & (\addr~combout\(2) & \addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \memory[46][0]~34_combout\);

-- Location: LCCOMB_X25_Y18_N10
\memory[14][0]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[14][0]~150_combout\ = (\enable~combout\ & (((!\memory[46][0]~34_combout\ & \memory[2][0]~120_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[46][0]~34_combout\,
	datac => \memory~22_combout\,
	datad => \memory[2][0]~120_combout\,
	combout => \memory[14][0]~150_combout\);

-- Location: LCFF_X25_Y21_N5
\memory[14][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~149_combout\,
	sdata => \memory[13][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[14][0]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[14][0]~regout\);

-- Location: LCCOMB_X22_Y17_N10
\memory[15][0]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[15][0]~154_combout\ = (\enable~combout\ & (((!\addr~combout\(4) & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory~22_combout\,
	datac => \addr~combout\(4),
	datad => \memory[5][0]~77_combout\,
	combout => \memory[15][0]~154_combout\);

-- Location: LCFF_X22_Y17_N25
\memory[15][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~153_combout\,
	sdata => \memory[14][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[15][0]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[15][0]~regout\);

-- Location: LCCOMB_X22_Y17_N26
\LessThan49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan49~0_combout\ = (\addr~combout\(4) & ((\addr~combout\(0)) # (!\memory[1][0]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datac => \memory[1][0]~44_combout\,
	datad => \addr~combout\(0),
	combout => \LessThan49~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\memory[16][0]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[16][0]~104_combout\ = (\enable~combout\ & (((!\LessThan49~0_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory~22_combout\,
	datac => \LessThan49~0_combout\,
	datad => \memory[5][0]~77_combout\,
	combout => \memory[16][0]~104_combout\);

-- Location: LCFF_X22_Y17_N21
\memory[16][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~103_combout\,
	sdata => \memory[15][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[16][0]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[16][0]~regout\);

-- Location: LCCOMB_X18_Y18_N14
\memory[17][0]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[17][0]~102_combout\ = (\enable~combout\ & (((!\LessThan50~0_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan50~0_combout\,
	datab => \enable~combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[17][0]~102_combout\);

-- Location: LCFF_X18_Y18_N27
\memory[17][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~101_combout\,
	sdata => \memory[16][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[17][0]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[17][0]~regout\);

-- Location: LCCOMB_X22_Y18_N24
\LessThan51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan51~0_combout\ = (\addr~combout\(4) & !\memory[2][0]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(4),
	datac => \memory[2][0]~53_combout\,
	combout => \LessThan51~0_combout\);

-- Location: LCCOMB_X19_Y18_N28
\memory[18][0]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[18][0]~94_combout\ = (\enable~combout\ & (((\memory[5][0]~77_combout\ & !\LessThan51~0_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][0]~77_combout\,
	datab => \enable~combout\,
	datac => \LessThan51~0_combout\,
	datad => \memory~22_combout\,
	combout => \memory[18][0]~94_combout\);

-- Location: LCFF_X19_Y18_N9
\memory[18][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~93_combout\,
	sdata => \memory[17][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[18][0]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[18][0]~regout\);

-- Location: LCCOMB_X18_Y18_N24
\memory[19][0]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[19][0]~92_combout\ = (\enable~combout\ & (((\LessThan52~0_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan52~0_combout\,
	datab => \enable~combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[19][0]~92_combout\);

-- Location: LCFF_X18_Y18_N21
\memory[19][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~91_combout\,
	sdata => \memory[18][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[19][0]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[19][0]~regout\);

-- Location: LCCOMB_X21_Y20_N6
\LessThan45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan45~0_combout\ = (\addr~combout\(2) & ((\addr~combout\(1)) # (\addr~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \LessThan45~0_combout\);

-- Location: LCCOMB_X20_Y19_N28
\memory[20][0]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[20][0]~99_combout\ = ((!\LessThan45~0_combout\ & !\addr~combout\(3))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan45~0_combout\,
	datac => \addr~combout\(4),
	datad => \addr~combout\(3),
	combout => \memory[20][0]~99_combout\);

-- Location: LCCOMB_X19_Y18_N26
\memory[20][0]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[20][0]~100_combout\ = (\enable~combout\ & (((\memory[5][0]~77_combout\ & \memory[20][0]~99_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][0]~77_combout\,
	datab => \enable~combout\,
	datac => \memory[20][0]~99_combout\,
	datad => \memory~22_combout\,
	combout => \memory[20][0]~100_combout\);

-- Location: LCFF_X19_Y18_N3
\memory[20][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~98_combout\,
	sdata => \memory[19][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[20][0]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[20][0]~regout\);

-- Location: LCCOMB_X21_Y18_N20
\memory[21][0]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[21][0]~107_combout\ = (\enable~combout\ & (((\memory[21][0]~106_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[21][0]~106_combout\,
	datab => \enable~combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[21][0]~107_combout\);

-- Location: LCFF_X21_Y18_N25
\memory[21][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~105_combout\,
	sdata => \memory[20][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[21][0]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[21][0]~regout\);

-- Location: LCCOMB_X20_Y20_N26
\memory[22][0]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[22][0]~89_combout\ = ((!\addr~combout\(3) & ((!\addr~combout\(0)) # (!\LessThan47~0_combout\)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan47~0_combout\,
	datab => \addr~combout\(0),
	datac => \addr~combout\(4),
	datad => \addr~combout\(3),
	combout => \memory[22][0]~89_combout\);

-- Location: LCCOMB_X20_Y18_N26
\memory[22][0]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[22][0]~90_combout\ = (\enable~combout\ & (((\memory[22][0]~89_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[22][0]~89_combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[22][0]~90_combout\);

-- Location: LCFF_X20_Y18_N15
\memory[22][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~88_combout\,
	sdata => \memory[21][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[22][0]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[22][0]~regout\);

-- Location: LCCOMB_X26_Y21_N6
\memory[23][0]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[23][0]~96_combout\ = (!\addr~combout\(4)) # (!\addr~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~combout\(3),
	datad => \addr~combout\(4),
	combout => \memory[23][0]~96_combout\);

-- Location: LCCOMB_X22_Y21_N28
\memory[23][0]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[23][0]~97_combout\ = (\enable~combout\ & (((\memory[23][0]~96_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[23][0]~96_combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[23][0]~97_combout\);

-- Location: LCFF_X22_Y21_N7
\memory[23][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~95_combout\,
	sdata => \memory[22][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[23][0]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[23][0]~regout\);

-- Location: LCCOMB_X23_Y20_N0
\LessThan41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan41~0_combout\ = (\addr~combout\(3) & ((\addr~combout\(1)) # ((\addr~combout\(0)) # (\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \LessThan41~0_combout\);

-- Location: LCCOMB_X21_Y21_N24
\memory[24][0]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[24][0]~83_combout\ = (!\addr~combout\(4)) # (!\LessThan41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan41~0_combout\,
	datac => \addr~combout\(4),
	combout => \memory[24][0]~83_combout\);

-- Location: LCCOMB_X22_Y21_N30
\memory[24][0]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[24][0]~84_combout\ = (\enable~combout\ & (((\memory[24][0]~83_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[24][0]~83_combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[24][0]~84_combout\);

-- Location: LCFF_X22_Y21_N13
\memory[24][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~82_combout\,
	sdata => \memory[23][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[24][0]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[24][0]~regout\);

-- Location: LCCOMB_X26_Y20_N20
\memory[25][0]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[25][0]~80_combout\ = (((!\addr~combout\(2) & !\addr~combout\(1))) # (!\addr~combout\(4))) # (!\addr~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \addr~combout\(2),
	datad => \addr~combout\(1),
	combout => \memory[25][0]~80_combout\);

-- Location: LCCOMB_X23_Y20_N20
\memory[25][0]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[25][0]~81_combout\ = (\enable~combout\ & (((\memory[25][0]~80_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[25][0]~80_combout\,
	datac => \memory~22_combout\,
	datad => \memory[5][0]~77_combout\,
	combout => \memory[25][0]~81_combout\);

-- Location: LCFF_X23_Y20_N5
\memory[25][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~79_combout\,
	sdata => \memory[24][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[25][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[25][0]~regout\);

-- Location: LCCOMB_X20_Y20_N2
\memory[26][0]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[26][0]~116_combout\ = (\enable~combout\ & (((\memory[26][0]~115_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[26][0]~115_combout\,
	datab => \enable~combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[26][0]~116_combout\);

-- Location: LCFF_X20_Y20_N29
\memory[26][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~114_combout\,
	sdata => \memory[25][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[26][0]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[26][0]~regout\);

-- Location: LCCOMB_X22_Y20_N24
\memory[27][0]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[27][0]~113_combout\ = (\enable~combout\ & (((\memory[27][0]~112_combout\ & \memory[5][0]~77_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[27][0]~112_combout\,
	datab => \enable~combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[27][0]~113_combout\);

-- Location: LCFF_X21_Y20_N17
\memory[27][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~111_combout\,
	sdata => \memory[26][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[27][0]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[27][0]~regout\);

-- Location: LCCOMB_X26_Y19_N16
\memory[44][0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[44][0]~24_combout\ = (\addr~combout\(2) & (\addr~combout\(3) & ((\addr~combout\(0)) # (\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \addr~combout\(1),
	combout => \memory[44][0]~24_combout\);

-- Location: LCCOMB_X26_Y19_N28
\memory[28][0]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[28][0]~75_combout\ = (!\addr~combout\(4)) # (!\memory[44][0]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[44][0]~24_combout\,
	datad => \addr~combout\(4),
	combout => \memory[28][0]~75_combout\);

-- Location: LCCOMB_X22_Y19_N2
\memory[28][0]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[28][0]~78_combout\ = (\enable~combout\ & (((\memory[5][0]~77_combout\ & \memory[28][0]~75_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[5][0]~77_combout\,
	datac => \memory[28][0]~75_combout\,
	datad => \memory~22_combout\,
	combout => \memory[28][0]~78_combout\);

-- Location: LCFF_X22_Y19_N21
\memory[28][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~74_combout\,
	sdata => \memory[27][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[28][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[28][0]~regout\);

-- Location: LCCOMB_X26_Y21_N20
\memory[29][0]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[29][0]~86_combout\ = (((!\addr~combout\(4)) # (!\addr~combout\(1))) # (!\addr~combout\(2))) # (!\addr~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \addr~combout\(1),
	datad => \addr~combout\(4),
	combout => \memory[29][0]~86_combout\);

-- Location: LCCOMB_X22_Y19_N6
\memory[29][0]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[29][0]~87_combout\ = (\enable~combout\ & (((\memory[5][0]~77_combout\ & \memory[29][0]~86_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[5][0]~77_combout\,
	datac => \memory[29][0]~86_combout\,
	datad => \memory~22_combout\,
	combout => \memory[29][0]~87_combout\);

-- Location: LCFF_X22_Y19_N19
\memory[29][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~85_combout\,
	sdata => \memory[28][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[29][0]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[29][0]~regout\);

-- Location: LCCOMB_X21_Y22_N8
\memory[30][0]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[30][0]~109_combout\ = (!\memory[46][0]~34_combout\) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~combout\(4),
	datad => \memory[46][0]~34_combout\,
	combout => \memory[30][0]~109_combout\);

-- Location: LCCOMB_X22_Y22_N18
\memory[30][0]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[30][0]~110_combout\ = (\enable~combout\ & (((\memory[5][0]~77_combout\ & \memory[30][0]~109_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[5][0]~77_combout\,
	datac => \memory[30][0]~109_combout\,
	datad => \memory~22_combout\,
	combout => \memory[30][0]~110_combout\);

-- Location: LCFF_X22_Y22_N17
\memory[30][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~108_combout\,
	sdata => \memory[29][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[30][0]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[30][0]~regout\);

-- Location: LCCOMB_X22_Y22_N2
\memory[31][0]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[31][0]~118_combout\ = (\enable~combout\ & ((\memory[5][0]~77_combout\) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datac => \memory[5][0]~77_combout\,
	datad => \memory~22_combout\,
	combout => \memory[31][0]~118_combout\);

-- Location: LCFF_X22_Y22_N31
\memory[31][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~117_combout\,
	sdata => \memory[30][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[31][0]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[31][0]~regout\);

-- Location: LCCOMB_X20_Y19_N30
\memory[32][0]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[32][0]~57_combout\ = ((!\addr~combout\(4) & (\memory[1][0]~44_combout\ & !\addr~combout\(0)))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \memory[1][0]~44_combout\,
	datac => \addr~combout\(5),
	datad => \addr~combout\(0),
	combout => \memory[32][0]~57_combout\);

-- Location: LCCOMB_X23_Y18_N26
\always~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \always~3_combout\ = (\always~2_combout\ & (((!\Equal5~8_combout\) # (!\Equal5~4_combout\)) # (!\Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always~2_combout\,
	datab => \Equal6~0_combout\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~8_combout\,
	combout => \always~3_combout\);

-- Location: LCCOMB_X23_Y19_N6
\memory[32][0]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[32][0]~58_combout\ = (\enable~combout\ & (((\memory[32][0]~57_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory~22_combout\,
	datac => \memory[32][0]~57_combout\,
	datad => \always~3_combout\,
	combout => \memory[32][0]~58_combout\);

-- Location: LCFF_X23_Y19_N15
\memory[32][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~56_combout\,
	sdata => \memory[31][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[32][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[32][0]~regout\);

-- Location: LCCOMB_X20_Y19_N10
\memory[33][0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[33][0]~45_combout\ = ((!\addr~combout\(4) & \memory[1][0]~44_combout\)) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \memory[1][0]~44_combout\,
	datac => \addr~combout\(5),
	combout => \memory[33][0]~45_combout\);

-- Location: LCCOMB_X24_Y19_N20
\memory[33][0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[33][0]~46_combout\ = (\enable~combout\ & (((\memory[33][0]~45_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[33][0]~45_combout\,
	datac => \memory~22_combout\,
	datad => \always~3_combout\,
	combout => \memory[33][0]~46_combout\);

-- Location: LCFF_X25_Y19_N17
\memory[33][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~43_combout\,
	sdata => \memory[32][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[33][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[33][0]~regout\);

-- Location: LCCOMB_X23_Y19_N4
\memory[34][0]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[34][0]~55_combout\ = (\enable~combout\ & (((\memory[34][0]~54_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[34][0]~54_combout\,
	datab => \always~3_combout\,
	datac => \enable~combout\,
	datad => \memory~22_combout\,
	combout => \memory[34][0]~55_combout\);

-- Location: LCFF_X23_Y19_N1
\memory[34][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~52_combout\,
	sdata => \memory[33][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[34][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[34][0]~regout\);

-- Location: LCCOMB_X26_Y18_N18
\memory[35][0]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[35][0]~42_combout\ = (\enable~combout\ & (((\memory[35][0]~41_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][0]~41_combout\,
	datab => \always~3_combout\,
	datac => \enable~combout\,
	datad => \memory~22_combout\,
	combout => \memory[35][0]~42_combout\);

-- Location: LCFF_X26_Y18_N3
\memory[35][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~40_combout\,
	sdata => \memory[34][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[35][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[35][0]~regout\);

-- Location: LCCOMB_X25_Y18_N30
\memory[36][0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[36][0]~51_combout\ = (\enable~combout\ & (((\memory[36][0]~422_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[36][0]~422_combout\,
	datab => \enable~combout\,
	datac => \memory~22_combout\,
	datad => \always~3_combout\,
	combout => \memory[36][0]~51_combout\);

-- Location: LCFF_X26_Y18_N11
\memory[36][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~50_combout\,
	sdata => \memory[35][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[36][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[36][0]~regout\);

-- Location: LCCOMB_X26_Y20_N4
\LessThan47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan47~0_combout\ = (\addr~combout\(2) & \addr~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~combout\(2),
	datad => \addr~combout\(1),
	combout => \LessThan47~0_combout\);

-- Location: LCCOMB_X26_Y20_N6
\memory[37][0]~421\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[37][0]~421_combout\ = ((!\addr~combout\(3) & (!\addr~combout\(4) & !\LessThan47~0_combout\))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \LessThan47~0_combout\,
	datad => \addr~combout\(5),
	combout => \memory[37][0]~421_combout\);

-- Location: LCCOMB_X24_Y18_N24
\memory[37][0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[37][0]~39_combout\ = (\enable~combout\ & (((\always~3_combout\ & \memory[37][0]~421_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \always~3_combout\,
	datac => \memory[37][0]~421_combout\,
	datad => \memory~22_combout\,
	combout => \memory[37][0]~39_combout\);

-- Location: LCFF_X24_Y22_N9
\memory[37][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~37_combout\,
	sdata => \memory[36][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[37][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[37][0]~regout\);

-- Location: LCCOMB_X24_Y22_N26
\memory[38][0]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[38][0]~61_combout\ = (\enable~combout\ & (((\memory[38][0]~60_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[38][0]~60_combout\,
	datab => \always~3_combout\,
	datac => \enable~combout\,
	datad => \memory~22_combout\,
	combout => \memory[38][0]~61_combout\);

-- Location: LCFF_X24_Y22_N3
\memory[38][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~59_combout\,
	sdata => \memory[37][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[38][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[38][0]~regout\);

-- Location: LCCOMB_X23_Y19_N18
\memory[39][0]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[39][0]~49_combout\ = (\enable~combout\ & (((\memory[39][0]~48_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[39][0]~48_combout\,
	datab => \always~3_combout\,
	datac => \enable~combout\,
	datad => \memory~22_combout\,
	combout => \memory[39][0]~49_combout\);

-- Location: LCFF_X24_Y19_N25
\memory[39][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~47_combout\,
	sdata => \memory[38][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[39][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[39][0]~regout\);

-- Location: LCCOMB_X24_Y19_N26
\memory[40][0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[40][0]~31_combout\ = ((!\addr~combout\(4) & !\LessThan41~0_combout\)) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(4),
	datad => \LessThan41~0_combout\,
	combout => \memory[40][0]~31_combout\);

-- Location: LCCOMB_X24_Y19_N2
\memory[40][0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[40][0]~32_combout\ = (\enable~combout\ & (((\memory[40][0]~31_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[40][0]~31_combout\,
	datac => \memory~22_combout\,
	datad => \always~3_combout\,
	combout => \memory[40][0]~32_combout\);

-- Location: LCFF_X24_Y19_N13
\memory[40][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~30_combout\,
	sdata => \memory[39][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[40][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[40][0]~regout\);

-- Location: LCCOMB_X27_Y18_N4
\memory[41][0]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[41][0]~70_combout\ = (\enable~combout\ & (((\memory[41][0]~69_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[41][0]~69_combout\,
	datab => \always~3_combout\,
	datac => \enable~combout\,
	datad => \memory~22_combout\,
	combout => \memory[41][0]~70_combout\);

-- Location: LCFF_X27_Y18_N31
\memory[41][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~68_combout\,
	sdata => \memory[40][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[41][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[41][0]~regout\);

-- Location: LCCOMB_X20_Y20_N18
\LessThan43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan43~0_combout\ = (\addr~combout\(3) & ((\addr~combout\(2)) # ((\addr~combout\(0) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \LessThan43~0_combout\);

-- Location: LCCOMB_X20_Y20_N4
\memory[42][0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[42][0]~28_combout\ = ((!\addr~combout\(4) & !\LessThan43~0_combout\)) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(4),
	datac => \addr~combout\(5),
	datad => \LessThan43~0_combout\,
	combout => \memory[42][0]~28_combout\);

-- Location: LCCOMB_X24_Y17_N26
\memory[42][0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[42][0]~29_combout\ = (\enable~combout\ & (((\memory[42][0]~28_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[42][0]~28_combout\,
	datac => \always~3_combout\,
	datad => \memory~22_combout\,
	combout => \memory[42][0]~29_combout\);

-- Location: LCFF_X24_Y17_N17
\memory[42][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~27_combout\,
	sdata => \memory[41][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[42][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[42][0]~regout\);

-- Location: LCCOMB_X25_Y17_N30
\memory[43][0]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[43][0]~66_combout\ = ((!\addr~combout\(4) & ((!\addr~combout\(2)) # (!\addr~combout\(3))))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(3),
	datac => \addr~combout\(4),
	datad => \addr~combout\(2),
	combout => \memory[43][0]~66_combout\);

-- Location: LCCOMB_X24_Y17_N12
\memory[43][0]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[43][0]~67_combout\ = (\enable~combout\ & (((\memory[43][0]~66_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[43][0]~66_combout\,
	datac => \always~3_combout\,
	datad => \memory~22_combout\,
	combout => \memory[43][0]~67_combout\);

-- Location: LCFF_X24_Y17_N31
\memory[43][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~65_combout\,
	sdata => \memory[42][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[43][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[43][0]~regout\);

-- Location: LCCOMB_X27_Y17_N26
\memory[44][0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[44][0]~26_combout\ = (\enable~combout\ & (((\memory[44][0]~25_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[44][0]~25_combout\,
	datab => \enable~combout\,
	datac => \memory~22_combout\,
	datad => \always~3_combout\,
	combout => \memory[44][0]~26_combout\);

-- Location: LCFF_X27_Y17_N13
\memory[44][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~23_combout\,
	sdata => \memory[43][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[44][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[44][0]~regout\);

-- Location: LCCOMB_X26_Y20_N14
\memory[45][0]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[45][0]~63_combout\ = ((!\addr~combout\(4) & ((!\LessThan47~0_combout\) # (!\addr~combout\(3))))) # (!\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \LessThan47~0_combout\,
	datad => \addr~combout\(5),
	combout => \memory[45][0]~63_combout\);

-- Location: LCCOMB_X27_Y18_N22
\memory[45][0]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[45][0]~64_combout\ = (\enable~combout\ & (((\memory[45][0]~63_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[45][0]~63_combout\,
	datac => \always~3_combout\,
	datad => \memory~22_combout\,
	combout => \memory[45][0]~64_combout\);

-- Location: LCFF_X27_Y18_N17
\memory[45][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~62_combout\,
	sdata => \memory[44][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[45][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[45][0]~regout\);

-- Location: LCCOMB_X25_Y18_N8
\memory[46][0]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[46][0]~36_combout\ = (\enable~combout\ & (((\memory[46][0]~35_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[46][0]~35_combout\,
	datab => \enable~combout\,
	datac => \memory~22_combout\,
	datad => \always~3_combout\,
	combout => \memory[46][0]~36_combout\);

-- Location: LCFF_X25_Y18_N17
\memory[46][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~33_combout\,
	sdata => \memory[45][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[46][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[46][0]~regout\);

-- Location: LCCOMB_X25_Y18_N24
\memory[47][0]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[47][0]~72_combout\ = (\addr~combout\(4) & \addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(4),
	datad => \addr~combout\(5),
	combout => \memory[47][0]~72_combout\);

-- Location: LCCOMB_X27_Y18_N26
\memory[47][0]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[47][0]~73_combout\ = (\enable~combout\ & (((!\memory[47][0]~72_combout\ & \always~3_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[47][0]~72_combout\,
	datac => \always~3_combout\,
	datad => \memory~22_combout\,
	combout => \memory[47][0]~73_combout\);

-- Location: LCFF_X26_Y17_N29
\memory[47][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~71_combout\,
	sdata => \memory[46][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[47][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[47][0]~regout\);

-- Location: LCCOMB_X24_Y18_N18
\memory[48][0]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[48][0]~163_combout\ = (\enable~combout\ & (((\memory[48][0]~162_combout\ & !\t_num[0]~34_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[48][0]~162_combout\,
	datab => \enable~combout\,
	datac => \t_num[0]~34_combout\,
	datad => \memory~22_combout\,
	combout => \memory[48][0]~163_combout\);

-- Location: LCFF_X25_Y16_N25
\memory[48][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~161_combout\,
	sdata => \memory[47][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[48][0]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[48][0]~regout\);

-- Location: LCCOMB_X20_Y19_N18
\memory[49][0]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[49][0]~156_combout\ = ((\memory[1][0]~44_combout\) # (!\addr~combout\(5))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \memory[1][0]~44_combout\,
	datac => \addr~combout\(5),
	combout => \memory[49][0]~156_combout\);

-- Location: LCCOMB_X23_Y18_N30
\memory[49][0]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[49][0]~157_combout\ = (\enable~combout\ & (((\memory[49][0]~156_combout\ & !\t_num[0]~34_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[49][0]~156_combout\,
	datac => \t_num[0]~34_combout\,
	datad => \memory~22_combout\,
	combout => \memory[49][0]~157_combout\);

-- Location: LCFF_X24_Y16_N1
\memory[49][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~155_combout\,
	sdata => \memory[48][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[49][0]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[49][0]~regout\);

-- Location: LCCOMB_X22_Y17_N18
\memory[50][0]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[50][0]~159_combout\ = (\memory[2][0]~53_combout\) # ((!\addr~combout\(5)) # (!\addr~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][0]~53_combout\,
	datac => \addr~combout\(4),
	datad => \addr~combout\(5),
	combout => \memory[50][0]~159_combout\);

-- Location: LCCOMB_X23_Y17_N10
\memory[50][0]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory[50][0]~160_combout\ = (\enable~combout\ & (((\memory[50][0]~159_combout\ & !\t_num[0]~34_combout\)) # (!\memory~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \memory[50][0]~159_combout\,
	datac => \memory~22_combout\,
	datad => \t_num[0]~34_combout\,
	combout => \memory[50][0]~160_combout\);

-- Location: LCFF_X23_Y17_N17
\memory[50][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~158_combout\,
	sdata => \memory[49][0]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[50][0]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[50][0]~regout\);

-- Location: LCCOMB_X26_Y17_N8
\value~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~32_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\memory[50][0]~regout\))) # (!\addr~combout\(1) & (\memory[48][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[48][0]~regout\,
	datab => \memory[50][0]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~32_combout\);

-- Location: LCCOMB_X25_Y17_N22
\value~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~33_combout\ = (\value~32_combout\ & (((\memory[51][0]~regout\) # (!\addr~combout\(0))))) # (!\value~32_combout\ & (\memory[49][0]~regout\ & ((\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[49][0]~regout\,
	datab => \memory[51][0]~regout\,
	datac => \value~32_combout\,
	datad => \addr~combout\(0),
	combout => \value~33_combout\);

-- Location: LCCOMB_X25_Y17_N28
\value~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~7_combout\ = (\addr~combout\(2) & (((\addr~combout\(1))))) # (!\addr~combout\(2) & ((\addr~combout\(1) & (\memory[43][0]~regout\)) # (!\addr~combout\(1) & ((\memory[41][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[43][0]~regout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(1),
	datad => \memory[41][0]~regout\,
	combout => \value~7_combout\);

-- Location: LCCOMB_X26_Y19_N0
\value~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~8_combout\ = (\value~7_combout\ & ((\memory[47][0]~regout\) # ((!\addr~combout\(2))))) # (!\value~7_combout\ & (((\addr~combout\(2) & \memory[45][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[47][0]~regout\,
	datab => \value~7_combout\,
	datac => \addr~combout\(2),
	datad => \memory[45][0]~regout\,
	combout => \value~8_combout\);

-- Location: LCCOMB_X27_Y18_N20
\value~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~1_combout\ = (\value~0_combout\ & ((\memory[46][0]~regout\) # ((!\addr~combout\(2))))) # (!\value~0_combout\ & (((\memory[44][0]~regout\ & \addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~0_combout\,
	datab => \memory[46][0]~regout\,
	datac => \memory[44][0]~regout\,
	datad => \addr~combout\(2),
	combout => \value~1_combout\);

-- Location: LCCOMB_X26_Y19_N2
\value~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~9_combout\ = (\value~6_combout\ & ((\value~8_combout\) # ((!\addr~combout\(3))))) # (!\value~6_combout\ & (((\addr~combout\(3) & \value~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~6_combout\,
	datab => \value~8_combout\,
	datac => \addr~combout\(3),
	datad => \value~1_combout\,
	combout => \value~9_combout\);

-- Location: LCCOMB_X26_Y20_N16
\value~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~10_combout\ = (\addr~combout\(5) & (!\addr~combout\(4) & \value~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	datad => \value~9_combout\,
	combout => \value~10_combout\);

-- Location: LCCOMB_X21_Y17_N28
\value~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~15_combout\ = (\addr~combout\(0) & ((\memory[17][0]~regout\) # ((\addr~combout\(2))))) # (!\addr~combout\(0) & (((\memory[16][0]~regout\ & !\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[17][0]~regout\,
	datac => \memory[16][0]~regout\,
	datad => \addr~combout\(2),
	combout => \value~15_combout\);

-- Location: LCCOMB_X20_Y18_N22
\value~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~16_combout\ = (\addr~combout\(2) & ((\value~15_combout\ & ((\memory[21][0]~regout\))) # (!\value~15_combout\ & (\memory[20][0]~regout\)))) # (!\addr~combout\(2) & (((\value~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[20][0]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[21][0]~regout\,
	datad => \value~15_combout\,
	combout => \value~16_combout\);

-- Location: LCCOMB_X19_Y18_N24
\value~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~13_combout\ = (\addr~combout\(0) & (((\memory[19][0]~regout\) # (\addr~combout\(2))))) # (!\addr~combout\(0) & (\memory[18][0]~regout\ & ((!\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[18][0]~regout\,
	datac => \memory[19][0]~regout\,
	datad => \addr~combout\(2),
	combout => \value~13_combout\);

-- Location: LCCOMB_X22_Y21_N0
\value~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~14_combout\ = (\value~13_combout\ & (((\memory[23][0]~regout\) # (!\addr~combout\(2))))) # (!\value~13_combout\ & (\memory[22][0]~regout\ & ((\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[22][0]~regout\,
	datab => \value~13_combout\,
	datac => \memory[23][0]~regout\,
	datad => \addr~combout\(2),
	combout => \value~14_combout\);

-- Location: LCCOMB_X26_Y20_N18
\value~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~17_combout\ = (\addr~combout\(3) & (\addr~combout\(1))) # (!\addr~combout\(3) & ((\addr~combout\(1) & ((\value~14_combout\))) # (!\addr~combout\(1) & (\value~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(1),
	datac => \value~16_combout\,
	datad => \value~14_combout\,
	combout => \value~17_combout\);

-- Location: LCCOMB_X23_Y20_N26
\value~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~11_combout\ = (\addr~combout\(2) & (((\addr~combout\(0))))) # (!\addr~combout\(2) & ((\addr~combout\(0) & ((\memory[25][0]~regout\))) # (!\addr~combout\(0) & (\memory[24][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[24][0]~regout\,
	datab => \memory[25][0]~regout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(0),
	combout => \value~11_combout\);

-- Location: LCCOMB_X22_Y19_N10
\value~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~12_combout\ = (\addr~combout\(2) & ((\value~11_combout\ & (\memory[29][0]~regout\)) # (!\value~11_combout\ & ((\memory[28][0]~regout\))))) # (!\addr~combout\(2) & (((\value~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \memory[29][0]~regout\,
	datac => \memory[28][0]~regout\,
	datad => \value~11_combout\,
	combout => \value~12_combout\);

-- Location: LCCOMB_X26_Y20_N12
\value~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~20_combout\ = (\value~17_combout\ & ((\value~19_combout\) # ((!\addr~combout\(3))))) # (!\value~17_combout\ & (((\value~12_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~19_combout\,
	datab => \value~17_combout\,
	datac => \value~12_combout\,
	datad => \addr~combout\(3),
	combout => \value~20_combout\);

-- Location: LCCOMB_X26_Y20_N26
\value~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~31_combout\ = (!\addr~combout\(5) & ((\addr~combout\(4) & ((\value~20_combout\))) # (!\addr~combout\(4) & (\value~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~30_combout\,
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	datad => \value~20_combout\,
	combout => \value~31_combout\);

-- Location: LCCOMB_X26_Y20_N0
\value~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~35_combout\ = (\value~10_combout\) # ((\value~31_combout\) # ((\value~34_combout\ & \value~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~34_combout\,
	datab => \value~33_combout\,
	datac => \value~10_combout\,
	datad => \value~31_combout\,
	combout => \value~35_combout\);

-- Location: LCCOMB_X22_Y21_N10
\memory~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~188_combout\ = (\memory[25][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[25][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~188_combout\);

-- Location: LCCOMB_X22_Y21_N2
\memory~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~193_combout\ = (\memory[24][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[24][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~193_combout\);

-- Location: LCCOMB_X20_Y18_N10
\memory~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~181_combout\ = (\memory[23][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[23][1]~regout\,
	combout => \memory~181_combout\);

-- Location: LCCOMB_X21_Y18_N12
\memory~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~185_combout\ = (\memory[22][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[22][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~185_combout\);

-- Location: LCCOMB_X19_Y18_N6
\memory~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~189_combout\ = (\memory[21][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[21][1]~regout\,
	combout => \memory~189_combout\);

-- Location: LCCOMB_X18_Y18_N10
\memory~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~194_combout\ = (\memory[20][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[20][1]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~194_combout\);

-- Location: LCCOMB_X19_Y18_N0
\memory~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~182_combout\ = (\memory[19][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[19][1]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~182_combout\);

-- Location: LCCOMB_X18_Y18_N4
\memory~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~186_combout\ = (\memory[18][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[18][1]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~186_combout\);

-- Location: LCCOMB_X22_Y17_N28
\memory~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~190_combout\ = (\memory[17][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[17][1]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~190_combout\);

-- Location: LCCOMB_X22_Y17_N14
\memory~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~211_combout\ = (\memory[16][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[16][1]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~211_combout\);

-- Location: LCCOMB_X25_Y21_N30
\memory~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~209_combout\ = (\memory[15][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[15][1]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~209_combout\);

-- Location: LCCOMB_X24_Y18_N28
\memory~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~208_combout\ = (\memory[14][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[14][1]~regout\,
	combout => \memory~208_combout\);

-- Location: LCCOMB_X24_Y18_N30
\memory~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~210_combout\ = (\memory[13][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[13][1]~regout\,
	combout => \memory~210_combout\);

-- Location: LCCOMB_X25_Y22_N14
\memory~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~199_combout\ = (\memory[12][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[12][1]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~199_combout\);

-- Location: LCCOMB_X25_Y22_N28
\memory~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~196_combout\ = (\memory[11][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[11][1]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~196_combout\);

-- Location: LCCOMB_X24_Y20_N28
\memory~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~197_combout\ = (\memory[10][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[10][1]~regout\,
	combout => \memory~197_combout\);

-- Location: LCCOMB_X24_Y21_N18
\memory~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~198_combout\ = (\memory[9][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[9][1]~regout\,
	combout => \memory~198_combout\);

-- Location: LCCOMB_X24_Y20_N6
\memory~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~203_combout\ = (\memory[8][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[8][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~203_combout\);

-- Location: LCCOMB_X21_Y18_N22
\memory~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~201_combout\ = (\memory[7][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[7][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~201_combout\);

-- Location: LCCOMB_X22_Y20_N0
\memory~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~200_combout\ = (\memory[6][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[6][1]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~200_combout\);

-- Location: LCCOMB_X22_Y20_N16
\memory~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~202_combout\ = (\memory[5][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[5][1]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~202_combout\);

-- Location: LCCOMB_X23_Y21_N22
\memory~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~207_combout\ = (\memory[4][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[4][1]~regout\,
	combout => \memory~207_combout\);

-- Location: LCCOMB_X23_Y21_N0
\memory~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~204_combout\ = (\memory[3][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[3][1]~regout\,
	combout => \memory~204_combout\);

-- Location: LCCOMB_X23_Y22_N14
\memory~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~205_combout\ = (\memory[2][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[2][1]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~205_combout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[1]~I\ : cycloneii_io
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
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: LCCOMB_X23_Y22_N20
\memory~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~206_combout\ = (\always~1_combout\ & (((\data~combout\(1))))) # (!\always~1_combout\ & (!\Equal1~0_combout\ & (\memory[1][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \memory[1][1]~regout\,
	datac => \data~combout\(1),
	datad => \always~1_combout\,
	combout => \memory~206_combout\);

-- Location: LCFF_X23_Y22_N21
\memory[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~206_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \memory[0][0]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[0][1]~regout\);

-- Location: LCFF_X23_Y22_N15
\memory[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~205_combout\,
	sdata => \memory[0][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[1][0]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[1][1]~regout\);

-- Location: LCFF_X23_Y21_N1
\memory[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~204_combout\,
	sdata => \memory[1][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[2][0]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[2][1]~regout\);

-- Location: LCFF_X23_Y21_N23
\memory[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~207_combout\,
	sdata => \memory[2][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[3][0]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[3][1]~regout\);

-- Location: LCFF_X22_Y20_N17
\memory[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~202_combout\,
	sdata => \memory[3][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[4][0]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[4][1]~regout\);

-- Location: LCFF_X22_Y20_N1
\memory[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~200_combout\,
	sdata => \memory[4][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[5][0]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[5][1]~regout\);

-- Location: LCFF_X21_Y18_N23
\memory[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~201_combout\,
	sdata => \memory[5][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[6][0]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[6][1]~regout\);

-- Location: LCFF_X24_Y20_N7
\memory[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~203_combout\,
	sdata => \memory[6][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[7][0]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[7][1]~regout\);

-- Location: LCFF_X24_Y21_N19
\memory[8][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~198_combout\,
	sdata => \memory[7][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[8][0]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[8][1]~regout\);

-- Location: LCFF_X24_Y20_N29
\memory[9][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~197_combout\,
	sdata => \memory[8][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[9][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[9][1]~regout\);

-- Location: LCFF_X25_Y22_N29
\memory[10][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~196_combout\,
	sdata => \memory[9][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[10][0]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[10][1]~regout\);

-- Location: LCFF_X25_Y22_N15
\memory[11][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~199_combout\,
	sdata => \memory[10][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[11][0]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[11][1]~regout\);

-- Location: LCFF_X24_Y18_N31
\memory[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~210_combout\,
	sdata => \memory[11][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[12][0]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[12][1]~regout\);

-- Location: LCFF_X24_Y18_N29
\memory[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~208_combout\,
	sdata => \memory[12][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[13][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[13][1]~regout\);

-- Location: LCFF_X25_Y21_N31
\memory[14][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~209_combout\,
	sdata => \memory[13][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[14][0]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[14][1]~regout\);

-- Location: LCFF_X22_Y17_N15
\memory[15][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~211_combout\,
	sdata => \memory[14][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[15][0]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[15][1]~regout\);

-- Location: LCFF_X22_Y17_N29
\memory[16][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~190_combout\,
	sdata => \memory[15][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[16][0]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[16][1]~regout\);

-- Location: LCFF_X18_Y18_N5
\memory[17][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~186_combout\,
	sdata => \memory[16][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[17][0]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[17][1]~regout\);

-- Location: LCFF_X19_Y18_N1
\memory[18][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~182_combout\,
	sdata => \memory[17][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[18][0]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[18][1]~regout\);

-- Location: LCFF_X18_Y18_N11
\memory[19][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~194_combout\,
	sdata => \memory[18][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[19][0]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[19][1]~regout\);

-- Location: LCFF_X19_Y18_N7
\memory[20][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~189_combout\,
	sdata => \memory[19][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[20][0]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[20][1]~regout\);

-- Location: LCFF_X21_Y18_N13
\memory[21][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~185_combout\,
	sdata => \memory[20][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[21][0]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[21][1]~regout\);

-- Location: LCFF_X20_Y18_N11
\memory[22][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~181_combout\,
	sdata => \memory[21][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[22][0]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[22][1]~regout\);

-- Location: LCFF_X22_Y21_N3
\memory[23][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~193_combout\,
	sdata => \memory[22][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[23][0]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[23][1]~regout\);

-- Location: LCFF_X22_Y21_N11
\memory[24][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~188_combout\,
	sdata => \memory[23][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[24][0]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[24][1]~regout\);

-- Location: LCCOMB_X21_Y17_N20
\value~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~52_combout\ = (\addr~combout\(2) & (((\memory[20][1]~regout\) # (\addr~combout\(3))))) # (!\addr~combout\(2) & (\memory[16][1]~regout\ & ((!\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[16][1]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[20][1]~regout\,
	datad => \addr~combout\(3),
	combout => \value~52_combout\);

-- Location: LCCOMB_X21_Y21_N8
\value~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~53_combout\ = (\value~52_combout\ & ((\memory[28][1]~regout\) # ((!\addr~combout\(3))))) # (!\value~52_combout\ & (((\memory[24][1]~regout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[28][1]~regout\,
	datab => \memory[24][1]~regout\,
	datac => \value~52_combout\,
	datad => \addr~combout\(3),
	combout => \value~53_combout\);

-- Location: LCCOMB_X21_Y21_N18
\value~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~54_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\value~51_combout\)) # (!\addr~combout\(0) & ((\value~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~51_combout\,
	datab => \value~53_combout\,
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \value~54_combout\);

-- Location: LCCOMB_X21_Y21_N2
\value~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~48_combout\ = (\addr~combout\(2) & ((\memory[22][1]~regout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((\memory[18][1]~regout\ & !\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[22][1]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[18][1]~regout\,
	datad => \addr~combout\(3),
	combout => \value~48_combout\);

-- Location: LCCOMB_X23_Y19_N22
\memory~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~178_combout\ = (\memory[33][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[33][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~178_combout\);

-- Location: LCFF_X23_Y19_N23
\memory[32][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~178_combout\,
	sdata => \memory[31][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[32][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[32][1]~regout\);

-- Location: LCCOMB_X22_Y22_N4
\memory~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~195_combout\ = (\memory[32][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[32][1]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~195_combout\);

-- Location: LCFF_X22_Y22_N5
\memory[31][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~195_combout\,
	sdata => \memory[30][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[31][0]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[31][1]~regout\);

-- Location: LCCOMB_X22_Y22_N24
\memory~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~183_combout\ = (\memory[31][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[31][1]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~183_combout\);

-- Location: LCCOMB_X22_Y19_N28
\memory~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~187_combout\ = (\memory[30][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[30][1]~regout\,
	combout => \memory~187_combout\);

-- Location: LCCOMB_X22_Y19_N4
\memory~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~191_combout\ = (\memory[29][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[29][1]~regout\,
	combout => \memory~191_combout\);

-- Location: LCCOMB_X21_Y20_N30
\memory~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~192_combout\ = (\memory[28][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[28][1]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~192_combout\);

-- Location: LCCOMB_X20_Y20_N10
\memory~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~180_combout\ = (\memory[27][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[27][1]~regout\,
	combout => \memory~180_combout\);

-- Location: LCCOMB_X23_Y20_N10
\memory~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~184_combout\ = (\memory[26][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[26][1]~regout\,
	combout => \memory~184_combout\);

-- Location: LCFF_X23_Y20_N11
\memory[25][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~184_combout\,
	sdata => \memory[24][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[25][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[25][1]~regout\);

-- Location: LCFF_X20_Y20_N11
\memory[26][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~180_combout\,
	sdata => \memory[25][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[26][0]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[26][1]~regout\);

-- Location: LCFF_X21_Y20_N31
\memory[27][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~192_combout\,
	sdata => \memory[26][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[27][0]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[27][1]~regout\);

-- Location: LCFF_X22_Y19_N5
\memory[28][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~191_combout\,
	sdata => \memory[27][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[28][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[28][1]~regout\);

-- Location: LCFF_X22_Y19_N29
\memory[29][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~187_combout\,
	sdata => \memory[28][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[29][0]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[29][1]~regout\);

-- Location: LCFF_X22_Y22_N25
\memory[30][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~183_combout\,
	sdata => \memory[29][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[30][0]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[30][1]~regout\);

-- Location: LCCOMB_X21_Y21_N28
\value~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~49_combout\ = (\value~48_combout\ & (((\memory[30][1]~regout\) # (!\addr~combout\(3))))) # (!\value~48_combout\ & (\memory[26][1]~regout\ & ((\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[26][1]~regout\,
	datab => \value~48_combout\,
	datac => \memory[30][1]~regout\,
	datad => \addr~combout\(3),
	combout => \value~49_combout\);

-- Location: LCCOMB_X21_Y21_N0
\value~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~57_combout\ = (\value~54_combout\ & ((\value~56_combout\) # ((!\addr~combout\(1))))) # (!\value~54_combout\ & (((\addr~combout\(1) & \value~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~56_combout\,
	datab => \value~54_combout\,
	datac => \addr~combout\(1),
	datad => \value~49_combout\,
	combout => \value~57_combout\);

-- Location: LCCOMB_X21_Y21_N30
\value~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~68_combout\ = (!\addr~combout\(5) & ((\addr~combout\(4) & ((\value~57_combout\))) # (!\addr~combout\(4) & (\value~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~67_combout\,
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	datad => \value~57_combout\,
	combout => \value~68_combout\);

-- Location: LCCOMB_X23_Y17_N12
\memory~426\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~426_combout\ = (\memory[50][1]~regout\ & ((\always~1_combout\) # ((\mode~combout\(1) & !\mode~combout\(0))))) # (!\memory[50][1]~regout\ & (\mode~combout\(1) & (!\mode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[50][1]~regout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \always~1_combout\,
	combout => \memory~426_combout\);

-- Location: LCFF_X23_Y17_N13
\memory[51][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~426_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[51][1]~regout\);

-- Location: LCCOMB_X23_Y17_N6
\memory~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~213_combout\ = (\memory[51][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[51][1]~regout\,
	combout => \memory~213_combout\);

-- Location: LCCOMB_X22_Y18_N8
\memory~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~212_combout\ = (\memory[50][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[50][1]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~212_combout\);

-- Location: LCCOMB_X25_Y18_N28
\memory~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~214_combout\ = (\memory[49][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[49][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~214_combout\);

-- Location: LCCOMB_X26_Y17_N24
\memory~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~167_combout\ = (\memory[48][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[48][1]~regout\,
	combout => \memory~167_combout\);

-- Location: LCCOMB_X25_Y18_N18
\memory~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~164_combout\ = (\memory[47][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[47][1]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~164_combout\);

-- Location: LCCOMB_X26_Y17_N30
\memory~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~165_combout\ = (\memory[46][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[46][1]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~165_combout\);

-- Location: LCCOMB_X27_Y17_N6
\memory~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~166_combout\ = (\memory[45][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[45][1]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~166_combout\);

-- Location: LCCOMB_X24_Y17_N2
\memory~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~171_combout\ = (\memory[44][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[44][1]~regout\,
	combout => \memory~171_combout\);

-- Location: LCCOMB_X24_Y17_N0
\memory~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~169_combout\ = (\memory[43][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[43][1]~regout\,
	combout => \memory~169_combout\);

-- Location: LCCOMB_X27_Y18_N28
\memory~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~168_combout\ = (\memory[42][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[42][1]~regout\,
	combout => \memory~168_combout\);

-- Location: LCCOMB_X24_Y19_N8
\memory~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~170_combout\ = (\memory[41][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[41][1]~regout\,
	combout => \memory~170_combout\);

-- Location: LCCOMB_X24_Y19_N0
\memory~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~175_combout\ = (\memory[40][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[40][1]~regout\,
	combout => \memory~175_combout\);

-- Location: LCCOMB_X24_Y22_N20
\memory~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~172_combout\ = (\memory[39][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[39][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~172_combout\);

-- Location: LCCOMB_X24_Y22_N24
\memory~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~173_combout\ = (\memory[38][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[38][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~173_combout\);

-- Location: LCCOMB_X26_Y18_N30
\memory~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~174_combout\ = (\memory[37][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[37][1]~regout\,
	combout => \memory~174_combout\);

-- Location: LCCOMB_X26_Y18_N14
\memory~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~179_combout\ = (\memory[36][1]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[36][1]~regout\,
	combout => \memory~179_combout\);

-- Location: LCCOMB_X23_Y19_N28
\memory~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~177_combout\ = (\memory[35][1]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][1]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~177_combout\);

-- Location: LCCOMB_X25_Y19_N30
\memory~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~176_combout\ = (\memory[34][1]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[34][1]~regout\,
	combout => \memory~176_combout\);

-- Location: LCFF_X25_Y19_N31
\memory[33][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~176_combout\,
	sdata => \memory[32][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[33][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[33][1]~regout\);

-- Location: LCFF_X23_Y19_N29
\memory[34][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~177_combout\,
	sdata => \memory[33][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[34][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[34][1]~regout\);

-- Location: LCFF_X26_Y18_N15
\memory[35][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~179_combout\,
	sdata => \memory[34][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[35][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[35][1]~regout\);

-- Location: LCFF_X26_Y18_N31
\memory[36][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~174_combout\,
	sdata => \memory[35][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[36][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[36][1]~regout\);

-- Location: LCFF_X24_Y22_N25
\memory[37][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~173_combout\,
	sdata => \memory[36][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[37][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[37][1]~regout\);

-- Location: LCFF_X24_Y22_N21
\memory[38][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~172_combout\,
	sdata => \memory[37][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[38][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[38][1]~regout\);

-- Location: LCFF_X24_Y19_N1
\memory[39][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~175_combout\,
	sdata => \memory[38][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[39][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[39][1]~regout\);

-- Location: LCFF_X24_Y19_N9
\memory[40][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~170_combout\,
	sdata => \memory[39][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[40][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[40][1]~regout\);

-- Location: LCFF_X27_Y18_N29
\memory[41][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~168_combout\,
	sdata => \memory[40][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[41][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[41][1]~regout\);

-- Location: LCFF_X24_Y17_N1
\memory[42][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~169_combout\,
	sdata => \memory[41][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[42][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[42][1]~regout\);

-- Location: LCFF_X24_Y17_N3
\memory[43][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~171_combout\,
	sdata => \memory[42][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[43][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[43][1]~regout\);

-- Location: LCFF_X27_Y17_N7
\memory[44][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~166_combout\,
	sdata => \memory[43][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[44][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[44][1]~regout\);

-- Location: LCFF_X26_Y17_N31
\memory[45][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~165_combout\,
	sdata => \memory[44][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[45][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[45][1]~regout\);

-- Location: LCFF_X25_Y18_N19
\memory[46][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~164_combout\,
	sdata => \memory[45][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[46][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[46][1]~regout\);

-- Location: LCFF_X26_Y17_N25
\memory[47][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~167_combout\,
	sdata => \memory[46][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[47][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[47][1]~regout\);

-- Location: LCFF_X25_Y18_N29
\memory[48][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~214_combout\,
	sdata => \memory[47][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[48][0]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[48][1]~regout\);

-- Location: LCFF_X22_Y18_N9
\memory[49][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~212_combout\,
	sdata => \memory[48][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[49][0]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[49][1]~regout\);

-- Location: LCFF_X23_Y17_N7
\memory[50][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~213_combout\,
	sdata => \memory[49][1]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[50][0]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[50][1]~regout\);

-- Location: LCCOMB_X22_Y18_N10
\value~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~69_combout\ = (\addr~combout\(1) & ((\memory[50][1]~regout\) # ((\addr~combout\(0))))) # (!\addr~combout\(1) & (((\memory[48][1]~regout\ & !\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[50][1]~regout\,
	datac => \memory[48][1]~regout\,
	datad => \addr~combout\(0),
	combout => \value~69_combout\);

-- Location: LCCOMB_X21_Y21_N20
\value~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~70_combout\ = (\addr~combout\(0) & ((\value~69_combout\ & (\memory[51][1]~regout\)) # (!\value~69_combout\ & ((\memory[49][1]~regout\))))) # (!\addr~combout\(0) & (((\value~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[51][1]~regout\,
	datab => \addr~combout\(0),
	datac => \value~69_combout\,
	datad => \memory[49][1]~regout\,
	combout => \value~70_combout\);

-- Location: LCCOMB_X26_Y21_N8
\value~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~36_combout\ = (!\addr~combout\(4) & \addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(4),
	datad => \addr~combout\(5),
	combout => \value~36_combout\);

-- Location: LCCOMB_X27_Y18_N18
\value~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~39_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & (\memory[42][1]~regout\)) # (!\addr~combout\(1) & ((\memory[40][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[42][1]~regout\,
	datac => \memory[40][1]~regout\,
	datad => \addr~combout\(1),
	combout => \value~39_combout\);

-- Location: LCCOMB_X27_Y17_N18
\value~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~40_combout\ = (\addr~combout\(0) & ((\value~39_combout\ & (\memory[43][1]~regout\)) # (!\value~39_combout\ & ((\memory[41][1]~regout\))))) # (!\addr~combout\(0) & (((\value~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[43][1]~regout\,
	datac => \memory[41][1]~regout\,
	datad => \value~39_combout\,
	combout => \value~40_combout\);

-- Location: LCCOMB_X27_Y17_N16
\value~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~41_combout\ = (\addr~combout\(2) & (\value~38_combout\)) # (!\addr~combout\(2) & ((\value~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~38_combout\,
	datab => \value~40_combout\,
	datad => \addr~combout\(2),
	combout => \value~41_combout\);

-- Location: LCCOMB_X25_Y19_N22
\value~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~44_combout\ = (\addr~combout\(1) & ((\memory[34][1]~regout\) # ((\addr~combout\(0))))) # (!\addr~combout\(1) & (((\memory[32][1]~regout\ & !\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[34][1]~regout\,
	datac => \memory[32][1]~regout\,
	datad => \addr~combout\(0),
	combout => \value~44_combout\);

-- Location: LCCOMB_X25_Y19_N4
\value~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~45_combout\ = (\value~44_combout\ & (((\memory[35][1]~regout\) # (!\addr~combout\(0))))) # (!\value~44_combout\ & (\memory[33][1]~regout\ & ((\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[33][1]~regout\,
	datab => \value~44_combout\,
	datac => \memory[35][1]~regout\,
	datad => \addr~combout\(0),
	combout => \value~45_combout\);

-- Location: LCCOMB_X26_Y18_N4
\value~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~42_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\memory[37][1]~regout\)) # (!\addr~combout\(0) & ((\memory[36][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[37][1]~regout\,
	datac => \addr~combout\(0),
	datad => \memory[36][1]~regout\,
	combout => \value~42_combout\);

-- Location: LCCOMB_X25_Y19_N12
\value~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~43_combout\ = (\addr~combout\(1) & ((\value~42_combout\ & (\memory[39][1]~regout\)) # (!\value~42_combout\ & ((\memory[38][1]~regout\))))) # (!\addr~combout\(1) & (((\value~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[39][1]~regout\,
	datab => \memory[38][1]~regout\,
	datac => \addr~combout\(1),
	datad => \value~42_combout\,
	combout => \value~43_combout\);

-- Location: LCCOMB_X25_Y19_N2
\value~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~46_combout\ = (\addr~combout\(2) & ((\value~43_combout\))) # (!\addr~combout\(2) & (\value~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \value~45_combout\,
	datac => \addr~combout\(2),
	datad => \value~43_combout\,
	combout => \value~46_combout\);

-- Location: LCCOMB_X26_Y21_N26
\value~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~47_combout\ = (\value~36_combout\ & ((\addr~combout\(3) & (\value~41_combout\)) # (!\addr~combout\(3) & ((\value~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \value~36_combout\,
	datac => \value~41_combout\,
	datad => \value~46_combout\,
	combout => \value~47_combout\);

-- Location: LCCOMB_X21_Y21_N14
\value~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~71_combout\ = (\value~68_combout\) # ((\value~47_combout\) # ((\value~34_combout\ & \value~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~34_combout\,
	datab => \value~68_combout\,
	datac => \value~70_combout\,
	datad => \value~47_combout\,
	combout => \value~71_combout\);

-- Location: LCCOMB_X21_Y20_N20
\memory~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~234_combout\ = (\memory[28][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[28][2]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~234_combout\);

-- Location: LCFF_X21_Y20_N21
\memory[27][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~234_combout\,
	sdata => \memory[26][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[27][0]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[27][2]~regout\);

-- Location: LCCOMB_X20_Y20_N24
\memory~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~231_combout\ = (\memory[27][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[27][2]~regout\,
	combout => \memory~231_combout\);

-- Location: LCCOMB_X23_Y20_N18
\memory~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~232_combout\ = (\memory[26][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[26][2]~regout\,
	combout => \memory~232_combout\);

-- Location: LCCOMB_X22_Y21_N16
\memory~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~233_combout\ = (\memory[25][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[25][2]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~233_combout\);

-- Location: LCCOMB_X22_Y21_N8
\memory~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~238_combout\ = (\memory[24][2]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[24][2]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~238_combout\);

-- Location: LCCOMB_X20_Y18_N12
\memory~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~236_combout\ = (\memory[23][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[23][2]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~236_combout\);

-- Location: LCCOMB_X20_Y18_N20
\memory~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~235_combout\ = (\memory[22][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[22][2]~regout\,
	combout => \memory~235_combout\);

-- Location: LCCOMB_X19_Y18_N4
\memory~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~237_combout\ = (\memory[21][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[21][2]~regout\,
	combout => \memory~237_combout\);

-- Location: LCCOMB_X18_Y18_N30
\memory~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~242_combout\ = (\memory[20][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[20][2]~regout\,
	combout => \memory~242_combout\);

-- Location: LCCOMB_X19_Y18_N10
\memory~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~239_combout\ = (\memory[19][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[19][2]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~239_combout\);

-- Location: LCCOMB_X18_Y18_N0
\memory~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~240_combout\ = (\memory[18][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[18][2]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~240_combout\);

-- Location: LCCOMB_X22_Y17_N0
\memory~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~241_combout\ = (\memory[17][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[17][2]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~241_combout\);

-- Location: LCCOMB_X22_Y17_N12
\memory~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~262_combout\ = (\memory[16][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[16][2]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~262_combout\);

-- Location: LCCOMB_X25_Y21_N20
\memory~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~254_combout\ = (\memory[15][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[15][2]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~254_combout\);

-- Location: LCCOMB_X25_Y16_N10
\memory~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~250_combout\ = (\memory[14][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[14][2]~regout\,
	combout => \memory~250_combout\);

-- Location: LCCOMB_X25_Y21_N26
\memory~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~258_combout\ = (\memory[13][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[13][2]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~258_combout\);

-- Location: LCCOMB_X25_Y22_N16
\memory~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~259_combout\ = (\memory[12][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[12][2]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~259_combout\);

-- Location: LCCOMB_X24_Y21_N0
\memory~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~251_combout\ = (\memory[11][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[11][2]~regout\,
	combout => \memory~251_combout\);

-- Location: LCCOMB_X24_Y20_N16
\memory~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~247_combout\ = (\memory[10][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[10][2]~regout\,
	combout => \memory~247_combout\);

-- Location: LCCOMB_X24_Y21_N22
\memory~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~255_combout\ = (\memory[9][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[9][2]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~255_combout\);

-- Location: LCCOMB_X24_Y20_N26
\memory~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~260_combout\ = (\memory[8][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[8][2]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~260_combout\);

-- Location: LCCOMB_X21_Y18_N8
\memory~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~252_combout\ = (\memory[7][2]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[7][2]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~252_combout\);

-- Location: LCCOMB_X22_Y20_N18
\memory~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~248_combout\ = (\memory[6][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[6][2]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~248_combout\);

-- Location: LCCOMB_X22_Y20_N4
\memory~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~256_combout\ = (\memory[5][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[5][2]~regout\,
	combout => \memory~256_combout\);

-- Location: LCCOMB_X23_Y21_N16
\memory~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~261_combout\ = (\memory[4][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[4][2]~regout\,
	combout => \memory~261_combout\);

-- Location: LCCOMB_X23_Y21_N14
\memory~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~253_combout\ = (\memory[3][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[3][2]~regout\,
	combout => \memory~253_combout\);

-- Location: LCCOMB_X23_Y18_N8
\memory~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~249_combout\ = (\memory[2][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[2][2]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~249_combout\);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[2]~I\ : cycloneii_io
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
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: LCCOMB_X23_Y22_N0
\memory~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~257_combout\ = (\always~1_combout\ & (((\data~combout\(2))))) # (!\always~1_combout\ & (!\Equal1~0_combout\ & (\memory[1][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \memory[1][2]~regout\,
	datac => \data~combout\(2),
	datad => \always~1_combout\,
	combout => \memory~257_combout\);

-- Location: LCFF_X23_Y22_N1
\memory[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~257_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \memory[0][0]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[0][2]~regout\);

-- Location: LCFF_X23_Y18_N9
\memory[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~249_combout\,
	sdata => \memory[0][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[1][0]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[1][2]~regout\);

-- Location: LCFF_X23_Y21_N15
\memory[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~253_combout\,
	sdata => \memory[1][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[2][0]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[2][2]~regout\);

-- Location: LCFF_X23_Y21_N17
\memory[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~261_combout\,
	sdata => \memory[2][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[3][0]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[3][2]~regout\);

-- Location: LCFF_X22_Y20_N5
\memory[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~256_combout\,
	sdata => \memory[3][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[4][0]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[4][2]~regout\);

-- Location: LCFF_X22_Y20_N19
\memory[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~248_combout\,
	sdata => \memory[4][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[5][0]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[5][2]~regout\);

-- Location: LCFF_X21_Y18_N9
\memory[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~252_combout\,
	sdata => \memory[5][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[6][0]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[6][2]~regout\);

-- Location: LCFF_X24_Y20_N27
\memory[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~260_combout\,
	sdata => \memory[6][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[7][0]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[7][2]~regout\);

-- Location: LCFF_X24_Y21_N23
\memory[8][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~255_combout\,
	sdata => \memory[7][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[8][0]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[8][2]~regout\);

-- Location: LCFF_X24_Y20_N17
\memory[9][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~247_combout\,
	sdata => \memory[8][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[9][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[9][2]~regout\);

-- Location: LCFF_X24_Y21_N1
\memory[10][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~251_combout\,
	sdata => \memory[9][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[10][0]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[10][2]~regout\);

-- Location: LCFF_X25_Y22_N17
\memory[11][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~259_combout\,
	sdata => \memory[10][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[11][0]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[11][2]~regout\);

-- Location: LCFF_X25_Y21_N27
\memory[12][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~258_combout\,
	sdata => \memory[11][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[12][0]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[12][2]~regout\);

-- Location: LCFF_X25_Y16_N11
\memory[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~250_combout\,
	sdata => \memory[12][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[13][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[13][2]~regout\);

-- Location: LCFF_X25_Y21_N21
\memory[14][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~254_combout\,
	sdata => \memory[13][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[14][0]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[14][2]~regout\);

-- Location: LCFF_X22_Y17_N13
\memory[15][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~262_combout\,
	sdata => \memory[14][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[15][0]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[15][2]~regout\);

-- Location: LCFF_X22_Y17_N1
\memory[16][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~241_combout\,
	sdata => \memory[15][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[16][0]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[16][2]~regout\);

-- Location: LCFF_X18_Y18_N1
\memory[17][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~240_combout\,
	sdata => \memory[16][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[17][0]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[17][2]~regout\);

-- Location: LCFF_X19_Y18_N11
\memory[18][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~239_combout\,
	sdata => \memory[17][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[18][0]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[18][2]~regout\);

-- Location: LCFF_X18_Y18_N31
\memory[19][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~242_combout\,
	sdata => \memory[18][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[19][0]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[19][2]~regout\);

-- Location: LCFF_X19_Y18_N5
\memory[20][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~237_combout\,
	sdata => \memory[19][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[20][0]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[20][2]~regout\);

-- Location: LCFF_X20_Y18_N21
\memory[21][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~235_combout\,
	sdata => \memory[20][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[21][0]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[21][2]~regout\);

-- Location: LCFF_X20_Y18_N13
\memory[22][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~236_combout\,
	sdata => \memory[21][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[22][0]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[22][2]~regout\);

-- Location: LCFF_X22_Y21_N9
\memory[23][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~238_combout\,
	sdata => \memory[22][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[23][0]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[23][2]~regout\);

-- Location: LCFF_X22_Y21_N17
\memory[24][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~233_combout\,
	sdata => \memory[23][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[24][0]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[24][2]~regout\);

-- Location: LCFF_X23_Y20_N19
\memory[25][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~232_combout\,
	sdata => \memory[24][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[25][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[25][2]~regout\);

-- Location: LCFF_X20_Y20_N25
\memory[26][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~231_combout\,
	sdata => \memory[25][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[26][0]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[26][2]~regout\);

-- Location: LCCOMB_X23_Y20_N2
\value~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~84_combout\ = (\value~83_combout\ & (((\memory[27][2]~regout\) # (!\addr~combout\(1))))) # (!\value~83_combout\ & (\memory[26][2]~regout\ & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~83_combout\,
	datab => \memory[26][2]~regout\,
	datac => \memory[27][2]~regout\,
	datad => \addr~combout\(1),
	combout => \value~84_combout\);

-- Location: LCCOMB_X20_Y18_N28
\value~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~85_combout\ = (\addr~combout\(1) & ((\addr~combout\(0)) # ((\memory[22][2]~regout\)))) # (!\addr~combout\(1) & (!\addr~combout\(0) & (\memory[20][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \memory[20][2]~regout\,
	datad => \memory[22][2]~regout\,
	combout => \value~85_combout\);

-- Location: LCCOMB_X20_Y18_N0
\value~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~86_combout\ = (\addr~combout\(0) & ((\value~85_combout\ & ((\memory[23][2]~regout\))) # (!\value~85_combout\ & (\memory[21][2]~regout\)))) # (!\addr~combout\(0) & (((\value~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[21][2]~regout\,
	datab => \addr~combout\(0),
	datac => \memory[23][2]~regout\,
	datad => \value~85_combout\,
	combout => \value~86_combout\);

-- Location: LCCOMB_X18_Y18_N28
\value~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~87_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\memory[17][2]~regout\))) # (!\addr~combout\(0) & (\memory[16][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \memory[16][2]~regout\,
	datad => \memory[17][2]~regout\,
	combout => \value~87_combout\);

-- Location: LCCOMB_X18_Y18_N22
\value~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~88_combout\ = (\addr~combout\(1) & ((\value~87_combout\ & ((\memory[19][2]~regout\))) # (!\value~87_combout\ & (\memory[18][2]~regout\)))) # (!\addr~combout\(1) & (\value~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \value~87_combout\,
	datac => \memory[18][2]~regout\,
	datad => \memory[19][2]~regout\,
	combout => \value~88_combout\);

-- Location: LCCOMB_X20_Y18_N4
\value~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~89_combout\ = (\addr~combout\(3) & (((\addr~combout\(2))))) # (!\addr~combout\(3) & ((\addr~combout\(2) & (\value~86_combout\)) # (!\addr~combout\(2) & ((\value~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \value~86_combout\,
	datac => \addr~combout\(2),
	datad => \value~88_combout\,
	combout => \value~89_combout\);

-- Location: LCCOMB_X23_Y20_N24
\value~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~92_combout\ = (\value~89_combout\ & ((\value~91_combout\) # ((!\addr~combout\(3))))) # (!\value~89_combout\ & (((\value~84_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~91_combout\,
	datab => \value~84_combout\,
	datac => \value~89_combout\,
	datad => \addr~combout\(3),
	combout => \value~92_combout\);

-- Location: LCCOMB_X24_Y21_N14
\value~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~100_combout\ = (\addr~combout\(3) & (((\addr~combout\(2))))) # (!\addr~combout\(3) & ((\addr~combout\(2) & ((\memory[7][2]~regout\))) # (!\addr~combout\(2) & (\memory[3][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \memory[3][2]~regout\,
	datac => \memory[7][2]~regout\,
	datad => \addr~combout\(2),
	combout => \value~100_combout\);

-- Location: LCCOMB_X24_Y21_N4
\value~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~101_combout\ = (\addr~combout\(3) & ((\value~100_combout\ & ((\memory[15][2]~regout\))) # (!\value~100_combout\ & (\memory[11][2]~regout\)))) # (!\addr~combout\(3) & (((\value~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \memory[11][2]~regout\,
	datac => \value~100_combout\,
	datad => \memory[15][2]~regout\,
	combout => \value~101_combout\);

-- Location: LCCOMB_X23_Y21_N24
\value~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~93_combout\ = (\addr~combout\(2) & ((\memory[5][2]~regout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((\memory[1][2]~regout\ & !\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \memory[5][2]~regout\,
	datac => \memory[1][2]~regout\,
	datad => \addr~combout\(3),
	combout => \value~93_combout\);

-- Location: LCCOMB_X24_Y21_N20
\value~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~94_combout\ = (\value~93_combout\ & (((\memory[13][2]~regout\) # (!\addr~combout\(3))))) # (!\value~93_combout\ & (\memory[9][2]~regout\ & (\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[9][2]~regout\,
	datab => \value~93_combout\,
	datac => \addr~combout\(3),
	datad => \memory[13][2]~regout\,
	combout => \value~94_combout\);

-- Location: LCCOMB_X21_Y19_N24
\value~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~95_combout\ = (\addr~combout\(2) & ((\memory[6][2]~regout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((\memory[2][2]~regout\ & !\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[6][2]~regout\,
	datab => \memory[2][2]~regout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \value~95_combout\);

-- Location: LCCOMB_X21_Y19_N18
\value~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~96_combout\ = (\value~95_combout\ & (((\memory[14][2]~regout\) # (!\addr~combout\(3))))) # (!\value~95_combout\ & (\memory[10][2]~regout\ & ((\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[10][2]~regout\,
	datab => \memory[14][2]~regout\,
	datac => \value~95_combout\,
	datad => \addr~combout\(3),
	combout => \value~96_combout\);

-- Location: LCCOMB_X21_Y19_N20
\value~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~97_combout\ = (\addr~combout\(2) & ((\memory[4][2]~regout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((\memory[0][2]~regout\ & !\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[4][2]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[0][2]~regout\,
	datad => \addr~combout\(3),
	combout => \value~97_combout\);

-- Location: LCCOMB_X21_Y19_N2
\value~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~98_combout\ = (\value~97_combout\ & ((\memory[12][2]~regout\) # ((!\addr~combout\(3))))) # (!\value~97_combout\ & (((\memory[8][2]~regout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[12][2]~regout\,
	datab => \memory[8][2]~regout\,
	datac => \value~97_combout\,
	datad => \addr~combout\(3),
	combout => \value~98_combout\);

-- Location: LCCOMB_X21_Y19_N4
\value~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~99_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & (\value~96_combout\)) # (!\addr~combout\(1) & ((\value~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \value~96_combout\,
	datac => \addr~combout\(1),
	datad => \value~98_combout\,
	combout => \value~99_combout\);

-- Location: LCCOMB_X24_Y21_N10
\value~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~102_combout\ = (\addr~combout\(0) & ((\value~99_combout\ & (\value~101_combout\)) # (!\value~99_combout\ & ((\value~94_combout\))))) # (!\addr~combout\(0) & (((\value~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \value~101_combout\,
	datac => \value~94_combout\,
	datad => \value~99_combout\,
	combout => \value~102_combout\);

-- Location: LCCOMB_X21_Y20_N18
\value~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~103_combout\ = (!\addr~combout\(5) & ((\addr~combout\(4) & (\value~92_combout\)) # (!\addr~combout\(4) & ((\value~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \value~92_combout\,
	datac => \addr~combout\(4),
	datad => \value~102_combout\,
	combout => \value~103_combout\);

-- Location: LCCOMB_X23_Y17_N30
\memory~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~266_combout\ = (\memory[50][2]~regout\ & \always~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[50][2]~regout\,
	datad => \always~1_combout\,
	combout => \memory~266_combout\);

-- Location: LCFF_X23_Y17_N31
\memory[51][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~266_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[51][2]~regout\);

-- Location: LCCOMB_X23_Y17_N28
\memory~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~263_combout\ = (\memory[51][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[51][2]~regout\,
	combout => \memory~263_combout\);

-- Location: LCCOMB_X24_Y16_N22
\memory~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~264_combout\ = (\memory[50][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[50][2]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~264_combout\);

-- Location: LCCOMB_X25_Y18_N12
\memory~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~265_combout\ = (\memory[49][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[49][2]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~265_combout\);

-- Location: LCCOMB_X26_Y17_N6
\memory~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~218_combout\ = (\memory[48][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[48][2]~regout\,
	combout => \memory~218_combout\);

-- Location: LCCOMB_X25_Y18_N14
\memory~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~222_combout\ = (\memory[47][2]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[47][2]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~222_combout\);

-- Location: LCCOMB_X26_Y17_N16
\memory~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~226_combout\ = (\memory[46][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[46][2]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~226_combout\);

-- Location: LCCOMB_X27_Y17_N4
\memory~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~230_combout\ = (\memory[45][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[45][2]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~230_combout\);

-- Location: LCCOMB_X24_Y17_N4
\memory~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~216_combout\ = (\memory[44][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[44][2]~regout\,
	combout => \memory~216_combout\);

-- Location: LCCOMB_X24_Y17_N14
\memory~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~219_combout\ = (\memory[43][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[43][2]~regout\,
	combout => \memory~219_combout\);

-- Location: LCCOMB_X27_Y18_N6
\memory~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~224_combout\ = (\memory[42][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[42][2]~regout\,
	combout => \memory~224_combout\);

-- Location: LCCOMB_X24_Y19_N10
\memory~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~227_combout\ = (\memory[41][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[41][2]~regout\,
	combout => \memory~227_combout\);

-- Location: LCCOMB_X24_Y19_N4
\memory~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~215_combout\ = (\memory[40][2]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[40][2]~regout\,
	combout => \memory~215_combout\);

-- Location: LCCOMB_X24_Y22_N12
\memory~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~220_combout\ = (\memory[39][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[39][2]~regout\,
	combout => \memory~220_combout\);

-- Location: LCCOMB_X23_Y20_N8
\memory~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~223_combout\ = (\memory[38][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[38][2]~regout\,
	combout => \memory~223_combout\);

-- Location: LCCOMB_X26_Y18_N16
\memory~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~228_combout\ = (\memory[37][2]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[37][2]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~228_combout\);

-- Location: LCCOMB_X26_Y18_N20
\memory~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~217_combout\ = (\memory[36][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[36][2]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~217_combout\);

-- Location: LCCOMB_X23_Y19_N12
\memory~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~221_combout\ = (\memory[35][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][2]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~221_combout\);

-- Location: LCCOMB_X25_Y19_N28
\memory~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~225_combout\ = (\memory[34][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[34][2]~regout\,
	combout => \memory~225_combout\);

-- Location: LCCOMB_X23_Y19_N30
\memory~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~229_combout\ = (\memory[33][2]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[33][2]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~229_combout\);

-- Location: LCCOMB_X22_Y22_N8
\memory~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~246_combout\ = (\memory[32][2]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[32][2]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~246_combout\);

-- Location: LCCOMB_X22_Y22_N20
\memory~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~244_combout\ = (\memory[31][2]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[31][2]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~244_combout\);

-- Location: LCCOMB_X22_Y19_N26
\memory~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~243_combout\ = (\memory[30][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[30][2]~regout\,
	combout => \memory~243_combout\);

-- Location: LCCOMB_X22_Y19_N22
\memory~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~245_combout\ = (\memory[29][2]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[29][2]~regout\,
	combout => \memory~245_combout\);

-- Location: LCFF_X22_Y19_N23
\memory[28][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~245_combout\,
	sdata => \memory[27][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[28][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[28][2]~regout\);

-- Location: LCFF_X22_Y19_N27
\memory[29][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~243_combout\,
	sdata => \memory[28][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[29][0]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[29][2]~regout\);

-- Location: LCFF_X22_Y22_N21
\memory[30][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~244_combout\,
	sdata => \memory[29][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[30][0]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[30][2]~regout\);

-- Location: LCFF_X22_Y22_N9
\memory[31][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~246_combout\,
	sdata => \memory[30][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[31][0]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[31][2]~regout\);

-- Location: LCFF_X23_Y19_N31
\memory[32][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~229_combout\,
	sdata => \memory[31][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[32][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[32][2]~regout\);

-- Location: LCFF_X25_Y19_N29
\memory[33][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~225_combout\,
	sdata => \memory[32][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[33][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[33][2]~regout\);

-- Location: LCFF_X23_Y19_N13
\memory[34][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~221_combout\,
	sdata => \memory[33][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[34][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[34][2]~regout\);

-- Location: LCFF_X26_Y18_N21
\memory[35][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~217_combout\,
	sdata => \memory[34][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[35][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[35][2]~regout\);

-- Location: LCFF_X26_Y18_N17
\memory[36][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~228_combout\,
	sdata => \memory[35][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[36][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[36][2]~regout\);

-- Location: LCFF_X23_Y20_N9
\memory[37][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~223_combout\,
	sdata => \memory[36][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[37][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[37][2]~regout\);

-- Location: LCFF_X24_Y22_N13
\memory[38][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~220_combout\,
	sdata => \memory[37][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[38][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[38][2]~regout\);

-- Location: LCFF_X24_Y19_N5
\memory[39][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~215_combout\,
	sdata => \memory[38][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[39][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[39][2]~regout\);

-- Location: LCFF_X24_Y19_N11
\memory[40][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~227_combout\,
	sdata => \memory[39][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[40][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[40][2]~regout\);

-- Location: LCFF_X27_Y18_N7
\memory[41][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~224_combout\,
	sdata => \memory[40][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[41][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[41][2]~regout\);

-- Location: LCFF_X24_Y17_N15
\memory[42][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~219_combout\,
	sdata => \memory[41][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[42][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[42][2]~regout\);

-- Location: LCFF_X24_Y17_N5
\memory[43][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~216_combout\,
	sdata => \memory[42][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[43][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[43][2]~regout\);

-- Location: LCFF_X27_Y17_N5
\memory[44][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~230_combout\,
	sdata => \memory[43][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[44][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[44][2]~regout\);

-- Location: LCFF_X26_Y17_N17
\memory[45][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~226_combout\,
	sdata => \memory[44][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[45][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[45][2]~regout\);

-- Location: LCFF_X25_Y18_N15
\memory[46][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~222_combout\,
	sdata => \memory[45][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[46][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[46][2]~regout\);

-- Location: LCFF_X26_Y17_N7
\memory[47][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~218_combout\,
	sdata => \memory[46][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[47][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[47][2]~regout\);

-- Location: LCFF_X25_Y18_N13
\memory[48][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~265_combout\,
	sdata => \memory[47][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[48][0]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[48][2]~regout\);

-- Location: LCFF_X24_Y16_N23
\memory[49][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~264_combout\,
	sdata => \memory[48][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[49][0]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[49][2]~regout\);

-- Location: LCFF_X23_Y17_N29
\memory[50][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~263_combout\,
	sdata => \memory[49][2]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[50][0]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[50][2]~regout\);

-- Location: LCCOMB_X24_Y17_N8
\value~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~105_combout\ = (\value~104_combout\ & (((\memory[51][2]~regout\) # (!\addr~combout\(1))))) # (!\value~104_combout\ & (\memory[50][2]~regout\ & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~104_combout\,
	datab => \memory[50][2]~regout\,
	datac => \memory[51][2]~regout\,
	datad => \addr~combout\(1),
	combout => \value~105_combout\);

-- Location: LCCOMB_X25_Y19_N24
\value~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~79_combout\ = (\addr~combout\(3) & (((\addr~combout\(2))))) # (!\addr~combout\(3) & ((\addr~combout\(2) & ((\memory[36][2]~regout\))) # (!\addr~combout\(2) & (\memory[32][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \memory[32][2]~regout\,
	datac => \addr~combout\(2),
	datad => \memory[36][2]~regout\,
	combout => \value~79_combout\);

-- Location: LCCOMB_X26_Y19_N14
\value~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~80_combout\ = (\addr~combout\(3) & ((\value~79_combout\ & (\memory[44][2]~regout\)) # (!\value~79_combout\ & ((\memory[40][2]~regout\))))) # (!\addr~combout\(3) & (((\value~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[44][2]~regout\,
	datab => \memory[40][2]~regout\,
	datac => \addr~combout\(3),
	datad => \value~79_combout\,
	combout => \value~80_combout\);

-- Location: LCCOMB_X26_Y19_N20
\value~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~81_combout\ = (\addr~combout\(0) & (\value~78_combout\)) # (!\addr~combout\(0) & ((\value~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~78_combout\,
	datab => \value~80_combout\,
	datac => \addr~combout\(0),
	combout => \value~81_combout\);

-- Location: LCCOMB_X26_Y19_N22
\value~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~82_combout\ = (\value~36_combout\ & ((\addr~combout\(1) & (\value~76_combout\)) # (!\addr~combout\(1) & ((\value~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~76_combout\,
	datab => \value~36_combout\,
	datac => \value~81_combout\,
	datad => \addr~combout\(1),
	combout => \value~82_combout\);

-- Location: LCCOMB_X21_Y20_N0
\value~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~106_combout\ = (\value~103_combout\) # ((\value~82_combout\) # ((\value~34_combout\ & \value~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~34_combout\,
	datab => \value~103_combout\,
	datac => \value~105_combout\,
	datad => \value~82_combout\,
	combout => \value~106_combout\);

-- Location: LCCOMB_X25_Y18_N20
\memory~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~317_combout\ = (\memory[49][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[49][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~317_combout\);

-- Location: LCCOMB_X26_Y17_N0
\memory~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~270_combout\ = (\memory[48][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[48][3]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~270_combout\);

-- Location: LCCOMB_X25_Y18_N22
\memory~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~268_combout\ = (\memory[47][3]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[47][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~268_combout\);

-- Location: LCCOMB_X26_Y17_N18
\memory~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~267_combout\ = (\memory[46][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[46][3]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~267_combout\);

-- Location: LCCOMB_X27_Y17_N10
\memory~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~269_combout\ = (\memory[45][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[45][3]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~269_combout\);

-- Location: LCCOMB_X24_Y17_N18
\memory~278\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~278_combout\ = (\memory[44][3]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[44][3]~regout\,
	combout => \memory~278_combout\);

-- Location: LCCOMB_X24_Y17_N20
\memory~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~275_combout\ = (\memory[43][3]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[43][3]~regout\,
	combout => \memory~275_combout\);

-- Location: LCCOMB_X27_Y18_N8
\memory~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~276_combout\ = (\memory[42][3]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[42][3]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~276_combout\);

-- Location: LCCOMB_X24_Y19_N18
\memory~277\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~277_combout\ = (\memory[41][3]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[41][3]~regout\,
	combout => \memory~277_combout\);

-- Location: LCCOMB_X24_Y19_N6
\memory~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~274_combout\ = (\memory[40][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[40][3]~regout\,
	combout => \memory~274_combout\);

-- Location: LCCOMB_X24_Y22_N10
\memory~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~272_combout\ = (\memory[39][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[39][3]~regout\,
	combout => \memory~272_combout\);

-- Location: LCCOMB_X24_Y22_N30
\memory~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~271_combout\ = (\memory[38][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[38][3]~regout\,
	combout => \memory~271_combout\);

-- Location: LCCOMB_X26_Y18_N12
\memory~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~273_combout\ = (\memory[37][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[37][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~273_combout\);

-- Location: LCCOMB_X26_Y18_N26
\memory~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~282_combout\ = (\memory[36][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[36][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~282_combout\);

-- Location: LCCOMB_X23_Y19_N16
\memory~279\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~279_combout\ = (\memory[35][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~279_combout\);

-- Location: LCCOMB_X25_Y19_N26
\memory~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~280_combout\ = (\memory[34][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[34][3]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~280_combout\);

-- Location: LCCOMB_X23_Y19_N26
\memory~281\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~281_combout\ = (\memory[33][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[33][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~281_combout\);

-- Location: LCCOMB_X22_Y22_N10
\memory~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~298_combout\ = (\memory[32][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[32][3]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~298_combout\);

-- Location: LCCOMB_X22_Y22_N14
\memory~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~290_combout\ = (\memory[31][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[31][3]~regout\,
	combout => \memory~290_combout\);

-- Location: LCCOMB_X22_Y19_N12
\memory~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~286_combout\ = (\memory[30][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[30][3]~regout\,
	combout => \memory~286_combout\);

-- Location: LCCOMB_X22_Y19_N16
\memory~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~294_combout\ = (\memory[29][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[29][3]~regout\,
	combout => \memory~294_combout\);

-- Location: LCCOMB_X21_Y20_N14
\memory~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~295_combout\ = (\memory[28][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[28][3]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~295_combout\);

-- Location: LCCOMB_X20_Y20_N14
\memory~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~288_combout\ = (\memory[27][3]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[27][3]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~288_combout\);

-- Location: LCCOMB_X23_Y20_N28
\memory~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~283_combout\ = (\memory[26][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[26][3]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~283_combout\);

-- Location: LCCOMB_X22_Y21_N18
\memory~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~292_combout\ = (\memory[25][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[25][3]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~292_combout\);

-- Location: LCCOMB_X22_Y21_N14
\memory~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~296_combout\ = (\memory[24][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[24][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~296_combout\);

-- Location: LCCOMB_X20_Y18_N8
\memory~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~287_combout\ = (\memory[23][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[23][3]~regout\,
	combout => \memory~287_combout\);

-- Location: LCCOMB_X20_Y18_N2
\memory~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~284_combout\ = (\memory[22][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[22][3]~regout\,
	combout => \memory~284_combout\);

-- Location: LCCOMB_X19_Y18_N18
\memory~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~291_combout\ = (\memory[21][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[21][3]~regout\,
	combout => \memory~291_combout\);

-- Location: LCCOMB_X18_Y18_N2
\memory~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~297_combout\ = (\memory[20][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[20][3]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~297_combout\);

-- Location: LCCOMB_X19_Y18_N12
\memory~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~289_combout\ = (\memory[19][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[19][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~289_combout\);

-- Location: LCCOMB_X18_Y18_N8
\memory~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~285_combout\ = (\memory[18][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[18][3]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~285_combout\);

-- Location: LCCOMB_X22_Y17_N6
\memory~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~293_combout\ = (\memory[17][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[17][3]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~293_combout\);

-- Location: LCCOMB_X22_Y17_N4
\memory~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~314_combout\ = (\memory[16][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[16][3]~regout\,
	combout => \memory~314_combout\);

-- Location: LCCOMB_X25_Y21_N0
\memory~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~311_combout\ = (\memory[15][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[15][3]~regout\,
	combout => \memory~311_combout\);

-- Location: LCCOMB_X21_Y19_N10
\memory~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~312_combout\ = (\memory[14][3]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[14][3]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~312_combout\);

-- Location: LCCOMB_X25_Y21_N18
\memory~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~313_combout\ = (\memory[13][3]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[13][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~313_combout\);

-- Location: LCCOMB_X21_Y19_N28
\memory~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~302_combout\ = (\memory[12][3]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[12][3]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~302_combout\);

-- Location: LCCOMB_X24_Y21_N28
\memory~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~300_combout\ = (\memory[11][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[11][3]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~300_combout\);

-- Location: LCCOMB_X24_Y20_N0
\memory~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~299_combout\ = (\memory[10][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[10][3]~regout\,
	combout => \memory~299_combout\);

-- Location: LCCOMB_X24_Y21_N6
\memory~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~301_combout\ = (\memory[9][3]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[9][3]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~301_combout\);

-- Location: LCCOMB_X24_Y20_N22
\memory~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~306_combout\ = (\memory[8][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[8][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~306_combout\);

-- Location: LCCOMB_X21_Y18_N26
\memory~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~303_combout\ = (\memory[7][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[7][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~303_combout\);

-- Location: LCCOMB_X22_Y20_N26
\memory~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~304_combout\ = (\memory[6][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[6][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~304_combout\);

-- Location: LCCOMB_X22_Y20_N10
\memory~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~305_combout\ = (\memory[5][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[5][3]~regout\,
	combout => \memory~305_combout\);

-- Location: LCCOMB_X23_Y21_N18
\memory~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~310_combout\ = (\memory[4][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[4][3]~regout\,
	combout => \memory~310_combout\);

-- Location: LCCOMB_X23_Y21_N4
\memory~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~308_combout\ = (\memory[3][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[3][3]~regout\,
	combout => \memory~308_combout\);

-- Location: LCCOMB_X23_Y22_N26
\memory~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~307_combout\ = (\memory[2][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][3]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~307_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[3]~I\ : cycloneii_io
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
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: LCCOMB_X23_Y22_N4
\memory~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~309_combout\ = (\always~1_combout\ & (((\data~combout\(3))))) # (!\always~1_combout\ & (!\Equal1~0_combout\ & (\memory[1][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \memory[1][3]~regout\,
	datac => \data~combout\(3),
	datad => \always~1_combout\,
	combout => \memory~309_combout\);

-- Location: LCFF_X23_Y22_N5
\memory[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~309_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \memory[0][0]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[0][3]~regout\);

-- Location: LCFF_X23_Y22_N27
\memory[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~307_combout\,
	sdata => \memory[0][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[1][0]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[1][3]~regout\);

-- Location: LCFF_X23_Y21_N5
\memory[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~308_combout\,
	sdata => \memory[1][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[2][0]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[2][3]~regout\);

-- Location: LCFF_X23_Y21_N19
\memory[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~310_combout\,
	sdata => \memory[2][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[3][0]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[3][3]~regout\);

-- Location: LCFF_X22_Y20_N11
\memory[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~305_combout\,
	sdata => \memory[3][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[4][0]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[4][3]~regout\);

-- Location: LCFF_X22_Y20_N27
\memory[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~304_combout\,
	sdata => \memory[4][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[5][0]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[5][3]~regout\);

-- Location: LCFF_X21_Y18_N27
\memory[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~303_combout\,
	sdata => \memory[5][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[6][0]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[6][3]~regout\);

-- Location: LCFF_X24_Y20_N23
\memory[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~306_combout\,
	sdata => \memory[6][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[7][0]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[7][3]~regout\);

-- Location: LCFF_X24_Y21_N7
\memory[8][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~301_combout\,
	sdata => \memory[7][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[8][0]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[8][3]~regout\);

-- Location: LCFF_X24_Y20_N1
\memory[9][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~299_combout\,
	sdata => \memory[8][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[9][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[9][3]~regout\);

-- Location: LCFF_X24_Y21_N29
\memory[10][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~300_combout\,
	sdata => \memory[9][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[10][0]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[10][3]~regout\);

-- Location: LCFF_X21_Y19_N29
\memory[11][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~302_combout\,
	sdata => \memory[10][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[11][0]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[11][3]~regout\);

-- Location: LCFF_X25_Y21_N19
\memory[12][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~313_combout\,
	sdata => \memory[11][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[12][0]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[12][3]~regout\);

-- Location: LCFF_X21_Y19_N11
\memory[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~312_combout\,
	sdata => \memory[12][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[13][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[13][3]~regout\);

-- Location: LCFF_X25_Y21_N1
\memory[14][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~311_combout\,
	sdata => \memory[13][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[14][0]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[14][3]~regout\);

-- Location: LCFF_X22_Y17_N5
\memory[15][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~314_combout\,
	sdata => \memory[14][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[15][0]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[15][3]~regout\);

-- Location: LCFF_X22_Y17_N7
\memory[16][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~293_combout\,
	sdata => \memory[15][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[16][0]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[16][3]~regout\);

-- Location: LCFF_X18_Y18_N9
\memory[17][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~285_combout\,
	sdata => \memory[16][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[17][0]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[17][3]~regout\);

-- Location: LCFF_X19_Y18_N13
\memory[18][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~289_combout\,
	sdata => \memory[17][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[18][0]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[18][3]~regout\);

-- Location: LCFF_X18_Y18_N3
\memory[19][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~297_combout\,
	sdata => \memory[18][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[19][0]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[19][3]~regout\);

-- Location: LCFF_X19_Y18_N19
\memory[20][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~291_combout\,
	sdata => \memory[19][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[20][0]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[20][3]~regout\);

-- Location: LCFF_X20_Y18_N3
\memory[21][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~284_combout\,
	sdata => \memory[20][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[21][0]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[21][3]~regout\);

-- Location: LCFF_X20_Y18_N9
\memory[22][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~287_combout\,
	sdata => \memory[21][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[22][0]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[22][3]~regout\);

-- Location: LCFF_X22_Y21_N15
\memory[23][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~296_combout\,
	sdata => \memory[22][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[23][0]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[23][3]~regout\);

-- Location: LCFF_X22_Y21_N19
\memory[24][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~292_combout\,
	sdata => \memory[23][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[24][0]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[24][3]~regout\);

-- Location: LCFF_X23_Y20_N29
\memory[25][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~283_combout\,
	sdata => \memory[24][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[25][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[25][3]~regout\);

-- Location: LCFF_X20_Y20_N15
\memory[26][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~288_combout\,
	sdata => \memory[25][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[26][0]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[26][3]~regout\);

-- Location: LCFF_X21_Y20_N15
\memory[27][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~295_combout\,
	sdata => \memory[26][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[27][0]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[27][3]~regout\);

-- Location: LCFF_X22_Y19_N17
\memory[28][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~294_combout\,
	sdata => \memory[27][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[28][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[28][3]~regout\);

-- Location: LCFF_X22_Y19_N13
\memory[29][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~286_combout\,
	sdata => \memory[28][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[29][0]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[29][3]~regout\);

-- Location: LCFF_X22_Y22_N15
\memory[30][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~290_combout\,
	sdata => \memory[29][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[30][0]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[30][3]~regout\);

-- Location: LCFF_X22_Y22_N11
\memory[31][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~298_combout\,
	sdata => \memory[30][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[31][0]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[31][3]~regout\);

-- Location: LCFF_X23_Y19_N27
\memory[32][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~281_combout\,
	sdata => \memory[31][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[32][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[32][3]~regout\);

-- Location: LCFF_X25_Y19_N27
\memory[33][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~280_combout\,
	sdata => \memory[32][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[33][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[33][3]~regout\);

-- Location: LCFF_X23_Y19_N17
\memory[34][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~279_combout\,
	sdata => \memory[33][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[34][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[34][3]~regout\);

-- Location: LCFF_X26_Y18_N27
\memory[35][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~282_combout\,
	sdata => \memory[34][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[35][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[35][3]~regout\);

-- Location: LCFF_X26_Y18_N13
\memory[36][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~273_combout\,
	sdata => \memory[35][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[36][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[36][3]~regout\);

-- Location: LCFF_X24_Y22_N31
\memory[37][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~271_combout\,
	sdata => \memory[36][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[37][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[37][3]~regout\);

-- Location: LCFF_X24_Y22_N11
\memory[38][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~272_combout\,
	sdata => \memory[37][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[38][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[38][3]~regout\);

-- Location: LCFF_X24_Y19_N7
\memory[39][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~274_combout\,
	sdata => \memory[38][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[39][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[39][3]~regout\);

-- Location: LCFF_X24_Y19_N19
\memory[40][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~277_combout\,
	sdata => \memory[39][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[40][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[40][3]~regout\);

-- Location: LCFF_X27_Y18_N9
\memory[41][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~276_combout\,
	sdata => \memory[40][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[41][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[41][3]~regout\);

-- Location: LCFF_X24_Y17_N21
\memory[42][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~275_combout\,
	sdata => \memory[41][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[42][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[42][3]~regout\);

-- Location: LCFF_X24_Y17_N19
\memory[43][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~278_combout\,
	sdata => \memory[42][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[43][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[43][3]~regout\);

-- Location: LCFF_X27_Y17_N11
\memory[44][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~269_combout\,
	sdata => \memory[43][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[44][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[44][3]~regout\);

-- Location: LCFF_X26_Y17_N19
\memory[45][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~267_combout\,
	sdata => \memory[44][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[45][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[45][3]~regout\);

-- Location: LCFF_X25_Y18_N23
\memory[46][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~268_combout\,
	sdata => \memory[45][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[46][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[46][3]~regout\);

-- Location: LCFF_X26_Y17_N1
\memory[47][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~270_combout\,
	sdata => \memory[46][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[47][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[47][3]~regout\);

-- Location: LCFF_X25_Y18_N21
\memory[48][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~317_combout\,
	sdata => \memory[47][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[48][0]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[48][3]~regout\);

-- Location: LCCOMB_X23_Y17_N0
\memory~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~318_combout\ = (\memory[50][3]~regout\ & \always~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[50][3]~regout\,
	datad => \always~1_combout\,
	combout => \memory~318_combout\);

-- Location: LCFF_X23_Y17_N1
\memory[51][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~318_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[51][3]~regout\);

-- Location: LCCOMB_X23_Y17_N18
\memory~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~316_combout\ = (\memory[51][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[51][3]~regout\,
	combout => \memory~316_combout\);

-- Location: LCCOMB_X24_Y16_N24
\memory~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~315_combout\ = (\memory[50][3]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[50][3]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~315_combout\);

-- Location: LCFF_X24_Y16_N25
\memory[49][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~315_combout\,
	sdata => \memory[48][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[49][0]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[49][3]~regout\);

-- Location: LCFF_X23_Y17_N19
\memory[50][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~316_combout\,
	sdata => \memory[49][3]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[50][0]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[50][3]~regout\);

-- Location: LCCOMB_X26_Y17_N4
\value~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~139_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\memory[50][3]~regout\))) # (!\addr~combout\(1) & (\memory[48][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[48][3]~regout\,
	datac => \memory[50][3]~regout\,
	datad => \addr~combout\(1),
	combout => \value~139_combout\);

-- Location: LCCOMB_X26_Y19_N8
\value~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~140_combout\ = (\value~139_combout\ & (((\memory[51][3]~regout\) # (!\addr~combout\(0))))) # (!\value~139_combout\ & (\memory[49][3]~regout\ & (\addr~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[49][3]~regout\,
	datab => \value~139_combout\,
	datac => \addr~combout\(0),
	datad => \memory[51][3]~regout\,
	combout => \value~140_combout\);

-- Location: LCCOMB_X19_Y19_N2
\value~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~120_combout\ = (\addr~combout\(2) & (((\addr~combout\(3))))) # (!\addr~combout\(2) & ((\addr~combout\(3) & (\memory[26][3]~regout\)) # (!\addr~combout\(3) & ((\memory[18][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \memory[26][3]~regout\,
	datac => \memory[18][3]~regout\,
	datad => \addr~combout\(3),
	combout => \value~120_combout\);

-- Location: LCCOMB_X19_Y19_N20
\value~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~121_combout\ = (\addr~combout\(2) & ((\value~120_combout\ & ((\memory[30][3]~regout\))) # (!\value~120_combout\ & (\memory[22][3]~regout\)))) # (!\addr~combout\(2) & (\value~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \value~120_combout\,
	datac => \memory[22][3]~regout\,
	datad => \memory[30][3]~regout\,
	combout => \value~121_combout\);

-- Location: LCCOMB_X19_Y19_N18
\value~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~124_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\value~121_combout\))) # (!\addr~combout\(1) & (\value~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~123_combout\,
	datab => \addr~combout\(0),
	datac => \value~121_combout\,
	datad => \addr~combout\(1),
	combout => \value~124_combout\);

-- Location: LCCOMB_X19_Y19_N28
\value~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~118_combout\ = (\addr~combout\(2) & ((\memory[21][3]~regout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((\memory[17][3]~regout\ & !\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \memory[21][3]~regout\,
	datac => \memory[17][3]~regout\,
	datad => \addr~combout\(3),
	combout => \value~118_combout\);

-- Location: LCCOMB_X20_Y19_N4
\value~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~119_combout\ = (\value~118_combout\ & ((\memory[29][3]~regout\) # ((!\addr~combout\(3))))) # (!\value~118_combout\ & (((\memory[25][3]~regout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[29][3]~regout\,
	datab => \value~118_combout\,
	datac => \memory[25][3]~regout\,
	datad => \addr~combout\(3),
	combout => \value~119_combout\);

-- Location: LCCOMB_X19_Y19_N4
\value~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~125_combout\ = (\addr~combout\(2) & (((\memory[23][3]~regout\) # (\addr~combout\(3))))) # (!\addr~combout\(2) & (\memory[19][3]~regout\ & ((!\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[19][3]~regout\,
	datab => \memory[23][3]~regout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \value~125_combout\);

-- Location: LCCOMB_X20_Y19_N6
\value~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~126_combout\ = (\value~125_combout\ & (((\memory[31][3]~regout\) # (!\addr~combout\(3))))) # (!\value~125_combout\ & (\memory[27][3]~regout\ & ((\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[27][3]~regout\,
	datab => \value~125_combout\,
	datac => \memory[31][3]~regout\,
	datad => \addr~combout\(3),
	combout => \value~126_combout\);

-- Location: LCCOMB_X20_Y19_N0
\value~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~127_combout\ = (\addr~combout\(0) & ((\value~124_combout\ & ((\value~126_combout\))) # (!\value~124_combout\ & (\value~119_combout\)))) # (!\addr~combout\(0) & (\value~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \value~124_combout\,
	datac => \value~119_combout\,
	datad => \value~126_combout\,
	combout => \value~127_combout\);

-- Location: LCCOMB_X20_Y19_N26
\value~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~138_combout\ = (!\addr~combout\(5) & ((\addr~combout\(4) & ((\value~127_combout\))) # (!\addr~combout\(4) & (\value~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~137_combout\,
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	datad => \value~127_combout\,
	combout => \value~138_combout\);

-- Location: LCCOMB_X27_Y17_N2
\value~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~112_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\memory[41][3]~regout\)))) # (!\addr~combout\(0) & (\memory[40][3]~regout\ & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[40][3]~regout\,
	datac => \addr~combout\(1),
	datad => \memory[41][3]~regout\,
	combout => \value~112_combout\);

-- Location: LCCOMB_X26_Y17_N10
\value~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~113_combout\ = (\addr~combout\(1) & ((\value~112_combout\ & (\memory[43][3]~regout\)) # (!\value~112_combout\ & ((\memory[42][3]~regout\))))) # (!\addr~combout\(1) & (((\value~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[43][3]~regout\,
	datac => \memory[42][3]~regout\,
	datad => \value~112_combout\,
	combout => \value~113_combout\);

-- Location: LCCOMB_X22_Y19_N8
\value~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~114_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\memory[33][3]~regout\))) # (!\addr~combout\(0) & (\memory[32][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[32][3]~regout\,
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \memory[33][3]~regout\,
	combout => \value~114_combout\);

-- Location: LCCOMB_X26_Y18_N22
\value~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~115_combout\ = (\value~114_combout\ & ((\memory[35][3]~regout\) # ((!\addr~combout\(1))))) # (!\value~114_combout\ & (((\memory[34][3]~regout\ & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][3]~regout\,
	datab => \value~114_combout\,
	datac => \memory[34][3]~regout\,
	datad => \addr~combout\(1),
	combout => \value~115_combout\);

-- Location: LCCOMB_X26_Y21_N22
\value~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~116_combout\ = (\addr~combout\(3) & (\value~113_combout\)) # (!\addr~combout\(3) & ((\value~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datac => \value~113_combout\,
	datad => \value~115_combout\,
	combout => \value~116_combout\);

-- Location: LCCOMB_X26_Y17_N26
\value~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~107_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\memory[46][3]~regout\))) # (!\addr~combout\(1) & (\memory[44][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[44][3]~regout\,
	datac => \memory[46][3]~regout\,
	datad => \addr~combout\(1),
	combout => \value~107_combout\);

-- Location: LCCOMB_X26_Y17_N20
\value~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~108_combout\ = (\addr~combout\(0) & ((\value~107_combout\ & ((\memory[47][3]~regout\))) # (!\value~107_combout\ & (\memory[45][3]~regout\)))) # (!\addr~combout\(0) & (\value~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \value~107_combout\,
	datac => \memory[45][3]~regout\,
	datad => \memory[47][3]~regout\,
	combout => \value~108_combout\);

-- Location: LCCOMB_X24_Y22_N28
\value~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~109_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & (\memory[38][3]~regout\)) # (!\addr~combout\(1) & ((\memory[36][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[38][3]~regout\,
	datab => \memory[36][3]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~109_combout\);

-- Location: LCCOMB_X24_Y22_N16
\value~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~110_combout\ = (\addr~combout\(0) & ((\value~109_combout\ & ((\memory[39][3]~regout\))) # (!\value~109_combout\ & (\memory[37][3]~regout\)))) # (!\addr~combout\(0) & (\value~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \value~109_combout\,
	datac => \memory[37][3]~regout\,
	datad => \memory[39][3]~regout\,
	combout => \value~110_combout\);

-- Location: LCCOMB_X26_Y21_N0
\value~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~111_combout\ = (\addr~combout\(3) & (\value~108_combout\)) # (!\addr~combout\(3) & ((\value~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \value~108_combout\,
	datac => \addr~combout\(3),
	datad => \value~110_combout\,
	combout => \value~111_combout\);

-- Location: LCCOMB_X26_Y21_N12
\value~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~117_combout\ = (\value~36_combout\ & ((\addr~combout\(2) & ((\value~111_combout\))) # (!\addr~combout\(2) & (\value~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~36_combout\,
	datab => \value~116_combout\,
	datac => \addr~combout\(2),
	datad => \value~111_combout\,
	combout => \value~117_combout\);

-- Location: LCCOMB_X26_Y21_N2
\value~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~141_combout\ = (\value~138_combout\) # ((\value~117_combout\) # ((\value~140_combout\ & \value~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~140_combout\,
	datab => \value~138_combout\,
	datac => \value~34_combout\,
	datad => \value~117_combout\,
	combout => \value~141_combout\);

-- Location: LCCOMB_X25_Y17_N24
\memory~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~351_combout\ = (\memory[11][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[11][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~351_combout\);

-- Location: LCFF_X25_Y17_N25
\memory[10][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~351_combout\,
	sdata => \memory[9][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[10][0]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[10][4]~regout\);

-- Location: LCCOMB_X24_Y20_N4
\memory~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~356_combout\ = (\memory[10][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[10][4]~regout\,
	combout => \memory~356_combout\);

-- Location: LCFF_X24_Y20_N5
\memory[9][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~356_combout\,
	sdata => \memory[8][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[9][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[9][4]~regout\);

-- Location: LCCOMB_X24_Y21_N16
\memory~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~359_combout\ = (\memory[9][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[9][4]~regout\,
	combout => \memory~359_combout\);

-- Location: LCCOMB_X24_Y20_N14
\memory~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~363_combout\ = (\memory[8][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[8][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~363_combout\);

-- Location: LCCOMB_X21_Y18_N0
\memory~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~352_combout\ = (\memory[7][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[7][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~352_combout\);

-- Location: LCCOMB_X22_Y20_N22
\memory~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~355_combout\ = (\memory[6][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[6][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~355_combout\);

-- Location: LCCOMB_X22_Y20_N8
\memory~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~360_combout\ = (\memory[5][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[5][4]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~360_combout\);

-- Location: LCCOMB_X23_Y21_N26
\memory~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~365_combout\ = (\memory[4][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[4][4]~regout\,
	combout => \memory~365_combout\);

-- Location: LCCOMB_X23_Y21_N8
\memory~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~353_combout\ = (\memory[3][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[3][4]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~353_combout\);

-- Location: LCCOMB_X23_Y22_N22
\memory~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~357_combout\ = (\memory[2][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~357_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[4]~I\ : cycloneii_io
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
	padio => ww_data(4),
	combout => \data~combout\(4));

-- Location: LCCOMB_X23_Y22_N18
\memory~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~361_combout\ = (\always~1_combout\ & (((\data~combout\(4))))) # (!\always~1_combout\ & (!\Equal1~0_combout\ & (\memory[1][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \memory[1][4]~regout\,
	datac => \data~combout\(4),
	datad => \always~1_combout\,
	combout => \memory~361_combout\);

-- Location: LCFF_X23_Y22_N19
\memory[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~361_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \memory[0][0]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[0][4]~regout\);

-- Location: LCFF_X23_Y22_N23
\memory[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~357_combout\,
	sdata => \memory[0][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[1][0]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[1][4]~regout\);

-- Location: LCFF_X23_Y21_N9
\memory[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~353_combout\,
	sdata => \memory[1][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[2][0]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[2][4]~regout\);

-- Location: LCFF_X23_Y21_N27
\memory[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~365_combout\,
	sdata => \memory[2][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[3][0]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[3][4]~regout\);

-- Location: LCFF_X22_Y20_N9
\memory[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~360_combout\,
	sdata => \memory[3][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[4][0]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[4][4]~regout\);

-- Location: LCFF_X22_Y20_N23
\memory[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~355_combout\,
	sdata => \memory[4][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[5][0]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[5][4]~regout\);

-- Location: LCFF_X21_Y18_N1
\memory[6][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~352_combout\,
	sdata => \memory[5][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[6][0]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[6][4]~regout\);

-- Location: LCFF_X24_Y20_N15
\memory[7][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~363_combout\,
	sdata => \memory[6][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[7][0]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[7][4]~regout\);

-- Location: LCFF_X24_Y21_N17
\memory[8][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~359_combout\,
	sdata => \memory[7][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[8][0]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[8][4]~regout\);

-- Location: LCCOMB_X24_Y21_N24
\value~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~167_combout\ = (\addr~combout\(2) & (((\addr~combout\(3)) # (\memory[4][4]~regout\)))) # (!\addr~combout\(2) & (\memory[0][4]~regout\ & (!\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[0][4]~regout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \memory[4][4]~regout\,
	combout => \value~167_combout\);

-- Location: LCCOMB_X25_Y17_N8
\value~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~168_combout\ = (\value~167_combout\ & ((\memory[12][4]~regout\) # ((!\addr~combout\(3))))) # (!\value~167_combout\ & (((\memory[8][4]~regout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[12][4]~regout\,
	datab => \memory[8][4]~regout\,
	datac => \value~167_combout\,
	datad => \addr~combout\(3),
	combout => \value~168_combout\);

-- Location: LCCOMB_X25_Y17_N0
\value~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~169_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\value~166_combout\)) # (!\addr~combout\(0) & ((\value~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~166_combout\,
	datab => \value~168_combout\,
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \value~169_combout\);

-- Location: LCCOMB_X25_Y17_N20
\memory~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~364_combout\ = (\memory[12][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[12][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~364_combout\);

-- Location: LCFF_X25_Y17_N21
\memory[11][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~364_combout\,
	sdata => \memory[10][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[11][0]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[11][4]~regout\);

-- Location: LCCOMB_X25_Y17_N14
\value~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~170_combout\ = (\addr~combout\(2) & (((\addr~combout\(3))))) # (!\addr~combout\(2) & ((\addr~combout\(3) & ((\memory[11][4]~regout\))) # (!\addr~combout\(3) & (\memory[3][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[3][4]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[11][4]~regout\,
	datad => \addr~combout\(3),
	combout => \value~170_combout\);

-- Location: LCCOMB_X25_Y17_N18
\value~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~171_combout\ = (\value~170_combout\ & ((\memory[15][4]~regout\) # ((!\addr~combout\(2))))) # (!\value~170_combout\ & (((\memory[7][4]~regout\ & \addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[15][4]~regout\,
	datab => \memory[7][4]~regout\,
	datac => \value~170_combout\,
	datad => \addr~combout\(2),
	combout => \value~171_combout\);

-- Location: LCCOMB_X25_Y17_N26
\value~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~172_combout\ = (\value~169_combout\ & (((\value~171_combout\) # (!\addr~combout\(1))))) # (!\value~169_combout\ & (\value~164_combout\ & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~164_combout\,
	datab => \value~169_combout\,
	datac => \addr~combout\(1),
	datad => \value~171_combout\,
	combout => \value~172_combout\);

-- Location: LCCOMB_X22_Y21_N20
\memory~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~342_combout\ = (\memory[24][4]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[24][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~342_combout\);

-- Location: LCFF_X22_Y21_N21
\memory[23][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~342_combout\,
	sdata => \memory[22][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[23][0]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[23][4]~regout\);

-- Location: LCCOMB_X20_Y18_N24
\memory~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~339_combout\ = (\memory[23][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[23][4]~regout\,
	combout => \memory~339_combout\);

-- Location: LCFF_X20_Y18_N25
\memory[22][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~339_combout\,
	sdata => \memory[21][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[22][0]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[22][4]~regout\);

-- Location: LCCOMB_X20_Y18_N30
\memory~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~340_combout\ = (\memory[22][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[22][4]~regout\,
	combout => \memory~340_combout\);

-- Location: LCFF_X20_Y18_N31
\memory[21][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~340_combout\,
	sdata => \memory[20][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[21][0]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[21][4]~regout\);

-- Location: LCCOMB_X19_Y18_N20
\memory~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~341_combout\ = (\memory[21][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[21][4]~regout\,
	combout => \memory~341_combout\);

-- Location: LCFF_X19_Y18_N21
\memory[20][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~341_combout\,
	sdata => \memory[19][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[20][0]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[20][4]~regout\);

-- Location: LCCOMB_X18_Y18_N6
\memory~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~346_combout\ = (\memory[20][4]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[20][4]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~346_combout\);

-- Location: LCCOMB_X19_Y18_N14
\memory~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~344_combout\ = (\memory[19][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[19][4]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~344_combout\);

-- Location: LCCOMB_X18_Y18_N12
\memory~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~343_combout\ = (\memory[18][4]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[18][4]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~343_combout\);

-- Location: LCCOMB_X22_Y17_N2
\memory~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~345_combout\ = (\memory[17][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[17][4]~regout\,
	combout => \memory~345_combout\);

-- Location: LCCOMB_X22_Y17_N8
\memory~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~366_combout\ = (\memory[16][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[16][4]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~366_combout\);

-- Location: LCCOMB_X25_Y21_N12
\memory~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~354_combout\ = (\memory[15][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[15][4]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~354_combout\);

-- Location: LCCOMB_X24_Y18_N2
\memory~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~358_combout\ = (\memory[14][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[14][4]~regout\,
	combout => \memory~358_combout\);

-- Location: LCCOMB_X25_Y21_N10
\memory~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~362_combout\ = (\memory[13][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[13][4]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~362_combout\);

-- Location: LCFF_X25_Y21_N11
\memory[12][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~362_combout\,
	sdata => \memory[11][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[12][0]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[12][4]~regout\);

-- Location: LCFF_X24_Y18_N3
\memory[13][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~358_combout\,
	sdata => \memory[12][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[13][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[13][4]~regout\);

-- Location: LCFF_X25_Y21_N13
\memory[14][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~354_combout\,
	sdata => \memory[13][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[14][0]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[14][4]~regout\);

-- Location: LCFF_X22_Y17_N9
\memory[15][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~366_combout\,
	sdata => \memory[14][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[15][0]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[15][4]~regout\);

-- Location: LCFF_X22_Y17_N3
\memory[16][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~345_combout\,
	sdata => \memory[15][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[16][0]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[16][4]~regout\);

-- Location: LCFF_X18_Y18_N13
\memory[17][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~343_combout\,
	sdata => \memory[16][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[17][0]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[17][4]~regout\);

-- Location: LCFF_X19_Y18_N15
\memory[18][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~344_combout\,
	sdata => \memory[17][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[18][0]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[18][4]~regout\);

-- Location: LCFF_X18_Y18_N7
\memory[19][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~346_combout\,
	sdata => \memory[18][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[19][0]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[19][4]~regout\);

-- Location: LCCOMB_X19_Y17_N0
\value~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~157_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & (\memory[18][4]~regout\)) # (!\addr~combout\(1) & ((\memory[16][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[18][4]~regout\,
	datac => \memory[16][4]~regout\,
	datad => \addr~combout\(1),
	combout => \value~157_combout\);

-- Location: LCCOMB_X19_Y18_N22
\value~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~158_combout\ = (\addr~combout\(0) & ((\value~157_combout\ & (\memory[19][4]~regout\)) # (!\value~157_combout\ & ((\memory[17][4]~regout\))))) # (!\addr~combout\(0) & (((\value~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[19][4]~regout\,
	datac => \memory[17][4]~regout\,
	datad => \value~157_combout\,
	combout => \value~158_combout\);

-- Location: LCCOMB_X21_Y21_N4
\value~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~159_combout\ = (\addr~combout\(2) & ((\value~156_combout\) # ((\addr~combout\(3))))) # (!\addr~combout\(2) & (((\value~158_combout\ & !\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~156_combout\,
	datab => \addr~combout\(2),
	datac => \value~158_combout\,
	datad => \addr~combout\(3),
	combout => \value~159_combout\);

-- Location: LCCOMB_X23_Y19_N8
\memory~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~329_combout\ = (\memory[35][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~329_combout\);

-- Location: LCFF_X23_Y19_N9
\memory[34][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~329_combout\,
	sdata => \memory[33][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[34][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[34][4]~regout\);

-- Location: LCCOMB_X25_Y19_N8
\memory~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~325_combout\ = (\memory[34][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[34][4]~regout\,
	combout => \memory~325_combout\);

-- Location: LCFF_X25_Y19_N9
\memory[33][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~325_combout\,
	sdata => \memory[32][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[33][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[33][4]~regout\);

-- Location: LCCOMB_X23_Y19_N10
\memory~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~333_combout\ = (\memory[33][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[33][4]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~333_combout\);

-- Location: LCFF_X23_Y19_N11
\memory[32][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~333_combout\,
	sdata => \memory[31][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[32][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[32][4]~regout\);

-- Location: LCCOMB_X22_Y22_N12
\memory~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~350_combout\ = (\memory[32][4]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[32][4]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~350_combout\);

-- Location: LCFF_X22_Y22_N13
\memory[31][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~350_combout\,
	sdata => \memory[30][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[31][0]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[31][4]~regout\);

-- Location: LCCOMB_X22_Y22_N0
\memory~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~347_combout\ = (\memory[31][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[31][4]~regout\,
	combout => \memory~347_combout\);

-- Location: LCFF_X22_Y22_N1
\memory[30][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~347_combout\,
	sdata => \memory[29][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[30][0]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[30][4]~regout\);

-- Location: LCCOMB_X22_Y19_N14
\memory~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~348_combout\ = (\memory[30][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[30][4]~regout\,
	combout => \memory~348_combout\);

-- Location: LCCOMB_X22_Y19_N24
\memory~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~349_combout\ = (\memory[29][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[29][4]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~349_combout\);

-- Location: LCCOMB_X21_Y20_N4
\memory~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~338_combout\ = (\memory[28][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[28][4]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~338_combout\);

-- Location: LCCOMB_X20_Y20_N20
\memory~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~336_combout\ = (\memory[27][4]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[27][4]~regout\,
	combout => \memory~336_combout\);

-- Location: LCCOMB_X23_Y20_N30
\memory~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~335_combout\ = (\memory[26][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[26][4]~regout\,
	combout => \memory~335_combout\);

-- Location: LCCOMB_X22_Y21_N24
\memory~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~337_combout\ = (\memory[25][4]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[25][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~337_combout\);

-- Location: LCFF_X22_Y21_N25
\memory[24][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~337_combout\,
	sdata => \memory[23][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[24][0]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[24][4]~regout\);

-- Location: LCFF_X23_Y20_N31
\memory[25][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~335_combout\,
	sdata => \memory[24][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[25][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[25][4]~regout\);

-- Location: LCFF_X20_Y20_N21
\memory[26][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~336_combout\,
	sdata => \memory[25][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[26][0]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[26][4]~regout\);

-- Location: LCFF_X21_Y20_N5
\memory[27][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~338_combout\,
	sdata => \memory[26][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[27][0]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[27][4]~regout\);

-- Location: LCFF_X22_Y19_N25
\memory[28][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~349_combout\,
	sdata => \memory[27][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[28][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[28][4]~regout\);

-- Location: LCFF_X22_Y19_N15
\memory[29][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~348_combout\,
	sdata => \memory[28][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[29][0]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[29][4]~regout\);

-- Location: LCCOMB_X22_Y22_N28
\value~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~160_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\memory[29][4]~regout\)) # (!\addr~combout\(0) & ((\memory[28][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \memory[29][4]~regout\,
	datac => \addr~combout\(0),
	datad => \memory[28][4]~regout\,
	combout => \value~160_combout\);

-- Location: LCCOMB_X22_Y22_N22
\value~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~161_combout\ = (\value~160_combout\ & ((\memory[31][4]~regout\) # ((!\addr~combout\(1))))) # (!\value~160_combout\ & (((\memory[30][4]~regout\ & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[31][4]~regout\,
	datab => \value~160_combout\,
	datac => \memory[30][4]~regout\,
	datad => \addr~combout\(1),
	combout => \value~161_combout\);

-- Location: LCCOMB_X21_Y21_N26
\value~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~162_combout\ = (\value~159_combout\ & (((\value~161_combout\) # (!\addr~combout\(3))))) # (!\value~159_combout\ & (\value~154_combout\ & ((\addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~154_combout\,
	datab => \value~159_combout\,
	datac => \value~161_combout\,
	datad => \addr~combout\(3),
	combout => \value~162_combout\);

-- Location: LCCOMB_X25_Y17_N10
\value~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~173_combout\ = (!\addr~combout\(5) & ((\addr~combout\(4) & ((\value~162_combout\))) # (!\addr~combout\(4) & (\value~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \value~172_combout\,
	datac => \addr~combout\(4),
	datad => \value~162_combout\,
	combout => \value~173_combout\);

-- Location: LCCOMB_X22_Y18_N18
\memory~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~322_combout\ = (\memory[48][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[48][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~322_combout\);

-- Location: LCFF_X22_Y18_N19
\memory[47][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~322_combout\,
	sdata => \memory[46][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[47][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[47][4]~regout\);

-- Location: LCCOMB_X25_Y18_N2
\memory~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~330_combout\ = (\memory[47][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[47][4]~regout\,
	combout => \memory~330_combout\);

-- Location: LCFF_X25_Y18_N3
\memory[46][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~330_combout\,
	sdata => \memory[45][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[46][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[46][4]~regout\);

-- Location: LCCOMB_X27_Y18_N12
\memory~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~326_combout\ = (\memory[46][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[46][4]~regout\,
	combout => \memory~326_combout\);

-- Location: LCCOMB_X27_Y17_N8
\memory~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~334_combout\ = (\memory[45][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[45][4]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~334_combout\);

-- Location: LCCOMB_X24_Y17_N24
\memory~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~319_combout\ = (\memory[44][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[44][4]~regout\,
	combout => \memory~319_combout\);

-- Location: LCCOMB_X24_Y17_N10
\memory~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~328_combout\ = (\memory[43][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[43][4]~regout\,
	combout => \memory~328_combout\);

-- Location: LCCOMB_X27_Y18_N2
\memory~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~323_combout\ = (\memory[42][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[42][4]~regout\,
	combout => \memory~323_combout\);

-- Location: LCCOMB_X24_Y19_N22
\memory~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~332_combout\ = (\memory[41][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[41][4]~regout\,
	combout => \memory~332_combout\);

-- Location: LCCOMB_X24_Y19_N28
\memory~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~320_combout\ = (\memory[40][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[40][4]~regout\,
	combout => \memory~320_combout\);

-- Location: LCCOMB_X24_Y22_N4
\memory~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~327_combout\ = (\memory[39][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[39][4]~regout\,
	combout => \memory~327_combout\);

-- Location: LCCOMB_X24_Y22_N6
\memory~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~324_combout\ = (\memory[38][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[38][4]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~324_combout\);

-- Location: LCCOMB_X26_Y18_N8
\memory~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~331_combout\ = (\memory[37][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[37][4]~regout\,
	combout => \memory~331_combout\);

-- Location: LCCOMB_X26_Y18_N28
\memory~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~321_combout\ = (\memory[36][4]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[36][4]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~321_combout\);

-- Location: LCFF_X26_Y18_N29
\memory[35][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~321_combout\,
	sdata => \memory[34][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[35][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[35][4]~regout\);

-- Location: LCFF_X26_Y18_N9
\memory[36][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~331_combout\,
	sdata => \memory[35][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[36][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[36][4]~regout\);

-- Location: LCFF_X24_Y22_N7
\memory[37][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~324_combout\,
	sdata => \memory[36][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[37][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[37][4]~regout\);

-- Location: LCFF_X24_Y22_N5
\memory[38][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~327_combout\,
	sdata => \memory[37][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[38][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[38][4]~regout\);

-- Location: LCFF_X24_Y19_N29
\memory[39][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~320_combout\,
	sdata => \memory[38][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[39][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[39][4]~regout\);

-- Location: LCFF_X24_Y19_N23
\memory[40][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~332_combout\,
	sdata => \memory[39][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[40][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[40][4]~regout\);

-- Location: LCFF_X27_Y18_N3
\memory[41][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~323_combout\,
	sdata => \memory[40][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[41][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[41][4]~regout\);

-- Location: LCFF_X24_Y17_N11
\memory[42][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~328_combout\,
	sdata => \memory[41][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[42][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[42][4]~regout\);

-- Location: LCFF_X24_Y17_N25
\memory[43][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~319_combout\,
	sdata => \memory[42][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[43][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[43][4]~regout\);

-- Location: LCFF_X27_Y17_N9
\memory[44][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~334_combout\,
	sdata => \memory[43][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[44][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[44][4]~regout\);

-- Location: LCFF_X27_Y18_N13
\memory[45][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~326_combout\,
	sdata => \memory[44][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[45][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[45][4]~regout\);

-- Location: LCCOMB_X25_Y20_N28
\value~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~145_combout\ = (\value~144_combout\ & (((\memory[45][4]~regout\)) # (!\addr~combout\(3)))) # (!\value~144_combout\ & (\addr~combout\(3) & ((\memory[41][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~144_combout\,
	datab => \addr~combout\(3),
	datac => \memory[45][4]~regout\,
	datad => \memory[41][4]~regout\,
	combout => \value~145_combout\);

-- Location: LCCOMB_X25_Y20_N24
\value~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~146_combout\ = (\addr~combout\(1) & (\value~143_combout\)) # (!\addr~combout\(1) & ((\value~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~143_combout\,
	datab => \value~145_combout\,
	datad => \addr~combout\(1),
	combout => \value~146_combout\);

-- Location: LCCOMB_X26_Y20_N30
\value~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~152_combout\ = (\value~36_combout\ & ((\addr~combout\(0) & ((\value~146_combout\))) # (!\addr~combout\(0) & (\value~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~151_combout\,
	datab => \value~36_combout\,
	datac => \addr~combout\(0),
	datad => \value~146_combout\,
	combout => \value~152_combout\);

-- Location: LCCOMB_X23_Y17_N24
\memory~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~367_combout\ = (\memory[51][4]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[51][4]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~367_combout\);

-- Location: LCFF_X23_Y17_N25
\memory[50][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~367_combout\,
	sdata => \memory[49][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[50][0]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[50][4]~regout\);

-- Location: LCCOMB_X22_Y18_N4
\memory~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~368_combout\ = (\memory[50][4]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[50][4]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~368_combout\);

-- Location: LCFF_X22_Y18_N5
\memory[49][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~368_combout\,
	sdata => \memory[48][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[49][0]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[49][4]~regout\);

-- Location: LCCOMB_X25_Y16_N28
\memory~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~369_combout\ = (\memory[49][4]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[49][4]~regout\,
	combout => \memory~369_combout\);

-- Location: LCFF_X25_Y16_N29
\memory[48][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~369_combout\,
	sdata => \memory[47][4]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[48][0]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[48][4]~regout\);

-- Location: LCCOMB_X23_Y17_N22
\value~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~174_combout\ = (\addr~combout\(0) & (((\memory[49][4]~regout\) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\memory[48][4]~regout\ & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[48][4]~regout\,
	datac => \memory[49][4]~regout\,
	datad => \addr~combout\(1),
	combout => \value~174_combout\);

-- Location: LCCOMB_X23_Y17_N26
\value~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~175_combout\ = (\value~174_combout\ & ((\memory[51][4]~regout\) # ((!\addr~combout\(1))))) # (!\value~174_combout\ & (((\memory[50][4]~regout\ & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[51][4]~regout\,
	datab => \value~174_combout\,
	datac => \memory[50][4]~regout\,
	datad => \addr~combout\(1),
	combout => \value~175_combout\);

-- Location: LCCOMB_X26_Y20_N28
\value~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~176_combout\ = (\value~173_combout\) # ((\value~152_combout\) # ((\value~175_combout\ & \value~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~173_combout\,
	datab => \value~152_combout\,
	datac => \value~175_combout\,
	datad => \value~34_combout\,
	combout => \value~176_combout\);

-- Location: LCCOMB_X27_Y17_N22
\memory~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~372_combout\ = (\memory[45][5]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[45][5]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~372_combout\);

-- Location: LCFF_X27_Y17_N23
\memory[44][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~372_combout\,
	sdata => \memory[43][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[44][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[44][5]~regout\);

-- Location: LCCOMB_X24_Y17_N28
\memory~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~377_combout\ = (\memory[44][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[44][5]~regout\,
	combout => \memory~377_combout\);

-- Location: LCCOMB_X24_Y17_N22
\memory~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~375_combout\ = (\memory[43][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[43][5]~regout\,
	combout => \memory~375_combout\);

-- Location: LCCOMB_X27_Y18_N24
\memory~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~374_combout\ = (\memory[42][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[42][5]~regout\,
	combout => \memory~374_combout\);

-- Location: LCCOMB_X24_Y19_N16
\memory~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~376_combout\ = (\memory[41][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[41][5]~regout\,
	combout => \memory~376_combout\);

-- Location: LCCOMB_X24_Y19_N30
\memory~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~381_combout\ = (\memory[40][5]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[40][5]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~381_combout\);

-- Location: LCCOMB_X24_Y22_N14
\memory~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~378_combout\ = (\memory[39][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[39][5]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~378_combout\);

-- Location: LCCOMB_X24_Y22_N22
\memory~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~379_combout\ = (\memory[38][5]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[38][5]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~379_combout\);

-- Location: LCCOMB_X26_Y18_N6
\memory~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~380_combout\ = (\memory[37][5]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[37][5]~regout\,
	combout => \memory~380_combout\);

-- Location: LCCOMB_X26_Y18_N24
\memory~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~385_combout\ = (\memory[36][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[36][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~385_combout\);

-- Location: LCCOMB_X23_Y19_N20
\memory~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~383_combout\ = (\memory[35][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[35][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~383_combout\);

-- Location: LCCOMB_X25_Y19_N6
\memory~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~382_combout\ = (\memory[34][5]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[34][5]~regout\,
	combout => \memory~382_combout\);

-- Location: LCCOMB_X23_Y19_N2
\memory~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~384_combout\ = (\memory[33][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[33][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~384_combout\);

-- Location: LCCOMB_X22_Y22_N26
\memory~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~401_combout\ = (\memory[32][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[32][5]~regout\,
	combout => \memory~401_combout\);

-- Location: LCCOMB_X22_Y22_N6
\memory~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~389_combout\ = (\memory[31][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[31][5]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~389_combout\);

-- Location: LCCOMB_X22_Y19_N30
\memory~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~393_combout\ = (\memory[30][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[30][5]~regout\,
	combout => \memory~393_combout\);

-- Location: LCCOMB_X22_Y19_N0
\memory~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~397_combout\ = (\memory[29][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[29][5]~regout\,
	combout => \memory~397_combout\);

-- Location: LCCOMB_X21_Y20_N26
\memory~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~399_combout\ = (\memory[28][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[28][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~399_combout\);

-- Location: LCCOMB_X20_Y20_N22
\memory~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~386_combout\ = (\memory[27][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[27][5]~regout\,
	combout => \memory~386_combout\);

-- Location: LCCOMB_X23_Y20_N16
\memory~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~391_combout\ = (\memory[26][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[26][5]~regout\,
	combout => \memory~391_combout\);

-- Location: LCCOMB_X22_Y21_N22
\memory~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~394_combout\ = (\memory[25][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[25][5]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~394_combout\);

-- Location: LCCOMB_X22_Y21_N26
\memory~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~398_combout\ = (\memory[24][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[24][5]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~398_combout\);

-- Location: LCCOMB_X20_Y18_N18
\memory~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~387_combout\ = (\memory[23][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[23][5]~regout\,
	combout => \memory~387_combout\);

-- Location: LCCOMB_X20_Y18_N16
\memory~390\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~390_combout\ = (\memory[22][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[22][5]~regout\,
	combout => \memory~390_combout\);

-- Location: LCCOMB_X19_Y18_N30
\memory~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~395_combout\ = (\memory[21][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[21][5]~regout\,
	combout => \memory~395_combout\);

-- Location: LCCOMB_X18_Y18_N18
\memory~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~400_combout\ = (\memory[20][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \memory[20][5]~regout\,
	datad => \mode~combout\(0),
	combout => \memory~400_combout\);

-- Location: LCCOMB_X19_Y18_N16
\memory~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~388_combout\ = (\memory[19][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[19][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~388_combout\);

-- Location: LCCOMB_X18_Y18_N16
\memory~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~392_combout\ = (\memory[18][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[18][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~392_combout\);

-- Location: LCCOMB_X22_Y17_N16
\memory~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~396_combout\ = (\memory[17][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[17][5]~regout\,
	combout => \memory~396_combout\);

-- Location: LCCOMB_X22_Y17_N22
\memory~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~417_combout\ = (\memory[16][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[16][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~417_combout\);

-- Location: LCCOMB_X25_Y21_N8
\memory~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~415_combout\ = (\memory[15][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[15][5]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~415_combout\);

-- Location: LCCOMB_X24_Y18_N8
\memory~414\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~414_combout\ = (\memory[14][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[14][5]~regout\,
	combout => \memory~414_combout\);

-- Location: LCCOMB_X25_Y21_N14
\memory~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~416_combout\ = (\memory[13][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[13][5]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~416_combout\);

-- Location: LCCOMB_X25_Y20_N0
\memory~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~409_combout\ = (\memory[12][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[12][5]~regout\,
	combout => \memory~409_combout\);

-- Location: LCCOMB_X25_Y20_N30
\memory~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~406_combout\ = (\memory[11][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[11][5]~regout\,
	combout => \memory~406_combout\);

-- Location: LCCOMB_X24_Y20_N30
\memory~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~407_combout\ = (\memory[10][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[10][5]~regout\,
	combout => \memory~407_combout\);

-- Location: LCCOMB_X24_Y21_N26
\memory~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~408_combout\ = (\memory[9][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[9][5]~regout\,
	combout => \memory~408_combout\);

-- Location: LCCOMB_X24_Y20_N20
\memory~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~405_combout\ = (\memory[8][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[8][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~405_combout\);

-- Location: LCCOMB_X21_Y18_N6
\memory~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~403_combout\ = (\memory[7][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[7][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~403_combout\);

-- Location: LCCOMB_X22_Y20_N2
\memory~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~402_combout\ = (\memory[6][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[6][5]~regout\,
	combout => \memory~402_combout\);

-- Location: LCCOMB_X22_Y20_N12
\memory~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~404_combout\ = (\memory[5][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[5][5]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~404_combout\);

-- Location: LCCOMB_X23_Y21_N6
\memory~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~413_combout\ = (\memory[4][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[4][5]~regout\,
	combout => \memory~413_combout\);

-- Location: LCCOMB_X23_Y21_N12
\memory~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~410_combout\ = (\memory[3][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[3][5]~regout\,
	combout => \memory~410_combout\);

-- Location: LCCOMB_X23_Y22_N30
\memory~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~411_combout\ = (\memory[2][5]~regout\ & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~411_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[5]~I\ : cycloneii_io
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
	padio => ww_data(5),
	combout => \data~combout\(5));

-- Location: LCCOMB_X23_Y22_N8
\memory~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~412_combout\ = (\always~1_combout\ & (((\data~combout\(5))))) # (!\always~1_combout\ & (!\Equal1~0_combout\ & (\memory[1][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \memory[1][5]~regout\,
	datac => \data~combout\(5),
	datad => \always~1_combout\,
	combout => \memory~412_combout\);

-- Location: LCFF_X23_Y22_N9
\memory[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~412_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \memory[0][0]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[0][5]~regout\);

-- Location: LCFF_X23_Y22_N31
\memory[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~411_combout\,
	sdata => \memory[0][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[1][0]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[1][5]~regout\);

-- Location: LCFF_X23_Y21_N13
\memory[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~410_combout\,
	sdata => \memory[1][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[2][0]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[2][5]~regout\);

-- Location: LCFF_X23_Y21_N7
\memory[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~413_combout\,
	sdata => \memory[2][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[3][0]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[3][5]~regout\);

-- Location: LCFF_X22_Y20_N13
\memory[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~404_combout\,
	sdata => \memory[3][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[4][0]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[4][5]~regout\);

-- Location: LCFF_X22_Y20_N3
\memory[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~402_combout\,
	sdata => \memory[4][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[5][0]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[5][5]~regout\);

-- Location: LCFF_X21_Y18_N7
\memory[6][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~403_combout\,
	sdata => \memory[5][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[6][0]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[6][5]~regout\);

-- Location: LCFF_X24_Y20_N21
\memory[7][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~405_combout\,
	sdata => \memory[6][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[7][0]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[7][5]~regout\);

-- Location: LCFF_X24_Y21_N27
\memory[8][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~408_combout\,
	sdata => \memory[7][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[8][0]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[8][5]~regout\);

-- Location: LCFF_X24_Y20_N31
\memory[9][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~407_combout\,
	sdata => \memory[8][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[9][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[9][5]~regout\);

-- Location: LCFF_X25_Y20_N31
\memory[10][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~406_combout\,
	sdata => \memory[9][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[10][0]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[10][5]~regout\);

-- Location: LCFF_X25_Y20_N1
\memory[11][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~409_combout\,
	sdata => \memory[10][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[11][0]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[11][5]~regout\);

-- Location: LCFF_X25_Y21_N15
\memory[12][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~416_combout\,
	sdata => \memory[11][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[12][0]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[12][5]~regout\);

-- Location: LCFF_X24_Y18_N9
\memory[13][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~414_combout\,
	sdata => \memory[12][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[13][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[13][5]~regout\);

-- Location: LCFF_X25_Y21_N9
\memory[14][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~415_combout\,
	sdata => \memory[13][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[14][0]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[14][5]~regout\);

-- Location: LCFF_X22_Y17_N23
\memory[15][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~417_combout\,
	sdata => \memory[14][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[15][0]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[15][5]~regout\);

-- Location: LCFF_X22_Y17_N17
\memory[16][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~396_combout\,
	sdata => \memory[15][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[16][0]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[16][5]~regout\);

-- Location: LCFF_X18_Y18_N17
\memory[17][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~392_combout\,
	sdata => \memory[16][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[17][0]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[17][5]~regout\);

-- Location: LCFF_X19_Y18_N17
\memory[18][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~388_combout\,
	sdata => \memory[17][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[18][0]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[18][5]~regout\);

-- Location: LCFF_X18_Y18_N19
\memory[19][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~400_combout\,
	sdata => \memory[18][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[19][0]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[19][5]~regout\);

-- Location: LCFF_X19_Y18_N31
\memory[20][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~395_combout\,
	sdata => \memory[19][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[20][0]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[20][5]~regout\);

-- Location: LCFF_X20_Y18_N17
\memory[21][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~390_combout\,
	sdata => \memory[20][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[21][0]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[21][5]~regout\);

-- Location: LCFF_X20_Y18_N19
\memory[22][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~387_combout\,
	sdata => \memory[21][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[22][0]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[22][5]~regout\);

-- Location: LCFF_X22_Y21_N27
\memory[23][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~398_combout\,
	sdata => \memory[22][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[23][0]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[23][5]~regout\);

-- Location: LCFF_X22_Y21_N23
\memory[24][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~394_combout\,
	sdata => \memory[23][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[24][0]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[24][5]~regout\);

-- Location: LCFF_X23_Y20_N17
\memory[25][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~391_combout\,
	sdata => \memory[24][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[25][0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[25][5]~regout\);

-- Location: LCFF_X20_Y20_N23
\memory[26][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~386_combout\,
	sdata => \memory[25][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[26][0]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[26][5]~regout\);

-- Location: LCFF_X21_Y20_N27
\memory[27][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~399_combout\,
	sdata => \memory[26][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[27][0]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[27][5]~regout\);

-- Location: LCFF_X22_Y19_N1
\memory[28][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~397_combout\,
	sdata => \memory[27][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[28][0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[28][5]~regout\);

-- Location: LCFF_X22_Y19_N31
\memory[29][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~393_combout\,
	sdata => \memory[28][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[29][0]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[29][5]~regout\);

-- Location: LCFF_X22_Y22_N7
\memory[30][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~389_combout\,
	sdata => \memory[29][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[30][0]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[30][5]~regout\);

-- Location: LCFF_X22_Y22_N27
\memory[31][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~401_combout\,
	sdata => \memory[30][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[31][0]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[31][5]~regout\);

-- Location: LCFF_X23_Y19_N3
\memory[32][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~384_combout\,
	sdata => \memory[31][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[32][0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[32][5]~regout\);

-- Location: LCFF_X25_Y19_N7
\memory[33][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~382_combout\,
	sdata => \memory[32][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[33][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[33][5]~regout\);

-- Location: LCFF_X23_Y19_N21
\memory[34][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~383_combout\,
	sdata => \memory[33][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[34][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[34][5]~regout\);

-- Location: LCFF_X26_Y18_N25
\memory[35][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~385_combout\,
	sdata => \memory[34][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[35][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[35][5]~regout\);

-- Location: LCFF_X26_Y18_N7
\memory[36][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~380_combout\,
	sdata => \memory[35][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[36][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[36][5]~regout\);

-- Location: LCFF_X24_Y22_N23
\memory[37][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~379_combout\,
	sdata => \memory[36][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[37][0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[37][5]~regout\);

-- Location: LCFF_X24_Y22_N15
\memory[38][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~378_combout\,
	sdata => \memory[37][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[38][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[38][5]~regout\);

-- Location: LCFF_X24_Y19_N31
\memory[39][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~381_combout\,
	sdata => \memory[38][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[39][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[39][5]~regout\);

-- Location: LCFF_X24_Y19_N17
\memory[40][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~376_combout\,
	sdata => \memory[39][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[40][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[40][5]~regout\);

-- Location: LCFF_X27_Y18_N25
\memory[41][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~374_combout\,
	sdata => \memory[40][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[41][0]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[41][5]~regout\);

-- Location: LCFF_X24_Y17_N23
\memory[42][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~375_combout\,
	sdata => \memory[41][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[42][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[42][5]~regout\);

-- Location: LCFF_X24_Y17_N29
\memory[43][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~377_combout\,
	sdata => \memory[42][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[43][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[43][5]~regout\);

-- Location: LCCOMB_X27_Y17_N30
\value~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~180_combout\ = (\value~179_combout\ & ((\memory[43][5]~regout\) # ((!\addr~combout\(0))))) # (!\value~179_combout\ & (((\memory[41][5]~regout\ & \addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~179_combout\,
	datab => \memory[43][5]~regout\,
	datac => \memory[41][5]~regout\,
	datad => \addr~combout\(0),
	combout => \value~180_combout\);

-- Location: LCCOMB_X27_Y17_N28
\value~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~181_combout\ = (\addr~combout\(2) & (\value~178_combout\)) # (!\addr~combout\(2) & ((\value~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~178_combout\,
	datab => \value~180_combout\,
	datad => \addr~combout\(2),
	combout => \value~181_combout\);

-- Location: LCCOMB_X26_Y19_N10
\value~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~187_combout\ = (\value~36_combout\ & ((\addr~combout\(3) & ((\value~181_combout\))) # (!\addr~combout\(3) & (\value~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~186_combout\,
	datab => \addr~combout\(3),
	datac => \value~181_combout\,
	datad => \value~36_combout\,
	combout => \value~187_combout\);

-- Location: LCCOMB_X23_Y17_N2
\memory~419\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~419_combout\ = (\memory[51][5]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[51][5]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~419_combout\);

-- Location: LCCOMB_X24_Y16_N30
\memory~418\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~418_combout\ = (\memory[50][5]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[50][5]~regout\,
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \memory~418_combout\);

-- Location: LCCOMB_X25_Y18_N26
\memory~420\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~420_combout\ = (\memory[49][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[49][5]~regout\,
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \memory~420_combout\);

-- Location: LCCOMB_X26_Y17_N22
\memory~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~373_combout\ = (\memory[48][5]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \memory[48][5]~regout\,
	combout => \memory~373_combout\);

-- Location: LCCOMB_X25_Y18_N0
\memory~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~370_combout\ = (\memory[47][5]~regout\) # ((!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[47][5]~regout\,
	datad => \mode~combout\(1),
	combout => \memory~370_combout\);

-- Location: LCCOMB_X27_Y18_N14
\memory~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~371_combout\ = (\memory[46][5]~regout\) # ((\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \memory[46][5]~regout\,
	combout => \memory~371_combout\);

-- Location: LCFF_X27_Y18_N15
\memory[45][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~371_combout\,
	sdata => \memory[44][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[45][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[45][5]~regout\);

-- Location: LCFF_X25_Y18_N1
\memory[46][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~370_combout\,
	sdata => \memory[45][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[46][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[46][5]~regout\);

-- Location: LCFF_X26_Y17_N23
\memory[47][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~373_combout\,
	sdata => \memory[46][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[47][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[47][5]~regout\);

-- Location: LCFF_X25_Y18_N27
\memory[48][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~420_combout\,
	sdata => \memory[47][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[48][0]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[48][5]~regout\);

-- Location: LCFF_X24_Y16_N31
\memory[49][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~418_combout\,
	sdata => \memory[48][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[49][0]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[49][5]~regout\);

-- Location: LCFF_X23_Y17_N3
\memory[50][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~419_combout\,
	sdata => \memory[49][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \always~1_combout\,
	ena => \memory[50][0]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[50][5]~regout\);

-- Location: LCCOMB_X23_Y17_N14
\memory~428\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory~428_combout\ = (\mode~combout\(0) & (\memory[50][5]~regout\ & ((\always~1_combout\)))) # (!\mode~combout\(0) & ((\mode~combout\(1)) # ((\memory[50][5]~regout\ & \always~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \memory[50][5]~regout\,
	datac => \mode~combout\(1),
	datad => \always~1_combout\,
	combout => \memory~428_combout\);

-- Location: LCFF_X23_Y17_N15
\memory[51][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \memory~428_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \t_num[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory[51][5]~regout\);

-- Location: LCCOMB_X23_Y17_N8
\value~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~209_combout\ = (\addr~combout\(0) & (\addr~combout\(1))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\memory[50][5]~regout\))) # (!\addr~combout\(1) & (\memory[48][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \memory[48][5]~regout\,
	datad => \memory[50][5]~regout\,
	combout => \value~209_combout\);

-- Location: LCCOMB_X23_Y17_N4
\value~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~210_combout\ = (\value~209_combout\ & (((\memory[51][5]~regout\) # (!\addr~combout\(0))))) # (!\value~209_combout\ & (\memory[49][5]~regout\ & ((\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[49][5]~regout\,
	datab => \memory[51][5]~regout\,
	datac => \value~209_combout\,
	datad => \addr~combout\(0),
	combout => \value~210_combout\);

-- Location: LCCOMB_X25_Y20_N22
\value~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~201_combout\ = (\value~200_combout\ & ((\memory[11][5]~regout\) # ((!\addr~combout\(1))))) # (!\value~200_combout\ & (((\memory[10][5]~regout\ & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~200_combout\,
	datab => \memory[11][5]~regout\,
	datac => \memory[10][5]~regout\,
	datad => \addr~combout\(1),
	combout => \value~201_combout\);

-- Location: LCCOMB_X23_Y22_N12
\value~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~202_combout\ = (\addr~combout\(0) & ((\memory[1][5]~regout\) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\memory[0][5]~regout\ & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \memory[1][5]~regout\,
	datac => \memory[0][5]~regout\,
	datad => \addr~combout\(1),
	combout => \value~202_combout\);

-- Location: LCCOMB_X23_Y21_N10
\value~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~203_combout\ = (\value~202_combout\ & ((\memory[3][5]~regout\) # ((!\addr~combout\(1))))) # (!\value~202_combout\ & (((\memory[2][5]~regout\ & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[3][5]~regout\,
	datab => \value~202_combout\,
	datac => \memory[2][5]~regout\,
	datad => \addr~combout\(1),
	combout => \value~203_combout\);

-- Location: LCCOMB_X21_Y19_N22
\value~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~204_combout\ = (\addr~combout\(2) & (((\addr~combout\(3))))) # (!\addr~combout\(2) & ((\addr~combout\(3) & (\value~201_combout\)) # (!\addr~combout\(3) & ((\value~203_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \value~201_combout\,
	datac => \value~203_combout\,
	datad => \addr~combout\(3),
	combout => \value~204_combout\);

-- Location: LCCOMB_X25_Y21_N24
\value~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~205_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & (\memory[14][5]~regout\)) # (!\addr~combout\(1) & ((\memory[12][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[14][5]~regout\,
	datab => \memory[12][5]~regout\,
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \value~205_combout\);

-- Location: LCCOMB_X25_Y21_N22
\value~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~206_combout\ = (\addr~combout\(0) & ((\value~205_combout\ & (\memory[15][5]~regout\)) # (!\value~205_combout\ & ((\memory[13][5]~regout\))))) # (!\addr~combout\(0) & (((\value~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[15][5]~regout\,
	datab => \memory[13][5]~regout\,
	datac => \addr~combout\(0),
	datad => \value~205_combout\,
	combout => \value~206_combout\);

-- Location: LCCOMB_X21_Y19_N0
\value~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~207_combout\ = (\value~204_combout\ & (((\value~206_combout\) # (!\addr~combout\(2))))) # (!\value~204_combout\ & (\value~199_combout\ & ((\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~199_combout\,
	datab => \value~204_combout\,
	datac => \value~206_combout\,
	datad => \addr~combout\(2),
	combout => \value~207_combout\);

-- Location: LCCOMB_X21_Y17_N18
\value~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~190_combout\ = (\addr~combout\(2) & (((\addr~combout\(3))))) # (!\addr~combout\(2) & ((\addr~combout\(3) & (\memory[25][5]~regout\)) # (!\addr~combout\(3) & ((\memory[17][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[25][5]~regout\,
	datab => \addr~combout\(2),
	datac => \memory[17][5]~regout\,
	datad => \addr~combout\(3),
	combout => \value~190_combout\);

-- Location: LCCOMB_X21_Y17_N8
\value~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~191_combout\ = (\addr~combout\(2) & ((\value~190_combout\ & ((\memory[29][5]~regout\))) # (!\value~190_combout\ & (\memory[21][5]~regout\)))) # (!\addr~combout\(2) & (\value~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \value~190_combout\,
	datac => \memory[21][5]~regout\,
	datad => \memory[29][5]~regout\,
	combout => \value~191_combout\);

-- Location: LCCOMB_X21_Y17_N30
\value~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~194_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\value~191_combout\))) # (!\addr~combout\(0) & (\value~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~193_combout\,
	datab => \value~191_combout\,
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \value~194_combout\);

-- Location: LCCOMB_X21_Y17_N0
\value~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~195_combout\ = (\addr~combout\(2) & (((\addr~combout\(3))))) # (!\addr~combout\(2) & ((\addr~combout\(3) & (\memory[27][5]~regout\)) # (!\addr~combout\(3) & ((\memory[19][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \memory[27][5]~regout\,
	datac => \memory[19][5]~regout\,
	datad => \addr~combout\(3),
	combout => \value~195_combout\);

-- Location: LCCOMB_X21_Y17_N2
\value~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~196_combout\ = (\value~195_combout\ & (((\memory[31][5]~regout\) # (!\addr~combout\(2))))) # (!\value~195_combout\ & (\memory[23][5]~regout\ & (\addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[23][5]~regout\,
	datab => \value~195_combout\,
	datac => \addr~combout\(2),
	datad => \memory[31][5]~regout\,
	combout => \value~196_combout\);

-- Location: LCCOMB_X21_Y17_N4
\value~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~197_combout\ = (\value~194_combout\ & (((\value~196_combout\) # (!\addr~combout\(1))))) # (!\value~194_combout\ & (\value~189_combout\ & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~189_combout\,
	datab => \value~194_combout\,
	datac => \addr~combout\(1),
	datad => \value~196_combout\,
	combout => \value~197_combout\);

-- Location: LCCOMB_X20_Y19_N24
\value~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~208_combout\ = (!\addr~combout\(5) & ((\addr~combout\(4) & ((\value~197_combout\))) # (!\addr~combout\(4) & (\value~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \addr~combout\(5),
	datac => \value~207_combout\,
	datad => \value~197_combout\,
	combout => \value~208_combout\);

-- Location: LCCOMB_X20_Y19_N22
\value~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \value~211_combout\ = (\value~187_combout\) # ((\value~208_combout\) # ((\value~210_combout\ & \value~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \value~187_combout\,
	datab => \value~210_combout\,
	datac => \value~208_combout\,
	datad => \value~34_combout\,
	combout => \value~211_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\full~I\ : cycloneii_io
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
	datain => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_full);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\empty~I\ : cycloneii_io
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
	datain => \Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_empty);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[0]~I\ : cycloneii_io
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
	datain => t_num(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(0));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[1]~I\ : cycloneii_io
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
	datain => t_num(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[2]~I\ : cycloneii_io
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
	datain => t_num(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[3]~I\ : cycloneii_io
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
	datain => t_num(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(3));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[4]~I\ : cycloneii_io
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
	datain => t_num(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(4));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[5]~I\ : cycloneii_io
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
	datain => t_num(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(5));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[0]~I\ : cycloneii_io
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
	datain => \value~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(0));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[1]~I\ : cycloneii_io
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
	datain => \value~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[2]~I\ : cycloneii_io
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
	datain => \value~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[3]~I\ : cycloneii_io
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
	datain => \value~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(3));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[4]~I\ : cycloneii_io
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
	datain => \value~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(4));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[5]~I\ : cycloneii_io
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
	datain => \value~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(5));
END structure;


