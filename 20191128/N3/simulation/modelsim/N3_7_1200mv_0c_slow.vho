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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/28/2019 18:49:16"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	N3 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	rw : IN std_logic;
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0);
	KEY0 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	SRAM_DQ : BUFFER std_logic_vector(15 DOWNTO 0);
	SRAM_ADDR : BUFFER std_logic_vector(19 DOWNTO 0);
	SRAM_CE_N : BUFFER std_logic;
	SRAM_OE_N : BUFFER std_logic;
	SRAM_WE_N : BUFFER std_logic;
	SRAM_UE_N : BUFFER std_logic;
	SRAM_LE_N : BUFFER std_logic
	);
END N3;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_CE_N	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_OE_N	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_WE_N	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_UE_N	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_LE_N	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[2]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[8]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[9]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[10]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[11]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[12]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[13]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[14]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[15]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_rw : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SRAM_DQ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SRAM_ADDR : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SRAM_UE_N : std_logic;
SIGNAL ww_SRAM_LE_N : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[0]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[3]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[5]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[8]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[9]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[12]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[15]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[0]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[1]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[2]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[3]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[4]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[5]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[6]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[7]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[8]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[9]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[10]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[11]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[12]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[13]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[14]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[15]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[16]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[17]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[18]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[19]~output_o\ : std_logic;
SIGNAL \SRAM_CE_N~output_o\ : std_logic;
SIGNAL \SRAM_OE_N~output_o\ : std_logic;
SIGNAL \SRAM_WE_N~output_o\ : std_logic;
SIGNAL \SRAM_UE_N~output_o\ : std_logic;
SIGNAL \SRAM_LE_N~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \butke1|count[0]~10_combout\ : std_logic;
SIGNAL \butke1|count[7]~26_combout\ : std_logic;
SIGNAL \butke1|count[0]~11\ : std_logic;
SIGNAL \butke1|count[1]~12_combout\ : std_logic;
SIGNAL \butke1|count[1]~13\ : std_logic;
SIGNAL \butke1|count[2]~14_combout\ : std_logic;
SIGNAL \butke1|count[2]~15\ : std_logic;
SIGNAL \butke1|count[3]~16_combout\ : std_logic;
SIGNAL \butke1|count[3]~17\ : std_logic;
SIGNAL \butke1|count[4]~18_combout\ : std_logic;
SIGNAL \butke1|count[4]~19\ : std_logic;
SIGNAL \butke1|count[5]~20_combout\ : std_logic;
SIGNAL \butke1|LessThan0~1_combout\ : std_logic;
SIGNAL \butke1|count[5]~21\ : std_logic;
SIGNAL \butke1|count[6]~22_combout\ : std_logic;
SIGNAL \butke1|count[6]~23\ : std_logic;
SIGNAL \butke1|count[7]~24_combout\ : std_logic;
SIGNAL \butke1|count[7]~25\ : std_logic;
SIGNAL \butke1|count[8]~27_combout\ : std_logic;
SIGNAL \butke1|count[8]~28\ : std_logic;
SIGNAL \butke1|count[9]~29_combout\ : std_logic;
SIGNAL \butke1|LessThan0~0_combout\ : std_logic;
SIGNAL \butke1|LessThan0~2_combout\ : std_logic;
SIGNAL \butke1|out~0_combout\ : std_logic;
SIGNAL \butke1|out~q\ : std_logic;
SIGNAL \key_pos~feeder_combout\ : std_logic;
SIGNAL \key_pos~q\ : std_logic;
SIGNAL \is_read~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \is_read~q\ : std_logic;
SIGNAL \SRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \out_data~0_combout\ : std_logic;
SIGNAL \out_data[1]~1_combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \SRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \out_data~2_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \SRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \out_data~3_combout\ : std_logic;
SIGNAL \LEDR~2_combout\ : std_logic;
SIGNAL \SRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \out_data~4_combout\ : std_logic;
SIGNAL \LEDR~3_combout\ : std_logic;
SIGNAL \SRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \out_data~5_combout\ : std_logic;
SIGNAL \LEDR~4_combout\ : std_logic;
SIGNAL \SRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \out_data~6_combout\ : std_logic;
SIGNAL \LEDR~5_combout\ : std_logic;
SIGNAL \SRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \out_data~7_combout\ : std_logic;
SIGNAL \LEDR~6_combout\ : std_logic;
SIGNAL \SRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \out_data~8_combout\ : std_logic;
SIGNAL \LEDR~7_combout\ : std_logic;
SIGNAL \Head[0]~20_combout\ : std_logic;
SIGNAL \Head[2]~33\ : std_logic;
SIGNAL \Head[3]~34_combout\ : std_logic;
SIGNAL \Head[3]~35\ : std_logic;
SIGNAL \Head[4]~36_combout\ : std_logic;
SIGNAL \Head[4]~37\ : std_logic;
SIGNAL \Head[5]~38_combout\ : std_logic;
SIGNAL \Head[5]~39\ : std_logic;
SIGNAL \Head[6]~40_combout\ : std_logic;
SIGNAL \Head[6]~41\ : std_logic;
SIGNAL \Head[7]~42_combout\ : std_logic;
SIGNAL \Head[7]~43\ : std_logic;
SIGNAL \Head[8]~44_combout\ : std_logic;
SIGNAL \Head[8]~45\ : std_logic;
SIGNAL \Head[9]~46_combout\ : std_logic;
SIGNAL \Head[9]~47\ : std_logic;
SIGNAL \Head[10]~48_combout\ : std_logic;
SIGNAL \Head[10]~49\ : std_logic;
SIGNAL \Head[11]~50_combout\ : std_logic;
SIGNAL \Head[11]~51\ : std_logic;
SIGNAL \Head[12]~52_combout\ : std_logic;
SIGNAL \Head[12]~53\ : std_logic;
SIGNAL \Head[13]~54_combout\ : std_logic;
SIGNAL \Head[13]~55\ : std_logic;
SIGNAL \Head[14]~56_combout\ : std_logic;
SIGNAL \Head[14]~57\ : std_logic;
SIGNAL \Head[15]~58_combout\ : std_logic;
SIGNAL \Head[15]~59\ : std_logic;
SIGNAL \Head[16]~60_combout\ : std_logic;
SIGNAL \Head[16]~61\ : std_logic;
SIGNAL \Head[17]~62_combout\ : std_logic;
SIGNAL \Head[17]~63\ : std_logic;
SIGNAL \Head[18]~64_combout\ : std_logic;
SIGNAL \Head[19]~27_combout\ : std_logic;
SIGNAL \Head[19]~22_combout\ : std_logic;
SIGNAL \Head[19]~25_combout\ : std_logic;
SIGNAL \Head[19]~23_combout\ : std_logic;
SIGNAL \Head[19]~24_combout\ : std_logic;
SIGNAL \Head[19]~26_combout\ : std_logic;
SIGNAL \Head[18]~65\ : std_logic;
SIGNAL \Head[19]~66_combout\ : std_logic;
SIGNAL \Head[19]~28_combout\ : std_logic;
SIGNAL \Head[19]~29_combout\ : std_logic;
SIGNAL \Head[0]~21\ : std_logic;
SIGNAL \Head[1]~30_combout\ : std_logic;
SIGNAL \Head[1]~31\ : std_logic;
SIGNAL \Head[2]~32_combout\ : std_logic;
SIGNAL \seg1|WideOr6~0_combout\ : std_logic;
SIGNAL \seg1|WideOr5~0_combout\ : std_logic;
SIGNAL \seg1|WideOr4~0_combout\ : std_logic;
SIGNAL \seg1|WideOr3~0_combout\ : std_logic;
SIGNAL \seg1|WideOr2~0_combout\ : std_logic;
SIGNAL \seg1|WideOr1~0_combout\ : std_logic;
SIGNAL \seg1|WideOr0~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR[0]~20_combout\ : std_logic;
SIGNAL \SRAM_ADDR[0]~22_combout\ : std_logic;
SIGNAL \SRAM_ADDR[0]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[0]~21\ : std_logic;
SIGNAL \SRAM_ADDR[1]~23_combout\ : std_logic;
SIGNAL \SRAM_ADDR[1]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[1]~24\ : std_logic;
SIGNAL \SRAM_ADDR[2]~25_combout\ : std_logic;
SIGNAL \SRAM_ADDR[2]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[2]~26\ : std_logic;
SIGNAL \SRAM_ADDR[3]~27_combout\ : std_logic;
SIGNAL \SRAM_ADDR[3]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[3]~28\ : std_logic;
SIGNAL \SRAM_ADDR[4]~29_combout\ : std_logic;
SIGNAL \SRAM_ADDR[4]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[4]~30\ : std_logic;
SIGNAL \SRAM_ADDR[5]~31_combout\ : std_logic;
SIGNAL \SRAM_ADDR[5]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[5]~32\ : std_logic;
SIGNAL \SRAM_ADDR[6]~33_combout\ : std_logic;
SIGNAL \SRAM_ADDR[6]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[6]~34\ : std_logic;
SIGNAL \SRAM_ADDR[7]~35_combout\ : std_logic;
SIGNAL \SRAM_ADDR[7]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[7]~36\ : std_logic;
SIGNAL \SRAM_ADDR[8]~37_combout\ : std_logic;
SIGNAL \SRAM_ADDR[8]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[8]~38\ : std_logic;
SIGNAL \SRAM_ADDR[9]~39_combout\ : std_logic;
SIGNAL \SRAM_ADDR[9]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[9]~40\ : std_logic;
SIGNAL \SRAM_ADDR[10]~41_combout\ : std_logic;
SIGNAL \SRAM_ADDR[10]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[10]~42\ : std_logic;
SIGNAL \SRAM_ADDR[11]~43_combout\ : std_logic;
SIGNAL \SRAM_ADDR[11]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[11]~44\ : std_logic;
SIGNAL \SRAM_ADDR[12]~45_combout\ : std_logic;
SIGNAL \SRAM_ADDR[12]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[12]~46\ : std_logic;
SIGNAL \SRAM_ADDR[13]~47_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[13]~48\ : std_logic;
SIGNAL \SRAM_ADDR[14]~49_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[14]~50\ : std_logic;
SIGNAL \SRAM_ADDR[15]~51_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[15]~52\ : std_logic;
SIGNAL \SRAM_ADDR[16]~53_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[16]~54\ : std_logic;
SIGNAL \SRAM_ADDR[17]~55_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[17]~56\ : std_logic;
SIGNAL \SRAM_ADDR[18]~57_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~reg0_q\ : std_logic;
SIGNAL \SRAM_ADDR[18]~58\ : std_logic;
SIGNAL \SRAM_ADDR[19]~59_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~reg0_q\ : std_logic;
SIGNAL \count[0]~6_combout\ : std_logic;
SIGNAL \count[0]~8_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \count[0]~9_combout\ : std_logic;
SIGNAL \count[0]~7\ : std_logic;
SIGNAL \count[1]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \count[1]~11\ : std_logic;
SIGNAL \count[2]~12_combout\ : std_logic;
SIGNAL \count[2]~13\ : std_logic;
SIGNAL \count[3]~14_combout\ : std_logic;
SIGNAL \count[3]~15\ : std_logic;
SIGNAL \count[4]~16_combout\ : std_logic;
SIGNAL \count[4]~17\ : std_logic;
SIGNAL \count[5]~18_combout\ : std_logic;
SIGNAL \SRAM_CE_N~0_combout\ : std_logic;
SIGNAL \SRAM_CE_N~1_combout\ : std_logic;
SIGNAL \SRAM_CE_N~reg0_q\ : std_logic;
SIGNAL out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(5 DOWNTO 0);
SIGNAL Head : std_logic_vector(19 DOWNTO 0);
SIGNAL \butke1|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_rw~input_o\ : std_logic;
SIGNAL \ALT_INV_count[0]~8_combout\ : std_logic;
SIGNAL \seg1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_rw <= rw;
LEDR <= ww_LEDR;
ww_KEY0 <= KEY0;
ww_SW <= SW;
HEX0 <= ww_HEX0;
SRAM_DQ <= ww_SRAM_DQ;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_WE_N <= ww_SRAM_WE_N;
SRAM_UE_N <= ww_SRAM_UE_N;
SRAM_LE_N <= ww_SRAM_LE_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rw~input_o\ <= NOT \rw~input_o\;
\ALT_INV_count[0]~8_combout\ <= NOT \count[0]~8_combout\;
\seg1|ALT_INV_WideOr0~0_combout\ <= NOT \seg1|WideOr0~0_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X5_Y0_N9
\SRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_DQ[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\SRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_DQ[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\SRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_DQ[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\SRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_DQ[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\SRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_DQ[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\SRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_DQ[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\SRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_DQ[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\SRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	oe => \rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_DQ[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\SRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rw~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\SRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rw~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[9]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\SRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rw~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\SRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rw~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\SRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rw~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\SRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rw~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\SRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rw~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\SRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rw~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[15]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~5_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~7_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\SRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[0]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\SRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[1]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\SRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[2]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\SRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[3]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\SRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[4]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\SRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[5]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\SRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[6]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\SRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[7]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\SRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[8]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\SRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[9]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\SRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[10]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\SRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[11]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\SRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[12]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\SRAM_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[13]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\SRAM_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[14]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\SRAM_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[15]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\SRAM_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[16]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\SRAM_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[17]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\SRAM_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[18]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\SRAM_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[19]~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\SRAM_CE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_CE_N~reg0_q\,
	devoe => ww_devoe,
	o => \SRAM_CE_N~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\SRAM_OE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_OE_N~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\SRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rw~input_o\,
	devoe => ww_devoe,
	o => \SRAM_WE_N~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\SRAM_UE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_UE_N~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\SRAM_LE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_LE_N~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\rw~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw,
	o => \rw~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X115_Y40_N8
\KEY0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: LCCOMB_X33_Y16_N2
\butke1|count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[0]~10_combout\ = \butke1|count\(0) $ (VCC)
-- \butke1|count[0]~11\ = CARRY(\butke1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \butke1|count\(0),
	datad => VCC,
	combout => \butke1|count[0]~10_combout\,
	cout => \butke1|count[0]~11\);

-- Location: LCCOMB_X33_Y16_N22
\butke1|count[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[7]~26_combout\ = (\butke1|out~q\ $ (!\KEY0~input_o\)) # (!\butke1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \butke1|out~q\,
	datac => \KEY0~input_o\,
	datad => \butke1|LessThan0~2_combout\,
	combout => \butke1|count[7]~26_combout\);

-- Location: FF_X33_Y16_N3
\butke1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[0]~10_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(0));

-- Location: LCCOMB_X33_Y16_N4
\butke1|count[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[1]~12_combout\ = (\butke1|count\(1) & (!\butke1|count[0]~11\)) # (!\butke1|count\(1) & ((\butke1|count[0]~11\) # (GND)))
-- \butke1|count[1]~13\ = CARRY((!\butke1|count[0]~11\) # (!\butke1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \butke1|count\(1),
	datad => VCC,
	cin => \butke1|count[0]~11\,
	combout => \butke1|count[1]~12_combout\,
	cout => \butke1|count[1]~13\);

-- Location: FF_X33_Y16_N5
\butke1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[1]~12_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(1));

-- Location: LCCOMB_X33_Y16_N6
\butke1|count[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[2]~14_combout\ = (\butke1|count\(2) & (\butke1|count[1]~13\ $ (GND))) # (!\butke1|count\(2) & (!\butke1|count[1]~13\ & VCC))
-- \butke1|count[2]~15\ = CARRY((\butke1|count\(2) & !\butke1|count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \butke1|count\(2),
	datad => VCC,
	cin => \butke1|count[1]~13\,
	combout => \butke1|count[2]~14_combout\,
	cout => \butke1|count[2]~15\);

-- Location: FF_X33_Y16_N7
\butke1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[2]~14_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(2));

-- Location: LCCOMB_X33_Y16_N8
\butke1|count[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[3]~16_combout\ = (\butke1|count\(3) & (!\butke1|count[2]~15\)) # (!\butke1|count\(3) & ((\butke1|count[2]~15\) # (GND)))
-- \butke1|count[3]~17\ = CARRY((!\butke1|count[2]~15\) # (!\butke1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \butke1|count\(3),
	datad => VCC,
	cin => \butke1|count[2]~15\,
	combout => \butke1|count[3]~16_combout\,
	cout => \butke1|count[3]~17\);

-- Location: FF_X33_Y16_N9
\butke1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[3]~16_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(3));

-- Location: LCCOMB_X33_Y16_N10
\butke1|count[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[4]~18_combout\ = (\butke1|count\(4) & (\butke1|count[3]~17\ $ (GND))) # (!\butke1|count\(4) & (!\butke1|count[3]~17\ & VCC))
-- \butke1|count[4]~19\ = CARRY((\butke1|count\(4) & !\butke1|count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \butke1|count\(4),
	datad => VCC,
	cin => \butke1|count[3]~17\,
	combout => \butke1|count[4]~18_combout\,
	cout => \butke1|count[4]~19\);

-- Location: FF_X33_Y16_N11
\butke1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[4]~18_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(4));

-- Location: LCCOMB_X33_Y16_N12
\butke1|count[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[5]~20_combout\ = (\butke1|count\(5) & (!\butke1|count[4]~19\)) # (!\butke1|count\(5) & ((\butke1|count[4]~19\) # (GND)))
-- \butke1|count[5]~21\ = CARRY((!\butke1|count[4]~19\) # (!\butke1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \butke1|count\(5),
	datad => VCC,
	cin => \butke1|count[4]~19\,
	combout => \butke1|count[5]~20_combout\,
	cout => \butke1|count[5]~21\);

-- Location: FF_X33_Y16_N13
\butke1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[5]~20_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(5));

-- Location: LCCOMB_X33_Y16_N26
\butke1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|LessThan0~1_combout\ = ((!\butke1|count\(2) & (!\butke1|count\(3) & !\butke1|count\(4)))) # (!\butke1|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \butke1|count\(2),
	datab => \butke1|count\(3),
	datac => \butke1|count\(4),
	datad => \butke1|count\(5),
	combout => \butke1|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y16_N14
\butke1|count[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[6]~22_combout\ = (\butke1|count\(6) & (\butke1|count[5]~21\ $ (GND))) # (!\butke1|count\(6) & (!\butke1|count[5]~21\ & VCC))
-- \butke1|count[6]~23\ = CARRY((\butke1|count\(6) & !\butke1|count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \butke1|count\(6),
	datad => VCC,
	cin => \butke1|count[5]~21\,
	combout => \butke1|count[6]~22_combout\,
	cout => \butke1|count[6]~23\);

-- Location: FF_X33_Y16_N15
\butke1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[6]~22_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(6));

-- Location: LCCOMB_X33_Y16_N16
\butke1|count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[7]~24_combout\ = (\butke1|count\(7) & (!\butke1|count[6]~23\)) # (!\butke1|count\(7) & ((\butke1|count[6]~23\) # (GND)))
-- \butke1|count[7]~25\ = CARRY((!\butke1|count[6]~23\) # (!\butke1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \butke1|count\(7),
	datad => VCC,
	cin => \butke1|count[6]~23\,
	combout => \butke1|count[7]~24_combout\,
	cout => \butke1|count[7]~25\);

-- Location: FF_X33_Y16_N17
\butke1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[7]~24_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(7));

-- Location: LCCOMB_X33_Y16_N18
\butke1|count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[8]~27_combout\ = (\butke1|count\(8) & (\butke1|count[7]~25\ $ (GND))) # (!\butke1|count\(8) & (!\butke1|count[7]~25\ & VCC))
-- \butke1|count[8]~28\ = CARRY((\butke1|count\(8) & !\butke1|count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \butke1|count\(8),
	datad => VCC,
	cin => \butke1|count[7]~25\,
	combout => \butke1|count[8]~27_combout\,
	cout => \butke1|count[8]~28\);

-- Location: FF_X33_Y16_N19
\butke1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[8]~27_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(8));

-- Location: LCCOMB_X33_Y16_N20
\butke1|count[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|count[9]~29_combout\ = \butke1|count[8]~28\ $ (\butke1|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \butke1|count\(9),
	cin => \butke1|count[8]~28\,
	combout => \butke1|count[9]~29_combout\);

-- Location: FF_X33_Y16_N21
\butke1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|count[9]~29_combout\,
	sclr => \butke1|count[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|count\(9));

-- Location: LCCOMB_X33_Y16_N28
\butke1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|LessThan0~0_combout\ = (!\butke1|count\(8) & (!\butke1|count\(9) & !\butke1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \butke1|count\(8),
	datac => \butke1|count\(9),
	datad => \butke1|count\(7),
	combout => \butke1|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y16_N0
\butke1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|LessThan0~2_combout\ = (\butke1|LessThan0~0_combout\ & ((\butke1|LessThan0~1_combout\) # (!\butke1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \butke1|LessThan0~1_combout\,
	datac => \butke1|count\(6),
	datad => \butke1|LessThan0~0_combout\,
	combout => \butke1|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y16_N24
\butke1|out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \butke1|out~0_combout\ = (\butke1|LessThan0~2_combout\ & ((\butke1|out~q\))) # (!\butke1|LessThan0~2_combout\ & (\KEY0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datac => \butke1|out~q\,
	datad => \butke1|LessThan0~2_combout\,
	combout => \butke1|out~0_combout\);

-- Location: FF_X33_Y16_N25
\butke1|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \butke1|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butke1|out~q\);

-- Location: LCCOMB_X33_Y16_N30
\key_pos~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_pos~feeder_combout\ = \butke1|out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \butke1|out~q\,
	combout => \key_pos~feeder_combout\);

-- Location: FF_X33_Y16_N31
key_pos : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_pos~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_pos~q\);

-- Location: LCCOMB_X36_Y16_N4
\is_read~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \is_read~0_combout\ = (!\butke1|out~q\ & (!\rw~input_o\ & \key_pos~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \butke1|out~q\,
	datac => \rw~input_o\,
	datad => \key_pos~q\,
	combout => \is_read~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X36_Y16_N5
is_read : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \is_read~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \is_read~q\);

-- Location: IOIBUF_X5_Y0_N8
\SRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(0),
	o => \SRAM_DQ[0]~input_o\);

-- Location: LCCOMB_X36_Y16_N22
\out_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~0_combout\ = (\is_read~q\ & \SRAM_DQ[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_read~q\,
	datac => \SRAM_DQ[0]~input_o\,
	combout => \out_data~0_combout\);

-- Location: LCCOMB_X36_Y16_N28
\out_data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[1]~1_combout\ = (\is_read~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \is_read~q\,
	datad => \reset~input_o\,
	combout => \out_data[1]~1_combout\);

-- Location: FF_X36_Y16_N23
\out_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_data~0_combout\,
	ena => \out_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_data(0));

-- Location: LCCOMB_X36_Y16_N24
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\rw~input_o\ & ((\SW[0]~input_o\))) # (!\rw~input_o\ & (out_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datac => out_data(0),
	datad => \SW[0]~input_o\,
	combout => \LEDR~0_combout\);

-- Location: IOIBUF_X1_Y0_N1
\SRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(1),
	o => \SRAM_DQ[1]~input_o\);

-- Location: LCCOMB_X35_Y16_N24
\out_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~2_combout\ = (\SRAM_DQ[1]~input_o\ & \is_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[1]~input_o\,
	datad => \is_read~q\,
	combout => \out_data~2_combout\);

-- Location: FF_X35_Y16_N25
\out_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_data~2_combout\,
	ena => \out_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_data(1));

-- Location: LCCOMB_X36_Y16_N26
\LEDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\rw~input_o\ & ((\SW[1]~input_o\))) # (!\rw~input_o\ & (out_data(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => out_data(1),
	datac => \SW[1]~input_o\,
	combout => \LEDR~1_combout\);

-- Location: IOIBUF_X9_Y0_N22
\SRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(2),
	o => \SRAM_DQ[2]~input_o\);

-- Location: LCCOMB_X36_Y16_N12
\out_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~3_combout\ = (\is_read~q\ & \SRAM_DQ[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_read~q\,
	datac => \SRAM_DQ[2]~input_o\,
	combout => \out_data~3_combout\);

-- Location: FF_X36_Y16_N13
\out_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_data~3_combout\,
	ena => \out_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_data(2));

-- Location: LCCOMB_X36_Y16_N30
\LEDR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~2_combout\ = (\rw~input_o\ & ((\SW[2]~input_o\))) # (!\rw~input_o\ & (out_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_data(2),
	datac => \rw~input_o\,
	datad => \SW[2]~input_o\,
	combout => \LEDR~2_combout\);

-- Location: IOIBUF_X9_Y0_N15
\SRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(3),
	o => \SRAM_DQ[3]~input_o\);

-- Location: LCCOMB_X36_Y16_N20
\out_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~4_combout\ = (\is_read~q\ & \SRAM_DQ[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_read~q\,
	datac => \SRAM_DQ[3]~input_o\,
	combout => \out_data~4_combout\);

-- Location: FF_X36_Y16_N21
\out_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_data~4_combout\,
	ena => \out_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_data(3));

-- Location: LCCOMB_X36_Y16_N10
\LEDR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~3_combout\ = (\rw~input_o\ & ((\SW[3]~input_o\))) # (!\rw~input_o\ & (out_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => out_data(3),
	datac => \SW[3]~input_o\,
	combout => \LEDR~3_combout\);

