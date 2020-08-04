-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Standard Edition"

-- DATE "07/30/2020 17:38:56"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Counter_V2 IS
    PORT (
	count : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	load : IN std_logic;
	upDown : IN std_logic;
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	outputNum : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Counter_V2;

-- Design Ports Information
-- outputNum[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputNum[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputNum[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputNum[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputNum[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputNum[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputNum[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputNum[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- enable	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upDown	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_V2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_count : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_upDown : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outputNum : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \number[7]~34_combout\ : std_logic;
SIGNAL \count~input_o\ : std_logic;
SIGNAL \count~inputCLKENA0_outclk\ : std_logic;
SIGNAL \number[0]~1_combout\ : std_logic;
SIGNAL \number[0]~3_combout\ : std_logic;
SIGNAL \number[0]~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \number[0]~_emulated_q\ : std_logic;
SIGNAL \number[0]~2_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \number[1]~5_combout\ : std_logic;
SIGNAL \upDown~input_o\ : std_logic;
SIGNAL \Add0~30_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \number[1]~7_combout\ : std_logic;
SIGNAL \number[1]~_emulated_q\ : std_logic;
SIGNAL \number[1]~6_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \number[2]~9_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \number[2]~11_combout\ : std_logic;
SIGNAL \number[2]~_emulated_q\ : std_logic;
SIGNAL \number[2]~10_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \number[3]~13_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \number[3]~15_combout\ : std_logic;
SIGNAL \number[3]~_emulated_q\ : std_logic;
SIGNAL \number[3]~14_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \number[4]~17_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \number[4]~19_combout\ : std_logic;
SIGNAL \number[4]~_emulated_q\ : std_logic;
SIGNAL \number[4]~18_combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \number[5]~21_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \number[5]~23_combout\ : std_logic;
SIGNAL \number[5]~_emulated_q\ : std_logic;
SIGNAL \number[5]~22_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \number[6]~25_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \number[6]~27_combout\ : std_logic;
SIGNAL \number[6]~_emulated_q\ : std_logic;
SIGNAL \number[6]~26_combout\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \number[7]~29_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \number[7]~31_combout\ : std_logic;
SIGNAL \number[7]~_emulated_q\ : std_logic;
SIGNAL \number[7]~30_combout\ : std_logic;
SIGNAL \ALT_INV_upDown~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_number[7]~29_combout\ : std_logic;
SIGNAL \ALT_INV_number[6]~25_combout\ : std_logic;
SIGNAL \ALT_INV_number[5]~21_combout\ : std_logic;
SIGNAL \ALT_INV_number[4]~17_combout\ : std_logic;
SIGNAL \ALT_INV_number[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_number[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_number[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_number[7]~34_combout\ : std_logic;
SIGNAL \ALT_INV_number[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_number[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_number[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_number[7]~30_combout\ : std_logic;
SIGNAL \ALT_INV_number[7]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_number[6]~26_combout\ : std_logic;
SIGNAL \ALT_INV_number[6]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_number[5]~22_combout\ : std_logic;
SIGNAL \ALT_INV_number[5]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_number[4]~18_combout\ : std_logic;
SIGNAL \ALT_INV_number[4]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_number[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_number[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_number[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_number[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_number[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_number[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_count <= count;
ww_enable <= enable;
ww_reset <= reset;
ww_load <= load;
ww_upDown <= upDown;
ww_dataIn <= dataIn;
outputNum <= ww_outputNum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_upDown~input_o\ <= NOT \upDown~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_dataIn[0]~input_o\ <= NOT \dataIn[0]~input_o\;
\ALT_INV_dataIn[7]~input_o\ <= NOT \dataIn[7]~input_o\;
\ALT_INV_dataIn[6]~input_o\ <= NOT \dataIn[6]~input_o\;
\ALT_INV_dataIn[5]~input_o\ <= NOT \dataIn[5]~input_o\;
\ALT_INV_dataIn[4]~input_o\ <= NOT \dataIn[4]~input_o\;
\ALT_INV_dataIn[3]~input_o\ <= NOT \dataIn[3]~input_o\;
\ALT_INV_dataIn[2]~input_o\ <= NOT \dataIn[2]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_dataIn[1]~input_o\ <= NOT \dataIn[1]~input_o\;
\ALT_INV_number[0]~1_combout\ <= NOT \number[0]~1_combout\;
\ALT_INV_number[7]~29_combout\ <= NOT \number[7]~29_combout\;
\ALT_INV_number[6]~25_combout\ <= NOT \number[6]~25_combout\;
\ALT_INV_number[5]~21_combout\ <= NOT \number[5]~21_combout\;
\ALT_INV_number[4]~17_combout\ <= NOT \number[4]~17_combout\;
\ALT_INV_number[3]~13_combout\ <= NOT \number[3]~13_combout\;
\ALT_INV_number[2]~9_combout\ <= NOT \number[2]~9_combout\;
\ALT_INV_number[1]~5_combout\ <= NOT \number[1]~5_combout\;
\ALT_INV_number[7]~34_combout\ <= NOT \number[7]~34_combout\;
\ALT_INV_number[0]~0_combout\ <= NOT \number[0]~0_combout\;
\ALT_INV_number[0]~2_combout\ <= NOT \number[0]~2_combout\;
\ALT_INV_number[0]~_emulated_q\ <= NOT \number[0]~_emulated_q\;
\ALT_INV_number[7]~30_combout\ <= NOT \number[7]~30_combout\;
\ALT_INV_number[7]~_emulated_q\ <= NOT \number[7]~_emulated_q\;
\ALT_INV_number[6]~26_combout\ <= NOT \number[6]~26_combout\;
\ALT_INV_number[6]~_emulated_q\ <= NOT \number[6]~_emulated_q\;
\ALT_INV_number[5]~22_combout\ <= NOT \number[5]~22_combout\;
\ALT_INV_number[5]~_emulated_q\ <= NOT \number[5]~_emulated_q\;
\ALT_INV_number[4]~18_combout\ <= NOT \number[4]~18_combout\;
\ALT_INV_number[4]~_emulated_q\ <= NOT \number[4]~_emulated_q\;
\ALT_INV_number[3]~14_combout\ <= NOT \number[3]~14_combout\;
\ALT_INV_number[3]~_emulated_q\ <= NOT \number[3]~_emulated_q\;
\ALT_INV_number[2]~10_combout\ <= NOT \number[2]~10_combout\;
\ALT_INV_number[2]~_emulated_q\ <= NOT \number[2]~_emulated_q\;
\ALT_INV_number[1]~6_combout\ <= NOT \number[1]~6_combout\;
\ALT_INV_number[1]~_emulated_q\ <= NOT \number[1]~_emulated_q\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X52_Y0_N2
\outputNum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \number[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_outputNum(0));

-- Location: IOOBUF_X52_Y0_N19
\outputNum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \number[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_outputNum(1));

-- Location: IOOBUF_X60_Y0_N2
\outputNum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \number[2]~10_combout\,
	devoe => ww_devoe,
	o => ww_outputNum(2));

-- Location: IOOBUF_X80_Y0_N2
\outputNum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \number[3]~14_combout\,
	devoe => ww_devoe,
	o => ww_outputNum(3));

-- Location: IOOBUF_X60_Y0_N19
\outputNum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \number[4]~18_combout\,
	devoe => ww_devoe,
	o => ww_outputNum(4));

-- Location: IOOBUF_X80_Y0_N19
\outputNum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \number[5]~22_combout\,
	devoe => ww_devoe,
	o => ww_outputNum(5));

-- Location: IOOBUF_X84_Y0_N2
\outputNum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \number[6]~26_combout\,
	devoe => ww_devoe,
	o => ww_outputNum(6));

-- Location: IOOBUF_X89_Y6_N5
\outputNum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \number[7]~30_combout\,
	devoe => ww_devoe,
	o => ww_outputNum(7));

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\dataIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: MLABCELL_X25_Y1_N39
\number[7]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[7]~34_combout\ = ( !\load~input_o\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_load~input_o\,
	combout => \number[7]~34_combout\);

-- Location: IOIBUF_X36_Y0_N18
\count~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count,
	o => \count~input_o\);

-- Location: CLKCTRL_G4
\count~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \count~input_o\,
	outclk => \count~inputCLKENA0_outclk\);

-- Location: LABCELL_X24_Y1_N6
\number[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[0]~1_combout\ = ( \number[7]~34_combout\ & ( (\dataIn[0]~input_o\ & \reset~input_o\) ) ) # ( !\number[7]~34_combout\ & ( (\reset~input_o\ & \number[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dataIn[0]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_number[0]~1_combout\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[0]~1_combout\);

-- Location: LABCELL_X24_Y1_N36
\number[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[0]~3_combout\ = ( \number[0]~1_combout\ & ( \number[0]~2_combout\ ) ) # ( !\number[0]~1_combout\ & ( !\number[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_number[0]~2_combout\,
	dataf => \ALT_INV_number[0]~1_combout\,
	combout => \number[0]~3_combout\);

-- Location: MLABCELL_X25_Y1_N42
\number[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[0]~0_combout\ = ( \number[7]~34_combout\ ) # ( !\number[7]~34_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[0]~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X24_Y1_N38
\number[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count~inputCLKENA0_outclk\,
	d => \number[0]~3_combout\,
	clrn => \ALT_INV_number[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \number[0]~_emulated_q\);

-- Location: LABCELL_X24_Y1_N54
\number[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[0]~2_combout\ = ( \number[0]~_emulated_q\ & ( \number[0]~1_combout\ & ( (\reset~input_o\ & (\dataIn[0]~input_o\ & \number[7]~34_combout\)) ) ) ) # ( !\number[0]~_emulated_q\ & ( \number[0]~1_combout\ & ( (\reset~input_o\ & 
-- ((!\number[7]~34_combout\) # (\dataIn[0]~input_o\))) ) ) ) # ( \number[0]~_emulated_q\ & ( !\number[0]~1_combout\ & ( (\reset~input_o\ & ((!\number[7]~34_combout\) # (\dataIn[0]~input_o\))) ) ) ) # ( !\number[0]~_emulated_q\ & ( !\number[0]~1_combout\ & ( 
-- (\reset~input_o\ & (\dataIn[0]~input_o\ & \number[7]~34_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010100010101000101010001010100010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_dataIn[0]~input_o\,
	datac => \ALT_INV_number[7]~34_combout\,
	datae => \ALT_INV_number[0]~_emulated_q\,
	dataf => \ALT_INV_number[0]~1_combout\,
	combout => \number[0]~2_combout\);

-- Location: IOIBUF_X16_Y0_N1
\dataIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: LABCELL_X24_Y1_N33
\number[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[1]~5_combout\ = ( \number[1]~5_combout\ & ( (\reset~input_o\ & ((!\number[7]~34_combout\) # (\dataIn[1]~input_o\))) ) ) # ( !\number[1]~5_combout\ & ( (\reset~input_o\ & (\dataIn[1]~input_o\ & \number[7]~34_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_dataIn[1]~input_o\,
	datad => \ALT_INV_number[7]~34_combout\,
	dataf => \ALT_INV_number[1]~5_combout\,
	combout => \number[1]~5_combout\);

-- Location: IOIBUF_X4_Y0_N18
\upDown~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upDown,
	o => \upDown~input_o\);

-- Location: MLABCELL_X25_Y1_N0
\Add0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~30_cout\ = CARRY(( \number[0]~2_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_number[0]~2_combout\,
	cin => GND,
	cout => \Add0~30_cout\);

-- Location: MLABCELL_X25_Y1_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \upDown~input_o\ ) + ( \number[1]~6_combout\ ) + ( \Add0~30_cout\ ))
-- \Add0~2\ = CARRY(( \upDown~input_o\ ) + ( \number[1]~6_combout\ ) + ( \Add0~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_upDown~input_o\,
	datac => \ALT_INV_number[1]~6_combout\,
	cin => \Add0~30_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X25_Y1_N36
\number[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[1]~7_combout\ = ( \Add0~1_sumout\ & ( !\number[1]~5_combout\ ) ) # ( !\Add0~1_sumout\ & ( \number[1]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_number[1]~5_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \number[1]~7_combout\);

-- Location: FF_X25_Y1_N38
\number[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count~inputCLKENA0_outclk\,
	d => \number[1]~7_combout\,
	clrn => \ALT_INV_number[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \number[1]~_emulated_q\);

-- Location: MLABCELL_X25_Y1_N51
\number[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[1]~6_combout\ = ( \number[7]~34_combout\ & ( (\dataIn[1]~input_o\ & \reset~input_o\) ) ) # ( !\number[7]~34_combout\ & ( (\reset~input_o\ & (!\number[1]~5_combout\ $ (!\number[1]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[1]~input_o\,
	datab => \ALT_INV_number[1]~5_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_number[1]~_emulated_q\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[1]~6_combout\);

-- Location: IOIBUF_X8_Y0_N35
\dataIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: LABCELL_X24_Y1_N15
\number[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[2]~9_combout\ = ( \number[2]~9_combout\ & ( (\reset~input_o\ & ((!\number[7]~34_combout\) # (\dataIn[2]~input_o\))) ) ) # ( !\number[2]~9_combout\ & ( (\dataIn[2]~input_o\ & (\reset~input_o\ & \number[7]~34_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dataIn[2]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_number[7]~34_combout\,
	dataf => \ALT_INV_number[2]~9_combout\,
	combout => \number[2]~9_combout\);

-- Location: MLABCELL_X25_Y1_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \number[2]~10_combout\ ) + ( \upDown~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \number[2]~10_combout\ ) + ( \upDown~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_upDown~input_o\,
	datad => \ALT_INV_number[2]~10_combout\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X24_Y1_N42
\number[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[2]~11_combout\ = ( \Add0~5_sumout\ & ( !\number[2]~9_combout\ ) ) # ( !\Add0~5_sumout\ & ( \number[2]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_number[2]~9_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \number[2]~11_combout\);

-- Location: FF_X24_Y1_N43
\number[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count~inputCLKENA0_outclk\,
	d => \number[2]~11_combout\,
	clrn => \ALT_INV_number[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \number[2]~_emulated_q\);

-- Location: MLABCELL_X25_Y1_N24
\number[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[2]~10_combout\ = ( \number[7]~34_combout\ & ( (\reset~input_o\ & \dataIn[2]~input_o\) ) ) # ( !\number[7]~34_combout\ & ( (\reset~input_o\ & (!\number[2]~9_combout\ $ (!\number[2]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[2]~9_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_dataIn[2]~input_o\,
	datad => \ALT_INV_number[2]~_emulated_q\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[2]~10_combout\);

-- Location: IOIBUF_X4_Y0_N52
\dataIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: LABCELL_X24_Y1_N39
\number[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[3]~13_combout\ = ( \number[3]~13_combout\ & ( (\reset~input_o\ & ((!\number[7]~34_combout\) # (\dataIn[3]~input_o\))) ) ) # ( !\number[3]~13_combout\ & ( (\reset~input_o\ & (\dataIn[3]~input_o\ & \number[7]~34_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_dataIn[3]~input_o\,
	datad => \ALT_INV_number[7]~34_combout\,
	dataf => \ALT_INV_number[3]~13_combout\,
	combout => \number[3]~13_combout\);

-- Location: MLABCELL_X25_Y1_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \number[3]~14_combout\ ) + ( \upDown~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \number[3]~14_combout\ ) + ( \upDown~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_upDown~input_o\,
	datad => \ALT_INV_number[3]~14_combout\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X24_Y1_N12
\number[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[3]~15_combout\ = ( \Add0~9_sumout\ & ( !\number[3]~13_combout\ ) ) # ( !\Add0~9_sumout\ & ( \number[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[3]~13_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \number[3]~15_combout\);

-- Location: FF_X24_Y1_N13
\number[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count~inputCLKENA0_outclk\,
	d => \number[3]~15_combout\,
	clrn => \ALT_INV_number[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \number[3]~_emulated_q\);

-- Location: MLABCELL_X25_Y1_N45
\number[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[3]~14_combout\ = ( \number[3]~13_combout\ & ( (\reset~input_o\ & ((!\number[7]~34_combout\ & ((!\number[3]~_emulated_q\))) # (\number[7]~34_combout\ & (\dataIn[3]~input_o\)))) ) ) # ( !\number[3]~13_combout\ & ( (\reset~input_o\ & 
-- ((!\number[7]~34_combout\ & ((\number[3]~_emulated_q\))) # (\number[7]~34_combout\ & (\dataIn[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100100011000000010010001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[7]~34_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_dataIn[3]~input_o\,
	datad => \ALT_INV_number[3]~_emulated_q\,
	dataf => \ALT_INV_number[3]~13_combout\,
	combout => \number[3]~14_combout\);

-- Location: IOIBUF_X2_Y0_N41
\dataIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: LABCELL_X24_Y1_N30
\number[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[4]~17_combout\ = ( \number[4]~17_combout\ & ( (\reset~input_o\ & ((!\number[7]~34_combout\) # (\dataIn[4]~input_o\))) ) ) # ( !\number[4]~17_combout\ & ( (\reset~input_o\ & (\number[7]~34_combout\ & \dataIn[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_number[7]~34_combout\,
	datad => \ALT_INV_dataIn[4]~input_o\,
	dataf => \ALT_INV_number[4]~17_combout\,
	combout => \number[4]~17_combout\);

-- Location: MLABCELL_X25_Y1_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \number[4]~18_combout\ ) + ( \upDown~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \number[4]~18_combout\ ) + ( \upDown~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_upDown~input_o\,
	datad => \ALT_INV_number[4]~18_combout\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X25_Y1_N27
\number[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[4]~19_combout\ = ( \Add0~13_sumout\ & ( !\number[4]~17_combout\ ) ) # ( !\Add0~13_sumout\ & ( \number[4]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_number[4]~17_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \number[4]~19_combout\);

-- Location: FF_X25_Y1_N29
\number[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count~inputCLKENA0_outclk\,
	d => \number[4]~19_combout\,
	clrn => \ALT_INV_number[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \number[4]~_emulated_q\);

-- Location: MLABCELL_X25_Y1_N30
\number[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[4]~18_combout\ = ( \number[7]~34_combout\ & ( (\dataIn[4]~input_o\ & \reset~input_o\) ) ) # ( !\number[7]~34_combout\ & ( (\reset~input_o\ & (!\number[4]~17_combout\ $ (!\number[4]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[4]~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_number[4]~17_combout\,
	datad => \ALT_INV_number[4]~_emulated_q\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[4]~18_combout\);

-- Location: IOIBUF_X16_Y0_N18
\dataIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: LABCELL_X24_Y1_N27
\number[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[5]~21_combout\ = ( \number[5]~21_combout\ & ( \number[7]~34_combout\ & ( (\reset~input_o\ & \dataIn[5]~input_o\) ) ) ) # ( !\number[5]~21_combout\ & ( \number[7]~34_combout\ & ( (\reset~input_o\ & \dataIn[5]~input_o\) ) ) ) # ( 
-- \number[5]~21_combout\ & ( !\number[7]~34_combout\ & ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_dataIn[5]~input_o\,
	datae => \ALT_INV_number[5]~21_combout\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[5]~21_combout\);

-- Location: MLABCELL_X25_Y1_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \upDown~input_o\ ) + ( \number[5]~22_combout\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \upDown~input_o\ ) + ( \number[5]~22_combout\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_upDown~input_o\,
	datac => \ALT_INV_number[5]~22_combout\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X25_Y1_N33
\number[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[5]~23_combout\ = ( \Add0~17_sumout\ & ( !\number[5]~21_combout\ ) ) # ( !\Add0~17_sumout\ & ( \number[5]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_number[5]~21_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \number[5]~23_combout\);

-- Location: FF_X25_Y1_N35
\number[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count~inputCLKENA0_outclk\,
	d => \number[5]~23_combout\,
	clrn => \ALT_INV_number[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \number[5]~_emulated_q\);

-- Location: MLABCELL_X25_Y1_N54
\number[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[5]~22_combout\ = ( \number[7]~34_combout\ & ( (\dataIn[5]~input_o\ & \reset~input_o\) ) ) # ( !\number[7]~34_combout\ & ( (\reset~input_o\ & (!\number[5]~_emulated_q\ $ (!\number[5]~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[5]~_emulated_q\,
	datab => \ALT_INV_dataIn[5]~input_o\,
	datac => \ALT_INV_number[5]~21_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[5]~22_combout\);

-- Location: IOIBUF_X4_Y0_N35
\dataIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: LABCELL_X24_Y1_N3
\number[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[6]~25_combout\ = ( \number[6]~25_combout\ & ( \number[7]~34_combout\ & ( (\reset~input_o\ & \dataIn[6]~input_o\) ) ) ) # ( !\number[6]~25_combout\ & ( \number[7]~34_combout\ & ( (\reset~input_o\ & \dataIn[6]~input_o\) ) ) ) # ( 
-- \number[6]~25_combout\ & ( !\number[7]~34_combout\ & ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_dataIn[6]~input_o\,
	datae => \ALT_INV_number[6]~25_combout\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[6]~25_combout\);

-- Location: MLABCELL_X25_Y1_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \upDown~input_o\ ) + ( \number[6]~26_combout\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \upDown~input_o\ ) + ( \number[6]~26_combout\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_upDown~input_o\,
	datac => \ALT_INV_number[6]~26_combout\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X25_Y1_N57
\number[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[6]~27_combout\ = ( \Add0~21_sumout\ & ( !\number[6]~25_combout\ ) ) # ( !\Add0~21_sumout\ & ( \number[6]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_number[6]~25_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \number[6]~27_combout\);

-- Location: FF_X25_Y1_N58
\number[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count~inputCLKENA0_outclk\,
	d => \number[6]~27_combout\,
	clrn => \ALT_INV_number[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \number[6]~_emulated_q\);

-- Location: LABCELL_X24_Y1_N51
\number[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[6]~26_combout\ = ( \number[7]~34_combout\ & ( (\dataIn[6]~input_o\ & \reset~input_o\) ) ) # ( !\number[7]~34_combout\ & ( (\reset~input_o\ & (!\number[6]~25_combout\ $ (!\number[6]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[6]~input_o\,
	datab => \ALT_INV_number[6]~25_combout\,
	datac => \ALT_INV_number[6]~_emulated_q\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[6]~26_combout\);

-- Location: IOIBUF_X4_Y0_N1
\dataIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: LABCELL_X24_Y1_N18
\number[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[7]~29_combout\ = ( \number[7]~34_combout\ & ( \number[7]~29_combout\ & ( (\dataIn[7]~input_o\ & \reset~input_o\) ) ) ) # ( !\number[7]~34_combout\ & ( \number[7]~29_combout\ & ( \reset~input_o\ ) ) ) # ( \number[7]~34_combout\ & ( 
-- !\number[7]~29_combout\ & ( (\dataIn[7]~input_o\ & \reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dataIn[7]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_number[7]~34_combout\,
	dataf => \ALT_INV_number[7]~29_combout\,
	combout => \number[7]~29_combout\);

-- Location: MLABCELL_X25_Y1_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \upDown~input_o\ ) + ( \number[7]~30_combout\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_upDown~input_o\,
	datac => \ALT_INV_number[7]~30_combout\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\);

-- Location: MLABCELL_X25_Y1_N48
\number[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[7]~31_combout\ = ( \number[7]~29_combout\ & ( !\Add0~25_sumout\ ) ) # ( !\number[7]~29_combout\ & ( \Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_number[7]~29_combout\,
	combout => \number[7]~31_combout\);

-- Location: FF_X25_Y1_N50
\number[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count~inputCLKENA0_outclk\,
	d => \number[7]~31_combout\,
	clrn => \ALT_INV_number[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \number[7]~_emulated_q\);

-- Location: LABCELL_X24_Y1_N45
\number[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \number[7]~30_combout\ = ( \number[7]~34_combout\ & ( (\dataIn[7]~input_o\ & \reset~input_o\) ) ) # ( !\number[7]~34_combout\ & ( (\reset~input_o\ & (!\number[7]~29_combout\ $ (!\number[7]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[7]~input_o\,
	datab => \ALT_INV_number[7]~29_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_number[7]~_emulated_q\,
	dataf => \ALT_INV_number[7]~34_combout\,
	combout => \number[7]~30_combout\);

-- Location: LABCELL_X9_Y5_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


