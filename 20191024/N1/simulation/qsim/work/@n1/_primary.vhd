library verilog;
use verilog.vl_types.all;
entity N1 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        d_vail          : in     vl_logic;
        data_in         : in     vl_logic_vector(3 downto 0);
        crc             : out    vl_logic_vector(15 downto 0)
    );
end N1;
