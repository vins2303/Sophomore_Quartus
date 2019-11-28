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

-- DATE "10/17/2019 14:41:38"

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

ENTITY 	N4 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	row : OUT std_logic_vector(5 DOWNTO 0);
	col : OUT std_logic_vector(5 DOWNTO 0);
	state : OUT std_logic_vector(2 DOWNTO 0)
	);
END N4;

-- Design Ports Information
-- row[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[4]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF N4 IS
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
SIGNAL ww_row : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_col : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \row~9_combout\ : std_logic;
SIGNAL \row~11_combout\ : std_logic;
SIGNAL \col[0]~5_combout\ : std_logic;
SIGNAL \col~6_combout\ : std_logic;
SIGNAL \col~13_combout\ : std_logic;
SIGNAL \state[0]~2_combout\ : std_logic;
SIGNAL \col[0]~17_combout\ : std_logic;
SIGNAL \state[1]~8_combout\ : std_logic;
SIGNAL \state[2]~10_combout\ : std_logic;
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \row[3]~output_o\ : std_logic;
SIGNAL \row[4]~output_o\ : std_logic;
SIGNAL \row[5]~output_o\ : std_logic;
SIGNAL \col[0]~output_o\ : std_logic;
SIGNAL \col[1]~output_o\ : std_logic;
SIGNAL \col[2]~output_o\ : std_logic;
SIGNAL \col[3]~output_o\ : std_logic;
SIGNAL \col[4]~output_o\ : std_logic;
SIGNAL \col[5]~output_o\ : std_logic;
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state[1]~7_combout\ : std_logic;
SIGNAL \state[0]~5_combout\ : std_logic;
SIGNAL \state[1]~9_combout\ : std_logic;
SIGNAL \state[1]~reg0_q\ : std_logic;
SIGNAL \row~16_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \col~7_combout\ : std_logic;
SIGNAL \col[0]~4_combout\ : std_logic;
SIGNAL \col[0]~8_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \state[0]~6_combout\ : std_logic;
SIGNAL \state[0]~reg0_q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \row~13_combout\ : std_logic;
SIGNAL \row~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \col~16_combout\ : std_logic;
SIGNAL \col[5]~reg0_q\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \col~15_combout\ : std_logic;
SIGNAL \col[4]~reg0_q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \col[0]~2_combout\ : std_logic;
SIGNAL \col[0]~3_combout\ : std_logic;
SIGNAL \row[0]~8_combout\ : std_logic;
SIGNAL \row[3]~reg0_q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \row~14_combout\ : std_logic;
SIGNAL \row[4]~reg0_q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \row~15_combout\ : std_logic;
SIGNAL \row[5]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \state[0]~0_combout\ : std_logic;
SIGNAL \row~18_combout\ : std_logic;
SIGNAL \row~12_combout\ : std_logic;
SIGNAL \row[2]~reg0_q\ : std_logic;
SIGNAL \col[0]~9_combout\ : std_logic;
SIGNAL \col[0]~10_combout\ : std_logic;
SIGNAL \col[0]~reg0_q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \col~14_combout\ : std_logic;
SIGNAL \col[3]~reg0_q\ : std_logic;
SIGNAL \row[0]~7_combout\ : std_logic;
SIGNAL \row[0]~17_combout\ : std_logic;
SIGNAL \col[0]~18_combout\ : std_logic;
SIGNAL \col~11_combout\ : std_logic;
SIGNAL \col[1]~reg0_q\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \state[0]~3_combout\ : std_logic;
SIGNAL \state[0]~4_combout\ : std_logic;
SIGNAL \state[2]~11_combout\ : std_logic;
SIGNAL \state[2]~12_combout\ : std_logic;
SIGNAL \state[2]~reg0_q\ : std_logic;
SIGNAL \state[0]~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \row~4_combout\ : std_logic;
SIGNAL \row~5_combout\ : std_logic;
SIGNAL \row[0]~reg0_q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \row~10_combout\ : std_logic;
SIGNAL \row[1]~reg0_q\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \col~12_combout\ : std_logic;
SIGNAL \col[2]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
row <= ww_row;
col <= ww_col;
state <= ww_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X25_Y13_N16
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\col[1]~reg0_q\ & (\Add1~1\ & VCC)) # (!\col[1]~reg0_q\ & (!\Add1~1\))
-- \Add1~3\ = CARRY((!\col[1]~reg0_q\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \col[1]~reg0_q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X25_Y13_N0
\row~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~9_combout\ = (!\state[0]~reg0_q\ & ((\state[2]~reg0_q\) # (!\state[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~reg0_q\,
	datab => \state[1]~reg0_q\,
	datad => \state[2]~reg0_q\,
	combout => \row~9_combout\);

-- Location: LCCOMB_X27_Y13_N20
\row~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~11_combout\ = (!\state[0]~reg0_q\ & !\state[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state[0]~reg0_q\,
	datad => \state[1]~reg0_q\,
	combout => \row~11_combout\);

-- Location: LCCOMB_X27_Y13_N30
\col[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col[0]~5_combout\ = (\reset~input_o\ & !\state[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state[1]~reg0_q\,
	combout => \col[0]~5_combout\);

-- Location: LCCOMB_X25_Y13_N26
\col~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col~6_combout\ = (!\state[0]~reg0_q\ & (\reset~input_o\ & ((\state[1]~reg0_q\) # (\state[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datab => \state[0]~reg0_q\,
	datac => \reset~input_o\,
	datad => \state[2]~reg0_q\,
	combout => \col~6_combout\);

-- Location: LCCOMB_X24_Y13_N16
\col~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col~13_combout\ = (\reset~input_o\ & !\state[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state[0]~reg0_q\,
	combout => \col~13_combout\);

-- Location: LCCOMB_X24_Y13_N10
\state[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[0]~2_combout\ = \state[0]~reg0_q\ $ (((!\state[2]~reg0_q\) # (!\state[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[0]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \state[2]~reg0_q\,
	combout => \state[0]~2_combout\);

-- Location: LCCOMB_X24_Y13_N12
\col[0]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col[0]~17_combout\ = (\reset~input_o\ & (\state[1]~reg0_q\ & \state[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \col[0]~17_combout\);

-- Location: LCCOMB_X24_Y13_N6
\state[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[1]~8_combout\ = (!\state[2]~reg0_q\ & (\state[0]~reg0_q\ $ (\state[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[0]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \state[2]~reg0_q\,
	combout => \state[1]~8_combout\);

-- Location: LCCOMB_X24_Y13_N20
\state[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[2]~10_combout\ = (\state[1]~reg0_q\ & \state[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \state[2]~10_combout\);

-- Location: IOOBUF_X20_Y0_N2
\row[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[0]~reg0_q\,
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\row[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[1]~reg0_q\,
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\row[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[2]~reg0_q\,
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\row[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[3]~reg0_q\,
	devoe => ww_devoe,
	o => \row[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\row[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[4]~reg0_q\,
	devoe => ww_devoe,
	o => \row[4]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\row[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[5]~reg0_q\,
	devoe => ww_devoe,
	o => \row[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\col[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col[0]~reg0_q\,
	devoe => ww_devoe,
	o => \col[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\col[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col[1]~reg0_q\,
	devoe => ww_devoe,
	o => \col[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\col[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col[2]~reg0_q\,
	devoe => ww_devoe,
	o => \col[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\col[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col[3]~reg0_q\,
	devoe => ww_devoe,
	o => \col[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\col[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col[4]~reg0_q\,
	devoe => ww_devoe,
	o => \col[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\col[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col[5]~reg0_q\,
	devoe => ww_devoe,
	o => \col[5]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOIBUF_X33_Y14_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X24_Y13_N0
\state[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[1]~7_combout\ = (\state[1]~reg0_q\ & ((\row~6_combout\) # ((\state[0]~1_combout\) # (\state[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row~6_combout\,
	datab => \state[1]~reg0_q\,
	datac => \state[0]~1_combout\,
	datad => \state[0]~4_combout\,
	combout => \state[1]~7_combout\);

-- Location: LCCOMB_X24_Y13_N2
\state[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[0]~5_combout\ = (\state[0]~1_combout\) # (\state[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state[0]~1_combout\,
	datad => \state[0]~4_combout\,
	combout => \state[0]~5_combout\);

-- Location: LCCOMB_X24_Y13_N22
\state[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[1]~9_combout\ = (\state[1]~7_combout\) # ((\state[1]~8_combout\ & (\reset~input_o\ & !\state[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~8_combout\,
	datab => \state[1]~7_combout\,
	datac => \reset~input_o\,
	datad => \state[0]~5_combout\,
	combout => \state[1]~9_combout\);

-- Location: FF_X24_Y13_N23
\state[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[1]~reg0_q\);

-- Location: LCCOMB_X25_Y13_N28
\row~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~16_combout\ = (\state[1]~reg0_q\ & !\state[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[1]~reg0_q\,
	datad => \state[2]~reg0_q\,
	combout => \row~16_combout\);

-- Location: LCCOMB_X25_Y13_N14
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \col[0]~reg0_q\ $ (VCC)
-- \Add1~1\ = CARRY(\col[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \col[0]~reg0_q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X26_Y13_N14
\col~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col~7_combout\ = (\col[0]~18_combout\ & ((\Add1~0_combout\))) # (!\col[0]~18_combout\ & (\col~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col~6_combout\,
	datac => \col[0]~18_combout\,
	datad => \Add1~0_combout\,
	combout => \col~7_combout\);

-- Location: LCCOMB_X24_Y13_N14
\col[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col[0]~4_combout\ = (\reset~input_o\ & (!\state[1]~reg0_q\ & !\state[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \state[1]~reg0_q\,
	datad => \state[2]~reg0_q\,
	combout => \col[0]~4_combout\);

-- Location: LCCOMB_X27_Y13_N4
\col[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col[0]~8_combout\ = (\reset~input_o\ & (\state[1]~reg0_q\ & \state[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \state[1]~reg0_q\,
	datad => \state[2]~reg0_q\,
	combout => \col[0]~8_combout\);

-- Location: LCCOMB_X27_Y13_N6
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \row[0]~reg0_q\ $ (VCC)
-- \Add0~1\ = CARRY(\row[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~reg0_q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X27_Y13_N8
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\row[1]~reg0_q\ & (\Add0~1\ & VCC)) # (!\row[1]~reg0_q\ & (!\Add0~1\))
-- \Add0~3\ = CARRY((!\row[1]~reg0_q\ & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X27_Y13_N10
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\row[2]~reg0_q\ & ((GND) # (!\Add0~3\))) # (!\row[2]~reg0_q\ & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((\row[2]~reg0_q\) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \row[2]~reg0_q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X24_Y13_N28
\state[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[0]~6_combout\ = (\state[0]~5_combout\ & (((\state[0]~reg0_q\)))) # (!\state[0]~5_combout\ & (\state[0]~2_combout\ & (\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~2_combout\,
	datab => \reset~input_o\,
	datac => \state[0]~reg0_q\,
	datad => \state[0]~5_combout\,
	combout => \state[0]~6_combout\);

-- Location: FF_X24_Y13_N29
\state[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[0]~reg0_q\);

-- Location: LCCOMB_X27_Y13_N12
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\row[3]~reg0_q\ & (\Add0~5\ & VCC)) # (!\row[3]~reg0_q\ & (!\Add0~5\))
-- \Add0~7\ = CARRY((!\row[3]~reg0_q\ & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \row[3]~reg0_q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X26_Y13_N18
\row~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~13_combout\ = (\state[0]~1_combout\ & (((\Add0~6_combout\)))) # (!\state[0]~1_combout\ & ((\state[2]~reg0_q\) # ((!\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[2]~reg0_q\,
	datab => \Add0~6_combout\,
	datac => \reset~input_o\,
	datad => \state[0]~1_combout\,
	combout => \row~13_combout\);

-- Location: LCCOMB_X25_Y13_N6
\row~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~6_combout\ = (\reset~input_o\ & \state[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state[2]~reg0_q\,
	combout => \row~6_combout\);

-- Location: LCCOMB_X25_Y13_N20
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\col[3]~reg0_q\ & (\Add1~5\ & VCC)) # (!\col[3]~reg0_q\ & (!\Add1~5\))
-- \Add1~7\ = CARRY((!\col[3]~reg0_q\ & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \col[3]~reg0_q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y13_N22
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\col[4]~reg0_q\ & ((GND) # (!\Add1~7\))) # (!\col[4]~reg0_q\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((\col[4]~reg0_q\) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \col[4]~reg0_q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X25_Y13_N24
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (!\col[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \col[5]~reg0_q\,
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X25_Y13_N8
\col~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col~16_combout\ = (\col[0]~4_combout\ & ((\state[0]~reg0_q\) # ((\Add1~10_combout\ & \col[0]~18_combout\)))) # (!\col[0]~4_combout\ & (\Add1~10_combout\ & ((\col[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[0]~4_combout\,
	datab => \Add1~10_combout\,
	datac => \state[0]~reg0_q\,
	datad => \col[0]~18_combout\,
	combout => \col~16_combout\);

-- Location: FF_X25_Y13_N9
\col[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col~16_combout\,
	ena => \col[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col[5]~reg0_q\);

-- Location: LCCOMB_X26_Y13_N30
\col~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col~15_combout\ = (\col~13_combout\ & ((\row~16_combout\) # ((\col[0]~18_combout\ & \Add1~8_combout\)))) # (!\col~13_combout\ & (((\col[0]~18_combout\ & \Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col~13_combout\,
	datab => \row~16_combout\,
	datac => \col[0]~18_combout\,
	datad => \Add1~8_combout\,
	combout => \col~15_combout\);

-- Location: FF_X26_Y13_N31
\col[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col~15_combout\,
	ena => \col[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col[4]~reg0_q\);

-- Location: LCCOMB_X25_Y13_N12
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\col[5]~reg0_q\ & (!\col[4]~reg0_q\ & !\col[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \col[5]~reg0_q\,
	datac => \col[4]~reg0_q\,
	datad => \col[3]~reg0_q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\col[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col[0]~2_combout\ = (\col[2]~reg0_q\ & (\col[1]~reg0_q\ & (\col[0]~reg0_q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[2]~reg0_q\,
	datab => \col[1]~reg0_q\,
	datac => \col[0]~reg0_q\,
	datad => \Equal2~0_combout\,
	combout => \col[0]~2_combout\);

-- Location: LCCOMB_X26_Y13_N2
\col[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col[0]~3_combout\ = (\reset~input_o\ & (\state[0]~reg0_q\ & (\state[1]~reg0_q\ & !\col[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state[0]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \col[0]~2_combout\,
	combout => \col[0]~3_combout\);

-- Location: LCCOMB_X26_Y13_N6
\row[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row[0]~8_combout\ = (!\col[0]~3_combout\ & (((!\state[1]~reg0_q\ & !\row[0]~17_combout\)) # (!\row~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datab => \row~6_combout\,
	datac => \row[0]~17_combout\,
	datad => \col[0]~3_combout\,
	combout => \row[0]~8_combout\);

-- Location: FF_X26_Y13_N19
\row[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row~13_combout\,
	ena => \row[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[3]~reg0_q\);

-- Location: LCCOMB_X27_Y13_N14
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\row[4]~reg0_q\ & ((GND) # (!\Add0~7\))) # (!\row[4]~reg0_q\ & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((\row[4]~reg0_q\) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \row[4]~reg0_q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X27_Y13_N0
\row~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~14_combout\ = (\state[0]~1_combout\ & (((\Add0~8_combout\)))) # (!\state[0]~1_combout\ & (((\state[2]~reg0_q\)) # (!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~1_combout\,
	datab => \reset~input_o\,
	datac => \Add0~8_combout\,
	datad => \state[2]~reg0_q\,
	combout => \row~14_combout\);

-- Location: FF_X27_Y13_N1
\row[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row~14_combout\,
	ena => \row[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[4]~reg0_q\);

-- Location: LCCOMB_X27_Y13_N16
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \row[5]~reg0_q\ $ (!\Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \row[5]~reg0_q\,
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X26_Y13_N16
\row~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~15_combout\ = (\row~6_combout\) # ((\col[0]~5_combout\ & (\state[0]~0_combout\ & \Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[0]~5_combout\,
	datab => \row~6_combout\,
	datac => \state[0]~0_combout\,
	datad => \Add0~10_combout\,
	combout => \row~15_combout\);

-- Location: FF_X26_Y13_N17
\row[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row~15_combout\,
	ena => \row[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[5]~reg0_q\);

-- Location: LCCOMB_X27_Y13_N2
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\row[1]~reg0_q\ & (!\row[4]~reg0_q\ & (!\row[5]~reg0_q\ & !\row[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datab => \row[4]~reg0_q\,
	datac => \row[5]~reg0_q\,
	datad => \row[3]~reg0_q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y13_N24
\state[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[0]~0_combout\ = ((\row[0]~reg0_q\ & ((\state[0]~reg0_q\) # (!\row[2]~reg0_q\))) # (!\row[0]~reg0_q\ & ((\row[2]~reg0_q\) # (!\state[0]~reg0_q\)))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~reg0_q\,
	datab => \row[2]~reg0_q\,
	datac => \state[0]~reg0_q\,
	datad => \Equal0~0_combout\,
	combout => \state[0]~0_combout\);

-- Location: LCCOMB_X27_Y13_N22
\row~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~18_combout\ = (\reset~input_o\ & (!\state[2]~reg0_q\ & ((\state[1]~reg0_q\) # (!\state[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datab => \state[0]~0_combout\,
	datac => \reset~input_o\,
	datad => \state[2]~reg0_q\,
	combout => \row~18_combout\);

-- Location: LCCOMB_X26_Y13_N28
\row~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~12_combout\ = (\row~11_combout\ & (((\Add0~4_combout\)) # (!\state[0]~1_combout\))) # (!\row~11_combout\ & (!\row~18_combout\ & ((\Add0~4_combout\) # (!\state[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row~11_combout\,
	datab => \state[0]~1_combout\,
	datac => \Add0~4_combout\,
	datad => \row~18_combout\,
	combout => \row~12_combout\);

-- Location: FF_X26_Y13_N29
\row[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row~12_combout\,
	ena => \row[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[2]~reg0_q\);

-- Location: LCCOMB_X27_Y13_N18
\col[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col[0]~9_combout\ = (\row[0]~reg0_q\ & ((\state[0]~reg0_q\) # ((\row[2]~reg0_q\ & \Equal0~0_combout\)))) # (!\row[0]~reg0_q\ & (\state[0]~reg0_q\ & ((\row[2]~reg0_q\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~reg0_q\,
	datab => \row[2]~reg0_q\,
	datac => \state[0]~reg0_q\,
	datad => \Equal0~0_combout\,
	combout => \col[0]~9_combout\);

-- Location: LCCOMB_X27_Y13_N28
\col[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col[0]~10_combout\ = (!\col[0]~8_combout\ & ((!\col[0]~9_combout\) # (!\col[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \col[0]~4_combout\,
	datac => \col[0]~8_combout\,
	datad => \col[0]~9_combout\,
	combout => \col[0]~10_combout\);

-- Location: FF_X26_Y13_N15
\col[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col~7_combout\,
	ena => \col[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col[0]~reg0_q\);

-- Location: LCCOMB_X25_Y13_N18
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\col[2]~reg0_q\ & ((GND) # (!\Add1~3\))) # (!\col[2]~reg0_q\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((\col[2]~reg0_q\) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \col[2]~reg0_q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X26_Y13_N4
\col~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col~14_combout\ = (\col~13_combout\ & ((\row~16_combout\) # ((\col[0]~18_combout\ & \Add1~6_combout\)))) # (!\col~13_combout\ & (((\col[0]~18_combout\ & \Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col~13_combout\,
	datab => \row~16_combout\,
	datac => \col[0]~18_combout\,
	datad => \Add1~6_combout\,
	combout => \col~14_combout\);

-- Location: FF_X26_Y13_N5
\col[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col~14_combout\,
	ena => \col[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col[3]~reg0_q\);

-- Location: LCCOMB_X26_Y13_N24
\row[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row[0]~7_combout\ = (\col[2]~reg0_q\) # ((\col[1]~reg0_q\ & ((\col[0]~reg0_q\) # (\state[0]~reg0_q\))) # (!\col[1]~reg0_q\ & ((!\state[0]~reg0_q\) # (!\col[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[2]~reg0_q\,
	datab => \col[1]~reg0_q\,
	datac => \col[0]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \row[0]~7_combout\);

-- Location: LCCOMB_X26_Y13_N8
\row[0]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row[0]~17_combout\ = (\col[5]~reg0_q\) # ((\col[3]~reg0_q\) # ((\col[4]~reg0_q\) # (\row[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[5]~reg0_q\,
	datab => \col[3]~reg0_q\,
	datac => \col[4]~reg0_q\,
	datad => \row[0]~7_combout\,
	combout => \row[0]~17_combout\);

-- Location: LCCOMB_X26_Y13_N22
\col[0]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col[0]~18_combout\ = (\state[2]~reg0_q\ & (\reset~input_o\ & (\row[0]~17_combout\))) # (!\state[2]~reg0_q\ & (((\col[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \row[0]~17_combout\,
	datac => \state[2]~reg0_q\,
	datad => \col[0]~3_combout\,
	combout => \col[0]~18_combout\);

-- Location: LCCOMB_X26_Y13_N20
\col~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col~11_combout\ = (\col[0]~18_combout\ & (\Add1~2_combout\)) # (!\col[0]~18_combout\ & (((\reset~input_o\ & \row~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \reset~input_o\,
	datac => \col[0]~18_combout\,
	datad => \row~16_combout\,
	combout => \col~11_combout\);

-- Location: FF_X26_Y13_N21
\col[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col~11_combout\,
	ena => \col[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col[1]~reg0_q\);

-- Location: LCCOMB_X25_Y13_N4
\Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (((!\Equal2~0_combout\) # (!\col[0]~reg0_q\)) # (!\col[1]~reg0_q\)) # (!\col[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[2]~reg0_q\,
	datab => \col[1]~reg0_q\,
	datac => \col[0]~reg0_q\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X25_Y13_N10
\state[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[0]~3_combout\ = (\row~6_combout\ & (!\state[1]~reg0_q\ & ((\row[0]~7_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row~6_combout\,
	datab => \Equal2~0_combout\,
	datac => \state[1]~reg0_q\,
	datad => \row[0]~7_combout\,
	combout => \state[0]~3_combout\);

-- Location: LCCOMB_X25_Y13_N2
\state[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[0]~4_combout\ = (\state[0]~3_combout\) # ((\col[0]~17_combout\ & (!\state[2]~reg0_q\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[0]~17_combout\,
	datab => \state[2]~reg0_q\,
	datac => \Equal2~1_combout\,
	datad => \state[0]~3_combout\,
	combout => \state[0]~4_combout\);

-- Location: LCCOMB_X24_Y13_N18
\state[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[2]~11_combout\ = (\state[2]~10_combout\ & (\reset~input_o\ & (!\state[0]~1_combout\ & !\state[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[2]~10_combout\,
	datab => \reset~input_o\,
	datac => \state[0]~1_combout\,
	datad => \state[0]~4_combout\,
	combout => \state[2]~11_combout\);

-- Location: LCCOMB_X24_Y13_N24
\state[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[2]~12_combout\ = (\state[2]~11_combout\) # ((\state[2]~reg0_q\ & ((\col~13_combout\) # (\state[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col~13_combout\,
	datab => \state[2]~11_combout\,
	datac => \state[2]~reg0_q\,
	datad => \state[0]~5_combout\,
	combout => \state[2]~12_combout\);

-- Location: FF_X24_Y13_N25
\state[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[2]~reg0_q\);

-- Location: LCCOMB_X27_Y13_N26
\state[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[0]~1_combout\ = (!\state[1]~reg0_q\ & (\reset~input_o\ & (!\state[2]~reg0_q\ & \state[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datab => \reset~input_o\,
	datac => \state[2]~reg0_q\,
	datad => \state[0]~0_combout\,
	combout => \state[0]~1_combout\);

-- Location: LCCOMB_X25_Y13_N30
\row~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~4_combout\ = (\state[0]~reg0_q\ & ((\state[2]~reg0_q\) # (!\state[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[2]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \row~4_combout\);

-- Location: LCCOMB_X26_Y13_N12
\row~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~5_combout\ = (\state[0]~1_combout\ & (((\Add0~0_combout\)))) # (!\state[0]~1_combout\ & (\reset~input_o\ & ((\row~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state[0]~1_combout\,
	datac => \Add0~0_combout\,
	datad => \row~4_combout\,
	combout => \row~5_combout\);

-- Location: FF_X26_Y13_N13
\row[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row~5_combout\,
	ena => \row[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[0]~reg0_q\);

-- Location: LCCOMB_X26_Y13_N10
\row~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \row~10_combout\ = (\state[0]~1_combout\ & (((\Add0~2_combout\)))) # (!\state[0]~1_combout\ & ((\row~9_combout\) # ((!\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row~9_combout\,
	datab => \Add0~2_combout\,
	datac => \reset~input_o\,
	datad => \state[0]~1_combout\,
	combout => \row~10_combout\);

-- Location: FF_X26_Y13_N11
\row[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row~10_combout\,
	ena => \row[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[1]~reg0_q\);

-- Location: LCCOMB_X26_Y13_N26
\col~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \col~12_combout\ = (\col[0]~18_combout\ & (((\Add1~4_combout\)))) # (!\col[0]~18_combout\ & (\reset~input_o\ & ((\row~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add1~4_combout\,
	datac => \col[0]~18_combout\,
	datad => \row~16_combout\,
	combout => \col~12_combout\);

-- Location: FF_X26_Y13_N27
\col[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col~12_combout\,
	ena => \col[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col[2]~reg0_q\);

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_row(3) <= \row[3]~output_o\;

ww_row(4) <= \row[4]~output_o\;

ww_row(5) <= \row[5]~output_o\;

ww_col(0) <= \col[0]~output_o\;

ww_col(1) <= \col[1]~output_o\;

ww_col(2) <= \col[2]~output_o\;

ww_col(3) <= \col[3]~output_o\;

ww_col(4) <= \col[4]~output_o\;

ww_col(5) <= \col[5]~output_o\;

ww_state(0) <= \state[0]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(2) <= \state[2]~output_o\;
END structure;


