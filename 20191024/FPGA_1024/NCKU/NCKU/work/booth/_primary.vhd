library verilog;
use verilog.vl_types.all;
entity booth is
    generic(
        width           : integer := 6
    );
    port(
        \out\           : out    vl_logic_vector;
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end booth;
