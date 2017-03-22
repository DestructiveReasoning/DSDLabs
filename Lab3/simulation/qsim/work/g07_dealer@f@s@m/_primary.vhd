library verilog;
use verilog.vl_types.all;
entity g07_dealerFSM is
    port(
        request_deal    : in     vl_logic;
        rand_lt_num     : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        stack_enable    : out    vl_logic;
        rand_enable     : out    vl_logic
    );
end g07_dealerFSM;
