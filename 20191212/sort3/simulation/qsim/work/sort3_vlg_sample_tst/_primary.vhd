library verilog;
use verilog.vl_types.all;
entity sort3_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in_d            : in     vl_logic;
        num1            : in     vl_logic_vector(7 downto 0);
        num2            : in     vl_logic_vector(7 downto 0);
        num3            : in     vl_logic_vector(7 downto 0);
        num4            : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sort3_vlg_sample_tst;
