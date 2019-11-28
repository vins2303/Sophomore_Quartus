library verilog;
use verilog.vl_types.all;
entity N4_vlg_check_tst is
    port(
        col             : in     vl_logic_vector(2 downto 0);
        col_time        : in     vl_logic_vector(5 downto 0);
        row             : in     vl_logic_vector(2 downto 0);
        row_time        : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end N4_vlg_check_tst;
