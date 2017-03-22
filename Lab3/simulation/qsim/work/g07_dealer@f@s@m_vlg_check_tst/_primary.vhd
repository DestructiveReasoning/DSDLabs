library verilog;
use verilog.vl_types.all;
entity g07_dealerFSM_vlg_check_tst is
    port(
        rand_enable     : in     vl_logic;
        stack_enable    : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end g07_dealerFSM_vlg_check_tst;
