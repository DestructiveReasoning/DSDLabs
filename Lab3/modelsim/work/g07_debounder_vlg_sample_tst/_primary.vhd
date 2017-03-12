library verilog;
use verilog.vl_types.all;
entity g07_debounder_vlg_sample_tst is
    port(
        BUTTON          : in     vl_logic;
        CLK             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g07_debounder_vlg_sample_tst;
