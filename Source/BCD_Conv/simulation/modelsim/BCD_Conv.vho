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

-- DATE "06/19/2025 21:55:08"

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

ENTITY 	BCD_Conv IS
    PORT (
	entrada : IN std_logic_vector(12 DOWNTO 0);
	milhar : OUT std_logic_vector(3 DOWNTO 0);
	centena : OUT std_logic_vector(3 DOWNTO 0);
	dezena : OUT std_logic_vector(3 DOWNTO 0);
	unidade : OUT std_logic_vector(3 DOWNTO 0)
	);
END BCD_Conv;

-- Design Ports Information
-- milhar[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- milhar[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- milhar[2]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- milhar[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centena[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centena[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centena[2]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centena[3]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dezena[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dezena[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dezena[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dezena[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- unidade[0]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- unidade[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- unidade[2]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- unidade[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- entrada[12]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[10]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[11]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[9]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BCD_Conv IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_milhar : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_centena : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dezena : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_unidade : std_logic_vector(3 DOWNTO 0);
SIGNAL \temp~10_combout\ : std_logic;
SIGNAL \temp~16_combout\ : std_logic;
SIGNAL \temp~23_combout\ : std_logic;
SIGNAL \temp~24_combout\ : std_logic;
SIGNAL \temp~26_combout\ : std_logic;
SIGNAL \temp~33_combout\ : std_logic;
SIGNAL \temp~36_combout\ : std_logic;
SIGNAL \temp~40_combout\ : std_logic;
SIGNAL \temp~42_combout\ : std_logic;
SIGNAL \temp~44_combout\ : std_logic;
SIGNAL \temp~48_combout\ : std_logic;
SIGNAL \temp~55_combout\ : std_logic;
SIGNAL \temp~58_combout\ : std_logic;
SIGNAL \temp~74_combout\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \temp~91_combout\ : std_logic;
SIGNAL \temp~11_combout\ : std_logic;
SIGNAL \temp~12_combout\ : std_logic;
SIGNAL \temp~13_combout\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \temp~14_combout\ : std_logic;
SIGNAL \temp~20_combout\ : std_logic;
SIGNAL \temp~15_combout\ : std_logic;
SIGNAL \temp~17_combout\ : std_logic;
SIGNAL \temp~18_combout\ : std_logic;
SIGNAL \temp~19_combout\ : std_logic;
SIGNAL \temp~39_combout\ : std_logic;
SIGNAL \temp~27_combout\ : std_logic;
SIGNAL \temp~28_combout\ : std_logic;
SIGNAL \temp~29_combout\ : std_logic;
SIGNAL \temp~34_combout\ : std_logic;
SIGNAL \temp~35_combout\ : std_logic;
SIGNAL \temp~37_combout\ : std_logic;
SIGNAL \temp~21_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \temp~25_combout\ : std_logic;
SIGNAL \temp~30_combout\ : std_logic;
SIGNAL \temp~22_combout\ : std_logic;
SIGNAL \temp~31_combout\ : std_logic;
SIGNAL \temp~32_combout\ : std_logic;
SIGNAL \temp~38_combout\ : std_logic;
SIGNAL \temp~43_combout\ : std_logic;
SIGNAL \temp~45_combout\ : std_logic;
SIGNAL \temp~46_combout\ : std_logic;
SIGNAL \temp~47_combout\ : std_logic;
SIGNAL \temp~49_combout\ : std_logic;
SIGNAL \temp~50_combout\ : std_logic;
SIGNAL \temp~51_combout\ : std_logic;
SIGNAL \temp~41_combout\ : std_logic;
SIGNAL \temp~53_combout\ : std_logic;
SIGNAL \temp~54_combout\ : std_logic;
SIGNAL \temp~56_combout\ : std_logic;
SIGNAL \temp~59_combout\ : std_logic;
SIGNAL \temp~60_combout\ : std_logic;
SIGNAL \temp~61_combout\ : std_logic;
SIGNAL \temp~57_combout\ : std_logic;
SIGNAL \temp~62_combout\ : std_logic;
SIGNAL \temp~52_combout\ : std_logic;
SIGNAL \temp~63_combout\ : std_logic;
SIGNAL \temp~64_combout\ : std_logic;
SIGNAL \temp~66_combout\ : std_logic;
SIGNAL \temp~65_combout\ : std_logic;
SIGNAL \temp~67_combout\ : std_logic;
SIGNAL \temp~68_combout\ : std_logic;
SIGNAL \temp~69_combout\ : std_logic;
SIGNAL \temp~71_combout\ : std_logic;
SIGNAL \temp~70_combout\ : std_logic;
SIGNAL \temp~73_combout\ : std_logic;
SIGNAL \temp~75_combout\ : std_logic;
SIGNAL \temp~76_combout\ : std_logic;
SIGNAL \temp~72_combout\ : std_logic;
SIGNAL \temp~77_combout\ : std_logic;
SIGNAL \temp~78_combout\ : std_logic;
SIGNAL \temp~79_combout\ : std_logic;
SIGNAL \temp~80_combout\ : std_logic;
SIGNAL \temp~83_combout\ : std_logic;
SIGNAL \temp~81_combout\ : std_logic;
SIGNAL \temp~82_combout\ : std_logic;
SIGNAL \temp~84_combout\ : std_logic;
SIGNAL \temp~85_combout\ : std_logic;
SIGNAL \temp~86_combout\ : std_logic;
SIGNAL \temp~87_combout\ : std_logic;
SIGNAL \temp~88_combout\ : std_logic;
SIGNAL \temp~89_combout\ : std_logic;
SIGNAL \temp~90_combout\ : std_logic;
SIGNAL \entrada~combout\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_temp~88_combout\ : std_logic;
SIGNAL \ALT_INV_temp~84_combout\ : std_logic;
SIGNAL \ALT_INV_temp~77_combout\ : std_logic;
SIGNAL \ALT_INV_temp~63_combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
milhar <= ww_milhar;
centena <= ww_centena;
dezena <= ww_dezena;
unidade <= ww_unidade;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_temp~88_combout\ <= NOT \temp~88_combout\;
\ALT_INV_temp~84_combout\ <= NOT \temp~84_combout\;
\ALT_INV_temp~77_combout\ <= NOT \temp~77_combout\;
\ALT_INV_temp~63_combout\ <= NOT \temp~63_combout\;

-- Location: LCCOMB_X34_Y35_N10
\temp~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~10_combout\ = (\entrada~combout\(10) & (!\entrada~combout\(12) & ((\entrada~combout\(9)) # (!\entrada~combout\(11))))) # (!\entrada~combout\(10) & (\entrada~combout\(12) & ((\entrada~combout\(11)) # (!\entrada~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(9),
	datab => \entrada~combout\(10),
	datac => \entrada~combout\(12),
	datad => \entrada~combout\(11),
	combout => \temp~10_combout\);

-- Location: LCCOMB_X34_Y35_N14
\temp~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~16_combout\ = (\entrada~combout\(8) & (((!\temp~12_combout\)))) # (!\entrada~combout\(8) & ((\temp~11_combout\ & ((\temp~12_combout\))) # (!\temp~11_combout\ & (!\temp~10_combout\ & !\temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \entrada~combout\(8),
	datac => \temp~11_combout\,
	datad => \temp~12_combout\,
	combout => \temp~16_combout\);

-- Location: LCCOMB_X34_Y35_N24
\temp~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~23_combout\ = (\entrada~combout\(9) & (\entrada~combout\(10) & (\entrada~combout\(12) & \entrada~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(9),
	datab => \entrada~combout\(10),
	datac => \entrada~combout\(12),
	datad => \entrada~combout\(11),
	combout => \temp~23_combout\);

-- Location: LCCOMB_X34_Y35_N18
\temp~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~24_combout\ = (\temp~23_combout\) # ((!\temp~13_combout\ & ((!\entrada~combout\(12)) # (!\temp~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~23_combout\,
	datab => \temp~9_combout\,
	datac => \entrada~combout\(12),
	datad => \temp~13_combout\,
	combout => \temp~24_combout\);

-- Location: LCCOMB_X38_Y35_N6
\temp~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~26_combout\ = (\temp~20_combout\ & (\temp~19_combout\ & ((\temp~21_combout\) # (\temp~15_combout\)))) # (!\temp~20_combout\ & ((\temp~15_combout\ $ (!\temp~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~21_combout\,
	datab => \temp~20_combout\,
	datac => \temp~15_combout\,
	datad => \temp~19_combout\,
	combout => \temp~26_combout\);

-- Location: LCCOMB_X38_Y35_N20
\temp~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~33_combout\ = (\temp~25_combout\ & (!\temp~26_combout\ & (\temp~30_combout\))) # (!\temp~25_combout\ & (\temp~22_combout\ & ((\temp~26_combout\) # (!\temp~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~26_combout\,
	datab => \temp~25_combout\,
	datac => \temp~30_combout\,
	datad => \temp~22_combout\,
	combout => \temp~33_combout\);

-- Location: LCCOMB_X35_Y35_N6
\temp~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~36_combout\ = (\entrada~combout\(6) & ((\temp~27_combout\) # ((\temp~28_combout\)))) # (!\entrada~combout\(6) & (!\temp~28_combout\ & ((\temp~29_combout\) # (!\temp~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(6),
	datab => \temp~27_combout\,
	datac => \temp~28_combout\,
	datad => \temp~29_combout\,
	combout => \temp~36_combout\);

-- Location: LCCOMB_X38_Y35_N2
\temp~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~40_combout\ = \temp~22_combout\ $ ((((!\temp~26_combout\ & \temp~30_combout\)) # (!\temp~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~26_combout\,
	datab => \temp~25_combout\,
	datac => \temp~30_combout\,
	datad => \temp~22_combout\,
	combout => \temp~40_combout\);

-- Location: LCCOMB_X42_Y35_N10
\temp~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~42_combout\ = (\temp~38_combout\ & (!\temp~39_combout\ & (\temp~40_combout\ $ (!\temp~91_combout\)))) # (!\temp~38_combout\ & (!\temp~40_combout\ & (!\temp~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~40_combout\,
	datab => \temp~91_combout\,
	datac => \temp~39_combout\,
	datad => \temp~38_combout\,
	combout => \temp~42_combout\);

-- Location: LCCOMB_X38_Y35_N4
\temp~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~44_combout\ = (\temp~33_combout\ & (\temp~37_combout\ $ (((\temp~32_combout\))))) # (!\temp~33_combout\ & (\temp~32_combout\ & ((!\temp~31_combout\) # (!\temp~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~33_combout\,
	datab => \temp~37_combout\,
	datac => \temp~31_combout\,
	datad => \temp~32_combout\,
	combout => \temp~44_combout\);

-- Location: LCCOMB_X35_Y35_N12
\temp~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~48_combout\ = (\temp~34_combout\ & (\temp~36_combout\ & (!\entrada~combout\(5)))) # (!\temp~34_combout\ & (\temp~35_combout\ & ((\entrada~combout\(5)) # (!\temp~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~36_combout\,
	datab => \entrada~combout\(5),
	datac => \temp~34_combout\,
	datad => \temp~35_combout\,
	combout => \temp~48_combout\);

-- Location: LCCOMB_X37_Y35_N10
\temp~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~55_combout\ = (\temp~45_combout\ & (((!\temp~44_combout\ & !\temp~46_combout\)) # (!\temp~50_combout\))) # (!\temp~45_combout\ & (((\temp~46_combout\ & \temp~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~44_combout\,
	datab => \temp~45_combout\,
	datac => \temp~46_combout\,
	datad => \temp~50_combout\,
	combout => \temp~55_combout\);

-- Location: LCCOMB_X36_Y35_N10
\temp~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~58_combout\ = (\temp~48_combout\ & ((\temp~49_combout\ $ (\entrada~combout\(4))))) # (!\temp~48_combout\ & (!\temp~49_combout\ & ((\entrada~combout\(4)) # (!\temp~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~48_combout\,
	datab => \temp~47_combout\,
	datac => \temp~49_combout\,
	datad => \entrada~combout\(4),
	combout => \temp~58_combout\);

-- Location: LCCOMB_X36_Y35_N12
\temp~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~74_combout\ = (\temp~58_combout\ & (((!\entrada~combout\(3) & \temp~60_combout\)))) # (!\temp~58_combout\ & (\temp~59_combout\ & ((\entrada~combout\(3)) # (!\temp~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~58_combout\,
	datab => \temp~59_combout\,
	datac => \entrada~combout\(3),
	datad => \temp~60_combout\,
	combout => \temp~74_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[9]~I\ : cycloneii_io
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
	padio => ww_entrada(9),
	combout => \entrada~combout\(9));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[6]~I\ : cycloneii_io
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
	padio => ww_entrada(6),
	combout => \entrada~combout\(6));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[10]~I\ : cycloneii_io
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
	padio => ww_entrada(10),
	combout => \entrada~combout\(10));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[12]~I\ : cycloneii_io
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
	padio => ww_entrada(12),
	combout => \entrada~combout\(12));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[8]~I\ : cycloneii_io
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
	padio => ww_entrada(8),
	combout => \entrada~combout\(8));

-- Location: LCCOMB_X34_Y35_N12
\temp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = (\entrada~combout\(9)) # (\entrada~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(9),
	datad => \entrada~combout\(8),
	combout => \temp~3_combout\);

-- Location: LCCOMB_X34_Y35_N30
\temp~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~91_combout\ = (\entrada~combout\(11) & (\entrada~combout\(12) & ((\entrada~combout\(10)) # (\temp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(11),
	datab => \entrada~combout\(10),
	datac => \entrada~combout\(12),
	datad => \temp~3_combout\,
	combout => \temp~91_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[11]~I\ : cycloneii_io
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
	padio => ww_entrada(11),
	combout => \entrada~combout\(11));

-- Location: LCCOMB_X34_Y35_N20
\temp~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~11_combout\ = (\entrada~combout\(9) & (!\entrada~combout\(10) & (\entrada~combout\(12) & !\entrada~combout\(11)))) # (!\entrada~combout\(9) & (\entrada~combout\(11) & (\entrada~combout\(10) $ (!\entrada~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(9),
	datab => \entrada~combout\(10),
	datac => \entrada~combout\(12),
	datad => \entrada~combout\(11),
	combout => \temp~11_combout\);

-- Location: LCCOMB_X34_Y35_N6
\temp~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~12_combout\ = (\entrada~combout\(9) & (\entrada~combout\(11) $ (((!\entrada~combout\(10) & \entrada~combout\(12)))))) # (!\entrada~combout\(9) & ((\entrada~combout\(10) & ((\entrada~combout\(12)) # (!\entrada~combout\(11)))) # 
-- (!\entrada~combout\(10) & ((\entrada~combout\(11)) # (!\entrada~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(9),
	datab => \entrada~combout\(10),
	datac => \entrada~combout\(12),
	datad => \entrada~combout\(11),
	combout => \temp~12_combout\);

-- Location: LCCOMB_X34_Y35_N0
\temp~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~13_combout\ = \temp~11_combout\ $ ((((!\entrada~combout\(8) & \temp~12_combout\)) # (!\temp~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \entrada~combout\(8),
	datac => \temp~11_combout\,
	datad => \temp~12_combout\,
	combout => \temp~13_combout\);

-- Location: LCCOMB_X34_Y35_N8
\temp~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~9_combout\ = (\entrada~combout\(10)) # (\entrada~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(10),
	datad => \entrada~combout\(11),
	combout => \temp~9_combout\);

-- Location: LCCOMB_X34_Y35_N26
\temp~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~14_combout\ = (\entrada~combout\(10) & (\entrada~combout\(11) & ((\entrada~combout\(9)) # (!\entrada~combout\(12))))) # (!\entrada~combout\(10) & ((\entrada~combout\(12) & ((!\entrada~combout\(11)))) # (!\entrada~combout\(12) & (\entrada~combout\(9) 
-- & \entrada~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(9),
	datab => \entrada~combout\(10),
	datac => \entrada~combout\(12),
	datad => \entrada~combout\(11),
	combout => \temp~14_combout\);

-- Location: LCCOMB_X34_Y35_N28
\temp~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~20_combout\ = (\temp~14_combout\ & (((!\temp~9_combout\) # (!\temp~13_combout\)) # (!\entrada~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(12),
	datab => \temp~13_combout\,
	datac => \temp~9_combout\,
	datad => \temp~14_combout\,
	combout => \temp~20_combout\);

-- Location: LCCOMB_X34_Y35_N4
\temp~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~15_combout\ = (\entrada~combout\(12) & (\temp~13_combout\ & (\temp~9_combout\ & !\temp~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(12),
	datab => \temp~13_combout\,
	datac => \temp~9_combout\,
	datad => \temp~14_combout\,
	combout => \temp~15_combout\);

-- Location: LCCOMB_X34_Y35_N16
\temp~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~17_combout\ = (\temp~10_combout\ & (!\entrada~combout\(8) & ((\temp~12_combout\)))) # (!\temp~10_combout\ & (\temp~11_combout\ & ((\entrada~combout\(8)) # (!\temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \entrada~combout\(8),
	datac => \temp~11_combout\,
	datad => \temp~12_combout\,
	combout => \temp~17_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[7]~I\ : cycloneii_io
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
	padio => ww_entrada(7),
	combout => \entrada~combout\(7));

-- Location: LCCOMB_X34_Y35_N2
\temp~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~18_combout\ = (\temp~10_combout\ & ((\entrada~combout\(8)) # ((!\temp~11_combout\ & \temp~12_combout\)))) # (!\temp~10_combout\ & (\entrada~combout\(8) $ ((!\temp~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \entrada~combout\(8),
	datac => \temp~11_combout\,
	datad => \temp~12_combout\,
	combout => \temp~18_combout\);

-- Location: LCCOMB_X35_Y35_N16
\temp~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~19_combout\ = \temp~17_combout\ $ ((((!\entrada~combout\(7) & \temp~18_combout\)) # (!\temp~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~17_combout\,
	datac => \entrada~combout\(7),
	datad => \temp~18_combout\,
	combout => \temp~19_combout\);

-- Location: LCCOMB_X38_Y35_N24
\temp~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~39_combout\ = \temp~15_combout\ $ (((\temp~20_combout\ & ((\temp~21_combout\) # (!\temp~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~21_combout\,
	datab => \temp~20_combout\,
	datac => \temp~15_combout\,
	datad => \temp~19_combout\,
	combout => \temp~39_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[5]~I\ : cycloneii_io
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
	padio => ww_entrada(5),
	combout => \entrada~combout\(5));

-- Location: LCCOMB_X35_Y35_N2
\temp~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~27_combout\ = (\temp~17_combout\ & ((\entrada~combout\(7) $ (\temp~18_combout\)))) # (!\temp~17_combout\ & (!\temp~18_combout\ & ((\entrada~combout\(7)) # (!\temp~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~17_combout\,
	datac => \entrada~combout\(7),
	datad => \temp~18_combout\,
	combout => \temp~27_combout\);

-- Location: LCCOMB_X35_Y35_N4
\temp~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~28_combout\ = (\temp~16_combout\ & (((!\entrada~combout\(7) & \temp~18_combout\)))) # (!\temp~16_combout\ & (\temp~17_combout\ & ((\entrada~combout\(7)) # (!\temp~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~17_combout\,
	datac => \entrada~combout\(7),
	datad => \temp~18_combout\,
	combout => \temp~28_combout\);

-- Location: LCCOMB_X35_Y35_N22
\temp~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~29_combout\ = (\temp~16_combout\ & ((\entrada~combout\(7)) # ((!\temp~17_combout\ & \temp~18_combout\)))) # (!\temp~16_combout\ & (\temp~17_combout\ $ ((!\entrada~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~17_combout\,
	datac => \entrada~combout\(7),
	datad => \temp~18_combout\,
	combout => \temp~29_combout\);

-- Location: LCCOMB_X35_Y35_N10
\temp~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~34_combout\ = (\entrada~combout\(6) & (((!\temp~29_combout\)))) # (!\entrada~combout\(6) & ((\temp~28_combout\ & ((\temp~29_combout\))) # (!\temp~28_combout\ & (!\temp~27_combout\ & !\temp~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(6),
	datab => \temp~27_combout\,
	datac => \temp~28_combout\,
	datad => \temp~29_combout\,
	combout => \temp~34_combout\);

-- Location: LCCOMB_X35_Y35_N28
\temp~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~35_combout\ = (\temp~27_combout\ & (!\entrada~combout\(6) & ((\temp~29_combout\)))) # (!\temp~27_combout\ & (\temp~28_combout\ & ((\entrada~combout\(6)) # (!\temp~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(6),
	datab => \temp~27_combout\,
	datac => \temp~28_combout\,
	datad => \temp~29_combout\,
	combout => \temp~35_combout\);

-- Location: LCCOMB_X35_Y35_N24
\temp~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~37_combout\ = \temp~35_combout\ $ ((((\temp~36_combout\ & !\entrada~combout\(5))) # (!\temp~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~36_combout\,
	datab => \entrada~combout\(5),
	datac => \temp~34_combout\,
	datad => \temp~35_combout\,
	combout => \temp~37_combout\);

-- Location: LCCOMB_X34_Y35_N22
\temp~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~21_combout\ = (\entrada~combout\(12) & ((\temp~13_combout\ & (\temp~9_combout\ & \temp~14_combout\)) # (!\temp~13_combout\ & (!\temp~9_combout\)))) # (!\entrada~combout\(12) & (!\temp~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(12),
	datab => \temp~13_combout\,
	datac => \temp~9_combout\,
	datad => \temp~14_combout\,
	combout => \temp~21_combout\);

-- Location: LCCOMB_X38_Y35_N18
\LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!\temp~15_combout\ & (((!\temp~21_combout\ & \temp~19_combout\)) # (!\temp~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~21_combout\,
	datab => \temp~20_combout\,
	datac => \temp~15_combout\,
	datad => \temp~19_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X38_Y35_N28
\temp~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~25_combout\ = (\LessThan6~0_combout\ & (\temp~24_combout\)) # (!\LessThan6~0_combout\ & ((\temp~19_combout\ $ (\temp~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~24_combout\,
	datab => \temp~19_combout\,
	datac => \temp~21_combout\,
	datad => \LessThan6~0_combout\,
	combout => \temp~25_combout\);

-- Location: LCCOMB_X35_Y35_N0
\temp~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~30_combout\ = \temp~28_combout\ $ ((((!\entrada~combout\(6) & \temp~29_combout\)) # (!\temp~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(6),
	datab => \temp~27_combout\,
	datac => \temp~28_combout\,
	datad => \temp~29_combout\,
	combout => \temp~30_combout\);

-- Location: LCCOMB_X38_Y35_N0
\temp~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~22_combout\ = (\temp~20_combout\ & (!\temp~21_combout\ & ((\temp~19_combout\)))) # (!\temp~20_combout\ & (\temp~15_combout\ & ((\temp~21_combout\) # (!\temp~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~21_combout\,
	datab => \temp~20_combout\,
	datac => \temp~15_combout\,
	datad => \temp~19_combout\,
	combout => \temp~22_combout\);

-- Location: LCCOMB_X38_Y35_N8
\temp~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~31_combout\ = (\temp~26_combout\ & (((!\temp~25_combout\ & !\temp~22_combout\)) # (!\temp~30_combout\))) # (!\temp~26_combout\ & (((\temp~30_combout\ & \temp~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~26_combout\,
	datab => \temp~25_combout\,
	datac => \temp~30_combout\,
	datad => \temp~22_combout\,
	combout => \temp~31_combout\);

-- Location: LCCOMB_X38_Y35_N10
\temp~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~32_combout\ = (\temp~25_combout\ & (\temp~30_combout\ & ((\temp~26_combout\) # (\temp~22_combout\)))) # (!\temp~25_combout\ & ((\temp~30_combout\ $ (!\temp~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~26_combout\,
	datab => \temp~25_combout\,
	datac => \temp~30_combout\,
	datad => \temp~22_combout\,
	combout => \temp~32_combout\);

-- Location: LCCOMB_X38_Y35_N22
\temp~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~38_combout\ = \temp~33_combout\ $ ((((\temp~37_combout\ & !\temp~32_combout\)) # (!\temp~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~33_combout\,
	datab => \temp~37_combout\,
	datac => \temp~31_combout\,
	datad => \temp~32_combout\,
	combout => \temp~38_combout\);

-- Location: LCCOMB_X42_Y35_N28
\temp~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~43_combout\ = (\temp~39_combout\ & ((\temp~40_combout\ & (\temp~91_combout\ & !\temp~38_combout\)) # (!\temp~40_combout\ & (!\temp~91_combout\ & \temp~38_combout\)))) # (!\temp~39_combout\ & (\temp~38_combout\ $ (((!\temp~91_combout\) # 
-- (!\temp~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~40_combout\,
	datab => \temp~91_combout\,
	datac => \temp~39_combout\,
	datad => \temp~38_combout\,
	combout => \temp~43_combout\);

-- Location: LCCOMB_X38_Y35_N30
\temp~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~45_combout\ = (\temp~33_combout\ & (\temp~37_combout\)) # (!\temp~33_combout\ & ((\temp~37_combout\ & (\temp~31_combout\ & \temp~32_combout\)) # (!\temp~37_combout\ & (!\temp~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~33_combout\,
	datab => \temp~37_combout\,
	datac => \temp~31_combout\,
	datad => \temp~32_combout\,
	combout => \temp~45_combout\);

-- Location: LCCOMB_X38_Y35_N16
\temp~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~46_combout\ = (\temp~31_combout\ & (((\temp~37_combout\ & !\temp~32_combout\)))) # (!\temp~31_combout\ & (\temp~33_combout\ & ((\temp~32_combout\) # (!\temp~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~33_combout\,
	datab => \temp~37_combout\,
	datac => \temp~31_combout\,
	datad => \temp~32_combout\,
	combout => \temp~46_combout\);

-- Location: LCCOMB_X35_Y35_N18
\temp~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~47_combout\ = (\temp~36_combout\ & (!\entrada~combout\(5) & ((\temp~35_combout\)))) # (!\temp~36_combout\ & ((\entrada~combout\(5)) # ((!\temp~34_combout\ & !\temp~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~36_combout\,
	datab => \entrada~combout\(5),
	datac => \temp~34_combout\,
	datad => \temp~35_combout\,
	combout => \temp~47_combout\);

-- Location: LCCOMB_X35_Y35_N30
\temp~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~49_combout\ = (\entrada~combout\(5) & (((\temp~34_combout\) # (\temp~35_combout\)))) # (!\entrada~combout\(5) & (!\temp~35_combout\ & ((\temp~36_combout\) # (!\temp~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~36_combout\,
	datab => \entrada~combout\(5),
	datac => \temp~34_combout\,
	datad => \temp~35_combout\,
	combout => \temp~49_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[4]~I\ : cycloneii_io
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
	padio => ww_entrada(4),
	combout => \entrada~combout\(4));

-- Location: LCCOMB_X36_Y35_N16
\temp~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~50_combout\ = \temp~48_combout\ $ ((((\temp~49_combout\ & !\entrada~combout\(4))) # (!\temp~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~48_combout\,
	datab => \temp~47_combout\,
	datac => \temp~49_combout\,
	datad => \entrada~combout\(4),
	combout => \temp~50_combout\);

-- Location: LCCOMB_X37_Y35_N16
\temp~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~51_combout\ = \temp~46_combout\ $ ((((!\temp~45_combout\ & \temp~50_combout\)) # (!\temp~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~44_combout\,
	datab => \temp~45_combout\,
	datac => \temp~46_combout\,
	datad => \temp~50_combout\,
	combout => \temp~51_combout\);

-- Location: LCCOMB_X42_Y35_N0
\temp~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~41_combout\ = (\temp~39_combout\ & (\temp~38_combout\ & (\temp~40_combout\ $ (\temp~91_combout\)))) # (!\temp~39_combout\ & (\temp~40_combout\ & (\temp~91_combout\ & !\temp~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~40_combout\,
	datab => \temp~91_combout\,
	datac => \temp~39_combout\,
	datad => \temp~38_combout\,
	combout => \temp~41_combout\);

-- Location: LCCOMB_X42_Y35_N8
\temp~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~53_combout\ = (\temp~42_combout\ & (\temp~51_combout\ & ((\temp~43_combout\) # (\temp~41_combout\)))) # (!\temp~42_combout\ & ((\temp~51_combout\ $ (!\temp~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~42_combout\,
	datab => \temp~43_combout\,
	datac => \temp~51_combout\,
	datad => \temp~41_combout\,
	combout => \temp~53_combout\);

-- Location: LCCOMB_X42_Y35_N26
\temp~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~54_combout\ = (\temp~42_combout\ & (!\temp~43_combout\ & (\temp~51_combout\))) # (!\temp~42_combout\ & (\temp~41_combout\ & ((\temp~43_combout\) # (!\temp~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~42_combout\,
	datab => \temp~43_combout\,
	datac => \temp~51_combout\,
	datad => \temp~41_combout\,
	combout => \temp~54_combout\);

-- Location: LCCOMB_X37_Y35_N28
\temp~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~56_combout\ = (\temp~44_combout\ & (\temp~50_combout\ & ((\temp~45_combout\) # (\temp~46_combout\)))) # (!\temp~44_combout\ & ((\temp~46_combout\ $ (!\temp~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~44_combout\,
	datab => \temp~45_combout\,
	datac => \temp~46_combout\,
	datad => \temp~50_combout\,
	combout => \temp~56_combout\);

-- Location: LCCOMB_X36_Y35_N28
\temp~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~59_combout\ = (\temp~47_combout\ & (((\temp~49_combout\ & !\entrada~combout\(4))))) # (!\temp~47_combout\ & (\temp~48_combout\ & ((\entrada~combout\(4)) # (!\temp~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~48_combout\,
	datab => \temp~47_combout\,
	datac => \temp~49_combout\,
	datad => \entrada~combout\(4),
	combout => \temp~59_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[3]~I\ : cycloneii_io
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
	padio => ww_entrada(3),
	combout => \entrada~combout\(3));

-- Location: LCCOMB_X36_Y35_N30
\temp~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~60_combout\ = (\temp~48_combout\ & (((\entrada~combout\(4))))) # (!\temp~48_combout\ & ((\temp~47_combout\ & ((\temp~49_combout\) # (\entrada~combout\(4)))) # (!\temp~47_combout\ & ((!\entrada~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~48_combout\,
	datab => \temp~47_combout\,
	datac => \temp~49_combout\,
	datad => \entrada~combout\(4),
	combout => \temp~60_combout\);

-- Location: LCCOMB_X36_Y35_N24
\temp~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~61_combout\ = \temp~59_combout\ $ ((((!\entrada~combout\(3) & \temp~60_combout\)) # (!\temp~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~58_combout\,
	datab => \temp~59_combout\,
	datac => \entrada~combout\(3),
	datad => \temp~60_combout\,
	combout => \temp~61_combout\);

-- Location: LCCOMB_X37_Y35_N30
\temp~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~57_combout\ = (\temp~44_combout\ & (!\temp~45_combout\ & ((\temp~50_combout\)))) # (!\temp~44_combout\ & (\temp~46_combout\ & ((\temp~45_combout\) # (!\temp~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~44_combout\,
	datab => \temp~45_combout\,
	datac => \temp~46_combout\,
	datad => \temp~50_combout\,
	combout => \temp~57_combout\);

-- Location: LCCOMB_X37_Y35_N0
\temp~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~62_combout\ = \temp~57_combout\ $ ((((!\temp~56_combout\ & \temp~61_combout\)) # (!\temp~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~55_combout\,
	datab => \temp~56_combout\,
	datac => \temp~61_combout\,
	datad => \temp~57_combout\,
	combout => \temp~62_combout\);

-- Location: LCCOMB_X42_Y35_N30
\temp~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~52_combout\ = (\temp~43_combout\ & (((!\temp~42_combout\ & !\temp~41_combout\)) # (!\temp~51_combout\))) # (!\temp~43_combout\ & (((\temp~51_combout\ & \temp~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~42_combout\,
	datab => \temp~43_combout\,
	datac => \temp~51_combout\,
	datad => \temp~41_combout\,
	combout => \temp~52_combout\);

-- Location: LCCOMB_X42_Y35_N20
\temp~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~63_combout\ = \temp~54_combout\ $ ((((!\temp~53_combout\ & \temp~62_combout\)) # (!\temp~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~53_combout\,
	datab => \temp~54_combout\,
	datac => \temp~62_combout\,
	datad => \temp~52_combout\,
	combout => \temp~63_combout\);

-- Location: LCCOMB_X42_Y35_N6
\temp~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~64_combout\ = (\temp~39_combout\) # (!\temp~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~40_combout\,
	datac => \temp~39_combout\,
	combout => \temp~64_combout\);

-- Location: LCCOMB_X42_Y35_N2
\temp~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~66_combout\ = (\temp~40_combout\ & ((\temp~91_combout\ & (\temp~39_combout\)) # (!\temp~91_combout\ & ((\temp~38_combout\) # (!\temp~39_combout\))))) # (!\temp~40_combout\ & (((\temp~91_combout\ & \temp~38_combout\)) # (!\temp~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~40_combout\,
	datab => \temp~91_combout\,
	datac => \temp~39_combout\,
	datad => \temp~38_combout\,
	combout => \temp~66_combout\);

-- Location: LCCOMB_X42_Y35_N24
\temp~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~65_combout\ = \temp~41_combout\ $ ((((!\temp~43_combout\ & \temp~51_combout\)) # (!\temp~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~42_combout\,
	datab => \temp~43_combout\,
	datac => \temp~51_combout\,
	datad => \temp~41_combout\,
	combout => \temp~65_combout\);

-- Location: LCCOMB_X42_Y35_N4
\temp~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~67_combout\ = (\temp~64_combout\ & ((\temp~65_combout\ & (!\temp~66_combout\ & \temp~91_combout\)) # (!\temp~65_combout\ & ((!\temp~91_combout\))))) # (!\temp~64_combout\ & (((!\temp~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~64_combout\,
	datab => \temp~66_combout\,
	datac => \temp~65_combout\,
	datad => \temp~91_combout\,
	combout => \temp~67_combout\);

-- Location: LCCOMB_X42_Y35_N14
\temp~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~68_combout\ = (!\temp~66_combout\ & (((!\temp~91_combout\) # (!\temp~65_combout\)) # (!\temp~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~64_combout\,
	datab => \temp~66_combout\,
	datac => \temp~65_combout\,
	datad => \temp~91_combout\,
	combout => \temp~68_combout\);

-- Location: LCCOMB_X42_Y35_N16
\temp~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~69_combout\ = (\temp~64_combout\ & (\temp~66_combout\ & (\temp~65_combout\ & \temp~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~64_combout\,
	datab => \temp~66_combout\,
	datac => \temp~65_combout\,
	datad => \temp~91_combout\,
	combout => \temp~69_combout\);

-- Location: LCCOMB_X37_Y35_N12
\temp~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~71_combout\ = (\temp~55_combout\ & (\temp~61_combout\ & ((\temp~56_combout\) # (\temp~57_combout\)))) # (!\temp~55_combout\ & ((\temp~61_combout\ $ (!\temp~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~55_combout\,
	datab => \temp~56_combout\,
	datac => \temp~61_combout\,
	datad => \temp~57_combout\,
	combout => \temp~71_combout\);

-- Location: LCCOMB_X37_Y35_N2
\temp~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~70_combout\ = (\temp~56_combout\ & (((!\temp~55_combout\ & !\temp~57_combout\)) # (!\temp~61_combout\))) # (!\temp~56_combout\ & (((\temp~61_combout\ & \temp~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~55_combout\,
	datab => \temp~56_combout\,
	datac => \temp~61_combout\,
	datad => \temp~57_combout\,
	combout => \temp~70_combout\);

-- Location: LCCOMB_X36_Y35_N18
\temp~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~73_combout\ = (\temp~59_combout\ & ((\entrada~combout\(3) $ (\temp~60_combout\)))) # (!\temp~59_combout\ & (!\temp~60_combout\ & ((\entrada~combout\(3)) # (!\temp~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~58_combout\,
	datab => \temp~59_combout\,
	datac => \entrada~combout\(3),
	datad => \temp~60_combout\,
	combout => \temp~73_combout\);

-- Location: LCCOMB_X36_Y35_N14
\temp~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~75_combout\ = (\temp~58_combout\ & ((\entrada~combout\(3)) # ((!\temp~59_combout\ & \temp~60_combout\)))) # (!\temp~58_combout\ & (\temp~59_combout\ $ ((!\entrada~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~58_combout\,
	datab => \temp~59_combout\,
	datac => \entrada~combout\(3),
	datad => \temp~60_combout\,
	combout => \temp~75_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[2]~I\ : cycloneii_io
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
	padio => ww_entrada(2),
	combout => \entrada~combout\(2));

-- Location: LCCOMB_X36_Y35_N8
\temp~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~76_combout\ = \temp~74_combout\ $ ((((\temp~75_combout\ & !\entrada~combout\(2))) # (!\temp~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~74_combout\,
	datab => \temp~73_combout\,
	datac => \temp~75_combout\,
	datad => \entrada~combout\(2),
	combout => \temp~76_combout\);

-- Location: LCCOMB_X37_Y35_N22
\temp~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~72_combout\ = (\temp~55_combout\ & (!\temp~56_combout\ & (\temp~61_combout\))) # (!\temp~55_combout\ & (\temp~57_combout\ & ((\temp~56_combout\) # (!\temp~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~55_combout\,
	datab => \temp~56_combout\,
	datac => \temp~61_combout\,
	datad => \temp~57_combout\,
	combout => \temp~72_combout\);

-- Location: LCCOMB_X37_Y35_N24
\temp~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~77_combout\ = \temp~72_combout\ $ ((((!\temp~71_combout\ & \temp~76_combout\)) # (!\temp~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~71_combout\,
	datab => \temp~70_combout\,
	datac => \temp~76_combout\,
	datad => \temp~72_combout\,
	combout => \temp~77_combout\);

-- Location: LCCOMB_X42_Y35_N18
\temp~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~78_combout\ = (\temp~54_combout\ & (((\temp~62_combout\)))) # (!\temp~54_combout\ & ((\temp~62_combout\ & (\temp~53_combout\ & \temp~52_combout\)) # (!\temp~62_combout\ & ((!\temp~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~53_combout\,
	datab => \temp~54_combout\,
	datac => \temp~62_combout\,
	datad => \temp~52_combout\,
	combout => \temp~78_combout\);

-- Location: LCCOMB_X42_Y35_N12
\temp~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~79_combout\ = (\temp~53_combout\ & (((!\temp~54_combout\ & !\temp~52_combout\)) # (!\temp~62_combout\))) # (!\temp~53_combout\ & (\temp~54_combout\ & (\temp~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~53_combout\,
	datab => \temp~54_combout\,
	datac => \temp~62_combout\,
	datad => \temp~52_combout\,
	combout => \temp~79_combout\);

-- Location: LCCOMB_X42_Y35_N22
\temp~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~80_combout\ = (\temp~52_combout\ & (!\temp~53_combout\ & ((\temp~62_combout\)))) # (!\temp~52_combout\ & (\temp~54_combout\ & ((\temp~53_combout\) # (!\temp~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~53_combout\,
	datab => \temp~54_combout\,
	datac => \temp~62_combout\,
	datad => \temp~52_combout\,
	combout => \temp~80_combout\);

-- Location: LCCOMB_X36_Y35_N6
\temp~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~83_combout\ = (\temp~74_combout\ & (((\entrada~combout\(2))))) # (!\temp~74_combout\ & ((\temp~73_combout\ & ((\temp~75_combout\) # (\entrada~combout\(2)))) # (!\temp~73_combout\ & ((!\entrada~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~74_combout\,
	datab => \temp~73_combout\,
	datac => \temp~75_combout\,
	datad => \entrada~combout\(2),
	combout => \temp~83_combout\);

-- Location: LCCOMB_X36_Y35_N26
\temp~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~81_combout\ = (\temp~74_combout\ & ((\temp~75_combout\ $ (\entrada~combout\(2))))) # (!\temp~74_combout\ & (!\temp~75_combout\ & ((\entrada~combout\(2)) # (!\temp~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~74_combout\,
	datab => \temp~73_combout\,
	datac => \temp~75_combout\,
	datad => \entrada~combout\(2),
	combout => \temp~81_combout\);

-- Location: LCCOMB_X36_Y35_N20
\temp~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~82_combout\ = (\temp~73_combout\ & (((\temp~75_combout\ & !\entrada~combout\(2))))) # (!\temp~73_combout\ & (\temp~74_combout\ & ((\entrada~combout\(2)) # (!\temp~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~74_combout\,
	datab => \temp~73_combout\,
	datac => \temp~75_combout\,
	datad => \entrada~combout\(2),
	combout => \temp~82_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[1]~I\ : cycloneii_io
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
	padio => ww_entrada(1),
	combout => \entrada~combout\(1));

-- Location: LCCOMB_X36_Y35_N0
\temp~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~84_combout\ = \temp~82_combout\ $ ((((\temp~83_combout\ & !\entrada~combout\(1))) # (!\temp~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~83_combout\,
	datab => \temp~81_combout\,
	datac => \temp~82_combout\,
	datad => \entrada~combout\(1),
	combout => \temp~84_combout\);

-- Location: LCCOMB_X37_Y35_N18
\temp~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~85_combout\ = (\temp~70_combout\ & (\temp~76_combout\ & ((\temp~71_combout\) # (\temp~72_combout\)))) # (!\temp~70_combout\ & ((\temp~76_combout\ $ (!\temp~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~71_combout\,
	datab => \temp~70_combout\,
	datac => \temp~76_combout\,
	datad => \temp~72_combout\,
	combout => \temp~85_combout\);

-- Location: LCCOMB_X37_Y35_N4
\temp~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~86_combout\ = (\temp~71_combout\ & (((!\temp~70_combout\ & !\temp~72_combout\)) # (!\temp~76_combout\))) # (!\temp~71_combout\ & (((\temp~76_combout\ & \temp~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~71_combout\,
	datab => \temp~70_combout\,
	datac => \temp~76_combout\,
	datad => \temp~72_combout\,
	combout => \temp~86_combout\);

-- Location: LCCOMB_X37_Y35_N6
\temp~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~87_combout\ = (\temp~70_combout\ & (!\temp~71_combout\ & (\temp~76_combout\))) # (!\temp~70_combout\ & (\temp~72_combout\ & ((\temp~71_combout\) # (!\temp~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~71_combout\,
	datab => \temp~70_combout\,
	datac => \temp~76_combout\,
	datad => \temp~72_combout\,
	combout => \temp~87_combout\);

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[0]~I\ : cycloneii_io
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
	padio => ww_entrada(0),
	combout => \entrada~combout\(0));

-- Location: LCCOMB_X36_Y35_N2
\temp~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~88_combout\ = (\temp~81_combout\ & ((\entrada~combout\(1)) # ((\temp~83_combout\ & !\temp~82_combout\)))) # (!\temp~81_combout\ & ((\temp~82_combout\ $ (!\entrada~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~83_combout\,
	datab => \temp~81_combout\,
	datac => \temp~82_combout\,
	datad => \entrada~combout\(1),
	combout => \temp~88_combout\);

-- Location: LCCOMB_X36_Y35_N4
\temp~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~89_combout\ = (\temp~83_combout\ & (((\temp~82_combout\ & !\entrada~combout\(1))))) # (!\temp~83_combout\ & ((\entrada~combout\(1)) # ((!\temp~81_combout\ & !\temp~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~83_combout\,
	datab => \temp~81_combout\,
	datac => \temp~82_combout\,
	datad => \entrada~combout\(1),
	combout => \temp~89_combout\);

-- Location: LCCOMB_X36_Y35_N22
\temp~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~90_combout\ = (\temp~81_combout\ & (\temp~83_combout\ & ((!\entrada~combout\(1))))) # (!\temp~81_combout\ & (\temp~82_combout\ & ((\entrada~combout\(1)) # (!\temp~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~83_combout\,
	datab => \temp~81_combout\,
	datac => \temp~82_combout\,
	datad => \entrada~combout\(1),
	combout => \temp~90_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\milhar[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_temp~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_milhar(0));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\milhar[1]~I\ : cycloneii_io
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
	datain => \temp~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_milhar(1));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\milhar[2]~I\ : cycloneii_io
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
	datain => \temp~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_milhar(2));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\milhar[3]~I\ : cycloneii_io
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
	datain => \temp~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_milhar(3));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centena[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_temp~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centena(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centena[1]~I\ : cycloneii_io
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
	datain => \temp~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centena(1));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centena[2]~I\ : cycloneii_io
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
	datain => \temp~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centena(2));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centena[3]~I\ : cycloneii_io
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
	datain => \temp~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centena(3));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dezena[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_temp~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dezena(0));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dezena[1]~I\ : cycloneii_io
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
	datain => \temp~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dezena(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dezena[2]~I\ : cycloneii_io
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
	datain => \temp~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dezena(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dezena[3]~I\ : cycloneii_io
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
	datain => \temp~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dezena(3));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\unidade[0]~I\ : cycloneii_io
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
	datain => \entrada~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_unidade(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\unidade[1]~I\ : cycloneii_io
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
	datain => \ALT_INV_temp~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_unidade(1));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\unidade[2]~I\ : cycloneii_io
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
	datain => \temp~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_unidade(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\unidade[3]~I\ : cycloneii_io
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
	datain => \temp~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_unidade(3));
END structure;