-- Location: IOIBUF_X7_Y0_N15
\SRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(4),
	o => \SRAM_DQ[4]~input_o\);

-- Location: LCCOMB_X35_Y16_N14
\out_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~5_combout\ = (\SRAM_DQ[4]~input_o\ & \is_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[4]~input_o\,
	datad => \is_read~q\,
	combout => \out_data~5_combout\);

-- Location: FF_X35_Y16_N15
\out_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_data~5_combout\,
	ena => \out_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_data(4));

-- Location: LCCOMB_X36_Y16_N8
\LEDR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~4_combout\ = (\rw~input_o\ & ((\SW[4]~input_o\))) # (!\rw~input_o\ & (out_data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_data(4),
	datac => \rw~input_o\,
	datad => \SW[4]~input_o\,
	combout => \LEDR~4_combout\);

-- Location: IOIBUF_X11_Y0_N22
\SRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(5),
	o => \SRAM_DQ[5]~input_o\);

-- Location: LCCOMB_X35_Y16_N16
\out_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~6_combout\ = (\SRAM_DQ[5]~input_o\ & \is_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[5]~input_o\,
	datad => \is_read~q\,
	combout => \out_data~6_combout\);

-- Location: FF_X35_Y16_N17
\out_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_data~6_combout\,
	ena => \out_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_data(5));

