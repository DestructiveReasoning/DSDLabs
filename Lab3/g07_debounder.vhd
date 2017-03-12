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

LIBRARY work;

ENTITY g07_debounder IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		BUTTON :  IN  STD_LOGIC;
		PULSE :  OUT  STD_LOGIC
	);
END g07_debounder;

ARCHITECTURE bdf_type OF g07_debounder IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT lpm_compare_0
	PORT(dataa : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
		 aeb : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF lpm_compare_0: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_compare_0: COMPONENT IS true;

COMPONENT lpm_counter_1
	PORT(clock : IN STD_LOGIC;
		 clk_en : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(20 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_counter_1: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_counter_1: COMPONENT IS true;

SIGNAL	C :  STD_LOGIC;
SIGNAL	S0 :  STD_LOGIC;
SIGNAL	S1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(20 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(0 TO 20);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_15 <= "000000000000000000000";



PROCESS(CLK)
VARIABLE synthesized_var_for_S0 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(CLK)) THEN
	synthesized_var_for_S0 := (NOT(synthesized_var_for_S0) AND SYNTHESIZED_WIRE_22) OR (synthesized_var_for_S0 AND (NOT(SYNTHESIZED_WIRE_1)));
END IF;
	S0 <= synthesized_var_for_S0;
END PROCESS;


SYNTHESIZED_WIRE_22 <= BUTTON AND SYNTHESIZED_WIRE_23 AND SYNTHESIZED_WIRE_24;


SYNTHESIZED_WIRE_25 <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_24 AND S0;


SYNTHESIZED_WIRE_26 <= C AND SYNTHESIZED_WIRE_23 AND S1;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_25 OR SYNTHESIZED_WIRE_26 OR SYNTHESIZED_WIRE_27;


SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_22 OR SYNTHESIZED_WIRE_26 OR SYNTHESIZED_WIRE_27;


PULSE <= S0 AND SYNTHESIZED_WIRE_13;


SYNTHESIZED_WIRE_19 <= NOT(BUTTON);



SYNTHESIZED_WIRE_4 <= NOT(C);



SYNTHESIZED_WIRE_13 <= NOT(S1);



SYNTHESIZED_WIRE_24 <= NOT(S1);



SYNTHESIZED_WIRE_23 <= NOT(S0);



b2v_inst21 : lpm_compare_0
PORT MAP(dataa => SYNTHESIZED_WIRE_14,
		 datab => SYNTHESIZED_WIRE_15,
		 aeb => C);



SYNTHESIZED_WIRE_18 <= S1 XOR S0;


PROCESS(CLK)
VARIABLE synthesized_var_for_S1 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(CLK)) THEN
	synthesized_var_for_S1 := (NOT(synthesized_var_for_S1) AND SYNTHESIZED_WIRE_25) OR (synthesized_var_for_S1 AND (NOT(SYNTHESIZED_WIRE_17)));
END IF;
	S1 <= synthesized_var_for_S1;
END PROCESS;


b2v_inst8 : lpm_counter_1
PORT MAP(clock => CLK,
		 clk_en => SYNTHESIZED_WIRE_18,
		 q => SYNTHESIZED_WIRE_14);


SYNTHESIZED_WIRE_27 <= SYNTHESIZED_WIRE_19 AND SYNTHESIZED_WIRE_23 AND SYNTHESIZED_WIRE_24;


END bdf_type;