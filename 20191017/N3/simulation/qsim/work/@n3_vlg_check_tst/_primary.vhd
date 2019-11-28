library verilog;
use verilog.vl_types.all;
entity N3_vlg_check_tst is
    port(
        def             : in     vl_logic;
        r               : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end N3_vlg_check_tst;
