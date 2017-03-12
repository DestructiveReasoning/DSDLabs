library verilog;
use verilog.vl_types.all;
entity g07_debounder is
    port(
        PULSE           : out    vl_logic;
        BUTTON          : in     vl_logic;
        CLK             : in     vl_logic
    );
end g07_debounder;
