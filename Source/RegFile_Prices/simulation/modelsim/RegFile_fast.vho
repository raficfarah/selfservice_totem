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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/20/2025 15:57:57"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RegFile IS
    PORT (
	S0 : IN std_logic;
	S1 : IN std_logic;
	S2 : IN std_logic;
	S3 : IN std_logic;
	CLK : IN std_logic;
	data : OUT std_logic_vector(12 DOWNTO 0)
	);
END RegFile;

-- Design Ports Information
-- data[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[3]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[4]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[5]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[6]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[7]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[8]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[9]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[10]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[11]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[12]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S0	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S3	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S1	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S2	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RegFile IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_data : std_logic_vector(12 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \S0~combout\ : std_logic;
SIGNAL \S2~combout\ : std_logic;
SIGNAL \S1~combout\ : std_logic;
SIGNAL \myMUX|Z[0]~22_combout\ : std_logic;
SIGNAL \reg15|Q[5]~feeder_combout\ : std_logic;
SIGNAL \myMUX|Z[0]~23_combout\ : std_logic;
SIGNAL \myMUX|Z[1]~24_combout\ : std_logic;
SIGNAL \S3~combout\ : std_logic;
SIGNAL \myMUX|Z[1]~37_combout\ : std_logic;
SIGNAL \myMUX|Z[2]~12_combout\ : std_logic;
SIGNAL \myMUX|Z[2]~40_combout\ : std_logic;
SIGNAL \myMUX|Z[3]~25_combout\ : std_logic;
SIGNAL \myMUX|Z[3]~26_combout\ : std_logic;
SIGNAL \myMUX|Z[4]~18_combout\ : std_logic;
SIGNAL \myMUX|Z[4]~42_combout\ : std_logic;
SIGNAL \myMUX|Z[5]~21_combout\ : std_logic;
SIGNAL \myMUX|Z[5]~43_combout\ : std_logic;
SIGNAL \myMUX|Z[6]~27_combout\ : std_logic;
SIGNAL \myMUX|Z[6]~28_combout\ : std_logic;
SIGNAL \myMUX|Z[7]~15_combout\ : std_logic;
SIGNAL \myMUX|Z[7]~41_combout\ : std_logic;
SIGNAL \myMUX|Z[8]~29_combout\ : std_logic;
SIGNAL \myMUX|Z[8]~30_combout\ : std_logic;
SIGNAL \myMUX|Z[6]~31_combout\ : std_logic;
SIGNAL \myMUX|Z[9]~38_combout\ : std_logic;
SIGNAL \myMUX|Z[10]~32_combout\ : std_logic;
SIGNAL \myMUX|Z[10]~39_combout\ : std_logic;
SIGNAL \myMUX|Z[11]~33_combout\ : std_logic;
SIGNAL \myMUX|Z[11]~34_combout\ : std_logic;
SIGNAL \myMUX|Z[12]~35_combout\ : std_logic;
SIGNAL \myMUX|Z[12]~36_combout\ : std_logic;
SIGNAL \reg15|Q\ : std_logic_vector(12 DOWNTO 0);

BEGIN

ww_S0 <= S0;
ww_S1 <= S1;
ww_S2 <= S2;
ww_S3 <= S3;
ww_CLK <= CLK;
data <= ww_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S0,
	combout => \S0~combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S2,
	combout => \S2~combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S1,
	combout => \S1~combout\);

-- Location: LCCOMB_X31_Y35_N24
\myMUX|Z[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[0]~22_combout\ = (\S0~combout\ & (!\S2~combout\ & (\S3~combout\ $ (\S1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[0]~22_combout\);

-- Location: LCCOMB_X32_Y35_N24
\reg15|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg15|Q[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reg15|Q[5]~feeder_combout\);

-- Location: LCFF_X32_Y35_N25
\reg15|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~combout\,
	datain => \reg15|Q[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg15|Q\(5));

-- Location: LCCOMB_X32_Y35_N18
\myMUX|Z[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[0]~23_combout\ = (\myMUX|Z[0]~22_combout\ & \reg15|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myMUX|Z[0]~22_combout\,
	datac => \reg15|Q\(5),
	combout => \myMUX|Z[0]~23_combout\);

-- Location: LCCOMB_X31_Y35_N2
\myMUX|Z[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[1]~24_combout\ = (\S3~combout\ & (\S0~combout\ & (!\S2~combout\))) # (!\S3~combout\ & (\S0~combout\ $ (((\S1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[1]~24_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S3,
	combout => \S3~combout\);

-- Location: LCCOMB_X31_Y35_N18
\myMUX|Z[1]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[1]~37_combout\ = (\reg15|Q\(5) & ((\myMUX|Z[1]~24_combout\ & (\S3~combout\ & !\S1~combout\)) # (!\myMUX|Z[1]~24_combout\ & (!\S3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|Z[1]~24_combout\,
	datab => \reg15|Q\(5),
	datac => \S3~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[1]~37_combout\);

-- Location: LCCOMB_X31_Y35_N16
\myMUX|Z[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[2]~12_combout\ = (\S3~combout\ & (!\S1~combout\ & ((!\S2~combout\) # (!\S0~combout\)))) # (!\S3~combout\ & (\S1~combout\ & ((\S2~combout\) # (!\S0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[2]~12_combout\);

-- Location: LCCOMB_X32_Y35_N22
\myMUX|Z[2]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[2]~40_combout\ = (\myMUX|Z[2]~12_combout\ & \reg15|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myMUX|Z[2]~12_combout\,
	datac => \reg15|Q\(5),
	combout => \myMUX|Z[2]~40_combout\);

-- Location: LCCOMB_X31_Y35_N20
\myMUX|Z[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[3]~25_combout\ = (\S2~combout\ & (\S3~combout\ $ (((\S0~combout\) # (!\S1~combout\))))) # (!\S2~combout\ & (((\S0~combout\ & \S1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[3]~25_combout\);

-- Location: LCCOMB_X32_Y35_N20
\myMUX|Z[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[3]~26_combout\ = (\reg15|Q\(5) & \myMUX|Z[3]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg15|Q\(5),
	datac => \myMUX|Z[3]~25_combout\,
	combout => \myMUX|Z[3]~26_combout\);

-- Location: LCCOMB_X31_Y35_N28
\myMUX|Z[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[4]~18_combout\ = (\S3~combout\ & ((\S1~combout\ & (!\S0~combout\)) # (!\S1~combout\ & ((\S2~combout\))))) # (!\S3~combout\ & ((\S2~combout\ & (!\S0~combout\)) # (!\S2~combout\ & ((!\S1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[4]~18_combout\);

-- Location: LCCOMB_X32_Y35_N10
\myMUX|Z[4]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[4]~42_combout\ = (\myMUX|Z[4]~18_combout\ & \reg15|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myMUX|Z[4]~18_combout\,
	datac => \reg15|Q\(5),
	combout => \myMUX|Z[4]~42_combout\);

-- Location: LCCOMB_X31_Y35_N14
\myMUX|Z[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[5]~21_combout\ = (\S2~combout\ & ((\S3~combout\) # (\S0~combout\ $ (!\S1~combout\)))) # (!\S2~combout\ & ((\S1~combout\ & (\S3~combout\)) # (!\S1~combout\ & ((!\S0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[5]~21_combout\);

-- Location: LCCOMB_X32_Y35_N12
\myMUX|Z[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[5]~43_combout\ = (\myMUX|Z[5]~21_combout\ & \reg15|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|Z[5]~21_combout\,
	datac => \reg15|Q\(5),
	combout => \myMUX|Z[5]~43_combout\);

-- Location: LCCOMB_X31_Y35_N30
\myMUX|Z[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[6]~27_combout\ = (\S0~combout\ & ((\S1~combout\) # (\S3~combout\ $ (!\S2~combout\)))) # (!\S0~combout\ & (!\S1~combout\ & ((\S3~combout\) # (\S2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[6]~27_combout\);

-- Location: LCCOMB_X32_Y35_N6
\myMUX|Z[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[6]~28_combout\ = (\reg15|Q\(5) & \myMUX|Z[6]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg15|Q\(5),
	datac => \myMUX|Z[6]~27_combout\,
	combout => \myMUX|Z[6]~28_combout\);

-- Location: LCCOMB_X31_Y35_N26
\myMUX|Z[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[7]~15_combout\ = (\S0~combout\ & ((\S3~combout\ & (!\S2~combout\)) # (!\S3~combout\ & ((\S2~combout\) # (!\S1~combout\))))) # (!\S0~combout\ & (((\S2~combout\) # (\S1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[7]~15_combout\);

-- Location: LCCOMB_X32_Y35_N16
\myMUX|Z[7]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[7]~41_combout\ = (\myMUX|Z[7]~15_combout\ & \reg15|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myMUX|Z[7]~15_combout\,
	datac => \reg15|Q\(5),
	combout => \myMUX|Z[7]~41_combout\);

-- Location: LCCOMB_X31_Y35_N0
\myMUX|Z[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[8]~29_combout\ = (\S3~combout\ & ((\S0~combout\) # ((\S2~combout\)))) # (!\S3~combout\ & (\S0~combout\ $ (((\S1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[8]~29_combout\);

-- Location: LCCOMB_X31_Y35_N10
\myMUX|Z[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[8]~30_combout\ = (\myMUX|Z[8]~29_combout\ & \reg15|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myMUX|Z[8]~29_combout\,
	datad => \reg15|Q\(5),
	combout => \myMUX|Z[8]~30_combout\);

-- Location: LCCOMB_X31_Y35_N4
\myMUX|Z[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[6]~31_combout\ = \S3~combout\ $ (\S2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datac => \S2~combout\,
	combout => \myMUX|Z[6]~31_combout\);

-- Location: LCCOMB_X31_Y35_N12
\myMUX|Z[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[9]~38_combout\ = (\reg15|Q\(5) & (\S0~combout\ $ (((!\myMUX|Z[6]~31_combout\ & \S1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~combout\,
	datab => \reg15|Q\(5),
	datac => \myMUX|Z[6]~31_combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[9]~38_combout\);

-- Location: LCCOMB_X31_Y35_N6
\myMUX|Z[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[10]~32_combout\ = (\S0~combout\ & (!\S1~combout\ & ((\S3~combout\) # (!\S2~combout\)))) # (!\S0~combout\ & (\S3~combout\ & (!\S2~combout\ & \S1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[10]~32_combout\);

-- Location: LCCOMB_X31_Y35_N22
\myMUX|Z[10]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[10]~39_combout\ = (\myMUX|Z[10]~32_combout\ & (\reg15|Q\(5) & ((\S0~combout\) # (\S1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|Z[10]~32_combout\,
	datab => \reg15|Q\(5),
	datac => \S0~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[10]~39_combout\);

-- Location: LCCOMB_X31_Y35_N8
\myMUX|Z[11]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[11]~33_combout\ = (\S3~combout\ & ((\S2~combout\ & ((\S1~combout\))) # (!\S2~combout\ & (\S0~combout\ & !\S1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~combout\,
	datab => \S0~combout\,
	datac => \S2~combout\,
	datad => \S1~combout\,
	combout => \myMUX|Z[11]~33_combout\);

-- Location: LCCOMB_X32_Y35_N0
\myMUX|Z[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[11]~34_combout\ = (\myMUX|Z[11]~33_combout\ & \reg15|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX|Z[11]~33_combout\,
	datac => \reg15|Q\(5),
	combout => \myMUX|Z[11]~34_combout\);

-- Location: LCCOMB_X32_Y35_N2
\myMUX|Z[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[12]~35_combout\ = (\reg15|Q\(5) & ((\S1~combout\ & (!\S3~combout\ & !\S0~combout\)) # (!\S1~combout\ & ((\S0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg15|Q\(5),
	datab => \S3~combout\,
	datac => \S1~combout\,
	datad => \S0~combout\,
	combout => \myMUX|Z[12]~35_combout\);

-- Location: LCCOMB_X32_Y35_N4
\myMUX|Z[12]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX|Z[12]~36_combout\ = (\S2~combout\ & \myMUX|Z[12]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S2~combout\,
	datad => \myMUX|Z[12]~35_combout\,
	combout => \myMUX|Z[12]~36_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(0));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(2));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(3));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(4));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(5));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(6));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(7));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(8));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[9]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(9));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[10]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(10));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(11));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myMUX|Z[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(12));
END structure;


