-- Written by Harley Wiltzer and Spiros-Daniel Mavroidakos
-- Not written by Intel

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;

ENTITY g07_RANDU_vhd_tst IS
END g07_RANDU_vhd_tst;
ARCHITECTURE g07_RANDU_arch OF g07_RANDU_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT g07_RANDU
	PORT (
	SEED : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	RAND : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g07_RANDU
	PORT MAP (
-- list connections between master ports and signals
	SEED => A,
	RAND => R
	);
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
	A <= "00000000000000000000000000000001";
	WAIT FOR 5ns;
	A <= R;
	WAIT FOR 5ns;
	A <= R;
	WAIT FOR 5ns;
	A <= R;
	WAIT FOR 5ns;
	A <= R;
WAIT;                                                        
END PROCESS always;                                          
END g07_RANDU_arch;
