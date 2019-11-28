-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/24/2019 15:10:22"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	N1 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	d_vail : IN std_logic;
	data_in : IN std_logic_vector(3 DOWNTO 0);
	crc : OUT std_logic_vector(15 DOWNTO 0)
	);
END N1;

-- Design Ports Information
-- crc[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[9]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[10]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[11]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[13]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc[15]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_vail	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF N1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_d_vail : std_logic;
SIGNAL ww_data_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_crc : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \crc[0]~output_o\ : std_logic;
SIGNAL \crc[1]~output_o\ : std_logic;
SIGNAL \crc[2]~output_o\ : std_logic;
SIGNAL \crc[3]~output_o\ : std_logic;
SIGNAL \crc[4]~output_o\ : std_logic;
SIGNAL \crc[5]~output_o\ : std_logic;
SIGNAL \crc[6]~output_o\ : std_logic;
SIGNAL \crc[7]~output_o\ : std_logic;
SIGNAL \crc[8]~output_o\ : std_logic;
SIGNAL \crc[9]~output_o\ : std_logic;
SIGNAL \crc[10]~output_o\ : std_logic;
SIGNAL \crc[11]~output_o\ : std_logic;
SIGNAL \crc[12]~output_o\ : std_logic;
SIGNAL \crc[13]~output_o\ : std_logic;
SIGNAL \crc[14]~output_o\ : std_logic;
SIGNAL \crc[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \crc12|crc[11]~24_combout\ : std_logic;
SIGNAL \crc12|crc[9]~22_combout\ : std_logic;
SIGNAL \crc12|crc[7]~20_combout\ : std_logic;
SIGNAL \crc12|crc[5]~18_combout\ : std_logic;
SIGNAL \crc12|crc~28_combout\ : std_logic;
SIGNAL \crc12|crc~27_combout\ : std_logic;
SIGNAL \crc12|crc~26_combout\ : std_logic;
SIGNAL \crc12|crc[12]~25_combout\ : std_logic;
SIGNAL \crc12|crc[10]~23_combout\ : std_logic;
SIGNAL \crc12|crc[8]~21_combout\ : std_logic;
SIGNAL \crc12|crc[6]~19_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \crc~0_combout\ : std_logic;
SIGNAL \d_vail~input_o\ : std_logic;
SIGNAL \crc[0]~1_combout\ : std_logic;
SIGNAL \crc[0]~reg0_q\ : std_logic;
SIGNAL \crc12|crc[1]~16_combout\ : std_logic;
SIGNAL \crc[1]~reg0_q\ : std_logic;
SIGNAL \crc~2_combout\ : std_logic;
SIGNAL \crc[2]~reg0_q\ : std_logic;
SIGNAL \crc12|crc[4]~17_combout\ : std_logic;
SIGNAL \crc[3]~reg0_q\ : std_logic;
SIGNAL \crc[4]~reg0_q\ : std_logic;
SIGNAL \crc[5]~reg0_q\ : std_logic;
SIGNAL \crc[6]~reg0_q\ : std_logic;
SIGNAL \crc[7]~reg0_q\ : std_logic;
SIGNAL \crc[8]~reg0_q\ : std_logic;
SIGNAL \crc[9]~reg0_q\ : std_logic;
SIGNAL \crc[10]~reg0_q\ : std_logic;
SIGNAL \crc[11]~reg0_q\ : std_logic;
SIGNAL \crc[12]~reg0_q\ : std_logic;
SIGNAL \crc~3_combout\ : std_logic;
SIGNAL \crc[13]~reg0_q\ : std_logic;
SIGNAL \crc~4_combout\ : std_logic;
SIGNAL \crc[14]~reg0_q\ : std_logic;
SIGNAL \crc~5_combout\ : std_logic;
SIGNAL \crc[15]~reg0_q\ : std_logic;
SIGNAL \crc12|crc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_d_vail <= d_vail;
ww_data_in <= data_in;
crc <= ww_crc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOIBUF_X22_Y0_N1
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOOBUF_X29_Y0_N2
\crc[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[0]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[0]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\crc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[1]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\crc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[2]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[2]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\crc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[3]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\crc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[4]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\crc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[5]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\crc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[6]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\crc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[7]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[7]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\crc[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[8]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[8]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\crc[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[9]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[9]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\crc[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[10]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[10]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\crc[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[11]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[11]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\crc[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[12]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[12]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\crc[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[13]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[13]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\crc[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[14]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[14]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\crc[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc[15]~reg0_q\,
	devoe => ww_devoe,
	o => \crc[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X10_Y0_N8
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X14_Y1_N22
\crc12|crc[11]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[11]~24_combout\ = \crc12|crc~26_combout\ $ (\crc12|crc[12]~25_combout\ $ (\crc12|crc[11]~24_combout\ $ (\data_in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc~26_combout\,
	datab => \crc12|crc[12]~25_combout\,
	datac => \crc12|crc[11]~24_combout\,
	datad => \data_in[3]~input_o\,
	combout => \crc12|crc[11]~24_combout\);

-- Location: LCCOMB_X10_Y2_N30
\crc12|crc[9]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[9]~22_combout\ = \data_in[1]~input_o\ $ (\crc12|crc[11]~24_combout\ $ (\crc12|crc[9]~22_combout\ $ (\crc12|crc[10]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datab => \crc12|crc[11]~24_combout\,
	datac => \crc12|crc[9]~22_combout\,
	datad => \crc12|crc[10]~23_combout\,
	combout => \crc12|crc[9]~22_combout\);

-- Location: LCCOMB_X10_Y2_N18
\crc12|crc[7]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[7]~20_combout\ = \crc12|crc[8]~21_combout\ $ (\crc12|crc[9]~22_combout\ $ (\crc12|crc[7]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc[8]~21_combout\,
	datac => \crc12|crc[9]~22_combout\,
	datad => \crc12|crc[7]~20_combout\,
	combout => \crc12|crc[7]~20_combout\);

-- Location: LCCOMB_X10_Y2_N22
\crc12|crc[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[5]~18_combout\ = \crc12|crc[6]~19_combout\ $ (\crc12|crc[5]~18_combout\ $ (\crc12|crc[7]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc[6]~19_combout\,
	datac => \crc12|crc[5]~18_combout\,
	datad => \crc12|crc[7]~20_combout\,
	combout => \crc12|crc[5]~18_combout\);

-- Location: LCCOMB_X10_Y2_N2
\crc12|crc~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc~28_combout\ = \crc12|crc~28_combout\ $ (\crc12|crc[5]~18_combout\ $ (\crc12|crc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc~28_combout\,
	datac => \crc12|crc[5]~18_combout\,
	datad => \crc12|crc\(2),
	combout => \crc12|crc~28_combout\);

-- Location: LCCOMB_X14_Y1_N12
\crc12|crc~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc~27_combout\ = \crc12|crc~28_combout\ $ (\crc12|crc\(2) $ (\crc12|crc~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc~28_combout\,
	datac => \crc12|crc\(2),
	datad => \crc12|crc~27_combout\,
	combout => \crc12|crc~27_combout\);

-- Location: LCCOMB_X14_Y1_N10
\crc12|crc~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc~26_combout\ = \crc12|crc~26_combout\ $ (\crc12|crc~28_combout\ $ (\crc12|crc~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc~26_combout\,
	datab => \crc12|crc~28_combout\,
	datad => \crc12|crc~27_combout\,
	combout => \crc12|crc~26_combout\);

-- Location: LCCOMB_X14_Y1_N24
\crc12|crc[12]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[12]~25_combout\ = \crc12|crc~27_combout\ $ (\crc12|crc[12]~25_combout\ $ (\crc12|crc~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc~27_combout\,
	datab => \crc12|crc[12]~25_combout\,
	datad => \crc12|crc~26_combout\,
	combout => \crc12|crc[12]~25_combout\);

-- Location: LCCOMB_X14_Y1_N28
\crc12|crc[10]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[10]~23_combout\ = \data_in[2]~input_o\ $ (\crc12|crc[12]~25_combout\ $ (\crc12|crc[11]~24_combout\ $ (\crc12|crc[10]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datab => \crc12|crc[12]~25_combout\,
	datac => \crc12|crc[11]~24_combout\,
	datad => \crc12|crc[10]~23_combout\,
	combout => \crc12|crc[10]~23_combout\);

-- Location: LCCOMB_X10_Y2_N4
\crc12|crc[8]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[8]~21_combout\ = \crc12|crc[9]~22_combout\ $ (\crc12|crc[8]~21_combout\ $ (\data_in[0]~input_o\ $ (\crc12|crc[10]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc[9]~22_combout\,
	datab => \crc12|crc[8]~21_combout\,
	datac => \data_in[0]~input_o\,
	datad => \crc12|crc[10]~23_combout\,
	combout => \crc12|crc[8]~21_combout\);

-- Location: LCCOMB_X10_Y2_N16
\crc12|crc[6]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[6]~19_combout\ = \crc12|crc[6]~19_combout\ $ (\crc12|crc[8]~21_combout\ $ (\crc12|crc[7]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc[6]~19_combout\,
	datac => \crc12|crc[8]~21_combout\,
	datad => \crc12|crc[7]~20_combout\,
	combout => \crc12|crc[6]~19_combout\);

-- Location: LCCOMB_X10_Y2_N0
\crc12|crc[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(2) = \crc12|crc[6]~19_combout\ $ (\crc12|crc[5]~18_combout\ $ (\crc12|crc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc[6]~19_combout\,
	datac => \crc12|crc[5]~18_combout\,
	datad => \crc12|crc\(2),
	combout => \crc12|crc\(2));

-- Location: IOIBUF_X12_Y0_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X14_Y1_N18
\crc~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc~0_combout\ = (\crc12|crc\(2) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \crc12|crc\(2),
	datad => \rst~input_o\,
	combout => \crc~0_combout\);

-- Location: IOIBUF_X14_Y0_N8
\d_vail~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_vail,
	o => \d_vail~input_o\);

-- Location: LCCOMB_X14_Y1_N2
\crc[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc[0]~1_combout\ = (\d_vail~input_o\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \d_vail~input_o\,
	combout => \crc[0]~1_combout\);

-- Location: FF_X14_Y1_N19
\crc[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc~0_combout\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[0]~reg0_q\);

-- Location: LCCOMB_X10_Y2_N8
\crc12|crc[1]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[1]~16_combout\ = \crc12|crc[5]~18_combout\ $ (\crc12|crc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \crc12|crc[5]~18_combout\,
	datad => \crc12|crc\(2),
	combout => \crc12|crc[1]~16_combout\);

-- Location: FF_X10_Y2_N9
\crc[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc[1]~16_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[1]~reg0_q\);

-- Location: LCCOMB_X10_Y2_N20
\crc~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc~2_combout\ = (\rst~input_o\ & (\crc12|crc[5]~18_combout\ $ (\crc12|crc[6]~19_combout\ $ (\crc12|crc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc[5]~18_combout\,
	datab => \crc12|crc[6]~19_combout\,
	datac => \rst~input_o\,
	datad => \crc12|crc\(2),
	combout => \crc~2_combout\);

-- Location: FF_X10_Y2_N21
\crc[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc~2_combout\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[2]~reg0_q\);

-- Location: LCCOMB_X10_Y2_N26
\crc12|crc[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc[4]~17_combout\ = \crc12|crc[7]~20_combout\ $ (\crc12|crc[6]~19_combout\ $ (\crc12|crc[5]~18_combout\ $ (\crc12|crc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc[7]~20_combout\,
	datab => \crc12|crc[6]~19_combout\,
	datac => \crc12|crc[5]~18_combout\,
	datad => \crc12|crc\(2),
	combout => \crc12|crc[4]~17_combout\);

-- Location: FF_X10_Y2_N27
\crc[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc[4]~17_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[3]~reg0_q\);

-- Location: LCCOMB_X10_Y2_N28
\crc12|crc[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(4) = \crc12|crc[5]~18_combout\ $ (\crc12|crc\(2) $ (\crc12|crc[8]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc[5]~18_combout\,
	datab => \crc12|crc\(2),
	datac => \crc12|crc[8]~21_combout\,
	combout => \crc12|crc\(4));

-- Location: FF_X10_Y2_N29
\crc[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc\(4),
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[4]~reg0_q\);

-- Location: LCCOMB_X10_Y2_N6
\crc12|crc[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(5) = \crc12|crc[9]~22_combout\ $ (\crc12|crc[8]~21_combout\ $ (\crc12|crc[5]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc[9]~22_combout\,
	datab => \crc12|crc[8]~21_combout\,
	datac => \crc12|crc[5]~18_combout\,
	combout => \crc12|crc\(5));

-- Location: FF_X10_Y2_N7
\crc[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc\(5),
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[5]~reg0_q\);

-- Location: LCCOMB_X10_Y2_N24
\crc12|crc[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(6) = \crc12|crc[6]~19_combout\ $ (\crc12|crc[9]~22_combout\ $ (\crc12|crc[10]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc[6]~19_combout\,
	datac => \crc12|crc[9]~22_combout\,
	datad => \crc12|crc[10]~23_combout\,
	combout => \crc12|crc\(6));

-- Location: FF_X10_Y2_N25
\crc[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc\(6),
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[6]~reg0_q\);

-- Location: LCCOMB_X10_Y2_N10
\crc12|crc[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(7) = \crc12|crc[7]~20_combout\ $ (\crc12|crc[11]~24_combout\ $ (\crc12|crc[10]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc[7]~20_combout\,
	datac => \crc12|crc[11]~24_combout\,
	datad => \crc12|crc[10]~23_combout\,
	combout => \crc12|crc\(7));

-- Location: FF_X10_Y2_N11
\crc[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc\(7),
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[7]~reg0_q\);

-- Location: LCCOMB_X14_Y1_N16
\crc12|crc[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(8) = \crc12|crc[8]~21_combout\ $ (\crc12|crc[11]~24_combout\ $ (\crc12|crc[12]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc[8]~21_combout\,
	datac => \crc12|crc[11]~24_combout\,
	datad => \crc12|crc[12]~25_combout\,
	combout => \crc12|crc\(8));

-- Location: FF_X14_Y1_N17
\crc[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc\(8),
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[8]~reg0_q\);

-- Location: LCCOMB_X14_Y1_N26
\crc12|crc[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(9) = \crc12|crc~26_combout\ $ (\crc12|crc[9]~22_combout\ $ (\crc12|crc[12]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc~26_combout\,
	datac => \crc12|crc[9]~22_combout\,
	datad => \crc12|crc[12]~25_combout\,
	combout => \crc12|crc\(9));

-- Location: FF_X14_Y1_N27
\crc[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc\(9),
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[9]~reg0_q\);

-- Location: LCCOMB_X14_Y1_N20
\crc12|crc[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(10) = \crc12|crc~27_combout\ $ (\crc12|crc[10]~23_combout\ $ (\crc12|crc~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc~27_combout\,
	datab => \crc12|crc[10]~23_combout\,
	datad => \crc12|crc~26_combout\,
	combout => \crc12|crc\(10));

-- Location: FF_X14_Y1_N21
\crc[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc\(10),
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[10]~reg0_q\);

-- Location: LCCOMB_X14_Y1_N14
\crc12|crc[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(11) = \crc12|crc~27_combout\ $ (\crc12|crc~28_combout\ $ (\crc12|crc[11]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc~27_combout\,
	datab => \crc12|crc~28_combout\,
	datac => \crc12|crc[11]~24_combout\,
	combout => \crc12|crc\(11));

-- Location: FF_X14_Y1_N15
\crc[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc\(11),
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[11]~reg0_q\);

-- Location: LCCOMB_X14_Y1_N8
\crc12|crc[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc12|crc\(12) = \crc12|crc~27_combout\ $ (\crc12|crc~28_combout\ $ (\crc12|crc~26_combout\ $ (\crc12|crc[12]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc12|crc~27_combout\,
	datab => \crc12|crc~28_combout\,
	datac => \crc12|crc~26_combout\,
	datad => \crc12|crc[12]~25_combout\,
	combout => \crc12|crc\(12));

-- Location: FF_X14_Y1_N9
\crc[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc12|crc\(12),
	sclr => \ALT_INV_rst~input_o\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[12]~reg0_q\);

-- Location: LCCOMB_X14_Y1_N4
\crc~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc~3_combout\ = (\rst~input_o\ & \crc12|crc~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \crc12|crc~26_combout\,
	combout => \crc~3_combout\);

-- Location: FF_X14_Y1_N5
\crc[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc~3_combout\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[13]~reg0_q\);

-- Location: LCCOMB_X14_Y1_N6
\crc~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc~4_combout\ = (\rst~input_o\ & \crc12|crc~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \crc12|crc~27_combout\,
	combout => \crc~4_combout\);

-- Location: FF_X14_Y1_N7
\crc[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc~4_combout\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[14]~reg0_q\);

-- Location: LCCOMB_X14_Y1_N0
\crc~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc~5_combout\ = (\crc12|crc~28_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc12|crc~28_combout\,
	datad => \rst~input_o\,
	combout => \crc~5_combout\);

-- Location: FF_X14_Y1_N1
\crc[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc~5_combout\,
	ena => \crc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc[15]~reg0_q\);

ww_crc(0) <= \crc[0]~output_o\;

ww_crc(1) <= \crc[1]~output_o\;

ww_crc(2) <= \crc[2]~output_o\;

ww_crc(3) <= \crc[3]~output_o\;

ww_crc(4) <= \crc[4]~output_o\;

ww_crc(5) <= \crc[5]~output_o\;

ww_crc(6) <= \crc[6]~output_o\;

ww_crc(7) <= \crc[7]~output_o\;

ww_crc(8) <= \crc[8]~output_o\;

ww_crc(9) <= \crc[9]~output_o\;

ww_crc(10) <= \crc[10]~output_o\;

ww_crc(11) <= \crc[11]~output_o\;

ww_crc(12) <= \crc[12]~output_o\;

ww_crc(13) <= \crc[13]~output_o\;

ww_crc(14) <= \crc[14]~output_o\;

ww_crc(15) <= \crc[15]~output_o\;
END structure;


