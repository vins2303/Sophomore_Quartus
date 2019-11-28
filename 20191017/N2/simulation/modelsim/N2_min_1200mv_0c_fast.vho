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

-- DATE "11/06/2019 22:43:11"

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

ENTITY 	N2 IS
    PORT (
	clk : IN std_logic;
	\in\ : IN std_logic;
	\out\ : OUT std_logic;
	rst : IN std_logic
	);
END N2;

-- Design Ports Information
-- out	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF N2 IS
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
SIGNAL \ww_in\ : std_logic;
SIGNAL \ww_out\ : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \in~input_o\ : std_logic;
SIGNAL \out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state.0001~q\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.0010~q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.0011~q\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.0100~q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.0101~q\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.0110~q\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.0111~q\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.1000~q\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.1001~q\ : std_logic;
SIGNAL \out~reg0feeder_combout\ : std_logic;
SIGNAL \out~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
\ww_in\ <= \in\;
\out\ <= \ww_out\;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X24_Y30_N22
\state~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (!\in~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datac => \rst~input_o\,
	combout => \state~25_combout\);

-- Location: IOIBUF_X24_Y31_N8
\in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\,
	o => \in~input_o\);

-- Location: IOOBUF_X22_Y31_N9
\out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~reg0_q\,
	devoe => ww_devoe,
	o => \out~output_o\);

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

-- Location: IOIBUF_X24_Y31_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X24_Y30_N20
\state~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (\state~25_combout\ & (!\state.0111~q\ & (!\state.0011~q\ & !\state.0101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~25_combout\,
	datab => \state.0111~q\,
	datac => \state.0011~q\,
	datad => \state.0101~q\,
	combout => \state~26_combout\);

-- Location: FF_X24_Y30_N21
\state.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.0001~q\);

-- Location: LCCOMB_X24_Y30_N4
\state~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\in~input_o\ & (!\rst~input_o\ & \state.0001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datab => \rst~input_o\,
	datad => \state.0001~q\,
	combout => \state~24_combout\);

-- Location: FF_X24_Y30_N5
\state.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.0010~q\);

-- Location: LCCOMB_X24_Y30_N10
\state~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\state.0111~q\) # ((\state.1001~q\) # ((\state.0010~q\) # (\state.0101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.0111~q\,
	datab => \state.1001~q\,
	datac => \state.0010~q\,
	datad => \state.0101~q\,
	combout => \state~22_combout\);

-- Location: LCCOMB_X24_Y30_N30
\state~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\in~input_o\ & (!\rst~input_o\ & \state~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datac => \rst~input_o\,
	datad => \state~22_combout\,
	combout => \state~23_combout\);

-- Location: FF_X24_Y30_N31
\state.0011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.0011~q\);

-- Location: LCCOMB_X24_Y30_N24
\state~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (!\in~input_o\ & (!\rst~input_o\ & \state.0011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datab => \rst~input_o\,
	datac => \state.0011~q\,
	combout => \state~21_combout\);

-- Location: FF_X24_Y30_N25
\state.0100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.0100~q\);

-- Location: LCCOMB_X24_Y30_N18
\state~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\in~input_o\ & (!\rst~input_o\ & \state.0100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datac => \rst~input_o\,
	datad => \state.0100~q\,
	combout => \state~20_combout\);

-- Location: FF_X24_Y30_N19
\state.0101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.0101~q\);

-- Location: LCCOMB_X24_Y30_N12
\state~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (!\in~input_o\ & (!\rst~input_o\ & \state.0101~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datac => \rst~input_o\,
	datad => \state.0101~q\,
	combout => \state~19_combout\);

-- Location: FF_X24_Y30_N13
\state.0110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.0110~q\);

-- Location: LCCOMB_X24_Y30_N26
\state~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (\in~input_o\ & (!\rst~input_o\ & \state.0110~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datac => \rst~input_o\,
	datad => \state.0110~q\,
	combout => \state~18_combout\);

-- Location: FF_X24_Y30_N27
\state.0111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.0111~q\);

-- Location: LCCOMB_X24_Y30_N28
\state~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (!\in~input_o\ & (!\rst~input_o\ & \state.0111~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datab => \rst~input_o\,
	datad => \state.0111~q\,
	combout => \state~17_combout\);

-- Location: FF_X24_Y30_N29
\state.1000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.1000~q\);

-- Location: LCCOMB_X24_Y30_N14
\state~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\in~input_o\ & (!\rst~input_o\ & \state.1000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datac => \rst~input_o\,
	datad => \state.1000~q\,
	combout => \state~16_combout\);

-- Location: FF_X24_Y30_N15
\state.1001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.1001~q\);

-- Location: LCCOMB_X24_Y30_N16
\out~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out~reg0feeder_combout\ = \state.1001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.1001~q\,
	combout => \out~reg0feeder_combout\);

-- Location: FF_X24_Y30_N17
\out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out~reg0_q\);

\ww_out\ <= \out~output_o\;
END structure;


