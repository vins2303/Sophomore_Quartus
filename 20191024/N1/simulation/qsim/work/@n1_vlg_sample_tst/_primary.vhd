library verilog;
use verilog.vl_types.all;
entity N1_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d_vail          : in     vl_logic;
        data_in         : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end N1_vlg_sample_tst;