-- Location: LCCOMB_X36_Y16_N2
\LEDR~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~5_combout\ = (\rw~input_o\ & ((\SW[5]~input_o\))) # (!\rw~input_o\ & (out_data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datac => out_data(5),
	datad => \SW[5]~input_o\,
	combout => \LEDR~5_combout\);

-- Location: IOIBUF_X11_Y0_N15
\SRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(6),
	o => \SRAM_DQ[6]~input_o\);

-- Location: LCCOMB_X35_Y16_N26
\out_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~7_combout\ = (\SRAM_DQ[6]~input_o\ & \is_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[6]~input_o\,
	datad => \is_read~q\,
	combout => \out_data~7_combout\);

-- Location: FF_X35_Y16_N27
\out_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_data~7_combout\,
	ena => \out_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_data(6));

-- Location: LCCOMB_X36_Y16_N0
\LEDR~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~6_combout\ = (\rw~input_o\ & (\SW[6]~input_o\)) # (!\rw~input_o\ & ((out_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => \SW[6]~input_o\,
	datac => out_data(6),
	combout => \LEDR~6_combout\);

-- Location: IOIBUF_X20_Y0_N8
\SRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(7),
	o => \SRAM_DQ[7]~input_o\);

-- Location: LCCOMB_X35_Y16_N12
\out_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~8_combout\ = (\SRAM_DQ[7]~input_o\ & \is_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[7]~input_o\,
	datad => \is_read~q\,
	combout => \out_data~8_combout\);

