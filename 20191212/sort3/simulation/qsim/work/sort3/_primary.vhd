library verilog;
use verilog.vl_types.all;
entity sort3 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        num1            : in     vl_logic_vector(7 downto 0);
        num2            : in     vl_logic_vector(7 downto 0);
        num3            : in     vl_logic_vector(7 downto 0);
        num4            : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(7 downto 0);
        in_d            : in     vl_logic;
        o1              : out    vl_logic_vector(7 downto 0);
        o2              : out    vl_logic_vector(7 downto 0);
        o3              : out    vl_logic_vector(7 downto 0);
        o4              : out    vl_logic_vector(7 downto 0)
    );
end sort3;
