library verilog;
use verilog.vl_types.all;
entity N3 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        def             : out    vl_logic;
        r               : out    vl_logic_vector(6 downto 0)
    );
end N3;
