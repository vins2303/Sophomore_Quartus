library verilog;
use verilog.vl_types.all;
entity N2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end N2_vlg_sample_tst;
