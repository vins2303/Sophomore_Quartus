library verilog;
use verilog.vl_types.all;
entity sort3_vlg_check_tst is
    port(
        o1              : in     vl_logic_vector(7 downto 0);
        o2              : in     vl_logic_vector(7 downto 0);
        o3              : in     vl_logic_vector(7 downto 0);
        o4              : in     vl_logic_vector(7 downto 0);
        \out\           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end sort3_vlg_check_tst;
