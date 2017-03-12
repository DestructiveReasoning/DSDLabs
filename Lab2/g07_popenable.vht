-- Written by Harley Wiltzer and Spiros-Daniel Mavroidakos
-- Not written by Intel

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;

ENTITY g07_popenable_vhd_tst IS
END g07_popenable_vhd_tst;
ARCHITECTURE g07_popenable_arch OF g07_popenable_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL S : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL P : STD_LOGIC_VECTOR(51 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
COMPONENT g07_popenable
	PORT (
	SEL : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	CLK: IN STD_LOGIC;
	POP : OUT STD_LOGIC_VECTOR(51 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g07_popenable
	PORT MAP (
-- list connections between master ports and signals
	SEL => S,
	CLK => CLK,
	POP => P
	);
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
CLK <= '0';
WAIT FOR 5ns;
for i in 0 to 63 loop
	CLK <= not CLK;
	WAIT FOR 5ns;
	CLK <= not CLK;
	WAIT FOR 5ns;
	S <= std_logic_vector(to_unsigned(i,6));
	WAIT FOR 100ns;
END LOOP;
WAIT;                                                        
END PROCESS always;                                          
END g07_popenable_arch;
