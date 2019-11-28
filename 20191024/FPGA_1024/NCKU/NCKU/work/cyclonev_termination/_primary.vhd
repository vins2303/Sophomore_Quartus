library verilog;
use verilog.vl_types.all;
entity cyclonev_termination is
    generic(
        lpm_type        : string  := "cyclonev_termination";
        a_oct_cal_mode  : string  := "a_oct_cal_mode_none";
        a_oct_user_oct  : string  := "a_oct_user_oct_off";
        a_oct_nclrusr_inv: string  := "a_oct_nclrusr_inv_off";
        a_oct_pwrdn     : string  := "a_oct_pwrdn_on";
        a_oct_intosc    : string  := "a_oct_intosc_none";
        a_oct_test_0    : string  := "a_oct_test_0_off";
        a_oct_test_1    : string  := "a_oct_test_1_off";
        a_oct_test_4    : string  := "a_oct_test_4_off";
        a_oct_test_5    : string  := "a_oct_test_5_off";
        a_oct_pllbiasen : string  := "a_oct_pllbiasen_dis";
        a_oct_clkenusr_inv: string  := "a_oct_clkenusr_inv_off";
        a_oct_enserusr_inv: string  := "a_oct_enserusr_inv_off";
        a_oct_scanen_inv: string  := "a_oct_scanen_inv_off";
        a_oct_vrefl     : string  := "a_oct_vrefl_m";
        a_oct_vrefh     : string  := "a_oct_vrefh_m";
        a_oct_rsmult    : string  := "a_oct_rsmult_1";
        a_oct_rsadjust  : string  := "a_oct_rsadjust_none";
        a_oct_calclr    : string  := "a_oct_calclr_off";
        a_oct_rshft_rup : string  := "a_oct_rshft_rup_enable";
        a_oct_rshft_rdn : string  := "a_oct_rshft_rdn_enable";
        a_oct_usermode  : string  := "false"
    );
    port(
        rzqin           : in     vl_logic;
        enserusr        : in     vl_logic;
        nclrusr         : in     vl_logic;
        clkenusr        : in     vl_logic;
        clkusr          : in     vl_logic;
        scanen          : in     vl_logic;
        serdatafromcore : in     vl_logic;
        scanclk         : in     vl_logic;
        otherenser      : in     vl_logic_vector(9 downto 0);
        serdatain       : in     vl_logic;
        serdataout      : out    vl_logic;
        enserout        : out    vl_logic;
        compoutrup      : out    vl_logic;
        compoutrdn      : out    vl_logic;
        serdatatocore   : out    vl_logic;
        scanin          : in     vl_logic;
        scanout         : out    vl_logic;
        clkusrdftout    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of a_oct_cal_mode : constant is 1;
    attribute mti_svvh_generic_type of a_oct_user_oct : constant is 1;
    attribute mti_svvh_generic_type of a_oct_nclrusr_inv : constant is 1;
    attribute mti_svvh_generic_type of a_oct_pwrdn : constant is 1;
    attribute mti_svvh_generic_type of a_oct_intosc : constant is 1;
    attribute mti_svvh_generic_type of a_oct_test_0 : constant is 1;
    attribute mti_svvh_generic_type of a_oct_test_1 : constant is 1;
    attribute mti_svvh_generic_type of a_oct_test_4 : constant is 1;
    attribute mti_svvh_generic_type of a_oct_test_5 : constant is 1;
    attribute mti_svvh_generic_type of a_oct_pllbiasen : constant is 1;
    attribute mti_svvh_generic_type of a_oct_clkenusr_inv : constant is 1;
    attribute mti_svvh_generic_type of a_oct_enserusr_inv : constant is 1;
    attribute mti_svvh_generic_type of a_oct_scanen_inv : constant is 1;
    attribute mti_svvh_generic_type of a_oct_vrefl : constant is 1;
    attribute mti_svvh_generic_type of a_oct_vrefh : constant is 1;
    attribute mti_svvh_generic_type of a_oct_rsmult : constant is 1;
    attribute mti_svvh_generic_type of a_oct_rsadjust : constant is 1;
    attribute mti_svvh_generic_type of a_oct_calclr : constant is 1;
    attribute mti_svvh_generic_type of a_oct_rshft_rup : constant is 1;
    attribute mti_svvh_generic_type of a_oct_rshft_rdn : constant is 1;
    attribute mti_svvh_generic_type of a_oct_usermode : constant is 1;
end cyclonev_termination;