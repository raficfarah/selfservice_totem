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

-- DATE "07/01/2025 01:17:38"

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

ENTITY 	Datapath IS
    PORT (
	prod_in : IN std_logic_vector(3 DOWNTO 0);
	din : IN std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	pinLd_Prod : IN std_logic;
	pinLd_Bank : IN std_logic;
	pinRST_Bank : IN std_logic;
	pinLd_Troco : IN std_logic;
	pinRST_Troco : IN std_logic;
	pinMaior_B : OUT std_logic;
	pinMenor_P : OUT std_logic;
	prod_out : OUT std_logic_vector(3 DOWNTO 0);
	troco_out : OUT std_logic_vector(12 DOWNTO 0);
	BCD_M : OUT std_logic_vector(6 DOWNTO 0);
	BCD_C : OUT std_logic_vector(6 DOWNTO 0);
	BCD_D : OUT std_logic_vector(6 DOWNTO 0);
	BCD_U : OUT std_logic_vector(6 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- pinMaior_B	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pinMenor_P	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prod_out[0]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prod_out[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prod_out[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prod_out[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[4]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[7]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[8]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[9]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[10]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[11]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- troco_out[12]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_M[0]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_M[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_M[2]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_M[3]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_M[4]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_M[5]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_M[6]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_C[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_C[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_C[2]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_C[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_C[4]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_C[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_C[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_D[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_D[1]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_D[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_D[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_D[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_D[5]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_D[6]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_U[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_U[1]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_U[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_U[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_U[4]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_U[5]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_U[6]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- din[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pinRST_Bank	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pinLd_Bank	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- prod_in[0]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pinLd_Prod	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- prod_in[1]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- prod_in[2]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- prod_in[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pinRST_Troco	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pinLd_Troco	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_prod_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_din : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_pinLd_Prod : std_logic;
SIGNAL ww_pinLd_Bank : std_logic;
SIGNAL ww_pinRST_Bank : std_logic;
SIGNAL ww_pinLd_Troco : std_logic;
SIGNAL ww_pinRST_Troco : std_logic;
SIGNAL ww_pinMaior_B : std_logic;
SIGNAL ww_pinMenor_P : std_logic;
SIGNAL ww_prod_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_troco_out : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_BCD_M : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD_C : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD_U : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pinRST_Bank~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pinRST_Troco~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Bank|Reg[4]~21_combout\ : std_logic;
SIGNAL \ComparadorGT|LessThan0~0_combout\ : std_logic;
SIGNAL \ComparadorGT|LessThan0~1_combout\ : std_logic;
SIGNAL \myPrices|Mux5~0_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~13_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~19_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~21_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~27_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~30_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~33_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~40_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~42_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~49_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~51_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~55_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~60_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~63_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~66_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux2~0_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux6~0_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux9~0_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux11~0_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux12~0_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~8_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux3~0_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux5~0_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux7~0_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux8~0_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux10~0_combout\ : std_logic;
SIGNAL \Bank|Reg[0]~13_combout\ : std_logic;
SIGNAL \pinRST_Bank~combout\ : std_logic;
SIGNAL \pinRST_Bank~clkctrl_outclk\ : std_logic;
SIGNAL \pinLd_Bank~combout\ : std_logic;
SIGNAL \Bank|Reg[0]~14\ : std_logic;
SIGNAL \Bank|Reg[1]~15_combout\ : std_logic;
SIGNAL \Bank|Reg[1]~16\ : std_logic;
SIGNAL \Bank|Reg[2]~18\ : std_logic;
SIGNAL \Bank|Reg[3]~19_combout\ : std_logic;
SIGNAL \Bank|Reg[3]~20\ : std_logic;
SIGNAL \Bank|Reg[4]~22\ : std_logic;
SIGNAL \Bank|Reg[5]~24\ : std_logic;
SIGNAL \Bank|Reg[6]~25_combout\ : std_logic;
SIGNAL \Bank|Reg[6]~26\ : std_logic;
SIGNAL \Bank|Reg[7]~28\ : std_logic;
SIGNAL \Bank|Reg[8]~29_combout\ : std_logic;
SIGNAL \Bank|Reg[8]~30\ : std_logic;
SIGNAL \Bank|Reg[9]~32\ : std_logic;
SIGNAL \Bank|Reg[10]~33_combout\ : std_logic;
SIGNAL \myMUX_Din|Mux0~0_combout\ : std_logic;
SIGNAL \Bank|Reg[10]~34\ : std_logic;
SIGNAL \Bank|Reg[11]~36\ : std_logic;
SIGNAL \Bank|Reg[12]~37_combout\ : std_logic;
SIGNAL \Bank|Reg[11]~35_combout\ : std_logic;
SIGNAL \Bank|Reg[9]~31_combout\ : std_logic;
SIGNAL \Bank|Reg[7]~27_combout\ : std_logic;
SIGNAL \ComparadorGT|LessThan0~2_combout\ : std_logic;
SIGNAL \ComparadorGT|LessThan0~3_combout\ : std_logic;
SIGNAL \Prod|Reg[3]~feeder_combout\ : std_logic;
SIGNAL \pinLd_Prod~combout\ : std_logic;
SIGNAL \Prod|Reg[1]~feeder_combout\ : std_logic;
SIGNAL \myPrices|Mux0~0_combout\ : std_logic;
SIGNAL \myPrices|Mux1~0_combout\ : std_logic;
SIGNAL \myPrices|Mux2~0_combout\ : std_logic;
SIGNAL \Prod|Reg[0]~feeder_combout\ : std_logic;
SIGNAL \myPrices|Mux3~0_combout\ : std_logic;
SIGNAL \myPrices|Mux4~0_combout\ : std_logic;
SIGNAL \myPrices|Mux6~0_combout\ : std_logic;
SIGNAL \Bank|Reg[5]~23_combout\ : std_logic;
SIGNAL \myPrices|Mux8~0_combout\ : std_logic;
SIGNAL \myPrices|Mux9~0_combout\ : std_logic;
SIGNAL \myPrices|Mux10~0_combout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~1_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~3_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~5_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~7_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~9_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~11_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~13_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~15_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~17_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~19_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~21_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~23_cout\ : std_logic;
SIGNAL \ComparadorLT|LessThan0~24_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \myPrices|Mux12~0_combout\ : std_logic;
SIGNAL \Troco|Reg[0]~13_combout\ : std_logic;
SIGNAL \pinRST_Troco~combout\ : std_logic;
SIGNAL \pinRST_Troco~clkctrl_outclk\ : std_logic;
SIGNAL \pinLd_Troco~combout\ : std_logic;
SIGNAL \myPrices|Mux11~0_combout\ : std_logic;
SIGNAL \Troco|Reg[0]~14\ : std_logic;
SIGNAL \Troco|Reg[1]~15_combout\ : std_logic;
SIGNAL \Bank|Reg[2]~17_combout\ : std_logic;
SIGNAL \Troco|Reg[1]~16\ : std_logic;
SIGNAL \Troco|Reg[2]~17_combout\ : std_logic;
SIGNAL \Troco|Reg[2]~18\ : std_logic;
SIGNAL \Troco|Reg[3]~19_combout\ : std_logic;
SIGNAL \Troco|Reg[3]~20\ : std_logic;
SIGNAL \Troco|Reg[4]~21_combout\ : std_logic;
SIGNAL \myPrices|Mux7~0_combout\ : std_logic;
SIGNAL \Troco|Reg[4]~22\ : std_logic;
SIGNAL \Troco|Reg[5]~23_combout\ : std_logic;
SIGNAL \Troco|Reg[5]~24\ : std_logic;
SIGNAL \Troco|Reg[6]~25_combout\ : std_logic;
SIGNAL \Troco|Reg[6]~26\ : std_logic;
SIGNAL \Troco|Reg[7]~27_combout\ : std_logic;
SIGNAL \Troco|Reg[7]~28\ : std_logic;
SIGNAL \Troco|Reg[8]~29_combout\ : std_logic;
SIGNAL \Troco|Reg[8]~30\ : std_logic;
SIGNAL \Troco|Reg[9]~31_combout\ : std_logic;
SIGNAL \Troco|Reg[9]~32\ : std_logic;
SIGNAL \Troco|Reg[10]~33_combout\ : std_logic;
SIGNAL \Troco|Reg[10]~34\ : std_logic;
SIGNAL \Troco|Reg[11]~35_combout\ : std_logic;
SIGNAL \Troco|Reg[11]~36\ : std_logic;
SIGNAL \Troco|Reg[12]~37_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~71_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~14_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~12_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~70_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~69_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~35_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~16_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~17_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~15_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~18_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~20_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~23_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~22_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~24_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~5_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~9_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~10_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~4_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~11_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~26_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~28_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~29_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~31_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~25_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~32_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~34_combout\ : std_logic;
SIGNAL \myBCD_Conv|milhar[2]~31_combout\ : std_logic;
SIGNAL \myBCD_Conv|milhar[3]~3_combout\ : std_logic;
SIGNAL \myBCD_Conv|milhar[1]~34_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~41_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~39_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~43_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~44_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~45_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~46_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~38_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~36_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~58_combout\ : std_logic;
SIGNAL \myBCD_Conv|milhar[1]~32_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~37_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~48_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~52_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~53_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~54_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~56_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~50_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~57_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~47_combout\ : std_logic;
SIGNAL \myBCD_Conv|milhar[0]~30_combout\ : std_logic;
SIGNAL \myBCD_Conv|milhar[2]~33_combout\ : std_logic;
SIGNAL \myBCD_M|Mux6~0_combout\ : std_logic;
SIGNAL \myBCD_M|Mux5~0_combout\ : std_logic;
SIGNAL \myBCD_M|Mux4~0_combout\ : std_logic;
SIGNAL \myBCD_M|Mux3~0_combout\ : std_logic;
SIGNAL \myBCD_M|Mux2~0_combout\ : std_logic;
SIGNAL \myBCD_M|Mux1~0_combout\ : std_logic;
SIGNAL \myBCD_M|Mux0~0_combout\ : std_logic;
SIGNAL \myBCD_Conv|centena[2]~2_combout\ : std_logic;
SIGNAL \myBCD_Conv|centena[1]~1_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~64_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~62_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~65_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~59_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~61_combout\ : std_logic;
SIGNAL \myBCD_Conv|centena[0]~0_combout\ : std_logic;
SIGNAL \myBCD_Conv|centena[3]~3_combout\ : std_logic;
SIGNAL \myBCD_C|Mux6~0_combout\ : std_logic;
SIGNAL \myBCD_C|Mux5~0_combout\ : std_logic;
SIGNAL \myBCD_C|Mux4~0_combout\ : std_logic;
SIGNAL \myBCD_C|Mux3~0_combout\ : std_logic;
SIGNAL \myBCD_C|Mux2~0_combout\ : std_logic;
SIGNAL \myBCD_C|Mux1~0_combout\ : std_logic;
SIGNAL \myBCD_C|Mux0~0_combout\ : std_logic;
SIGNAL \myBCD_Conv|dezena[2]~2_combout\ : std_logic;
SIGNAL \myBCD_Conv|dezena[1]~1_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~68_combout\ : std_logic;
SIGNAL \myBCD_Conv|temp~67_combout\ : std_logic;
SIGNAL \myBCD_Conv|dezena[0]~0_combout\ : std_logic;
SIGNAL \myBCD_Conv|dezena[3]~3_combout\ : std_logic;
SIGNAL \myBCD_D|Mux6~0_combout\ : std_logic;
SIGNAL \myBCD_D|Mux5~0_combout\ : std_logic;
SIGNAL \myBCD_D|Mux4~0_combout\ : std_logic;
SIGNAL \myBCD_D|Mux3~0_combout\ : std_logic;
SIGNAL \myBCD_D|Mux2~0_combout\ : std_logic;
SIGNAL \myBCD_D|Mux1~0_combout\ : std_logic;
SIGNAL \myBCD_D|Mux0~0_combout\ : std_logic;
SIGNAL \myBCD_Conv|unidade[2]~1_combout\ : std_logic;
SIGNAL \myBCD_Conv|unidade[1]~0_combout\ : std_logic;
SIGNAL \myBCD_Conv|unidade[3]~2_combout\ : std_logic;
SIGNAL \myBCD_U|Mux6~0_combout\ : std_logic;
SIGNAL \myBCD_U|Mux5~0_combout\ : std_logic;
SIGNAL \myBCD_U|Mux4~0_combout\ : std_logic;
SIGNAL \myBCD_U|Mux3~0_combout\ : std_logic;
SIGNAL \myBCD_U|Mux2~0_combout\ : std_logic;
SIGNAL \myBCD_U|Mux1~0_combout\ : std_logic;
SIGNAL \myBCD_U|Mux0~0_combout\ : std_logic;
SIGNAL \prod_in~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \din~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Prod|Reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Bank|Reg\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Troco|Reg\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myBCD_U|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \myBCD_D|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \myBCD_C|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \myBCD_M|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_prod_in <= prod_in;
ww_din <= din;
ww_CLK <= CLK;
ww_pinLd_Prod <= pinLd_Prod;
ww_pinLd_Bank <= pinLd_Bank;
ww_pinRST_Bank <= pinRST_Bank;
ww_pinLd_Troco <= pinLd_Troco;
ww_pinRST_Troco <= pinRST_Troco;
pinMaior_B <= ww_pinMaior_B;
pinMenor_P <= ww_pinMenor_P;
prod_out <= ww_prod_out;
troco_out <= ww_troco_out;
BCD_M <= ww_BCD_M;
BCD_C <= ww_BCD_C;
BCD_D <= ww_BCD_D;
BCD_U <= ww_BCD_U;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\pinRST_Bank~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \pinRST_Bank~combout\);

\pinRST_Troco~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \pinRST_Troco~combout\);
\myBCD_U|ALT_INV_Mux1~0_combout\ <= NOT \myBCD_U|Mux1~0_combout\;
\myBCD_D|ALT_INV_Mux1~0_combout\ <= NOT \myBCD_D|Mux1~0_combout\;
\myBCD_C|ALT_INV_Mux1~0_combout\ <= NOT \myBCD_C|Mux1~0_combout\;
\myBCD_M|ALT_INV_Mux0~0_combout\ <= NOT \myBCD_M|Mux0~0_combout\;

-- Location: LCFF_X34_Y33_N11
\Bank|Reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[4]~21_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(4));

-- Location: LCCOMB_X34_Y33_N10
\Bank|Reg[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[4]~21_combout\ = ((\Bank|Reg\(4) $ (\myMUX_Din|Mux8~0_combout\ $ (!\Bank|Reg[3]~20\)))) # (GND)
-- \Bank|Reg[4]~22\ = CARRY((\Bank|Reg\(4) & ((\myMUX_Din|Mux8~0_combout\) # (!\Bank|Reg[3]~20\))) # (!\Bank|Reg\(4) & (\myMUX_Din|Mux8~0_combout\ & !\Bank|Reg[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(4),
	datab => \myMUX_Din|Mux8~0_combout\,
	datad => VCC,
	cin => \Bank|Reg[3]~20\,
	combout => \Bank|Reg[4]~21_combout\,
	cout => \Bank|Reg[4]~22\);

-- Location: LCCOMB_X35_Y33_N26
\ComparadorGT|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorGT|LessThan0~0_combout\ = (\Bank|Reg\(3) & ((\Bank|Reg\(0)) # ((\Bank|Reg\(1)) # (\Bank|Reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(0),
	datab => \Bank|Reg\(1),
	datac => \Bank|Reg\(2),
	datad => \Bank|Reg\(3),
	combout => \ComparadorGT|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y33_N28
\ComparadorGT|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorGT|LessThan0~1_combout\ = (\Bank|Reg\(5)) # ((\ComparadorGT|LessThan0~0_combout\) # ((\Bank|Reg\(4)) # (\Bank|Reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(5),
	datab => \ComparadorGT|LessThan0~0_combout\,
	datac => \Bank|Reg\(4),
	datad => \Bank|Reg\(6),
	combout => \ComparadorGT|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y33_N4
\myPrices|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux5~0_combout\ = (\Prod|Reg\(3) & ((\Prod|Reg\(1) & ((!\Prod|Reg\(0)))) # (!\Prod|Reg\(1) & ((\Prod|Reg\(0)) # (!\Prod|Reg\(2)))))) # (!\Prod|Reg\(3) & ((\Prod|Reg\(2)) # ((\Prod|Reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(2),
	datab => \Prod|Reg\(3),
	datac => \Prod|Reg\(1),
	datad => \Prod|Reg\(0),
	combout => \myPrices|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y35_N6
\myBCD_Conv|temp~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~13_combout\ = (\Troco|Reg\(10) & (!\Troco|Reg\(12) & ((\Troco|Reg\(9)) # (!\Troco|Reg\(11))))) # (!\Troco|Reg\(10) & (\Troco|Reg\(12) & ((\Troco|Reg\(11)) # (!\Troco|Reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(10),
	datab => \Troco|Reg\(11),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(9),
	combout => \myBCD_Conv|temp~13_combout\);

-- Location: LCCOMB_X32_Y35_N16
\myBCD_Conv|temp~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~19_combout\ = (\myBCD_Conv|temp~18_combout\ & (\myBCD_Conv|temp~69_combout\ & (\myBCD_Conv|temp~70_combout\ $ (!\myBCD_Conv|temp~71_combout\)))) # (!\myBCD_Conv|temp~18_combout\ & (\myBCD_Conv|temp~70_combout\ & 
-- (!\myBCD_Conv|temp~71_combout\ & !\myBCD_Conv|temp~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~70_combout\,
	datab => \myBCD_Conv|temp~71_combout\,
	datac => \myBCD_Conv|temp~18_combout\,
	datad => \myBCD_Conv|temp~69_combout\,
	combout => \myBCD_Conv|temp~19_combout\);

-- Location: LCCOMB_X34_Y35_N6
\myBCD_Conv|temp~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~21_combout\ = (\Troco|Reg\(7) & (((!\myBCD_Conv|temp~17_combout\)))) # (!\Troco|Reg\(7) & ((\myBCD_Conv|temp~16_combout\ & (\myBCD_Conv|temp~17_combout\)) # (!\myBCD_Conv|temp~16_combout\ & (!\myBCD_Conv|temp~17_combout\ & 
-- !\myBCD_Conv|temp~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(7),
	datab => \myBCD_Conv|temp~16_combout\,
	datac => \myBCD_Conv|temp~17_combout\,
	datad => \myBCD_Conv|temp~15_combout\,
	combout => \myBCD_Conv|temp~21_combout\);

-- Location: LCCOMB_X32_Y35_N4
\myBCD_Conv|temp~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~27_combout\ = (\myBCD_Conv|temp~11_combout\ & (((!\myBCD_Conv|temp~20_combout\ & \myBCD_Conv|temp~24_combout\)))) # (!\myBCD_Conv|temp~11_combout\ & (\myBCD_Conv|temp~19_combout\ & ((\myBCD_Conv|temp~20_combout\) # 
-- (!\myBCD_Conv|temp~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~19_combout\,
	datab => \myBCD_Conv|temp~20_combout\,
	datac => \myBCD_Conv|temp~24_combout\,
	datad => \myBCD_Conv|temp~11_combout\,
	combout => \myBCD_Conv|temp~27_combout\);

-- Location: LCCOMB_X34_Y35_N10
\myBCD_Conv|temp~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~30_combout\ = (\myBCD_Conv|temp~21_combout\ & ((\Troco|Reg\(6)) # ((\myBCD_Conv|temp~23_combout\ & !\myBCD_Conv|temp~22_combout\)))) # (!\myBCD_Conv|temp~21_combout\ & ((\myBCD_Conv|temp~22_combout\ $ (!\Troco|Reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~21_combout\,
	datab => \myBCD_Conv|temp~23_combout\,
	datac => \myBCD_Conv|temp~22_combout\,
	datad => \Troco|Reg\(6),
	combout => \myBCD_Conv|temp~30_combout\);

-- Location: LCCOMB_X32_Y35_N10
\myBCD_Conv|temp~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~33_combout\ = (\myBCD_Conv|temp~70_combout\ & ((\myBCD_Conv|temp~71_combout\ & (!\myBCD_Conv|temp~18_combout\ & \myBCD_Conv|temp~69_combout\)) # (!\myBCD_Conv|temp~71_combout\ & ((!\myBCD_Conv|temp~69_combout\))))) # 
-- (!\myBCD_Conv|temp~70_combout\ & (\myBCD_Conv|temp~69_combout\ & ((\myBCD_Conv|temp~71_combout\) # (!\myBCD_Conv|temp~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~70_combout\,
	datab => \myBCD_Conv|temp~71_combout\,
	datac => \myBCD_Conv|temp~18_combout\,
	datad => \myBCD_Conv|temp~69_combout\,
	combout => \myBCD_Conv|temp~33_combout\);

-- Location: LCCOMB_X31_Y35_N20
\myBCD_Conv|temp~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~40_combout\ = (\myBCD_Conv|temp~27_combout\ & (((\myBCD_Conv|temp~31_combout\)))) # (!\myBCD_Conv|temp~27_combout\ & ((\myBCD_Conv|temp~31_combout\ & (\myBCD_Conv|temp~26_combout\ & \myBCD_Conv|temp~25_combout\)) # 
-- (!\myBCD_Conv|temp~31_combout\ & ((!\myBCD_Conv|temp~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~27_combout\,
	datab => \myBCD_Conv|temp~26_combout\,
	datac => \myBCD_Conv|temp~31_combout\,
	datad => \myBCD_Conv|temp~25_combout\,
	combout => \myBCD_Conv|temp~40_combout\);

-- Location: LCCOMB_X34_Y35_N22
\myBCD_Conv|temp~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~42_combout\ = (\myBCD_Conv|temp~30_combout\ & (((!\Troco|Reg\(5) & \myBCD_Conv|temp~29_combout\)))) # (!\myBCD_Conv|temp~30_combout\ & ((\Troco|Reg\(5)) # ((!\myBCD_Conv|temp~28_combout\ & !\myBCD_Conv|temp~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~30_combout\,
	datab => \myBCD_Conv|temp~28_combout\,
	datac => \Troco|Reg\(5),
	datad => \myBCD_Conv|temp~29_combout\,
	combout => \myBCD_Conv|temp~42_combout\);

-- Location: LCCOMB_X28_Y35_N24
\myBCD_Conv|temp~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~49_combout\ = (\myBCD_Conv|temp~37_combout\ & (!\myBCD_Conv|temp~38_combout\ & ((\myBCD_Conv|temp~46_combout\)))) # (!\myBCD_Conv|temp~37_combout\ & (\myBCD_Conv|temp~36_combout\ & ((\myBCD_Conv|temp~38_combout\) # 
-- (!\myBCD_Conv|temp~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~38_combout\,
	datab => \myBCD_Conv|temp~36_combout\,
	datac => \myBCD_Conv|temp~46_combout\,
	datad => \myBCD_Conv|temp~37_combout\,
	combout => \myBCD_Conv|temp~49_combout\);

-- Location: LCCOMB_X31_Y35_N18
\myBCD_Conv|temp~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~51_combout\ = (\myBCD_Conv|temp~41_combout\ & (((\myBCD_Conv|temp~45_combout\)))) # (!\myBCD_Conv|temp~41_combout\ & ((\myBCD_Conv|temp~39_combout\ & (\myBCD_Conv|temp~40_combout\ & \myBCD_Conv|temp~45_combout\)) # 
-- (!\myBCD_Conv|temp~39_combout\ & ((!\myBCD_Conv|temp~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~40_combout\,
	datab => \myBCD_Conv|temp~41_combout\,
	datac => \myBCD_Conv|temp~39_combout\,
	datad => \myBCD_Conv|temp~45_combout\,
	combout => \myBCD_Conv|temp~51_combout\);

-- Location: LCCOMB_X31_Y35_N6
\myBCD_Conv|temp~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~55_combout\ = (\myBCD_Conv|temp~42_combout\ & ((\Troco|Reg\(4)) # ((!\myBCD_Conv|temp~43_combout\ & \myBCD_Conv|temp~44_combout\)))) # (!\myBCD_Conv|temp~42_combout\ & (\myBCD_Conv|temp~43_combout\ $ (((!\Troco|Reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~42_combout\,
	datab => \myBCD_Conv|temp~43_combout\,
	datac => \myBCD_Conv|temp~44_combout\,
	datad => \Troco|Reg\(4),
	combout => \myBCD_Conv|temp~55_combout\);

-- Location: LCCOMB_X24_Y35_N24
\myBCD_Conv|temp~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~60_combout\ = (\myBCD_Conv|temp~52_combout\ & (((\myBCD_Conv|temp~56_combout\)))) # (!\myBCD_Conv|temp~52_combout\ & ((\myBCD_Conv|temp~56_combout\ & (\myBCD_Conv|temp~51_combout\ & \myBCD_Conv|temp~50_combout\)) # 
-- (!\myBCD_Conv|temp~56_combout\ & ((!\myBCD_Conv|temp~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~51_combout\,
	datab => \myBCD_Conv|temp~52_combout\,
	datac => \myBCD_Conv|temp~56_combout\,
	datad => \myBCD_Conv|temp~50_combout\,
	combout => \myBCD_Conv|temp~60_combout\);

-- Location: LCCOMB_X31_Y35_N12
\myBCD_Conv|temp~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~63_combout\ = (\myBCD_Conv|temp~53_combout\ & (\myBCD_Conv|temp~55_combout\ & ((!\Troco|Reg\(3))))) # (!\myBCD_Conv|temp~53_combout\ & (\myBCD_Conv|temp~54_combout\ & ((\Troco|Reg\(3)) # (!\myBCD_Conv|temp~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~55_combout\,
	datab => \myBCD_Conv|temp~53_combout\,
	datac => \myBCD_Conv|temp~54_combout\,
	datad => \Troco|Reg\(3),
	combout => \myBCD_Conv|temp~63_combout\);

-- Location: LCCOMB_X23_Y35_N6
\myBCD_Conv|temp~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~66_combout\ = (\myBCD_Conv|temp~63_combout\ & (\myBCD_Conv|temp~64_combout\ $ (((\Troco|Reg\(2)))))) # (!\myBCD_Conv|temp~63_combout\ & (!\myBCD_Conv|temp~64_combout\ & ((\Troco|Reg\(2)) # (!\myBCD_Conv|temp~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~63_combout\,
	datab => \myBCD_Conv|temp~64_combout\,
	datac => \myBCD_Conv|temp~62_combout\,
	datad => \Troco|Reg\(2),
	combout => \myBCD_Conv|temp~66_combout\);

-- Location: LCCOMB_X33_Y33_N10
\myMUX_Din|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux2~0_combout\ = (!\din~combout\(0) & (\din~combout\(2) & \din~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y33_N8
\myMUX_Din|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux6~0_combout\ = (\din~combout\(2) & ((!\din~combout\(1)) # (!\din~combout\(0)))) # (!\din~combout\(2) & ((\din~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y33_N30
\myMUX_Din|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux9~0_combout\ = \din~combout\(0) $ (((\din~combout\(2)) # (\din~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux9~0_combout\);

-- Location: LCCOMB_X33_Y33_N14
\myMUX_Din|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux11~0_combout\ = (\din~combout\(0) & (!\din~combout\(2) & !\din~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux11~0_combout\);

-- Location: LCCOMB_X33_Y33_N0
\myMUX_Din|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux12~0_combout\ = (!\din~combout\(0) & (!\din~combout\(2) & !\din~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux12~0_combout\);

-- Location: LCCOMB_X35_Y35_N20
\myBCD_Conv|temp~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~8_combout\ = (\Troco|Reg\(10) & (\Troco|Reg\(9) & (\Troco|Reg\(11) $ (!\Troco|Reg\(12))))) # (!\Troco|Reg\(10) & ((\Troco|Reg\(11) & (!\Troco|Reg\(12) & !\Troco|Reg\(9))) # (!\Troco|Reg\(11) & (\Troco|Reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(10),
	datab => \Troco|Reg\(11),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(9),
	combout => \myBCD_Conv|temp~8_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[0]~I\ : cycloneii_io
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
	padio => ww_din(0),
	combout => \din~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[2]~I\ : cycloneii_io
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
	padio => ww_din(2),
	combout => \din~combout\(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[1]~I\ : cycloneii_io
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
	padio => ww_din(1),
	combout => \din~combout\(1));

-- Location: LCCOMB_X33_Y33_N24
\myMUX_Din|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux3~0_combout\ = ((!\din~combout\(0) & !\din~combout\(1))) # (!\din~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y33_N18
\myMUX_Din|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux5~0_combout\ = (\din~combout\(2)) # ((\din~combout\(0) & \din~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y33_N22
\myMUX_Din|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux7~0_combout\ = \din~combout\(1) $ (((\din~combout\(0)) # (\din~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux7~0_combout\);

-- Location: LCCOMB_X33_Y33_N16
\myMUX_Din|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux8~0_combout\ = (\din~combout\(2) & (!\din~combout\(0))) # (!\din~combout\(2) & ((!\din~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux8~0_combout\);

-- Location: LCCOMB_X33_Y33_N28
\myMUX_Din|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux10~0_combout\ = (!\din~combout\(0) & (\din~combout\(2) $ (\din~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux10~0_combout\);

-- Location: LCCOMB_X34_Y33_N2
\Bank|Reg[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[0]~13_combout\ = (\myMUX_Din|Mux12~0_combout\ & (\Bank|Reg\(0) $ (VCC))) # (!\myMUX_Din|Mux12~0_combout\ & (\Bank|Reg\(0) & VCC))
-- \Bank|Reg[0]~14\ = CARRY((\myMUX_Din|Mux12~0_combout\ & \Bank|Reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX_Din|Mux12~0_combout\,
	datab => \Bank|Reg\(0),
	datad => VCC,
	combout => \Bank|Reg[0]~13_combout\,
	cout => \Bank|Reg[0]~14\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pinRST_Bank~I\ : cycloneii_io
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
	padio => ww_pinRST_Bank,
	combout => \pinRST_Bank~combout\);

-- Location: CLKCTRL_G1
\pinRST_Bank~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pinRST_Bank~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pinRST_Bank~clkctrl_outclk\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pinLd_Bank~I\ : cycloneii_io
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
	padio => ww_pinLd_Bank,
	combout => \pinLd_Bank~combout\);

-- Location: LCFF_X34_Y33_N3
\Bank|Reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[0]~13_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(0));

-- Location: LCCOMB_X34_Y33_N4
\Bank|Reg[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[1]~15_combout\ = (\myMUX_Din|Mux11~0_combout\ & ((\Bank|Reg\(1) & (\Bank|Reg[0]~14\ & VCC)) # (!\Bank|Reg\(1) & (!\Bank|Reg[0]~14\)))) # (!\myMUX_Din|Mux11~0_combout\ & ((\Bank|Reg\(1) & (!\Bank|Reg[0]~14\)) # (!\Bank|Reg\(1) & 
-- ((\Bank|Reg[0]~14\) # (GND)))))
-- \Bank|Reg[1]~16\ = CARRY((\myMUX_Din|Mux11~0_combout\ & (!\Bank|Reg\(1) & !\Bank|Reg[0]~14\)) # (!\myMUX_Din|Mux11~0_combout\ & ((!\Bank|Reg[0]~14\) # (!\Bank|Reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX_Din|Mux11~0_combout\,
	datab => \Bank|Reg\(1),
	datad => VCC,
	cin => \Bank|Reg[0]~14\,
	combout => \Bank|Reg[1]~15_combout\,
	cout => \Bank|Reg[1]~16\);

-- Location: LCFF_X34_Y33_N5
\Bank|Reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[1]~15_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(1));

-- Location: LCCOMB_X34_Y33_N6
\Bank|Reg[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[2]~17_combout\ = ((\Bank|Reg\(2) $ (\myMUX_Din|Mux10~0_combout\ $ (!\Bank|Reg[1]~16\)))) # (GND)
-- \Bank|Reg[2]~18\ = CARRY((\Bank|Reg\(2) & ((\myMUX_Din|Mux10~0_combout\) # (!\Bank|Reg[1]~16\))) # (!\Bank|Reg\(2) & (\myMUX_Din|Mux10~0_combout\ & !\Bank|Reg[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(2),
	datab => \myMUX_Din|Mux10~0_combout\,
	datad => VCC,
	cin => \Bank|Reg[1]~16\,
	combout => \Bank|Reg[2]~17_combout\,
	cout => \Bank|Reg[2]~18\);

-- Location: LCCOMB_X34_Y33_N8
\Bank|Reg[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[3]~19_combout\ = (\myMUX_Din|Mux9~0_combout\ & ((\Bank|Reg\(3) & (!\Bank|Reg[2]~18\)) # (!\Bank|Reg\(3) & ((\Bank|Reg[2]~18\) # (GND))))) # (!\myMUX_Din|Mux9~0_combout\ & ((\Bank|Reg\(3) & (\Bank|Reg[2]~18\ & VCC)) # (!\Bank|Reg\(3) & 
-- (!\Bank|Reg[2]~18\))))
-- \Bank|Reg[3]~20\ = CARRY((\myMUX_Din|Mux9~0_combout\ & ((!\Bank|Reg[2]~18\) # (!\Bank|Reg\(3)))) # (!\myMUX_Din|Mux9~0_combout\ & (!\Bank|Reg\(3) & !\Bank|Reg[2]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX_Din|Mux9~0_combout\,
	datab => \Bank|Reg\(3),
	datad => VCC,
	cin => \Bank|Reg[2]~18\,
	combout => \Bank|Reg[3]~19_combout\,
	cout => \Bank|Reg[3]~20\);

-- Location: LCFF_X34_Y33_N9
\Bank|Reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[3]~19_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(3));

-- Location: LCCOMB_X34_Y33_N12
\Bank|Reg[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[5]~23_combout\ = (\Bank|Reg\(5) & ((\myMUX_Din|Mux7~0_combout\ & (\Bank|Reg[4]~22\ & VCC)) # (!\myMUX_Din|Mux7~0_combout\ & (!\Bank|Reg[4]~22\)))) # (!\Bank|Reg\(5) & ((\myMUX_Din|Mux7~0_combout\ & (!\Bank|Reg[4]~22\)) # 
-- (!\myMUX_Din|Mux7~0_combout\ & ((\Bank|Reg[4]~22\) # (GND)))))
-- \Bank|Reg[5]~24\ = CARRY((\Bank|Reg\(5) & (!\myMUX_Din|Mux7~0_combout\ & !\Bank|Reg[4]~22\)) # (!\Bank|Reg\(5) & ((!\Bank|Reg[4]~22\) # (!\myMUX_Din|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(5),
	datab => \myMUX_Din|Mux7~0_combout\,
	datad => VCC,
	cin => \Bank|Reg[4]~22\,
	combout => \Bank|Reg[5]~23_combout\,
	cout => \Bank|Reg[5]~24\);

-- Location: LCCOMB_X34_Y33_N14
\Bank|Reg[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[6]~25_combout\ = ((\myMUX_Din|Mux6~0_combout\ $ (\Bank|Reg\(6) $ (!\Bank|Reg[5]~24\)))) # (GND)
-- \Bank|Reg[6]~26\ = CARRY((\myMUX_Din|Mux6~0_combout\ & ((\Bank|Reg\(6)) # (!\Bank|Reg[5]~24\))) # (!\myMUX_Din|Mux6~0_combout\ & (\Bank|Reg\(6) & !\Bank|Reg[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX_Din|Mux6~0_combout\,
	datab => \Bank|Reg\(6),
	datad => VCC,
	cin => \Bank|Reg[5]~24\,
	combout => \Bank|Reg[6]~25_combout\,
	cout => \Bank|Reg[6]~26\);

-- Location: LCFF_X34_Y33_N15
\Bank|Reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[6]~25_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(6));

-- Location: LCCOMB_X34_Y33_N16
\Bank|Reg[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[7]~27_combout\ = (\Bank|Reg\(7) & ((\myMUX_Din|Mux5~0_combout\ & (\Bank|Reg[6]~26\ & VCC)) # (!\myMUX_Din|Mux5~0_combout\ & (!\Bank|Reg[6]~26\)))) # (!\Bank|Reg\(7) & ((\myMUX_Din|Mux5~0_combout\ & (!\Bank|Reg[6]~26\)) # 
-- (!\myMUX_Din|Mux5~0_combout\ & ((\Bank|Reg[6]~26\) # (GND)))))
-- \Bank|Reg[7]~28\ = CARRY((\Bank|Reg\(7) & (!\myMUX_Din|Mux5~0_combout\ & !\Bank|Reg[6]~26\)) # (!\Bank|Reg\(7) & ((!\Bank|Reg[6]~26\) # (!\myMUX_Din|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(7),
	datab => \myMUX_Din|Mux5~0_combout\,
	datad => VCC,
	cin => \Bank|Reg[6]~26\,
	combout => \Bank|Reg[7]~27_combout\,
	cout => \Bank|Reg[7]~28\);

-- Location: LCCOMB_X34_Y33_N18
\Bank|Reg[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[8]~29_combout\ = ((\din~combout\(2) $ (\Bank|Reg\(8) $ (!\Bank|Reg[7]~28\)))) # (GND)
-- \Bank|Reg[8]~30\ = CARRY((\din~combout\(2) & ((\Bank|Reg\(8)) # (!\Bank|Reg[7]~28\))) # (!\din~combout\(2) & (\Bank|Reg\(8) & !\Bank|Reg[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \din~combout\(2),
	datab => \Bank|Reg\(8),
	datad => VCC,
	cin => \Bank|Reg[7]~28\,
	combout => \Bank|Reg[8]~29_combout\,
	cout => \Bank|Reg[8]~30\);

-- Location: LCFF_X34_Y33_N19
\Bank|Reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[8]~29_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(8));

-- Location: LCCOMB_X34_Y33_N20
\Bank|Reg[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[9]~31_combout\ = (\Bank|Reg\(9) & ((\myMUX_Din|Mux3~0_combout\ & (!\Bank|Reg[8]~30\)) # (!\myMUX_Din|Mux3~0_combout\ & (\Bank|Reg[8]~30\ & VCC)))) # (!\Bank|Reg\(9) & ((\myMUX_Din|Mux3~0_combout\ & ((\Bank|Reg[8]~30\) # (GND))) # 
-- (!\myMUX_Din|Mux3~0_combout\ & (!\Bank|Reg[8]~30\))))
-- \Bank|Reg[9]~32\ = CARRY((\Bank|Reg\(9) & (\myMUX_Din|Mux3~0_combout\ & !\Bank|Reg[8]~30\)) # (!\Bank|Reg\(9) & ((\myMUX_Din|Mux3~0_combout\) # (!\Bank|Reg[8]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(9),
	datab => \myMUX_Din|Mux3~0_combout\,
	datad => VCC,
	cin => \Bank|Reg[8]~30\,
	combout => \Bank|Reg[9]~31_combout\,
	cout => \Bank|Reg[9]~32\);

-- Location: LCCOMB_X34_Y33_N22
\Bank|Reg[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[10]~33_combout\ = ((\myMUX_Din|Mux2~0_combout\ $ (\Bank|Reg\(10) $ (!\Bank|Reg[9]~32\)))) # (GND)
-- \Bank|Reg[10]~34\ = CARRY((\myMUX_Din|Mux2~0_combout\ & ((\Bank|Reg\(10)) # (!\Bank|Reg[9]~32\))) # (!\myMUX_Din|Mux2~0_combout\ & (\Bank|Reg\(10) & !\Bank|Reg[9]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myMUX_Din|Mux2~0_combout\,
	datab => \Bank|Reg\(10),
	datad => VCC,
	cin => \Bank|Reg[9]~32\,
	combout => \Bank|Reg[10]~33_combout\,
	cout => \Bank|Reg[10]~34\);

-- Location: LCFF_X34_Y33_N23
\Bank|Reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[10]~33_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(10));

-- Location: LCCOMB_X33_Y33_N4
\myMUX_Din|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myMUX_Din|Mux0~0_combout\ = (\din~combout\(0) & (\din~combout\(2) & \din~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\(0),
	datac => \din~combout\(2),
	datad => \din~combout\(1),
	combout => \myMUX_Din|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y33_N24
\Bank|Reg[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[11]~35_combout\ = (\Bank|Reg\(11) & (!\Bank|Reg[10]~34\)) # (!\Bank|Reg\(11) & ((\Bank|Reg[10]~34\) # (GND)))
-- \Bank|Reg[11]~36\ = CARRY((!\Bank|Reg[10]~34\) # (!\Bank|Reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(11),
	datad => VCC,
	cin => \Bank|Reg[10]~34\,
	combout => \Bank|Reg[11]~35_combout\,
	cout => \Bank|Reg[11]~36\);

-- Location: LCCOMB_X34_Y33_N26
\Bank|Reg[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bank|Reg[12]~37_combout\ = \myMUX_Din|Mux0~0_combout\ $ (\Bank|Reg[11]~36\ $ (!\Bank|Reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myMUX_Din|Mux0~0_combout\,
	datad => \Bank|Reg\(12),
	cin => \Bank|Reg[11]~36\,
	combout => \Bank|Reg[12]~37_combout\);

-- Location: LCFF_X34_Y33_N27
\Bank|Reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[12]~37_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(12));

-- Location: LCFF_X34_Y33_N25
\Bank|Reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[11]~35_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(11));

-- Location: LCFF_X34_Y33_N21
\Bank|Reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[9]~31_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(9));

-- Location: LCFF_X34_Y33_N17
\Bank|Reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[7]~27_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(7));

-- Location: LCCOMB_X37_Y33_N28
\ComparadorGT|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorGT|LessThan0~2_combout\ = (\ComparadorGT|LessThan0~1_combout\ & (\Bank|Reg\(8) & (\Bank|Reg\(9) & \Bank|Reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ComparadorGT|LessThan0~1_combout\,
	datab => \Bank|Reg\(8),
	datac => \Bank|Reg\(9),
	datad => \Bank|Reg\(7),
	combout => \ComparadorGT|LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y33_N0
\ComparadorGT|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorGT|LessThan0~3_combout\ = (\Bank|Reg\(12) & ((\Bank|Reg\(10)) # ((\Bank|Reg\(11)) # (\ComparadorGT|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(10),
	datab => \Bank|Reg\(12),
	datac => \Bank|Reg\(11),
	datad => \ComparadorGT|LessThan0~2_combout\,
	combout => \ComparadorGT|LessThan0~3_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\prod_in[3]~I\ : cycloneii_io
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
	padio => ww_prod_in(3),
	combout => \prod_in~combout\(3));

-- Location: LCCOMB_X36_Y33_N2
\Prod|Reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Prod|Reg[3]~feeder_combout\ = \prod_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prod_in~combout\(3),
	combout => \Prod|Reg[3]~feeder_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pinLd_Prod~I\ : cycloneii_io
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
	padio => ww_pinLd_Prod,
	combout => \pinLd_Prod~combout\);

-- Location: LCFF_X36_Y33_N3
\Prod|Reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Prod|Reg[3]~feeder_combout\,
	ena => \pinLd_Prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Prod|Reg\(3));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\prod_in[2]~I\ : cycloneii_io
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
	padio => ww_prod_in(2),
	combout => \prod_in~combout\(2));

-- Location: LCFF_X36_Y33_N1
\Prod|Reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \prod_in~combout\(2),
	sload => VCC,
	ena => \pinLd_Prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Prod|Reg\(2));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\prod_in[1]~I\ : cycloneii_io
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
	padio => ww_prod_in(1),
	combout => \prod_in~combout\(1));

-- Location: LCCOMB_X36_Y33_N14
\Prod|Reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Prod|Reg[1]~feeder_combout\ = \prod_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prod_in~combout\(1),
	combout => \Prod|Reg[1]~feeder_combout\);

-- Location: LCFF_X36_Y33_N15
\Prod|Reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Prod|Reg[1]~feeder_combout\,
	ena => \pinLd_Prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Prod|Reg\(1));

-- Location: LCCOMB_X36_Y33_N0
\myPrices|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux0~0_combout\ = (!\Prod|Reg\(0) & (\Prod|Reg\(1) & (\Prod|Reg\(3) $ (\Prod|Reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(3),
	datac => \Prod|Reg\(2),
	datad => \Prod|Reg\(1),
	combout => \myPrices|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y33_N24
\myPrices|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux1~0_combout\ = (\Prod|Reg\(0) & ((\Prod|Reg\(2) & ((\Prod|Reg\(1)))) # (!\Prod|Reg\(2) & (\Prod|Reg\(3) & !\Prod|Reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(3),
	datac => \Prod|Reg\(2),
	datad => \Prod|Reg\(1),
	combout => \myPrices|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y33_N6
\myPrices|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux2~0_combout\ = (\Prod|Reg\(2) & (\Prod|Reg\(0) & (!\Prod|Reg\(3) & !\Prod|Reg\(1)))) # (!\Prod|Reg\(2) & (\Prod|Reg\(3) & ((\Prod|Reg\(0)) # (!\Prod|Reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(2),
	datac => \Prod|Reg\(3),
	datad => \Prod|Reg\(1),
	combout => \myPrices|Mux2~0_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\prod_in[0]~I\ : cycloneii_io
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
	padio => ww_prod_in(0),
	combout => \prod_in~combout\(0));

-- Location: LCCOMB_X36_Y33_N16
\Prod|Reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Prod|Reg[0]~feeder_combout\ = \prod_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prod_in~combout\(0),
	combout => \Prod|Reg[0]~feeder_combout\);

-- Location: LCFF_X36_Y33_N17
\Prod|Reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Prod|Reg[0]~feeder_combout\,
	ena => \pinLd_Prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Prod|Reg\(0));

-- Location: LCCOMB_X36_Y33_N20
\myPrices|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux3~0_combout\ = \Prod|Reg\(3) $ (((\Prod|Reg\(2) & (\Prod|Reg\(1) $ (!\Prod|Reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(2),
	datab => \Prod|Reg\(1),
	datac => \Prod|Reg\(3),
	datad => \Prod|Reg\(0),
	combout => \myPrices|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y33_N22
\myPrices|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux4~0_combout\ = (\Prod|Reg\(0) & ((\Prod|Reg\(3)) # ((\Prod|Reg\(1))))) # (!\Prod|Reg\(0) & (\Prod|Reg\(3) $ ((\Prod|Reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(3),
	datac => \Prod|Reg\(2),
	datad => \Prod|Reg\(1),
	combout => \myPrices|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y33_N18
\myPrices|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux6~0_combout\ = \Prod|Reg\(3) $ (((!\Prod|Reg\(2) & ((\Prod|Reg\(0)) # (\Prod|Reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(2),
	datac => \Prod|Reg\(1),
	datad => \Prod|Reg\(3),
	combout => \myPrices|Mux6~0_combout\);

-- Location: LCFF_X34_Y33_N13
\Bank|Reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[5]~23_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(5));

-- Location: LCCOMB_X36_Y33_N10
\myPrices|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux8~0_combout\ = (\Prod|Reg\(1) & (((\Prod|Reg\(3))))) # (!\Prod|Reg\(1) & ((\Prod|Reg\(0) & ((\Prod|Reg\(3)) # (!\Prod|Reg\(2)))) # (!\Prod|Reg\(0) & (\Prod|Reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(2),
	datac => \Prod|Reg\(1),
	datad => \Prod|Reg\(3),
	combout => \myPrices|Mux8~0_combout\);

-- Location: LCCOMB_X36_Y33_N28
\myPrices|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux9~0_combout\ = (\Prod|Reg\(2) & (\Prod|Reg\(3) $ (((\Prod|Reg\(0) & \Prod|Reg\(1)))))) # (!\Prod|Reg\(2) & (\Prod|Reg\(1) & ((\Prod|Reg\(3)) # (!\Prod|Reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(2),
	datac => \Prod|Reg\(1),
	datad => \Prod|Reg\(3),
	combout => \myPrices|Mux9~0_combout\);

-- Location: LCCOMB_X36_Y33_N26
\myPrices|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux10~0_combout\ = (\Prod|Reg\(0) & (!\Prod|Reg\(2) & ((!\Prod|Reg\(1)) # (!\Prod|Reg\(3))))) # (!\Prod|Reg\(0) & (\Prod|Reg\(2) & ((\Prod|Reg\(1)) # (!\Prod|Reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(3),
	datac => \Prod|Reg\(1),
	datad => \Prod|Reg\(2),
	combout => \myPrices|Mux10~0_combout\);

-- Location: LCCOMB_X37_Y33_N2
\ComparadorLT|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~1_cout\ = CARRY((!\myPrices|Mux12~0_combout\ & \Bank|Reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myPrices|Mux12~0_combout\,
	datab => \Bank|Reg\(0),
	datad => VCC,
	cout => \ComparadorLT|LessThan0~1_cout\);

-- Location: LCCOMB_X37_Y33_N4
\ComparadorLT|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~3_cout\ = CARRY((\myPrices|Mux11~0_combout\ & (!\Bank|Reg\(1) & !\ComparadorLT|LessThan0~1_cout\)) # (!\myPrices|Mux11~0_combout\ & ((!\ComparadorLT|LessThan0~1_cout\) # (!\Bank|Reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myPrices|Mux11~0_combout\,
	datab => \Bank|Reg\(1),
	datad => VCC,
	cin => \ComparadorLT|LessThan0~1_cout\,
	cout => \ComparadorLT|LessThan0~3_cout\);

-- Location: LCCOMB_X37_Y33_N6
\ComparadorLT|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~5_cout\ = CARRY((\Bank|Reg\(2) & ((!\ComparadorLT|LessThan0~3_cout\) # (!\myPrices|Mux10~0_combout\))) # (!\Bank|Reg\(2) & (!\myPrices|Mux10~0_combout\ & !\ComparadorLT|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(2),
	datab => \myPrices|Mux10~0_combout\,
	datad => VCC,
	cin => \ComparadorLT|LessThan0~3_cout\,
	cout => \ComparadorLT|LessThan0~5_cout\);

-- Location: LCCOMB_X37_Y33_N8
\ComparadorLT|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~7_cout\ = CARRY((\Bank|Reg\(3) & (\myPrices|Mux9~0_combout\ & !\ComparadorLT|LessThan0~5_cout\)) # (!\Bank|Reg\(3) & ((\myPrices|Mux9~0_combout\) # (!\ComparadorLT|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(3),
	datab => \myPrices|Mux9~0_combout\,
	datad => VCC,
	cin => \ComparadorLT|LessThan0~5_cout\,
	cout => \ComparadorLT|LessThan0~7_cout\);

-- Location: LCCOMB_X37_Y33_N10
\ComparadorLT|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~9_cout\ = CARRY((\Bank|Reg\(4) & ((\myPrices|Mux8~0_combout\) # (!\ComparadorLT|LessThan0~7_cout\))) # (!\Bank|Reg\(4) & (\myPrices|Mux8~0_combout\ & !\ComparadorLT|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(4),
	datab => \myPrices|Mux8~0_combout\,
	datad => VCC,
	cin => \ComparadorLT|LessThan0~7_cout\,
	cout => \ComparadorLT|LessThan0~9_cout\);

-- Location: LCCOMB_X37_Y33_N12
\ComparadorLT|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~11_cout\ = CARRY((\myPrices|Mux7~0_combout\ & (!\Bank|Reg\(5) & !\ComparadorLT|LessThan0~9_cout\)) # (!\myPrices|Mux7~0_combout\ & ((!\ComparadorLT|LessThan0~9_cout\) # (!\Bank|Reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myPrices|Mux7~0_combout\,
	datab => \Bank|Reg\(5),
	datad => VCC,
	cin => \ComparadorLT|LessThan0~9_cout\,
	cout => \ComparadorLT|LessThan0~11_cout\);

-- Location: LCCOMB_X37_Y33_N14
\ComparadorLT|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~13_cout\ = CARRY((\Bank|Reg\(6) & ((!\ComparadorLT|LessThan0~11_cout\) # (!\myPrices|Mux6~0_combout\))) # (!\Bank|Reg\(6) & (!\myPrices|Mux6~0_combout\ & !\ComparadorLT|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(6),
	datab => \myPrices|Mux6~0_combout\,
	datad => VCC,
	cin => \ComparadorLT|LessThan0~11_cout\,
	cout => \ComparadorLT|LessThan0~13_cout\);

-- Location: LCCOMB_X37_Y33_N16
\ComparadorLT|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~15_cout\ = CARRY((\myPrices|Mux5~0_combout\ & ((!\ComparadorLT|LessThan0~13_cout\) # (!\Bank|Reg\(7)))) # (!\myPrices|Mux5~0_combout\ & (!\Bank|Reg\(7) & !\ComparadorLT|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myPrices|Mux5~0_combout\,
	datab => \Bank|Reg\(7),
	datad => VCC,
	cin => \ComparadorLT|LessThan0~13_cout\,
	cout => \ComparadorLT|LessThan0~15_cout\);

-- Location: LCCOMB_X37_Y33_N18
\ComparadorLT|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~17_cout\ = CARRY((\Bank|Reg\(8) & ((!\ComparadorLT|LessThan0~15_cout\) # (!\myPrices|Mux4~0_combout\))) # (!\Bank|Reg\(8) & (!\myPrices|Mux4~0_combout\ & !\ComparadorLT|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(8),
	datab => \myPrices|Mux4~0_combout\,
	datad => VCC,
	cin => \ComparadorLT|LessThan0~15_cout\,
	cout => \ComparadorLT|LessThan0~17_cout\);

-- Location: LCCOMB_X37_Y33_N20
\ComparadorLT|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~19_cout\ = CARRY((\Bank|Reg\(9) & (\myPrices|Mux3~0_combout\ & !\ComparadorLT|LessThan0~17_cout\)) # (!\Bank|Reg\(9) & ((\myPrices|Mux3~0_combout\) # (!\ComparadorLT|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(9),
	datab => \myPrices|Mux3~0_combout\,
	datad => VCC,
	cin => \ComparadorLT|LessThan0~17_cout\,
	cout => \ComparadorLT|LessThan0~19_cout\);

-- Location: LCCOMB_X37_Y33_N22
\ComparadorLT|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~21_cout\ = CARRY((\Bank|Reg\(10) & ((!\ComparadorLT|LessThan0~19_cout\) # (!\myPrices|Mux2~0_combout\))) # (!\Bank|Reg\(10) & (!\myPrices|Mux2~0_combout\ & !\ComparadorLT|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(10),
	datab => \myPrices|Mux2~0_combout\,
	datad => VCC,
	cin => \ComparadorLT|LessThan0~19_cout\,
	cout => \ComparadorLT|LessThan0~21_cout\);

-- Location: LCCOMB_X37_Y33_N24
\ComparadorLT|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~23_cout\ = CARRY((\Bank|Reg\(11) & (\myPrices|Mux1~0_combout\ & !\ComparadorLT|LessThan0~21_cout\)) # (!\Bank|Reg\(11) & ((\myPrices|Mux1~0_combout\) # (!\ComparadorLT|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(11),
	datab => \myPrices|Mux1~0_combout\,
	datad => VCC,
	cin => \ComparadorLT|LessThan0~21_cout\,
	cout => \ComparadorLT|LessThan0~23_cout\);

-- Location: LCCOMB_X37_Y33_N26
\ComparadorLT|LessThan0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ComparadorLT|LessThan0~24_combout\ = (\myPrices|Mux0~0_combout\ & (!\ComparadorLT|LessThan0~23_cout\ & \Bank|Reg\(12))) # (!\myPrices|Mux0~0_combout\ & ((\Bank|Reg\(12)) # (!\ComparadorLT|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myPrices|Mux0~0_combout\,
	datad => \Bank|Reg\(12),
	cin => \ComparadorLT|LessThan0~23_cout\,
	combout => \ComparadorLT|LessThan0~24_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y33_N30
\myPrices|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux12~0_combout\ = (\Prod|Reg\(3) & (!\Prod|Reg\(1) & (\Prod|Reg\(0) $ (\Prod|Reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(3),
	datac => \Prod|Reg\(1),
	datad => \Prod|Reg\(2),
	combout => \myPrices|Mux12~0_combout\);

-- Location: LCCOMB_X35_Y33_N0
\Troco|Reg[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[0]~13_combout\ = (\Bank|Reg\(0) & ((GND) # (!\myPrices|Mux12~0_combout\))) # (!\Bank|Reg\(0) & (\myPrices|Mux12~0_combout\ $ (GND)))
-- \Troco|Reg[0]~14\ = CARRY((\Bank|Reg\(0)) # (!\myPrices|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(0),
	datab => \myPrices|Mux12~0_combout\,
	datad => VCC,
	combout => \Troco|Reg[0]~13_combout\,
	cout => \Troco|Reg[0]~14\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pinRST_Troco~I\ : cycloneii_io
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
	padio => ww_pinRST_Troco,
	combout => \pinRST_Troco~combout\);

-- Location: CLKCTRL_G2
\pinRST_Troco~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pinRST_Troco~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pinRST_Troco~clkctrl_outclk\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pinLd_Troco~I\ : cycloneii_io
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
	padio => ww_pinLd_Troco,
	combout => \pinLd_Troco~combout\);

-- Location: LCFF_X35_Y33_N1
\Troco|Reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[0]~13_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(0));

-- Location: LCCOMB_X36_Y33_N8
\myPrices|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux11~0_combout\ = (\Prod|Reg\(0) & (((\Prod|Reg\(1)) # (\Prod|Reg\(2))) # (!\Prod|Reg\(3)))) # (!\Prod|Reg\(0) & (\Prod|Reg\(3) $ (((\Prod|Reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(0),
	datab => \Prod|Reg\(3),
	datac => \Prod|Reg\(1),
	datad => \Prod|Reg\(2),
	combout => \myPrices|Mux11~0_combout\);

-- Location: LCCOMB_X35_Y33_N2
\Troco|Reg[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[1]~15_combout\ = (\Bank|Reg\(1) & ((\myPrices|Mux11~0_combout\ & (\Troco|Reg[0]~14\ & VCC)) # (!\myPrices|Mux11~0_combout\ & (!\Troco|Reg[0]~14\)))) # (!\Bank|Reg\(1) & ((\myPrices|Mux11~0_combout\ & (!\Troco|Reg[0]~14\)) # 
-- (!\myPrices|Mux11~0_combout\ & ((\Troco|Reg[0]~14\) # (GND)))))
-- \Troco|Reg[1]~16\ = CARRY((\Bank|Reg\(1) & (!\myPrices|Mux11~0_combout\ & !\Troco|Reg[0]~14\)) # (!\Bank|Reg\(1) & ((!\Troco|Reg[0]~14\) # (!\myPrices|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(1),
	datab => \myPrices|Mux11~0_combout\,
	datad => VCC,
	cin => \Troco|Reg[0]~14\,
	combout => \Troco|Reg[1]~15_combout\,
	cout => \Troco|Reg[1]~16\);

-- Location: LCFF_X35_Y33_N3
\Troco|Reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[1]~15_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(1));

-- Location: LCFF_X34_Y33_N7
\Bank|Reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Bank|Reg[2]~17_combout\,
	aclr => \pinRST_Bank~clkctrl_outclk\,
	ena => \pinLd_Bank~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Bank|Reg\(2));

-- Location: LCCOMB_X35_Y33_N4
\Troco|Reg[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[2]~17_combout\ = ((\myPrices|Mux10~0_combout\ $ (\Bank|Reg\(2) $ (\Troco|Reg[1]~16\)))) # (GND)
-- \Troco|Reg[2]~18\ = CARRY((\myPrices|Mux10~0_combout\ & (\Bank|Reg\(2) & !\Troco|Reg[1]~16\)) # (!\myPrices|Mux10~0_combout\ & ((\Bank|Reg\(2)) # (!\Troco|Reg[1]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myPrices|Mux10~0_combout\,
	datab => \Bank|Reg\(2),
	datad => VCC,
	cin => \Troco|Reg[1]~16\,
	combout => \Troco|Reg[2]~17_combout\,
	cout => \Troco|Reg[2]~18\);

-- Location: LCFF_X35_Y33_N5
\Troco|Reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[2]~17_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(2));

-- Location: LCCOMB_X35_Y33_N6
\Troco|Reg[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[3]~19_combout\ = (\Bank|Reg\(3) & ((\myPrices|Mux9~0_combout\ & (!\Troco|Reg[2]~18\)) # (!\myPrices|Mux9~0_combout\ & (\Troco|Reg[2]~18\ & VCC)))) # (!\Bank|Reg\(3) & ((\myPrices|Mux9~0_combout\ & ((\Troco|Reg[2]~18\) # (GND))) # 
-- (!\myPrices|Mux9~0_combout\ & (!\Troco|Reg[2]~18\))))
-- \Troco|Reg[3]~20\ = CARRY((\Bank|Reg\(3) & (\myPrices|Mux9~0_combout\ & !\Troco|Reg[2]~18\)) # (!\Bank|Reg\(3) & ((\myPrices|Mux9~0_combout\) # (!\Troco|Reg[2]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(3),
	datab => \myPrices|Mux9~0_combout\,
	datad => VCC,
	cin => \Troco|Reg[2]~18\,
	combout => \Troco|Reg[3]~19_combout\,
	cout => \Troco|Reg[3]~20\);

-- Location: LCFF_X35_Y33_N7
\Troco|Reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[3]~19_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(3));

-- Location: LCCOMB_X35_Y33_N8
\Troco|Reg[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[4]~21_combout\ = ((\Bank|Reg\(4) $ (\myPrices|Mux8~0_combout\ $ (!\Troco|Reg[3]~20\)))) # (GND)
-- \Troco|Reg[4]~22\ = CARRY((\Bank|Reg\(4) & ((\myPrices|Mux8~0_combout\) # (!\Troco|Reg[3]~20\))) # (!\Bank|Reg\(4) & (\myPrices|Mux8~0_combout\ & !\Troco|Reg[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(4),
	datab => \myPrices|Mux8~0_combout\,
	datad => VCC,
	cin => \Troco|Reg[3]~20\,
	combout => \Troco|Reg[4]~21_combout\,
	cout => \Troco|Reg[4]~22\);

-- Location: LCFF_X35_Y33_N9
\Troco|Reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[4]~21_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(4));

-- Location: LCCOMB_X36_Y33_N12
\myPrices|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myPrices|Mux7~0_combout\ = (\Prod|Reg\(2) & (!\Prod|Reg\(0) & ((!\Prod|Reg\(1)) # (!\Prod|Reg\(3))))) # (!\Prod|Reg\(2) & (\Prod|Reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prod|Reg\(2),
	datab => \Prod|Reg\(3),
	datac => \Prod|Reg\(1),
	datad => \Prod|Reg\(0),
	combout => \myPrices|Mux7~0_combout\);

-- Location: LCCOMB_X35_Y33_N10
\Troco|Reg[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[5]~23_combout\ = (\Bank|Reg\(5) & ((\myPrices|Mux7~0_combout\ & (\Troco|Reg[4]~22\ & VCC)) # (!\myPrices|Mux7~0_combout\ & (!\Troco|Reg[4]~22\)))) # (!\Bank|Reg\(5) & ((\myPrices|Mux7~0_combout\ & (!\Troco|Reg[4]~22\)) # 
-- (!\myPrices|Mux7~0_combout\ & ((\Troco|Reg[4]~22\) # (GND)))))
-- \Troco|Reg[5]~24\ = CARRY((\Bank|Reg\(5) & (!\myPrices|Mux7~0_combout\ & !\Troco|Reg[4]~22\)) # (!\Bank|Reg\(5) & ((!\Troco|Reg[4]~22\) # (!\myPrices|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(5),
	datab => \myPrices|Mux7~0_combout\,
	datad => VCC,
	cin => \Troco|Reg[4]~22\,
	combout => \Troco|Reg[5]~23_combout\,
	cout => \Troco|Reg[5]~24\);

-- Location: LCFF_X35_Y33_N11
\Troco|Reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[5]~23_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(5));

-- Location: LCCOMB_X35_Y33_N12
\Troco|Reg[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[6]~25_combout\ = ((\Bank|Reg\(6) $ (\myPrices|Mux6~0_combout\ $ (\Troco|Reg[5]~24\)))) # (GND)
-- \Troco|Reg[6]~26\ = CARRY((\Bank|Reg\(6) & ((!\Troco|Reg[5]~24\) # (!\myPrices|Mux6~0_combout\))) # (!\Bank|Reg\(6) & (!\myPrices|Mux6~0_combout\ & !\Troco|Reg[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(6),
	datab => \myPrices|Mux6~0_combout\,
	datad => VCC,
	cin => \Troco|Reg[5]~24\,
	combout => \Troco|Reg[6]~25_combout\,
	cout => \Troco|Reg[6]~26\);

-- Location: LCFF_X35_Y33_N13
\Troco|Reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[6]~25_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(6));

-- Location: LCCOMB_X35_Y33_N14
\Troco|Reg[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[7]~27_combout\ = (\myPrices|Mux5~0_combout\ & ((\Bank|Reg\(7) & (!\Troco|Reg[6]~26\)) # (!\Bank|Reg\(7) & ((\Troco|Reg[6]~26\) # (GND))))) # (!\myPrices|Mux5~0_combout\ & ((\Bank|Reg\(7) & (\Troco|Reg[6]~26\ & VCC)) # (!\Bank|Reg\(7) & 
-- (!\Troco|Reg[6]~26\))))
-- \Troco|Reg[7]~28\ = CARRY((\myPrices|Mux5~0_combout\ & ((!\Troco|Reg[6]~26\) # (!\Bank|Reg\(7)))) # (!\myPrices|Mux5~0_combout\ & (!\Bank|Reg\(7) & !\Troco|Reg[6]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myPrices|Mux5~0_combout\,
	datab => \Bank|Reg\(7),
	datad => VCC,
	cin => \Troco|Reg[6]~26\,
	combout => \Troco|Reg[7]~27_combout\,
	cout => \Troco|Reg[7]~28\);

-- Location: LCFF_X35_Y33_N15
\Troco|Reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[7]~27_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(7));

-- Location: LCCOMB_X35_Y33_N16
\Troco|Reg[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[8]~29_combout\ = ((\Bank|Reg\(8) $ (\myPrices|Mux4~0_combout\ $ (\Troco|Reg[7]~28\)))) # (GND)
-- \Troco|Reg[8]~30\ = CARRY((\Bank|Reg\(8) & ((!\Troco|Reg[7]~28\) # (!\myPrices|Mux4~0_combout\))) # (!\Bank|Reg\(8) & (!\myPrices|Mux4~0_combout\ & !\Troco|Reg[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(8),
	datab => \myPrices|Mux4~0_combout\,
	datad => VCC,
	cin => \Troco|Reg[7]~28\,
	combout => \Troco|Reg[8]~29_combout\,
	cout => \Troco|Reg[8]~30\);

-- Location: LCFF_X35_Y33_N17
\Troco|Reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[8]~29_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(8));

-- Location: LCCOMB_X35_Y33_N18
\Troco|Reg[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[9]~31_combout\ = (\Bank|Reg\(9) & ((\myPrices|Mux3~0_combout\ & (!\Troco|Reg[8]~30\)) # (!\myPrices|Mux3~0_combout\ & (\Troco|Reg[8]~30\ & VCC)))) # (!\Bank|Reg\(9) & ((\myPrices|Mux3~0_combout\ & ((\Troco|Reg[8]~30\) # (GND))) # 
-- (!\myPrices|Mux3~0_combout\ & (!\Troco|Reg[8]~30\))))
-- \Troco|Reg[9]~32\ = CARRY((\Bank|Reg\(9) & (\myPrices|Mux3~0_combout\ & !\Troco|Reg[8]~30\)) # (!\Bank|Reg\(9) & ((\myPrices|Mux3~0_combout\) # (!\Troco|Reg[8]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(9),
	datab => \myPrices|Mux3~0_combout\,
	datad => VCC,
	cin => \Troco|Reg[8]~30\,
	combout => \Troco|Reg[9]~31_combout\,
	cout => \Troco|Reg[9]~32\);

-- Location: LCFF_X35_Y33_N19
\Troco|Reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[9]~31_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(9));

-- Location: LCCOMB_X35_Y33_N20
\Troco|Reg[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[10]~33_combout\ = ((\myPrices|Mux2~0_combout\ $ (\Bank|Reg\(10) $ (\Troco|Reg[9]~32\)))) # (GND)
-- \Troco|Reg[10]~34\ = CARRY((\myPrices|Mux2~0_combout\ & (\Bank|Reg\(10) & !\Troco|Reg[9]~32\)) # (!\myPrices|Mux2~0_combout\ & ((\Bank|Reg\(10)) # (!\Troco|Reg[9]~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myPrices|Mux2~0_combout\,
	datab => \Bank|Reg\(10),
	datad => VCC,
	cin => \Troco|Reg[9]~32\,
	combout => \Troco|Reg[10]~33_combout\,
	cout => \Troco|Reg[10]~34\);

-- Location: LCFF_X35_Y33_N21
\Troco|Reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[10]~33_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(10));

-- Location: LCCOMB_X35_Y33_N22
\Troco|Reg[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[11]~35_combout\ = (\Bank|Reg\(11) & ((\myPrices|Mux1~0_combout\ & (!\Troco|Reg[10]~34\)) # (!\myPrices|Mux1~0_combout\ & (\Troco|Reg[10]~34\ & VCC)))) # (!\Bank|Reg\(11) & ((\myPrices|Mux1~0_combout\ & ((\Troco|Reg[10]~34\) # (GND))) # 
-- (!\myPrices|Mux1~0_combout\ & (!\Troco|Reg[10]~34\))))
-- \Troco|Reg[11]~36\ = CARRY((\Bank|Reg\(11) & (\myPrices|Mux1~0_combout\ & !\Troco|Reg[10]~34\)) # (!\Bank|Reg\(11) & ((\myPrices|Mux1~0_combout\) # (!\Troco|Reg[10]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(11),
	datab => \myPrices|Mux1~0_combout\,
	datad => VCC,
	cin => \Troco|Reg[10]~34\,
	combout => \Troco|Reg[11]~35_combout\,
	cout => \Troco|Reg[11]~36\);

-- Location: LCFF_X35_Y33_N23
\Troco|Reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[11]~35_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(11));

-- Location: LCCOMB_X35_Y33_N24
\Troco|Reg[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Troco|Reg[12]~37_combout\ = \Bank|Reg\(12) $ (\Troco|Reg[11]~36\ $ (\myPrices|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bank|Reg\(12),
	datad => \myPrices|Mux0~0_combout\,
	cin => \Troco|Reg[11]~36\,
	combout => \Troco|Reg[12]~37_combout\);

-- Location: LCFF_X35_Y33_N25
\Troco|Reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Troco|Reg[12]~37_combout\,
	aclr => \pinRST_Troco~clkctrl_outclk\,
	ena => \pinLd_Troco~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Troco|Reg\(12));

-- Location: LCCOMB_X35_Y35_N28
\myBCD_Conv|temp~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~71_combout\ = ((!\Troco|Reg\(11) & !\Troco|Reg\(10))) # (!\Troco|Reg\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Troco|Reg\(11),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(10),
	combout => \myBCD_Conv|temp~71_combout\);

-- Location: LCCOMB_X35_Y35_N8
\myBCD_Conv|temp~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~14_combout\ = (\Troco|Reg\(11) & ((\Troco|Reg\(10) & ((\Troco|Reg\(12)) # (\Troco|Reg\(9)))) # (!\Troco|Reg\(10) & ((!\Troco|Reg\(9)) # (!\Troco|Reg\(12)))))) # (!\Troco|Reg\(11) & (\Troco|Reg\(9) $ (((\Troco|Reg\(10)) # 
-- (!\Troco|Reg\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(10),
	datab => \Troco|Reg\(11),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(9),
	combout => \myBCD_Conv|temp~14_combout\);

-- Location: LCCOMB_X35_Y35_N12
\myBCD_Conv|temp~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~12_combout\ = (\Troco|Reg\(11) & (!\Troco|Reg\(9) & (\Troco|Reg\(10) $ (!\Troco|Reg\(12))))) # (!\Troco|Reg\(11) & (!\Troco|Reg\(10) & (\Troco|Reg\(12) & \Troco|Reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(10),
	datab => \Troco|Reg\(11),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(9),
	combout => \myBCD_Conv|temp~12_combout\);

-- Location: LCCOMB_X35_Y35_N18
\myBCD_Conv|temp~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~70_combout\ = \myBCD_Conv|temp~12_combout\ $ ((((\myBCD_Conv|temp~14_combout\ & !\Troco|Reg\(8))) # (!\myBCD_Conv|temp~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~13_combout\,
	datab => \myBCD_Conv|temp~14_combout\,
	datac => \Troco|Reg\(8),
	datad => \myBCD_Conv|temp~12_combout\,
	combout => \myBCD_Conv|temp~70_combout\);

-- Location: LCCOMB_X35_Y35_N16
\myBCD_Conv|temp~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~69_combout\ = (\Troco|Reg\(10) & (\Troco|Reg\(11) & ((\Troco|Reg\(9)) # (!\Troco|Reg\(12))))) # (!\Troco|Reg\(10) & ((\Troco|Reg\(11) & (!\Troco|Reg\(12) & \Troco|Reg\(9))) # (!\Troco|Reg\(11) & (\Troco|Reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(10),
	datab => \Troco|Reg\(11),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(9),
	combout => \myBCD_Conv|temp~69_combout\);

-- Location: LCCOMB_X32_Y35_N26
\myBCD_Conv|temp~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~35_combout\ = (\myBCD_Conv|temp~71_combout\) # ((\myBCD_Conv|temp~70_combout\ & !\myBCD_Conv|temp~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myBCD_Conv|temp~71_combout\,
	datac => \myBCD_Conv|temp~70_combout\,
	datad => \myBCD_Conv|temp~69_combout\,
	combout => \myBCD_Conv|temp~35_combout\);

-- Location: LCCOMB_X35_Y35_N24
\myBCD_Conv|temp~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~16_combout\ = (\myBCD_Conv|temp~13_combout\ & (\myBCD_Conv|temp~14_combout\ & (!\Troco|Reg\(8)))) # (!\myBCD_Conv|temp~13_combout\ & (\myBCD_Conv|temp~12_combout\ & ((\Troco|Reg\(8)) # (!\myBCD_Conv|temp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~13_combout\,
	datab => \myBCD_Conv|temp~14_combout\,
	datac => \Troco|Reg\(8),
	datad => \myBCD_Conv|temp~12_combout\,
	combout => \myBCD_Conv|temp~16_combout\);

-- Location: LCCOMB_X35_Y35_N14
\myBCD_Conv|temp~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~17_combout\ = (\myBCD_Conv|temp~13_combout\ & ((\Troco|Reg\(8)) # ((\myBCD_Conv|temp~14_combout\ & !\myBCD_Conv|temp~12_combout\)))) # (!\myBCD_Conv|temp~13_combout\ & ((\Troco|Reg\(8) $ (!\myBCD_Conv|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~13_combout\,
	datab => \myBCD_Conv|temp~14_combout\,
	datac => \Troco|Reg\(8),
	datad => \myBCD_Conv|temp~12_combout\,
	combout => \myBCD_Conv|temp~17_combout\);

-- Location: LCCOMB_X35_Y35_N30
\myBCD_Conv|temp~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~15_combout\ = (\myBCD_Conv|temp~14_combout\ & (((!\Troco|Reg\(8) & \myBCD_Conv|temp~12_combout\)))) # (!\myBCD_Conv|temp~14_combout\ & ((\Troco|Reg\(8)) # ((!\myBCD_Conv|temp~13_combout\ & !\myBCD_Conv|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~13_combout\,
	datab => \myBCD_Conv|temp~14_combout\,
	datac => \Troco|Reg\(8),
	datad => \myBCD_Conv|temp~12_combout\,
	combout => \myBCD_Conv|temp~15_combout\);

-- Location: LCCOMB_X34_Y35_N0
\myBCD_Conv|temp~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~18_combout\ = \myBCD_Conv|temp~16_combout\ $ ((((!\Troco|Reg\(7) & \myBCD_Conv|temp~17_combout\)) # (!\myBCD_Conv|temp~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(7),
	datab => \myBCD_Conv|temp~16_combout\,
	datac => \myBCD_Conv|temp~17_combout\,
	datad => \myBCD_Conv|temp~15_combout\,
	combout => \myBCD_Conv|temp~18_combout\);

-- Location: LCCOMB_X32_Y35_N2
\myBCD_Conv|temp~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~20_combout\ = (\myBCD_Conv|temp~18_combout\ & ((\myBCD_Conv|temp~70_combout\ & (!\myBCD_Conv|temp~71_combout\ & !\myBCD_Conv|temp~69_combout\)) # (!\myBCD_Conv|temp~70_combout\ & (\myBCD_Conv|temp~71_combout\ & 
-- \myBCD_Conv|temp~69_combout\)))) # (!\myBCD_Conv|temp~18_combout\ & (\myBCD_Conv|temp~69_combout\ $ (((\myBCD_Conv|temp~71_combout\) # (!\myBCD_Conv|temp~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~70_combout\,
	datab => \myBCD_Conv|temp~71_combout\,
	datac => \myBCD_Conv|temp~18_combout\,
	datad => \myBCD_Conv|temp~69_combout\,
	combout => \myBCD_Conv|temp~20_combout\);

-- Location: LCCOMB_X34_Y35_N2
\myBCD_Conv|temp~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~23_combout\ = (\Troco|Reg\(7) & ((\myBCD_Conv|temp~16_combout\) # ((\myBCD_Conv|temp~15_combout\)))) # (!\Troco|Reg\(7) & (!\myBCD_Conv|temp~16_combout\ & ((\myBCD_Conv|temp~17_combout\) # (!\myBCD_Conv|temp~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(7),
	datab => \myBCD_Conv|temp~16_combout\,
	datac => \myBCD_Conv|temp~17_combout\,
	datad => \myBCD_Conv|temp~15_combout\,
	combout => \myBCD_Conv|temp~23_combout\);

-- Location: LCCOMB_X34_Y35_N20
\myBCD_Conv|temp~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~22_combout\ = (\myBCD_Conv|temp~15_combout\ & (!\Troco|Reg\(7) & ((\myBCD_Conv|temp~17_combout\)))) # (!\myBCD_Conv|temp~15_combout\ & (\myBCD_Conv|temp~16_combout\ & ((\Troco|Reg\(7)) # (!\myBCD_Conv|temp~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(7),
	datab => \myBCD_Conv|temp~16_combout\,
	datac => \myBCD_Conv|temp~17_combout\,
	datad => \myBCD_Conv|temp~15_combout\,
	combout => \myBCD_Conv|temp~22_combout\);

-- Location: LCCOMB_X34_Y35_N16
\myBCD_Conv|temp~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~24_combout\ = \myBCD_Conv|temp~22_combout\ $ ((((\myBCD_Conv|temp~23_combout\ & !\Troco|Reg\(6))) # (!\myBCD_Conv|temp~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~21_combout\,
	datab => \myBCD_Conv|temp~23_combout\,
	datac => \myBCD_Conv|temp~22_combout\,
	datad => \Troco|Reg\(6),
	combout => \myBCD_Conv|temp~24_combout\);

-- Location: LCCOMB_X35_Y35_N0
\myBCD_Conv|temp~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~5_combout\ = (\Troco|Reg\(10) & (((\Troco|Reg\(12) & \Troco|Reg\(9))) # (!\Troco|Reg\(11)))) # (!\Troco|Reg\(10) & (\Troco|Reg\(11) & (!\Troco|Reg\(12) & !\Troco|Reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(10),
	datab => \Troco|Reg\(11),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(9),
	combout => \myBCD_Conv|temp~5_combout\);

-- Location: LCCOMB_X35_Y35_N22
\myBCD_Conv|temp~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~9_combout\ = (\Troco|Reg\(11) & ((\Troco|Reg\(10) & ((\Troco|Reg\(9)))) # (!\Troco|Reg\(10) & (!\Troco|Reg\(12) & !\Troco|Reg\(9))))) # (!\Troco|Reg\(11) & (\Troco|Reg\(10) $ ((\Troco|Reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(10),
	datab => \Troco|Reg\(11),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(9),
	combout => \myBCD_Conv|temp~9_combout\);

-- Location: LCCOMB_X35_Y35_N4
\myBCD_Conv|temp~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~10_combout\ = (\Troco|Reg\(8) & (((\myBCD_Conv|temp~18_combout\) # (\myBCD_Conv|temp~9_combout\)))) # (!\Troco|Reg\(8) & (\myBCD_Conv|temp~8_combout\ & (!\myBCD_Conv|temp~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~8_combout\,
	datab => \Troco|Reg\(8),
	datac => \myBCD_Conv|temp~18_combout\,
	datad => \myBCD_Conv|temp~9_combout\,
	combout => \myBCD_Conv|temp~10_combout\);

-- Location: LCCOMB_X35_Y35_N10
\myBCD_Conv|temp~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~4_combout\ = (\Troco|Reg\(10) & ((\Troco|Reg\(11) & (\Troco|Reg\(12) & \Troco|Reg\(9))) # (!\Troco|Reg\(11) & ((\Troco|Reg\(12)) # (\Troco|Reg\(9)))))) # (!\Troco|Reg\(10) & (\Troco|Reg\(11) & ((!\Troco|Reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(10),
	datab => \Troco|Reg\(11),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(9),
	combout => \myBCD_Conv|temp~4_combout\);

-- Location: LCCOMB_X35_Y35_N2
\myBCD_Conv|temp~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~11_combout\ = (\myBCD_Conv|temp~18_combout\ & ((\myBCD_Conv|temp~10_combout\ & (\myBCD_Conv|temp~5_combout\)) # (!\myBCD_Conv|temp~10_combout\ & ((\myBCD_Conv|temp~4_combout\))))) # (!\myBCD_Conv|temp~18_combout\ & 
-- (((\myBCD_Conv|temp~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~18_combout\,
	datab => \myBCD_Conv|temp~5_combout\,
	datac => \myBCD_Conv|temp~10_combout\,
	datad => \myBCD_Conv|temp~4_combout\,
	combout => \myBCD_Conv|temp~11_combout\);

-- Location: LCCOMB_X32_Y35_N30
\myBCD_Conv|temp~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~26_combout\ = (\myBCD_Conv|temp~19_combout\ & (((\myBCD_Conv|temp~24_combout\)))) # (!\myBCD_Conv|temp~19_combout\ & ((\myBCD_Conv|temp~24_combout\ & (\myBCD_Conv|temp~20_combout\ & \myBCD_Conv|temp~11_combout\)) # 
-- (!\myBCD_Conv|temp~24_combout\ & ((!\myBCD_Conv|temp~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~19_combout\,
	datab => \myBCD_Conv|temp~20_combout\,
	datac => \myBCD_Conv|temp~24_combout\,
	datad => \myBCD_Conv|temp~11_combout\,
	combout => \myBCD_Conv|temp~26_combout\);

-- Location: LCCOMB_X34_Y35_N18
\myBCD_Conv|temp~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~28_combout\ = (\myBCD_Conv|temp~23_combout\ & (((\myBCD_Conv|temp~22_combout\ & !\Troco|Reg\(6))))) # (!\myBCD_Conv|temp~23_combout\ & ((\Troco|Reg\(6)) # ((!\myBCD_Conv|temp~21_combout\ & !\myBCD_Conv|temp~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~21_combout\,
	datab => \myBCD_Conv|temp~23_combout\,
	datac => \myBCD_Conv|temp~22_combout\,
	datad => \Troco|Reg\(6),
	combout => \myBCD_Conv|temp~28_combout\);

-- Location: LCCOMB_X34_Y35_N12
\myBCD_Conv|temp~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~29_combout\ = (\myBCD_Conv|temp~21_combout\ & (\myBCD_Conv|temp~23_combout\ & ((!\Troco|Reg\(6))))) # (!\myBCD_Conv|temp~21_combout\ & (\myBCD_Conv|temp~22_combout\ & ((\Troco|Reg\(6)) # (!\myBCD_Conv|temp~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~21_combout\,
	datab => \myBCD_Conv|temp~23_combout\,
	datac => \myBCD_Conv|temp~22_combout\,
	datad => \Troco|Reg\(6),
	combout => \myBCD_Conv|temp~29_combout\);

-- Location: LCCOMB_X34_Y35_N24
\myBCD_Conv|temp~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~31_combout\ = \myBCD_Conv|temp~29_combout\ $ ((((\myBCD_Conv|temp~30_combout\ & !\Troco|Reg\(5))) # (!\myBCD_Conv|temp~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~30_combout\,
	datab => \myBCD_Conv|temp~28_combout\,
	datac => \Troco|Reg\(5),
	datad => \myBCD_Conv|temp~29_combout\,
	combout => \myBCD_Conv|temp~31_combout\);

-- Location: LCCOMB_X32_Y35_N28
\myBCD_Conv|temp~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~25_combout\ = (\myBCD_Conv|temp~19_combout\ & (\myBCD_Conv|temp~20_combout\ $ ((\myBCD_Conv|temp~24_combout\)))) # (!\myBCD_Conv|temp~19_combout\ & (\myBCD_Conv|temp~20_combout\ & ((!\myBCD_Conv|temp~11_combout\) # 
-- (!\myBCD_Conv|temp~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~19_combout\,
	datab => \myBCD_Conv|temp~20_combout\,
	datac => \myBCD_Conv|temp~24_combout\,
	datad => \myBCD_Conv|temp~11_combout\,
	combout => \myBCD_Conv|temp~25_combout\);

-- Location: LCCOMB_X31_Y35_N4
\myBCD_Conv|temp~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~32_combout\ = \myBCD_Conv|temp~27_combout\ $ ((((!\myBCD_Conv|temp~26_combout\ & \myBCD_Conv|temp~31_combout\)) # (!\myBCD_Conv|temp~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~27_combout\,
	datab => \myBCD_Conv|temp~26_combout\,
	datac => \myBCD_Conv|temp~31_combout\,
	datad => \myBCD_Conv|temp~25_combout\,
	combout => \myBCD_Conv|temp~32_combout\);

-- Location: LCCOMB_X32_Y35_N12
\myBCD_Conv|temp~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~34_combout\ = \myBCD_Conv|temp~19_combout\ $ ((((!\myBCD_Conv|temp~20_combout\ & \myBCD_Conv|temp~24_combout\)) # (!\myBCD_Conv|temp~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~19_combout\,
	datab => \myBCD_Conv|temp~20_combout\,
	datac => \myBCD_Conv|temp~24_combout\,
	datad => \myBCD_Conv|temp~11_combout\,
	combout => \myBCD_Conv|temp~34_combout\);

-- Location: LCCOMB_X32_Y35_N24
\myBCD_Conv|milhar[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|milhar[2]~31_combout\ = (\myBCD_Conv|temp~33_combout\ & ((\myBCD_Conv|temp~35_combout\ & ((!\myBCD_Conv|temp~34_combout\) # (!\myBCD_Conv|temp~32_combout\))) # (!\myBCD_Conv|temp~35_combout\ & (!\myBCD_Conv|temp~32_combout\ & 
-- !\myBCD_Conv|temp~34_combout\)))) # (!\myBCD_Conv|temp~33_combout\ & (!\myBCD_Conv|temp~35_combout\ & ((\myBCD_Conv|temp~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~33_combout\,
	datab => \myBCD_Conv|temp~35_combout\,
	datac => \myBCD_Conv|temp~32_combout\,
	datad => \myBCD_Conv|temp~34_combout\,
	combout => \myBCD_Conv|milhar[2]~31_combout\);

-- Location: LCCOMB_X35_Y33_N30
\myBCD_Conv|milhar[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|milhar[3]~3_combout\ = (\Troco|Reg\(8) & (\Troco|Reg\(12) & ((\Troco|Reg\(7)) # (\Troco|Reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(8),
	datab => \Troco|Reg\(7),
	datac => \Troco|Reg\(12),
	datad => \Troco|Reg\(6),
	combout => \myBCD_Conv|milhar[3]~3_combout\);

-- Location: LCCOMB_X35_Y35_N26
\myBCD_Conv|milhar[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|milhar[1]~34_combout\ = (\Troco|Reg\(10) & (\Troco|Reg\(11) & (\myBCD_Conv|milhar[3]~3_combout\ & \Troco|Reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(10),
	datab => \Troco|Reg\(11),
	datac => \myBCD_Conv|milhar[3]~3_combout\,
	datad => \Troco|Reg\(9),
	combout => \myBCD_Conv|milhar[1]~34_combout\);

-- Location: LCCOMB_X31_Y35_N30
\myBCD_Conv|temp~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~41_combout\ = (\myBCD_Conv|temp~25_combout\ & (((!\myBCD_Conv|temp~26_combout\ & \myBCD_Conv|temp~31_combout\)))) # (!\myBCD_Conv|temp~25_combout\ & (\myBCD_Conv|temp~27_combout\ & ((\myBCD_Conv|temp~26_combout\) # 
-- (!\myBCD_Conv|temp~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~27_combout\,
	datab => \myBCD_Conv|temp~26_combout\,
	datac => \myBCD_Conv|temp~31_combout\,
	datad => \myBCD_Conv|temp~25_combout\,
	combout => \myBCD_Conv|temp~41_combout\);

-- Location: LCCOMB_X31_Y35_N14
\myBCD_Conv|temp~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~39_combout\ = (\myBCD_Conv|temp~27_combout\ & (\myBCD_Conv|temp~26_combout\ $ ((\myBCD_Conv|temp~31_combout\)))) # (!\myBCD_Conv|temp~27_combout\ & (\myBCD_Conv|temp~26_combout\ & ((!\myBCD_Conv|temp~25_combout\) # 
-- (!\myBCD_Conv|temp~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~27_combout\,
	datab => \myBCD_Conv|temp~26_combout\,
	datac => \myBCD_Conv|temp~31_combout\,
	datad => \myBCD_Conv|temp~25_combout\,
	combout => \myBCD_Conv|temp~39_combout\);

-- Location: LCCOMB_X34_Y35_N28
\myBCD_Conv|temp~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~43_combout\ = (\myBCD_Conv|temp~28_combout\ & (\myBCD_Conv|temp~30_combout\ & (!\Troco|Reg\(5)))) # (!\myBCD_Conv|temp~28_combout\ & (\myBCD_Conv|temp~29_combout\ & ((\Troco|Reg\(5)) # (!\myBCD_Conv|temp~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~30_combout\,
	datab => \myBCD_Conv|temp~28_combout\,
	datac => \Troco|Reg\(5),
	datad => \myBCD_Conv|temp~29_combout\,
	combout => \myBCD_Conv|temp~43_combout\);

-- Location: LCCOMB_X34_Y35_N26
\myBCD_Conv|temp~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~44_combout\ = (\myBCD_Conv|temp~28_combout\ & ((\Troco|Reg\(5)) # ((\myBCD_Conv|temp~30_combout\ & !\myBCD_Conv|temp~29_combout\)))) # (!\myBCD_Conv|temp~28_combout\ & ((\Troco|Reg\(5) $ (!\myBCD_Conv|temp~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~30_combout\,
	datab => \myBCD_Conv|temp~28_combout\,
	datac => \Troco|Reg\(5),
	datad => \myBCD_Conv|temp~29_combout\,
	combout => \myBCD_Conv|temp~44_combout\);

-- Location: LCCOMB_X31_Y35_N0
\myBCD_Conv|temp~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~45_combout\ = \myBCD_Conv|temp~43_combout\ $ ((((\myBCD_Conv|temp~44_combout\ & !\Troco|Reg\(4))) # (!\myBCD_Conv|temp~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~42_combout\,
	datab => \myBCD_Conv|temp~43_combout\,
	datac => \myBCD_Conv|temp~44_combout\,
	datad => \Troco|Reg\(4),
	combout => \myBCD_Conv|temp~45_combout\);

-- Location: LCCOMB_X31_Y35_N26
\myBCD_Conv|temp~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~46_combout\ = \myBCD_Conv|temp~41_combout\ $ ((((!\myBCD_Conv|temp~40_combout\ & \myBCD_Conv|temp~45_combout\)) # (!\myBCD_Conv|temp~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~40_combout\,
	datab => \myBCD_Conv|temp~41_combout\,
	datac => \myBCD_Conv|temp~39_combout\,
	datad => \myBCD_Conv|temp~45_combout\,
	combout => \myBCD_Conv|temp~46_combout\);

-- Location: LCCOMB_X32_Y35_N20
\myBCD_Conv|temp~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~38_combout\ = (\myBCD_Conv|temp~33_combout\ & ((\myBCD_Conv|temp~35_combout\ & (\myBCD_Conv|temp~32_combout\ & !\myBCD_Conv|temp~34_combout\)) # (!\myBCD_Conv|temp~35_combout\ & (!\myBCD_Conv|temp~32_combout\ & 
-- \myBCD_Conv|temp~34_combout\)))) # (!\myBCD_Conv|temp~33_combout\ & (\myBCD_Conv|temp~32_combout\ $ (((\myBCD_Conv|temp~35_combout\) # (!\myBCD_Conv|temp~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~33_combout\,
	datab => \myBCD_Conv|temp~35_combout\,
	datac => \myBCD_Conv|temp~32_combout\,
	datad => \myBCD_Conv|temp~34_combout\,
	combout => \myBCD_Conv|temp~38_combout\);

-- Location: LCCOMB_X32_Y35_N0
\myBCD_Conv|temp~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~36_combout\ = (\myBCD_Conv|temp~33_combout\ & (\myBCD_Conv|temp~32_combout\ & (\myBCD_Conv|temp~35_combout\ $ (!\myBCD_Conv|temp~34_combout\)))) # (!\myBCD_Conv|temp~33_combout\ & (!\myBCD_Conv|temp~35_combout\ & 
-- (!\myBCD_Conv|temp~32_combout\ & \myBCD_Conv|temp~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~33_combout\,
	datab => \myBCD_Conv|temp~35_combout\,
	datac => \myBCD_Conv|temp~32_combout\,
	datad => \myBCD_Conv|temp~34_combout\,
	combout => \myBCD_Conv|temp~36_combout\);

-- Location: LCCOMB_X32_Y35_N22
\myBCD_Conv|temp~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~58_combout\ = \myBCD_Conv|temp~36_combout\ $ ((((\myBCD_Conv|temp~46_combout\ & !\myBCD_Conv|temp~38_combout\)) # (!\myBCD_Conv|temp~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~37_combout\,
	datab => \myBCD_Conv|temp~46_combout\,
	datac => \myBCD_Conv|temp~38_combout\,
	datad => \myBCD_Conv|temp~36_combout\,
	combout => \myBCD_Conv|temp~58_combout\);

-- Location: LCCOMB_X47_Y35_N12
\myBCD_Conv|milhar[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|milhar[1]~32_combout\ = (\myBCD_Conv|milhar[1]~34_combout\ & ((!\myBCD_Conv|temp~58_combout\) # (!\myBCD_Conv|milhar[2]~31_combout\))) # (!\myBCD_Conv|milhar[1]~34_combout\ & ((\myBCD_Conv|temp~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myBCD_Conv|milhar[2]~31_combout\,
	datac => \myBCD_Conv|milhar[1]~34_combout\,
	datad => \myBCD_Conv|temp~58_combout\,
	combout => \myBCD_Conv|milhar[1]~32_combout\);

-- Location: LCCOMB_X32_Y35_N6
\myBCD_Conv|temp~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~37_combout\ = (\myBCD_Conv|temp~35_combout\ & (!\myBCD_Conv|temp~34_combout\ & ((!\myBCD_Conv|temp~32_combout\) # (!\myBCD_Conv|temp~33_combout\)))) # (!\myBCD_Conv|temp~35_combout\ & (\myBCD_Conv|temp~34_combout\ & 
-- ((\myBCD_Conv|temp~33_combout\) # (\myBCD_Conv|temp~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~33_combout\,
	datab => \myBCD_Conv|temp~35_combout\,
	datac => \myBCD_Conv|temp~32_combout\,
	datad => \myBCD_Conv|temp~34_combout\,
	combout => \myBCD_Conv|temp~37_combout\);

-- Location: LCCOMB_X28_Y35_N22
\myBCD_Conv|temp~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~48_combout\ = (\myBCD_Conv|temp~36_combout\ & (((\myBCD_Conv|temp~46_combout\)))) # (!\myBCD_Conv|temp~36_combout\ & ((\myBCD_Conv|temp~46_combout\ & (\myBCD_Conv|temp~38_combout\ & \myBCD_Conv|temp~37_combout\)) # 
-- (!\myBCD_Conv|temp~46_combout\ & ((!\myBCD_Conv|temp~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~38_combout\,
	datab => \myBCD_Conv|temp~36_combout\,
	datac => \myBCD_Conv|temp~46_combout\,
	datad => \myBCD_Conv|temp~37_combout\,
	combout => \myBCD_Conv|temp~48_combout\);

-- Location: LCCOMB_X31_Y35_N16
\myBCD_Conv|temp~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~52_combout\ = (\myBCD_Conv|temp~39_combout\ & (!\myBCD_Conv|temp~40_combout\ & ((\myBCD_Conv|temp~45_combout\)))) # (!\myBCD_Conv|temp~39_combout\ & (\myBCD_Conv|temp~41_combout\ & ((\myBCD_Conv|temp~40_combout\) # 
-- (!\myBCD_Conv|temp~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~40_combout\,
	datab => \myBCD_Conv|temp~41_combout\,
	datac => \myBCD_Conv|temp~39_combout\,
	datad => \myBCD_Conv|temp~45_combout\,
	combout => \myBCD_Conv|temp~52_combout\);

-- Location: LCCOMB_X31_Y35_N2
\myBCD_Conv|temp~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~53_combout\ = (\myBCD_Conv|temp~43_combout\ & ((\myBCD_Conv|temp~44_combout\ $ (\Troco|Reg\(4))))) # (!\myBCD_Conv|temp~43_combout\ & (!\myBCD_Conv|temp~44_combout\ & ((\Troco|Reg\(4)) # (!\myBCD_Conv|temp~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~42_combout\,
	datab => \myBCD_Conv|temp~43_combout\,
	datac => \myBCD_Conv|temp~44_combout\,
	datad => \Troco|Reg\(4),
	combout => \myBCD_Conv|temp~53_combout\);

-- Location: LCCOMB_X31_Y35_N24
\myBCD_Conv|temp~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~54_combout\ = (\myBCD_Conv|temp~42_combout\ & (((\myBCD_Conv|temp~44_combout\ & !\Troco|Reg\(4))))) # (!\myBCD_Conv|temp~42_combout\ & (\myBCD_Conv|temp~43_combout\ & ((\Troco|Reg\(4)) # (!\myBCD_Conv|temp~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~42_combout\,
	datab => \myBCD_Conv|temp~43_combout\,
	datac => \myBCD_Conv|temp~44_combout\,
	datad => \Troco|Reg\(4),
	combout => \myBCD_Conv|temp~54_combout\);

-- Location: LCCOMB_X31_Y35_N28
\myBCD_Conv|temp~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~56_combout\ = \myBCD_Conv|temp~54_combout\ $ ((((\myBCD_Conv|temp~55_combout\ & !\Troco|Reg\(3))) # (!\myBCD_Conv|temp~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~55_combout\,
	datab => \myBCD_Conv|temp~53_combout\,
	datac => \myBCD_Conv|temp~54_combout\,
	datad => \Troco|Reg\(3),
	combout => \myBCD_Conv|temp~56_combout\);

-- Location: LCCOMB_X31_Y35_N8
\myBCD_Conv|temp~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~50_combout\ = (\myBCD_Conv|temp~40_combout\ & (((!\myBCD_Conv|temp~41_combout\ & !\myBCD_Conv|temp~39_combout\)) # (!\myBCD_Conv|temp~45_combout\))) # (!\myBCD_Conv|temp~40_combout\ & (\myBCD_Conv|temp~41_combout\ & 
-- ((\myBCD_Conv|temp~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~40_combout\,
	datab => \myBCD_Conv|temp~41_combout\,
	datac => \myBCD_Conv|temp~39_combout\,
	datad => \myBCD_Conv|temp~45_combout\,
	combout => \myBCD_Conv|temp~50_combout\);

-- Location: LCCOMB_X24_Y35_N28
\myBCD_Conv|temp~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~57_combout\ = \myBCD_Conv|temp~52_combout\ $ ((((!\myBCD_Conv|temp~51_combout\ & \myBCD_Conv|temp~56_combout\)) # (!\myBCD_Conv|temp~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~51_combout\,
	datab => \myBCD_Conv|temp~52_combout\,
	datac => \myBCD_Conv|temp~56_combout\,
	datad => \myBCD_Conv|temp~50_combout\,
	combout => \myBCD_Conv|temp~57_combout\);

-- Location: LCCOMB_X28_Y35_N12
\myBCD_Conv|temp~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~47_combout\ = (\myBCD_Conv|temp~38_combout\ & (((!\myBCD_Conv|temp~36_combout\ & !\myBCD_Conv|temp~37_combout\)) # (!\myBCD_Conv|temp~46_combout\))) # (!\myBCD_Conv|temp~38_combout\ & (\myBCD_Conv|temp~36_combout\ & 
-- (\myBCD_Conv|temp~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~38_combout\,
	datab => \myBCD_Conv|temp~36_combout\,
	datac => \myBCD_Conv|temp~46_combout\,
	datad => \myBCD_Conv|temp~37_combout\,
	combout => \myBCD_Conv|temp~47_combout\);

-- Location: LCCOMB_X28_Y35_N30
\myBCD_Conv|milhar[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|milhar[0]~30_combout\ = \myBCD_Conv|temp~49_combout\ $ ((((!\myBCD_Conv|temp~48_combout\ & \myBCD_Conv|temp~57_combout\)) # (!\myBCD_Conv|temp~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~49_combout\,
	datab => \myBCD_Conv|temp~48_combout\,
	datac => \myBCD_Conv|temp~57_combout\,
	datad => \myBCD_Conv|temp~47_combout\,
	combout => \myBCD_Conv|milhar[0]~30_combout\);

-- Location: LCCOMB_X47_Y35_N18
\myBCD_Conv|milhar[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|milhar[2]~33_combout\ = (\myBCD_Conv|milhar[2]~31_combout\ & ((!\myBCD_Conv|temp~58_combout\) # (!\myBCD_Conv|milhar[1]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myBCD_Conv|milhar[2]~31_combout\,
	datac => \myBCD_Conv|milhar[1]~34_combout\,
	datad => \myBCD_Conv|temp~58_combout\,
	combout => \myBCD_Conv|milhar[2]~33_combout\);

-- Location: LCCOMB_X47_Y35_N0
\myBCD_M|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_M|Mux6~0_combout\ = (\myBCD_Conv|milhar[1]~32_combout\ & (!\myBCD_Conv|milhar[1]~34_combout\ & (\myBCD_Conv|milhar[0]~30_combout\ $ (!\myBCD_Conv|milhar[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|milhar[1]~32_combout\,
	datab => \myBCD_Conv|milhar[1]~34_combout\,
	datac => \myBCD_Conv|milhar[0]~30_combout\,
	datad => \myBCD_Conv|milhar[2]~33_combout\,
	combout => \myBCD_M|Mux6~0_combout\);

-- Location: LCCOMB_X47_Y35_N26
\myBCD_M|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_M|Mux5~0_combout\ = (\myBCD_Conv|milhar[2]~33_combout\ & (\myBCD_Conv|milhar[1]~32_combout\ $ (\myBCD_Conv|milhar[0]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|milhar[1]~32_combout\,
	datac => \myBCD_Conv|milhar[0]~30_combout\,
	datad => \myBCD_Conv|milhar[2]~33_combout\,
	combout => \myBCD_M|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y35_N16
\myBCD_M|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_M|Mux4~0_combout\ = (!\myBCD_Conv|milhar[1]~32_combout\ & (!\myBCD_Conv|milhar[1]~34_combout\ & (\myBCD_Conv|milhar[0]~30_combout\ & !\myBCD_Conv|milhar[2]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|milhar[1]~32_combout\,
	datab => \myBCD_Conv|milhar[1]~34_combout\,
	datac => \myBCD_Conv|milhar[0]~30_combout\,
	datad => \myBCD_Conv|milhar[2]~33_combout\,
	combout => \myBCD_M|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y35_N10
\myBCD_M|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_M|Mux3~0_combout\ = (!\myBCD_Conv|milhar[1]~34_combout\ & ((\myBCD_Conv|milhar[1]~32_combout\ & (\myBCD_Conv|milhar[0]~30_combout\ $ (!\myBCD_Conv|milhar[2]~33_combout\))) # (!\myBCD_Conv|milhar[1]~32_combout\ & (!\myBCD_Conv|milhar[0]~30_combout\ 
-- & \myBCD_Conv|milhar[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|milhar[1]~32_combout\,
	datab => \myBCD_Conv|milhar[1]~34_combout\,
	datac => \myBCD_Conv|milhar[0]~30_combout\,
	datad => \myBCD_Conv|milhar[2]~33_combout\,
	combout => \myBCD_M|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y35_N8
\myBCD_M|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_M|Mux2~0_combout\ = ((\myBCD_Conv|milhar[1]~32_combout\ & \myBCD_Conv|milhar[2]~33_combout\)) # (!\myBCD_Conv|milhar[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|milhar[1]~32_combout\,
	datac => \myBCD_Conv|milhar[0]~30_combout\,
	datad => \myBCD_Conv|milhar[2]~33_combout\,
	combout => \myBCD_M|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y35_N2
\myBCD_M|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_M|Mux1~0_combout\ = (!\myBCD_Conv|milhar[1]~34_combout\ & ((\myBCD_Conv|milhar[1]~32_combout\ & (!\myBCD_Conv|milhar[0]~30_combout\ & !\myBCD_Conv|milhar[2]~33_combout\)) # (!\myBCD_Conv|milhar[1]~32_combout\ & ((!\myBCD_Conv|milhar[2]~33_combout\) 
-- # (!\myBCD_Conv|milhar[0]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|milhar[1]~32_combout\,
	datab => \myBCD_Conv|milhar[1]~34_combout\,
	datac => \myBCD_Conv|milhar[0]~30_combout\,
	datad => \myBCD_Conv|milhar[2]~33_combout\,
	combout => \myBCD_M|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y35_N20
\myBCD_M|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_M|Mux0~0_combout\ = (\myBCD_Conv|milhar[1]~34_combout\) # ((\myBCD_Conv|milhar[1]~32_combout\ & ((\myBCD_Conv|milhar[2]~33_combout\))) # (!\myBCD_Conv|milhar[1]~32_combout\ & ((\myBCD_Conv|milhar[0]~30_combout\) # 
-- (!\myBCD_Conv|milhar[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|milhar[1]~32_combout\,
	datab => \myBCD_Conv|milhar[1]~34_combout\,
	datac => \myBCD_Conv|milhar[0]~30_combout\,
	datad => \myBCD_Conv|milhar[2]~33_combout\,
	combout => \myBCD_M|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y35_N10
\myBCD_Conv|centena[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|centena[2]~2_combout\ = (\myBCD_Conv|temp~49_combout\ & (\myBCD_Conv|temp~48_combout\ $ ((\myBCD_Conv|temp~57_combout\)))) # (!\myBCD_Conv|temp~49_combout\ & (\myBCD_Conv|temp~48_combout\ & ((!\myBCD_Conv|temp~47_combout\) # 
-- (!\myBCD_Conv|temp~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~49_combout\,
	datab => \myBCD_Conv|temp~48_combout\,
	datac => \myBCD_Conv|temp~57_combout\,
	datad => \myBCD_Conv|temp~47_combout\,
	combout => \myBCD_Conv|centena[2]~2_combout\);

-- Location: LCCOMB_X28_Y35_N8
\myBCD_Conv|centena[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|centena[1]~1_combout\ = (\myBCD_Conv|temp~49_combout\ & (((\myBCD_Conv|temp~57_combout\)))) # (!\myBCD_Conv|temp~49_combout\ & ((\myBCD_Conv|temp~57_combout\ & (\myBCD_Conv|temp~48_combout\ & \myBCD_Conv|temp~47_combout\)) # 
-- (!\myBCD_Conv|temp~57_combout\ & ((!\myBCD_Conv|temp~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~49_combout\,
	datab => \myBCD_Conv|temp~48_combout\,
	datac => \myBCD_Conv|temp~57_combout\,
	datad => \myBCD_Conv|temp~47_combout\,
	combout => \myBCD_Conv|centena[1]~1_combout\);

-- Location: LCCOMB_X31_Y35_N10
\myBCD_Conv|temp~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~64_combout\ = (\myBCD_Conv|temp~53_combout\ & ((\Troco|Reg\(3)) # ((\myBCD_Conv|temp~55_combout\ & !\myBCD_Conv|temp~54_combout\)))) # (!\myBCD_Conv|temp~53_combout\ & ((\myBCD_Conv|temp~54_combout\ $ (!\Troco|Reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~55_combout\,
	datab => \myBCD_Conv|temp~53_combout\,
	datac => \myBCD_Conv|temp~54_combout\,
	datad => \Troco|Reg\(3),
	combout => \myBCD_Conv|temp~64_combout\);

-- Location: LCCOMB_X31_Y35_N22
\myBCD_Conv|temp~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~62_combout\ = (\myBCD_Conv|temp~55_combout\ & (((\myBCD_Conv|temp~54_combout\ & !\Troco|Reg\(3))))) # (!\myBCD_Conv|temp~55_combout\ & ((\Troco|Reg\(3)) # ((!\myBCD_Conv|temp~53_combout\ & !\myBCD_Conv|temp~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~55_combout\,
	datab => \myBCD_Conv|temp~53_combout\,
	datac => \myBCD_Conv|temp~54_combout\,
	datad => \Troco|Reg\(3),
	combout => \myBCD_Conv|temp~62_combout\);

-- Location: LCCOMB_X23_Y35_N16
\myBCD_Conv|temp~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~65_combout\ = \myBCD_Conv|temp~63_combout\ $ ((((\myBCD_Conv|temp~64_combout\ & !\Troco|Reg\(2))) # (!\myBCD_Conv|temp~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~63_combout\,
	datab => \myBCD_Conv|temp~64_combout\,
	datac => \myBCD_Conv|temp~62_combout\,
	datad => \Troco|Reg\(2),
	combout => \myBCD_Conv|temp~65_combout\);

-- Location: LCCOMB_X24_Y35_N14
\myBCD_Conv|temp~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~59_combout\ = (\myBCD_Conv|temp~51_combout\ & (((!\myBCD_Conv|temp~52_combout\ & !\myBCD_Conv|temp~50_combout\)) # (!\myBCD_Conv|temp~56_combout\))) # (!\myBCD_Conv|temp~51_combout\ & (\myBCD_Conv|temp~52_combout\ & 
-- (\myBCD_Conv|temp~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~51_combout\,
	datab => \myBCD_Conv|temp~52_combout\,
	datac => \myBCD_Conv|temp~56_combout\,
	datad => \myBCD_Conv|temp~50_combout\,
	combout => \myBCD_Conv|temp~59_combout\);

-- Location: LCCOMB_X24_Y35_N6
\myBCD_Conv|temp~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~61_combout\ = (\myBCD_Conv|temp~50_combout\ & (!\myBCD_Conv|temp~51_combout\ & ((\myBCD_Conv|temp~56_combout\)))) # (!\myBCD_Conv|temp~50_combout\ & (\myBCD_Conv|temp~52_combout\ & ((\myBCD_Conv|temp~51_combout\) # 
-- (!\myBCD_Conv|temp~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~51_combout\,
	datab => \myBCD_Conv|temp~52_combout\,
	datac => \myBCD_Conv|temp~56_combout\,
	datad => \myBCD_Conv|temp~50_combout\,
	combout => \myBCD_Conv|temp~61_combout\);

-- Location: LCCOMB_X24_Y35_N4
\myBCD_Conv|centena[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|centena[0]~0_combout\ = \myBCD_Conv|temp~61_combout\ $ ((((!\myBCD_Conv|temp~60_combout\ & \myBCD_Conv|temp~65_combout\)) # (!\myBCD_Conv|temp~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~60_combout\,
	datab => \myBCD_Conv|temp~65_combout\,
	datac => \myBCD_Conv|temp~59_combout\,
	datad => \myBCD_Conv|temp~61_combout\,
	combout => \myBCD_Conv|centena[0]~0_combout\);

-- Location: LCCOMB_X28_Y35_N28
\myBCD_Conv|centena[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|centena[3]~3_combout\ = (\myBCD_Conv|temp~47_combout\ & (((!\myBCD_Conv|temp~48_combout\ & \myBCD_Conv|temp~57_combout\)))) # (!\myBCD_Conv|temp~47_combout\ & (\myBCD_Conv|temp~49_combout\ & ((\myBCD_Conv|temp~48_combout\) # 
-- (!\myBCD_Conv|temp~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~49_combout\,
	datab => \myBCD_Conv|temp~48_combout\,
	datac => \myBCD_Conv|temp~57_combout\,
	datad => \myBCD_Conv|temp~47_combout\,
	combout => \myBCD_Conv|centena[3]~3_combout\);

-- Location: LCCOMB_X28_Y35_N26
\myBCD_C|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_C|Mux6~0_combout\ = (!\myBCD_Conv|centena[1]~1_combout\ & (!\myBCD_Conv|centena[3]~3_combout\ & (\myBCD_Conv|centena[2]~2_combout\ $ (!\myBCD_Conv|centena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|centena[2]~2_combout\,
	datab => \myBCD_Conv|centena[1]~1_combout\,
	datac => \myBCD_Conv|centena[0]~0_combout\,
	datad => \myBCD_Conv|centena[3]~3_combout\,
	combout => \myBCD_C|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y35_N0
\myBCD_C|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_C|Mux5~0_combout\ = (\myBCD_Conv|centena[2]~2_combout\ & (!\myBCD_Conv|centena[3]~3_combout\ & (\myBCD_Conv|centena[1]~1_combout\ $ (!\myBCD_Conv|centena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|centena[2]~2_combout\,
	datab => \myBCD_Conv|centena[1]~1_combout\,
	datac => \myBCD_Conv|centena[0]~0_combout\,
	datad => \myBCD_Conv|centena[3]~3_combout\,
	combout => \myBCD_C|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y35_N14
\myBCD_C|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_C|Mux4~0_combout\ = (!\myBCD_Conv|centena[2]~2_combout\ & (\myBCD_Conv|centena[1]~1_combout\ & (\myBCD_Conv|centena[0]~0_combout\ & !\myBCD_Conv|centena[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|centena[2]~2_combout\,
	datab => \myBCD_Conv|centena[1]~1_combout\,
	datac => \myBCD_Conv|centena[0]~0_combout\,
	datad => \myBCD_Conv|centena[3]~3_combout\,
	combout => \myBCD_C|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y35_N20
\myBCD_C|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_C|Mux3~0_combout\ = (!\myBCD_Conv|centena[3]~3_combout\ & ((\myBCD_Conv|centena[2]~2_combout\ & (\myBCD_Conv|centena[1]~1_combout\ $ (\myBCD_Conv|centena[0]~0_combout\))) # (!\myBCD_Conv|centena[2]~2_combout\ & (!\myBCD_Conv|centena[1]~1_combout\ & 
-- !\myBCD_Conv|centena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|centena[2]~2_combout\,
	datab => \myBCD_Conv|centena[1]~1_combout\,
	datac => \myBCD_Conv|centena[0]~0_combout\,
	datad => \myBCD_Conv|centena[3]~3_combout\,
	combout => \myBCD_C|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y35_N2
\myBCD_C|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_C|Mux2~0_combout\ = (\myBCD_Conv|centena[1]~1_combout\ & (((!\myBCD_Conv|centena[0]~0_combout\ & !\myBCD_Conv|centena[3]~3_combout\)))) # (!\myBCD_Conv|centena[1]~1_combout\ & ((\myBCD_Conv|centena[2]~2_combout\ & 
-- ((!\myBCD_Conv|centena[3]~3_combout\))) # (!\myBCD_Conv|centena[2]~2_combout\ & (!\myBCD_Conv|centena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|centena[2]~2_combout\,
	datab => \myBCD_Conv|centena[1]~1_combout\,
	datac => \myBCD_Conv|centena[0]~0_combout\,
	datad => \myBCD_Conv|centena[3]~3_combout\,
	combout => \myBCD_C|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y35_N16
\myBCD_C|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_C|Mux1~0_combout\ = (\myBCD_Conv|centena[3]~3_combout\) # ((\myBCD_Conv|centena[2]~2_combout\ & ((\myBCD_Conv|centena[0]~0_combout\) # (!\myBCD_Conv|centena[1]~1_combout\))) # (!\myBCD_Conv|centena[2]~2_combout\ & 
-- (!\myBCD_Conv|centena[1]~1_combout\ & \myBCD_Conv|centena[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|centena[2]~2_combout\,
	datab => \myBCD_Conv|centena[1]~1_combout\,
	datac => \myBCD_Conv|centena[0]~0_combout\,
	datad => \myBCD_Conv|centena[3]~3_combout\,
	combout => \myBCD_C|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y35_N18
\myBCD_C|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_C|Mux0~0_combout\ = (!\myBCD_Conv|centena[3]~3_combout\ & ((\myBCD_Conv|centena[2]~2_combout\ & (\myBCD_Conv|centena[1]~1_combout\ & !\myBCD_Conv|centena[0]~0_combout\)) # (!\myBCD_Conv|centena[2]~2_combout\ & 
-- (!\myBCD_Conv|centena[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|centena[2]~2_combout\,
	datab => \myBCD_Conv|centena[1]~1_combout\,
	datac => \myBCD_Conv|centena[0]~0_combout\,
	datad => \myBCD_Conv|centena[3]~3_combout\,
	combout => \myBCD_C|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y35_N12
\myBCD_Conv|dezena[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|dezena[2]~2_combout\ = (\myBCD_Conv|temp~60_combout\ & (((!\myBCD_Conv|temp~59_combout\ & !\myBCD_Conv|temp~61_combout\)) # (!\myBCD_Conv|temp~65_combout\))) # (!\myBCD_Conv|temp~60_combout\ & (\myBCD_Conv|temp~65_combout\ & 
-- ((\myBCD_Conv|temp~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~60_combout\,
	datab => \myBCD_Conv|temp~65_combout\,
	datac => \myBCD_Conv|temp~59_combout\,
	datad => \myBCD_Conv|temp~61_combout\,
	combout => \myBCD_Conv|dezena[2]~2_combout\);

-- Location: LCCOMB_X24_Y35_N2
\myBCD_Conv|dezena[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|dezena[1]~1_combout\ = (\myBCD_Conv|temp~65_combout\ & ((\myBCD_Conv|temp~61_combout\) # ((\myBCD_Conv|temp~60_combout\ & \myBCD_Conv|temp~59_combout\)))) # (!\myBCD_Conv|temp~65_combout\ & (((!\myBCD_Conv|temp~59_combout\ & 
-- !\myBCD_Conv|temp~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~60_combout\,
	datab => \myBCD_Conv|temp~65_combout\,
	datac => \myBCD_Conv|temp~59_combout\,
	datad => \myBCD_Conv|temp~61_combout\,
	combout => \myBCD_Conv|dezena[1]~1_combout\);

-- Location: LCCOMB_X23_Y35_N2
\myBCD_Conv|temp~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~68_combout\ = (\myBCD_Conv|temp~63_combout\ & (((\Troco|Reg\(2))))) # (!\myBCD_Conv|temp~63_combout\ & ((\myBCD_Conv|temp~62_combout\ & ((\myBCD_Conv|temp~64_combout\) # (\Troco|Reg\(2)))) # (!\myBCD_Conv|temp~62_combout\ & 
-- ((!\Troco|Reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~63_combout\,
	datab => \myBCD_Conv|temp~64_combout\,
	datac => \myBCD_Conv|temp~62_combout\,
	datad => \Troco|Reg\(2),
	combout => \myBCD_Conv|temp~68_combout\);

-- Location: LCCOMB_X23_Y35_N28
\myBCD_Conv|temp~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|temp~67_combout\ = (\myBCD_Conv|temp~62_combout\ & (((\myBCD_Conv|temp~64_combout\ & !\Troco|Reg\(2))))) # (!\myBCD_Conv|temp~62_combout\ & (\myBCD_Conv|temp~63_combout\ & ((\Troco|Reg\(2)) # (!\myBCD_Conv|temp~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~63_combout\,
	datab => \myBCD_Conv|temp~64_combout\,
	datac => \myBCD_Conv|temp~62_combout\,
	datad => \Troco|Reg\(2),
	combout => \myBCD_Conv|temp~67_combout\);

-- Location: LCCOMB_X23_Y35_N20
\myBCD_Conv|dezena[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|dezena[0]~0_combout\ = \myBCD_Conv|temp~67_combout\ $ ((((\myBCD_Conv|temp~68_combout\ & !\Troco|Reg\(1))) # (!\myBCD_Conv|temp~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~66_combout\,
	datab => \myBCD_Conv|temp~68_combout\,
	datac => \Troco|Reg\(1),
	datad => \myBCD_Conv|temp~67_combout\,
	combout => \myBCD_Conv|dezena[0]~0_combout\);

-- Location: LCCOMB_X24_Y35_N18
\myBCD_Conv|dezena[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|dezena[3]~3_combout\ = (\myBCD_Conv|temp~59_combout\ & (!\myBCD_Conv|temp~60_combout\ & (\myBCD_Conv|temp~65_combout\))) # (!\myBCD_Conv|temp~59_combout\ & (\myBCD_Conv|temp~61_combout\ & ((\myBCD_Conv|temp~60_combout\) # 
-- (!\myBCD_Conv|temp~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~60_combout\,
	datab => \myBCD_Conv|temp~65_combout\,
	datac => \myBCD_Conv|temp~59_combout\,
	datad => \myBCD_Conv|temp~61_combout\,
	combout => \myBCD_Conv|dezena[3]~3_combout\);

-- Location: LCCOMB_X24_Y35_N16
\myBCD_D|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_D|Mux6~0_combout\ = (!\myBCD_Conv|dezena[1]~1_combout\ & (!\myBCD_Conv|dezena[3]~3_combout\ & (\myBCD_Conv|dezena[2]~2_combout\ $ (!\myBCD_Conv|dezena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|dezena[2]~2_combout\,
	datab => \myBCD_Conv|dezena[1]~1_combout\,
	datac => \myBCD_Conv|dezena[0]~0_combout\,
	datad => \myBCD_Conv|dezena[3]~3_combout\,
	combout => \myBCD_D|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y35_N10
\myBCD_D|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_D|Mux5~0_combout\ = (\myBCD_Conv|dezena[2]~2_combout\ & (!\myBCD_Conv|dezena[3]~3_combout\ & (\myBCD_Conv|dezena[1]~1_combout\ $ (!\myBCD_Conv|dezena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|dezena[2]~2_combout\,
	datab => \myBCD_Conv|dezena[1]~1_combout\,
	datac => \myBCD_Conv|dezena[0]~0_combout\,
	datad => \myBCD_Conv|dezena[3]~3_combout\,
	combout => \myBCD_D|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y35_N0
\myBCD_D|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_D|Mux4~0_combout\ = (!\myBCD_Conv|dezena[2]~2_combout\ & (\myBCD_Conv|dezena[1]~1_combout\ & (\myBCD_Conv|dezena[0]~0_combout\ & !\myBCD_Conv|dezena[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|dezena[2]~2_combout\,
	datab => \myBCD_Conv|dezena[1]~1_combout\,
	datac => \myBCD_Conv|dezena[0]~0_combout\,
	datad => \myBCD_Conv|dezena[3]~3_combout\,
	combout => \myBCD_D|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y35_N26
\myBCD_D|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_D|Mux3~0_combout\ = (!\myBCD_Conv|dezena[3]~3_combout\ & ((\myBCD_Conv|dezena[2]~2_combout\ & (\myBCD_Conv|dezena[1]~1_combout\ $ (\myBCD_Conv|dezena[0]~0_combout\))) # (!\myBCD_Conv|dezena[2]~2_combout\ & (!\myBCD_Conv|dezena[1]~1_combout\ & 
-- !\myBCD_Conv|dezena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|dezena[2]~2_combout\,
	datab => \myBCD_Conv|dezena[1]~1_combout\,
	datac => \myBCD_Conv|dezena[0]~0_combout\,
	datad => \myBCD_Conv|dezena[3]~3_combout\,
	combout => \myBCD_D|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y35_N8
\myBCD_D|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_D|Mux2~0_combout\ = (\myBCD_Conv|dezena[1]~1_combout\ & (((!\myBCD_Conv|dezena[0]~0_combout\ & !\myBCD_Conv|dezena[3]~3_combout\)))) # (!\myBCD_Conv|dezena[1]~1_combout\ & ((\myBCD_Conv|dezena[2]~2_combout\ & ((!\myBCD_Conv|dezena[3]~3_combout\))) 
-- # (!\myBCD_Conv|dezena[2]~2_combout\ & (!\myBCD_Conv|dezena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|dezena[2]~2_combout\,
	datab => \myBCD_Conv|dezena[1]~1_combout\,
	datac => \myBCD_Conv|dezena[0]~0_combout\,
	datad => \myBCD_Conv|dezena[3]~3_combout\,
	combout => \myBCD_D|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y35_N22
\myBCD_D|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_D|Mux1~0_combout\ = (\myBCD_Conv|dezena[3]~3_combout\) # ((\myBCD_Conv|dezena[2]~2_combout\ & ((\myBCD_Conv|dezena[0]~0_combout\) # (!\myBCD_Conv|dezena[1]~1_combout\))) # (!\myBCD_Conv|dezena[2]~2_combout\ & (!\myBCD_Conv|dezena[1]~1_combout\ & 
-- \myBCD_Conv|dezena[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|dezena[2]~2_combout\,
	datab => \myBCD_Conv|dezena[1]~1_combout\,
	datac => \myBCD_Conv|dezena[0]~0_combout\,
	datad => \myBCD_Conv|dezena[3]~3_combout\,
	combout => \myBCD_D|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y35_N20
\myBCD_D|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_D|Mux0~0_combout\ = (!\myBCD_Conv|dezena[3]~3_combout\ & ((\myBCD_Conv|dezena[2]~2_combout\ & (\myBCD_Conv|dezena[1]~1_combout\ & !\myBCD_Conv|dezena[0]~0_combout\)) # (!\myBCD_Conv|dezena[2]~2_combout\ & (!\myBCD_Conv|dezena[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|dezena[2]~2_combout\,
	datab => \myBCD_Conv|dezena[1]~1_combout\,
	datac => \myBCD_Conv|dezena[0]~0_combout\,
	datad => \myBCD_Conv|dezena[3]~3_combout\,
	combout => \myBCD_D|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y35_N4
\myBCD_Conv|unidade[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|unidade[2]~1_combout\ = (\myBCD_Conv|temp~68_combout\ & (((!\Troco|Reg\(1) & \myBCD_Conv|temp~67_combout\)))) # (!\myBCD_Conv|temp~68_combout\ & ((\Troco|Reg\(1)) # ((!\myBCD_Conv|temp~66_combout\ & !\myBCD_Conv|temp~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~66_combout\,
	datab => \myBCD_Conv|temp~68_combout\,
	datac => \Troco|Reg\(1),
	datad => \myBCD_Conv|temp~67_combout\,
	combout => \myBCD_Conv|unidade[2]~1_combout\);

-- Location: LCCOMB_X23_Y35_N14
\myBCD_Conv|unidade[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|unidade[1]~0_combout\ = (\myBCD_Conv|temp~66_combout\ & ((\Troco|Reg\(1)) # ((\myBCD_Conv|temp~68_combout\ & !\myBCD_Conv|temp~67_combout\)))) # (!\myBCD_Conv|temp~66_combout\ & ((\Troco|Reg\(1) $ (!\myBCD_Conv|temp~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~66_combout\,
	datab => \myBCD_Conv|temp~68_combout\,
	datac => \Troco|Reg\(1),
	datad => \myBCD_Conv|temp~67_combout\,
	combout => \myBCD_Conv|unidade[1]~0_combout\);

-- Location: LCCOMB_X23_Y35_N22
\myBCD_Conv|unidade[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_Conv|unidade[3]~2_combout\ = (\myBCD_Conv|temp~66_combout\ & (\myBCD_Conv|temp~68_combout\ & (!\Troco|Reg\(1)))) # (!\myBCD_Conv|temp~66_combout\ & (\myBCD_Conv|temp~67_combout\ & ((\Troco|Reg\(1)) # (!\myBCD_Conv|temp~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBCD_Conv|temp~66_combout\,
	datab => \myBCD_Conv|temp~68_combout\,
	datac => \Troco|Reg\(1),
	datad => \myBCD_Conv|temp~67_combout\,
	combout => \myBCD_Conv|unidade[3]~2_combout\);

-- Location: LCCOMB_X23_Y35_N24
\myBCD_U|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_U|Mux6~0_combout\ = (\myBCD_Conv|unidade[1]~0_combout\ & (!\myBCD_Conv|unidade[3]~2_combout\ & (\Troco|Reg\(0) $ (\myBCD_Conv|unidade[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(0),
	datab => \myBCD_Conv|unidade[2]~1_combout\,
	datac => \myBCD_Conv|unidade[1]~0_combout\,
	datad => \myBCD_Conv|unidade[3]~2_combout\,
	combout => \myBCD_U|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y35_N26
\myBCD_U|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_U|Mux5~0_combout\ = (\myBCD_Conv|unidade[2]~1_combout\ & (!\myBCD_Conv|unidade[3]~2_combout\ & (\Troco|Reg\(0) $ (!\myBCD_Conv|unidade[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(0),
	datab => \myBCD_Conv|unidade[2]~1_combout\,
	datac => \myBCD_Conv|unidade[1]~0_combout\,
	datad => \myBCD_Conv|unidade[3]~2_combout\,
	combout => \myBCD_U|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y35_N12
\myBCD_U|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_U|Mux4~0_combout\ = (!\Troco|Reg\(0) & (!\myBCD_Conv|unidade[2]~1_combout\ & (!\myBCD_Conv|unidade[1]~0_combout\ & !\myBCD_Conv|unidade[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(0),
	datab => \myBCD_Conv|unidade[2]~1_combout\,
	datac => \myBCD_Conv|unidade[1]~0_combout\,
	datad => \myBCD_Conv|unidade[3]~2_combout\,
	combout => \myBCD_U|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y35_N10
\myBCD_U|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_U|Mux3~0_combout\ = (!\myBCD_Conv|unidade[3]~2_combout\ & ((\Troco|Reg\(0) & (\myBCD_Conv|unidade[2]~1_combout\ $ (\myBCD_Conv|unidade[1]~0_combout\))) # (!\Troco|Reg\(0) & (\myBCD_Conv|unidade[2]~1_combout\ & \myBCD_Conv|unidade[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(0),
	datab => \myBCD_Conv|unidade[2]~1_combout\,
	datac => \myBCD_Conv|unidade[1]~0_combout\,
	datad => \myBCD_Conv|unidade[3]~2_combout\,
	combout => \myBCD_U|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y35_N0
\myBCD_U|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_U|Mux2~0_combout\ = (\myBCD_Conv|unidade[1]~0_combout\ & ((\myBCD_Conv|unidade[2]~1_combout\ & ((!\myBCD_Conv|unidade[3]~2_combout\))) # (!\myBCD_Conv|unidade[2]~1_combout\ & (\Troco|Reg\(0))))) # (!\myBCD_Conv|unidade[1]~0_combout\ & 
-- (\Troco|Reg\(0) & ((!\myBCD_Conv|unidade[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(0),
	datab => \myBCD_Conv|unidade[2]~1_combout\,
	datac => \myBCD_Conv|unidade[1]~0_combout\,
	datad => \myBCD_Conv|unidade[3]~2_combout\,
	combout => \myBCD_U|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y35_N18
\myBCD_U|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_U|Mux1~0_combout\ = (\myBCD_Conv|unidade[3]~2_combout\) # ((\Troco|Reg\(0) & (\myBCD_Conv|unidade[2]~1_combout\ & \myBCD_Conv|unidade[1]~0_combout\)) # (!\Troco|Reg\(0) & ((\myBCD_Conv|unidade[2]~1_combout\) # (\myBCD_Conv|unidade[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(0),
	datab => \myBCD_Conv|unidade[2]~1_combout\,
	datac => \myBCD_Conv|unidade[1]~0_combout\,
	datad => \myBCD_Conv|unidade[3]~2_combout\,
	combout => \myBCD_U|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y35_N8
\myBCD_U|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBCD_U|Mux0~0_combout\ = (!\myBCD_Conv|unidade[3]~2_combout\ & ((\myBCD_Conv|unidade[2]~1_combout\ & (\Troco|Reg\(0) & !\myBCD_Conv|unidade[1]~0_combout\)) # (!\myBCD_Conv|unidade[2]~1_combout\ & ((\myBCD_Conv|unidade[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Troco|Reg\(0),
	datab => \myBCD_Conv|unidade[2]~1_combout\,
	datac => \myBCD_Conv|unidade[1]~0_combout\,
	datad => \myBCD_Conv|unidade[3]~2_combout\,
	combout => \myBCD_U|Mux0~0_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pinMaior_B~I\ : cycloneii_io
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
	datain => \ComparadorGT|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pinMaior_B);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pinMenor_P~I\ : cycloneii_io
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
	datain => \ComparadorLT|LessThan0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pinMenor_P);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prod_out[0]~I\ : cycloneii_io
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
	datain => \Prod|Reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prod_out(0));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prod_out[1]~I\ : cycloneii_io
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
	datain => \Prod|Reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prod_out(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prod_out[2]~I\ : cycloneii_io
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
	datain => \Prod|Reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prod_out(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prod_out[3]~I\ : cycloneii_io
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
	datain => \Prod|Reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prod_out(3));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[0]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[1]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(1));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[2]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(2));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[3]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(3));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[4]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(4));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[5]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[6]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(6));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[7]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(7));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[8]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(8));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[9]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(9));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[10]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(10));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[11]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(11));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\troco_out[12]~I\ : cycloneii_io
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
	datain => \Troco|Reg\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_troco_out(12));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_M[0]~I\ : cycloneii_io
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
	datain => \myBCD_M|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_M(0));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_M[1]~I\ : cycloneii_io
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
	datain => \myBCD_M|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_M(1));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_M[2]~I\ : cycloneii_io
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
	datain => \myBCD_M|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_M(2));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_M[3]~I\ : cycloneii_io
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
	datain => \myBCD_M|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_M(3));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_M[4]~I\ : cycloneii_io
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
	datain => \myBCD_M|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_M(4));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_M[5]~I\ : cycloneii_io
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
	datain => \myBCD_M|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_M(5));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_M[6]~I\ : cycloneii_io
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
	datain => \myBCD_M|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_M(6));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_C[0]~I\ : cycloneii_io
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
	datain => \myBCD_C|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_C(0));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_C[1]~I\ : cycloneii_io
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
	datain => \myBCD_C|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_C(1));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_C[2]~I\ : cycloneii_io
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
	datain => \myBCD_C|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_C(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_C[3]~I\ : cycloneii_io
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
	datain => \myBCD_C|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_C(3));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_C[4]~I\ : cycloneii_io
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
	datain => \myBCD_C|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_C(4));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_C[5]~I\ : cycloneii_io
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
	datain => \myBCD_C|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_C(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_C[6]~I\ : cycloneii_io
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
	datain => \myBCD_C|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_C(6));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_D[0]~I\ : cycloneii_io
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
	datain => \myBCD_D|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_D(0));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_D[1]~I\ : cycloneii_io
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
	datain => \myBCD_D|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_D(1));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_D[2]~I\ : cycloneii_io
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
	datain => \myBCD_D|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_D(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_D[3]~I\ : cycloneii_io
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
	datain => \myBCD_D|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_D(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_D[4]~I\ : cycloneii_io
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
	datain => \myBCD_D|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_D(4));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_D[5]~I\ : cycloneii_io
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
	datain => \myBCD_D|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_D(5));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_D[6]~I\ : cycloneii_io
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
	datain => \myBCD_D|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_D(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_U[0]~I\ : cycloneii_io
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
	datain => \myBCD_U|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_U(0));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_U[1]~I\ : cycloneii_io
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
	datain => \myBCD_U|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_U(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_U[2]~I\ : cycloneii_io
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
	datain => \myBCD_U|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_U(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_U[3]~I\ : cycloneii_io
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
	datain => \myBCD_U|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_U(3));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_U[4]~I\ : cycloneii_io
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
	datain => \myBCD_U|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_U(4));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_U[5]~I\ : cycloneii_io
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
	datain => \myBCD_U|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_U(5));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_U[6]~I\ : cycloneii_io
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
	datain => \myBCD_U|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_U(6));
END structure;


