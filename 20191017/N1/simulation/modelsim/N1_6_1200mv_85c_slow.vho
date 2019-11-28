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

-- DATE "11/06/2019 22:25:42"

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
	\in\ : IN std_logic;
	\out\ : OUT std_logic;
	reset : IN std_logic;
	state : OUT std_logic_vector(2 DOWNTO 0)
	);
END N1;

-- Design Ports Information
-- out	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ww_in\ : std_logic;
SIGNAL \ww_out\ : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \out~output_o\ : std_logic;
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
SIGNAL \in~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \state[2]~reg0_q\ : std_logic;
SIGNAL \state~3_combout\ : std_logic;
SIGNAL \state~4_combout\ : std_logic;
SIGNAL \state[1]~reg0_q\ : std_logic;
SIGNAL \state~1_combout\ : std_logic;
SIGNAL \state~2_combout\ : std_logic;
SIGNAL \state[0]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
\ww_in\ <= \in\;
\out\ <= \ww_out\;
ww_reset <= reset;
state <= ww_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

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

-- Location: IOOBUF_X10_Y0_N9
\out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \out~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\state[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state[0]~reg0_q\,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\state[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state[1]~reg0_q\,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\state[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state[2]~reg0_q\,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

-- Location: IOIBUF_X12_Y0_N8
\in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\,
	o => \in~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X11_Y1_N28
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\in~input_o\ & (\state[0]~reg0_q\ $ (((\state[1]~reg0_q\ & \state[2]~reg0_q\))))) # (!\in~input_o\ & ((\state[2]~reg0_q\) # ((\state[1]~reg0_q\ & !\state[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datab => \state[1]~reg0_q\,
	datac => \state[2]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X11_Y1_N4
\state~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~0_combout\ = (!\reset~input_o\ & \Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Mux0~0_combout\,
	combout => \state~0_combout\);

-- Location: FF_X11_Y1_N5
\state[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[2]~reg0_q\);

-- Location: LCCOMB_X11_Y1_N24
\state~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~3_combout\ = (\in~input_o\ & (\state[2]~reg0_q\ $ (\state[1]~reg0_q\ $ (!\state[0]~reg0_q\)))) # (!\in~input_o\ & ((\state[2]~reg0_q\ & ((\state[0]~reg0_q\) # (!\state[1]~reg0_q\))) # (!\state[2]~reg0_q\ & (!\state[1]~reg0_q\ & 
-- \state[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datab => \state[2]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \state~3_combout\);

-- Location: LCCOMB_X11_Y1_N8
\state~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~4_combout\ = (!\reset~input_o\ & \state~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state~3_combout\,
	combout => \state~4_combout\);

-- Location: FF_X11_Y1_N9
\state[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[1]~reg0_q\);

-- Location: LCCOMB_X11_Y1_N18
\state~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~1_combout\ = (\in~input_o\ & (\state[2]~reg0_q\ $ (!\state[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datac => \state[2]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \state~1_combout\);

-- Location: LCCOMB_X11_Y1_N6
\state~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~2_combout\ = (!\reset~input_o\ & ((\state[2]~reg0_q\ & ((\state[1]~reg0_q\) # (!\state~1_combout\))) # (!\state[2]~reg0_q\ & (\state[1]~reg0_q\ $ (\state~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[2]~reg0_q\,
	datab => \reset~input_o\,
	datac => \state[1]~reg0_q\,
	datad => \state~1_combout\,
	combout => \state~2_combout\);

-- Location: FF_X11_Y1_N7
\state[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[0]~reg0_q\);

-- Location: LCCOMB_X11_Y1_N30
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\state[0]~reg0_q\ & (((\in~input_o\ & !\state[2]~reg0_q\)) # (!\state[1]~reg0_q\))) # (!\state[0]~reg0_q\ & (\in~input_o\ $ (\state[1]~reg0_q\ $ (\state[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~input_o\,
	datab => \state[0]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \state[2]~reg0_q\,
	combout => \Mux3~0_combout\);

\ww_out\ <= \out~output_o\;

ww_state(0) <= \state[0]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(2) <= \state[2]~output_o\;
END structure;


