import System.IO

generatePorts :: Integer -> String -> String
generatePorts (-2) s = s ++ "\t\tONES: OUT STD_LOGIC_VECTOR(51 downto 0)"
generatePorts (-1) s = 
    generatePorts (-2) $ s ++ "\t\tZERO: OUT STD_LOGIC_VECTOR(51 downto 0);\n"
generatePorts n s = 
    generatePorts (n-1) $ s ++ "\t\tO" ++ (show n) ++ ": OUT STD_LOGIC_VECTOR(5 downto 0);\n"

generateLogic :: Integer -> String -> String
generateLogic (-2) s = s ++ "\t\tONES <= X\"FFFFFFFFFFFFF\";\n"
generateLogic (-1) s = 
    generateLogic (-2) $ s ++ "\t\tZERO <= X\"0000000000000\";\n"
generateLogic n s = 
    generateLogic (n-1) $ s++"\t\tO"++(show n)++" <= STD_LOGIC_VECTOR (to_unsigned("++(show n)++",6));\n"

main = do
    fh <- openFile "generator.vhdl" WriteMode
    hPutStrLn fh $ "library ieee;\nuse ieee.std_logic_1164.all;\nuse ieee.numeric_std.all;\n"
    hPutStrLn fh $ "entity g07_generator is"
    hPutStrLn fh $ "\tport ("
    hPutStrLn fh $ (generatePorts 51 "") ++ ");";
    hPutStrLn fh $ "end g07_generator;"
    hPutStrLn fh $ "\narchitecture behavior of g07_generator is"
    hPutStrLn fh $ "begin"
    hPutStrLn fh $ generateLogic 51 ""
    hPutStrLn fh $ "end behavior;"
    hClose fh
