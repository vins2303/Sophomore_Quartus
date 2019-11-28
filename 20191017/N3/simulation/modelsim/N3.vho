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

-- DATE "10/17/2019 15:36:39"

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

ENTITY 	N3 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	def : OUT std_logic;
	r : OUT std_logic_vector(6 DOWNTO 0)
	);
END N3;

-- Design Ports Information
-- def	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF N3 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_def : std_logic;
SIGNAL ww_r : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \def~output_o\ : std_logic;
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \r[4]~output_o\ : std_logic;
SIGNAL \r[5]~output_o\ : std_logic;
SIGNAL \r[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \r~3_combout\ : std_logic;
SIGNAL \r[2]~reg0_q\ : std_logic;
SIGNAL \r~4_combout\ : std_logic;
SIGNAL \r[3]~reg0_q\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \r[4]~reg0feeder_combout\ : std_logic;
SIGNAL \r[4]~reg0_q\ : std_logic;
SIGNAL \r~5_combout\ : std_logic;
SIGNAL \r[5]~reg0_q\ : std_logic;
SIGNAL \r~6_combout\ : std_logic;
SIGNAL \r[6]~reg0_q\ : std_logic;
SIGNAL \r~1_combout\ : std_logic;
SIGNAL \r[0]~reg0_q\ : std_logic;
SIGNAL \r~2_combout\ : std_logic;
SIGNAL \r[1]~reg0_q\ : std_logic;
SIGNAL \def~0_combout\ : std_logic;
SIGNAL \def~1_combout\ : std_logic;
SIGNAL \def~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
def <= ww_def;
r <= ww_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X29_Y31_N9
\def~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \def~reg0_q\,
	devoe => ww_devoe,
	o => \def~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\r[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[0]~reg0_q\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\r[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[1]~reg0_q\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\r[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[2]~reg0_q\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\r[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[3]~reg0_q\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\r[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[4]~reg0_q\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\r[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[5]~reg0_q\,
	devoe => ww_devoe,
	o => \r[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\r[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[6]~reg0_q\,
	devoe => ww_devoe,
	o => \r[6]~output_o\);

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

-- Location: IOIBUF_X26_Y31_N1
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X25_Y30_N26
\r~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~3_combout\ = (\r[1]~reg0_q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \r[1]~reg0_q\,
	combout => \r~3_combout\);

-- Location: FF_X25_Y30_N27
\r[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[2]~reg0_q\);

-- Location: LCCOMB_X25_Y30_N16
\r~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~4_combout\ = (\r[2]~reg0_q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \r[2]~reg0_q\,
	combout => \r~4_combout\);

-- Location: FF_X25_Y30_N17
\r[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[3]~reg0_q\);

-- Location: LCCOMB_X25_Y30_N4
\r~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (\reset~input_o\ & \r[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \r[3]~reg0_q\,
	combout => \r~0_combout\);

-- Location: LCCOMB_X25_Y30_N14
\r[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r[4]~reg0feeder_combout\ = \r~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r~0_combout\,
	combout => \r[4]~reg0feeder_combout\);

-- Location: FF_X25_Y30_N15
\r[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[4]~reg0_q\);

-- Location: LCCOMB_X25_Y30_N24
\r~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~5_combout\ = (\r[4]~reg0_q\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[4]~reg0_q\,
	datac => \reset~input_o\,
	combout => \r~5_combout\);

-- Location: FF_X25_Y30_N25
\r[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[5]~reg0_q\);

-- Location: LCCOMB_X25_Y30_N22
\r~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~6_combout\ = (\reset~input_o\ & \r[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \r[5]~reg0_q\,
	combout => \r~6_combout\);

-- Location: FF_X25_Y30_N23
\r[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[6]~reg0_q\);

-- Location: LCCOMB_X25_Y30_N30
\r~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~1_combout\ = (\r[5]~reg0_q\ $ (\r[6]~reg0_q\ $ (\r[4]~reg0_q\))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[5]~reg0_q\,
	datab => \reset~input_o\,
	datac => \r[6]~reg0_q\,
	datad => \r[4]~reg0_q\,
	combout => \r~1_combout\);

-- Location: FF_X25_Y30_N31
\r[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[0]~reg0_q\);

-- Location: LCCOMB_X25_Y30_N28
\r~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~2_combout\ = (\r[0]~reg0_q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \r[0]~reg0_q\,
	combout => \r~2_combout\);

-- Location: FF_X25_Y30_N29
\r[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[1]~reg0_q\);

-- Location: LCCOMB_X25_Y30_N6
\def~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \def~0_combout\ = (!\r[6]~reg0_q\ & (!\r[4]~reg0_q\ & (\r[0]~reg0_q\ & !\r[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[6]~reg0_q\,
	datab => \r[4]~reg0_q\,
	datac => \r[0]~reg0_q\,
	datad => \r[5]~reg0_q\,
	combout => \def~0_combout\);

-- Location: LCCOMB_X25_Y30_N20
\def~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \def~1_combout\ = (\r[2]~reg0_q\ & (\r[1]~reg0_q\ & (\r~0_combout\ & \def~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[2]~reg0_q\,
	datab => \r[1]~reg0_q\,
	datac => \r~0_combout\,
	datad => \def~0_combout\,
	combout => \def~1_combout\);

-- Location: FF_X25_Y30_N21
\def~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \def~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \def~reg0_q\);

ww_def <= \def~output_o\;

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_r(4) <= \r[4]~output_o\;

ww_r(5) <= \r[5]~output_o\;

ww_r(6) <= \r[6]~output_o\;
END structure;


