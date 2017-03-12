library verilog;
use verilog.vl_types.all;
entity g07_stack is
    port(
        FULL            : out    vl_logic;
        NUM             : out    vl_logic_vector(5 downto 0);
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        MODE            : in     vl_logic_vector(1 downto 0);
        EMPTY           : out    vl_logic;
        ENABLE          : in     vl_logic;
        VALUE           : out    vl_logic_vector(5 downto 0);
        ADDR            : in     vl_logic_vector(5 downto 0);
        DATA            : in     vl_logic_vector(5 downto 0)
    );
end g07_stack;
