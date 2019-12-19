library verilog;
use verilog.vl_types.all;
entity Sort2 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        in_data         : in     vl_logic_vector(7 downto 0);
        isData          : in     vl_logic;
        out0            : out    vl_logic_vector(7 downto 0);
        out1            : out    vl_logic_vector(7 downto 0);
        out2            : out    vl_logic_vector(7 downto 0);
        out3            : out    vl_logic_vector(7 downto 0)
    );
end Sort2;
