library verilog;
use verilog.vl_types.all;
entity N4 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        row             : out    vl_logic_vector(2 downto 0);
        col             : out    vl_logic_vector(2 downto 0);
        row_time        : out    vl_logic_vector(5 downto 0);
        col_time        : out    vl_logic_vector(5 downto 0)
    );
end N4;
