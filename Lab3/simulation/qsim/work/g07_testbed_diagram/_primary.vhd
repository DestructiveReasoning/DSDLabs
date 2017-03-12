library verilog;
use verilog.vl_types.all;
entity g07_testbed_diagram is
    port(
        full            : out    vl_logic;
        button          : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        addr            : in     vl_logic_vector(5 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        empty           : out    vl_logic;
        led1            : out    vl_logic_vector(6 downto 0);
        led2            : out    vl_logic_vector(6 downto 0)
    );
end g07_testbed_diagram;