-- Location: FF_X35_Y16_N13
\out_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_data~8_combout\,
	ena => \out_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_data(7));

-- Location: LCCOMB_X36_Y16_N18
\LEDR~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~7_combout\ = (\rw~input_o\ & ((\SW[7]~input_o\))) # (!\rw~input_o\ & (out_data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_data(7),
	datab => \SW[7]~input_o\,
	datac => \rw~input_o\,
	combout => \LEDR~7_combout\);

-- Location: LCCOMB_X32_Y17_N12
\Head[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[0]~20_combout\ = Head(0) $ (VCC)
-- \Head[0]~21\ = CARRY(Head(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(0),
	datad => VCC,
	combout => \Head[0]~20_combout\,
	cout => \Head[0]~21\);

-- Location: LCCOMB_X32_Y17_N16
\Head[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[2]~32_combout\ = ((\rw~input_o\ $ (Head(2) $ (\Head[1]~31\)))) # (GND)
-- \Head[2]~33\ = CARRY((\rw~input_o\ & (Head(2) & !\Head[1]~31\)) # (!\rw~input_o\ & ((Head(2)) # (!\Head[1]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(2),
	datad => VCC,
	cin => \Head[1]~31\,
	combout => \Head[2]~32_combout\,
	cout => \Head[2]~33\);

-- Location: LCCOMB_X32_Y17_N18
\Head[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[3]~34_combout\ = (\rw~input_o\ & ((Head(3) & (!\Head[2]~33\)) # (!Head(3) & ((\Head[2]~33\) # (GND))))) # (!\rw~input_o\ & ((Head(3) & (\Head[2]~33\ & VCC)) # (!Head(3) & (!\Head[2]~33\))))
-- \Head[3]~35\ = CARRY((\rw~input_o\ & ((!\Head[2]~33\) # (!Head(3)))) # (!\rw~input_o\ & (!Head(3) & !\Head[2]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(3),
	datad => VCC,
	cin => \Head[2]~33\,
	combout => \Head[3]~34_combout\,
	cout => \Head[3]~35\);

-- Location: FF_X32_Y17_N19
\Head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[3]~34_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(3));

-- Location: LCCOMB_X32_Y17_N20
\Head[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[4]~36_combout\ = ((\rw~input_o\ $ (Head(4) $ (\Head[3]~35\)))) # (GND)
-- \Head[4]~37\ = CARRY((\rw~input_o\ & (Head(4) & !\Head[3]~35\)) # (!\rw~input_o\ & ((Head(4)) # (!\Head[3]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(4),
	datad => VCC,
	cin => \Head[3]~35\,
	combout => \Head[4]~36_combout\,
	cout => \Head[4]~37\);

-- Location: FF_X32_Y17_N21
\Head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[4]~36_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(4));

-- Location: LCCOMB_X32_Y17_N22
\Head[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[5]~38_combout\ = (\rw~input_o\ & ((Head(5) & (!\Head[4]~37\)) # (!Head(5) & ((\Head[4]~37\) # (GND))))) # (!\rw~input_o\ & ((Head(5) & (\Head[4]~37\ & VCC)) # (!Head(5) & (!\Head[4]~37\))))
-- \Head[5]~39\ = CARRY((\rw~input_o\ & ((!\Head[4]~37\) # (!Head(5)))) # (!\rw~input_o\ & (!Head(5) & !\Head[4]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(5),
	datad => VCC,
	cin => \Head[4]~37\,
	combout => \Head[5]~38_combout\,
	cout => \Head[5]~39\);

-- Location: FF_X32_Y17_N23
\Head[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[5]~38_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(5));

-- Location: LCCOMB_X32_Y17_N24
\Head[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[6]~40_combout\ = ((\rw~input_o\ $ (Head(6) $ (\Head[5]~39\)))) # (GND)
-- \Head[6]~41\ = CARRY((\rw~input_o\ & (Head(6) & !\Head[5]~39\)) # (!\rw~input_o\ & ((Head(6)) # (!\Head[5]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(6),
	datad => VCC,
	cin => \Head[5]~39\,
	combout => \Head[6]~40_combout\,
	cout => \Head[6]~41\);

-- Location: FF_X32_Y17_N25
\Head[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[6]~40_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(6));

-- Location: LCCOMB_X32_Y17_N26
\Head[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[7]~42_combout\ = (\rw~input_o\ & ((Head(7) & (!\Head[6]~41\)) # (!Head(7) & ((\Head[6]~41\) # (GND))))) # (!\rw~input_o\ & ((Head(7) & (\Head[6]~41\ & VCC)) # (!Head(7) & (!\Head[6]~41\))))
-- \Head[7]~43\ = CARRY((\rw~input_o\ & ((!\Head[6]~41\) # (!Head(7)))) # (!\rw~input_o\ & (!Head(7) & !\Head[6]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(7),
	datad => VCC,
	cin => \Head[6]~41\,
	combout => \Head[7]~42_combout\,
	cout => \Head[7]~43\);

-- Location: FF_X32_Y17_N27
\Head[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[7]~42_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(7));

-- Location: LCCOMB_X32_Y17_N28
\Head[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[8]~44_combout\ = ((\rw~input_o\ $ (Head(8) $ (\Head[7]~43\)))) # (GND)
-- \Head[8]~45\ = CARRY((\rw~input_o\ & (Head(8) & !\Head[7]~43\)) # (!\rw~input_o\ & ((Head(8)) # (!\Head[7]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(8),
	datad => VCC,
	cin => \Head[7]~43\,
	combout => \Head[8]~44_combout\,
	cout => \Head[8]~45\);

-- Location: FF_X32_Y17_N29
\Head[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[8]~44_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(8));

-- Location: LCCOMB_X32_Y17_N30
\Head[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[9]~46_combout\ = (Head(9) & ((\rw~input_o\ & (!\Head[8]~45\)) # (!\rw~input_o\ & (\Head[8]~45\ & VCC)))) # (!Head(9) & ((\rw~input_o\ & ((\Head[8]~45\) # (GND))) # (!\rw~input_o\ & (!\Head[8]~45\))))
-- \Head[9]~47\ = CARRY((Head(9) & (\rw~input_o\ & !\Head[8]~45\)) # (!Head(9) & ((\rw~input_o\) # (!\Head[8]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(9),
	datab => \rw~input_o\,
	datad => VCC,
	cin => \Head[8]~45\,
	combout => \Head[9]~46_combout\,
	cout => \Head[9]~47\);

-- Location: FF_X32_Y17_N31
\Head[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[9]~46_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(9));

-- Location: LCCOMB_X32_Y16_N0
\Head[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[10]~48_combout\ = ((\rw~input_o\ $ (Head(10) $ (\Head[9]~47\)))) # (GND)
-- \Head[10]~49\ = CARRY((\rw~input_o\ & (Head(10) & !\Head[9]~47\)) # (!\rw~input_o\ & ((Head(10)) # (!\Head[9]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(10),
	datad => VCC,
	cin => \Head[9]~47\,
	combout => \Head[10]~48_combout\,
	cout => \Head[10]~49\);

-- Location: FF_X32_Y16_N1
\Head[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[10]~48_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(10));

-- Location: LCCOMB_X32_Y16_N2
\Head[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[11]~50_combout\ = (\rw~input_o\ & ((Head(11) & (!\Head[10]~49\)) # (!Head(11) & ((\Head[10]~49\) # (GND))))) # (!\rw~input_o\ & ((Head(11) & (\Head[10]~49\ & VCC)) # (!Head(11) & (!\Head[10]~49\))))
-- \Head[11]~51\ = CARRY((\rw~input_o\ & ((!\Head[10]~49\) # (!Head(11)))) # (!\rw~input_o\ & (!Head(11) & !\Head[10]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(11),
	datad => VCC,
	cin => \Head[10]~49\,
	combout => \Head[11]~50_combout\,
	cout => \Head[11]~51\);

-- Location: FF_X32_Y16_N3
\Head[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[11]~50_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(11));

-- Location: LCCOMB_X32_Y16_N4
\Head[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[12]~52_combout\ = ((Head(12) $ (\rw~input_o\ $ (\Head[11]~51\)))) # (GND)
-- \Head[12]~53\ = CARRY((Head(12) & ((!\Head[11]~51\) # (!\rw~input_o\))) # (!Head(12) & (!\rw~input_o\ & !\Head[11]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(12),
	datab => \rw~input_o\,
	datad => VCC,
	cin => \Head[11]~51\,
	combout => \Head[12]~52_combout\,
	cout => \Head[12]~53\);

-- Location: FF_X32_Y16_N5
\Head[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[12]~52_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(12));

-- Location: LCCOMB_X32_Y16_N6
\Head[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[13]~54_combout\ = (\rw~input_o\ & ((Head(13) & (!\Head[12]~53\)) # (!Head(13) & ((\Head[12]~53\) # (GND))))) # (!\rw~input_o\ & ((Head(13) & (\Head[12]~53\ & VCC)) # (!Head(13) & (!\Head[12]~53\))))
-- \Head[13]~55\ = CARRY((\rw~input_o\ & ((!\Head[12]~53\) # (!Head(13)))) # (!\rw~input_o\ & (!Head(13) & !\Head[12]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(13),
	datad => VCC,
	cin => \Head[12]~53\,
	combout => \Head[13]~54_combout\,
	cout => \Head[13]~55\);

-- Location: FF_X32_Y16_N7
\Head[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[13]~54_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(13));

-- Location: LCCOMB_X32_Y16_N8
\Head[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[14]~56_combout\ = ((Head(14) $ (\rw~input_o\ $ (\Head[13]~55\)))) # (GND)
-- \Head[14]~57\ = CARRY((Head(14) & ((!\Head[13]~55\) # (!\rw~input_o\))) # (!Head(14) & (!\rw~input_o\ & !\Head[13]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(14),
	datab => \rw~input_o\,
	datad => VCC,
	cin => \Head[13]~55\,
	combout => \Head[14]~56_combout\,
	cout => \Head[14]~57\);

-- Location: FF_X32_Y16_N9
\Head[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[14]~56_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(14));

-- Location: LCCOMB_X32_Y16_N10
\Head[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[15]~58_combout\ = (\rw~input_o\ & ((Head(15) & (!\Head[14]~57\)) # (!Head(15) & ((\Head[14]~57\) # (GND))))) # (!\rw~input_o\ & ((Head(15) & (\Head[14]~57\ & VCC)) # (!Head(15) & (!\Head[14]~57\))))
-- \Head[15]~59\ = CARRY((\rw~input_o\ & ((!\Head[14]~57\) # (!Head(15)))) # (!\rw~input_o\ & (!Head(15) & !\Head[14]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(15),
	datad => VCC,
	cin => \Head[14]~57\,
	combout => \Head[15]~58_combout\,
	cout => \Head[15]~59\);

-- Location: FF_X32_Y16_N11
\Head[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[15]~58_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(15));

-- Location: LCCOMB_X32_Y16_N12
\Head[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[16]~60_combout\ = ((Head(16) $ (\rw~input_o\ $ (\Head[15]~59\)))) # (GND)
-- \Head[16]~61\ = CARRY((Head(16) & ((!\Head[15]~59\) # (!\rw~input_o\))) # (!Head(16) & (!\rw~input_o\ & !\Head[15]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(16),
	datab => \rw~input_o\,
	datad => VCC,
	cin => \Head[15]~59\,
	combout => \Head[16]~60_combout\,
	cout => \Head[16]~61\);

-- Location: FF_X32_Y16_N13
\Head[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[16]~60_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(16));

-- Location: LCCOMB_X32_Y16_N14
\Head[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[17]~62_combout\ = (\rw~input_o\ & ((Head(17) & (!\Head[16]~61\)) # (!Head(17) & ((\Head[16]~61\) # (GND))))) # (!\rw~input_o\ & ((Head(17) & (\Head[16]~61\ & VCC)) # (!Head(17) & (!\Head[16]~61\))))
-- \Head[17]~63\ = CARRY((\rw~input_o\ & ((!\Head[16]~61\) # (!Head(17)))) # (!\rw~input_o\ & (!Head(17) & !\Head[16]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(17),
	datad => VCC,
	cin => \Head[16]~61\,
	combout => \Head[17]~62_combout\,
	cout => \Head[17]~63\);

-- Location: FF_X32_Y16_N15
\Head[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[17]~62_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(17));

-- Location: LCCOMB_X32_Y16_N16
\Head[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[18]~64_combout\ = ((Head(18) $ (\rw~input_o\ $ (\Head[17]~63\)))) # (GND)
-- \Head[18]~65\ = CARRY((Head(18) & ((!\Head[17]~63\) # (!\rw~input_o\))) # (!Head(18) & (!\rw~input_o\ & !\Head[17]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(18),
	datab => \rw~input_o\,
	datad => VCC,
	cin => \Head[17]~63\,
	combout => \Head[18]~64_combout\,
	cout => \Head[18]~65\);

-- Location: FF_X32_Y16_N17
\Head[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[18]~64_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(18));

-- Location: LCCOMB_X32_Y16_N24
\Head[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[19]~27_combout\ = (!Head(16) & (!Head(15) & (!Head(17) & !Head(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(16),
	datab => Head(15),
	datac => Head(17),
	datad => Head(14),
	combout => \Head[19]~27_combout\);

-- Location: LCCOMB_X32_Y17_N6
\Head[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[19]~22_combout\ = (!\rw~input_o\ & (\reset~input_o\ & (!Head(1) & !Head(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => \reset~input_o\,
	datac => Head(1),
	datad => Head(0),
	combout => \Head[19]~22_combout\);

-- Location: LCCOMB_X32_Y16_N20
\Head[19]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[19]~25_combout\ = (!Head(13) & (!Head(10) & (!Head(11) & !Head(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(13),
	datab => Head(10),
	datac => Head(11),
	datad => Head(12),
	combout => \Head[19]~25_combout\);

-- Location: LCCOMB_X32_Y17_N4
\Head[19]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[19]~23_combout\ = (!Head(4) & (!Head(2) & (!Head(5) & !Head(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(4),
	datab => Head(2),
	datac => Head(5),
	datad => Head(3),
	combout => \Head[19]~23_combout\);

-- Location: LCCOMB_X32_Y17_N10
\Head[19]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[19]~24_combout\ = (!Head(7) & (!Head(8) & (!Head(9) & !Head(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(7),
	datab => Head(8),
	datac => Head(9),
	datad => Head(6),
	combout => \Head[19]~24_combout\);

-- Location: LCCOMB_X32_Y16_N26
\Head[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[19]~26_combout\ = (\Head[19]~22_combout\ & (\Head[19]~25_combout\ & (\Head[19]~23_combout\ & \Head[19]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Head[19]~22_combout\,
	datab => \Head[19]~25_combout\,
	datac => \Head[19]~23_combout\,
	datad => \Head[19]~24_combout\,
	combout => \Head[19]~26_combout\);

-- Location: LCCOMB_X32_Y16_N18
\Head[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[19]~66_combout\ = Head(19) $ (\Head[18]~65\ $ (!\rw~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(19),
	datad => \rw~input_o\,
	cin => \Head[18]~65\,
	combout => \Head[19]~66_combout\);

-- Location: FF_X32_Y16_N19
\Head[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[19]~66_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(19));

-- Location: LCCOMB_X32_Y16_N30
\Head[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[19]~28_combout\ = (!Head(18) & (\Head[19]~27_combout\ & (\Head[19]~26_combout\ & !Head(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(18),
	datab => \Head[19]~27_combout\,
	datac => \Head[19]~26_combout\,
	datad => Head(19),
	combout => \Head[19]~28_combout\);

-- Location: LCCOMB_X32_Y16_N28
\Head[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[19]~29_combout\ = (!\Head[19]~28_combout\ & (((\key_pos~q\ & !\butke1|out~q\)) # (!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_pos~q\,
	datab => \butke1|out~q\,
	datac => \Head[19]~28_combout\,
	datad => \reset~input_o\,
	combout => \Head[19]~29_combout\);

-- Location: FF_X32_Y17_N13
\Head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[0]~20_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(0));

-- Location: LCCOMB_X32_Y17_N14
\Head[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Head[1]~30_combout\ = (\rw~input_o\ & ((Head(1) & (!\Head[0]~21\)) # (!Head(1) & ((\Head[0]~21\) # (GND))))) # (!\rw~input_o\ & ((Head(1) & (\Head[0]~21\ & VCC)) # (!Head(1) & (!\Head[0]~21\))))
-- \Head[1]~31\ = CARRY((\rw~input_o\ & ((!\Head[0]~21\) # (!Head(1)))) # (!\rw~input_o\ & (!Head(1) & !\Head[0]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(1),
	datad => VCC,
	cin => \Head[0]~21\,
	combout => \Head[1]~30_combout\,
	cout => \Head[1]~31\);

-- Location: FF_X32_Y17_N15
\Head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[1]~30_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(1));

-- Location: FF_X32_Y17_N17
\Head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Head[2]~32_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Head[19]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Head(2));

-- Location: LCCOMB_X32_Y17_N8
\seg1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg1|WideOr6~0_combout\ = (Head(2) & (!Head(1) & ((Head(3)) # (!Head(0))))) # (!Head(2) & (Head(0) & (Head(3) $ (!Head(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(2),
	datab => Head(3),
	datac => Head(1),
	datad => Head(0),
	combout => \seg1|WideOr6~0_combout\);

-- Location: LCCOMB_X32_Y17_N2
\seg1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg1|WideOr5~0_combout\ = (Head(3) & ((Head(0) & ((Head(1)))) # (!Head(0) & (Head(2))))) # (!Head(3) & (Head(2) & (Head(1) $ (Head(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(2),
	datab => Head(3),
	datac => Head(1),
	datad => Head(0),
	combout => \seg1|WideOr5~0_combout\);

-- Location: LCCOMB_X31_Y17_N8
\seg1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg1|WideOr4~0_combout\ = (Head(2) & (Head(3) & ((Head(1)) # (!Head(0))))) # (!Head(2) & (Head(1) & (!Head(0) & !Head(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(2),
	datab => Head(1),
	datac => Head(0),
	datad => Head(3),
	combout => \seg1|WideOr4~0_combout\);

-- Location: LCCOMB_X32_Y17_N0
\seg1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg1|WideOr3~0_combout\ = (Head(1) & ((Head(2) & ((Head(0)))) # (!Head(2) & (Head(3) & !Head(0))))) # (!Head(1) & (!Head(3) & (Head(2) $ (Head(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(2),
	datab => Head(3),
	datac => Head(1),
	datad => Head(0),
	combout => \seg1|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y17_N6
\seg1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg1|WideOr2~0_combout\ = (Head(1) & (((Head(0) & !Head(3))))) # (!Head(1) & ((Head(2) & ((!Head(3)))) # (!Head(2) & (Head(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(2),
	datab => Head(1),
	datac => Head(0),
	datad => Head(3),
	combout => \seg1|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y17_N4
\seg1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg1|WideOr1~0_combout\ = (Head(2) & ((Head(1) & (Head(0) & !Head(3))) # (!Head(1) & ((Head(3)))))) # (!Head(2) & (!Head(3) & ((Head(1)) # (Head(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(2),
	datab => Head(1),
	datac => Head(0),
	datad => Head(3),
	combout => \seg1|WideOr1~0_combout\);

-- Location: LCCOMB_X31_Y17_N10
\seg1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg1|WideOr0~0_combout\ = (Head(3)) # ((Head(2) & ((!Head(0)) # (!Head(1)))) # (!Head(2) & (Head(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Head(2),
	datab => Head(1),
	datac => Head(0),
	datad => Head(3),
	combout => \seg1|WideOr0~0_combout\);

-- Location: LCCOMB_X31_Y17_N12
\SRAM_ADDR[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[0]~20_combout\ = (\rw~input_o\ & (Head(0) $ (VCC))) # (!\rw~input_o\ & (Head(0) & VCC))
-- \SRAM_ADDR[0]~21\ = CARRY((\rw~input_o\ & Head(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => Head(0),
	datad => VCC,
	combout => \SRAM_ADDR[0]~20_combout\,
	cout => \SRAM_ADDR[0]~21\);

-- Location: LCCOMB_X32_Y16_N22
\SRAM_ADDR[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[0]~22_combout\ = (\reset~input_o\ & (\key_pos~q\ & !\butke1|out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \key_pos~q\,
	datad => \butke1|out~q\,
	combout => \SRAM_ADDR[0]~22_combout\);

-- Location: FF_X31_Y17_N13
\SRAM_ADDR[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[0]~20_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[0]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N14
\SRAM_ADDR[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[1]~23_combout\ = (Head(1) & (!\SRAM_ADDR[0]~21\)) # (!Head(1) & ((\SRAM_ADDR[0]~21\) # (GND)))
-- \SRAM_ADDR[1]~24\ = CARRY((!\SRAM_ADDR[0]~21\) # (!Head(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(1),
	datad => VCC,
	cin => \SRAM_ADDR[0]~21\,
	combout => \SRAM_ADDR[1]~23_combout\,
	cout => \SRAM_ADDR[1]~24\);

-- Location: FF_X31_Y17_N15
\SRAM_ADDR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[1]~23_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[1]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N16
\SRAM_ADDR[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[2]~25_combout\ = (Head(2) & (\SRAM_ADDR[1]~24\ $ (GND))) # (!Head(2) & (!\SRAM_ADDR[1]~24\ & VCC))
-- \SRAM_ADDR[2]~26\ = CARRY((Head(2) & !\SRAM_ADDR[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(2),
	datad => VCC,
	cin => \SRAM_ADDR[1]~24\,
	combout => \SRAM_ADDR[2]~25_combout\,
	cout => \SRAM_ADDR[2]~26\);

-- Location: FF_X31_Y17_N17
\SRAM_ADDR[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[2]~25_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[2]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N18
\SRAM_ADDR[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[3]~27_combout\ = (Head(3) & (!\SRAM_ADDR[2]~26\)) # (!Head(3) & ((\SRAM_ADDR[2]~26\) # (GND)))
-- \SRAM_ADDR[3]~28\ = CARRY((!\SRAM_ADDR[2]~26\) # (!Head(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(3),
	datad => VCC,
	cin => \SRAM_ADDR[2]~26\,
	combout => \SRAM_ADDR[3]~27_combout\,
	cout => \SRAM_ADDR[3]~28\);

-- Location: FF_X31_Y17_N19
\SRAM_ADDR[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[3]~27_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[3]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N20
\SRAM_ADDR[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[4]~29_combout\ = (Head(4) & (\SRAM_ADDR[3]~28\ $ (GND))) # (!Head(4) & (!\SRAM_ADDR[3]~28\ & VCC))
-- \SRAM_ADDR[4]~30\ = CARRY((Head(4) & !\SRAM_ADDR[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(4),
	datad => VCC,
	cin => \SRAM_ADDR[3]~28\,
	combout => \SRAM_ADDR[4]~29_combout\,
	cout => \SRAM_ADDR[4]~30\);

-- Location: FF_X31_Y17_N21
\SRAM_ADDR[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[4]~29_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[4]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N22
\SRAM_ADDR[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[5]~31_combout\ = (Head(5) & (!\SRAM_ADDR[4]~30\)) # (!Head(5) & ((\SRAM_ADDR[4]~30\) # (GND)))
-- \SRAM_ADDR[5]~32\ = CARRY((!\SRAM_ADDR[4]~30\) # (!Head(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(5),
	datad => VCC,
	cin => \SRAM_ADDR[4]~30\,
	combout => \SRAM_ADDR[5]~31_combout\,
	cout => \SRAM_ADDR[5]~32\);

-- Location: FF_X31_Y17_N23
\SRAM_ADDR[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[5]~31_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[5]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N24
\SRAM_ADDR[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[6]~33_combout\ = (Head(6) & (\SRAM_ADDR[5]~32\ $ (GND))) # (!Head(6) & (!\SRAM_ADDR[5]~32\ & VCC))
-- \SRAM_ADDR[6]~34\ = CARRY((Head(6) & !\SRAM_ADDR[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(6),
	datad => VCC,
	cin => \SRAM_ADDR[5]~32\,
	combout => \SRAM_ADDR[6]~33_combout\,
	cout => \SRAM_ADDR[6]~34\);

-- Location: FF_X31_Y17_N25
\SRAM_ADDR[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[6]~33_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[6]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N26
\SRAM_ADDR[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[7]~35_combout\ = (Head(7) & (!\SRAM_ADDR[6]~34\)) # (!Head(7) & ((\SRAM_ADDR[6]~34\) # (GND)))
-- \SRAM_ADDR[7]~36\ = CARRY((!\SRAM_ADDR[6]~34\) # (!Head(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(7),
	datad => VCC,
	cin => \SRAM_ADDR[6]~34\,
	combout => \SRAM_ADDR[7]~35_combout\,
	cout => \SRAM_ADDR[7]~36\);

-- Location: FF_X31_Y17_N27
\SRAM_ADDR[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[7]~35_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[7]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N28
\SRAM_ADDR[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[8]~37_combout\ = (Head(8) & (\SRAM_ADDR[7]~36\ $ (GND))) # (!Head(8) & (!\SRAM_ADDR[7]~36\ & VCC))
-- \SRAM_ADDR[8]~38\ = CARRY((Head(8) & !\SRAM_ADDR[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(8),
	datad => VCC,
	cin => \SRAM_ADDR[7]~36\,
	combout => \SRAM_ADDR[8]~37_combout\,
	cout => \SRAM_ADDR[8]~38\);

-- Location: FF_X31_Y17_N29
\SRAM_ADDR[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[8]~37_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[8]~reg0_q\);

-- Location: LCCOMB_X31_Y17_N30
\SRAM_ADDR[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[9]~39_combout\ = (Head(9) & (!\SRAM_ADDR[8]~38\)) # (!Head(9) & ((\SRAM_ADDR[8]~38\) # (GND)))
-- \SRAM_ADDR[9]~40\ = CARRY((!\SRAM_ADDR[8]~38\) # (!Head(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(9),
	datad => VCC,
	cin => \SRAM_ADDR[8]~38\,
	combout => \SRAM_ADDR[9]~39_combout\,
	cout => \SRAM_ADDR[9]~40\);

-- Location: FF_X31_Y17_N31
\SRAM_ADDR[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[9]~39_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[9]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N0
\SRAM_ADDR[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[10]~41_combout\ = (Head(10) & (\SRAM_ADDR[9]~40\ $ (GND))) # (!Head(10) & (!\SRAM_ADDR[9]~40\ & VCC))
-- \SRAM_ADDR[10]~42\ = CARRY((Head(10) & !\SRAM_ADDR[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(10),
	datad => VCC,
	cin => \SRAM_ADDR[9]~40\,
	combout => \SRAM_ADDR[10]~41_combout\,
	cout => \SRAM_ADDR[10]~42\);

-- Location: FF_X31_Y16_N1
\SRAM_ADDR[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[10]~41_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[10]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N2
\SRAM_ADDR[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[11]~43_combout\ = (Head(11) & (!\SRAM_ADDR[10]~42\)) # (!Head(11) & ((\SRAM_ADDR[10]~42\) # (GND)))
-- \SRAM_ADDR[11]~44\ = CARRY((!\SRAM_ADDR[10]~42\) # (!Head(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(11),
	datad => VCC,
	cin => \SRAM_ADDR[10]~42\,
	combout => \SRAM_ADDR[11]~43_combout\,
	cout => \SRAM_ADDR[11]~44\);

-- Location: FF_X31_Y16_N3
\SRAM_ADDR[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[11]~43_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[11]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N4
\SRAM_ADDR[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[12]~45_combout\ = (Head(12) & (\SRAM_ADDR[11]~44\ $ (GND))) # (!Head(12) & (!\SRAM_ADDR[11]~44\ & VCC))
-- \SRAM_ADDR[12]~46\ = CARRY((Head(12) & !\SRAM_ADDR[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(12),
	datad => VCC,
	cin => \SRAM_ADDR[11]~44\,
	combout => \SRAM_ADDR[12]~45_combout\,
	cout => \SRAM_ADDR[12]~46\);

-- Location: FF_X31_Y16_N5
\SRAM_ADDR[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[12]~45_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[12]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N6
\SRAM_ADDR[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~47_combout\ = (Head(13) & (!\SRAM_ADDR[12]~46\)) # (!Head(13) & ((\SRAM_ADDR[12]~46\) # (GND)))
-- \SRAM_ADDR[13]~48\ = CARRY((!\SRAM_ADDR[12]~46\) # (!Head(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Head(13),
	datad => VCC,
	cin => \SRAM_ADDR[12]~46\,
	combout => \SRAM_ADDR[13]~47_combout\,
	cout => \SRAM_ADDR[13]~48\);

-- Location: FF_X31_Y16_N7
\SRAM_ADDR[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[13]~47_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[13]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N8
\SRAM_ADDR[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~49_combout\ = (Head(14) & (\SRAM_ADDR[13]~48\ $ (GND))) # (!Head(14) & (!\SRAM_ADDR[13]~48\ & VCC))
-- \SRAM_ADDR[14]~50\ = CARRY((Head(14) & !\SRAM_ADDR[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(14),
	datad => VCC,
	cin => \SRAM_ADDR[13]~48\,
	combout => \SRAM_ADDR[14]~49_combout\,
	cout => \SRAM_ADDR[14]~50\);

-- Location: FF_X31_Y16_N9
\SRAM_ADDR[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[14]~49_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[14]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N10
\SRAM_ADDR[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~51_combout\ = (Head(15) & (!\SRAM_ADDR[14]~50\)) # (!Head(15) & ((\SRAM_ADDR[14]~50\) # (GND)))
-- \SRAM_ADDR[15]~52\ = CARRY((!\SRAM_ADDR[14]~50\) # (!Head(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(15),
	datad => VCC,
	cin => \SRAM_ADDR[14]~50\,
	combout => \SRAM_ADDR[15]~51_combout\,
	cout => \SRAM_ADDR[15]~52\);

-- Location: FF_X31_Y16_N11
\SRAM_ADDR[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[15]~51_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[15]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N12
\SRAM_ADDR[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~53_combout\ = (Head(16) & (\SRAM_ADDR[15]~52\ $ (GND))) # (!Head(16) & (!\SRAM_ADDR[15]~52\ & VCC))
-- \SRAM_ADDR[16]~54\ = CARRY((Head(16) & !\SRAM_ADDR[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(16),
	datad => VCC,
	cin => \SRAM_ADDR[15]~52\,
	combout => \SRAM_ADDR[16]~53_combout\,
	cout => \SRAM_ADDR[16]~54\);

-- Location: FF_X31_Y16_N13
\SRAM_ADDR[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[16]~53_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[16]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N14
\SRAM_ADDR[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~55_combout\ = (Head(17) & (!\SRAM_ADDR[16]~54\)) # (!Head(17) & ((\SRAM_ADDR[16]~54\) # (GND)))
-- \SRAM_ADDR[17]~56\ = CARRY((!\SRAM_ADDR[16]~54\) # (!Head(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(17),
	datad => VCC,
	cin => \SRAM_ADDR[16]~54\,
	combout => \SRAM_ADDR[17]~55_combout\,
	cout => \SRAM_ADDR[17]~56\);

-- Location: FF_X31_Y16_N15
\SRAM_ADDR[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[17]~55_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[17]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N16
\SRAM_ADDR[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~57_combout\ = (Head(18) & (\SRAM_ADDR[17]~56\ $ (GND))) # (!Head(18) & (!\SRAM_ADDR[17]~56\ & VCC))
-- \SRAM_ADDR[18]~58\ = CARRY((Head(18) & !\SRAM_ADDR[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Head(18),
	datad => VCC,
	cin => \SRAM_ADDR[17]~56\,
	combout => \SRAM_ADDR[18]~57_combout\,
	cout => \SRAM_ADDR[18]~58\);

-- Location: FF_X31_Y16_N17
\SRAM_ADDR[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[18]~57_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[18]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N18
\SRAM_ADDR[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~59_combout\ = \SRAM_ADDR[18]~58\ $ (Head(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Head(19),
	cin => \SRAM_ADDR[18]~58\,
	combout => \SRAM_ADDR[19]~59_combout\);

-- Location: FF_X31_Y16_N19
\SRAM_ADDR[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_ADDR[19]~59_combout\,
	ena => \SRAM_ADDR[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_ADDR[19]~reg0_q\);

-- Location: LCCOMB_X34_Y16_N20
\count[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~6_combout\ = count(0) $ (VCC)
-- \count[0]~7\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~6_combout\,
	cout => \count[0]~7\);

-- Location: LCCOMB_X34_Y16_N2
\count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~8_combout\ = (\reset~input_o\ & ((\butke1|out~q\) # (!\key_pos~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_pos~q\,
	datac => \reset~input_o\,
	datad => \butke1|out~q\,
	combout => \count[0]~8_combout\);

-- Location: LCCOMB_X34_Y16_N18
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(3) & (!count(2) & (!count(1) & !count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X34_Y16_N0
\count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~9_combout\ = (count(4)) # (((count(5)) # (!\count[0]~8_combout\)) # (!\Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => \Equal1~0_combout\,
	datac => count(5),
	datad => \count[0]~8_combout\,
	combout => \count[0]~9_combout\);

-- Location: FF_X34_Y16_N21
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~6_combout\,
	asdata => \reset~input_o\,
	sload => \ALT_INV_count[0]~8_combout\,
	ena => \count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X34_Y16_N22
\count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~10_combout\ = (count(1) & (\count[0]~7\ & VCC)) # (!count(1) & (!\count[0]~7\))
-- \count[1]~11\ = CARRY((!count(1) & !\count[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~7\,
	combout => \count[1]~10_combout\,
	cout => \count[1]~11\);

-- Location: LCCOMB_X34_Y16_N14
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X34_Y16_N23
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~10_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_count[0]~8_combout\,
	ena => \count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X34_Y16_N24
\count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~12_combout\ = (count(2) & ((GND) # (!\count[1]~11\))) # (!count(2) & (\count[1]~11\ $ (GND)))
-- \count[2]~13\ = CARRY((count(2)) # (!\count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~11\,
	combout => \count[2]~12_combout\,
	cout => \count[2]~13\);

-- Location: FF_X34_Y16_N25
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~12_combout\,
	asdata => \reset~input_o\,
	sload => \ALT_INV_count[0]~8_combout\,
	ena => \count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X34_Y16_N26
\count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~14_combout\ = (count(3) & (\count[2]~13\ & VCC)) # (!count(3) & (!\count[2]~13\))
-- \count[3]~15\ = CARRY((!count(3) & !\count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~13\,
	combout => \count[3]~14_combout\,
	cout => \count[3]~15\);

-- Location: FF_X34_Y16_N27
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~14_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_count[0]~8_combout\,
	ena => \count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X34_Y16_N28
\count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~16_combout\ = (count(4) & ((GND) # (!\count[3]~15\))) # (!count(4) & (\count[3]~15\ $ (GND)))
-- \count[4]~17\ = CARRY((count(4)) # (!\count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~15\,
	combout => \count[4]~16_combout\,
	cout => \count[4]~17\);

-- Location: FF_X34_Y16_N29
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~16_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_count[0]~8_combout\,
	ena => \count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X34_Y16_N30
\count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~18_combout\ = count(5) $ (!\count[4]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	cin => \count[4]~17\,
	combout => \count[5]~18_combout\);

-- Location: FF_X34_Y16_N31
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~18_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_count[0]~8_combout\,
	ena => \count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X34_Y16_N12
\SRAM_CE_N~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_CE_N~0_combout\ = (\SRAM_CE_N~reg0_q\) # ((!count(5) & (\Equal1~0_combout\ & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => \Equal1~0_combout\,
	datac => \SRAM_CE_N~reg0_q\,
	datad => count(4),
	combout => \SRAM_CE_N~0_combout\);

-- Location: LCCOMB_X34_Y16_N8
\SRAM_CE_N~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_CE_N~1_combout\ = (\SRAM_CE_N~0_combout\ & ((\butke1|out~q\) # (!\key_pos~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_CE_N~0_combout\,
	datab => \butke1|out~q\,
	datad => \key_pos~q\,
	combout => \SRAM_CE_N~1_combout\);

-- Location: FF_X34_Y16_N9
\SRAM_CE_N~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SRAM_CE_N~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRAM_CE_N~reg0_q\);

-- Location: IOIBUF_X0_Y21_N15
\SRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(8),
	o => \SRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\SRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(9),
	o => \SRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\SRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(10),
	o => \SRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\SRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(11),
	o => \SRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\SRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(12),
	o => \SRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\SRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(13),
	o => \SRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\SRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(14),
	o => \SRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\SRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(15),
	o => \SRAM_DQ[15]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_SRAM_ADDR(0) <= \SRAM_ADDR[0]~output_o\;

ww_SRAM_ADDR(1) <= \SRAM_ADDR[1]~output_o\;

ww_SRAM_ADDR(2) <= \SRAM_ADDR[2]~output_o\;

ww_SRAM_ADDR(3) <= \SRAM_ADDR[3]~output_o\;

ww_SRAM_ADDR(4) <= \SRAM_ADDR[4]~output_o\;

ww_SRAM_ADDR(5) <= \SRAM_ADDR[5]~output_o\;

ww_SRAM_ADDR(6) <= \SRAM_ADDR[6]~output_o\;

ww_SRAM_ADDR(7) <= \SRAM_ADDR[7]~output_o\;

ww_SRAM_ADDR(8) <= \SRAM_ADDR[8]~output_o\;

ww_SRAM_ADDR(9) <= \SRAM_ADDR[9]~output_o\;

ww_SRAM_ADDR(10) <= \SRAM_ADDR[10]~output_o\;

ww_SRAM_ADDR(11) <= \SRAM_ADDR[11]~output_o\;

ww_SRAM_ADDR(12) <= \SRAM_ADDR[12]~output_o\;

ww_SRAM_ADDR(13) <= \SRAM_ADDR[13]~output_o\;

ww_SRAM_ADDR(14) <= \SRAM_ADDR[14]~output_o\;

ww_SRAM_ADDR(15) <= \SRAM_ADDR[15]~output_o\;

ww_SRAM_ADDR(16) <= \SRAM_ADDR[16]~output_o\;

ww_SRAM_ADDR(17) <= \SRAM_ADDR[17]~output_o\;

ww_SRAM_ADDR(18) <= \SRAM_ADDR[18]~output_o\;

ww_SRAM_ADDR(19) <= \SRAM_ADDR[19]~output_o\;

ww_SRAM_CE_N <= \SRAM_CE_N~output_o\;

ww_SRAM_OE_N <= \SRAM_OE_N~output_o\;

ww_SRAM_WE_N <= \SRAM_WE_N~output_o\;

ww_SRAM_UE_N <= \SRAM_UE_N~output_o\;

ww_SRAM_LE_N <= \SRAM_LE_N~output_o\;

SRAM_DQ(0) <= \SRAM_DQ[0]~output_o\;

SRAM_DQ(1) <= \SRAM_DQ[1]~output_o\;

SRAM_DQ(2) <= \SRAM_DQ[2]~output_o\;

SRAM_DQ(3) <= \SRAM_DQ[3]~output_o\;

SRAM_DQ(4) <= \SRAM_DQ[4]~output_o\;

SRAM_DQ(5) <= \SRAM_DQ[5]~output_o\;

SRAM_DQ(6) <= \SRAM_DQ[6]~output_o\;

SRAM_DQ(7) <= \SRAM_DQ[7]~output_o\;

SRAM_DQ(8) <= \SRAM_DQ[8]~output_o\;

SRAM_DQ(9) <= \SRAM_DQ[9]~output_o\;

SRAM_DQ(10) <= \SRAM_DQ[10]~output_o\;

SRAM_DQ(11) <= \SRAM_DQ[11]~output_o\;

SRAM_DQ(12) <= \SRAM_DQ[12]~output_o\;

SRAM_DQ(13) <= \SRAM_DQ[13]~output_o\;

SRAM_DQ(14) <= \SRAM_DQ[14]~output_o\;

SRAM_DQ(15) <= \SRAM_DQ[15]~output_o\;
END structure;


