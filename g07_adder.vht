-- Written by Harley Wiltzer and Spiros-Daniel Mavroidakos
-- Not written by Intel

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;

ENTITY g07_adder_vhd_tst IS
END g07_adder_vhd_tst;
ARCHITECTURE g07_adder_arch OF g07_adder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL SUB : STD_LOGIC;
COMPONENT g07_adder
	PORT (
	A : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	SUB : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g07_adder
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	S => S,
	B => B,
	SUB => SUB
	);
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
	SUB <= '0';

	A <= "111111111";
	WAIT FOR 5ns;
	B <= "111111111";
	WAIT FOR 15ns;

	A <= "000000000";
	WAIT FOR 5ns;
	B <= "000000000";
	WAIT FOR 15ns;

	A <= "000111111"; --63
	WAIT FOR 5ns;
	B <= "000111111"; --63
	WAIT FOR 15ns;
	-- Output should be 126 = 1111110

	A <= "000111111"; --63
	WAIT FOR 5ns;
	B <= "000101101"; --45
	WAIT FOR 15ns;
	-- Output should be 109 = 01101100
	

	A <= "000101010"; --42
	WAIT FOR 5ns;
	B <= "000011010"; --26
	WAIT FOR 5ns;

	SUB <= '1';

--	for i in 0 to 63 loop
--		A <= std_logic_vector(to_unsigned(i,6));
--		for j in 0 to 63 loop
--			B <= std_logic_vector(to_unsigned(j,6));
--			WAIT FOR 10 ns;
--		END LOOP;
--	END LOOP;
WAIT;                                                        
END PROCESS always;                                          
END g07_adder_arch;
