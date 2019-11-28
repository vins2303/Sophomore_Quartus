library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        sel             : in     vl_logic_vector(1 downto 0);
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        c               : out    vl_logic_vector(7 downto 0)
    );
end ALU;
