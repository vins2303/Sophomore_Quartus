library verilog;
use verilog.vl_types.all;
entity N1 is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic;
        \out\           : out    vl_logic;
        reset           : in     vl_logic;
        state           : out    vl_logic_vector(2 downto 0)
    );
end N1;
