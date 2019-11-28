library verilog;
use verilog.vl_types.all;
entity N1_vlg_check_tst is
    port(
        crc             : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end N1_vlg_check_tst;
