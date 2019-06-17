-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "05/07/2019 16:23:11"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	E : OUT std_logic;
	DATA1 : IN std_logic_vector(31 DOWNTO 0);
	DATA2 : IN std_logic_vector(31 DOWNTO 0);
	OVERFLOW : OUT std_logic;
	Cin : IN std_logic;
	OP : IN std_logic_vector(2 DOWNTO 0);
	SIGN : OUT std_logic;
	OUTPUT : OUT std_logic_vector(31 DOWNTO 0);
	SHAMT : IN std_logic_vector(4 DOWNTO 0);
	ZERO : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- E	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVERFLOW	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[31]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[30]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[29]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[28]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[27]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[26]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[25]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[24]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[23]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[22]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[21]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[20]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[19]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[18]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[17]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[16]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[15]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[14]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[13]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[12]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[11]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[10]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[6]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZERO	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[29]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[29]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[28]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[28]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[26]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[26]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[25]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[25]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[22]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[22]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[20]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[20]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[18]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[18]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[17]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[17]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[16]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[16]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[15]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[15]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[14]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[14]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[13]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[10]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[9]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[9]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[11]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[12]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[19]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[19]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[23]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[23]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[24]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[24]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[27]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[27]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[30]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[30]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[31]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[31]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_DATA1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DATA2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OVERFLOW : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_OP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SIGN : std_logic;
SIGNAL ww_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SHAMT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ZERO : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \DATA1[28]~input_o\ : std_logic;
SIGNAL \DATA2[28]~input_o\ : std_logic;
SIGNAL \DATA1[27]~input_o\ : std_logic;
SIGNAL \DATA2[26]~input_o\ : std_logic;
SIGNAL \DATA2[25]~input_o\ : std_logic;
SIGNAL \DATA1[25]~input_o\ : std_logic;
SIGNAL \inst7|inst6|inst1|inst~combout\ : std_logic;
SIGNAL \DATA1[23]~input_o\ : std_logic;
SIGNAL \inst7|inst6|inst1|inst5~0_combout\ : std_logic;
SIGNAL \DATA2[21]~input_o\ : std_logic;
SIGNAL \DATA1[22]~input_o\ : std_logic;
SIGNAL \DATA1[21]~input_o\ : std_logic;
SIGNAL \DATA2[18]~input_o\ : std_logic;
SIGNAL \DATA1[19]~input_o\ : std_logic;
SIGNAL \DATA2[16]~input_o\ : std_logic;
SIGNAL \DATA1[15]~input_o\ : std_logic;
SIGNAL \DATA2[15]~input_o\ : std_logic;
SIGNAL \inst7|inst3|inst3|inst5~0_combout\ : std_logic;
SIGNAL \DATA1[14]~input_o\ : std_logic;
SIGNAL \DATA2[11]~input_o\ : std_logic;
SIGNAL \DATA1[11]~input_o\ : std_logic;
SIGNAL \DATA1[12]~input_o\ : std_logic;
SIGNAL \DATA1[10]~input_o\ : std_logic;
SIGNAL \DATA2[10]~input_o\ : std_logic;
SIGNAL \inst7|inst2|inst2|inst~combout\ : std_logic;
SIGNAL \DATA2[12]~input_o\ : std_logic;
SIGNAL \DATA1[8]~input_o\ : std_logic;
SIGNAL \inst7|inst2|inst2|inst5~0_combout\ : std_logic;
SIGNAL \DATA2[0]~input_o\ : std_logic;
SIGNAL \DATA2[1]~input_o\ : std_logic;
SIGNAL \DATA1[0]~input_o\ : std_logic;
SIGNAL \DATA2[2]~input_o\ : std_logic;
SIGNAL \DATA1[2]~input_o\ : std_logic;
SIGNAL \DATA1[1]~input_o\ : std_logic;
SIGNAL \inst7|inst|inst2|inst5~0_combout\ : std_logic;
SIGNAL \DATA2[5]~input_o\ : std_logic;
SIGNAL \DATA1[5]~input_o\ : std_logic;
SIGNAL \inst7|inst1|inst1|inst5~0_combout\ : std_logic;
SIGNAL \DATA2[3]~input_o\ : std_logic;
SIGNAL \DATA2[4]~input_o\ : std_logic;
SIGNAL \DATA1[4]~input_o\ : std_logic;
SIGNAL \DATA1[3]~input_o\ : std_logic;
SIGNAL \inst7|inst1|inst1|inst5~1_combout\ : std_logic;
SIGNAL \inst7|inst1|inst1|inst~combout\ : std_logic;
SIGNAL \DATA1[7]~input_o\ : std_logic;
SIGNAL \DATA1[6]~input_o\ : std_logic;
SIGNAL \DATA2[6]~input_o\ : std_logic;
SIGNAL \DATA2[7]~input_o\ : std_logic;
SIGNAL \inst7|inst1|inst3|inst5~0_combout\ : std_logic;
SIGNAL \DATA2[9]~input_o\ : std_logic;
SIGNAL \DATA2[8]~input_o\ : std_logic;
SIGNAL \DATA1[9]~input_o\ : std_logic;
SIGNAL \inst7|inst2|inst2|inst5~1_combout\ : std_logic;
SIGNAL \inst7|inst3|inst|inst5~0_combout\ : std_logic;
SIGNAL \DATA1[13]~input_o\ : std_logic;
SIGNAL \DATA2[13]~input_o\ : std_logic;
SIGNAL \DATA2[14]~input_o\ : std_logic;
SIGNAL \inst7|inst3|inst3|inst5~1_combout\ : std_logic;
SIGNAL \DATA1[16]~input_o\ : std_logic;
SIGNAL \DATA1[17]~input_o\ : std_logic;
SIGNAL \DATA2[17]~input_o\ : std_logic;
SIGNAL \inst7|inst3|inst3|inst~combout\ : std_logic;
SIGNAL \inst7|inst4|inst1|inst5~0_combout\ : std_logic;
SIGNAL \DATA1[18]~input_o\ : std_logic;
SIGNAL \DATA1[20]~input_o\ : std_logic;
SIGNAL \DATA2[20]~input_o\ : std_logic;
SIGNAL \inst7|inst5|inst|inst5~0_combout\ : std_logic;
SIGNAL \DATA2[19]~input_o\ : std_logic;
SIGNAL \inst7|inst5|inst|inst5~1_combout\ : std_logic;
SIGNAL \DATA2[22]~input_o\ : std_logic;
SIGNAL \inst7|inst5|inst|inst~combout\ : std_logic;
SIGNAL \inst7|inst5|inst2|inst5~0_combout\ : std_logic;
SIGNAL \DATA2[23]~input_o\ : std_logic;
SIGNAL \DATA1[24]~input_o\ : std_logic;
SIGNAL \DATA2[24]~input_o\ : std_logic;
SIGNAL \inst7|inst6|inst1|inst5~1_combout\ : std_logic;
SIGNAL \DATA1[26]~input_o\ : std_logic;
SIGNAL \DATA2[27]~input_o\ : std_logic;
SIGNAL \inst7|inst6|inst3|inst5~0_combout\ : std_logic;
SIGNAL \DATA1[29]~input_o\ : std_logic;
SIGNAL \DATA2[29]~input_o\ : std_logic;
SIGNAL \inst7|inst7|inst1|inst5~0_combout\ : std_logic;
SIGNAL \DATA2[30]~input_o\ : std_logic;
SIGNAL \DATA1[30]~input_o\ : std_logic;
SIGNAL \inst|inst7|inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst7|inst7|inst1|inst3~combout\ : std_logic;
SIGNAL \DATA2[31]~input_o\ : std_logic;
SIGNAL \inst7|inst7|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst7|inst2|inst5~1_combout\ : std_logic;
SIGNAL \inst7|inst7|inst2|inst~combout\ : std_logic;
SIGNAL \inst7|inst7|inst2|inst5~2_combout\ : std_logic;
SIGNAL \DATA1[31]~input_o\ : std_logic;
SIGNAL \inst7|inst7|inst3|inst3~combout\ : std_logic;
SIGNAL \inst7|inst6|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst6|inst2|inst3~combout\ : std_logic;
SIGNAL \inst7|inst5|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst6|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst6|inst|inst3~combout\ : std_logic;
SIGNAL \inst7|inst5|inst|inst5~2_combout\ : std_logic;
SIGNAL \inst7|inst5|inst2|inst3~combout\ : std_logic;
SIGNAL \inst7|inst5|inst3|inst3~combout\ : std_logic;
SIGNAL \inst7|inst3|inst3|inst5~2_combout\ : std_logic;
SIGNAL \inst7|inst3|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst13~1_combout\ : std_logic;
SIGNAL \inst13~2_combout\ : std_logic;
SIGNAL \inst7|inst1|inst1|inst5~2_combout\ : std_logic;
SIGNAL \inst7|inst1|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst13~3_combout\ : std_logic;
SIGNAL \inst7|inst2|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst13~4_combout\ : std_logic;
SIGNAL \inst7|inst2|inst2|inst5~2_combout\ : std_logic;
SIGNAL \inst13~5_combout\ : std_logic;
SIGNAL \inst7|inst2|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst13~6_combout\ : std_logic;
SIGNAL \inst13~7_combout\ : std_logic;
SIGNAL \inst13~8_combout\ : std_logic;
SIGNAL \inst7|inst4|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst13~9_combout\ : std_logic;
SIGNAL \inst7|inst4|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst13~10_combout\ : std_logic;
SIGNAL \inst7|inst5|inst1|inst3~combout\ : std_logic;
SIGNAL \inst13~11_combout\ : std_logic;
SIGNAL \inst13~12_combout\ : std_logic;
SIGNAL \inst13~13_combout\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst5~0_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst1|inst5~1_combout\ : std_logic;
SIGNAL \inst|inst2|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst5~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst5~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w31_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \SHAMT[1]~input_o\ : std_logic;
SIGNAL \SHAMT[0]~input_o\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\ : std_logic;
SIGNAL \SHAMT[3]~input_o\ : std_logic;
SIGNAL \SHAMT[2]~input_o\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \SHAMT[4]~input_o\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w31_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w31_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w31_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w31_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w31_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~11_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w30_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~12_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~13_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~14_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~15_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w30_n0_mux_dataout~16_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w29_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w29_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w29_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w29_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w29_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w29_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w29_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w28_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w28_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w28_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w28_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w28_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w28_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w27_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w27_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w27_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w27_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w27_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w25_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w27_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l5_w26_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w26_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w26_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w26_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w26_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w26_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w26_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst6|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l5_w25_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w25_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w25_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w25_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w25_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l5_w24_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w24_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w24_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w24_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w24_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w23_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w23_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w23_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w23_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w23_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w23_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w22_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w22_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w22_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w22_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w22_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w22_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w22_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst5~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w21_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w21_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w21_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w21_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w21_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w21_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w21_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w20_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w20_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w20_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst7|inst4|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w20_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w20_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w20_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst4|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w19_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w19_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w19_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w19_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w19_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w19_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w18_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w18_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w18_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w18_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w18_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w18_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w18_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w17_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w17_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w17_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w17_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w17_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w17_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l4_w16_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w16_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w16_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w16_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst5~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w16_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w16_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w15_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w15_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst7|inst3|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w15_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w15_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w15_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w14_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w14_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w14_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w14_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w13_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w13_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w13_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w13_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w13_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w12_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w12_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w12_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w12_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w12_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst2|inst1|inst5~2_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w11_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w11_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w11_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w11_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w11_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w10_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w10_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst7|inst2|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w10_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w10_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w10_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w9_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w9_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w9_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w9_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w9_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l4_w8_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w8_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w8_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w8_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w8_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l5_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w7_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w7_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w7_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l5_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w6_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w6_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst5~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w6_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w6_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l5_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w5_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w5_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w5_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|l5_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w4_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w4_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w4_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w4_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w3_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w3_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w3_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w3_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w3_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w2_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w2_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w2_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst3~combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w1_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w1_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst|inst1|inst3~combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w1_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w1_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w1_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w0_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|l3_w0_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst34~1_combout\ : std_logic;
SIGNAL \inst34~2_combout\ : std_logic;
SIGNAL \inst34~11_combout\ : std_logic;
SIGNAL \inst34~13_combout\ : std_logic;
SIGNAL \inst34~10_combout\ : std_logic;
SIGNAL \inst34~12_combout\ : std_logic;
SIGNAL \inst34~14_combout\ : std_logic;
SIGNAL \inst34~0_combout\ : std_logic;
SIGNAL \inst34~15_combout\ : std_logic;
SIGNAL \inst34~8_combout\ : std_logic;
SIGNAL \inst34~6_combout\ : std_logic;
SIGNAL \inst34~4_combout\ : std_logic;
SIGNAL \inst34~3_combout\ : std_logic;
SIGNAL \inst34~7_combout\ : std_logic;
SIGNAL \inst34~5_combout\ : std_logic;
SIGNAL \inst34~9_combout\ : std_logic;
SIGNAL \inst34~combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w30_n3_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w30_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~11_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w30_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w30_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w30_n7_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w30_n5_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w30_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w30_n4_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w31_n3_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w31_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w31_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w31_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w31_n7_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w31_n5_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w31_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w31_n4_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst1|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst|inst2|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst1|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~combout\ : std_logic;
SIGNAL \ALT_INV_inst13~13_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~12_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~11_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~10_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~9_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~8_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~7_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~6_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~5_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~4_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~3_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst1|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst7|inst2|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst2|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst7|inst3|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst4|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst3|inst3|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst7|inst4|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst6|inst|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst7|inst5|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst7|inst5|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst7|inst5|inst|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst7|inst5|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst7|inst6|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst7|inst6|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst5|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst6|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst7|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst7|inst7|inst2|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst7|inst7|inst2|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst7|inst7|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst7|inst2|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst7|inst7|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst|inst7|inst1|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst|inst7|inst2|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst7|inst7|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst6|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst6|inst1|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst7|inst6|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst5|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst5|inst|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst7|inst5|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst4|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst3|inst3|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst7|inst3|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst3|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst2|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst7|inst2|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst1|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst7|inst1|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst1|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst7|inst2|inst2|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst7|inst3|inst3|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst7|inst5|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst7|inst6|inst1|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \ALT_INV_SHAMT[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SHAMT[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SHAMT[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SHAMT[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SHAMT[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_inst34~combout\ : std_logic;
SIGNAL \ALT_INV_inst34~15_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~14_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~13_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~12_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~11_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~10_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~9_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~8_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~7_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~6_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~5_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~4_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~3_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst34~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|inst|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l5_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l5_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l5_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l5_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w8_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w9_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w10_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w11_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst1|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w12_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w13_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w15_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|inst3|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w16_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w16_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w16_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w17_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w17_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w17_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w18_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w18_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w18_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w19_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w19_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w19_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w20_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w20_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w20_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|inst4|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w21_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w21_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w21_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w22_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w22_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w22_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l4_w23_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w23_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w23_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l5_w24_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w24_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w24_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l5_w25_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w25_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w25_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst6|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l5_w26_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w26_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w26_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w27_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w27_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w28_n3_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w28_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w28_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w28_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w28_n7_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w28_n5_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w28_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w28_n4_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w29_n3_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w29_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w29_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l4_w29_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w29_n7_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w29_n5_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w29_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst31|auto_generated|ALT_INV_l2_w29_n4_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst34|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~15_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~14_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~13_combout\ : std_logic;
SIGNAL \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~12_combout\ : std_logic;

BEGIN

E <= ww_E;
ww_DATA1 <= DATA1;
ww_DATA2 <= DATA2;
OVERFLOW <= ww_OVERFLOW;
ww_Cin <= Cin;
ww_OP <= OP;
SIGN <= ww_SIGN;
OUTPUT <= ww_OUTPUT;
ww_SHAMT <= SHAMT;
ZERO <= ww_ZERO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst4|inst31|auto_generated|ALT_INV_l2_w30_n3_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w30_n2_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~11_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~11_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w30_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w30_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w30_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w30_n7_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w30_n5_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w30_n6_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w30_n4_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~5_combout\ <= NOT \inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\;
\inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w31_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w31_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w31_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\;
\inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w31_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w31_n3_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w31_n2_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w31_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w31_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w31_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w31_n7_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w31_n5_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w31_n6_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w31_n4_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\;
\inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\ <= NOT \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\;
\inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~0_combout\ <= NOT \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~0_combout\;
\inst|inst7|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst|inst7|inst1|inst5~0_combout\;
\inst|inst6|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst|inst6|inst3|inst5~0_combout\;
\inst|inst6|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst|inst6|inst1|inst5~0_combout\;
\inst|inst5|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst|inst5|inst3|inst5~0_combout\;
\inst|inst5|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst|inst5|inst1|inst5~0_combout\;
\inst|inst4|inst3|ALT_INV_inst5~1_combout\ <= NOT \inst|inst4|inst3|inst5~1_combout\;
\inst|inst4|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst|inst4|inst3|inst5~0_combout\;
\inst|inst4|inst|ALT_INV_inst5~0_combout\ <= NOT \inst|inst4|inst|inst5~0_combout\;
\inst|inst3|inst2|ALT_INV_inst5~1_combout\ <= NOT \inst|inst3|inst2|inst5~1_combout\;
\inst|inst3|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst|inst3|inst2|inst5~0_combout\;
\inst|inst2|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst|inst2|inst3|inst5~0_combout\;
\inst|inst2|inst1|ALT_INV_inst5~1_combout\ <= NOT \inst|inst2|inst1|inst5~1_combout\;
\inst|inst2|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst|inst2|inst1|inst5~0_combout\;
\inst|inst1|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst|inst1|inst2|inst5~0_combout\;
\inst|inst1|inst|ALT_INV_inst5~1_combout\ <= NOT \inst|inst1|inst|inst5~1_combout\;
\inst|inst1|inst|ALT_INV_inst5~0_combout\ <= NOT \inst|inst1|inst|inst5~0_combout\;
\inst|inst|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst|inst|inst1|inst5~0_combout\;
\inst|inst1|inst|ALT_INV_inst~0_combout\ <= NOT \inst|inst1|inst|inst~0_combout\;
\inst|inst2|inst1|ALT_INV_inst~0_combout\ <= NOT \inst|inst2|inst1|inst~0_combout\;
\inst|inst3|inst2|ALT_INV_inst~0_combout\ <= NOT \inst|inst3|inst2|inst~0_combout\;
\inst|inst4|inst3|ALT_INV_inst~0_combout\ <= NOT \inst|inst4|inst3|inst~0_combout\;
\ALT_INV_inst13~combout\ <= NOT \inst13~combout\;
\ALT_INV_inst13~13_combout\ <= NOT \inst13~13_combout\;
\ALT_INV_inst13~12_combout\ <= NOT \inst13~12_combout\;
\ALT_INV_inst13~11_combout\ <= NOT \inst13~11_combout\;
\ALT_INV_inst13~10_combout\ <= NOT \inst13~10_combout\;
\ALT_INV_inst13~9_combout\ <= NOT \inst13~9_combout\;
\ALT_INV_inst13~8_combout\ <= NOT \inst13~8_combout\;
\ALT_INV_inst13~7_combout\ <= NOT \inst13~7_combout\;
\ALT_INV_inst13~6_combout\ <= NOT \inst13~6_combout\;
\ALT_INV_inst13~5_combout\ <= NOT \inst13~5_combout\;
\ALT_INV_inst13~4_combout\ <= NOT \inst13~4_combout\;
\ALT_INV_inst13~3_combout\ <= NOT \inst13~3_combout\;
\ALT_INV_inst13~2_combout\ <= NOT \inst13~2_combout\;
\ALT_INV_inst13~1_combout\ <= NOT \inst13~1_combout\;
\ALT_INV_inst13~0_combout\ <= NOT \inst13~0_combout\;
\inst7|inst1|inst|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst1|inst|inst5~0_combout\;
\inst7|inst|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst|inst3|inst5~0_combout\;
\inst7|inst1|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst1|inst2|inst5~0_combout\;
\inst7|inst1|inst1|ALT_INV_inst5~2_combout\ <= NOT \inst7|inst1|inst1|inst5~2_combout\;
\inst7|inst2|inst|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst2|inst|inst5~0_combout\;
\inst7|inst2|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst2|inst3|inst5~0_combout\;
\inst7|inst2|inst2|ALT_INV_inst5~2_combout\ <= NOT \inst7|inst2|inst2|inst5~2_combout\;
\inst7|inst3|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst3|inst1|inst5~0_combout\;
\inst7|inst4|inst|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst4|inst|inst5~0_combout\;
\inst7|inst3|inst3|ALT_INV_inst5~2_combout\ <= NOT \inst7|inst3|inst3|inst5~2_combout\;
\inst7|inst4|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst4|inst2|inst5~0_combout\;
\inst7|inst6|inst|ALT_INV_inst3~combout\ <= NOT \inst7|inst6|inst|inst3~combout\;
\inst7|inst5|inst1|ALT_INV_inst3~combout\ <= NOT \inst7|inst5|inst1|inst3~combout\;
\inst7|inst5|inst2|ALT_INV_inst3~combout\ <= NOT \inst7|inst5|inst2|inst3~combout\;
\inst7|inst5|inst|ALT_INV_inst5~2_combout\ <= NOT \inst7|inst5|inst|inst5~2_combout\;
\inst7|inst5|inst3|ALT_INV_inst3~combout\ <= NOT \inst7|inst5|inst3|inst3~combout\;
\inst7|inst6|inst2|ALT_INV_inst3~combout\ <= NOT \inst7|inst6|inst2|inst3~combout\;
\inst7|inst6|inst|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst6|inst|inst5~0_combout\;
\inst7|inst5|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst5|inst3|inst5~0_combout\;
\inst7|inst6|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst6|inst2|inst5~0_combout\;
\inst7|inst7|inst3|ALT_INV_inst3~combout\ <= NOT \inst7|inst7|inst3|inst3~combout\;
\inst7|inst7|inst2|ALT_INV_inst5~2_combout\ <= NOT \inst7|inst7|inst2|inst5~2_combout\;
\inst7|inst7|inst2|ALT_INV_inst5~1_combout\ <= NOT \inst7|inst7|inst2|inst5~1_combout\;
\inst7|inst7|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst7|inst2|inst5~0_combout\;
\inst7|inst7|inst2|ALT_INV_inst~combout\ <= NOT \inst7|inst7|inst2|inst~combout\;
\inst7|inst7|inst1|ALT_INV_inst3~combout\ <= NOT \inst7|inst7|inst1|inst3~combout\;
\inst|inst7|inst1|ALT_INV_inst3~0_combout\ <= NOT \inst|inst7|inst1|inst3~0_combout\;
\inst|inst7|inst2|ALT_INV_inst3~0_combout\ <= NOT \inst|inst7|inst2|inst3~0_combout\;
\inst7|inst7|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst7|inst1|inst5~0_combout\;
\inst7|inst6|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst6|inst3|inst5~0_combout\;
\inst7|inst6|inst1|ALT_INV_inst5~1_combout\ <= NOT \inst7|inst6|inst1|inst5~1_combout\;
\inst7|inst6|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst6|inst1|inst5~0_combout\;
\inst7|inst5|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst5|inst2|inst5~0_combout\;
\inst7|inst5|inst|ALT_INV_inst5~1_combout\ <= NOT \inst7|inst5|inst|inst5~1_combout\;
\inst7|inst5|inst|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst5|inst|inst5~0_combout\;
\inst7|inst4|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst4|inst1|inst5~0_combout\;
\inst7|inst3|inst3|ALT_INV_inst5~1_combout\ <= NOT \inst7|inst3|inst3|inst5~1_combout\;
\inst7|inst3|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst3|inst3|inst5~0_combout\;
\inst7|inst3|inst|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst3|inst|inst5~0_combout\;
\inst7|inst2|inst2|ALT_INV_inst5~1_combout\ <= NOT \inst7|inst2|inst2|inst5~1_combout\;
\inst7|inst2|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst2|inst2|inst5~0_combout\;
\inst7|inst1|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst1|inst3|inst5~0_combout\;
\inst7|inst1|inst1|ALT_INV_inst5~1_combout\ <= NOT \inst7|inst1|inst1|inst5~1_combout\;
\inst7|inst1|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst1|inst1|inst5~0_combout\;
\inst7|inst|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst|inst2|inst5~0_combout\;
\inst7|inst1|inst1|ALT_INV_inst~combout\ <= NOT \inst7|inst1|inst1|inst~combout\;
\inst7|inst2|inst2|ALT_INV_inst~combout\ <= NOT \inst7|inst2|inst2|inst~combout\;
\inst7|inst3|inst3|ALT_INV_inst~combout\ <= NOT \inst7|inst3|inst3|inst~combout\;
\inst7|inst5|inst|ALT_INV_inst~combout\ <= NOT \inst7|inst5|inst|inst~combout\;
\inst7|inst6|inst1|ALT_INV_inst~combout\ <= NOT \inst7|inst6|inst1|inst~combout\;
\inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~6_combout\ <= NOT \inst2|auto_generated|l3_w31_n0_mux_dataout~6_combout\;
\inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w27_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w26_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~7_combout\ <= NOT \inst2|auto_generated|l3_w23_n0_mux_dataout~7_combout\;
\inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w22_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~7_combout\ <= NOT \inst2|auto_generated|l3_w21_n0_mux_dataout~7_combout\;
\inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w21_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w20_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~7_combout\ <= NOT \inst2|auto_generated|l3_w19_n0_mux_dataout~7_combout\;
\inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w19_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w18_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w17_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~7_combout\ <= NOT \inst2|auto_generated|l3_w16_n0_mux_dataout~7_combout\;
\inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w16_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~6_combout\ <= NOT \inst2|auto_generated|l3_w15_n0_mux_dataout~6_combout\;
\inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~7_combout\ <= NOT \inst2|auto_generated|l3_w14_n0_mux_dataout~7_combout\;
\inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w14_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w13_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w12_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~7_combout\ <= NOT \inst2|auto_generated|l3_w11_n0_mux_dataout~7_combout\;
\inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w11_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w10_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~7_combout\ <= NOT \inst2|auto_generated|l3_w9_n0_mux_dataout~7_combout\;
\inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w9_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w8_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w6_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w4_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~5_combout\ <= NOT \inst2|auto_generated|l3_w2_n0_mux_dataout~5_combout\;
\inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w0_n0_mux_dataout~4_combout\;
\ALT_INV_SHAMT[2]~input_o\ <= NOT \SHAMT[2]~input_o\;
\ALT_INV_SHAMT[3]~input_o\ <= NOT \SHAMT[3]~input_o\;
\ALT_INV_SHAMT[1]~input_o\ <= NOT \SHAMT[1]~input_o\;
\ALT_INV_SHAMT[4]~input_o\ <= NOT \SHAMT[4]~input_o\;
\ALT_INV_SHAMT[0]~input_o\ <= NOT \SHAMT[0]~input_o\;
\ALT_INV_OP[1]~input_o\ <= NOT \OP[1]~input_o\;
\ALT_INV_OP[2]~input_o\ <= NOT \OP[2]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_OP[0]~input_o\ <= NOT \OP[0]~input_o\;
\ALT_INV_DATA2[31]~input_o\ <= NOT \DATA2[31]~input_o\;
\ALT_INV_DATA1[31]~input_o\ <= NOT \DATA1[31]~input_o\;
\ALT_INV_DATA2[30]~input_o\ <= NOT \DATA2[30]~input_o\;
\ALT_INV_DATA1[30]~input_o\ <= NOT \DATA1[30]~input_o\;
\ALT_INV_DATA2[27]~input_o\ <= NOT \DATA2[27]~input_o\;
\ALT_INV_DATA1[27]~input_o\ <= NOT \DATA1[27]~input_o\;
\ALT_INV_DATA2[24]~input_o\ <= NOT \DATA2[24]~input_o\;
\ALT_INV_DATA1[24]~input_o\ <= NOT \DATA1[24]~input_o\;
\ALT_INV_DATA2[23]~input_o\ <= NOT \DATA2[23]~input_o\;
\ALT_INV_DATA1[23]~input_o\ <= NOT \DATA1[23]~input_o\;
\ALT_INV_DATA2[19]~input_o\ <= NOT \DATA2[19]~input_o\;
\ALT_INV_DATA1[19]~input_o\ <= NOT \DATA1[19]~input_o\;
\ALT_INV_DATA2[12]~input_o\ <= NOT \DATA2[12]~input_o\;
\ALT_INV_DATA1[12]~input_o\ <= NOT \DATA1[12]~input_o\;
\ALT_INV_DATA2[11]~input_o\ <= NOT \DATA2[11]~input_o\;
\ALT_INV_DATA1[11]~input_o\ <= NOT \DATA1[11]~input_o\;
\ALT_INV_DATA2[7]~input_o\ <= NOT \DATA2[7]~input_o\;
\ALT_INV_DATA1[7]~input_o\ <= NOT \DATA1[7]~input_o\;
\ALT_INV_DATA2[4]~input_o\ <= NOT \DATA2[4]~input_o\;
\ALT_INV_DATA1[4]~input_o\ <= NOT \DATA1[4]~input_o\;
\ALT_INV_DATA2[3]~input_o\ <= NOT \DATA2[3]~input_o\;
\ALT_INV_DATA1[3]~input_o\ <= NOT \DATA1[3]~input_o\;
\ALT_INV_DATA2[0]~input_o\ <= NOT \DATA2[0]~input_o\;
\ALT_INV_DATA1[0]~input_o\ <= NOT \DATA1[0]~input_o\;
\ALT_INV_DATA2[1]~input_o\ <= NOT \DATA2[1]~input_o\;
\ALT_INV_DATA1[1]~input_o\ <= NOT \DATA1[1]~input_o\;
\ALT_INV_DATA2[2]~input_o\ <= NOT \DATA2[2]~input_o\;
\ALT_INV_DATA1[2]~input_o\ <= NOT \DATA1[2]~input_o\;
\ALT_INV_DATA2[5]~input_o\ <= NOT \DATA2[5]~input_o\;
\ALT_INV_DATA1[5]~input_o\ <= NOT \DATA1[5]~input_o\;
\ALT_INV_DATA2[6]~input_o\ <= NOT \DATA2[6]~input_o\;
\ALT_INV_DATA1[6]~input_o\ <= NOT \DATA1[6]~input_o\;
\ALT_INV_DATA2[8]~input_o\ <= NOT \DATA2[8]~input_o\;
\ALT_INV_DATA1[8]~input_o\ <= NOT \DATA1[8]~input_o\;
\ALT_INV_DATA2[9]~input_o\ <= NOT \DATA2[9]~input_o\;
\ALT_INV_DATA1[9]~input_o\ <= NOT \DATA1[9]~input_o\;
\ALT_INV_DATA2[10]~input_o\ <= NOT \DATA2[10]~input_o\;
\ALT_INV_DATA1[10]~input_o\ <= NOT \DATA1[10]~input_o\;
\ALT_INV_DATA2[13]~input_o\ <= NOT \DATA2[13]~input_o\;
\ALT_INV_DATA1[13]~input_o\ <= NOT \DATA1[13]~input_o\;
\ALT_INV_DATA2[14]~input_o\ <= NOT \DATA2[14]~input_o\;
\ALT_INV_DATA1[14]~input_o\ <= NOT \DATA1[14]~input_o\;
\ALT_INV_DATA2[15]~input_o\ <= NOT \DATA2[15]~input_o\;
\ALT_INV_DATA1[15]~input_o\ <= NOT \DATA1[15]~input_o\;
\ALT_INV_DATA2[16]~input_o\ <= NOT \DATA2[16]~input_o\;
\ALT_INV_DATA1[16]~input_o\ <= NOT \DATA1[16]~input_o\;
\ALT_INV_DATA2[17]~input_o\ <= NOT \DATA2[17]~input_o\;
\ALT_INV_DATA1[17]~input_o\ <= NOT \DATA1[17]~input_o\;
\ALT_INV_DATA2[18]~input_o\ <= NOT \DATA2[18]~input_o\;
\ALT_INV_DATA1[18]~input_o\ <= NOT \DATA1[18]~input_o\;
\ALT_INV_DATA2[20]~input_o\ <= NOT \DATA2[20]~input_o\;
\ALT_INV_DATA1[20]~input_o\ <= NOT \DATA1[20]~input_o\;
\ALT_INV_DATA2[21]~input_o\ <= NOT \DATA2[21]~input_o\;
\ALT_INV_DATA1[21]~input_o\ <= NOT \DATA1[21]~input_o\;
\ALT_INV_DATA2[22]~input_o\ <= NOT \DATA2[22]~input_o\;
\ALT_INV_DATA1[22]~input_o\ <= NOT \DATA1[22]~input_o\;
\ALT_INV_DATA2[25]~input_o\ <= NOT \DATA2[25]~input_o\;
\ALT_INV_DATA1[25]~input_o\ <= NOT \DATA1[25]~input_o\;
\ALT_INV_DATA2[26]~input_o\ <= NOT \DATA2[26]~input_o\;
\ALT_INV_DATA1[26]~input_o\ <= NOT \DATA1[26]~input_o\;
\ALT_INV_DATA2[28]~input_o\ <= NOT \DATA2[28]~input_o\;
\ALT_INV_DATA1[28]~input_o\ <= NOT \DATA1[28]~input_o\;
\ALT_INV_DATA2[29]~input_o\ <= NOT \DATA2[29]~input_o\;
\ALT_INV_DATA1[29]~input_o\ <= NOT \DATA1[29]~input_o\;
\ALT_INV_inst34~combout\ <= NOT \inst34~combout\;
\ALT_INV_inst34~15_combout\ <= NOT \inst34~15_combout\;
\ALT_INV_inst34~14_combout\ <= NOT \inst34~14_combout\;
\ALT_INV_inst34~13_combout\ <= NOT \inst34~13_combout\;
\ALT_INV_inst34~12_combout\ <= NOT \inst34~12_combout\;
\ALT_INV_inst34~11_combout\ <= NOT \inst34~11_combout\;
\ALT_INV_inst34~10_combout\ <= NOT \inst34~10_combout\;
\ALT_INV_inst34~9_combout\ <= NOT \inst34~9_combout\;
\ALT_INV_inst34~8_combout\ <= NOT \inst34~8_combout\;
\ALT_INV_inst34~7_combout\ <= NOT \inst34~7_combout\;
\ALT_INV_inst34~6_combout\ <= NOT \inst34~6_combout\;
\ALT_INV_inst34~5_combout\ <= NOT \inst34~5_combout\;
\ALT_INV_inst34~4_combout\ <= NOT \inst34~4_combout\;
\ALT_INV_inst34~3_combout\ <= NOT \inst34~3_combout\;
\ALT_INV_inst34~2_combout\ <= NOT \inst34~2_combout\;
\ALT_INV_inst34~1_combout\ <= NOT \inst34~1_combout\;
\ALT_INV_inst34~0_combout\ <= NOT \inst34~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w0_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w0_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w0_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~6_combout\ <= NOT \inst2|auto_generated|l3_w1_n0_mux_dataout~6_combout\;
\inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~5_combout\ <= NOT \inst2|auto_generated|l3_w1_n0_mux_dataout~5_combout\;
\inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w1_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w1_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w1_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w1_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w1_n0_mux_dataout~0_combout\;
\inst|inst|inst1|ALT_INV_inst3~combout\ <= NOT \inst|inst|inst1|inst3~combout\;
\inst7|inst|inst1|ALT_INV_inst3~combout\ <= NOT \inst7|inst|inst1|inst3~combout\;
\inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w2_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w2_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w2_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w2_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w2_n0_mux_dataout~0_combout\;
\inst7|inst|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst|inst1|inst5~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~5_combout\ <= NOT \inst2|auto_generated|l3_w3_n0_mux_dataout~5_combout\;
\inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w3_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w3_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w3_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w3_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w3_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w4_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w4_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w4_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w4_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l5_w4_n0_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l5_w4_n0_mux_dataout~0_combout\;
\inst|inst|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst|inst|inst2|inst5~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w5_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w5_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w5_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w5_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w5_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l5_w5_n0_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l5_w5_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w6_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w6_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w6_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w6_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l5_w6_n0_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l5_w6_n0_mux_dataout~0_combout\;
\inst|inst1|inst|ALT_INV_inst5~2_combout\ <= NOT \inst|inst1|inst|inst5~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w7_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w7_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w7_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w7_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w7_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l5_w7_n0_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l5_w7_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w8_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w8_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w8_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w8_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w8_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w8_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w9_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w9_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w9_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w9_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\;
\inst|inst1|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst|inst1|inst3|inst5~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w10_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w10_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w10_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w10_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w10_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w10_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\;
\inst7|inst2|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst2|inst1|inst5~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w11_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w11_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w11_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w11_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w11_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\;
\inst|inst2|inst1|ALT_INV_inst5~2_combout\ <= NOT \inst|inst2|inst1|inst5~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w12_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w12_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w12_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w12_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w12_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w12_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w13_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w13_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w13_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w13_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w13_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w13_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w14_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~1_combout\ <= NOT \inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w14_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w14_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\;
\inst|inst3|inst|ALT_INV_inst5~0_combout\ <= NOT \inst|inst3|inst|inst5~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w15_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w15_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w15_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w15_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w15_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w15_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\;
\inst7|inst3|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst3|inst2|inst5~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w16_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w16_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w16_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w16_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w16_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w16_n0_mux_dataout~0_combout\;
\inst|inst3|inst2|ALT_INV_inst5~2_combout\ <= NOT \inst|inst3|inst2|inst5~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w17_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w17_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w17_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w17_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w17_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w17_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w17_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w18_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w18_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w18_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w18_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w18_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w18_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w18_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w18_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w19_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w19_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w19_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w19_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w19_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w19_n0_mux_dataout~0_combout\;
\inst|inst4|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst|inst4|inst1|inst5~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w20_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w20_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w20_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w20_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w20_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w20_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w20_n0_mux_dataout~0_combout\;
\inst7|inst4|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst7|inst4|inst3|inst5~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w21_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w21_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w21_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w21_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w21_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w21_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w21_n0_mux_dataout~0_combout\;
\inst|inst4|inst3|ALT_INV_inst5~2_combout\ <= NOT \inst|inst4|inst3|inst5~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w22_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w22_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w22_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w22_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w22_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w22_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w22_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w22_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w23_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l4_w23_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l4_w23_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w23_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w23_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w23_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w23_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w24_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w24_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w24_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l5_w24_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l5_w24_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w24_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w24_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w24_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~6_combout\ <= NOT \inst2|auto_generated|l3_w25_n0_mux_dataout~6_combout\;
\inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~5_combout\ <= NOT \inst2|auto_generated|l3_w25_n0_mux_dataout~5_combout\;
\inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w25_n0_mux_dataout~4_combout\;
\inst5|inst34|auto_generated|ALT_INV_l5_w25_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l5_w25_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w25_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w25_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w25_n0_mux_dataout~3_combout\;
\inst|inst6|inst|ALT_INV_inst5~0_combout\ <= NOT \inst|inst6|inst|inst5~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w26_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w26_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l5_w26_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l5_w26_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w26_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w26_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w26_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w26_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w27_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w27_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\;
\inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~1_combout\ <= NOT \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~1_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w27_n1_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w27_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w27_n1_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w27_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\;
\inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w25_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~5_combout\ <= NOT \inst2|auto_generated|l3_w28_n0_mux_dataout~5_combout\;
\inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w28_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w28_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w28_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w28_n0_mux_dataout~1_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w28_n3_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w28_n2_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w28_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w28_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w28_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w28_n7_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w28_n5_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w28_n6_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w28_n4_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~6_combout\ <= NOT \inst2|auto_generated|l3_w29_n0_mux_dataout~6_combout\;
\inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~5_combout\ <= NOT \inst2|auto_generated|l3_w29_n0_mux_dataout~5_combout\;
\inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~4_combout\ <= NOT \inst2|auto_generated|l3_w29_n0_mux_dataout~4_combout\;
\inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~3_combout\ <= NOT \inst2|auto_generated|l3_w29_n0_mux_dataout~3_combout\;
\inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~2_combout\ <= NOT \inst2|auto_generated|l3_w29_n0_mux_dataout~2_combout\;
\inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~1_combout\ <= NOT \inst2|auto_generated|l3_w29_n0_mux_dataout~1_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w29_n3_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w29_n2_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~0_combout\ <= NOT \inst2|auto_generated|l3_w29_n0_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w29_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l4_w29_n1_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w29_n7_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w29_n5_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w29_n6_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\;
\inst4|inst31|auto_generated|ALT_INV_l2_w29_n4_mux_dataout~0_combout\ <= NOT \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\;
\inst5|inst34|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~0_combout\ <= NOT \inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~15_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~15_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~14_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~14_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~13_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~13_combout\;
\inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~12_combout\ <= NOT \inst2|auto_generated|l3_w30_n0_mux_dataout~12_combout\;

-- Location: IOOBUF_X6_Y0_N19
\E~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst13~combout\,
	devoe => ww_devoe,
	o => ww_E);

-- Location: IOOBUF_X66_Y0_N93
\OVERFLOW~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~2_combout\,
	devoe => ww_devoe,
	o => ww_OVERFLOW);

-- Location: IOOBUF_X70_Y0_N19
\SIGN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\,
	devoe => ww_devoe,
	o => ww_SIGN);

-- Location: IOOBUF_X68_Y0_N36
\OUTPUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(31));

-- Location: IOOBUF_X72_Y0_N36
\OUTPUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w30_n0_mux_dataout~16_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(30));

-- Location: IOOBUF_X6_Y0_N53
\OUTPUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w29_n0_mux_dataout~6_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(29));

-- Location: IOOBUF_X58_Y0_N93
\OUTPUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w28_n0_mux_dataout~5_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(28));

-- Location: IOOBUF_X32_Y0_N53
\OUTPUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w27_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(27));

-- Location: IOOBUF_X4_Y0_N53
\OUTPUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w26_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(26));

-- Location: IOOBUF_X6_Y0_N36
\OUTPUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w25_n0_mux_dataout~6_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(25));

-- Location: IOOBUF_X56_Y0_N2
\OUTPUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w24_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(24));

-- Location: IOOBUF_X89_Y9_N56
\OUTPUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w23_n0_mux_dataout~2_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(23));

-- Location: IOOBUF_X64_Y0_N53
\OUTPUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w22_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(22));

-- Location: IOOBUF_X64_Y0_N19
\OUTPUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w21_n0_mux_dataout~2_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(21));

-- Location: IOOBUF_X52_Y0_N36
\OUTPUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w20_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(20));

-- Location: IOOBUF_X72_Y0_N2
\OUTPUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w19_n0_mux_dataout~2_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(19));

-- Location: IOOBUF_X70_Y0_N2
\OUTPUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w18_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(18));

-- Location: IOOBUF_X72_Y0_N19
\OUTPUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w17_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(17));

-- Location: IOOBUF_X52_Y0_N2
\OUTPUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w16_n0_mux_dataout~2_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(16));

-- Location: IOOBUF_X89_Y4_N45
\OUTPUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w15_n0_mux_dataout~5_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(15));

-- Location: IOOBUF_X89_Y9_N39
\OUTPUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w14_n0_mux_dataout~2_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(14));

-- Location: IOOBUF_X89_Y4_N79
\OUTPUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w13_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(13));

-- Location: IOOBUF_X70_Y0_N53
\OUTPUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w12_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(12));

-- Location: IOOBUF_X62_Y0_N53
\OUTPUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w11_n0_mux_dataout~2_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(11));

-- Location: IOOBUF_X89_Y6_N22
\OUTPUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w10_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(10));

-- Location: IOOBUF_X89_Y6_N5
\OUTPUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w9_n0_mux_dataout~2_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(9));

-- Location: IOOBUF_X60_Y0_N19
\OUTPUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w8_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(8));

-- Location: IOOBUF_X89_Y6_N39
\OUTPUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w7_n0_mux_dataout~4_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(7));

-- Location: IOOBUF_X62_Y0_N19
\OUTPUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w6_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(6));

-- Location: IOOBUF_X58_Y0_N76
\OUTPUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w5_n0_mux_dataout~4_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(5));

-- Location: IOOBUF_X2_Y0_N93
\OUTPUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w4_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(4));

-- Location: IOOBUF_X62_Y0_N36
\OUTPUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w3_n0_mux_dataout~5_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(3));

-- Location: IOOBUF_X66_Y0_N42
\OUTPUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w2_n0_mux_dataout~4_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(2));

-- Location: IOOBUF_X2_Y0_N42
\OUTPUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w1_n0_mux_dataout~5_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(1));

-- Location: IOOBUF_X8_Y0_N2
\OUTPUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|l3_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(0));

-- Location: IOOBUF_X58_Y0_N59
\ZERO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst34~combout\,
	devoe => ww_devoe,
	o => ww_ZERO);

-- Location: IOIBUF_X34_Y0_N58
\DATA1[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(28),
	o => \DATA1[28]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\DATA2[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(28),
	o => \DATA2[28]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\DATA1[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(27),
	o => \DATA1[27]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\DATA2[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(26),
	o => \DATA2[26]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\DATA2[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(25),
	o => \DATA2[25]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\DATA1[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(25),
	o => \DATA1[25]~input_o\);

-- Location: MLABCELL_X34_Y4_N12
\inst7|inst6|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst6|inst1|inst~combout\ = ( !\DATA2[25]~input_o\ & ( \DATA1[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_DATA2[25]~input_o\,
	dataf => \ALT_INV_DATA1[25]~input_o\,
	combout => \inst7|inst6|inst1|inst~combout\);

-- Location: IOIBUF_X54_Y0_N1
\DATA1[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(23),
	o => \DATA1[23]~input_o\);

-- Location: MLABCELL_X34_Y4_N51
\inst7|inst6|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst6|inst1|inst5~0_combout\ = ( !\DATA1[25]~input_o\ & ( \DATA2[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA2[25]~input_o\,
	dataf => \ALT_INV_DATA1[25]~input_o\,
	combout => \inst7|inst6|inst1|inst5~0_combout\);

-- Location: IOIBUF_X70_Y0_N35
\DATA2[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(21),
	o => \DATA2[21]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\DATA1[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(22),
	o => \DATA1[22]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\DATA1[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(21),
	o => \DATA1[21]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\DATA2[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(18),
	o => \DATA2[18]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\DATA1[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(19),
	o => \DATA1[19]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\DATA2[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(16),
	o => \DATA2[16]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\DATA1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(15),
	o => \DATA1[15]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\DATA2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(15),
	o => \DATA2[15]~input_o\);

-- Location: LABCELL_X40_Y4_N48
\inst7|inst3|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst3|inst3|inst5~0_combout\ = ( \DATA2[15]~input_o\ & ( !\DATA1[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[15]~input_o\,
	dataf => \ALT_INV_DATA2[15]~input_o\,
	combout => \inst7|inst3|inst3|inst5~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\DATA1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(14),
	o => \DATA1[14]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\DATA2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(11),
	o => \DATA2[11]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\DATA1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(11),
	o => \DATA1[11]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\DATA1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(12),
	o => \DATA1[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\DATA1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(10),
	o => \DATA1[10]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\DATA2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(10),
	o => \DATA2[10]~input_o\);

-- Location: LABCELL_X37_Y3_N6
\inst7|inst2|inst2|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst2|inst~combout\ = ( !\DATA2[10]~input_o\ & ( \DATA1[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[10]~input_o\,
	dataf => \ALT_INV_DATA2[10]~input_o\,
	combout => \inst7|inst2|inst2|inst~combout\);

-- Location: IOIBUF_X54_Y0_N35
\DATA2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(12),
	o => \DATA2[12]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\DATA1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(8),
	o => \DATA1[8]~input_o\);

-- Location: LABCELL_X37_Y3_N9
\inst7|inst2|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst2|inst5~0_combout\ = ( \DATA2[10]~input_o\ & ( !\DATA1[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[10]~input_o\,
	dataf => \ALT_INV_DATA2[10]~input_o\,
	combout => \inst7|inst2|inst2|inst5~0_combout\);

-- Location: IOIBUF_X26_Y0_N41
\DATA2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(0),
	o => \DATA2[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\DATA2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(1),
	o => \DATA2[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\DATA1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(0),
	o => \DATA1[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\DATA2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(2),
	o => \DATA2[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\DATA1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(2),
	o => \DATA1[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\DATA1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(1),
	o => \DATA1[1]~input_o\);

-- Location: LABCELL_X31_Y1_N6
\inst7|inst|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst2|inst5~0_combout\ = ( \DATA1[2]~input_o\ & ( \DATA1[1]~input_o\ & ( (\DATA2[0]~input_o\ & (\DATA2[1]~input_o\ & (!\DATA1[0]~input_o\ & \DATA2[2]~input_o\))) ) ) ) # ( !\DATA1[2]~input_o\ & ( \DATA1[1]~input_o\ & ( ((\DATA2[0]~input_o\ & 
-- (\DATA2[1]~input_o\ & !\DATA1[0]~input_o\))) # (\DATA2[2]~input_o\) ) ) ) # ( \DATA1[2]~input_o\ & ( !\DATA1[1]~input_o\ & ( (\DATA2[2]~input_o\ & (((\DATA2[0]~input_o\ & !\DATA1[0]~input_o\)) # (\DATA2[1]~input_o\))) ) ) ) # ( !\DATA1[2]~input_o\ & ( 
-- !\DATA1[1]~input_o\ & ( (((\DATA2[0]~input_o\ & !\DATA1[0]~input_o\)) # (\DATA2[2]~input_o\)) # (\DATA2[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111111111000000000111001100010000111111110000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[0]~input_o\,
	datab => \ALT_INV_DATA2[1]~input_o\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_DATA2[2]~input_o\,
	datae => \ALT_INV_DATA1[2]~input_o\,
	dataf => \ALT_INV_DATA1[1]~input_o\,
	combout => \inst7|inst|inst2|inst5~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\DATA2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(5),
	o => \DATA2[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\DATA1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(5),
	o => \DATA1[5]~input_o\);

-- Location: LABCELL_X30_Y3_N9
\inst7|inst1|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst1|inst5~0_combout\ = ( \DATA2[5]~input_o\ & ( !\DATA1[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_DATA2[5]~input_o\,
	dataf => \ALT_INV_DATA1[5]~input_o\,
	combout => \inst7|inst1|inst1|inst5~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\DATA2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(3),
	o => \DATA2[3]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\DATA2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(4),
	o => \DATA2[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\DATA1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(4),
	o => \DATA1[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\DATA1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(3),
	o => \DATA1[3]~input_o\);

-- Location: LABCELL_X30_Y1_N12
\inst7|inst1|inst1|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst1|inst5~1_combout\ = ( \DATA1[4]~input_o\ & ( \DATA1[3]~input_o\ & ( (!\inst7|inst1|inst1|inst5~0_combout\ & ((!\inst7|inst|inst2|inst5~0_combout\) # ((!\DATA2[3]~input_o\) # (!\DATA2[4]~input_o\)))) ) ) ) # ( !\DATA1[4]~input_o\ & ( 
-- \DATA1[3]~input_o\ & ( (!\inst7|inst1|inst1|inst5~0_combout\ & (!\DATA2[4]~input_o\ & ((!\inst7|inst|inst2|inst5~0_combout\) # (!\DATA2[3]~input_o\)))) ) ) ) # ( \DATA1[4]~input_o\ & ( !\DATA1[3]~input_o\ & ( (!\inst7|inst1|inst1|inst5~0_combout\ & 
-- ((!\DATA2[4]~input_o\) # ((!\inst7|inst|inst2|inst5~0_combout\ & !\DATA2[3]~input_o\)))) ) ) ) # ( !\DATA1[4]~input_o\ & ( !\DATA1[3]~input_o\ & ( (!\inst7|inst|inst2|inst5~0_combout\ & (!\inst7|inst1|inst1|inst5~0_combout\ & (!\DATA2[3]~input_o\ & 
-- !\DATA2[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000110011001000000011001000000000001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst2|ALT_INV_inst5~0_combout\,
	datab => \inst7|inst1|inst1|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_DATA2[3]~input_o\,
	datad => \ALT_INV_DATA2[4]~input_o\,
	datae => \ALT_INV_DATA1[4]~input_o\,
	dataf => \ALT_INV_DATA1[3]~input_o\,
	combout => \inst7|inst1|inst1|inst5~1_combout\);

-- Location: LABCELL_X30_Y3_N0
\inst7|inst1|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst1|inst~combout\ = ( !\DATA2[5]~input_o\ & ( \DATA1[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_DATA2[5]~input_o\,
	dataf => \ALT_INV_DATA1[5]~input_o\,
	combout => \inst7|inst1|inst1|inst~combout\);

-- Location: IOIBUF_X6_Y0_N1
\DATA1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(7),
	o => \DATA1[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\DATA1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(6),
	o => \DATA1[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\DATA2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(6),
	o => \DATA2[6]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\DATA2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(7),
	o => \DATA2[7]~input_o\);

-- Location: LABCELL_X31_Y3_N6
\inst7|inst1|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst3|inst5~0_combout\ = ( \DATA2[6]~input_o\ & ( \DATA2[7]~input_o\ & ( (!\DATA1[7]~input_o\) # ((!\DATA1[6]~input_o\) # ((!\inst7|inst1|inst1|inst5~1_combout\ & !\inst7|inst1|inst1|inst~combout\))) ) ) ) # ( !\DATA2[6]~input_o\ & ( 
-- \DATA2[7]~input_o\ & ( (!\DATA1[7]~input_o\) # ((!\inst7|inst1|inst1|inst5~1_combout\ & (!\inst7|inst1|inst1|inst~combout\ & !\DATA1[6]~input_o\))) ) ) ) # ( \DATA2[6]~input_o\ & ( !\DATA2[7]~input_o\ & ( (!\DATA1[7]~input_o\ & ((!\DATA1[6]~input_o\) # 
-- ((!\inst7|inst1|inst1|inst5~1_combout\ & !\inst7|inst1|inst1|inst~combout\)))) ) ) ) # ( !\DATA2[6]~input_o\ & ( !\DATA2[7]~input_o\ & ( (!\inst7|inst1|inst1|inst5~1_combout\ & (!\inst7|inst1|inst1|inst~combout\ & (!\DATA1[7]~input_o\ & 
-- !\DATA1[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000111100001000000011111000111100001111111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst1|ALT_INV_inst5~1_combout\,
	datab => \inst7|inst1|inst1|ALT_INV_inst~combout\,
	datac => \ALT_INV_DATA1[7]~input_o\,
	datad => \ALT_INV_DATA1[6]~input_o\,
	datae => \ALT_INV_DATA2[6]~input_o\,
	dataf => \ALT_INV_DATA2[7]~input_o\,
	combout => \inst7|inst1|inst3|inst5~0_combout\);

-- Location: IOIBUF_X66_Y0_N75
\DATA2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(9),
	o => \DATA2[9]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\DATA2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(8),
	o => \DATA2[8]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\DATA1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(9),
	o => \DATA1[9]~input_o\);

-- Location: LABCELL_X37_Y3_N42
\inst7|inst2|inst2|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst2|inst5~1_combout\ = ( \DATA2[8]~input_o\ & ( \DATA1[9]~input_o\ & ( (!\inst7|inst2|inst2|inst5~0_combout\ & ((!\DATA2[9]~input_o\) # ((\DATA1[8]~input_o\ & !\inst7|inst1|inst3|inst5~0_combout\)))) ) ) ) # ( !\DATA2[8]~input_o\ & ( 
-- \DATA1[9]~input_o\ & ( (!\inst7|inst2|inst2|inst5~0_combout\ & (((!\inst7|inst1|inst3|inst5~0_combout\) # (!\DATA2[9]~input_o\)) # (\DATA1[8]~input_o\))) ) ) ) # ( \DATA2[8]~input_o\ & ( !\DATA1[9]~input_o\ & ( (\DATA1[8]~input_o\ & 
-- (!\inst7|inst2|inst2|inst5~0_combout\ & (!\inst7|inst1|inst3|inst5~0_combout\ & !\DATA2[9]~input_o\))) ) ) ) # ( !\DATA2[8]~input_o\ & ( !\DATA1[9]~input_o\ & ( (!\inst7|inst2|inst2|inst5~0_combout\ & (!\DATA2[9]~input_o\ & 
-- ((!\inst7|inst1|inst3|inst5~0_combout\) # (\DATA1[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000000000010000000000000011001100110001001100110001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[8]~input_o\,
	datab => \inst7|inst2|inst2|ALT_INV_inst5~0_combout\,
	datac => \inst7|inst1|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA2[9]~input_o\,
	datae => \ALT_INV_DATA2[8]~input_o\,
	dataf => \ALT_INV_DATA1[9]~input_o\,
	combout => \inst7|inst2|inst2|inst5~1_combout\);

-- Location: LABCELL_X37_Y3_N18
\inst7|inst3|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst3|inst|inst5~0_combout\ = ( \DATA2[12]~input_o\ & ( \inst7|inst2|inst2|inst5~1_combout\ & ( (!\DATA1[12]~input_o\) # ((\DATA2[11]~input_o\ & !\DATA1[11]~input_o\)) ) ) ) # ( !\DATA2[12]~input_o\ & ( \inst7|inst2|inst2|inst5~1_combout\ & ( 
-- (\DATA2[11]~input_o\ & (!\DATA1[11]~input_o\ & !\DATA1[12]~input_o\)) ) ) ) # ( \DATA2[12]~input_o\ & ( !\inst7|inst2|inst2|inst5~1_combout\ & ( (!\DATA1[12]~input_o\) # ((!\DATA2[11]~input_o\ & (!\DATA1[11]~input_o\ & !\inst7|inst2|inst2|inst~combout\)) 
-- # (\DATA2[11]~input_o\ & ((!\DATA1[11]~input_o\) # (!\inst7|inst2|inst2|inst~combout\)))) ) ) ) # ( !\DATA2[12]~input_o\ & ( !\inst7|inst2|inst2|inst5~1_combout\ & ( (!\DATA1[12]~input_o\ & ((!\DATA2[11]~input_o\ & (!\DATA1[11]~input_o\ & 
-- !\inst7|inst2|inst2|inst~combout\)) # (\DATA2[11]~input_o\ & ((!\DATA1[11]~input_o\) # (!\inst7|inst2|inst2|inst~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001000000111111011111010001000000010000001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[11]~input_o\,
	datab => \ALT_INV_DATA1[11]~input_o\,
	datac => \ALT_INV_DATA1[12]~input_o\,
	datad => \inst7|inst2|inst2|ALT_INV_inst~combout\,
	datae => \ALT_INV_DATA2[12]~input_o\,
	dataf => \inst7|inst2|inst2|ALT_INV_inst5~1_combout\,
	combout => \inst7|inst3|inst|inst5~0_combout\);

-- Location: IOIBUF_X52_Y0_N18
\DATA1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(13),
	o => \DATA1[13]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\DATA2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(13),
	o => \DATA2[13]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\DATA2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(14),
	o => \DATA2[14]~input_o\);

-- Location: LABCELL_X40_Y4_N54
\inst7|inst3|inst3|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst3|inst3|inst5~1_combout\ = ( \DATA2[13]~input_o\ & ( \DATA2[14]~input_o\ & ( (!\inst7|inst3|inst3|inst5~0_combout\ & (\DATA1[14]~input_o\ & (!\inst7|inst3|inst|inst5~0_combout\ & \DATA1[13]~input_o\))) ) ) ) # ( !\DATA2[13]~input_o\ & ( 
-- \DATA2[14]~input_o\ & ( (!\inst7|inst3|inst3|inst5~0_combout\ & (\DATA1[14]~input_o\ & ((!\inst7|inst3|inst|inst5~0_combout\) # (\DATA1[13]~input_o\)))) ) ) ) # ( \DATA2[13]~input_o\ & ( !\DATA2[14]~input_o\ & ( (!\inst7|inst3|inst3|inst5~0_combout\ & 
-- (((!\inst7|inst3|inst|inst5~0_combout\ & \DATA1[13]~input_o\)) # (\DATA1[14]~input_o\))) ) ) ) # ( !\DATA2[13]~input_o\ & ( !\DATA2[14]~input_o\ & ( (!\inst7|inst3|inst3|inst5~0_combout\ & (((!\inst7|inst3|inst|inst5~0_combout\) # (\DATA1[13]~input_o\)) # 
-- (\DATA1[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010101010001000101010001000100000001000100000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|inst3|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA1[14]~input_o\,
	datac => \inst7|inst3|inst|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[13]~input_o\,
	datae => \ALT_INV_DATA2[13]~input_o\,
	dataf => \ALT_INV_DATA2[14]~input_o\,
	combout => \inst7|inst3|inst3|inst5~1_combout\);

-- Location: IOIBUF_X52_Y0_N52
\DATA1[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(16),
	o => \DATA1[16]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\DATA1[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(17),
	o => \DATA1[17]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\DATA2[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(17),
	o => \DATA2[17]~input_o\);

-- Location: MLABCELL_X39_Y4_N45
\inst7|inst3|inst3|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst3|inst3|inst~combout\ = ( !\DATA2[15]~input_o\ & ( \DATA1[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[15]~input_o\,
	dataf => \ALT_INV_DATA2[15]~input_o\,
	combout => \inst7|inst3|inst3|inst~combout\);

-- Location: MLABCELL_X39_Y4_N48
\inst7|inst4|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst4|inst1|inst5~0_combout\ = ( \DATA2[17]~input_o\ & ( \inst7|inst3|inst3|inst~combout\ & ( (!\DATA1[17]~input_o\) # ((\DATA2[16]~input_o\ & !\DATA1[16]~input_o\)) ) ) ) # ( !\DATA2[17]~input_o\ & ( \inst7|inst3|inst3|inst~combout\ & ( 
-- (\DATA2[16]~input_o\ & (!\DATA1[16]~input_o\ & !\DATA1[17]~input_o\)) ) ) ) # ( \DATA2[17]~input_o\ & ( !\inst7|inst3|inst3|inst~combout\ & ( (!\DATA1[17]~input_o\) # ((!\DATA2[16]~input_o\ & (!\inst7|inst3|inst3|inst5~1_combout\ & !\DATA1[16]~input_o\)) 
-- # (\DATA2[16]~input_o\ & ((!\inst7|inst3|inst3|inst5~1_combout\) # (!\DATA1[16]~input_o\)))) ) ) ) # ( !\DATA2[17]~input_o\ & ( !\inst7|inst3|inst3|inst~combout\ & ( (!\DATA1[17]~input_o\ & ((!\DATA2[16]~input_o\ & (!\inst7|inst3|inst3|inst5~1_combout\ & 
-- !\DATA1[16]~input_o\)) # (\DATA2[16]~input_o\ & ((!\inst7|inst3|inst3|inst5~1_combout\) # (!\DATA1[16]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010000000000111111111101010001010000000000001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[16]~input_o\,
	datab => \inst7|inst3|inst3|ALT_INV_inst5~1_combout\,
	datac => \ALT_INV_DATA1[16]~input_o\,
	datad => \ALT_INV_DATA1[17]~input_o\,
	datae => \ALT_INV_DATA2[17]~input_o\,
	dataf => \inst7|inst3|inst3|ALT_INV_inst~combout\,
	combout => \inst7|inst4|inst1|inst5~0_combout\);

-- Location: IOIBUF_X56_Y0_N35
\DATA1[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(18),
	o => \DATA1[18]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\DATA1[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(20),
	o => \DATA1[20]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\DATA2[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(20),
	o => \DATA2[20]~input_o\);

-- Location: LABCELL_X36_Y3_N0
\inst7|inst5|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst|inst5~0_combout\ = ( \DATA2[20]~input_o\ & ( !\DATA1[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[20]~input_o\,
	dataf => \ALT_INV_DATA2[20]~input_o\,
	combout => \inst7|inst5|inst|inst5~0_combout\);

-- Location: IOIBUF_X66_Y0_N58
\DATA2[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(19),
	o => \DATA2[19]~input_o\);

-- Location: LABCELL_X40_Y2_N18
\inst7|inst5|inst|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst|inst5~1_combout\ = ( !\inst7|inst5|inst|inst5~0_combout\ & ( \DATA2[19]~input_o\ & ( (\DATA1[19]~input_o\ & ((!\DATA2[18]~input_o\ & ((!\inst7|inst4|inst1|inst5~0_combout\) # (\DATA1[18]~input_o\))) # (\DATA2[18]~input_o\ & 
-- (!\inst7|inst4|inst1|inst5~0_combout\ & \DATA1[18]~input_o\)))) ) ) ) # ( !\inst7|inst5|inst|inst5~0_combout\ & ( !\DATA2[19]~input_o\ & ( ((!\DATA2[18]~input_o\ & ((!\inst7|inst4|inst1|inst5~0_combout\) # (\DATA1[18]~input_o\))) # (\DATA2[18]~input_o\ & 
-- (!\inst7|inst4|inst1|inst5~0_combout\ & \DATA1[18]~input_o\))) # (\DATA1[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111111011000000000000000000100000001100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[18]~input_o\,
	datab => \ALT_INV_DATA1[19]~input_o\,
	datac => \inst7|inst4|inst1|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[18]~input_o\,
	datae => \inst7|inst5|inst|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst7|inst5|inst|inst5~1_combout\);

-- Location: IOIBUF_X64_Y0_N1
\DATA2[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(22),
	o => \DATA2[22]~input_o\);

-- Location: MLABCELL_X39_Y2_N6
\inst7|inst5|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst|inst~combout\ = ( !\DATA2[20]~input_o\ & ( \DATA1[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[20]~input_o\,
	dataf => \ALT_INV_DATA2[20]~input_o\,
	combout => \inst7|inst5|inst|inst~combout\);

-- Location: MLABCELL_X39_Y2_N42
\inst7|inst5|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst2|inst5~0_combout\ = ( \DATA2[22]~input_o\ & ( \inst7|inst5|inst|inst~combout\ & ( (!\DATA1[22]~input_o\) # ((\DATA2[21]~input_o\ & !\DATA1[21]~input_o\)) ) ) ) # ( !\DATA2[22]~input_o\ & ( \inst7|inst5|inst|inst~combout\ & ( 
-- (\DATA2[21]~input_o\ & (!\DATA1[22]~input_o\ & !\DATA1[21]~input_o\)) ) ) ) # ( \DATA2[22]~input_o\ & ( !\inst7|inst5|inst|inst~combout\ & ( (!\DATA1[22]~input_o\) # ((!\DATA2[21]~input_o\ & (!\DATA1[21]~input_o\ & !\inst7|inst5|inst|inst5~1_combout\)) # 
-- (\DATA2[21]~input_o\ & ((!\DATA1[21]~input_o\) # (!\inst7|inst5|inst|inst5~1_combout\)))) ) ) ) # ( !\DATA2[22]~input_o\ & ( !\inst7|inst5|inst|inst~combout\ & ( (!\DATA1[22]~input_o\ & ((!\DATA2[21]~input_o\ & (!\DATA1[21]~input_o\ & 
-- !\inst7|inst5|inst|inst5~1_combout\)) # (\DATA2[21]~input_o\ & ((!\DATA1[21]~input_o\) # (!\inst7|inst5|inst|inst5~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000000111111011101110001000000010000001101110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[21]~input_o\,
	datab => \ALT_INV_DATA1[22]~input_o\,
	datac => \ALT_INV_DATA1[21]~input_o\,
	datad => \inst7|inst5|inst|ALT_INV_inst5~1_combout\,
	datae => \ALT_INV_DATA2[22]~input_o\,
	dataf => \inst7|inst5|inst|ALT_INV_inst~combout\,
	combout => \inst7|inst5|inst2|inst5~0_combout\);

-- Location: IOIBUF_X72_Y0_N52
\DATA2[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(23),
	o => \DATA2[23]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\DATA1[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(24),
	o => \DATA1[24]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\DATA2[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(24),
	o => \DATA2[24]~input_o\);

-- Location: MLABCELL_X34_Y2_N36
\inst7|inst6|inst1|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst6|inst1|inst5~1_combout\ = ( \DATA1[24]~input_o\ & ( \DATA2[24]~input_o\ & ( (!\inst7|inst6|inst1|inst5~0_combout\ & ((!\DATA1[23]~input_o\ & (!\inst7|inst5|inst2|inst5~0_combout\ & !\DATA2[23]~input_o\)) # (\DATA1[23]~input_o\ & 
-- ((!\inst7|inst5|inst2|inst5~0_combout\) # (!\DATA2[23]~input_o\))))) ) ) ) # ( \DATA1[24]~input_o\ & ( !\DATA2[24]~input_o\ & ( !\inst7|inst6|inst1|inst5~0_combout\ ) ) ) # ( !\DATA1[24]~input_o\ & ( !\DATA2[24]~input_o\ & ( 
-- (!\inst7|inst6|inst1|inst5~0_combout\ & ((!\DATA1[23]~input_o\ & (!\inst7|inst5|inst2|inst5~0_combout\ & !\DATA2[23]~input_o\)) # (\DATA1[23]~input_o\ & ((!\inst7|inst5|inst2|inst5~0_combout\) # (!\DATA2[23]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000000110011001100110000000000000000001100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \inst7|inst6|inst1|ALT_INV_inst5~0_combout\,
	datac => \inst7|inst5|inst2|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA2[23]~input_o\,
	datae => \ALT_INV_DATA1[24]~input_o\,
	dataf => \ALT_INV_DATA2[24]~input_o\,
	combout => \inst7|inst6|inst1|inst5~1_combout\);

-- Location: IOIBUF_X60_Y0_N35
\DATA1[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(26),
	o => \DATA1[26]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\DATA2[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(27),
	o => \DATA2[27]~input_o\);

-- Location: LABCELL_X33_Y2_N12
\inst7|inst6|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst6|inst3|inst5~0_combout\ = ( \DATA1[26]~input_o\ & ( \DATA2[27]~input_o\ & ( (!\DATA1[27]~input_o\) # ((\DATA2[26]~input_o\ & (!\inst7|inst6|inst1|inst~combout\ & !\inst7|inst6|inst1|inst5~1_combout\))) ) ) ) # ( !\DATA1[26]~input_o\ & ( 
-- \DATA2[27]~input_o\ & ( (!\DATA1[27]~input_o\) # (((!\inst7|inst6|inst1|inst~combout\ & !\inst7|inst6|inst1|inst5~1_combout\)) # (\DATA2[26]~input_o\)) ) ) ) # ( \DATA1[26]~input_o\ & ( !\DATA2[27]~input_o\ & ( (!\DATA1[27]~input_o\ & (\DATA2[26]~input_o\ 
-- & (!\inst7|inst6|inst1|inst~combout\ & !\inst7|inst6|inst1|inst5~1_combout\))) ) ) ) # ( !\DATA1[26]~input_o\ & ( !\DATA2[27]~input_o\ & ( (!\DATA1[27]~input_o\ & (((!\inst7|inst6|inst1|inst~combout\ & !\inst7|inst6|inst1|inst5~1_combout\)) # 
-- (\DATA2[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000100010001000000000000011111011101110111011101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[27]~input_o\,
	datab => \ALT_INV_DATA2[26]~input_o\,
	datac => \inst7|inst6|inst1|ALT_INV_inst~combout\,
	datad => \inst7|inst6|inst1|ALT_INV_inst5~1_combout\,
	datae => \ALT_INV_DATA1[26]~input_o\,
	dataf => \ALT_INV_DATA2[27]~input_o\,
	combout => \inst7|inst6|inst3|inst5~0_combout\);

-- Location: IOIBUF_X34_Y0_N75
\DATA1[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(29),
	o => \DATA1[29]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\DATA2[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(29),
	o => \DATA2[29]~input_o\);

-- Location: MLABCELL_X34_Y1_N0
\inst7|inst7|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst7|inst1|inst5~0_combout\ = ( \DATA2[29]~input_o\ & ( (\DATA1[29]~input_o\ & ((!\DATA1[28]~input_o\ & (!\DATA2[28]~input_o\ & !\inst7|inst6|inst3|inst5~0_combout\)) # (\DATA1[28]~input_o\ & ((!\DATA2[28]~input_o\) # 
-- (!\inst7|inst6|inst3|inst5~0_combout\))))) ) ) # ( !\DATA2[29]~input_o\ & ( ((!\DATA1[28]~input_o\ & (!\DATA2[28]~input_o\ & !\inst7|inst6|inst3|inst5~0_combout\)) # (\DATA1[28]~input_o\ & ((!\DATA2[28]~input_o\) # 
-- (!\inst7|inst6|inst3|inst5~0_combout\)))) # (\DATA1[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011111111110101001111111100000000110101000000000011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[28]~input_o\,
	datab => \ALT_INV_DATA2[28]~input_o\,
	datac => \inst7|inst6|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[29]~input_o\,
	dataf => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst7|inst7|inst1|inst5~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\DATA2[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(30),
	o => \DATA2[30]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\DATA1[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(30),
	o => \DATA1[30]~input_o\);

-- Location: MLABCELL_X34_Y1_N6
\inst|inst7|inst2|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst7|inst2|inst3~0_combout\ = !\DATA2[30]~input_o\ $ (!\DATA1[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[30]~input_o\,
	datab => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst|inst7|inst2|inst3~0_combout\);

-- Location: MLABCELL_X34_Y1_N45
\inst|inst7|inst1|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|inst3~0_combout\ = ( \DATA2[29]~input_o\ & ( !\DATA1[29]~input_o\ ) ) # ( !\DATA2[29]~input_o\ & ( \DATA1[29]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[29]~input_o\,
	dataf => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst|inst7|inst1|inst3~0_combout\);

-- Location: MLABCELL_X34_Y1_N3
\inst7|inst7|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst7|inst1|inst3~combout\ = ( \inst7|inst6|inst3|inst5~0_combout\ & ( !\inst|inst7|inst1|inst3~0_combout\ $ (((!\DATA1[28]~input_o\) # (\DATA2[28]~input_o\))) ) ) # ( !\inst7|inst6|inst3|inst5~0_combout\ & ( !\inst|inst7|inst1|inst3~0_combout\ $ 
-- (((!\DATA1[28]~input_o\ & \DATA2[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001011010111100000101101001011010000011110101101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[28]~input_o\,
	datac => \inst|inst7|inst1|ALT_INV_inst3~0_combout\,
	datad => \ALT_INV_DATA2[28]~input_o\,
	dataf => \inst7|inst6|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst7|inst7|inst1|inst3~combout\);

-- Location: IOIBUF_X30_Y0_N1
\DATA2[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(31),
	o => \DATA2[31]~input_o\);

-- Location: MLABCELL_X34_Y1_N9
\inst7|inst7|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst7|inst2|inst5~0_combout\ = (\DATA2[30]~input_o\ & !\DATA1[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[30]~input_o\,
	datab => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst7|inst7|inst2|inst5~0_combout\);

-- Location: MLABCELL_X34_Y1_N24
\inst7|inst7|inst2|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst7|inst2|inst5~1_combout\ = ( \DATA1[29]~input_o\ & ( \DATA2[29]~input_o\ & ( (!\inst7|inst7|inst2|inst5~0_combout\ & ((!\DATA1[28]~input_o\ & (!\inst7|inst6|inst3|inst5~0_combout\ & !\DATA2[28]~input_o\)) # (\DATA1[28]~input_o\ & 
-- ((!\inst7|inst6|inst3|inst5~0_combout\) # (!\DATA2[28]~input_o\))))) ) ) ) # ( \DATA1[29]~input_o\ & ( !\DATA2[29]~input_o\ & ( !\inst7|inst7|inst2|inst5~0_combout\ ) ) ) # ( !\DATA1[29]~input_o\ & ( !\DATA2[29]~input_o\ & ( 
-- (!\inst7|inst7|inst2|inst5~0_combout\ & ((!\DATA1[28]~input_o\ & (!\inst7|inst6|inst3|inst5~0_combout\ & !\DATA2[28]~input_o\)) # (\DATA1[28]~input_o\ & ((!\inst7|inst6|inst3|inst5~0_combout\) # (!\DATA2[28]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000000110011001100110000000000000000001100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[28]~input_o\,
	datab => \inst7|inst7|inst2|ALT_INV_inst5~0_combout\,
	datac => \inst7|inst6|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA2[28]~input_o\,
	datae => \ALT_INV_DATA1[29]~input_o\,
	dataf => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst7|inst7|inst2|inst5~1_combout\);

-- Location: MLABCELL_X34_Y1_N51
\inst7|inst7|inst2|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst7|inst2|inst~combout\ = ( !\DATA2[30]~input_o\ & ( \DATA1[30]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[30]~input_o\,
	dataf => \ALT_INV_DATA2[30]~input_o\,
	combout => \inst7|inst7|inst2|inst~combout\);

-- Location: LABCELL_X33_Y1_N39
\inst7|inst7|inst2|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst7|inst2|inst5~2_combout\ = ( \inst7|inst7|inst2|inst~combout\ ) # ( !\inst7|inst7|inst2|inst~combout\ & ( \inst7|inst7|inst2|inst5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst7|inst2|ALT_INV_inst5~1_combout\,
	dataf => \inst7|inst7|inst2|ALT_INV_inst~combout\,
	combout => \inst7|inst7|inst2|inst5~2_combout\);

-- Location: IOIBUF_X36_Y0_N35
\DATA1[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(31),
	o => \DATA1[31]~input_o\);

-- Location: MLABCELL_X34_Y1_N33
\inst7|inst7|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst7|inst3|inst3~combout\ = !\DATA2[31]~input_o\ $ (!\inst7|inst7|inst2|inst5~2_combout\ $ (\DATA1[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[31]~input_o\,
	datac => \inst7|inst7|inst2|ALT_INV_inst5~2_combout\,
	datad => \ALT_INV_DATA1[31]~input_o\,
	combout => \inst7|inst7|inst3|inst3~combout\);

-- Location: LABCELL_X33_Y2_N21
\inst7|inst6|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst6|inst2|inst5~0_combout\ = ( \DATA2[26]~input_o\ & ( (!\DATA1[26]~input_o\) # ((!\inst7|inst6|inst1|inst5~1_combout\ & !\inst7|inst6|inst1|inst~combout\)) ) ) # ( !\DATA2[26]~input_o\ & ( (!\DATA1[26]~input_o\ & 
-- (!\inst7|inst6|inst1|inst5~1_combout\ & !\inst7|inst6|inst1|inst~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000011101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[26]~input_o\,
	datab => \inst7|inst6|inst1|ALT_INV_inst5~1_combout\,
	datad => \inst7|inst6|inst1|ALT_INV_inst~combout\,
	dataf => \ALT_INV_DATA2[26]~input_o\,
	combout => \inst7|inst6|inst2|inst5~0_combout\);

-- Location: LABCELL_X33_Y2_N18
\inst7|inst6|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst6|inst2|inst3~combout\ = ( \DATA2[26]~input_o\ & ( !\DATA1[26]~input_o\ $ (((\inst7|inst6|inst1|inst~combout\) # (\inst7|inst6|inst1|inst5~1_combout\))) ) ) # ( !\DATA2[26]~input_o\ & ( !\DATA1[26]~input_o\ $ 
-- (((!\inst7|inst6|inst1|inst5~1_combout\ & !\inst7|inst6|inst1|inst~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst6|inst1|ALT_INV_inst5~1_combout\,
	datac => \inst7|inst6|inst1|ALT_INV_inst~combout\,
	datad => \ALT_INV_DATA1[26]~input_o\,
	dataf => \ALT_INV_DATA2[26]~input_o\,
	combout => \inst7|inst6|inst2|inst3~combout\);

-- Location: MLABCELL_X34_Y2_N15
\inst7|inst5|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst3|inst5~0_combout\ = ( \inst7|inst5|inst2|inst5~0_combout\ & ( (\DATA1[23]~input_o\ & !\DATA2[23]~input_o\) ) ) # ( !\inst7|inst5|inst2|inst5~0_combout\ & ( (!\DATA2[23]~input_o\) # (\DATA1[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_DATA2[23]~input_o\,
	dataf => \inst7|inst5|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst7|inst5|inst3|inst5~0_combout\);

-- Location: MLABCELL_X34_Y2_N18
\inst7|inst6|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst6|inst|inst5~0_combout\ = ( \inst7|inst5|inst3|inst5~0_combout\ & ( (!\DATA2[24]~input_o\) # (\DATA1[24]~input_o\) ) ) # ( !\inst7|inst5|inst3|inst5~0_combout\ & ( (\DATA1[24]~input_o\ & !\DATA2[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[24]~input_o\,
	datac => \ALT_INV_DATA2[24]~input_o\,
	dataf => \inst7|inst5|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst7|inst6|inst|inst5~0_combout\);

-- Location: MLABCELL_X34_Y2_N27
\inst7|inst6|inst|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst6|inst|inst3~combout\ = ( \inst7|inst5|inst3|inst5~0_combout\ & ( !\DATA1[24]~input_o\ $ (\DATA2[24]~input_o\) ) ) # ( !\inst7|inst5|inst3|inst5~0_combout\ & ( !\DATA1[24]~input_o\ $ (!\DATA2[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[24]~input_o\,
	datad => \ALT_INV_DATA2[24]~input_o\,
	dataf => \inst7|inst5|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst7|inst6|inst|inst3~combout\);

-- Location: MLABCELL_X39_Y2_N48
\inst7|inst5|inst|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst|inst5~2_combout\ = ( !\inst7|inst5|inst|inst5~1_combout\ & ( !\inst7|inst5|inst|inst~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|inst|ALT_INV_inst~combout\,
	dataf => \inst7|inst5|inst|ALT_INV_inst5~1_combout\,
	combout => \inst7|inst5|inst|inst5~2_combout\);

-- Location: MLABCELL_X39_Y2_N51
\inst7|inst5|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst2|inst3~combout\ = ( \inst7|inst5|inst|inst5~2_combout\ & ( !\DATA1[22]~input_o\ $ (!\DATA2[22]~input_o\ $ (((\DATA1[21]~input_o\ & !\DATA2[21]~input_o\)))) ) ) # ( !\inst7|inst5|inst|inst5~2_combout\ & ( !\DATA1[22]~input_o\ $ 
-- (!\DATA2[22]~input_o\ $ (((!\DATA2[21]~input_o\) # (\DATA1[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011000111001110001100011100101100011100111000110001110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[21]~input_o\,
	datab => \ALT_INV_DATA1[22]~input_o\,
	datac => \ALT_INV_DATA2[21]~input_o\,
	datad => \ALT_INV_DATA2[22]~input_o\,
	dataf => \inst7|inst5|inst|ALT_INV_inst5~2_combout\,
	combout => \inst7|inst5|inst2|inst3~combout\);

-- Location: MLABCELL_X34_Y2_N12
\inst7|inst5|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst3|inst3~combout\ = ( \inst7|inst5|inst2|inst5~0_combout\ & ( !\DATA1[23]~input_o\ $ (!\DATA2[23]~input_o\) ) ) # ( !\inst7|inst5|inst2|inst5~0_combout\ & ( !\DATA1[23]~input_o\ $ (\DATA2[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_DATA2[23]~input_o\,
	dataf => \inst7|inst5|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst7|inst5|inst3|inst3~combout\);

-- Location: MLABCELL_X39_Y4_N42
\inst7|inst3|inst3|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst3|inst3|inst5~2_combout\ = ( !\inst7|inst3|inst3|inst~combout\ & ( !\inst7|inst3|inst3|inst5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst3|inst3|ALT_INV_inst5~1_combout\,
	dataf => \inst7|inst3|inst3|ALT_INV_inst~combout\,
	combout => \inst7|inst3|inst3|inst5~2_combout\);

-- Location: LABCELL_X40_Y4_N33
\inst7|inst3|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst3|inst1|inst5~0_combout\ = (!\inst7|inst3|inst|inst5~0_combout\ & ((!\DATA2[13]~input_o\) # (\DATA1[13]~input_o\))) # (\inst7|inst3|inst|inst5~0_combout\ & (\DATA1[13]~input_o\ & !\DATA2[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010110010101100101011001010110010101100101011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|inst|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA1[13]~input_o\,
	datac => \ALT_INV_DATA2[13]~input_o\,
	combout => \inst7|inst3|inst1|inst5~0_combout\);

-- Location: LABCELL_X30_Y1_N18
\inst7|inst|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst3|inst5~0_combout\ = ( \DATA1[3]~input_o\ & ( (!\DATA2[3]~input_o\) # (!\inst7|inst|inst2|inst5~0_combout\) ) ) # ( !\DATA1[3]~input_o\ & ( (!\DATA2[3]~input_o\ & !\inst7|inst|inst2|inst5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA2[3]~input_o\,
	datad => \inst7|inst|inst2|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA1[3]~input_o\,
	combout => \inst7|inst|inst3|inst5~0_combout\);

-- Location: LABCELL_X30_Y1_N21
\inst7|inst1|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst|inst5~0_combout\ = (!\inst7|inst|inst3|inst5~0_combout\ & (!\DATA2[4]~input_o\ & \DATA1[4]~input_o\)) # (\inst7|inst|inst3|inst5~0_combout\ & ((!\DATA2[4]~input_o\) # (\DATA1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst3|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA2[4]~input_o\,
	datac => \ALT_INV_DATA1[4]~input_o\,
	combout => \inst7|inst1|inst|inst5~0_combout\);

-- Location: LABCELL_X31_Y1_N12
\inst13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = ( \DATA1[2]~input_o\ & ( \DATA1[1]~input_o\ & ( (\DATA2[1]~input_o\ & (\DATA2[2]~input_o\ & (!\DATA2[0]~input_o\ $ (\DATA1[0]~input_o\)))) ) ) ) # ( !\DATA1[2]~input_o\ & ( \DATA1[1]~input_o\ & ( (\DATA2[1]~input_o\ & 
-- (!\DATA2[2]~input_o\ & (!\DATA2[0]~input_o\ $ (\DATA1[0]~input_o\)))) ) ) ) # ( \DATA1[2]~input_o\ & ( !\DATA1[1]~input_o\ & ( (!\DATA2[1]~input_o\ & (\DATA2[2]~input_o\ & (!\DATA2[0]~input_o\ $ (\DATA1[0]~input_o\)))) ) ) ) # ( !\DATA1[2]~input_o\ & ( 
-- !\DATA1[1]~input_o\ & ( (!\DATA2[1]~input_o\ & (!\DATA2[2]~input_o\ & (!\DATA2[0]~input_o\ $ (\DATA1[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[0]~input_o\,
	datab => \ALT_INV_DATA2[1]~input_o\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_DATA2[2]~input_o\,
	datae => \ALT_INV_DATA1[2]~input_o\,
	dataf => \ALT_INV_DATA1[1]~input_o\,
	combout => \inst13~0_combout\);

-- Location: LABCELL_X30_Y1_N54
\inst13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~1_combout\ = ( \DATA1[4]~input_o\ & ( \DATA1[3]~input_o\ & ( (\inst13~0_combout\ & (\DATA2[4]~input_o\ & (!\inst7|inst|inst2|inst5~0_combout\ $ (!\DATA2[3]~input_o\)))) ) ) ) # ( !\DATA1[4]~input_o\ & ( \DATA1[3]~input_o\ & ( (\inst13~0_combout\ & 
-- (!\DATA2[4]~input_o\ & (!\inst7|inst|inst2|inst5~0_combout\ $ (!\DATA2[3]~input_o\)))) ) ) ) # ( \DATA1[4]~input_o\ & ( !\DATA1[3]~input_o\ & ( (\inst13~0_combout\ & ((!\inst7|inst|inst2|inst5~0_combout\ & (!\DATA2[3]~input_o\ & \DATA2[4]~input_o\)) # 
-- (\inst7|inst|inst2|inst5~0_combout\ & (\DATA2[3]~input_o\ & !\DATA2[4]~input_o\)))) ) ) ) # ( !\DATA1[4]~input_o\ & ( !\DATA1[3]~input_o\ & ( (\inst13~0_combout\ & ((!\inst7|inst|inst2|inst5~0_combout\ & (!\DATA2[3]~input_o\ & !\DATA2[4]~input_o\)) # 
-- (\inst7|inst|inst2|inst5~0_combout\ & (\DATA2[3]~input_o\ & \DATA2[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000001000000010010000000010010000000000000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst2|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_inst13~0_combout\,
	datac => \ALT_INV_DATA2[3]~input_o\,
	datad => \ALT_INV_DATA2[4]~input_o\,
	datae => \ALT_INV_DATA1[4]~input_o\,
	dataf => \ALT_INV_DATA1[3]~input_o\,
	combout => \inst13~1_combout\);

-- Location: LABCELL_X31_Y3_N18
\inst13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~2_combout\ = ( \inst13~1_combout\ & ( \DATA2[5]~input_o\ & ( (!\DATA1[5]~input_o\ & (!\inst7|inst1|inst|inst5~0_combout\ & (!\DATA2[6]~input_o\ $ (!\DATA1[6]~input_o\)))) # (\DATA1[5]~input_o\ & (\inst7|inst1|inst|inst5~0_combout\ & 
-- (!\DATA2[6]~input_o\ $ (\DATA1[6]~input_o\)))) ) ) ) # ( \inst13~1_combout\ & ( !\DATA2[5]~input_o\ & ( (!\DATA1[5]~input_o\ & (\inst7|inst1|inst|inst5~0_combout\ & (!\DATA2[6]~input_o\ $ (\DATA1[6]~input_o\)))) # (\DATA1[5]~input_o\ & 
-- (!\inst7|inst1|inst|inst5~0_combout\ & (!\DATA2[6]~input_o\ $ (\DATA1[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000000000011000000000000000000001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[5]~input_o\,
	datab => \inst7|inst1|inst|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_DATA2[6]~input_o\,
	datad => \ALT_INV_DATA1[6]~input_o\,
	datae => \ALT_INV_inst13~1_combout\,
	dataf => \ALT_INV_DATA2[5]~input_o\,
	combout => \inst13~2_combout\);

-- Location: LABCELL_X31_Y3_N15
\inst7|inst1|inst1|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst1|inst5~2_combout\ = ( !\inst7|inst1|inst1|inst~combout\ & ( !\inst7|inst1|inst1|inst5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst1|ALT_INV_inst5~1_combout\,
	dataf => \inst7|inst1|inst1|ALT_INV_inst~combout\,
	combout => \inst7|inst1|inst1|inst5~2_combout\);

-- Location: LABCELL_X31_Y3_N12
\inst7|inst1|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst2|inst5~0_combout\ = ( \DATA2[6]~input_o\ & ( (!\inst7|inst1|inst1|inst5~2_combout\ & \DATA1[6]~input_o\) ) ) # ( !\DATA2[6]~input_o\ & ( (!\inst7|inst1|inst1|inst5~2_combout\) # (\DATA1[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst1|ALT_INV_inst5~2_combout\,
	datad => \ALT_INV_DATA1[6]~input_o\,
	dataf => \ALT_INV_DATA2[6]~input_o\,
	combout => \inst7|inst1|inst2|inst5~0_combout\);

-- Location: LABCELL_X36_Y3_N36
\inst13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~3_combout\ = ( \DATA1[8]~input_o\ & ( \DATA2[8]~input_o\ & ( (\inst13~2_combout\ & ((!\DATA2[7]~input_o\ & (!\inst7|inst1|inst2|inst5~0_combout\ $ (!\DATA1[7]~input_o\))) # (\DATA2[7]~input_o\ & (\inst7|inst1|inst2|inst5~0_combout\ & 
-- \DATA1[7]~input_o\)))) ) ) ) # ( !\DATA1[8]~input_o\ & ( \DATA2[8]~input_o\ & ( (\inst13~2_combout\ & (\DATA2[7]~input_o\ & (!\inst7|inst1|inst2|inst5~0_combout\ & !\DATA1[7]~input_o\))) ) ) ) # ( \DATA1[8]~input_o\ & ( !\DATA2[8]~input_o\ & ( 
-- (\inst13~2_combout\ & (\DATA2[7]~input_o\ & (!\inst7|inst1|inst2|inst5~0_combout\ & !\DATA1[7]~input_o\))) ) ) ) # ( !\DATA1[8]~input_o\ & ( !\DATA2[8]~input_o\ & ( (\inst13~2_combout\ & ((!\DATA2[7]~input_o\ & (!\inst7|inst1|inst2|inst5~0_combout\ $ 
-- (!\DATA1[7]~input_o\))) # (\DATA2[7]~input_o\ & (\inst7|inst1|inst2|inst5~0_combout\ & \DATA1[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000001000100000000000000010000000000000000010001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst13~2_combout\,
	datab => \ALT_INV_DATA2[7]~input_o\,
	datac => \inst7|inst1|inst2|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[7]~input_o\,
	datae => \ALT_INV_DATA1[8]~input_o\,
	dataf => \ALT_INV_DATA2[8]~input_o\,
	combout => \inst13~3_combout\);

-- Location: LABCELL_X37_Y3_N0
\inst7|inst2|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst|inst5~0_combout\ = (!\DATA1[8]~input_o\ & (!\inst7|inst1|inst3|inst5~0_combout\ & !\DATA2[8]~input_o\)) # (\DATA1[8]~input_o\ & ((!\inst7|inst1|inst3|inst5~0_combout\) # (!\DATA2[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101010000111101010101000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[8]~input_o\,
	datac => \inst7|inst1|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA2[8]~input_o\,
	combout => \inst7|inst2|inst|inst5~0_combout\);

-- Location: MLABCELL_X39_Y3_N24
\inst13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~4_combout\ = ( \DATA2[9]~input_o\ & ( \DATA2[10]~input_o\ & ( (\inst13~3_combout\ & ((!\DATA1[9]~input_o\ & (!\DATA1[10]~input_o\ & !\inst7|inst2|inst|inst5~0_combout\)) # (\DATA1[9]~input_o\ & (\DATA1[10]~input_o\ & 
-- \inst7|inst2|inst|inst5~0_combout\)))) ) ) ) # ( !\DATA2[9]~input_o\ & ( \DATA2[10]~input_o\ & ( (\inst13~3_combout\ & (\DATA1[10]~input_o\ & (!\DATA1[9]~input_o\ $ (!\inst7|inst2|inst|inst5~0_combout\)))) ) ) ) # ( \DATA2[9]~input_o\ & ( 
-- !\DATA2[10]~input_o\ & ( (\inst13~3_combout\ & ((!\DATA1[9]~input_o\ & (\DATA1[10]~input_o\ & !\inst7|inst2|inst|inst5~0_combout\)) # (\DATA1[9]~input_o\ & (!\DATA1[10]~input_o\ & \inst7|inst2|inst|inst5~0_combout\)))) ) ) ) # ( !\DATA2[9]~input_o\ & ( 
-- !\DATA2[10]~input_o\ & ( (\inst13~3_combout\ & (!\DATA1[10]~input_o\ & (!\DATA1[9]~input_o\ $ (!\inst7|inst2|inst|inst5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000000100001000000000001000000100010000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[9]~input_o\,
	datab => \ALT_INV_inst13~3_combout\,
	datac => \ALT_INV_DATA1[10]~input_o\,
	datad => \inst7|inst2|inst|ALT_INV_inst5~0_combout\,
	datae => \ALT_INV_DATA2[9]~input_o\,
	dataf => \ALT_INV_DATA2[10]~input_o\,
	combout => \inst13~4_combout\);

-- Location: LABCELL_X37_Y3_N24
\inst7|inst2|inst2|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst2|inst5~2_combout\ = ( !\inst7|inst2|inst2|inst~combout\ & ( !\inst7|inst2|inst2|inst5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst2|inst2|ALT_INV_inst5~1_combout\,
	dataf => \inst7|inst2|inst2|ALT_INV_inst~combout\,
	combout => \inst7|inst2|inst2|inst5~2_combout\);

-- Location: MLABCELL_X39_Y3_N0
\inst13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~5_combout\ = ( \inst7|inst2|inst2|inst5~2_combout\ & ( (\inst13~4_combout\ & (!\DATA1[11]~input_o\ $ (!\DATA2[11]~input_o\))) ) ) # ( !\inst7|inst2|inst2|inst5~2_combout\ & ( (\inst13~4_combout\ & (!\DATA1[11]~input_o\ $ (\DATA2[11]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[11]~input_o\,
	datac => \ALT_INV_inst13~4_combout\,
	datad => \ALT_INV_DATA2[11]~input_o\,
	dataf => \inst7|inst2|inst2|ALT_INV_inst5~2_combout\,
	combout => \inst13~5_combout\);

-- Location: MLABCELL_X39_Y3_N21
\inst7|inst2|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst3|inst5~0_combout\ = ( \DATA2[11]~input_o\ & ( (!\inst7|inst2|inst2|inst5~2_combout\ & \DATA1[11]~input_o\) ) ) # ( !\DATA2[11]~input_o\ & ( (!\inst7|inst2|inst2|inst5~2_combout\) # (\DATA1[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst2|ALT_INV_inst5~2_combout\,
	datac => \ALT_INV_DATA1[11]~input_o\,
	dataf => \ALT_INV_DATA2[11]~input_o\,
	combout => \inst7|inst2|inst3|inst5~0_combout\);

-- Location: LABCELL_X40_Y3_N12
\inst13~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~6_combout\ = ( \inst7|inst2|inst3|inst5~0_combout\ & ( \DATA1[12]~input_o\ & ( (\inst13~5_combout\ & (\DATA2[12]~input_o\ & (!\DATA2[13]~input_o\ $ (\DATA1[13]~input_o\)))) ) ) ) # ( !\inst7|inst2|inst3|inst5~0_combout\ & ( \DATA1[12]~input_o\ & ( 
-- (\inst13~5_combout\ & (!\DATA2[12]~input_o\ & (!\DATA2[13]~input_o\ $ (\DATA1[13]~input_o\)))) ) ) ) # ( \inst7|inst2|inst3|inst5~0_combout\ & ( !\DATA1[12]~input_o\ & ( (\inst13~5_combout\ & (!\DATA2[12]~input_o\ & (!\DATA2[13]~input_o\ $ 
-- (\DATA1[13]~input_o\)))) ) ) ) # ( !\inst7|inst2|inst3|inst5~0_combout\ & ( !\DATA1[12]~input_o\ & ( (\inst13~5_combout\ & (\DATA2[12]~input_o\ & (!\DATA2[13]~input_o\ $ (!\DATA1[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010001000010000000000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[13]~input_o\,
	datab => \ALT_INV_inst13~5_combout\,
	datac => \ALT_INV_DATA1[13]~input_o\,
	datad => \ALT_INV_DATA2[12]~input_o\,
	datae => \inst7|inst2|inst3|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst13~6_combout\);

-- Location: MLABCELL_X39_Y4_N30
\inst13~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~7_combout\ = ( \inst13~6_combout\ & ( \DATA2[14]~input_o\ & ( (!\DATA1[14]~input_o\ & (!\inst7|inst3|inst1|inst5~0_combout\ & (!\DATA2[15]~input_o\ $ (!\DATA1[15]~input_o\)))) # (\DATA1[14]~input_o\ & (\inst7|inst3|inst1|inst5~0_combout\ & 
-- (!\DATA2[15]~input_o\ $ (\DATA1[15]~input_o\)))) ) ) ) # ( \inst13~6_combout\ & ( !\DATA2[14]~input_o\ & ( (!\DATA1[14]~input_o\ & (\inst7|inst3|inst1|inst5~0_combout\ & (!\DATA2[15]~input_o\ $ (\DATA1[15]~input_o\)))) # (\DATA1[14]~input_o\ & 
-- (!\inst7|inst3|inst1|inst5~0_combout\ & (!\DATA2[15]~input_o\ $ (\DATA1[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010000001001000000000000000000010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[14]~input_o\,
	datab => \ALT_INV_DATA2[15]~input_o\,
	datac => \inst7|inst3|inst1|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[15]~input_o\,
	datae => \ALT_INV_inst13~6_combout\,
	dataf => \ALT_INV_DATA2[14]~input_o\,
	combout => \inst13~7_combout\);

-- Location: MLABCELL_X39_Y4_N27
\inst13~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~8_combout\ = ( \DATA2[16]~input_o\ & ( (\inst13~7_combout\ & (!\DATA1[16]~input_o\ $ (!\inst7|inst3|inst3|inst5~2_combout\))) ) ) # ( !\DATA2[16]~input_o\ & ( (\inst13~7_combout\ & (!\DATA1[16]~input_o\ $ (\inst7|inst3|inst3|inst5~2_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100100000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[16]~input_o\,
	datab => \inst7|inst3|inst3|ALT_INV_inst5~2_combout\,
	datac => \ALT_INV_inst13~7_combout\,
	dataf => \ALT_INV_DATA2[16]~input_o\,
	combout => \inst13~8_combout\);

-- Location: MLABCELL_X39_Y4_N24
\inst7|inst4|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst4|inst|inst5~0_combout\ = ( \DATA2[16]~input_o\ & ( (\DATA1[16]~input_o\ & !\inst7|inst3|inst3|inst5~2_combout\) ) ) # ( !\DATA2[16]~input_o\ & ( (!\inst7|inst3|inst3|inst5~2_combout\) # (\DATA1[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[16]~input_o\,
	datab => \inst7|inst3|inst3|ALT_INV_inst5~2_combout\,
	dataf => \ALT_INV_DATA2[16]~input_o\,
	combout => \inst7|inst4|inst|inst5~0_combout\);

-- Location: LABCELL_X37_Y2_N0
\inst13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~9_combout\ = ( \DATA1[18]~input_o\ & ( \DATA2[17]~input_o\ & ( (\inst13~8_combout\ & ((!\DATA1[17]~input_o\ & (!\inst7|inst4|inst|inst5~0_combout\ & !\DATA2[18]~input_o\)) # (\DATA1[17]~input_o\ & (\inst7|inst4|inst|inst5~0_combout\ & 
-- \DATA2[18]~input_o\)))) ) ) ) # ( !\DATA1[18]~input_o\ & ( \DATA2[17]~input_o\ & ( (\inst13~8_combout\ & ((!\DATA1[17]~input_o\ & (!\inst7|inst4|inst|inst5~0_combout\ & \DATA2[18]~input_o\)) # (\DATA1[17]~input_o\ & (\inst7|inst4|inst|inst5~0_combout\ & 
-- !\DATA2[18]~input_o\)))) ) ) ) # ( \DATA1[18]~input_o\ & ( !\DATA2[17]~input_o\ & ( (\inst13~8_combout\ & (\DATA2[18]~input_o\ & (!\DATA1[17]~input_o\ $ (!\inst7|inst4|inst|inst5~0_combout\)))) ) ) ) # ( !\DATA1[18]~input_o\ & ( !\DATA2[17]~input_o\ & ( 
-- (\inst13~8_combout\ & (!\DATA2[18]~input_o\ & (!\DATA1[17]~input_o\ $ (!\inst7|inst4|inst|inst5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000000000001001000000001001000000010000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[17]~input_o\,
	datab => \ALT_INV_inst13~8_combout\,
	datac => \inst7|inst4|inst|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA2[18]~input_o\,
	datae => \ALT_INV_DATA1[18]~input_o\,
	dataf => \ALT_INV_DATA2[17]~input_o\,
	combout => \inst13~9_combout\);

-- Location: LABCELL_X40_Y2_N24
\inst7|inst4|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst4|inst2|inst5~0_combout\ = ( \DATA2[18]~input_o\ & ( (\DATA1[18]~input_o\ & !\inst7|inst4|inst1|inst5~0_combout\) ) ) # ( !\DATA2[18]~input_o\ & ( (!\inst7|inst4|inst1|inst5~0_combout\) # (\DATA1[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[18]~input_o\,
	datac => \inst7|inst4|inst1|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA2[18]~input_o\,
	combout => \inst7|inst4|inst2|inst5~0_combout\);

-- Location: MLABCELL_X39_Y2_N0
\inst13~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~10_combout\ = ( \DATA1[19]~input_o\ & ( \DATA2[19]~input_o\ & ( (\inst13~9_combout\ & (\inst7|inst4|inst2|inst5~0_combout\ & (!\DATA2[20]~input_o\ $ (\DATA1[20]~input_o\)))) ) ) ) # ( !\DATA1[19]~input_o\ & ( \DATA2[19]~input_o\ & ( 
-- (\inst13~9_combout\ & (!\inst7|inst4|inst2|inst5~0_combout\ & (!\DATA2[20]~input_o\ $ (!\DATA1[20]~input_o\)))) ) ) ) # ( \DATA1[19]~input_o\ & ( !\DATA2[19]~input_o\ & ( (\inst13~9_combout\ & (!\inst7|inst4|inst2|inst5~0_combout\ & (!\DATA2[20]~input_o\ 
-- $ (\DATA1[20]~input_o\)))) ) ) ) # ( !\DATA1[19]~input_o\ & ( !\DATA2[19]~input_o\ & ( (\inst13~9_combout\ & (\inst7|inst4|inst2|inst5~0_combout\ & (!\DATA2[20]~input_o\ $ (\DATA1[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001001000010000000000010010000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[20]~input_o\,
	datab => \ALT_INV_inst13~9_combout\,
	datac => \ALT_INV_DATA1[20]~input_o\,
	datad => \inst7|inst4|inst2|ALT_INV_inst5~0_combout\,
	datae => \ALT_INV_DATA1[19]~input_o\,
	dataf => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst13~10_combout\);

-- Location: MLABCELL_X39_Y2_N54
\inst7|inst5|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst1|inst3~combout\ = ( \DATA1[21]~input_o\ & ( !\inst7|inst5|inst|inst5~2_combout\ $ (!\DATA2[21]~input_o\) ) ) # ( !\DATA1[21]~input_o\ & ( !\inst7|inst5|inst|inst5~2_combout\ $ (\DATA2[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|inst|ALT_INV_inst5~2_combout\,
	datad => \ALT_INV_DATA2[21]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst7|inst5|inst1|inst3~combout\);

-- Location: MLABCELL_X39_Y2_N57
\inst13~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~11_combout\ = ( \inst7|inst5|inst1|inst3~combout\ & ( (\inst7|inst6|inst|inst3~combout\ & (\inst7|inst5|inst2|inst3~combout\ & (\inst7|inst5|inst3|inst3~combout\ & \inst13~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst6|inst|ALT_INV_inst3~combout\,
	datab => \inst7|inst5|inst2|ALT_INV_inst3~combout\,
	datac => \inst7|inst5|inst3|ALT_INV_inst3~combout\,
	datad => \ALT_INV_inst13~10_combout\,
	dataf => \inst7|inst5|inst1|ALT_INV_inst3~combout\,
	combout => \inst13~11_combout\);

-- Location: LABCELL_X33_Y2_N24
\inst13~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~12_combout\ = ( \inst13~11_combout\ & ( (\inst7|inst6|inst2|inst3~combout\ & (!\DATA2[25]~input_o\ $ (!\DATA1[25]~input_o\ $ (\inst7|inst6|inst|inst5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000010010000011000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[25]~input_o\,
	datab => \ALT_INV_DATA1[25]~input_o\,
	datac => \inst7|inst6|inst2|ALT_INV_inst3~combout\,
	datad => \inst7|inst6|inst|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_inst13~11_combout\,
	combout => \inst13~12_combout\);

-- Location: LABCELL_X33_Y2_N0
\inst13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~13_combout\ = ( \DATA1[27]~input_o\ & ( \inst13~12_combout\ & ( (!\inst7|inst6|inst2|inst5~0_combout\ & (\DATA2[27]~input_o\ & (!\DATA1[28]~input_o\ $ (\DATA2[28]~input_o\)))) # (\inst7|inst6|inst2|inst5~0_combout\ & (!\DATA2[27]~input_o\ & 
-- (!\DATA1[28]~input_o\ $ (\DATA2[28]~input_o\)))) ) ) ) # ( !\DATA1[27]~input_o\ & ( \inst13~12_combout\ & ( (!\inst7|inst6|inst2|inst5~0_combout\ & (!\DATA2[27]~input_o\ & (!\DATA1[28]~input_o\ $ (\DATA2[28]~input_o\)))) # 
-- (\inst7|inst6|inst2|inst5~0_combout\ & (\DATA2[27]~input_o\ & (!\DATA1[28]~input_o\ $ (!\DATA2[28]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000010000101000100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst6|inst2|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA1[28]~input_o\,
	datac => \ALT_INV_DATA2[28]~input_o\,
	datad => \ALT_INV_DATA2[27]~input_o\,
	datae => \ALT_INV_DATA1[27]~input_o\,
	dataf => \ALT_INV_inst13~12_combout\,
	combout => \inst13~13_combout\);

-- Location: MLABCELL_X34_Y1_N48
inst13 : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~combout\ = ( \inst13~13_combout\ & ( (!\inst7|inst7|inst1|inst3~combout\) # ((!\inst7|inst7|inst3|inst3~combout\) # (!\inst7|inst7|inst1|inst5~0_combout\ $ (\inst|inst7|inst2|inst3~0_combout\))) ) ) # ( !\inst13~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110011111111111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst7|inst1|ALT_INV_inst5~0_combout\,
	datab => \inst|inst7|inst2|ALT_INV_inst3~0_combout\,
	datac => \inst7|inst7|inst1|ALT_INV_inst3~combout\,
	datad => \inst7|inst7|inst3|ALT_INV_inst3~combout\,
	dataf => \ALT_INV_inst13~13_combout\,
	combout => \inst13~combout\);

-- Location: IOIBUF_X30_Y0_N35
\OP[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\OP[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: LABCELL_X31_Y1_N27
\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ = ( !\OP[1]~input_o\ & ( !\OP[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X40_Y2_N39
\inst|inst4|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst5~0_combout\ = ( !\DATA2[19]~input_o\ & ( !\DATA1[19]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[19]~input_o\,
	dataf => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst|inst4|inst3|inst5~0_combout\);

-- Location: LABCELL_X40_Y4_N39
\inst|inst3|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst2|inst5~0_combout\ = ( !\DATA1[14]~input_o\ & ( !\DATA2[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[14]~input_o\,
	dataf => \ALT_INV_DATA1[14]~input_o\,
	combout => \inst|inst3|inst2|inst5~0_combout\);

-- Location: LABCELL_X30_Y1_N30
\inst|inst1|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst5~0_combout\ = (!\DATA1[4]~input_o\ & !\DATA2[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[4]~input_o\,
	datad => \ALT_INV_DATA2[4]~input_o\,
	combout => \inst|inst1|inst|inst5~0_combout\);

-- Location: IOIBUF_X30_Y0_N18
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LABCELL_X31_Y1_N48
\inst|inst|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst5~0_combout\ = ( \DATA2[1]~input_o\ & ( ((!\Cin~input_o\ & (\DATA1[0]~input_o\ & \DATA2[0]~input_o\)) # (\Cin~input_o\ & ((\DATA2[0]~input_o\) # (\DATA1[0]~input_o\)))) # (\DATA1[1]~input_o\) ) ) # ( !\DATA2[1]~input_o\ & ( 
-- (\DATA1[1]~input_o\ & ((!\Cin~input_o\ & (\DATA1[0]~input_o\ & \DATA2[0]~input_o\)) # (\Cin~input_o\ & ((\DATA2[0]~input_o\) # (\DATA1[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100110111011111110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_DATA1[1]~input_o\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_DATA2[0]~input_o\,
	dataf => \ALT_INV_DATA2[1]~input_o\,
	combout => \inst|inst|inst1|inst5~0_combout\);

-- Location: LABCELL_X30_Y1_N6
\inst|inst1|inst|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst5~1_combout\ = ( \DATA2[2]~input_o\ & ( \DATA1[3]~input_o\ & ( (!\inst|inst1|inst|inst5~0_combout\ & (((\inst|inst|inst1|inst5~0_combout\) # (\DATA1[2]~input_o\)) # (\DATA2[3]~input_o\))) ) ) ) # ( !\DATA2[2]~input_o\ & ( 
-- \DATA1[3]~input_o\ & ( (!\inst|inst1|inst|inst5~0_combout\ & (((\DATA1[2]~input_o\ & \inst|inst|inst1|inst5~0_combout\)) # (\DATA2[3]~input_o\))) ) ) ) # ( \DATA2[2]~input_o\ & ( !\DATA1[3]~input_o\ & ( (\DATA2[3]~input_o\ & 
-- (!\inst|inst1|inst|inst5~0_combout\ & ((\inst|inst|inst1|inst5~0_combout\) # (\DATA1[2]~input_o\)))) ) ) ) # ( !\DATA2[2]~input_o\ & ( !\DATA1[3]~input_o\ & ( (\DATA2[3]~input_o\ & (!\inst|inst1|inst|inst5~0_combout\ & (\DATA1[2]~input_o\ & 
-- \inst|inst|inst1|inst5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000001000100010001000100010011000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[3]~input_o\,
	datab => \inst|inst1|inst|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_DATA1[2]~input_o\,
	datad => \inst|inst|inst1|ALT_INV_inst5~0_combout\,
	datae => \ALT_INV_DATA2[2]~input_o\,
	dataf => \ALT_INV_DATA1[3]~input_o\,
	combout => \inst|inst1|inst|inst5~1_combout\);

-- Location: LABCELL_X30_Y3_N45
\inst|inst1|inst|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst~0_combout\ = ( \DATA1[4]~input_o\ & ( \DATA2[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_DATA1[4]~input_o\,
	dataf => \ALT_INV_DATA2[4]~input_o\,
	combout => \inst|inst1|inst|inst~0_combout\);

-- Location: LABCELL_X31_Y3_N54
\inst|inst1|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst2|inst5~0_combout\ = ( !\DATA1[6]~input_o\ & ( \DATA2[6]~input_o\ & ( (!\DATA1[5]~input_o\ & ((!\DATA2[5]~input_o\) # ((!\inst|inst1|inst|inst5~1_combout\ & !\inst|inst1|inst|inst~0_combout\)))) # (\DATA1[5]~input_o\ & 
-- (!\inst|inst1|inst|inst5~1_combout\ & (!\DATA2[5]~input_o\ & !\inst|inst1|inst|inst~0_combout\))) ) ) ) # ( \DATA1[6]~input_o\ & ( !\DATA2[6]~input_o\ & ( (!\DATA1[5]~input_o\ & ((!\DATA2[5]~input_o\) # ((!\inst|inst1|inst|inst5~1_combout\ & 
-- !\inst|inst1|inst|inst~0_combout\)))) # (\DATA1[5]~input_o\ & (!\inst|inst1|inst|inst5~1_combout\ & (!\DATA2[5]~input_o\ & !\inst|inst1|inst|inst~0_combout\))) ) ) ) # ( !\DATA1[6]~input_o\ & ( !\DATA2[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001010000011101000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[5]~input_o\,
	datab => \inst|inst1|inst|ALT_INV_inst5~1_combout\,
	datac => \ALT_INV_DATA2[5]~input_o\,
	datad => \inst|inst1|inst|ALT_INV_inst~0_combout\,
	datae => \ALT_INV_DATA1[6]~input_o\,
	dataf => \ALT_INV_DATA2[6]~input_o\,
	combout => \inst|inst1|inst2|inst5~0_combout\);

-- Location: LABCELL_X37_Y3_N39
\inst|inst2|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|inst5~0_combout\ = ( !\DATA2[9]~input_o\ & ( !\DATA1[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_DATA2[9]~input_o\,
	combout => \inst|inst2|inst1|inst5~0_combout\);

-- Location: LABCELL_X36_Y3_N12
\inst|inst2|inst1|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|inst5~1_combout\ = ( \DATA1[7]~input_o\ & ( \DATA2[8]~input_o\ & ( (!\inst|inst2|inst1|inst5~0_combout\ & (((!\inst|inst1|inst2|inst5~0_combout\) # (\DATA2[7]~input_o\)) # (\DATA1[8]~input_o\))) ) ) ) # ( !\DATA1[7]~input_o\ & ( 
-- \DATA2[8]~input_o\ & ( (!\inst|inst2|inst1|inst5~0_combout\ & (((!\inst|inst1|inst2|inst5~0_combout\ & \DATA2[7]~input_o\)) # (\DATA1[8]~input_o\))) ) ) ) # ( \DATA1[7]~input_o\ & ( !\DATA2[8]~input_o\ & ( (\DATA1[8]~input_o\ & 
-- (!\inst|inst2|inst1|inst5~0_combout\ & ((!\inst|inst1|inst2|inst5~0_combout\) # (\DATA2[7]~input_o\)))) ) ) ) # ( !\DATA1[7]~input_o\ & ( !\DATA2[8]~input_o\ & ( (\DATA1[8]~input_o\ & (!\inst|inst1|inst2|inst5~0_combout\ & 
-- (!\inst|inst2|inst1|inst5~0_combout\ & \DATA2[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000010000000101000001010000110100001101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[8]~input_o\,
	datab => \inst|inst1|inst2|ALT_INV_inst5~0_combout\,
	datac => \inst|inst2|inst1|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA2[7]~input_o\,
	datae => \ALT_INV_DATA1[7]~input_o\,
	dataf => \ALT_INV_DATA2[8]~input_o\,
	combout => \inst|inst2|inst1|inst5~1_combout\);

-- Location: MLABCELL_X39_Y3_N18
\inst|inst2|inst1|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|inst~0_combout\ = (\DATA1[9]~input_o\ & \DATA2[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[9]~input_o\,
	datad => \ALT_INV_DATA2[9]~input_o\,
	combout => \inst|inst2|inst1|inst~0_combout\);

-- Location: MLABCELL_X39_Y3_N6
\inst|inst2|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst3|inst5~0_combout\ = ( \DATA2[11]~input_o\ & ( \DATA2[10]~input_o\ & ( (!\DATA1[10]~input_o\ & (!\inst|inst2|inst1|inst5~1_combout\ & (!\inst|inst2|inst1|inst~0_combout\ & !\DATA1[11]~input_o\))) ) ) ) # ( !\DATA2[11]~input_o\ & ( 
-- \DATA2[10]~input_o\ & ( (!\DATA1[11]~input_o\) # ((!\DATA1[10]~input_o\ & (!\inst|inst2|inst1|inst5~1_combout\ & !\inst|inst2|inst1|inst~0_combout\))) ) ) ) # ( \DATA2[11]~input_o\ & ( !\DATA2[10]~input_o\ & ( (!\DATA1[11]~input_o\ & 
-- ((!\DATA1[10]~input_o\) # ((!\inst|inst2|inst1|inst5~1_combout\ & !\inst|inst2|inst1|inst~0_combout\)))) ) ) ) # ( !\DATA2[11]~input_o\ & ( !\DATA2[10]~input_o\ & ( (!\DATA1[10]~input_o\) # ((!\DATA1[11]~input_o\) # ((!\inst|inst2|inst1|inst5~1_combout\ & 
-- !\inst|inst2|inst1|inst~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101010111010100000000011111111100000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[10]~input_o\,
	datab => \inst|inst2|inst1|ALT_INV_inst5~1_combout\,
	datac => \inst|inst2|inst1|ALT_INV_inst~0_combout\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	datae => \ALT_INV_DATA2[11]~input_o\,
	dataf => \ALT_INV_DATA2[10]~input_o\,
	combout => \inst|inst2|inst3|inst5~0_combout\);

-- Location: LABCELL_X40_Y3_N18
\inst|inst3|inst2|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst2|inst5~1_combout\ = ( \inst|inst2|inst3|inst5~0_combout\ & ( \DATA1[12]~input_o\ & ( (!\inst|inst3|inst2|inst5~0_combout\ & ((!\DATA2[13]~input_o\ & (\DATA1[13]~input_o\ & \DATA2[12]~input_o\)) # (\DATA2[13]~input_o\ & 
-- ((\DATA2[12]~input_o\) # (\DATA1[13]~input_o\))))) ) ) ) # ( !\inst|inst2|inst3|inst5~0_combout\ & ( \DATA1[12]~input_o\ & ( (!\inst|inst3|inst2|inst5~0_combout\ & ((\DATA1[13]~input_o\) # (\DATA2[13]~input_o\))) ) ) ) # ( 
-- \inst|inst2|inst3|inst5~0_combout\ & ( !\DATA1[12]~input_o\ & ( (\DATA2[13]~input_o\ & (!\inst|inst3|inst2|inst5~0_combout\ & \DATA1[13]~input_o\)) ) ) ) # ( !\inst|inst2|inst3|inst5~0_combout\ & ( !\DATA1[12]~input_o\ & ( 
-- (!\inst|inst3|inst2|inst5~0_combout\ & ((!\DATA2[13]~input_o\ & (\DATA1[13]~input_o\ & \DATA2[12]~input_o\)) # (\DATA2[13]~input_o\ & ((\DATA2[12]~input_o\) # (\DATA1[13]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000000010001001100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[13]~input_o\,
	datab => \inst|inst3|inst2|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_DATA1[13]~input_o\,
	datad => \ALT_INV_DATA2[12]~input_o\,
	datae => \inst|inst2|inst3|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst|inst3|inst2|inst5~1_combout\);

-- Location: LABCELL_X40_Y4_N36
\inst|inst3|inst2|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst2|inst~0_combout\ = ( \DATA1[14]~input_o\ & ( \DATA2[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[14]~input_o\,
	dataf => \ALT_INV_DATA1[14]~input_o\,
	combout => \inst|inst3|inst2|inst~0_combout\);

-- Location: MLABCELL_X39_Y4_N6
\inst|inst4|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst|inst5~0_combout\ = ( \inst|inst3|inst2|inst~0_combout\ & ( \DATA2[15]~input_o\ & ( (!\DATA1[16]~input_o\ & !\DATA2[16]~input_o\) ) ) ) # ( !\inst|inst3|inst2|inst~0_combout\ & ( \DATA2[15]~input_o\ & ( (!\DATA1[16]~input_o\ & 
-- ((!\DATA2[16]~input_o\) # ((!\inst|inst3|inst2|inst5~1_combout\ & !\DATA1[15]~input_o\)))) # (\DATA1[16]~input_o\ & (!\inst|inst3|inst2|inst5~1_combout\ & (!\DATA1[15]~input_o\ & !\DATA2[16]~input_o\))) ) ) ) # ( \inst|inst3|inst2|inst~0_combout\ & ( 
-- !\DATA2[15]~input_o\ & ( (!\DATA1[16]~input_o\ & ((!\DATA1[15]~input_o\) # (!\DATA2[16]~input_o\))) # (\DATA1[16]~input_o\ & (!\DATA1[15]~input_o\ & !\DATA2[16]~input_o\)) ) ) ) # ( !\inst|inst3|inst2|inst~0_combout\ & ( !\DATA2[15]~input_o\ & ( 
-- (!\DATA1[16]~input_o\ & ((!\inst|inst3|inst2|inst5~1_combout\) # ((!\DATA1[15]~input_o\) # (!\DATA2[16]~input_o\)))) # (\DATA1[16]~input_o\ & (!\DATA2[16]~input_o\ & ((!\inst|inst3|inst2|inst5~1_combout\) # (!\DATA1[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101000111110101010000011101010100000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[16]~input_o\,
	datab => \inst|inst3|inst2|ALT_INV_inst5~1_combout\,
	datac => \ALT_INV_DATA1[15]~input_o\,
	datad => \ALT_INV_DATA2[16]~input_o\,
	datae => \inst|inst3|inst2|ALT_INV_inst~0_combout\,
	dataf => \ALT_INV_DATA2[15]~input_o\,
	combout => \inst|inst4|inst|inst5~0_combout\);

-- Location: LABCELL_X37_Y2_N36
\inst|inst4|inst3|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst5~1_combout\ = ( \DATA1[18]~input_o\ & ( \DATA2[17]~input_o\ & ( (!\inst|inst4|inst3|inst5~0_combout\ & ((!\inst|inst4|inst|inst5~0_combout\) # ((\DATA2[18]~input_o\) # (\DATA1[17]~input_o\)))) ) ) ) # ( !\DATA1[18]~input_o\ & ( 
-- \DATA2[17]~input_o\ & ( (!\inst|inst4|inst3|inst5~0_combout\ & (\DATA2[18]~input_o\ & ((!\inst|inst4|inst|inst5~0_combout\) # (\DATA1[17]~input_o\)))) ) ) ) # ( \DATA1[18]~input_o\ & ( !\DATA2[17]~input_o\ & ( (!\inst|inst4|inst3|inst5~0_combout\ & 
-- (((!\inst|inst4|inst|inst5~0_combout\ & \DATA1[17]~input_o\)) # (\DATA2[18]~input_o\))) ) ) ) # ( !\DATA1[18]~input_o\ & ( !\DATA2[17]~input_o\ & ( (!\inst|inst4|inst3|inst5~0_combout\ & (!\inst|inst4|inst|inst5~0_combout\ & (\DATA1[17]~input_o\ & 
-- \DATA2[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010001010101000000000100010101000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst3|ALT_INV_inst5~0_combout\,
	datab => \inst|inst4|inst|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_DATA1[17]~input_o\,
	datad => \ALT_INV_DATA2[18]~input_o\,
	datae => \ALT_INV_DATA1[18]~input_o\,
	dataf => \ALT_INV_DATA2[17]~input_o\,
	combout => \inst|inst4|inst3|inst5~1_combout\);

-- Location: LABCELL_X40_Y2_N0
\inst|inst4|inst3|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst~0_combout\ = ( \DATA2[19]~input_o\ & ( \DATA1[19]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA1[19]~input_o\,
	dataf => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst|inst4|inst3|inst~0_combout\);

-- Location: MLABCELL_X39_Y2_N36
\inst|inst5|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst5|inst1|inst5~0_combout\ = ( \inst|inst4|inst3|inst~0_combout\ & ( \DATA1[21]~input_o\ & ( ((\DATA1[20]~input_o\) # (\DATA2[20]~input_o\)) # (\DATA2[21]~input_o\) ) ) ) # ( !\inst|inst4|inst3|inst~0_combout\ & ( \DATA1[21]~input_o\ & ( 
-- ((!\inst|inst4|inst3|inst5~1_combout\ & (\DATA2[20]~input_o\ & \DATA1[20]~input_o\)) # (\inst|inst4|inst3|inst5~1_combout\ & ((\DATA1[20]~input_o\) # (\DATA2[20]~input_o\)))) # (\DATA2[21]~input_o\) ) ) ) # ( \inst|inst4|inst3|inst~0_combout\ & ( 
-- !\DATA1[21]~input_o\ & ( (\DATA2[21]~input_o\ & ((\DATA1[20]~input_o\) # (\DATA2[20]~input_o\))) ) ) ) # ( !\inst|inst4|inst3|inst~0_combout\ & ( !\DATA1[21]~input_o\ & ( (\DATA2[21]~input_o\ & ((!\inst|inst4|inst3|inst5~1_combout\ & (\DATA2[20]~input_o\ 
-- & \DATA1[20]~input_o\)) # (\inst|inst4|inst3|inst5~1_combout\ & ((\DATA1[20]~input_o\) # (\DATA2[20]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000110011001100110111011111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst3|ALT_INV_inst5~1_combout\,
	datab => \ALT_INV_DATA2[21]~input_o\,
	datac => \ALT_INV_DATA2[20]~input_o\,
	datad => \ALT_INV_DATA1[20]~input_o\,
	datae => \inst|inst4|inst3|ALT_INV_inst~0_combout\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst|inst5|inst1|inst5~0_combout\);

-- Location: MLABCELL_X34_Y2_N24
\inst|inst5|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst5|inst3|inst5~0_combout\ = ( \DATA2[22]~input_o\ & ( (!\DATA1[23]~input_o\ & (\DATA2[23]~input_o\ & ((\inst|inst5|inst1|inst5~0_combout\) # (\DATA1[22]~input_o\)))) # (\DATA1[23]~input_o\ & (((\DATA2[23]~input_o\) # 
-- (\inst|inst5|inst1|inst5~0_combout\)) # (\DATA1[22]~input_o\))) ) ) # ( !\DATA2[22]~input_o\ & ( (!\DATA1[23]~input_o\ & (\DATA1[22]~input_o\ & (\inst|inst5|inst1|inst5~0_combout\ & \DATA2[23]~input_o\))) # (\DATA1[23]~input_o\ & (((\DATA1[22]~input_o\ & 
-- \inst|inst5|inst1|inst5~0_combout\)) # (\DATA2[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_DATA1[22]~input_o\,
	datac => \inst|inst5|inst1|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA2[23]~input_o\,
	dataf => \ALT_INV_DATA2[22]~input_o\,
	combout => \inst|inst5|inst3|inst5~0_combout\);

-- Location: MLABCELL_X34_Y2_N21
\inst|inst6|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst6|inst1|inst5~0_combout\ = ( \DATA2[24]~input_o\ & ( (!\DATA2[25]~input_o\ & (\DATA1[25]~input_o\ & ((\DATA1[24]~input_o\) # (\inst|inst5|inst3|inst5~0_combout\)))) # (\DATA2[25]~input_o\ & (((\DATA1[25]~input_o\) # (\DATA1[24]~input_o\)) # 
-- (\inst|inst5|inst3|inst5~0_combout\))) ) ) # ( !\DATA2[24]~input_o\ & ( (!\DATA2[25]~input_o\ & (\inst|inst5|inst3|inst5~0_combout\ & (\DATA1[24]~input_o\ & \DATA1[25]~input_o\))) # (\DATA2[25]~input_o\ & (((\inst|inst5|inst3|inst5~0_combout\ & 
-- \DATA1[24]~input_o\)) # (\DATA1[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst3|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA1[24]~input_o\,
	datac => \ALT_INV_DATA2[25]~input_o\,
	datad => \ALT_INV_DATA1[25]~input_o\,
	dataf => \ALT_INV_DATA2[24]~input_o\,
	combout => \inst|inst6|inst1|inst5~0_combout\);

-- Location: LABCELL_X33_Y2_N36
\inst|inst6|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst6|inst3|inst5~0_combout\ = ( \DATA2[27]~input_o\ & ( ((!\DATA1[26]~input_o\ & (\DATA2[26]~input_o\ & \inst|inst6|inst1|inst5~0_combout\)) # (\DATA1[26]~input_o\ & ((\inst|inst6|inst1|inst5~0_combout\) # (\DATA2[26]~input_o\)))) # 
-- (\DATA1[27]~input_o\) ) ) # ( !\DATA2[27]~input_o\ & ( (\DATA1[27]~input_o\ & ((!\DATA1[26]~input_o\ & (\DATA2[26]~input_o\ & \inst|inst6|inst1|inst5~0_combout\)) # (\DATA1[26]~input_o\ & ((\inst|inst6|inst1|inst5~0_combout\) # (\DATA2[26]~input_o\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[26]~input_o\,
	datab => \ALT_INV_DATA2[26]~input_o\,
	datac => \inst|inst6|inst1|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[27]~input_o\,
	dataf => \ALT_INV_DATA2[27]~input_o\,
	combout => \inst|inst6|inst3|inst5~0_combout\);

-- Location: MLABCELL_X34_Y4_N57
\inst|inst7|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|inst5~0_combout\ = ( \DATA2[29]~input_o\ & ( ((!\DATA2[28]~input_o\ & (\DATA1[28]~input_o\ & \inst|inst6|inst3|inst5~0_combout\)) # (\DATA2[28]~input_o\ & ((\inst|inst6|inst3|inst5~0_combout\) # (\DATA1[28]~input_o\)))) # 
-- (\DATA1[29]~input_o\) ) ) # ( !\DATA2[29]~input_o\ & ( (\DATA1[29]~input_o\ & ((!\DATA2[28]~input_o\ & (\DATA1[28]~input_o\ & \inst|inst6|inst3|inst5~0_combout\)) # (\DATA2[28]~input_o\ & ((\inst|inst6|inst3|inst5~0_combout\) # (\DATA1[28]~input_o\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[28]~input_o\,
	datab => \ALT_INV_DATA1[28]~input_o\,
	datac => \inst|inst6|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[29]~input_o\,
	dataf => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst|inst7|inst1|inst5~0_combout\);

-- Location: MLABCELL_X34_Y1_N39
\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~0_combout\ = ( \DATA2[31]~input_o\ & ( (\DATA1[31]~input_o\ & ((!\DATA2[30]~input_o\ & ((!\DATA1[30]~input_o\) # (!\inst|inst7|inst1|inst5~0_combout\))) # (\DATA2[30]~input_o\ & (!\DATA1[30]~input_o\ & 
-- !\inst|inst7|inst1|inst5~0_combout\)))) ) ) # ( !\DATA2[31]~input_o\ & ( (!\DATA1[31]~input_o\ & ((!\DATA2[30]~input_o\ & (\DATA1[30]~input_o\ & \inst|inst7|inst1|inst5~0_combout\)) # (\DATA2[30]~input_o\ & ((\inst|inst7|inst1|inst5~0_combout\) # 
-- (\DATA1[30]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000101110000000000000000111010000000000011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[30]~input_o\,
	datab => \ALT_INV_DATA1[30]~input_o\,
	datac => \inst|inst7|inst1|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[31]~input_o\,
	dataf => \ALT_INV_DATA2[31]~input_o\,
	combout => \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X40_Y0_N35
\OP[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: LABCELL_X33_Y1_N12
\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~2_combout\ = ( \OP[0]~input_o\ & ( \inst7|inst7|inst2|inst5~2_combout\ & ( (!\DATA1[31]~input_o\ & (\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & \DATA2[31]~input_o\)) ) ) ) # ( 
-- !\OP[0]~input_o\ & ( \inst7|inst7|inst2|inst5~2_combout\ & ( (\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~0_combout\) ) ) ) # ( \OP[0]~input_o\ & ( !\inst7|inst7|inst2|inst5~2_combout\ 
-- & ( (\DATA1[31]~input_o\ & (\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & !\DATA2[31]~input_o\)) ) ) ) # ( !\OP[0]~input_o\ & ( !\inst7|inst7|inst2|inst5~2_combout\ & ( (\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & 
-- \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000100000001000000000000001100110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[31]~input_o\,
	datab => \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\,
	datac => \ALT_INV_DATA2[31]~input_o\,
	datad => \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst7|inst7|inst2|ALT_INV_inst5~2_combout\,
	combout => \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~2_combout\);

-- Location: MLABCELL_X34_Y4_N48
\inst2|auto_generated|l3_w30_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ = (!\OP[1]~input_o\ & !\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X35_Y1_N6
\inst2|auto_generated|l3_w30_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ = (!\OP[2]~input_o\ & !\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~4_combout\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\);

-- Location: LABCELL_X30_Y1_N33
\inst2|auto_generated|l3_w30_n0_mux_dataout~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ = ( \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ ) ) # ( !\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\,
	dataf => \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\);

-- Location: MLABCELL_X34_Y1_N30
\inst2|auto_generated|l3_w31_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w31_n0_mux_dataout~3_combout\ = ( \DATA1[30]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA2[31]~input_o\ $ (((\DATA2[30]~input_o\) # (\inst|inst7|inst1|inst5~0_combout\))))) ) ) # ( 
-- !\DATA1[30]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA2[31]~input_o\ $ (((\inst|inst7|inst1|inst5~0_combout\ & \DATA2[30]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100100000000101010010000000010010101000000001001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[31]~input_o\,
	datab => \inst|inst7|inst1|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_DATA2[30]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst2|auto_generated|l3_w31_n0_mux_dataout~3_combout\);

-- Location: IOIBUF_X32_Y0_N1
\SHAMT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(1),
	o => \SHAMT[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\SHAMT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(0),
	o => \SHAMT[0]~input_o\);

-- Location: LABCELL_X36_Y2_N30
\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\ = ( \DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( ((!\SHAMT[0]~input_o\ & (\DATA1[23]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[22]~input_o\)))) # (\SHAMT[1]~input_o\) ) ) ) # ( 
-- !\DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & (\DATA1[23]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[22]~input_o\))))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)))) ) ) ) # ( \DATA1[20]~input_o\ & ( 
-- !\DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & (\DATA1[23]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[22]~input_o\))))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)))) ) ) ) # ( !\DATA1[20]~input_o\ & ( !\DATA1[21]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & (\DATA1[23]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[22]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[22]~input_o\,
	datae => \ALT_INV_DATA1[20]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y4_N30
\inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\ = ( \DATA1[1]~input_o\ & ( \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[2]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[0]~input_o\))) ) ) ) # ( !\DATA1[1]~input_o\ & ( 
-- \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[2]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[0]~input_o\))) ) ) ) # ( \DATA1[1]~input_o\ & ( !\SHAMT[0]~input_o\ & ( (\SHAMT[1]~input_o\) # (\DATA1[3]~input_o\) ) ) ) # ( !\DATA1[1]~input_o\ & ( 
-- !\SHAMT[0]~input_o\ & ( (\DATA1[3]~input_o\ & !\SHAMT[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[3]~input_o\,
	datab => \ALT_INV_DATA1[2]~input_o\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_SHAMT[1]~input_o\,
	datae => \ALT_INV_DATA1[1]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\);

-- Location: IOIBUF_X32_Y0_N35
\SHAMT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(3),
	o => \SHAMT[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\SHAMT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(2),
	o => \SHAMT[2]~input_o\);

-- Location: LABCELL_X31_Y2_N30
\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\ = ( \DATA1[7]~input_o\ & ( \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((\DATA1[6]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[4]~input_o\)) ) ) ) # ( !\DATA1[7]~input_o\ & ( 
-- \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((\DATA1[6]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[4]~input_o\)) ) ) ) # ( \DATA1[7]~input_o\ & ( !\SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\) # (\DATA1[5]~input_o\) ) ) ) # ( !\DATA1[7]~input_o\ & ( 
-- !\SHAMT[0]~input_o\ & ( (\SHAMT[1]~input_o\ & \DATA1[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[1]~input_o\,
	datab => \ALT_INV_DATA1[4]~input_o\,
	datac => \ALT_INV_DATA1[5]~input_o\,
	datad => \ALT_INV_DATA1[6]~input_o\,
	datae => \ALT_INV_DATA1[7]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y4_N36
\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ = ( \DATA1[9]~input_o\ & ( \DATA1[11]~input_o\ & ( (!\SHAMT[0]~input_o\) # ((!\SHAMT[1]~input_o\ & (\DATA1[10]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[8]~input_o\)))) ) ) ) # ( 
-- !\DATA1[9]~input_o\ & ( \DATA1[11]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)))) # (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[10]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[8]~input_o\))))) ) ) ) # ( \DATA1[9]~input_o\ & ( 
-- !\DATA1[11]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)))) # (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[10]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[8]~input_o\))))) ) ) ) # ( !\DATA1[9]~input_o\ & ( !\DATA1[11]~input_o\ & ( 
-- (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[10]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[8]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[10]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[8]~input_o\,
	datae => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_DATA1[11]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y4_N0
\inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ = ( \DATA1[15]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # (\DATA1[13]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # 
-- (\DATA1[14]~input_o\))) ) ) ) # ( !\DATA1[15]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\ & \DATA1[13]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # (\DATA1[14]~input_o\))) ) ) ) # ( 
-- \DATA1[15]~input_o\ & ( !\DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # (\DATA1[13]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[14]~input_o\ & (!\SHAMT[1]~input_o\))) ) ) ) # ( !\DATA1[15]~input_o\ & ( !\DATA1[12]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\ & \DATA1[13]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[14]~input_o\ & (!\SHAMT[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[14]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[13]~input_o\,
	datae => \ALT_INV_DATA1[15]~input_o\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y3_N12
\inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\) # ((!\SHAMT[2]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ & ( 
-- \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((!\SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\)))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & 
-- (((\SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\))) # 
-- (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n7_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[3]~input_o\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n6_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n5_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n4_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0_combout\);

-- Location: IOIBUF_X38_Y0_N1
\SHAMT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(4),
	o => \SHAMT[4]~input_o\);

-- Location: MLABCELL_X34_Y3_N54
\inst2|auto_generated|l3_w30_n0_mux_dataout~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ = (!\SHAMT[4]~input_o\ & ((!\SHAMT[3]~input_o\) # (\SHAMT[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[4]~input_o\,
	datab => \ALT_INV_SHAMT[3]~input_o\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\);

-- Location: MLABCELL_X34_Y3_N57
\inst2|auto_generated|l3_w30_n0_mux_dataout~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ = ( !\SHAMT[4]~input_o\ & ( \SHAMT[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHAMT[3]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\);

-- Location: LABCELL_X37_Y2_N12
\inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ = ( \DATA1[18]~input_o\ & ( \DATA1[16]~input_o\ & ( ((!\SHAMT[1]~input_o\ & ((\DATA1[19]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[17]~input_o\))) # (\SHAMT[0]~input_o\) ) ) ) # ( 
-- !\DATA1[18]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\ & \DATA1[19]~input_o\)))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)) # (\DATA1[17]~input_o\))) ) ) ) # ( \DATA1[18]~input_o\ & ( !\DATA1[16]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (((\DATA1[19]~input_o\) # (\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & (\DATA1[17]~input_o\ & (!\SHAMT[0]~input_o\))) ) ) ) # ( !\DATA1[18]~input_o\ & ( !\DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & 
-- ((\DATA1[19]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[17]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[19]~input_o\,
	datae => \ALT_INV_DATA1[18]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y2_N6
\inst2|auto_generated|l3_w30_n0_mux_dataout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ = (!\SHAMT[2]~input_o\ & ((!\SHAMT[1]~input_o\) # (\SHAMT[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[1]~input_o\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\);

-- Location: LABCELL_X35_Y2_N9
\inst2|auto_generated|l3_w30_n0_mux_dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ = (\SHAMT[1]~input_o\ & !\SHAMT[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[1]~input_o\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\);

-- Location: LABCELL_X35_Y4_N0
\inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\ = ( \DATA1[24]~input_o\ & ( \DATA1[26]~input_o\ & ( ((!\SHAMT[1]~input_o\ & (\DATA1[27]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[25]~input_o\)))) # (\SHAMT[0]~input_o\) ) ) ) # ( 
-- !\DATA1[24]~input_o\ & ( \DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[27]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[25]~input_o\))))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)))) ) ) ) # ( \DATA1[24]~input_o\ & ( 
-- !\DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[27]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[25]~input_o\))))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)))) ) ) ) # ( !\DATA1[24]~input_o\ & ( !\DATA1[26]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[27]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[25]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[27]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[25]~input_o\,
	datae => \ALT_INV_DATA1[24]~input_o\,
	dataf => \ALT_INV_DATA1[26]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y3_N48
\inst2|auto_generated|l3_w31_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w31_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\ & ( \DATA1[29]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\) # 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\DATA1[30]~input_o\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[28]~input_o\)))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\ & ( 
-- \DATA1[29]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & (((\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\DATA1[30]~input_o\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[28]~input_o\))))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\ & ( 
-- !\DATA1[29]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\DATA1[30]~input_o\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[28]~input_o\))))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\ & ( 
-- !\DATA1[29]~input_o\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\DATA1[30]~input_o\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[28]~input_o\))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[30]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\,
	datac => \ALT_INV_DATA1[28]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n1_mux_dataout~0_combout\,
	dataf => \ALT_INV_DATA1[29]~input_o\,
	combout => \inst2|auto_generated|l3_w31_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y3_N0
\inst2|auto_generated|l3_w31_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w31_n0_mux_dataout~1_combout\ = ( \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w31_n0_mux_dataout~0_combout\ & ( ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- ((\inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\) ) ) 
-- ) # ( !\inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w31_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- ((\inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & 
-- (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( !\inst2|auto_generated|l3_w31_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ 
-- & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\)))) 
-- # (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (((\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( !\inst2|auto_generated|l3_w31_n0_mux_dataout~0_combout\ 
-- & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n2_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l4_w31_n1_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n3_mux_dataout~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w31_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X33_Y1_N30
\inst2|auto_generated|l3_w31_n0_mux_dataout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w31_n0_mux_dataout~6_combout\ = ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & ((((\OP[1]~input_o\ & !\DATA1[31]~input_o\))))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\ & (((\inst2|auto_generated|l3_w31_n0_mux_dataout~1_combout\)))) # 
-- (\OP[1]~input_o\ & (\DATA2[31]~input_o\)))) ) ) # ( \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (!\DATA1[31]~input_o\ $ (((!\OP[1]~input_o\ & (!\DATA2[31]~input_o\ $ (!\inst7|inst7|inst2|inst5~2_combout\))))))) # (\OP[2]~input_o\ & (\DATA2[31]~input_o\ & 
-- (((\OP[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111011101100001001101110100000011000100010100100000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[31]~input_o\,
	datab => \ALT_INV_OP[2]~input_o\,
	datac => \inst7|inst7|inst2|ALT_INV_inst5~2_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_DATA1[31]~input_o\,
	datag => \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w31_n0_mux_dataout~6_combout\);

-- Location: MLABCELL_X34_Y3_N36
\inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\ = (!\SHAMT[3]~input_o\ & (!\SHAMT[1]~input_o\ & !\SHAMT[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHAMT[3]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N33
\inst2|auto_generated|l3_w30_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~0_combout\ = ( !\SHAMT[4]~input_o\ & ( \inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N9
\inst2|auto_generated|l3_w30_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~0_combout\ & ( (!\OP[1]~input_o\ & !\SHAMT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X33_Y1_N18
\inst2|auto_generated|l3_w30_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ = ( \inst7|inst7|inst2|inst5~1_combout\ & ( \DATA1[31]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ & ((!\DATA2[31]~input_o\) # (!\OP[1]~input_o\))) ) ) ) # ( 
-- !\inst7|inst7|inst2|inst5~1_combout\ & ( \DATA1[31]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ & ((!\DATA2[31]~input_o\) # ((!\inst7|inst7|inst2|inst~combout\) # (!\OP[1]~input_o\)))) ) ) ) # ( 
-- \inst7|inst7|inst2|inst5~1_combout\ & ( !\DATA1[31]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ & !\OP[1]~input_o\) ) ) ) # ( !\inst7|inst7|inst2|inst5~1_combout\ & ( !\DATA1[31]~input_o\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ & ((!\OP[1]~input_o\) # ((!\DATA2[31]~input_o\ & !\inst7|inst7|inst2|inst~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000110011000000000011001100110010001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[31]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~1_combout\,
	datac => \inst7|inst7|inst2|ALT_INV_inst~combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \inst7|inst7|inst2|ALT_INV_inst5~1_combout\,
	dataf => \ALT_INV_DATA1[31]~input_o\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X33_Y1_N24
\inst2|auto_generated|l3_w30_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & ( (\OP[1]~input_o\ & (!\OP[2]~input_o\ & \OP[0]~input_o\)) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & ( 
-- (!\OP[1]~input_o\ & (\OP[2]~input_o\ & !\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\OP[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X34_Y1_N12
\inst2|auto_generated|l3_w31_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w31_n0_mux_dataout~2_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( \DATA1[30]~input_o\ & ( (!\DATA1[31]~input_o\ & (!\DATA2[31]~input_o\ $ (((!\inst|inst7|inst1|inst5~0_combout\ & 
-- !\DATA2[30]~input_o\))))) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA1[30]~input_o\ & ( (!\DATA1[31]~input_o\ & (!\DATA2[31]~input_o\ $ (((!\inst|inst7|inst1|inst5~0_combout\) # (!\DATA2[30]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011000000000000000000000000001101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[31]~input_o\,
	datab => \inst|inst7|inst1|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_DATA2[30]~input_o\,
	datad => \ALT_INV_DATA1[31]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst2|auto_generated|l3_w31_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X33_Y1_N36
\inst2|auto_generated|l3_w31_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w31_n0_mux_dataout~4_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ & ( (!\OP[2]~input_o\ & (!\DATA2[31]~input_o\ & (\OP[1]~input_o\))) # (\OP[2]~input_o\ & (((\OP[0]~input_o\)))) ) ) # ( 
-- !\inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ & ( (!\DATA2[31]~input_o\ & (\OP[1]~input_o\ & !\OP[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001011110010000000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[31]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w31_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X33_Y1_N0
\inst2|auto_generated|l3_w31_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\ = ( \inst2|auto_generated|l3_w31_n0_mux_dataout~4_combout\ & ( \DATA1[31]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w31_n0_mux_dataout~4_combout\ & ( \DATA1[31]~input_o\ & ( 
-- (((\inst2|auto_generated|l3_w31_n0_mux_dataout~2_combout\) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\)) # (\inst2|auto_generated|l3_w31_n0_mux_dataout~6_combout\)) # (\inst2|auto_generated|l3_w31_n0_mux_dataout~3_combout\) ) ) ) # ( 
-- \inst2|auto_generated|l3_w31_n0_mux_dataout~4_combout\ & ( !\DATA1[31]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\ & ((\inst2|auto_generated|l3_w31_n0_mux_dataout~2_combout\) # 
-- (\inst2|auto_generated|l3_w31_n0_mux_dataout~6_combout\))) ) ) ) # ( !\inst2|auto_generated|l3_w31_n0_mux_dataout~4_combout\ & ( !\DATA1[31]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\ & 
-- ((\inst2|auto_generated|l3_w31_n0_mux_dataout~2_combout\) # (\inst2|auto_generated|l3_w31_n0_mux_dataout~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~3_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~6_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~3_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~2_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~4_combout\,
	dataf => \ALT_INV_DATA1[31]~input_o\,
	combout => \inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\);

-- Location: LABCELL_X35_Y4_N36
\inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ = ( \DATA1[23]~input_o\ & ( \DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # (\DATA1[24]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # 
-- (\DATA1[25]~input_o\))) ) ) ) # ( !\DATA1[23]~input_o\ & ( \DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # (\DATA1[24]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[25]~input_o\ & (!\SHAMT[1]~input_o\))) ) ) ) # ( 
-- \DATA1[23]~input_o\ & ( !\DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\ & \DATA1[24]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # (\DATA1[25]~input_o\))) ) ) ) # ( !\DATA1[23]~input_o\ & ( !\DATA1[26]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\ & \DATA1[24]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[25]~input_o\ & (!\SHAMT[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[25]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[24]~input_o\,
	datae => \ALT_INV_DATA1[23]~input_o\,
	dataf => \ALT_INV_DATA1[26]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y4_N30
\inst2|auto_generated|l3_w30_n0_mux_dataout~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~11_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( \inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & 
-- ((\DATA1[29]~input_o\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\DATA1[27]~input_o\)) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( \inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\) # (\DATA1[28]~input_o\) ) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( !\inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[29]~input_o\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\DATA1[27]~input_o\)) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( 
-- !\inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & \DATA1[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\,
	datab => \ALT_INV_DATA1[27]~input_o\,
	datac => \ALT_INV_DATA1[29]~input_o\,
	datad => \ALT_INV_DATA1[28]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n1_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~11_combout\);

-- Location: LABCELL_X31_Y2_N36
\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\ = ( \DATA1[5]~input_o\ & ( \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\) # (\DATA1[3]~input_o\) ) ) ) # ( !\DATA1[5]~input_o\ & ( \SHAMT[0]~input_o\ & ( (\DATA1[3]~input_o\ & \SHAMT[1]~input_o\) 
-- ) ) ) # ( \DATA1[5]~input_o\ & ( !\SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((\DATA1[6]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[4]~input_o\)) ) ) ) # ( !\DATA1[5]~input_o\ & ( !\SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((\DATA1[6]~input_o\))) 
-- # (\SHAMT[1]~input_o\ & (\DATA1[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[3]~input_o\,
	datab => \ALT_INV_DATA1[4]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[6]~input_o\,
	datae => \ALT_INV_DATA1[5]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y4_N36
\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ = ( \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & \DATA1[1]~input_o\) ) ) # ( !\SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((\DATA1[2]~input_o\))) # (\SHAMT[1]~input_o\ & 
-- (\DATA1[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[0]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_DATA1[2]~input_o\,
	datad => \ALT_INV_DATA1[1]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y2_N12
\inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ = ( \DATA1[9]~input_o\ & ( \SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((\DATA1[8]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[7]~input_o\)) ) ) ) # ( !\DATA1[9]~input_o\ & ( 
-- \SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((\DATA1[8]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[7]~input_o\)) ) ) ) # ( \DATA1[9]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (\DATA1[10]~input_o\) # (\SHAMT[0]~input_o\) ) ) ) # ( !\DATA1[9]~input_o\ & ( 
-- !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & \DATA1[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[7]~input_o\,
	datac => \ALT_INV_DATA1[10]~input_o\,
	datad => \ALT_INV_DATA1[8]~input_o\,
	datae => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_SHAMT[1]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y4_N42
\inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ = ( \DATA1[13]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # (\DATA1[14]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # 
-- (\DATA1[11]~input_o\)))) ) ) ) # ( !\DATA1[13]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # (\DATA1[14]~input_o\))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\ & \DATA1[11]~input_o\)))) ) ) ) # ( 
-- \DATA1[13]~input_o\ & ( !\DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\DATA1[14]~input_o\ & (!\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # (\DATA1[11]~input_o\)))) ) ) ) # ( !\DATA1[13]~input_o\ & ( !\DATA1[12]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (\DATA1[14]~input_o\ & (!\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\ & \DATA1[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[14]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	datae => \ALT_INV_DATA1[13]~input_o\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N30
\inst4|inst31|auto_generated|l4_w30_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w30_n1_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\) # ((!\SHAMT[2]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\)))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( 
-- \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((!\SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\))))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & 
-- (((\SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\))))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\)) # 
-- (\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n6_mux_dataout~0_combout\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n7_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n5_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n4_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l4_w30_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y2_N6
\inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\ = ( \DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\DATA1[22]~input_o\) # (\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)) # 
-- (\DATA1[19]~input_o\))) ) ) ) # ( !\DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\DATA1[22]~input_o\) # (\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & (\DATA1[19]~input_o\ & (\SHAMT[0]~input_o\))) ) ) ) # ( \DATA1[20]~input_o\ 
-- & ( !\DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\ & \DATA1[22]~input_o\)))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)) # (\DATA1[19]~input_o\))) ) ) ) # ( !\DATA1[20]~input_o\ & ( !\DATA1[21]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\ & \DATA1[22]~input_o\)))) # (\SHAMT[1]~input_o\ & (\DATA1[19]~input_o\ & (\SHAMT[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[19]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[22]~input_o\,
	datae => \ALT_INV_DATA1[20]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y2_N18
\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ = ( \DATA1[18]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\) # ((!\SHAMT[1]~input_o\ & ((\DATA1[17]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\))) ) ) ) # ( 
-- !\DATA1[18]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\DATA1[17]~input_o\ & \SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)) # (\DATA1[15]~input_o\))) ) ) ) # ( \DATA1[18]~input_o\ & ( !\DATA1[16]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\) # (\DATA1[17]~input_o\)))) # (\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\ & ((\SHAMT[0]~input_o\)))) ) ) ) # ( !\DATA1[18]~input_o\ & ( !\DATA1[16]~input_o\ & ( (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & 
-- ((\DATA1[17]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[15]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_DATA1[17]~input_o\,
	datad => \ALT_INV_SHAMT[0]~input_o\,
	datae => \ALT_INV_DATA1[18]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N36
\inst2|auto_generated|l3_w30_n0_mux_dataout~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~12_combout\ = ( \inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~11_combout\) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~11_combout\ & 
-- !\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\) ) ) ) # ( \inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- (\inst4|inst31|auto_generated|l4_w30_n1_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst4|inst31|auto_generated|l4_w30_n1_mux_dataout~0_combout\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~11_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l4_w30_n1_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n2_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n3_mux_dataout~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~12_combout\);

-- Location: LABCELL_X35_Y1_N12
\inst2|auto_generated|l3_w30_n0_mux_dataout~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~13_combout\ = ( \OP[0]~input_o\ & ( \SHAMT[0]~input_o\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~0_combout\ & \DATA1[31]~input_o\) ) ) ) # ( !\OP[0]~input_o\ & ( \SHAMT[0]~input_o\ & ( 
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~12_combout\ ) ) ) # ( \OP[0]~input_o\ & ( !\SHAMT[0]~input_o\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~0_combout\ & \DATA1[30]~input_o\) ) ) ) # ( !\OP[0]~input_o\ & ( !\SHAMT[0]~input_o\ & ( 
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000101010100001111000011110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_DATA1[31]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~12_combout\,
	datad => \ALT_INV_DATA1[30]~input_o\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~13_combout\);

-- Location: MLABCELL_X34_Y1_N36
\inst2|auto_generated|l3_w30_n0_mux_dataout~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~14_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~13_combout\ & ( (!\DATA2[30]~input_o\ & (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & \OP[1]~input_o\)))) # (\DATA2[30]~input_o\ & 
-- (\DATA1[30]~input_o\ & (\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\))) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~13_combout\ & ( (!\DATA2[30]~input_o\ & (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\)))) # 
-- (\DATA2[30]~input_o\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ((!\OP[1]~input_o\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & (\DATA1[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000110100001111100011010000100000001101000010000000110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[30]~input_o\,
	datab => \ALT_INV_DATA1[30]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~13_combout\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~14_combout\);

-- Location: MLABCELL_X34_Y1_N18
\inst2|auto_generated|l3_w30_n0_mux_dataout~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~15_combout\ = ( \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ( !\inst7|inst7|inst1|inst5~0_combout\ $ 
-- (\inst|inst7|inst2|inst3~0_combout\) ) ) ) # ( !\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~14_combout\ ) ) ) # ( 
-- \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ( !\inst|inst7|inst2|inst3~0_combout\ $ (!\inst|inst7|inst1|inst5~0_combout\) ) ) ) # ( 
-- !\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001100111100110011110000111100001001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst7|inst1|ALT_INV_inst5~0_combout\,
	datab => \inst|inst7|inst2|ALT_INV_inst3~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~14_combout\,
	datad => \inst|inst7|inst1|ALT_INV_inst5~0_combout\,
	datae => \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~15_combout\);

-- Location: LABCELL_X35_Y1_N21
\inst2|auto_generated|l3_w30_n0_mux_dataout~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~16_combout\ = ( \DATA1[30]~input_o\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~15_combout\) ) ) # ( !\DATA1[30]~input_o\ & ( 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~15_combout\ & !\inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~15_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~3_combout\,
	dataf => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst2|auto_generated|l3_w30_n0_mux_dataout~16_combout\);

-- Location: MLABCELL_X34_Y3_N6
\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ = (!\SHAMT[4]~input_o\ & !\SHAMT[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHAMT[4]~input_o\,
	datad => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y2_N54
\inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ = ( \DATA1[14]~input_o\ & ( \DATA1[16]~input_o\ & ( ((!\SHAMT[1]~input_o\ & ((\DATA1[17]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\))) # (\SHAMT[0]~input_o\) ) ) ) # ( 
-- !\DATA1[14]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\) # (\DATA1[17]~input_o\)))) # (\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\ & ((!\SHAMT[0]~input_o\)))) ) ) ) # ( \DATA1[14]~input_o\ & ( !\DATA1[16]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (((\DATA1[17]~input_o\ & !\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)) # (\DATA1[15]~input_o\))) ) ) ) # ( !\DATA1[14]~input_o\ & ( !\DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & 
-- ((\DATA1[17]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[15]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_DATA1[17]~input_o\,
	datad => \ALT_INV_SHAMT[0]~input_o\,
	datae => \ALT_INV_DATA1[14]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y4_N12
\inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\ = ( \DATA1[23]~input_o\ & ( \DATA1[22]~input_o\ & ( ((!\SHAMT[0]~input_o\ & ((\DATA1[25]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[24]~input_o\))) # (\SHAMT[1]~input_o\) ) ) ) # ( 
-- !\DATA1[23]~input_o\ & ( \DATA1[22]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[25]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # (\DATA1[24]~input_o\))) ) ) ) # ( \DATA1[23]~input_o\ & ( !\DATA1[22]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (((\DATA1[25]~input_o\) # (\SHAMT[1]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[24]~input_o\ & (!\SHAMT[1]~input_o\))) ) ) ) # ( !\DATA1[23]~input_o\ & ( !\DATA1[22]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & 
-- ((\DATA1[25]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[24]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[25]~input_o\,
	datae => \ALT_INV_DATA1[23]~input_o\,
	dataf => \ALT_INV_DATA1[22]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y4_N48
\inst2|auto_generated|l3_w29_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w29_n0_mux_dataout~0_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( \DATA1[26]~input_o\ & ( (\DATA1[28]~input_o\) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\) ) ) ) # ( 
-- !\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( \DATA1[26]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[27]~input_o\))) ) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( !\DATA1[26]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & 
-- \DATA1[28]~input_o\) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( !\DATA1[26]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n1_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA1[28]~input_o\,
	datad => \ALT_INV_DATA1[27]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\,
	dataf => \ALT_INV_DATA1[26]~input_o\,
	combout => \inst2|auto_generated|l3_w29_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y2_N42
\inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\ = ( \DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\) # ((!\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[18]~input_o\)))) ) ) ) # ( 
-- !\DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[18]~input_o\))))) ) ) ) # ( \DATA1[20]~input_o\ & ( 
-- !\DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[18]~input_o\))))) ) ) ) # ( !\DATA1[20]~input_o\ & ( !\DATA1[21]~input_o\ & ( 
-- (\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[18]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[19]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[18]~input_o\,
	datae => \ALT_INV_DATA1[20]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y4_N18
\inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\ = ( \DATA1[1]~input_o\ & ( \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & \DATA1[0]~input_o\) ) ) ) # ( !\DATA1[1]~input_o\ & ( \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & \DATA1[0]~input_o\) 
-- ) ) ) # ( \DATA1[1]~input_o\ & ( !\SHAMT[0]~input_o\ & ( !\SHAMT[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datae => \ALT_INV_DATA1[1]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y2_N18
\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\ = ( \DATA1[9]~input_o\ & ( \DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\) # ((!\SHAMT[0]~input_o\ & ((\DATA1[7]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[6]~input_o\))) ) ) ) # ( 
-- !\DATA1[9]~input_o\ & ( \DATA1[8]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\ & \DATA1[7]~input_o\)))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # (\DATA1[6]~input_o\))) ) ) ) # ( \DATA1[9]~input_o\ & ( !\DATA1[8]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # (\DATA1[7]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[6]~input_o\ & (\SHAMT[1]~input_o\))) ) ) ) # ( !\DATA1[9]~input_o\ & ( !\DATA1[8]~input_o\ & ( (\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & 
-- ((\DATA1[7]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[6]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[7]~input_o\,
	datae => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_DATA1[8]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y4_N12
\inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ = ( \DATA1[4]~input_o\ & ( \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\) # (\DATA1[2]~input_o\) ) ) ) # ( !\DATA1[4]~input_o\ & ( \SHAMT[0]~input_o\ & ( (\DATA1[2]~input_o\ & \SHAMT[1]~input_o\) 
-- ) ) ) # ( \DATA1[4]~input_o\ & ( !\SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((\DATA1[5]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[3]~input_o\)) ) ) ) # ( !\DATA1[4]~input_o\ & ( !\SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((\DATA1[5]~input_o\))) 
-- # (\SHAMT[1]~input_o\ & (\DATA1[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[3]~input_o\,
	datab => \ALT_INV_DATA1[2]~input_o\,
	datac => \ALT_INV_DATA1[5]~input_o\,
	datad => \ALT_INV_SHAMT[1]~input_o\,
	datae => \ALT_INV_DATA1[4]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y4_N18
\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ = ( \DATA1[10]~input_o\ & ( \DATA1[12]~input_o\ & ( ((!\SHAMT[1]~input_o\ & (\DATA1[13]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[11]~input_o\)))) # (\SHAMT[0]~input_o\) ) ) ) # ( 
-- !\DATA1[10]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[13]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[11]~input_o\))))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)))) ) ) ) # ( \DATA1[10]~input_o\ & ( 
-- !\DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[13]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[11]~input_o\))))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)))) ) ) ) # ( !\DATA1[10]~input_o\ & ( !\DATA1[12]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[13]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[11]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[13]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	datae => \ALT_INV_DATA1[10]~input_o\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N6
\inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\) # ((!\SHAMT[3]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ & ( 
-- \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\)))) # (\SHAMT[2]~input_o\ & ((!\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\)))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & 
-- (((\SHAMT[3]~input_o\)))) # (\SHAMT[2]~input_o\ & ((!\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ & ( (\SHAMT[2]~input_o\ & ((!\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n7_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n5_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n6_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n4_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N12
\inst2|auto_generated|l3_w29_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w29_n0_mux_dataout~1_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( \inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- ((\inst2|auto_generated|l3_w29_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\)) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( 
-- \inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\) # (\inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\) ) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ 
-- & ( !\inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst2|auto_generated|l3_w29_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- (\inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\)) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( !\inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0_combout\ & ( 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & \inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n3_mux_dataout~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n2_mux_dataout~0_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l4_w29_n1_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w29_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X35_Y1_N54
\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\ = ( \DATA1[30]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\DATA1[29]~input_o\)) # (\SHAMT[0]~input_o\))) # (\SHAMT[1]~input_o\ & (!\SHAMT[0]~input_o\ & ((\DATA1[31]~input_o\)))) ) ) # ( 
-- !\DATA1[30]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & (\DATA1[29]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[31]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[1]~input_o\,
	datab => \ALT_INV_SHAMT[0]~input_o\,
	datac => \ALT_INV_DATA1[29]~input_o\,
	datad => \ALT_INV_DATA1[31]~input_o\,
	dataf => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N21
\inst2|auto_generated|l3_w29_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w29_n0_mux_dataout~2_combout\ = ( \inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\ & ( (!\OP[0]~input_o\ & (((\inst2|auto_generated|l3_w29_n0_mux_dataout~1_combout\)))) # (\OP[0]~input_o\ & 
-- (\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & (!\SHAMT[2]~input_o\))) ) ) # ( !\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\ & ( (\inst2|auto_generated|l3_w29_n0_mux_dataout~1_combout\ & !\OP[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111010001000000111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w29_n0_mux_dataout~2_combout\);

-- Location: MLABCELL_X34_Y1_N42
\inst2|auto_generated|l3_w29_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w29_n0_mux_dataout~3_combout\ = ( \DATA2[29]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & (((!\inst2|auto_generated|l3_w29_n0_mux_dataout~2_combout\ & !\OP[1]~input_o\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & (\DATA1[29]~input_o\)) ) ) # ( !\DATA2[29]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ((!\inst2|auto_generated|l3_w29_n0_mux_dataout~2_combout\) # (\OP[1]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011010001000100011101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[29]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~2_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst2|auto_generated|l3_w29_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X34_Y1_N54
\inst2|auto_generated|l3_w29_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w29_n0_mux_dataout~4_combout\ = ( \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ( \DATA2[28]~input_o\ & ( !\inst|inst7|inst1|inst3~0_combout\ $ (((!\inst7|inst6|inst3|inst5~0_combout\ & \DATA1[28]~input_o\))) ) ) 
-- ) # ( !\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ( \DATA2[28]~input_o\ & ( !\inst2|auto_generated|l3_w29_n0_mux_dataout~3_combout\ ) ) ) # ( \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ( !\DATA2[28]~input_o\ & ( 
-- !\inst|inst7|inst1|inst3~0_combout\ $ (((!\inst7|inst6|inst3|inst5~0_combout\) # (\DATA1[28]~input_o\))) ) ) ) # ( !\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ( !\DATA2[28]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w29_n0_mux_dataout~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010100001010111111001100110011001111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst6|inst3|ALT_INV_inst5~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~3_combout\,
	datac => \ALT_INV_DATA1[28]~input_o\,
	datad => \inst|inst7|inst1|ALT_INV_inst3~0_combout\,
	datae => \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_DATA2[28]~input_o\,
	combout => \inst2|auto_generated|l3_w29_n0_mux_dataout~4_combout\);

-- Location: MLABCELL_X34_Y4_N6
\inst2|auto_generated|l3_w29_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w29_n0_mux_dataout~5_combout\ = ( \inst|inst6|inst3|inst5~0_combout\ & ( \DATA2[28]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst|inst7|inst1|inst3~0_combout\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((\inst2|auto_generated|l3_w29_n0_mux_dataout~4_combout\))) ) ) ) # ( !\inst|inst6|inst3|inst5~0_combout\ & ( \DATA2[28]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & 
-- (!\inst|inst7|inst1|inst3~0_combout\ $ ((!\DATA1[28]~input_o\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (((\inst2|auto_generated|l3_w29_n0_mux_dataout~4_combout\)))) ) ) ) # ( \inst|inst6|inst3|inst5~0_combout\ & ( 
-- !\DATA2[28]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst|inst7|inst1|inst3~0_combout\ $ ((!\DATA1[28]~input_o\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & 
-- (((\inst2|auto_generated|l3_w29_n0_mux_dataout~4_combout\)))) ) ) ) # ( !\inst|inst6|inst3|inst5~0_combout\ & ( !\DATA2[28]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (\inst|inst7|inst1|inst3~0_combout\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((\inst2|auto_generated|l3_w29_n0_mux_dataout~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111011000000110111101100000011011111010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|ALT_INV_inst3~0_combout\,
	datab => \ALT_INV_DATA1[28]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~4_combout\,
	datae => \inst|inst6|inst3|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA2[28]~input_o\,
	combout => \inst2|auto_generated|l3_w29_n0_mux_dataout~5_combout\);

-- Location: MLABCELL_X34_Y4_N45
\inst2|auto_generated|l3_w29_n0_mux_dataout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w29_n0_mux_dataout~6_combout\ = ( \DATA1[29]~input_o\ & ( \inst2|auto_generated|l3_w29_n0_mux_dataout~5_combout\ ) ) # ( !\DATA1[29]~input_o\ & ( \inst2|auto_generated|l3_w29_n0_mux_dataout~5_combout\ & ( (!\OP[2]~input_o\ & 
-- ((!\OP[0]~input_o\) # ((!\OP[1]~input_o\)))) # (\OP[2]~input_o\ & ((!\OP[0]~input_o\ $ (!\OP[1]~input_o\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\))) ) ) ) # ( \DATA1[29]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w29_n0_mux_dataout~5_combout\ & ( (!\OP[2]~input_o\ & (\OP[0]~input_o\ & (\OP[1]~input_o\))) # (\OP[2]~input_o\ & (!\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & (!\OP[0]~input_o\ $ (\OP[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110010001000011100110111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~2_combout\,
	datae => \ALT_INV_DATA1[29]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~5_combout\,
	combout => \inst2|auto_generated|l3_w29_n0_mux_dataout~6_combout\);

-- Location: LABCELL_X35_Y1_N0
\inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\ = ( \SHAMT[0]~input_o\ & ( \DATA1[30]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[29]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[31]~input_o\))) ) ) ) # ( !\SHAMT[0]~input_o\ & ( 
-- \DATA1[30]~input_o\ & ( (\DATA1[28]~input_o\) # (\SHAMT[1]~input_o\) ) ) ) # ( \SHAMT[0]~input_o\ & ( !\DATA1[30]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[29]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[31]~input_o\))) ) ) ) # ( !\SHAMT[0]~input_o\ & ( 
-- !\DATA1[30]~input_o\ & ( (!\SHAMT[1]~input_o\ & \DATA1[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[29]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_DATA1[28]~input_o\,
	datad => \ALT_INV_DATA1[31]~input_o\,
	datae => \ALT_INV_SHAMT[0]~input_o\,
	dataf => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y2_N48
\inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\ = ( \DATA1[24]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)) # (\DATA1[23]~input_o\))) # (\SHAMT[1]~input_o\ & (((\DATA1[22]~input_o\) # 
-- (\SHAMT[0]~input_o\)))) ) ) ) # ( !\DATA1[24]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[23]~input_o\ & (\SHAMT[0]~input_o\))) # (\SHAMT[1]~input_o\ & (((\DATA1[22]~input_o\) # (\SHAMT[0]~input_o\)))) ) ) ) # ( \DATA1[24]~input_o\ 
-- & ( !\DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)) # (\DATA1[23]~input_o\))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\ & \DATA1[22]~input_o\)))) ) ) ) # ( !\DATA1[24]~input_o\ & ( !\DATA1[21]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (\DATA1[23]~input_o\ & (\SHAMT[0]~input_o\))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\ & \DATA1[22]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[22]~input_o\,
	datae => \ALT_INV_DATA1[24]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y2_N18
\inst2|auto_generated|l3_w28_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w28_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\ & ( \DATA1[26]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\) # 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\DATA1[27]~input_o\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[25]~input_o\)))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\ & ( 
-- \DATA1[26]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\DATA1[27]~input_o\ & ((\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & 
-- (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\) # (\DATA1[25]~input_o\)))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\ & ( !\DATA1[26]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & 
-- (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\)) # (\DATA1[27]~input_o\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (((\DATA1[25]~input_o\ & \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\)))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\ & ( !\DATA1[26]~input_o\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\DATA1[27]~input_o\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[25]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[27]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\,
	datac => \ALT_INV_DATA1[25]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n1_mux_dataout~0_combout\,
	dataf => \ALT_INV_DATA1[26]~input_o\,
	combout => \inst2|auto_generated|l3_w28_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y2_N24
\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\ = ( \DATA1[5]~input_o\ & ( \DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\) # (\DATA1[7]~input_o\)))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)) # 
-- (\DATA1[6]~input_o\))) ) ) ) # ( !\DATA1[5]~input_o\ & ( \DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\) # (\DATA1[7]~input_o\)))) # (\SHAMT[1]~input_o\ & (\DATA1[6]~input_o\ & (!\SHAMT[0]~input_o\))) ) ) ) # ( \DATA1[5]~input_o\ & ( 
-- !\DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\ & \DATA1[7]~input_o\)))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)) # (\DATA1[6]~input_o\))) ) ) ) # ( !\DATA1[5]~input_o\ & ( !\DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\ & 
-- (((\SHAMT[0]~input_o\ & \DATA1[7]~input_o\)))) # (\SHAMT[1]~input_o\ & (\DATA1[6]~input_o\ & (!\SHAMT[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[1]~input_o\,
	datab => \ALT_INV_DATA1[6]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[7]~input_o\,
	datae => \ALT_INV_DATA1[5]~input_o\,
	dataf => \ALT_INV_DATA1[8]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y4_N54
\inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\ = ( \SHAMT[1]~input_o\ & ( \SHAMT[0]~input_o\ & ( \DATA1[1]~input_o\ ) ) ) # ( !\SHAMT[1]~input_o\ & ( \SHAMT[0]~input_o\ & ( \DATA1[3]~input_o\ ) ) ) # ( \SHAMT[1]~input_o\ & ( 
-- !\SHAMT[0]~input_o\ & ( \DATA1[2]~input_o\ ) ) ) # ( !\SHAMT[1]~input_o\ & ( !\SHAMT[0]~input_o\ & ( \DATA1[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[3]~input_o\,
	datab => \ALT_INV_DATA1[1]~input_o\,
	datac => \ALT_INV_DATA1[2]~input_o\,
	datad => \ALT_INV_DATA1[4]~input_o\,
	datae => \ALT_INV_SHAMT[1]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y4_N39
\inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0_combout\ = ( !\SHAMT[0]~input_o\ & ( (\DATA1[0]~input_o\ & !\SHAMT[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[0]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y4_N54
\inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ = ( \DATA1[9]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # (\DATA1[10]~input_o\))) # (\SHAMT[0]~input_o\ & (((\DATA1[11]~input_o\) # 
-- (\SHAMT[1]~input_o\)))) ) ) ) # ( !\DATA1[9]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # (\DATA1[10]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[11]~input_o\)))) ) ) ) # ( 
-- \DATA1[9]~input_o\ & ( !\DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\DATA1[10]~input_o\ & (\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((\DATA1[11]~input_o\) # (\SHAMT[1]~input_o\)))) ) ) ) # ( !\DATA1[9]~input_o\ & ( !\DATA1[12]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (\DATA1[10]~input_o\ & (\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[10]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	datae => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y2_N42
\inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0_combout\ = ( \SHAMT[3]~input_o\ & ( \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\)) # 
-- (\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0_combout\))) ) ) ) # ( !\SHAMT[3]~input_o\ & ( \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\) # 
-- (\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\) ) ) ) # ( \SHAMT[3]~input_o\ & ( !\inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\)) # 
-- (\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0_combout\))) ) ) ) # ( !\SHAMT[3]~input_o\ & ( !\inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\ & 
-- \SHAMT[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n5_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n6_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n7_mux_dataout~0_combout\,
	datae => \ALT_INV_SHAMT[3]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n4_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y2_N30
\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ = ( \DATA1[13]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\) # ((\DATA1[14]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\DATA1[15]~input_o\)) # 
-- (\SHAMT[1]~input_o\))) ) ) ) # ( !\DATA1[13]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\) # ((\DATA1[14]~input_o\)))) # (\SHAMT[0]~input_o\ & (!\SHAMT[1]~input_o\ & ((\DATA1[15]~input_o\)))) ) ) ) # ( 
-- \DATA1[13]~input_o\ & ( !\DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\SHAMT[1]~input_o\ & (\DATA1[14]~input_o\))) # (\SHAMT[0]~input_o\ & (((\DATA1[15]~input_o\)) # (\SHAMT[1]~input_o\))) ) ) ) # ( !\DATA1[13]~input_o\ & ( !\DATA1[16]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (\SHAMT[1]~input_o\ & (\DATA1[14]~input_o\))) # (\SHAMT[0]~input_o\ & (!\SHAMT[1]~input_o\ & ((\DATA1[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_DATA1[14]~input_o\,
	datad => \ALT_INV_DATA1[15]~input_o\,
	datae => \ALT_INV_DATA1[13]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y2_N24
\inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\ = ( \DATA1[18]~input_o\ & ( \SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\) # (\DATA1[17]~input_o\) ) ) ) # ( !\DATA1[18]~input_o\ & ( \SHAMT[1]~input_o\ & ( (\SHAMT[0]~input_o\ & 
-- \DATA1[17]~input_o\) ) ) ) # ( \DATA1[18]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((\DATA1[20]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)) ) ) ) # ( !\DATA1[18]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & 
-- ((\DATA1[20]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[19]~input_o\,
	datab => \ALT_INV_DATA1[20]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[17]~input_o\,
	datae => \ALT_INV_DATA1[18]~input_o\,
	dataf => \ALT_INV_SHAMT[1]~input_o\,
	combout => \inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y2_N24
\inst2|auto_generated|l3_w28_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w28_n0_mux_dataout~1_combout\ = ( \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\ & ( ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & 
-- ((\inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (\inst2|auto_generated|l3_w28_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & 
-- (((\inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- (\inst2|auto_generated|l3_w28_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & 
-- (((\inst2|auto_generated|l3_w28_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( 
-- !\inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ((\inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0_combout\))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (\inst2|auto_generated|l3_w28_n0_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l4_w28_n1_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n3_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n2_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w28_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X35_Y3_N15
\inst2|auto_generated|l3_w28_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w28_n0_mux_dataout~2_combout\ = ( \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & ( (!\OP[0]~input_o\ & (((\inst2|auto_generated|l3_w28_n0_mux_dataout~1_combout\)))) # (\OP[0]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\ & (!\SHAMT[2]~input_o\))) ) ) # ( !\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & ( (\inst2|auto_generated|l3_w28_n0_mux_dataout~1_combout\ & !\OP[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111010001000000111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w28_n0_mux_dataout~2_combout\);

-- Location: MLABCELL_X34_Y4_N18
\inst2|auto_generated|l3_w28_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w28_n0_mux_dataout~3_combout\ = ( \DATA1[28]~input_o\ & ( \OP[2]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst2|auto_generated|l3_w28_n0_mux_dataout~2_combout\)) # (\OP[1]~input_o\ & ((!\DATA2[28]~input_o\))) ) ) ) # ( 
-- !\DATA1[28]~input_o\ & ( \OP[2]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst2|auto_generated|l3_w28_n0_mux_dataout~2_combout\)) # (\OP[1]~input_o\ & ((!\DATA2[28]~input_o\))) ) ) ) # ( \DATA1[28]~input_o\ & ( !\OP[2]~input_o\ & ( !\DATA2[28]~input_o\ $ 
-- (((!\inst7|inst6|inst3|inst5~0_combout\) # (\OP[1]~input_o\))) ) ) ) # ( !\DATA1[28]~input_o\ & ( !\OP[2]~input_o\ & ( (!\OP[1]~input_o\ & (!\DATA2[28]~input_o\ $ (\inst7|inst6|inst3|inst5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000001111000011001110101010110011001010101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~2_combout\,
	datab => \ALT_INV_DATA2[28]~input_o\,
	datac => \inst7|inst6|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \ALT_INV_DATA1[28]~input_o\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst2|auto_generated|l3_w28_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X34_Y4_N54
\inst2|auto_generated|l3_w28_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w28_n0_mux_dataout~4_combout\ = ( \inst2|auto_generated|l3_w28_n0_mux_dataout~3_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA2[28]~input_o\ $ (!\DATA1[28]~input_o\ $ 
-- (\inst|inst6|inst3|inst5~0_combout\)))) ) ) # ( !\inst2|auto_generated|l3_w28_n0_mux_dataout~3_combout\ & ( (!\DATA2[28]~input_o\ $ (!\DATA1[28]~input_o\ $ (\inst|inst6|inst3|inst5~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111110011111011011111001111101100000100100000110000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[28]~input_o\,
	datab => \ALT_INV_DATA1[28]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datad => \inst|inst6|inst3|ALT_INV_inst5~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~3_combout\,
	combout => \inst2|auto_generated|l3_w28_n0_mux_dataout~4_combout\);

-- Location: MLABCELL_X34_Y4_N42
\inst2|auto_generated|l3_w28_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w28_n0_mux_dataout~5_combout\ = ( \DATA1[28]~input_o\ & ( \inst2|auto_generated|l3_w28_n0_mux_dataout~4_combout\ ) ) # ( !\DATA1[28]~input_o\ & ( \inst2|auto_generated|l3_w28_n0_mux_dataout~4_combout\ & ( (!\OP[2]~input_o\ & 
-- ((!\OP[0]~input_o\) # ((!\OP[1]~input_o\)))) # (\OP[2]~input_o\ & ((!\OP[0]~input_o\ $ (!\OP[1]~input_o\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\))) ) ) ) # ( \DATA1[28]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w28_n0_mux_dataout~4_combout\ & ( (!\OP[2]~input_o\ & (\OP[0]~input_o\ & (\OP[1]~input_o\))) # (\OP[2]~input_o\ & (!\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & (!\OP[0]~input_o\ $ (\OP[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011001000011101110011011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~2_combout\,
	datad => \ALT_INV_OP[2]~input_o\,
	datae => \ALT_INV_DATA1[28]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~4_combout\,
	combout => \inst2|auto_generated|l3_w28_n0_mux_dataout~5_combout\);

-- Location: MLABCELL_X34_Y3_N9
\inst2|auto_generated|l3_w25_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ = (!\OP[1]~input_o\ & ((\OP[0]~input_o\) # (\SHAMT[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHAMT[4]~input_o\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X33_Y3_N3
\inst4|inst31|auto_generated|l4_w27_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w27_n1_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((!\SHAMT[2]~input_o\) # (\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\)))) # 
-- (\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\ & ((!\SHAMT[2]~input_o\)))) ) ) # ( !\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & 
-- (((\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\ & \SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\ & ((!\SHAMT[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010000110011011101000011001101110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n7_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[3]~input_o\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n6_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n5_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l4_w27_n1_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y3_N42
\inst2|auto_generated|l3_w27_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w27_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( ((!\SHAMT[2]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & 
-- ( \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\ & !\SHAMT[3]~input_o\)))) # (\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\)) # 
-- (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\) 
-- # (\inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\)))) # (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\ & ((!\SHAMT[3]~input_o\)))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w31_n1_mux_dataout~0_combout\))) # 
-- (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n2_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n1_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	datad => \ALT_INV_SHAMT[3]~input_o\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n3_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n4_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w27_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N0
\inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\ = ( \DATA1[31]~input_o\ & ( (!\SHAMT[1]~input_o\ & !\SHAMT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_SHAMT[0]~input_o\,
	dataf => \ALT_INV_DATA1[31]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y4_N24
\inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\ = ( \DATA1[29]~input_o\ & ( \SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\) # (\DATA1[30]~input_o\) ) ) ) # ( !\DATA1[29]~input_o\ & ( \SHAMT[1]~input_o\ & ( (\SHAMT[0]~input_o\ & 
-- \DATA1[30]~input_o\) ) ) ) # ( \DATA1[29]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\DATA1[27]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[28]~input_o\))) ) ) ) # ( !\DATA1[29]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & 
-- (\DATA1[27]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[27]~input_o\,
	datac => \ALT_INV_DATA1[28]~input_o\,
	datad => \ALT_INV_DATA1[30]~input_o\,
	datae => \ALT_INV_DATA1[29]~input_o\,
	dataf => \ALT_INV_SHAMT[1]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N9
\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~1_combout\ = ( \inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & ((!\SHAMT[2]~input_o\) # 
-- (\inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\))) ) ) # ( !\inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\ & ( (\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & 
-- \inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w27_n1_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X33_Y2_N42
\inst2|auto_generated|l3_w27_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w27_n0_mux_dataout~1_combout\ = ( \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~1_combout\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & 
-- ((\inst2|auto_generated|l3_w27_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & (\inst4|inst31|auto_generated|l4_w27_n1_mux_dataout~0_combout\)) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~1_combout\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & ((\inst2|auto_generated|l3_w27_n0_mux_dataout~0_combout\))) # 
-- (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & (\inst4|inst31|auto_generated|l4_w27_n1_mux_dataout~0_combout\)) ) ) ) # ( \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~1_combout\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ 
-- & ( (\DATA2[27]~input_o\) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\) ) ) ) # ( !\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~1_combout\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & \DATA2[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~2_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l4_w27_n1_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_DATA2[27]~input_o\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~4_combout\,
	combout => \inst2|auto_generated|l3_w27_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X33_Y2_N48
\inst2|auto_generated|l3_w27_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w27_n0_mux_dataout~2_combout\ = ( \OP[2]~input_o\ & ( \DATA2[27]~input_o\ & ( \inst2|auto_generated|l3_w27_n0_mux_dataout~1_combout\ ) ) ) # ( !\OP[2]~input_o\ & ( \DATA2[27]~input_o\ & ( !\DATA1[27]~input_o\ $ (((!\OP[1]~input_o\ 
-- & \inst7|inst6|inst2|inst5~0_combout\))) ) ) ) # ( \OP[2]~input_o\ & ( !\DATA2[27]~input_o\ & ( \inst2|auto_generated|l3_w27_n0_mux_dataout~1_combout\ ) ) ) # ( !\OP[2]~input_o\ & ( !\DATA2[27]~input_o\ & ( (!\DATA1[27]~input_o\ $ 
-- (!\inst7|inst6|inst2|inst5~0_combout\)) # (\OP[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011000000001111111110100110101001100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[27]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst7|inst6|inst2|ALT_INV_inst5~0_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~1_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_DATA2[27]~input_o\,
	combout => \inst2|auto_generated|l3_w27_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X33_Y2_N6
\inst2|auto_generated|l3_w27_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w27_n0_mux_dataout~4_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA1[27]~input_o\ $ (!\DATA2[27]~input_o\ $ (((!\DATA1[26]~input_o\ & (\inst|inst6|inst1|inst5~0_combout\ & \DATA2[26]~input_o\)) # 
-- (\DATA1[26]~input_o\ & ((\DATA2[26]~input_o\) # (\inst|inst6|inst1|inst5~0_combout\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w27_n0_mux_dataout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011001101100000011110000111111001001100100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[26]~input_o\,
	datab => \ALT_INV_DATA1[27]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~2_combout\,
	datad => \ALT_INV_DATA2[26]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA2[27]~input_o\,
	datag => \inst|inst6|inst1|ALT_INV_inst5~0_combout\,
	combout => \inst2|auto_generated|l3_w27_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X33_Y1_N27
\inst2|auto_generated|l3_w25_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~0_combout\ = (\OP[1]~input_o\ & \OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w25_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y1_N6
\inst2|auto_generated|l3_w25_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~0_combout\ & ( \DATA1[31]~input_o\ & ( (!\OP[2]~input_o\) # ((\DATA2[31]~input_o\ & ((\inst7|inst7|inst2|inst~combout\) # 
-- (\inst7|inst7|inst2|inst5~1_combout\)))) ) ) ) # ( \inst2|auto_generated|l3_w25_n0_mux_dataout~0_combout\ & ( !\DATA1[31]~input_o\ & ( ((!\OP[2]~input_o\) # ((\DATA2[31]~input_o\) # (\inst7|inst7|inst2|inst~combout\))) # 
-- (\inst7|inst7|inst2|inst5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111111111111100000000000000001100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst7|inst2|ALT_INV_inst5~1_combout\,
	datab => \ALT_INV_OP[2]~input_o\,
	datac => \inst7|inst7|inst2|ALT_INV_inst~combout\,
	datad => \ALT_INV_DATA2[31]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_DATA1[31]~input_o\,
	combout => \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X33_Y2_N57
\inst2|auto_generated|l3_w27_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w27_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[27]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( 
-- \inst2|auto_generated|l3_w27_n0_mux_dataout~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[27]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~4_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w27_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X35_Y4_N30
\inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\ = ( \DATA1[29]~input_o\ & ( \SHAMT[1]~input_o\ & ( (\DATA1[28]~input_o\) # (\SHAMT[0]~input_o\) ) ) ) # ( !\DATA1[29]~input_o\ & ( \SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & 
-- \DATA1[28]~input_o\) ) ) ) # ( \DATA1[29]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((\DATA1[26]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[27]~input_o\)) ) ) ) # ( !\DATA1[29]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & 
-- ((\DATA1[26]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[27]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[27]~input_o\,
	datac => \ALT_INV_DATA1[28]~input_o\,
	datad => \ALT_INV_DATA1[26]~input_o\,
	datae => \ALT_INV_DATA1[29]~input_o\,
	dataf => \ALT_INV_SHAMT[1]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N39
\inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\ = ( \DATA1[30]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\) # (\DATA1[31]~input_o\))) ) ) # ( !\DATA1[30]~input_o\ & ( (\DATA1[31]~input_o\ & (!\SHAMT[1]~input_o\ & 
-- \SHAMT[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[31]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_SHAMT[0]~input_o\,
	dataf => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N57
\inst5|inst34|auto_generated|l5_w26_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l5_w26_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & 
-- ((\inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\) # (\SHAMT[2]~input_o\))) ) ) # ( !\inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & 
-- \inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w26_n1_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l5_w26_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N48
\inst4|inst31|auto_generated|l4_w26_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w26_n1_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\) # (\SHAMT[3]~input_o\)))) # 
-- (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\ & (!\SHAMT[3]~input_o\))) ) ) # ( !\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011100110111000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n6_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n5_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n7_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l4_w26_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N12
\inst2|auto_generated|l3_w26_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w26_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\)) # 
-- (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (((\inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\) # (\SHAMT[3]~input_o\)))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ 
-- & ( \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ & (\SHAMT[3]~input_o\))) # (\SHAMT[2]~input_o\ & 
-- (((\inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\) # (\SHAMT[3]~input_o\)))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ 
-- & (((!\SHAMT[3]~input_o\)) # (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\ & \inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w30_n1_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ & (\SHAMT[3]~input_o\))) # 
-- (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\ & \inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n3_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n2_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n1_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n4_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w26_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N0
\inst2|auto_generated|l3_w26_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w26_n0_mux_dataout~1_combout\ = ( \DATA2[26]~input_o\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & 
-- ((\inst2|auto_generated|l3_w26_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & (\inst4|inst31|auto_generated|l4_w26_n1_mux_dataout~0_combout\)) ) ) ) # ( !\DATA2[26]~input_o\ & ( 
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & ((\inst2|auto_generated|l3_w26_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & 
-- (\inst4|inst31|auto_generated|l4_w26_n1_mux_dataout~0_combout\)) ) ) ) # ( \DATA2[26]~input_o\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\) # 
-- (\inst5|inst34|auto_generated|l5_w26_n0_mux_dataout~0_combout\) ) ) ) # ( !\DATA2[26]~input_o\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & ( (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & 
-- \inst5|inst34|auto_generated|l5_w26_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~2_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l5_w26_n0_mux_dataout~0_combout\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l4_w26_n1_mux_dataout~0_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_DATA2[26]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~4_combout\,
	combout => \inst2|auto_generated|l3_w26_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X33_Y2_N39
\inst2|auto_generated|l3_w26_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w26_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w26_n0_mux_dataout~1_combout\ & ( ((\OP[1]~input_o\ & ((!\DATA1[26]~input_o\) # (!\DATA2[26]~input_o\)))) # (\OP[2]~input_o\) ) ) # ( 
-- !\inst2|auto_generated|l3_w26_n0_mux_dataout~1_combout\ & ( (!\OP[2]~input_o\ & (\OP[1]~input_o\ & ((!\DATA1[26]~input_o\) # (!\DATA2[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000001111111011110000111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[26]~input_o\,
	datab => \ALT_INV_DATA2[26]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_OP[1]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w26_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X33_Y2_N30
\inst2|auto_generated|l3_w26_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w26_n0_mux_dataout~4_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ( (!\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ((((\inst2|auto_generated|l3_w26_n0_mux_dataout~2_combout\))))) # 
-- (\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & (!\inst|inst6|inst1|inst5~0_combout\ $ (!\DATA2[26]~input_o\ $ ((\DATA1[26]~input_o\))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ( 
-- ((((!\inst7|inst6|inst2|inst3~combout\ & \inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\)) # (\inst2|auto_generated|l3_w26_n0_mux_dataout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111101101001011010011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|inst1|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA2[26]~input_o\,
	datac => \inst7|inst6|inst2|ALT_INV_inst3~combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~2_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\,
	dataf => \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\,
	datag => \ALT_INV_DATA1[26]~input_o\,
	combout => \inst2|auto_generated|l3_w26_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X33_Y2_N27
\inst2|auto_generated|l3_w26_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w26_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w26_n0_mux_dataout~4_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\DATA1[26]~input_o\) ) ) # ( 
-- !\inst2|auto_generated|l3_w26_n0_mux_dataout~4_combout\ & ( (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & \DATA1[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA1[26]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~4_combout\,
	combout => \inst2|auto_generated|l3_w26_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X34_Y2_N0
\inst|inst6|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst6|inst|inst5~0_combout\ = ( \DATA2[24]~input_o\ & ( (\DATA1[24]~input_o\) # (\inst|inst5|inst3|inst5~0_combout\) ) ) # ( !\DATA2[24]~input_o\ & ( (\inst|inst5|inst3|inst5~0_combout\ & \DATA1[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst5|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[24]~input_o\,
	dataf => \ALT_INV_DATA2[24]~input_o\,
	combout => \inst|inst6|inst|inst5~0_combout\);

-- Location: LABCELL_X35_Y4_N6
\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\ = ( \DATA1[27]~input_o\ & ( \SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\) # (\DATA1[28]~input_o\) ) ) ) # ( !\DATA1[27]~input_o\ & ( \SHAMT[1]~input_o\ & ( (\SHAMT[0]~input_o\ & 
-- \DATA1[28]~input_o\) ) ) ) # ( \DATA1[27]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\DATA1[25]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[26]~input_o\))) ) ) ) # ( !\DATA1[27]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & 
-- (\DATA1[25]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[25]~input_o\,
	datac => \ALT_INV_DATA1[28]~input_o\,
	datad => \ALT_INV_DATA1[26]~input_o\,
	datae => \ALT_INV_DATA1[27]~input_o\,
	dataf => \ALT_INV_SHAMT[1]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N39
\inst5|inst34|auto_generated|l5_w25_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l5_w25_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~0_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w25_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l5_w25_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N24
\inst2|auto_generated|l3_w25_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~3_combout\ = ( \inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\) # ((!\SHAMT[3]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\)) # (\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\)))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\ & ( 
-- \inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\)))) # (\SHAMT[2]~input_o\ & ((!\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\)) # (\SHAMT[3]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\))))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & 
-- (((!\SHAMT[3]~input_o\)))) # (\SHAMT[2]~input_o\ & ((!\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\)) # (\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\))))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w29_n1_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ & ( (\SHAMT[2]~input_o\ & ((!\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\)) # 
-- (\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n2_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n4_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n1_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n3_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w25_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X36_Y4_N33
\inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0_combout\ = ( \SHAMT[3]~input_o\ & ( (!\SHAMT[2]~input_o\ & \inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\) ) ) # ( !\SHAMT[3]~input_o\ & ( (!\SHAMT[2]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n7_mux_dataout~0_combout\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n5_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n6_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N42
\inst2|auto_generated|l3_w25_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~4_combout\ = ( \DATA2[25]~input_o\ & ( \inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & 
-- (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~3_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & (((\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\)) # 
-- (\inst5|inst34|auto_generated|l5_w25_n0_mux_dataout~0_combout\))) ) ) ) # ( !\DATA2[25]~input_o\ & ( \inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & 
-- (((\inst2|auto_generated|l3_w25_n0_mux_dataout~3_combout\ & \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & (((\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\)) # 
-- (\inst5|inst34|auto_generated|l5_w25_n0_mux_dataout~0_combout\))) ) ) ) # ( \DATA2[25]~input_o\ & ( !\inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & 
-- (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~3_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & (\inst5|inst34|auto_generated|l5_w25_n0_mux_dataout~0_combout\ & 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\)))) ) ) ) # ( !\DATA2[25]~input_o\ & ( !\inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & 
-- (((\inst2|auto_generated|l3_w25_n0_mux_dataout~3_combout\ & \inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & (\inst5|inst34|auto_generated|l5_w25_n0_mux_dataout~0_combout\ & 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~2_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l5_w25_n0_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~3_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~4_combout\,
	datae => \ALT_INV_DATA2[25]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l4_w25_n1_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w25_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X33_Y1_N42
\inst2|auto_generated|l3_w25_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~5_combout\ = ( \inst7|inst6|inst|inst5~0_combout\ & ( \inst2|auto_generated|l3_w25_n0_mux_dataout~4_combout\ & ( (!\OP[2]~input_o\ & ((!\DATA2[25]~input_o\ & (!\OP[1]~input_o\ & !\DATA1[25]~input_o\)) # 
-- (\DATA2[25]~input_o\ & ((\DATA1[25]~input_o\))))) ) ) ) # ( !\inst7|inst6|inst|inst5~0_combout\ & ( \inst2|auto_generated|l3_w25_n0_mux_dataout~4_combout\ & ( (!\OP[2]~input_o\ & ((!\OP[1]~input_o\ & (!\DATA2[25]~input_o\ $ (!\DATA1[25]~input_o\))) # 
-- (\OP[1]~input_o\ & (\DATA2[25]~input_o\ & \DATA1[25]~input_o\)))) ) ) ) # ( \inst7|inst6|inst|inst5~0_combout\ & ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~4_combout\ & ( ((!\DATA2[25]~input_o\ & (!\OP[1]~input_o\ & !\DATA1[25]~input_o\)) # 
-- (\DATA2[25]~input_o\ & ((\DATA1[25]~input_o\)))) # (\OP[2]~input_o\) ) ) ) # ( !\inst7|inst6|inst|inst5~0_combout\ & ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~4_combout\ & ( ((!\OP[1]~input_o\ & (!\DATA2[25]~input_o\ $ (!\DATA1[25]~input_o\))) # 
-- (\OP[1]~input_o\ & (\DATA2[25]~input_o\ & \DATA1[25]~input_o\))) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111010111110101010101111100001000100000101000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_DATA2[25]~input_o\,
	datad => \ALT_INV_DATA1[25]~input_o\,
	datae => \inst7|inst6|inst|ALT_INV_inst5~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~4_combout\,
	combout => \inst2|auto_generated|l3_w25_n0_mux_dataout~5_combout\);

-- Location: LABCELL_X33_Y1_N48
\inst2|auto_generated|l3_w25_n0_mux_dataout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~6_combout\ = ( \DATA2[25]~input_o\ & ( \DATA1[25]~input_o\ & ( ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (\inst|inst6|inst|inst5~0_combout\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\inst2|auto_generated|l3_w25_n0_mux_dataout~5_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) ) ) # ( !\DATA2[25]~input_o\ & ( \DATA1[25]~input_o\ & ( 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst|inst6|inst|inst5~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\inst2|auto_generated|l3_w25_n0_mux_dataout~5_combout\)))) # 
-- (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) ) ) # ( \DATA2[25]~input_o\ & ( !\DATA1[25]~input_o\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & 
-- (!\inst|inst6|inst|inst5~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\inst2|auto_generated|l3_w25_n0_mux_dataout~5_combout\))))) ) ) ) # ( !\DATA2[25]~input_o\ & ( !\DATA1[25]~input_o\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (\inst|inst6|inst|inst5~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & 
-- ((!\inst2|auto_generated|l3_w25_n0_mux_dataout~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110000000000101011000000000010101100111111110101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|inst|ALT_INV_inst5~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~5_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datae => \ALT_INV_DATA2[25]~input_o\,
	dataf => \ALT_INV_DATA1[25]~input_o\,
	combout => \inst2|auto_generated|l3_w25_n0_mux_dataout~6_combout\);

-- Location: LABCELL_X35_Y2_N36
\inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & \inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\) ) ) # ( !\SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n7_mux_dataout~0_combout\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n5_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n6_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y4_N42
\inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\ = ( \DATA1[24]~input_o\ & ( \DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\) # ((!\SHAMT[1]~input_o\ & ((\DATA1[25]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[27]~input_o\))) ) ) ) # ( 
-- !\DATA1[24]~input_o\ & ( \DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)))) # (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & ((\DATA1[25]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[27]~input_o\)))) ) ) ) # ( \DATA1[24]~input_o\ & ( 
-- !\DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)))) # (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & ((\DATA1[25]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[27]~input_o\)))) ) ) ) # ( !\DATA1[24]~input_o\ & ( !\DATA1[26]~input_o\ & 
-- ( (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & ((\DATA1[25]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[27]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[25]~input_o\,
	datae => \ALT_INV_DATA1[24]~input_o\,
	dataf => \ALT_INV_DATA1[26]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N48
\inst5|inst34|auto_generated|l5_w24_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l5_w24_n0_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( (\inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\ & \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\) ) ) # ( !\SHAMT[2]~input_o\ & ( 
-- (\inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\ & \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w24_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst5|inst34|auto_generated|l5_w24_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y2_N0
\inst2|auto_generated|l3_w24_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w24_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( \SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\)) # 
-- (\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( \SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\)) # (\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( !\SHAMT[2]~input_o\ & ( 
-- (\inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\) # (\SHAMT[3]~input_o\) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( !\SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & 
-- \inst4|inst31|auto_generated|l2_w28_n1_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n2_mux_dataout~0_combout\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n4_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n1_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n3_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst2|auto_generated|l3_w24_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y2_N6
\inst2|auto_generated|l3_w24_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w24_n0_mux_dataout~1_combout\ = ( \inst2|auto_generated|l3_w24_n0_mux_dataout~0_combout\ & ( \DATA2[24]~input_o\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\) # 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & ((\inst5|inst34|auto_generated|l5_w24_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & (\inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0_combout\))) ) 
-- ) ) # ( !\inst2|auto_generated|l3_w24_n0_mux_dataout~0_combout\ & ( \DATA2[24]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & (((!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\) # 
-- (\inst5|inst34|auto_generated|l5_w24_n0_mux_dataout~0_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & (\inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0_combout\ & (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\))) ) ) 
-- ) # ( \inst2|auto_generated|l3_w24_n0_mux_dataout~0_combout\ & ( !\DATA2[24]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & (((\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & 
-- \inst5|inst34|auto_generated|l5_w24_n0_mux_dataout~0_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & (((!\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\)) # (\inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0_combout\))) 
-- ) ) ) # ( !\inst2|auto_generated|l3_w24_n0_mux_dataout~0_combout\ & ( !\DATA2[24]~input_o\ & ( (\inst2|auto_generated|l3_w25_n0_mux_dataout~2_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & 
-- ((\inst5|inst34|auto_generated|l5_w24_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~4_combout\ & (\inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~4_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l4_w24_n1_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~2_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l5_w24_n0_mux_dataout~0_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_DATA2[24]~input_o\,
	combout => \inst2|auto_generated|l3_w24_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X34_Y2_N42
\inst2|auto_generated|l3_w24_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w24_n0_mux_dataout~2_combout\ = ( \DATA2[24]~input_o\ & ( \inst2|auto_generated|l3_w24_n0_mux_dataout~1_combout\ & ( (!\OP[2]~input_o\ & (!\DATA1[24]~input_o\ $ (((\inst7|inst5|inst3|inst5~0_combout\) # (\OP[1]~input_o\))))) ) ) ) 
-- # ( !\DATA2[24]~input_o\ & ( \inst2|auto_generated|l3_w24_n0_mux_dataout~1_combout\ & ( (!\OP[1]~input_o\ & (!\OP[2]~input_o\ & (!\inst7|inst5|inst3|inst5~0_combout\ $ (!\DATA1[24]~input_o\)))) ) ) ) # ( \DATA2[24]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w24_n0_mux_dataout~1_combout\ & ( (!\DATA1[24]~input_o\ $ (((\inst7|inst5|inst3|inst5~0_combout\) # (\OP[1]~input_o\)))) # (\OP[2]~input_o\) ) ) ) # ( !\DATA2[24]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w24_n0_mux_dataout~1_combout\ & ( ((!\OP[1]~input_o\ & (!\inst7|inst5|inst3|inst5~0_combout\ $ (!\DATA1[24]~input_o\)))) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111110001111100011110111111100100000100000001000000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst7|inst5|inst3|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_DATA1[24]~input_o\,
	datae => \ALT_INV_DATA2[24]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w24_n0_mux_dataout~2_combout\);

-- Location: MLABCELL_X34_Y2_N48
\inst2|auto_generated|l3_w24_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w24_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( \inst2|auto_generated|l3_w24_n0_mux_dataout~2_combout\ & ( (\DATA1[24]~input_o\ & 
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( \inst2|auto_generated|l3_w24_n0_mux_dataout~2_combout\ & ( !\DATA1[24]~input_o\ $ (((!\DATA2[24]~input_o\ $ 
-- (\inst|inst5|inst3|inst5~0_combout\)) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\))) ) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\inst2|auto_generated|l3_w24_n0_mux_dataout~2_combout\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\DATA1[24]~input_o\) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\inst2|auto_generated|l3_w24_n0_mux_dataout~2_combout\ & ( !\DATA1[24]~input_o\ $ 
-- (((!\DATA2[24]~input_o\ $ (\inst|inst5|inst3|inst5~0_combout\)) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100110011111111110011001101101001001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[24]~input_o\,
	datab => \ALT_INV_DATA1[24]~input_o\,
	datac => \inst|inst5|inst3|ALT_INV_inst5~0_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w24_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X33_Y3_N42
\inst4|inst31|auto_generated|l4_w23_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w23_n1_mux_dataout~0_combout\ = (!\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n7_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n6_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	datad => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst4|inst31|auto_generated|l4_w23_n1_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y3_N18
\inst2|auto_generated|l3_w23_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w23_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\)) # 
-- (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\) # (\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\)))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ 
-- & ( \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\)) # (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & 
-- (((\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ & \SHAMT[3]~input_o\)))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\ & ((!\SHAMT[3]~input_o\)))) # (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\) # (\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n2_mux_dataout~0_combout\ & ((!\SHAMT[3]~input_o\)))) # 
-- (\SHAMT[2]~input_o\ & (((\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\ & \SHAMT[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n2_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n5_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	datad => \ALT_INV_SHAMT[3]~input_o\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n3_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n4_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w23_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y4_N18
\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\ = ( \DATA1[23]~input_o\ & ( \DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # (\DATA1[25]~input_o\))) # (\SHAMT[0]~input_o\ & (((\DATA1[24]~input_o\) # 
-- (\SHAMT[1]~input_o\)))) ) ) ) # ( !\DATA1[23]~input_o\ & ( \DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\DATA1[25]~input_o\ & (\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((\DATA1[24]~input_o\) # (\SHAMT[1]~input_o\)))) ) ) ) # ( \DATA1[23]~input_o\ 
-- & ( !\DATA1[26]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # (\DATA1[25]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[24]~input_o\)))) ) ) ) # ( !\DATA1[23]~input_o\ & ( !\DATA1[26]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (\DATA1[25]~input_o\ & (\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[25]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[24]~input_o\,
	datae => \ALT_INV_DATA1[23]~input_o\,
	dataf => \ALT_INV_DATA1[26]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N48
\inst5|inst34|auto_generated|l4_w23_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w23_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((\SHAMT[2]~input_o\) # (\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\)))) # 
-- (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\ & ((!\SHAMT[2]~input_o\)))) ) ) # ( !\inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & ((!\SHAMT[3]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101110011000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w27_n1_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[3]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w23_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l4_w23_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N6
\inst2|auto_generated|l3_w23_n0_mux_dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w23_n0_mux_dataout~7_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & ((\inst2|auto_generated|l3_w23_n0_mux_dataout~0_combout\))) # (\SHAMT[4]~input_o\ & 
-- (\inst4|inst31|auto_generated|l4_w23_n1_mux_dataout~0_combout\))))) # (\OP[0]~input_o\ & ((((\inst5|inst34|auto_generated|l4_w23_n0_mux_dataout~0_combout\ & !\SHAMT[4]~input_o\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000000111111000011110000111101010000010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l4_w23_n1_mux_dataout~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[23]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l4_w23_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w23_n0_mux_dataout~7_combout\);

-- Location: MLABCELL_X34_Y2_N54
\inst2|auto_generated|l3_w23_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w23_n0_mux_dataout~1_combout\ = ( \DATA1[23]~input_o\ & ( \OP[2]~input_o\ & ( \inst2|auto_generated|l3_w23_n0_mux_dataout~7_combout\ ) ) ) # ( !\DATA1[23]~input_o\ & ( \OP[2]~input_o\ & ( 
-- \inst2|auto_generated|l3_w23_n0_mux_dataout~7_combout\ ) ) ) # ( \DATA1[23]~input_o\ & ( !\OP[2]~input_o\ & ( !\DATA2[23]~input_o\ $ (((!\OP[1]~input_o\ & \inst7|inst5|inst2|inst5~0_combout\))) ) ) ) # ( !\DATA1[23]~input_o\ & ( !\OP[2]~input_o\ & ( 
-- (!\inst7|inst5|inst2|inst5~0_combout\ $ (!\DATA2[23]~input_o\)) # (\OP[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111110101111101010000101000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~7_combout\,
	datac => \inst7|inst5|inst2|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA2[23]~input_o\,
	datae => \ALT_INV_DATA1[23]~input_o\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst2|auto_generated|l3_w23_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X34_Y2_N30
\inst2|auto_generated|l3_w23_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA2[23]~input_o\ $ (!\DATA1[23]~input_o\ $ (((!\inst|inst5|inst1|inst5~0_combout\ & (\DATA1[22]~input_o\ & \DATA2[22]~input_o\)) # 
-- (\inst|inst5|inst1|inst5~0_combout\ & ((\DATA2[22]~input_o\) # (\DATA1[22]~input_o\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w23_n0_mux_dataout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001111011100001000011110000111101111000100001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst1|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA1[22]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA1[23]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA2[22]~input_o\,
	datag => \ALT_INV_DATA2[23]~input_o\,
	combout => \inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X42_Y2_N0
\inst2|auto_generated|l3_w23_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w23_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[23]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[23]~input_o\ & ( 
-- \inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\ ) ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( !\DATA1[23]~input_o\ & ( \inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~3_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_DATA1[23]~input_o\,
	combout => \inst2|auto_generated|l3_w23_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X33_Y4_N6
\inst2|auto_generated|l3_w22_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w22_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( ((!\SHAMT[2]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & 
-- ( \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\) # (\SHAMT[3]~input_o\)))) # (\SHAMT[2]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ & (!\SHAMT[3]~input_o\))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & 
-- (((!\SHAMT[3]~input_o\ & \inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\)))) # (\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\)) # (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w30_n2_mux_dataout~0_combout\))) # 
-- (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n3_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n2_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n5_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n4_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w22_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y4_N54
\inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\ = ( \DATA1[23]~input_o\ & ( \DATA1[22]~input_o\ & ( (!\SHAMT[1]~input_o\) # ((!\SHAMT[0]~input_o\ & (\DATA1[24]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[25]~input_o\)))) ) ) ) # ( 
-- !\DATA1[23]~input_o\ & ( \DATA1[22]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # (\DATA1[24]~input_o\))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\ & \DATA1[25]~input_o\)))) ) ) ) # ( \DATA1[23]~input_o\ & ( !\DATA1[22]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (\DATA1[24]~input_o\ & (\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # (\DATA1[25]~input_o\)))) ) ) ) # ( !\DATA1[23]~input_o\ & ( !\DATA1[22]~input_o\ & ( (\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & 
-- (\DATA1[24]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[25]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[24]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[25]~input_o\,
	datae => \ALT_INV_DATA1[23]~input_o\,
	dataf => \ALT_INV_DATA1[22]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N30
\inst5|inst34|auto_generated|l4_w22_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w22_n0_mux_dataout~0_combout\ = ( \SHAMT[3]~input_o\ & ( (!\SHAMT[2]~input_o\ & \inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\) ) ) # ( !\SHAMT[3]~input_o\ & ( (!\SHAMT[2]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w22_n0_mux_dataout~0_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w26_n1_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst5|inst34|auto_generated|l4_w22_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N51
\inst4|inst31|auto_generated|l4_w22_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w22_n1_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((\SHAMT[2]~input_o\) # (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\))) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ & ( (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\ & (!\SHAMT[2]~input_o\ & !\SHAMT[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n6_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n7_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l4_w22_n1_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y4_N36
\inst2|auto_generated|l3_w22_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w22_n0_mux_dataout~4_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & (\inst2|auto_generated|l3_w22_n0_mux_dataout~0_combout\)) # (\SHAMT[4]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l4_w22_n1_mux_dataout~0_combout\)))))) # (\OP[0]~input_o\ & (((\inst5|inst34|auto_generated|l4_w22_n0_mux_dataout~0_combout\ & (!\SHAMT[4]~input_o\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101001100000000000011110000111101010011111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l4_w22_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[22]~input_o\,
	datad => \ALT_INV_SHAMT[4]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l4_w22_n1_mux_dataout~0_combout\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w22_n0_mux_dataout~4_combout\);

-- Location: MLABCELL_X34_Y4_N24
\inst2|auto_generated|l3_w22_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w22_n0_mux_dataout~1_combout\ = ( \DATA2[22]~input_o\ & ( \OP[2]~input_o\ & ( !\inst2|auto_generated|l3_w22_n0_mux_dataout~4_combout\ ) ) ) # ( !\DATA2[22]~input_o\ & ( \OP[2]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w22_n0_mux_dataout~4_combout\ ) ) ) # ( \DATA2[22]~input_o\ & ( !\OP[2]~input_o\ & ( (!\OP[1]~input_o\ & (\inst7|inst5|inst2|inst3~combout\)) # (\OP[1]~input_o\ & ((\DATA1[22]~input_o\))) ) ) ) # ( !\DATA2[22]~input_o\ & ( 
-- !\OP[2]~input_o\ & ( (\inst7|inst5|inst2|inst3~combout\ & !\OP[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000111011111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|inst2|ALT_INV_inst3~combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~4_combout\,
	datad => \ALT_INV_DATA1[22]~input_o\,
	datae => \ALT_INV_DATA2[22]~input_o\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst2|auto_generated|l3_w22_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X34_Y2_N3
\inst2|auto_generated|l3_w22_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w22_n0_mux_dataout~2_combout\ = ( \DATA2[22]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst|inst5|inst1|inst5~0_combout\ $ ((\DATA1[22]~input_o\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (((!\inst2|auto_generated|l3_w22_n0_mux_dataout~1_combout\)))) ) ) # ( !\DATA2[22]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst|inst5|inst1|inst5~0_combout\ $ 
-- ((!\DATA1[22]~input_o\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (((!\inst2|auto_generated|l3_w22_n0_mux_dataout~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101001000011110110100100010110111100001001011011110000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst1|ALT_INV_inst5~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datac => \ALT_INV_DATA1[22]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_DATA2[22]~input_o\,
	combout => \inst2|auto_generated|l3_w22_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X42_Y2_N36
\inst2|auto_generated|l3_w22_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w22_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[22]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( 
-- \inst2|auto_generated|l3_w22_n0_mux_dataout~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[22]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~2_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w22_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X39_Y2_N12
\inst|inst4|inst3|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst5~2_combout\ = (\inst|inst4|inst3|inst~0_combout\) # (\inst|inst4|inst3|inst5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst3|ALT_INV_inst5~1_combout\,
	datad => \inst|inst4|inst3|ALT_INV_inst~0_combout\,
	combout => \inst|inst4|inst3|inst5~2_combout\);

-- Location: LABCELL_X36_Y4_N48
\inst2|auto_generated|l3_w21_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w21_n0_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[2]~input_o\ & ( \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ & ( (\inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\) # 
-- (\SHAMT[3]~input_o\) ) ) ) # ( \SHAMT[2]~input_o\ & ( !\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[2]~input_o\ & ( !\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & \inst4|inst31|auto_generated|l2_w29_n2_mux_dataout~0_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000110110001101101010101111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n5_mux_dataout~0_combout\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n3_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n2_mux_dataout~0_combout\,
	datae => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n4_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w21_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y2_N0
\inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\ = ( \DATA1[24]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\) # (\DATA1[22]~input_o\)))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)) # 
-- (\DATA1[23]~input_o\))) ) ) ) # ( !\DATA1[24]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\) # (\DATA1[22]~input_o\)))) # (\SHAMT[1]~input_o\ & (\DATA1[23]~input_o\ & (!\SHAMT[0]~input_o\))) ) ) ) # ( 
-- \DATA1[24]~input_o\ & ( !\DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\ & \DATA1[22]~input_o\)))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)) # (\DATA1[23]~input_o\))) ) ) ) # ( !\DATA1[24]~input_o\ & ( !\DATA1[21]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\ & \DATA1[22]~input_o\)))) # (\SHAMT[1]~input_o\ & (\DATA1[23]~input_o\ & (!\SHAMT[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[22]~input_o\,
	datae => \ALT_INV_DATA1[24]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N36
\inst5|inst34|auto_generated|l4_w21_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w21_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\) # ((\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\)))) # 
-- (\SHAMT[3]~input_o\ & (!\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\)))) ) ) # ( !\inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (\SHAMT[2]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & (!\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w25_n0_mux_dataout~0_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w21_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l4_w21_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N18
\inst4|inst31|auto_generated|l4_w21_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w21_n1_mux_dataout~0_combout\ = ( !\SHAMT[3]~input_o\ & ( (!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n6_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n7_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst4|inst31|auto_generated|l4_w21_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N0
\inst2|auto_generated|l3_w21_n0_mux_dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w21_n0_mux_dataout~7_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & (\inst2|auto_generated|l3_w21_n0_mux_dataout~0_combout\)) # (\SHAMT[4]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l4_w21_n1_mux_dataout~0_combout\)))))) # (\OP[0]~input_o\ & (((\inst5|inst34|auto_generated|l4_w21_n0_mux_dataout~0_combout\ & (!\SHAMT[4]~input_o\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101001100000000000011110000111101010011111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l4_w21_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[21]~input_o\,
	datad => \ALT_INV_SHAMT[4]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l4_w21_n1_mux_dataout~0_combout\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w21_n0_mux_dataout~7_combout\);

-- Location: MLABCELL_X39_Y2_N18
\inst2|auto_generated|l3_w21_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w21_n0_mux_dataout~1_combout\ = ( \inst2|auto_generated|l3_w21_n0_mux_dataout~7_combout\ & ( \DATA1[21]~input_o\ & ( (!\DATA2[21]~input_o\ $ (((!\OP[1]~input_o\ & \inst7|inst5|inst|inst5~2_combout\)))) # (\OP[2]~input_o\) ) ) ) # 
-- ( !\inst2|auto_generated|l3_w21_n0_mux_dataout~7_combout\ & ( \DATA1[21]~input_o\ & ( (!\OP[2]~input_o\ & (!\DATA2[21]~input_o\ $ (((!\OP[1]~input_o\ & \inst7|inst5|inst|inst5~2_combout\))))) ) ) ) # ( 
-- \inst2|auto_generated|l3_w21_n0_mux_dataout~7_combout\ & ( !\DATA1[21]~input_o\ & ( ((!\DATA2[21]~input_o\ $ (!\inst7|inst5|inst|inst5~2_combout\)) # (\OP[2]~input_o\)) # (\OP[1]~input_o\) ) ) ) # ( !\inst2|auto_generated|l3_w21_n0_mux_dataout~7_combout\ 
-- & ( !\DATA1[21]~input_o\ & ( (!\OP[2]~input_o\ & ((!\DATA2[21]~input_o\ $ (!\inst7|inst5|inst|inst5~2_combout\)) # (\OP[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110100000000011111011111111111000110000000001100011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_DATA2[21]~input_o\,
	datac => \inst7|inst5|inst|ALT_INV_inst5~2_combout\,
	datad => \ALT_INV_OP[2]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~7_combout\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst2|auto_generated|l3_w21_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X39_Y2_N30
\inst2|auto_generated|l3_w21_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w21_n0_mux_dataout~3_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA2[21]~input_o\ $ (!\DATA1[21]~input_o\ $ (((!\DATA2[20]~input_o\ & (\inst|inst4|inst3|inst5~2_combout\ & \DATA1[20]~input_o\)) # 
-- (\DATA2[20]~input_o\ & ((\DATA1[20]~input_o\) # (\inst|inst4|inst3|inst5~2_combout\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w21_n0_mux_dataout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001111001111000000011110000111111100001100001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[20]~input_o\,
	datab => \inst|inst4|inst3|ALT_INV_inst5~2_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA1[20]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	datag => \ALT_INV_DATA2[21]~input_o\,
	combout => \inst2|auto_generated|l3_w21_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X42_Y2_N42
\inst2|auto_generated|l3_w21_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w21_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[21]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[21]~input_o\ & ( 
-- \inst2|auto_generated|l3_w21_n0_mux_dataout~3_combout\ ) ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( !\DATA1[21]~input_o\ & ( \inst2|auto_generated|l3_w21_n0_mux_dataout~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~3_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst2|auto_generated|l3_w21_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X36_Y2_N36
\inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\ = ( \DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\) # ((!\SHAMT[0]~input_o\ & ((\DATA1[22]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[23]~input_o\))) ) ) ) # ( 
-- !\DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & ((\DATA1[22]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[23]~input_o\)))) ) ) ) # ( \DATA1[20]~input_o\ & ( 
-- !\DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & ((\DATA1[22]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[23]~input_o\)))) ) ) ) # ( !\DATA1[20]~input_o\ & ( !\DATA1[21]~input_o\ & 
-- ( (\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & ((\DATA1[22]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[23]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[22]~input_o\,
	datae => \ALT_INV_DATA1[20]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N57
\inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\)) # (\inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\ & \inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\)))) ) ) # ( !\inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\ & (\SHAMT[3]~input_o\))) # (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\ & \inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001000011010011000100111101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w24_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w20_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y2_N39
\inst4|inst31|auto_generated|l4_w20_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w20_n1_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & \inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0_combout\) ) ) # ( !\SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & 
-- \inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n7_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n6_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst4|inst31|auto_generated|l4_w20_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y2_N12
\inst2|auto_generated|l3_w20_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w20_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & 
-- (((\inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\) # (\SHAMT[3]~input_o\)))) # (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\)) # (\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\) # (\SHAMT[3]~input_o\)))) # 
-- (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\ & (\SHAMT[3]~input_o\))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( 
-- (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\ & \inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\)))) # (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\)) # (\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\ & \inst4|inst31|auto_generated|l2_w28_n2_mux_dataout~0_combout\)))) # 
-- (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\ & (\SHAMT[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n5_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n2_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n3_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n4_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w20_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y2_N33
\inst2|auto_generated|l3_w20_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w20_n0_mux_dataout~4_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & ((\inst2|auto_generated|l3_w20_n0_mux_dataout~0_combout\))) # (\SHAMT[4]~input_o\ & 
-- (\inst4|inst31|auto_generated|l4_w20_n1_mux_dataout~0_combout\))))) # (\OP[0]~input_o\ & (\inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0_combout\ & (((!\SHAMT[4]~input_o\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110000000011110000111111110101001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l4_w20_n0_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l4_w20_n1_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[20]~input_o\,
	datad => \ALT_INV_SHAMT[4]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~0_combout\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w20_n0_mux_dataout~4_combout\);

-- Location: MLABCELL_X39_Y2_N24
\inst7|inst4|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst4|inst3|inst5~0_combout\ = ( \inst7|inst4|inst2|inst5~0_combout\ & ( (!\DATA2[19]~input_o\) # (\DATA1[19]~input_o\) ) ) # ( !\inst7|inst4|inst2|inst5~0_combout\ & ( (\DATA1[19]~input_o\ & !\DATA2[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[19]~input_o\,
	datac => \ALT_INV_DATA2[19]~input_o\,
	dataf => \inst7|inst4|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst7|inst4|inst3|inst5~0_combout\);

-- Location: LABCELL_X35_Y2_N48
\inst2|auto_generated|l3_w20_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w20_n0_mux_dataout~1_combout\ = ( \OP[1]~input_o\ & ( \DATA1[20]~input_o\ & ( (!\OP[2]~input_o\ & ((\DATA2[20]~input_o\))) # (\OP[2]~input_o\ & (!\inst2|auto_generated|l3_w20_n0_mux_dataout~4_combout\)) ) ) ) # ( !\OP[1]~input_o\ 
-- & ( \DATA1[20]~input_o\ & ( (!\OP[2]~input_o\ & ((!\inst7|inst4|inst3|inst5~0_combout\ $ (\DATA2[20]~input_o\)))) # (\OP[2]~input_o\ & (!\inst2|auto_generated|l3_w20_n0_mux_dataout~4_combout\)) ) ) ) # ( \OP[1]~input_o\ & ( !\DATA1[20]~input_o\ & ( 
-- (!\inst2|auto_generated|l3_w20_n0_mux_dataout~4_combout\ & \OP[2]~input_o\) ) ) ) # ( !\OP[1]~input_o\ & ( !\DATA1[20]~input_o\ & ( (!\OP[2]~input_o\ & ((!\inst7|inst4|inst3|inst5~0_combout\ $ (!\DATA2[20]~input_o\)))) # (\OP[2]~input_o\ & 
-- (!\inst2|auto_generated|l3_w20_n0_mux_dataout~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101011001010000010100000101011001010001110100000101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~4_combout\,
	datab => \inst7|inst4|inst3|ALT_INV_inst5~0_combout\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_DATA2[20]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_DATA1[20]~input_o\,
	combout => \inst2|auto_generated|l3_w20_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X39_Y2_N9
\inst2|auto_generated|l3_w20_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w20_n0_mux_dataout~2_combout\ = ( \DATA2[20]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA1[20]~input_o\ $ ((\inst|inst4|inst3|inst5~2_combout\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (((!\inst2|auto_generated|l3_w20_n0_mux_dataout~1_combout\)))) ) ) # ( !\DATA2[20]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA1[20]~input_o\ $ 
-- ((!\inst|inst4|inst3|inst5~2_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (((!\inst2|auto_generated|l3_w20_n0_mux_dataout~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101001000011110110100100010110111100001001011011110000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[20]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datac => \inst|inst4|inst3|ALT_INV_inst5~2_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_DATA2[20]~input_o\,
	combout => \inst2|auto_generated|l3_w20_n0_mux_dataout~2_combout\);

-- Location: MLABCELL_X39_Y2_N27
\inst2|auto_generated|l3_w20_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w20_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w20_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\DATA1[20]~input_o\) ) ) # ( 
-- !\inst2|auto_generated|l3_w20_n0_mux_dataout~2_combout\ & ( (\DATA1[20]~input_o\ & \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[20]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w20_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X40_Y3_N57
\inst|inst4|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst1|inst5~0_combout\ = ( \inst|inst4|inst|inst5~0_combout\ & ( (\DATA1[17]~input_o\ & \DATA2[17]~input_o\) ) ) # ( !\inst|inst4|inst|inst5~0_combout\ & ( (\DATA2[17]~input_o\) # (\DATA1[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000000101010101010101111111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[17]~input_o\,
	datad => \ALT_INV_DATA2[17]~input_o\,
	datae => \inst|inst4|inst|ALT_INV_inst5~0_combout\,
	combout => \inst|inst4|inst1|inst5~0_combout\);

-- Location: MLABCELL_X34_Y3_N24
\inst2|auto_generated|l3_w19_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w19_n0_mux_dataout~0_combout\ = ( \SHAMT[3]~input_o\ & ( \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\))) # 
-- (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[3]~input_o\ & ( \inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (\SHAMT[2]~input_o\) # 
-- (\inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\) ) ) ) # ( \SHAMT[3]~input_o\ & ( !\inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w31_n5_mux_dataout~0_combout\))) # 
-- (\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[3]~input_o\ & ( !\inst4|inst31|auto_generated|l2_w31_n4_mux_dataout~0_combout\ & ( (\inst4|inst31|auto_generated|l2_w31_n3_mux_dataout~0_combout\ & 
-- !\SHAMT[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n3_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n6_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n5_mux_dataout~0_combout\,
	datae => \ALT_INV_SHAMT[3]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n4_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w19_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y2_N12
\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\ = ( \DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)) # (\DATA1[19]~input_o\))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\) # 
-- (\DATA1[22]~input_o\)))) ) ) ) # ( !\DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[19]~input_o\ & (!\SHAMT[0]~input_o\))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\) # (\DATA1[22]~input_o\)))) ) ) ) # ( 
-- \DATA1[20]~input_o\ & ( !\DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)) # (\DATA1[19]~input_o\))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\ & \DATA1[22]~input_o\)))) ) ) ) # ( !\DATA1[20]~input_o\ & ( !\DATA1[21]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (\DATA1[19]~input_o\ & (!\SHAMT[0]~input_o\))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\ & \DATA1[22]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[19]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[22]~input_o\,
	datae => \ALT_INV_DATA1[20]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N30
\inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\)) # 
-- (\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\))) ) ) ) # ( !\SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\) # 
-- (\inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\) ) ) ) # ( \SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\)) # 
-- (\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\))) ) ) ) # ( !\SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\ & 
-- \SHAMT[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w23_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w27_n1_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[3]~input_o\,
	datae => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w19_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N27
\inst4|inst31|auto_generated|l4_w19_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w19_n1_mux_dataout~0_combout\ = (\inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\ & (!\SHAMT[3]~input_o\ & !\SHAMT[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n7_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst4|inst31|auto_generated|l4_w19_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X40_Y2_N12
\inst2|auto_generated|l3_w19_n0_mux_dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w19_n0_mux_dataout~7_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & (\inst2|auto_generated|l3_w19_n0_mux_dataout~0_combout\)) # (\SHAMT[4]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l4_w19_n1_mux_dataout~0_combout\)))))) # (\OP[0]~input_o\ & (((\inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0_combout\ & (!\SHAMT[4]~input_o\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101001100000000000011110000111101010011111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l4_w19_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[19]~input_o\,
	datad => \ALT_INV_SHAMT[4]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l4_w19_n1_mux_dataout~0_combout\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w19_n0_mux_dataout~7_combout\);

-- Location: LABCELL_X40_Y2_N42
\inst2|auto_generated|l3_w19_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w19_n0_mux_dataout~1_combout\ = ( \OP[1]~input_o\ & ( \DATA2[19]~input_o\ & ( (!\OP[2]~input_o\ & (!\DATA1[19]~input_o\)) # (\OP[2]~input_o\ & ((\inst2|auto_generated|l3_w19_n0_mux_dataout~7_combout\))) ) ) ) # ( !\OP[1]~input_o\ 
-- & ( \DATA2[19]~input_o\ & ( (!\OP[2]~input_o\ & (!\inst7|inst4|inst2|inst5~0_combout\ $ ((!\DATA1[19]~input_o\)))) # (\OP[2]~input_o\ & (((\inst2|auto_generated|l3_w19_n0_mux_dataout~7_combout\)))) ) ) ) # ( \OP[1]~input_o\ & ( !\DATA2[19]~input_o\ & ( 
-- (!\OP[2]~input_o\) # (\inst2|auto_generated|l3_w19_n0_mux_dataout~7_combout\) ) ) ) # ( !\OP[1]~input_o\ & ( !\DATA2[19]~input_o\ & ( (!\OP[2]~input_o\ & (!\inst7|inst4|inst2|inst5~0_combout\ $ ((\DATA1[19]~input_o\)))) # (\OP[2]~input_o\ & 
-- (((\inst2|auto_generated|l3_w19_n0_mux_dataout~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010011111111100001111111101100000011011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|inst2|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA1[19]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~7_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst2|auto_generated|l3_w19_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X40_Y2_N6
\inst2|auto_generated|l3_w19_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w19_n0_mux_dataout~3_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA1[19]~input_o\ $ (!\DATA2[19]~input_o\ $ (((!\inst|inst4|inst1|inst5~0_combout\ & (\DATA2[18]~input_o\ & \DATA1[18]~input_o\)) # 
-- (\inst|inst4|inst1|inst5~0_combout\ & ((\DATA1[18]~input_o\) # (\DATA2[18]~input_o\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w19_n0_mux_dataout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011110001101001000011110000111101101001110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst1|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA1[19]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA2[18]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA1[18]~input_o\,
	datag => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst2|auto_generated|l3_w19_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X40_Y2_N36
\inst2|auto_generated|l3_w19_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w19_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w19_n0_mux_dataout~3_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\DATA1[19]~input_o\) ) ) # ( 
-- !\inst2|auto_generated|l3_w19_n0_mux_dataout~3_combout\ & ( (\DATA1[19]~input_o\ & \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[19]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~3_combout\,
	combout => \inst2|auto_generated|l3_w19_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X33_Y4_N42
\inst2|auto_generated|l3_w18_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w18_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((\SHAMT[2]~input_o\)) # 
-- (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & (((!\SHAMT[2]~input_o\) # (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\)))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ 
-- & ( \inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((\SHAMT[2]~input_o\)) # (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & 
-- (((\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\ & \SHAMT[2]~input_o\)))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ & ((!\SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & (((!\SHAMT[2]~input_o\) # (\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w30_n5_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w30_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w30_n3_mux_dataout~0_combout\ & ((!\SHAMT[2]~input_o\)))) # 
-- (\SHAMT[3]~input_o\ & (((\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\ & \SHAMT[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n3_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n6_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n5_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n4_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w18_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y2_N18
\inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\ = ( \DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( ((!\SHAMT[0]~input_o\ & ((\DATA1[18]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\))) # (\SHAMT[1]~input_o\) ) ) ) # ( 
-- !\DATA1[20]~input_o\ & ( \DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & ((\DATA1[18]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)))) ) ) ) # ( \DATA1[20]~input_o\ & ( 
-- !\DATA1[21]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & ((\DATA1[18]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)))) ) ) ) # ( !\DATA1[20]~input_o\ & ( !\DATA1[21]~input_o\ & 
-- ( (!\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & ((\DATA1[18]~input_o\))) # (\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[19]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[18]~input_o\,
	datae => \ALT_INV_DATA1[20]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N42
\inst5|inst34|auto_generated|l4_w18_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w18_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\ & ( \SHAMT[3]~input_o\ & ( (\SHAMT[2]~input_o\) # (\inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\ & ( \SHAMT[3]~input_o\ & ( (\inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\ & !\SHAMT[2]~input_o\) ) ) ) # ( \inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\ & ( 
-- !\SHAMT[3]~input_o\ & ( (!\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\)) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\ & ( !\SHAMT[3]~input_o\ & ( (!\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w22_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w18_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l2_w26_n1_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst5|inst34|auto_generated|l4_w18_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N21
\inst4|inst31|auto_generated|l4_w18_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w18_n1_mux_dataout~0_combout\ = ( !\SHAMT[3]~input_o\ & ( (\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ & !\SHAMT[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n7_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst4|inst31|auto_generated|l4_w18_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X40_Y2_N30
\inst2|auto_generated|l3_w18_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w18_n0_mux_dataout~4_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & (\inst2|auto_generated|l3_w18_n0_mux_dataout~0_combout\)) # (\SHAMT[4]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l4_w18_n1_mux_dataout~0_combout\)))))) # (\OP[0]~input_o\ & (((\inst5|inst34|auto_generated|l4_w18_n0_mux_dataout~0_combout\ & ((!\SHAMT[4]~input_o\)))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101001101010011000011110000111100000000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l4_w18_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[18]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l4_w18_n1_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w18_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X40_Y2_N48
\inst2|auto_generated|l3_w18_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w18_n0_mux_dataout~1_combout\ = ( \DATA1[18]~input_o\ & ( \OP[1]~input_o\ & ( (!\OP[2]~input_o\ & ((\DATA2[18]~input_o\))) # (\OP[2]~input_o\ & (!\inst2|auto_generated|l3_w18_n0_mux_dataout~4_combout\)) ) ) ) # ( 
-- !\DATA1[18]~input_o\ & ( \OP[1]~input_o\ & ( (!\inst2|auto_generated|l3_w18_n0_mux_dataout~4_combout\ & \OP[2]~input_o\) ) ) ) # ( \DATA1[18]~input_o\ & ( !\OP[1]~input_o\ & ( (!\OP[2]~input_o\ & (!\inst7|inst4|inst1|inst5~0_combout\ $ 
-- (((!\DATA2[18]~input_o\))))) # (\OP[2]~input_o\ & (((!\inst2|auto_generated|l3_w18_n0_mux_dataout~4_combout\)))) ) ) ) # ( !\DATA1[18]~input_o\ & ( !\OP[1]~input_o\ & ( (!\OP[2]~input_o\ & (!\inst7|inst4|inst1|inst5~0_combout\ $ 
-- (((\DATA2[18]~input_o\))))) # (\OP[2]~input_o\ & (((!\inst2|auto_generated|l3_w18_n0_mux_dataout~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110001011100010111001010110000001100000011000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|inst1|ALT_INV_inst5~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~4_combout\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_DATA2[18]~input_o\,
	datae => \ALT_INV_DATA1[18]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst2|auto_generated|l3_w18_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X40_Y2_N57
\inst2|auto_generated|l3_w18_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w18_n0_mux_dataout~2_combout\ = ( \DATA2[18]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\DATA1[18]~input_o\ $ (\inst|inst4|inst1|inst5~0_combout\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w18_n0_mux_dataout~1_combout\)) ) ) # ( !\DATA2[18]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\DATA1[18]~input_o\ $ 
-- (!\inst|inst4|inst1|inst5~0_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w18_n0_mux_dataout~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101011001010001110101100101011001010001110101100101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~1_combout\,
	datab => \ALT_INV_DATA1[18]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datad => \inst|inst4|inst1|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA2[18]~input_o\,
	combout => \inst2|auto_generated|l3_w18_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X40_Y2_N54
\inst2|auto_generated|l3_w18_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w18_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[18]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( 
-- \inst2|auto_generated|l3_w18_n0_mux_dataout~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[18]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~2_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w18_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X36_Y2_N54
\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ = ( \DATA1[18]~input_o\ & ( \SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[20]~input_o\))) ) ) ) # ( !\DATA1[18]~input_o\ & ( 
-- \SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\DATA1[19]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[20]~input_o\))) ) ) ) # ( \DATA1[18]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (\DATA1[17]~input_o\) # (\SHAMT[0]~input_o\) ) ) ) # ( !\DATA1[18]~input_o\ & ( 
-- !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & \DATA1[17]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[19]~input_o\,
	datab => \ALT_INV_DATA1[20]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[17]~input_o\,
	datae => \ALT_INV_DATA1[18]~input_o\,
	dataf => \ALT_INV_SHAMT[1]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N18
\inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\) # ((!\SHAMT[2]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\)))) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & ( 
-- \inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((\SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\))))) ) ) ) # ( \inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & 
-- (((!\SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\))))) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\ & ( (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\)) # 
-- (\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w25_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l2_w17_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w21_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N57
\inst4|inst31|auto_generated|l4_w17_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w17_n1_mux_dataout~0_combout\ = ( \DATA1[1]~input_o\ & ( (\inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\ & ((!\SHAMT[0]~input_o\) # (\DATA1[0]~input_o\))) ) ) # ( !\DATA1[1]~input_o\ & ( (\SHAMT[0]~input_o\ & 
-- (\inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\ & \DATA1[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHAMT[0]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~0_combout\,
	datad => \ALT_INV_DATA1[0]~input_o\,
	dataf => \ALT_INV_DATA1[1]~input_o\,
	combout => \inst4|inst31|auto_generated|l4_w17_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N54
\inst2|auto_generated|l3_w17_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w17_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\)) # 
-- (\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (((\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\) # (\SHAMT[3]~input_o\)))) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ 
-- & ( \inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\)) # (\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\ & 
-- \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\)))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\ & (\SHAMT[3]~input_o\))) # (\SHAMT[2]~input_o\ & (((\inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\) # (\SHAMT[3]~input_o\)))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w29_n3_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w29_n5_mux_dataout~0_combout\ & (\SHAMT[3]~input_o\))) # 
-- (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\ & \inst4|inst31|auto_generated|l2_w29_n4_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n5_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n4_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n6_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n3_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w17_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X40_Y3_N36
\inst2|auto_generated|l3_w17_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w17_n0_mux_dataout~4_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & ((\inst2|auto_generated|l3_w17_n0_mux_dataout~0_combout\))) # (\SHAMT[4]~input_o\ & 
-- (\inst4|inst31|auto_generated|l4_w17_n1_mux_dataout~0_combout\))))) # (\OP[0]~input_o\ & (\inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0_combout\ & (((!\SHAMT[4]~input_o\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010111110101000011110000111100110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l4_w17_n0_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l4_w17_n1_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[17]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w17_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X40_Y3_N30
\inst2|auto_generated|l3_w17_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w17_n0_mux_dataout~1_combout\ = ( !\inst2|auto_generated|l3_w17_n0_mux_dataout~4_combout\ & ( \OP[2]~input_o\ ) ) # ( \inst2|auto_generated|l3_w17_n0_mux_dataout~4_combout\ & ( !\OP[2]~input_o\ & ( (!\OP[1]~input_o\ & 
-- (!\DATA1[17]~input_o\ $ (!\DATA2[17]~input_o\ $ (\inst7|inst4|inst|inst5~0_combout\)))) # (\OP[1]~input_o\ & (\DATA1[17]~input_o\ & (\DATA2[17]~input_o\))) ) ) ) # ( !\inst2|auto_generated|l3_w17_n0_mux_dataout~4_combout\ & ( !\OP[2]~input_o\ & ( 
-- (!\OP[1]~input_o\ & (!\DATA1[17]~input_o\ $ (!\DATA2[17]~input_o\ $ (\inst7|inst4|inst|inst5~0_combout\)))) # (\OP[1]~input_o\ & (\DATA1[17]~input_o\ & (\DATA2[17]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100110000101010010011000010111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[17]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_DATA2[17]~input_o\,
	datad => \inst7|inst4|inst|ALT_INV_inst5~0_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~4_combout\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst2|auto_generated|l3_w17_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X40_Y3_N6
\inst2|auto_generated|l3_w17_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w17_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w17_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA1[17]~input_o\ $ (!\DATA2[17]~input_o\ $ 
-- (!\inst|inst4|inst|inst5~0_combout\)))) ) ) # ( !\inst2|auto_generated|l3_w17_n0_mux_dataout~1_combout\ & ( (!\DATA1[17]~input_o\ $ (!\DATA2[17]~input_o\ $ (!\inst|inst4|inst|inst5~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011011101111011101101110111101110000100010010001000010001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[17]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datac => \ALT_INV_DATA2[17]~input_o\,
	datad => \inst|inst4|inst|ALT_INV_inst5~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w17_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X40_Y3_N9
\inst2|auto_generated|l3_w17_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w17_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w17_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\DATA1[17]~input_o\) ) ) # ( 
-- !\inst2|auto_generated|l3_w17_n0_mux_dataout~2_combout\ & ( (\DATA1[17]~input_o\ & \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[17]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w17_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X35_Y1_N42
\inst4|inst31|auto_generated|l4_w16_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l4_w16_n1_mux_dataout~0_combout\ = (\inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\ & (!\SHAMT[0]~input_o\ & \DATA1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[0]~input_o\,
	combout => \inst4|inst31|auto_generated|l4_w16_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y2_N54
\inst2|auto_generated|l3_w16_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w16_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\ & ( \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( ((!\SHAMT[3]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\) ) ) ) # ( !\inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\ & 
-- ( \inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\))) # (\SHAMT[3]~input_o\ & (!\SHAMT[2]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\))) ) ) ) # ( \inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (!\SHAMT[2]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\)))) # (\SHAMT[3]~input_o\ & (((\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\))) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\ & ( !\inst4|inst31|auto_generated|l2_w28_n4_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & ((!\SHAMT[3]~input_o\ & ((\inst4|inst31|auto_generated|l2_w28_n3_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst4|inst31|auto_generated|l2_w28_n5_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n5_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n3_mux_dataout~0_combout\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n6_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n4_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w16_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y2_N6
\inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\ = ( \DATA1[18]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\) # ((!\SHAMT[1]~input_o\ & (\DATA1[17]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[19]~input_o\)))) ) ) ) # ( 
-- !\DATA1[18]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)) # (\DATA1[17]~input_o\))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\ & \DATA1[19]~input_o\)))) ) ) ) # ( \DATA1[18]~input_o\ & ( !\DATA1[16]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (\DATA1[17]~input_o\ & (\SHAMT[0]~input_o\))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\) # (\DATA1[19]~input_o\)))) ) ) ) # ( !\DATA1[18]~input_o\ & ( !\DATA1[16]~input_o\ & ( (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & 
-- (\DATA1[17]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[19]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[17]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[19]~input_o\,
	datae => \ALT_INV_DATA1[18]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N0
\inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0_combout\ = ( \SHAMT[3]~input_o\ & ( \inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[3]~input_o\ & ( \inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\) # 
-- (\inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\) ) ) ) # ( \SHAMT[3]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[3]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\ & 
-- \SHAMT[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w20_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w24_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	datae => \ALT_INV_SHAMT[3]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w16_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X39_Y4_N36
\inst2|auto_generated|l3_w16_n0_mux_dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w16_n0_mux_dataout~7_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & ((!\SHAMT[4]~input_o\ & (((\inst2|auto_generated|l3_w16_n0_mux_dataout~0_combout\)))) # (\SHAMT[4]~input_o\ & 
-- (\inst4|inst31|auto_generated|l4_w16_n1_mux_dataout~0_combout\)))) # (\OP[0]~input_o\ & ((((!\SHAMT[4]~input_o\ & \inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0_combout\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000001010000000011110000111100111111010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l4_w16_n1_mux_dataout~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[16]~input_o\,
	datad => \ALT_INV_SHAMT[4]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l4_w16_n0_mux_dataout~0_combout\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w16_n0_mux_dataout~7_combout\);

-- Location: MLABCELL_X39_Y4_N18
\inst2|auto_generated|l3_w16_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w16_n0_mux_dataout~1_combout\ = ( \inst2|auto_generated|l3_w16_n0_mux_dataout~7_combout\ & ( \DATA1[16]~input_o\ & ( (!\DATA2[16]~input_o\ $ (((!\OP[1]~input_o\ & \inst7|inst3|inst3|inst5~2_combout\)))) # (\OP[2]~input_o\) ) ) ) # 
-- ( !\inst2|auto_generated|l3_w16_n0_mux_dataout~7_combout\ & ( \DATA1[16]~input_o\ & ( (!\OP[2]~input_o\ & (!\DATA2[16]~input_o\ $ (((!\OP[1]~input_o\ & \inst7|inst3|inst3|inst5~2_combout\))))) ) ) ) # ( 
-- \inst2|auto_generated|l3_w16_n0_mux_dataout~7_combout\ & ( !\DATA1[16]~input_o\ & ( ((!\inst7|inst3|inst3|inst5~2_combout\ $ (!\DATA2[16]~input_o\)) # (\OP[2]~input_o\)) # (\OP[1]~input_o\) ) ) ) # ( !\inst2|auto_generated|l3_w16_n0_mux_dataout~7_combout\ 
-- & ( !\DATA1[16]~input_o\ & ( (!\OP[2]~input_o\ & ((!\inst7|inst3|inst3|inst5~2_combout\ $ (!\DATA2[16]~input_o\)) # (\OP[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011010000011111111101111111010000001000001101111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst7|inst3|inst3|ALT_INV_inst5~2_combout\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_DATA2[16]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~7_combout\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst2|auto_generated|l3_w16_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X39_Y4_N15
\inst|inst3|inst2|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst2|inst5~2_combout\ = (\inst|inst3|inst2|inst~0_combout\) # (\inst|inst3|inst2|inst5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst2|ALT_INV_inst5~1_combout\,
	datad => \inst|inst3|inst2|ALT_INV_inst~0_combout\,
	combout => \inst|inst3|inst2|inst5~2_combout\);

-- Location: MLABCELL_X39_Y4_N0
\inst2|auto_generated|l3_w16_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w16_n0_mux_dataout~3_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA1[16]~input_o\ $ (!\DATA2[16]~input_o\ $ (((!\inst|inst3|inst2|inst5~2_combout\ & (\DATA2[15]~input_o\ & \DATA1[15]~input_o\)) # 
-- (\inst|inst3|inst2|inst5~2_combout\ & ((\DATA1[15]~input_o\) # (\DATA2[15]~input_o\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w16_n0_mux_dataout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110011001101001000011110000111101101001100110010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[16]~input_o\,
	datab => \ALT_INV_DATA2[16]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA2[15]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA1[15]~input_o\,
	datag => \inst|inst3|inst2|ALT_INV_inst5~2_combout\,
	combout => \inst2|auto_generated|l3_w16_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X42_Y2_N21
\inst2|auto_generated|l3_w16_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w16_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[16]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[16]~input_o\ & ( 
-- \inst2|auto_generated|l3_w16_n0_mux_dataout~3_combout\ ) ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( !\DATA1[16]~input_o\ & ( \inst2|auto_generated|l3_w16_n0_mux_dataout~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~3_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst2|auto_generated|l3_w16_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X35_Y1_N45
\inst5|inst34|auto_generated|l4_w15_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w15_n1_mux_dataout~0_combout\ = (\inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\ & (!\SHAMT[0]~input_o\ & \DATA1[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[0]~input_o\,
	datac => \ALT_INV_DATA1[31]~input_o\,
	combout => \inst5|inst34|auto_generated|l4_w15_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y2_N42
\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\ = ( \DATA1[18]~input_o\ & ( \DATA1[16]~input_o\ & ( ((!\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[17]~input_o\)))) # (\SHAMT[0]~input_o\) ) ) ) # ( 
-- !\DATA1[18]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\)) # (\DATA1[15]~input_o\))) # (\SHAMT[1]~input_o\ & (((\DATA1[17]~input_o\ & !\SHAMT[0]~input_o\)))) ) ) ) # ( \DATA1[18]~input_o\ & ( !\DATA1[16]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\ & ((!\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & (((\SHAMT[0]~input_o\) # (\DATA1[17]~input_o\)))) ) ) ) # ( !\DATA1[18]~input_o\ & ( !\DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & 
-- (\DATA1[15]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[17]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[15]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_DATA1[17]~input_o\,
	datad => \ALT_INV_SHAMT[0]~input_o\,
	datae => \ALT_INV_DATA1[18]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N36
\inst2|auto_generated|l3_w15_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w15_n0_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\ & ( (\SHAMT[3]~input_o\) # 
-- (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\) ) ) ) # ( \SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\ & 
-- !\SHAMT[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w19_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w15_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[3]~input_o\,
	datae => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w23_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w15_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y3_N30
\inst2|auto_generated|l3_w15_n0_mux_dataout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w15_n0_mux_dataout~6_combout\ = ( !\OP[1]~input_o\ & ( (!\SHAMT[4]~input_o\ & ((!\OP[0]~input_o\ & (\inst4|inst31|auto_generated|l4_w31_n1_mux_dataout~0_combout\)) # (\OP[0]~input_o\ & 
-- (((\inst2|auto_generated|l3_w15_n0_mux_dataout~0_combout\)))))) # (\SHAMT[4]~input_o\ & (((\OP[0]~input_o\ & (\inst5|inst34|auto_generated|l4_w15_n1_mux_dataout~0_combout\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000000100101000011110000111100101010001011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[4]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l4_w31_n1_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[15]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l4_w15_n1_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~0_combout\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w15_n0_mux_dataout~6_combout\);

-- Location: LABCELL_X40_Y4_N51
\inst7|inst3|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst3|inst2|inst5~0_combout\ = ( \inst7|inst3|inst1|inst5~0_combout\ & ( (!\DATA2[14]~input_o\) # (\DATA1[14]~input_o\) ) ) # ( !\inst7|inst3|inst1|inst5~0_combout\ & ( (!\DATA2[14]~input_o\ & \DATA1[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[14]~input_o\,
	datac => \ALT_INV_DATA1[14]~input_o\,
	dataf => \inst7|inst3|inst1|ALT_INV_inst5~0_combout\,
	combout => \inst7|inst3|inst2|inst5~0_combout\);

-- Location: MLABCELL_X39_Y4_N54
\inst2|auto_generated|l3_w15_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w15_n0_mux_dataout~3_combout\ = ( \OP[2]~input_o\ & ( \inst7|inst3|inst2|inst5~0_combout\ & ( !\inst2|auto_generated|l3_w15_n0_mux_dataout~6_combout\ ) ) ) # ( !\OP[2]~input_o\ & ( \inst7|inst3|inst2|inst5~0_combout\ & ( 
-- (!\DATA1[15]~input_o\ & (!\OP[1]~input_o\ & !\DATA2[15]~input_o\)) # (\DATA1[15]~input_o\ & ((\DATA2[15]~input_o\))) ) ) ) # ( \OP[2]~input_o\ & ( !\inst7|inst3|inst2|inst5~0_combout\ & ( !\inst2|auto_generated|l3_w15_n0_mux_dataout~6_combout\ ) ) ) # ( 
-- !\OP[2]~input_o\ & ( !\inst7|inst3|inst2|inst5~0_combout\ & ( (!\DATA1[15]~input_o\ & (!\OP[1]~input_o\ & \DATA2[15]~input_o\)) # (\DATA1[15]~input_o\ & (!\OP[1]~input_o\ $ (\DATA2[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101110011001100110010100000010101011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[15]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~6_combout\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \ALT_INV_DATA2[15]~input_o\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \inst7|inst3|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst2|auto_generated|l3_w15_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X39_Y4_N12
\inst2|auto_generated|l3_w15_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w15_n0_mux_dataout~4_combout\ = ( \DATA2[15]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\DATA1[15]~input_o\ $ (\inst|inst3|inst2|inst5~2_combout\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w15_n0_mux_dataout~3_combout\)) ) ) # ( !\DATA2[15]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\DATA1[15]~input_o\ $ 
-- (!\inst|inst3|inst2|inst5~2_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w15_n0_mux_dataout~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011100010001011101110001011100010001011101110001000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~3_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datac => \ALT_INV_DATA1[15]~input_o\,
	datad => \inst|inst3|inst2|ALT_INV_inst5~2_combout\,
	dataf => \ALT_INV_DATA2[15]~input_o\,
	combout => \inst2|auto_generated|l3_w15_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X42_Y2_N57
\inst2|auto_generated|l3_w15_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w15_n0_mux_dataout~5_combout\ = (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ((\inst2|auto_generated|l3_w15_n0_mux_dataout~4_combout\))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & 
-- (\DATA1[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[15]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~4_combout\,
	combout => \inst2|auto_generated|l3_w15_n0_mux_dataout~5_combout\);

-- Location: LABCELL_X37_Y2_N48
\inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\ = ( \DATA1[14]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\) # ((!\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[17]~input_o\)))) ) ) ) # ( 
-- !\DATA1[14]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[15]~input_o\ & ((\SHAMT[0]~input_o\)))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\) # (\DATA1[17]~input_o\)))) ) ) ) # ( \DATA1[14]~input_o\ & ( !\DATA1[16]~input_o\ & ( 
-- (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)) # (\DATA1[15]~input_o\))) # (\SHAMT[1]~input_o\ & (((\DATA1[17]~input_o\ & \SHAMT[0]~input_o\)))) ) ) ) # ( !\DATA1[14]~input_o\ & ( !\DATA1[16]~input_o\ & ( (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & 
-- (\DATA1[15]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[17]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[15]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_DATA1[17]~input_o\,
	datad => \ALT_INV_SHAMT[0]~input_o\,
	datae => \ALT_INV_DATA1[14]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N54
\inst2|auto_generated|l3_w14_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w14_n0_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( \SHAMT[3]~input_o\ & ( \inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\ ) ) ) # ( !\SHAMT[2]~input_o\ & ( \SHAMT[3]~input_o\ & ( 
-- \inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\ ) ) ) # ( \SHAMT[2]~input_o\ & ( !\SHAMT[3]~input_o\ & ( \inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\ ) ) ) # ( !\SHAMT[2]~input_o\ & ( !\SHAMT[3]~input_o\ & ( 
-- \inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w18_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w22_n0_mux_dataout~0_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w14_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst2|auto_generated|l3_w14_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N36
\inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~1_combout\ = ( \DATA1[30]~input_o\ & ( (\inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\ & ((!\SHAMT[0]~input_o\) # (\DATA1[31]~input_o\))) ) ) # ( !\DATA1[30]~input_o\ & ( 
-- (\DATA1[31]~input_o\ & (\inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~0_combout\ & \SHAMT[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[31]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[0]~input_o\,
	dataf => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~1_combout\);

-- Location: LABCELL_X40_Y4_N12
\inst2|auto_generated|l3_w14_n0_mux_dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w14_n0_mux_dataout~7_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (\inst4|inst31|auto_generated|l4_w30_n1_mux_dataout~0_combout\ & (((!\SHAMT[4]~input_o\))))) # (\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & 
-- (\inst2|auto_generated|l3_w14_n0_mux_dataout~0_combout\)) # (\SHAMT[4]~input_o\ & ((\inst5|inst34|auto_generated|l4_w14_n1_mux_dataout~1_combout\)))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101001101010011000011110000111100000000000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l4_w30_n1_mux_dataout~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[14]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l4_w14_n1_mux_dataout~1_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w14_n0_mux_dataout~7_combout\);

-- Location: LABCELL_X40_Y4_N42
\inst2|auto_generated|l3_w14_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w14_n0_mux_dataout~1_combout\ = ( \DATA2[14]~input_o\ & ( \inst2|auto_generated|l3_w14_n0_mux_dataout~7_combout\ & ( (!\DATA1[14]~input_o\ $ (((!\inst7|inst3|inst1|inst5~0_combout\ & !\OP[1]~input_o\)))) # (\OP[2]~input_o\) ) ) ) 
-- # ( !\DATA2[14]~input_o\ & ( \inst2|auto_generated|l3_w14_n0_mux_dataout~7_combout\ & ( ((!\inst7|inst3|inst1|inst5~0_combout\ $ (\DATA1[14]~input_o\)) # (\OP[2]~input_o\)) # (\OP[1]~input_o\) ) ) ) # ( \DATA2[14]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w14_n0_mux_dataout~7_combout\ & ( (!\OP[2]~input_o\ & (!\DATA1[14]~input_o\ $ (((!\inst7|inst3|inst1|inst5~0_combout\ & !\OP[1]~input_o\))))) ) ) ) # ( !\DATA2[14]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w14_n0_mux_dataout~7_combout\ & ( (!\OP[2]~input_o\ & ((!\inst7|inst3|inst1|inst5~0_combout\ $ (\DATA1[14]~input_o\)) # (\OP[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000001110000011100001000000010111111011111110111111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|inst1|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_DATA1[14]~input_o\,
	datae => \ALT_INV_DATA2[14]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~7_combout\,
	combout => \inst2|auto_generated|l3_w14_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X40_Y3_N42
\inst|inst3|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst5~0_combout\ = ( \DATA1[12]~input_o\ & ( (!\inst|inst2|inst3|inst5~0_combout\) # (\DATA2[12]~input_o\) ) ) # ( !\DATA1[12]~input_o\ & ( (\DATA2[12]~input_o\ & !\inst|inst2|inst3|inst5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[12]~input_o\,
	datac => \inst|inst2|inst3|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst|inst3|inst|inst5~0_combout\);

-- Location: LABCELL_X40_Y4_N6
\inst2|auto_generated|l3_w14_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w14_n0_mux_dataout~3_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA2[14]~input_o\ $ (!\DATA1[14]~input_o\ $ (((!\DATA2[13]~input_o\ & (\inst|inst3|inst|inst5~0_combout\ & \DATA1[13]~input_o\)) # 
-- (\DATA2[13]~input_o\ & ((\DATA1[13]~input_o\) # (\inst|inst3|inst|inst5~0_combout\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w14_n0_mux_dataout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011001101010000011110000111110101001100101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[14]~input_o\,
	datab => \ALT_INV_DATA2[13]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA1[13]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA1[14]~input_o\,
	datag => \inst|inst3|inst|ALT_INV_inst5~0_combout\,
	combout => \inst2|auto_generated|l3_w14_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X42_Y2_N33
\inst2|auto_generated|l3_w14_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w14_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w14_n0_mux_dataout~3_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\DATA1[14]~input_o\) ) ) # ( 
-- !\inst2|auto_generated|l3_w14_n0_mux_dataout~3_combout\ & ( (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & \DATA1[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datac => \ALT_INV_DATA1[14]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~3_combout\,
	combout => \inst2|auto_generated|l3_w14_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X37_Y2_N24
\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\ = ( \DATA1[13]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\) # ((\DATA1[15]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\DATA1[14]~input_o\)) # 
-- (\SHAMT[1]~input_o\))) ) ) ) # ( !\DATA1[13]~input_o\ & ( \DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\SHAMT[1]~input_o\ & ((\DATA1[15]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\DATA1[14]~input_o\)) # (\SHAMT[1]~input_o\))) ) ) ) # ( 
-- \DATA1[13]~input_o\ & ( !\DATA1[16]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\) # ((\DATA1[15]~input_o\)))) # (\SHAMT[0]~input_o\ & (!\SHAMT[1]~input_o\ & (\DATA1[14]~input_o\))) ) ) ) # ( !\DATA1[13]~input_o\ & ( !\DATA1[16]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (\SHAMT[1]~input_o\ & ((\DATA1[15]~input_o\)))) # (\SHAMT[0]~input_o\ & (!\SHAMT[1]~input_o\ & (\DATA1[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_SHAMT[1]~input_o\,
	datac => \ALT_INV_DATA1[14]~input_o\,
	datad => \ALT_INV_DATA1[15]~input_o\,
	datae => \ALT_INV_DATA1[13]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N0
\inst2|auto_generated|l3_w13_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w13_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\) # 
-- (\inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\)))) # (\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\)) # (\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\ 
-- & ( \inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\ & \inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\)))) # (\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\)) # 
-- (\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\) 
-- # (\inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\)))) # (\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & (!\SHAMT[3]~input_o\))) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\ 
-- & ( !\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((\SHAMT[3]~input_o\ & \inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\)))) # (\SHAMT[2]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & (!\SHAMT[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w17_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w21_n0_mux_dataout~0_combout\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l2_w13_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w25_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w13_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N36
\inst5|inst34|auto_generated|l4_w13_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w13_n1_mux_dataout~0_combout\ = (!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\ & !\SHAMT[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst5|inst34|auto_generated|l4_w13_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X40_Y4_N0
\inst2|auto_generated|l3_w13_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w13_n0_mux_dataout~4_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (\inst4|inst31|auto_generated|l4_w29_n1_mux_dataout~0_combout\ & (((!\SHAMT[4]~input_o\))))) # (\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & 
-- (\inst2|auto_generated|l3_w13_n0_mux_dataout~0_combout\)) # (\SHAMT[4]~input_o\ & ((\inst5|inst34|auto_generated|l4_w13_n1_mux_dataout~0_combout\)))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101001101010011000011110000111100000000000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l4_w29_n1_mux_dataout~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[13]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l4_w13_n1_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w13_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X40_Y4_N18
\inst2|auto_generated|l3_w13_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w13_n0_mux_dataout~1_combout\ = ( \inst2|auto_generated|l3_w13_n0_mux_dataout~4_combout\ & ( \OP[1]~input_o\ & ( (\DATA1[13]~input_o\ & (!\OP[2]~input_o\ & \DATA2[13]~input_o\)) ) ) ) # ( 
-- !\inst2|auto_generated|l3_w13_n0_mux_dataout~4_combout\ & ( \OP[1]~input_o\ & ( ((\DATA1[13]~input_o\ & \DATA2[13]~input_o\)) # (\OP[2]~input_o\) ) ) ) # ( \inst2|auto_generated|l3_w13_n0_mux_dataout~4_combout\ & ( !\OP[1]~input_o\ & ( (!\OP[2]~input_o\ & 
-- (!\inst7|inst3|inst|inst5~0_combout\ $ (!\DATA1[13]~input_o\ $ (!\DATA2[13]~input_o\)))) ) ) ) # ( !\inst2|auto_generated|l3_w13_n0_mux_dataout~4_combout\ & ( !\OP[1]~input_o\ & ( (!\inst7|inst3|inst|inst5~0_combout\ $ (!\DATA1[13]~input_o\ $ 
-- (!\DATA2[13]~input_o\))) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111101101111100100000110000000001111001111110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|inst|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_DATA1[13]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_DATA2[13]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~4_combout\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst2|auto_generated|l3_w13_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X40_Y4_N24
\inst2|auto_generated|l3_w13_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w13_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\inst2|auto_generated|l3_w13_n0_mux_dataout~1_combout\ ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( 
-- !\DATA2[13]~input_o\ $ (!\inst|inst3|inst|inst5~0_combout\ $ (\DATA1[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001111100001111000001100110100110011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[13]~input_o\,
	datab => \inst|inst3|inst|ALT_INV_inst5~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA1[13]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	combout => \inst2|auto_generated|l3_w13_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X40_Y4_N30
\inst2|auto_generated|l3_w13_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w13_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w13_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\DATA1[13]~input_o\) ) ) # ( 
-- !\inst2|auto_generated|l3_w13_n0_mux_dataout~2_combout\ & ( (\DATA1[13]~input_o\ & \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[13]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w13_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X37_Y4_N30
\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ = ( \DATA1[15]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # (\DATA1[14]~input_o\))) # (\SHAMT[0]~input_o\ & (((\DATA1[13]~input_o\) # 
-- (\SHAMT[1]~input_o\)))) ) ) ) # ( !\DATA1[15]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # (\DATA1[14]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[13]~input_o\)))) ) ) ) # ( 
-- \DATA1[15]~input_o\ & ( !\DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\DATA1[14]~input_o\ & (\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((\DATA1[13]~input_o\) # (\SHAMT[1]~input_o\)))) ) ) ) # ( !\DATA1[15]~input_o\ & ( !\DATA1[12]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (\DATA1[14]~input_o\ & (\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[14]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[13]~input_o\,
	datae => \ALT_INV_DATA1[15]~input_o\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N36
\inst2|auto_generated|l3_w12_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w12_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ & ( \SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\)) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ & ( \SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\))) # (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\)) ) ) ) # ( \inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ & ( !\SHAMT[2]~input_o\ & ( 
-- (!\SHAMT[3]~input_o\) # (\inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ & ( !\SHAMT[2]~input_o\ & ( (\inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\ & 
-- \SHAMT[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w20_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[3]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w24_n0_mux_dataout~0_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w16_n0_mux_dataout~0_combout\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l2_w12_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst2|auto_generated|l3_w12_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N12
\inst5|inst34|auto_generated|l4_w12_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w12_n1_mux_dataout~0_combout\ = ( !\SHAMT[2]~input_o\ & ( (\inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\ & !\SHAMT[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[3]~input_o\,
	dataf => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst5|inst34|auto_generated|l4_w12_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X40_Y3_N0
\inst2|auto_generated|l3_w12_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w12_n0_mux_dataout~4_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (((\inst4|inst31|auto_generated|l4_w28_n1_mux_dataout~0_combout\ & ((!\SHAMT[4]~input_o\)))))) # (\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & 
-- (\inst2|auto_generated|l3_w12_n0_mux_dataout~0_combout\)) # (\SHAMT[4]~input_o\ & ((\inst5|inst34|auto_generated|l4_w12_n1_mux_dataout~0_combout\)))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011010100110101000011110000111100000000000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l4_w28_n1_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[12]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l4_w12_n1_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w12_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X40_Y3_N48
\inst2|auto_generated|l3_w12_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w12_n0_mux_dataout~1_combout\ = ( \OP[1]~input_o\ & ( \OP[2]~input_o\ & ( !\inst2|auto_generated|l3_w12_n0_mux_dataout~4_combout\ ) ) ) # ( !\OP[1]~input_o\ & ( \OP[2]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w12_n0_mux_dataout~4_combout\ ) ) ) # ( \OP[1]~input_o\ & ( !\OP[2]~input_o\ & ( (\DATA1[12]~input_o\ & \DATA2[12]~input_o\) ) ) ) # ( !\OP[1]~input_o\ & ( !\OP[2]~input_o\ & ( !\DATA1[12]~input_o\ $ 
-- (!\inst7|inst2|inst3|inst5~0_combout\ $ (\DATA2[12]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011000000000011001110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~4_combout\,
	datab => \ALT_INV_DATA1[12]~input_o\,
	datac => \inst7|inst2|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA2[12]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst2|auto_generated|l3_w12_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X40_Y3_N27
\inst2|auto_generated|l3_w12_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w12_n0_mux_dataout~2_combout\ = ( \inst|inst2|inst3|inst5~0_combout\ & ( \DATA1[12]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\DATA2[12]~input_o\))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w12_n0_mux_dataout~1_combout\)) ) ) ) # ( !\inst|inst2|inst3|inst5~0_combout\ & ( \DATA1[12]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & 
-- ((\DATA2[12]~input_o\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w12_n0_mux_dataout~1_combout\)) ) ) ) # ( \inst|inst2|inst3|inst5~0_combout\ & ( !\DATA1[12]~input_o\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((\DATA2[12]~input_o\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w12_n0_mux_dataout~1_combout\)) ) ) ) # ( !\inst|inst2|inst3|inst5~0_combout\ & ( 
-- !\DATA1[12]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\DATA2[12]~input_o\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w12_n0_mux_dataout~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011001010001110100011101000111010001110101100101011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~1_combout\,
	datab => \ALT_INV_DATA2[12]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datae => \inst|inst2|inst3|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst2|auto_generated|l3_w12_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X42_Y2_N30
\inst2|auto_generated|l3_w12_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w12_n0_mux_dataout~3_combout\ = ( \DATA1[12]~input_o\ & ( (\inst2|auto_generated|l3_w12_n0_mux_dataout~2_combout\) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) ) # ( !\DATA1[12]~input_o\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & \inst2|auto_generated|l3_w12_n0_mux_dataout~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~2_combout\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst2|auto_generated|l3_w12_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X39_Y3_N45
\inst|inst2|inst1|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|inst5~2_combout\ = ( \inst|inst2|inst1|inst~0_combout\ ) # ( !\inst|inst2|inst1|inst~0_combout\ & ( \inst|inst2|inst1|inst5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|inst1|ALT_INV_inst5~1_combout\,
	dataf => \inst|inst2|inst1|ALT_INV_inst~0_combout\,
	combout => \inst|inst2|inst1|inst5~2_combout\);

-- Location: LABCELL_X33_Y3_N51
\inst5|inst34|auto_generated|l4_w11_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w11_n1_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\) # (\inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\))) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w27_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l2_w27_n1_mux_dataout~0_combout\ & (!\SHAMT[3]~input_o\ & \SHAMT[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w27_n1_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[3]~input_o\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l4_w11_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y4_N6
\inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ = ( \DATA1[13]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\DATA1[11]~input_o\) # (\SHAMT[1]~input_o\)))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # 
-- (\DATA1[14]~input_o\))) ) ) ) # ( !\DATA1[13]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[11]~input_o\)))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)) # (\DATA1[14]~input_o\))) ) ) ) # ( 
-- \DATA1[13]~input_o\ & ( !\DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\DATA1[11]~input_o\) # (\SHAMT[1]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[14]~input_o\ & (\SHAMT[1]~input_o\))) ) ) ) # ( !\DATA1[13]~input_o\ & ( !\DATA1[12]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[11]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[14]~input_o\ & (\SHAMT[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[14]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	datae => \ALT_INV_DATA1[13]~input_o\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N12
\inst2|auto_generated|l3_w11_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w11_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\) # ((!\SHAMT[2]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\)))) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\ & ( 
-- \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\)) # (\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & 
-- (((\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\ & \SHAMT[3]~input_o\)))) ) ) ) # ( \inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\ & ((\SHAMT[3]~input_o\)))) # (\SHAMT[2]~input_o\ & (((!\SHAMT[3]~input_o\) # (\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\)) # 
-- (\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w23_n0_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w19_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w23_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[3]~input_o\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l2_w15_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w11_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w11_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X39_Y3_N12
\inst2|auto_generated|l3_w11_n0_mux_dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w11_n0_mux_dataout~7_combout\ = ( !\OP[1]~input_o\ & ( (!\SHAMT[4]~input_o\ & (((!\OP[0]~input_o\ & ((\inst4|inst31|auto_generated|l4_w27_n1_mux_dataout~0_combout\))) # (\OP[0]~input_o\ & 
-- (\inst2|auto_generated|l3_w11_n0_mux_dataout~0_combout\))))) # (\SHAMT[4]~input_o\ & (\inst5|inst34|auto_generated|l4_w11_n1_mux_dataout~0_combout\ & (\OP[0]~input_o\))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100001011000011110000111110100001101010110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[4]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l4_w11_n1_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[11]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l4_w27_n1_mux_dataout~0_combout\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w11_n0_mux_dataout~7_combout\);

-- Location: MLABCELL_X39_Y3_N48
\inst2|auto_generated|l3_w11_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w11_n0_mux_dataout~1_combout\ = ( \OP[1]~input_o\ & ( \OP[2]~input_o\ & ( \inst2|auto_generated|l3_w11_n0_mux_dataout~7_combout\ ) ) ) # ( !\OP[1]~input_o\ & ( \OP[2]~input_o\ & ( 
-- \inst2|auto_generated|l3_w11_n0_mux_dataout~7_combout\ ) ) ) # ( \OP[1]~input_o\ & ( !\OP[2]~input_o\ & ( (!\DATA2[11]~input_o\) # (!\DATA1[11]~input_o\) ) ) ) # ( !\OP[1]~input_o\ & ( !\OP[2]~input_o\ & ( !\DATA2[11]~input_o\ $ 
-- (!\inst7|inst2|inst2|inst5~2_combout\ $ (\DATA1[11]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101111111111010101000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[11]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~7_combout\,
	datac => \inst7|inst2|inst2|ALT_INV_inst5~2_combout\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst2|auto_generated|l3_w11_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X39_Y3_N36
\inst2|auto_generated|l3_w11_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w11_n0_mux_dataout~3_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA2[11]~input_o\ $ (!\DATA1[11]~input_o\ $ (((!\DATA1[10]~input_o\ & (\inst|inst2|inst1|inst5~2_combout\ & \DATA2[10]~input_o\)) # 
-- (\DATA1[10]~input_o\ & ((\DATA2[10]~input_o\) # (\inst|inst2|inst1|inst5~2_combout\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w11_n0_mux_dataout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001111011100001000011110000111101111000100001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[10]~input_o\,
	datab => \inst|inst2|inst1|ALT_INV_inst5~2_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA2[10]~input_o\,
	datag => \ALT_INV_DATA2[11]~input_o\,
	combout => \inst2|auto_generated|l3_w11_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X42_Y3_N3
\inst2|auto_generated|l3_w11_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w11_n0_mux_dataout~2_combout\ = ( \DATA1[11]~input_o\ & ( (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\inst2|auto_generated|l3_w11_n0_mux_dataout~3_combout\) ) ) # ( !\DATA1[11]~input_o\ & ( 
-- (\inst2|auto_generated|l3_w11_n0_mux_dataout~3_combout\ & !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~3_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_DATA1[11]~input_o\,
	combout => \inst2|auto_generated|l3_w11_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X31_Y4_N33
\inst5|inst34|auto_generated|l4_w10_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w10_n1_mux_dataout~0_combout\ = ( !\SHAMT[3]~input_o\ & ( (!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w26_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w26_n1_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w26_n1_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[3]~input_o\,
	combout => \inst5|inst34|auto_generated|l4_w10_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y4_N12
\inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ = ( \DATA1[10]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\) # ((!\SHAMT[1]~input_o\ & ((\DATA1[11]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[13]~input_o\))) ) ) ) # ( 
-- !\DATA1[10]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)))) # (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & ((\DATA1[11]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[13]~input_o\)))) ) ) ) # ( \DATA1[10]~input_o\ & ( 
-- !\DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)))) # (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & ((\DATA1[11]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[13]~input_o\)))) ) ) ) # ( !\DATA1[10]~input_o\ & ( !\DATA1[12]~input_o\ & 
-- ( (\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & ((\DATA1[11]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[13]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	datae => \ALT_INV_DATA1[10]~input_o\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N6
\inst2|auto_generated|l3_w10_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w10_n0_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\) # 
-- (\inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\) ) ) ) # ( \SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w22_n0_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\ & 
-- \SHAMT[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w22_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w18_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w14_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w10_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w10_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X39_Y3_N30
\inst2|auto_generated|l3_w10_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w10_n0_mux_dataout~4_combout\ = ( !\OP[1]~input_o\ & ( (!\SHAMT[4]~input_o\ & (((!\OP[0]~input_o\ & (\inst4|inst31|auto_generated|l4_w26_n1_mux_dataout~0_combout\)) # (\OP[0]~input_o\ & 
-- ((\inst2|auto_generated|l3_w10_n0_mux_dataout~0_combout\)))))) # (\SHAMT[4]~input_o\ & (\inst5|inst34|auto_generated|l4_w10_n1_mux_dataout~0_combout\ & (\OP[0]~input_o\))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000110100001000011110000111100001011101010110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[4]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l4_w10_n1_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[10]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l4_w26_n1_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~0_combout\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w10_n0_mux_dataout~4_combout\);

-- Location: MLABCELL_X39_Y3_N3
\inst7|inst2|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst1|inst5~0_combout\ = ( \inst7|inst2|inst|inst5~0_combout\ & ( (!\DATA2[9]~input_o\) # (\DATA1[9]~input_o\) ) ) # ( !\inst7|inst2|inst|inst5~0_combout\ & ( (!\DATA2[9]~input_o\ & \DATA1[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[9]~input_o\,
	datad => \ALT_INV_DATA1[9]~input_o\,
	dataf => \inst7|inst2|inst|ALT_INV_inst5~0_combout\,
	combout => \inst7|inst2|inst1|inst5~0_combout\);

-- Location: MLABCELL_X39_Y3_N54
\inst2|auto_generated|l3_w10_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w10_n0_mux_dataout~1_combout\ = ( \inst7|inst2|inst1|inst5~0_combout\ & ( \DATA2[10]~input_o\ & ( (!\OP[2]~input_o\ & (\DATA1[10]~input_o\)) # (\OP[2]~input_o\ & ((!\inst2|auto_generated|l3_w10_n0_mux_dataout~4_combout\))) ) ) ) # 
-- ( !\inst7|inst2|inst1|inst5~0_combout\ & ( \DATA2[10]~input_o\ & ( (!\OP[2]~input_o\ & (!\DATA1[10]~input_o\ $ (((\OP[1]~input_o\))))) # (\OP[2]~input_o\ & (((!\inst2|auto_generated|l3_w10_n0_mux_dataout~4_combout\)))) ) ) ) # ( 
-- \inst7|inst2|inst1|inst5~0_combout\ & ( !\DATA2[10]~input_o\ & ( (!\OP[2]~input_o\ & (!\DATA1[10]~input_o\ & ((!\OP[1]~input_o\)))) # (\OP[2]~input_o\ & (((!\inst2|auto_generated|l3_w10_n0_mux_dataout~4_combout\)))) ) ) ) # ( 
-- !\inst7|inst2|inst1|inst5~0_combout\ & ( !\DATA2[10]~input_o\ & ( (!\OP[2]~input_o\ & (\DATA1[10]~input_o\ & ((!\OP[1]~input_o\)))) # (\OP[2]~input_o\ & (((!\inst2|auto_generated|l3_w10_n0_mux_dataout~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110000001100101011000000110010101100010111000101110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[10]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~4_combout\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \inst7|inst2|inst1|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA2[10]~input_o\,
	combout => \inst2|auto_generated|l3_w10_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X39_Y3_N42
\inst2|auto_generated|l3_w10_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w10_n0_mux_dataout~2_combout\ = ( \DATA2[10]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\inst|inst2|inst1|inst5~2_combout\ $ (\DATA1[10]~input_o\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w10_n0_mux_dataout~1_combout\)) ) ) # ( !\DATA2[10]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\inst|inst2|inst1|inst5~2_combout\ $ 
-- (!\DATA1[10]~input_o\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w10_n0_mux_dataout~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110010101010001111001010101011000011101010101100001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~1_combout\,
	datab => \inst|inst2|inst1|ALT_INV_inst5~2_combout\,
	datac => \ALT_INV_DATA1[10]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA2[10]~input_o\,
	combout => \inst2|auto_generated|l3_w10_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X40_Y3_N45
\inst2|auto_generated|l3_w10_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w10_n0_mux_dataout~3_combout\ = ( \DATA1[10]~input_o\ & ( (\inst2|auto_generated|l3_w10_n0_mux_dataout~2_combout\) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) ) # ( !\DATA1[10]~input_o\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & \inst2|auto_generated|l3_w10_n0_mux_dataout~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~2_combout\,
	dataf => \ALT_INV_DATA1[10]~input_o\,
	combout => \inst2|auto_generated|l3_w10_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X31_Y4_N39
\inst5|inst34|auto_generated|l4_w9_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w9_n1_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\) # (\inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\))) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w25_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (\SHAMT[2]~input_o\ & \inst5|inst34|auto_generated|l2_w29_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w25_n0_mux_dataout~0_combout\,
	combout => \inst5|inst34|auto_generated|l4_w9_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y4_N48
\inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ = ( \DATA1[9]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # (\DATA1[11]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # 
-- (\DATA1[10]~input_o\))) ) ) ) # ( !\DATA1[9]~input_o\ & ( \DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\ & \DATA1[11]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # (\DATA1[10]~input_o\))) ) ) ) # ( \DATA1[9]~input_o\ 
-- & ( !\DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\) # (\DATA1[11]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[10]~input_o\ & (!\SHAMT[1]~input_o\))) ) ) ) # ( !\DATA1[9]~input_o\ & ( !\DATA1[12]~input_o\ & ( (!\SHAMT[0]~input_o\ & 
-- (((\SHAMT[1]~input_o\ & \DATA1[11]~input_o\)))) # (\SHAMT[0]~input_o\ & (\DATA1[10]~input_o\ & (!\SHAMT[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[10]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	datae => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N12
\inst2|auto_generated|l3_w9_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w9_n0_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\) # 
-- (\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\) ) ) ) # ( \SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\))) # 
-- (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w21_n0_mux_dataout~0_combout\)) ) ) ) # ( !\SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & 
-- \SHAMT[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w17_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w21_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w13_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w9_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y4_N0
\inst2|auto_generated|l3_w9_n0_mux_dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w9_n0_mux_dataout~7_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & ((((\inst4|inst31|auto_generated|l4_w25_n1_mux_dataout~0_combout\ & !\SHAMT[4]~input_o\))))) # (\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & 
-- ((\inst2|auto_generated|l3_w9_n0_mux_dataout~0_combout\))) # (\SHAMT[4]~input_o\ & (\inst5|inst34|auto_generated|l4_w9_n1_mux_dataout~0_combout\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111110011000011110000111100000101000001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l4_w9_n1_mux_dataout~0_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[9]~input_o\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l4_w25_n1_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w9_n0_mux_dataout~7_combout\);

-- Location: LABCELL_X37_Y3_N12
\inst2|auto_generated|l3_w9_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w9_n0_mux_dataout~1_combout\ = ( \DATA1[9]~input_o\ & ( \inst2|auto_generated|l3_w9_n0_mux_dataout~7_combout\ & ( (!\DATA2[9]~input_o\ $ (((!\inst7|inst2|inst|inst5~0_combout\ & !\OP[1]~input_o\)))) # (\OP[2]~input_o\) ) ) ) # ( 
-- !\DATA1[9]~input_o\ & ( \inst2|auto_generated|l3_w9_n0_mux_dataout~7_combout\ & ( ((!\inst7|inst2|inst|inst5~0_combout\ $ (\DATA2[9]~input_o\)) # (\OP[2]~input_o\)) # (\OP[1]~input_o\) ) ) ) # ( \DATA1[9]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w9_n0_mux_dataout~7_combout\ & ( (!\OP[2]~input_o\ & (!\DATA2[9]~input_o\ $ (((!\inst7|inst2|inst|inst5~0_combout\ & !\OP[1]~input_o\))))) ) ) ) # ( !\DATA1[9]~input_o\ & ( !\inst2|auto_generated|l3_w9_n0_mux_dataout~7_combout\ & 
-- ( (!\OP[2]~input_o\ & ((!\inst7|inst2|inst|inst5~0_combout\ $ (\DATA2[9]~input_o\)) # (\OP[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011011100000000011110000000000010110111111111110111100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_DATA2[9]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	datae => \ALT_INV_DATA1[9]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~7_combout\,
	combout => \inst2|auto_generated|l3_w9_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X36_Y3_N18
\inst|inst1|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst3|inst5~0_combout\ = ( \inst|inst1|inst2|inst5~0_combout\ & ( (\DATA1[7]~input_o\ & \DATA2[7]~input_o\) ) ) # ( !\inst|inst1|inst2|inst5~0_combout\ & ( (\DATA2[7]~input_o\) # (\DATA1[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[7]~input_o\,
	datad => \ALT_INV_DATA2[7]~input_o\,
	dataf => \inst|inst1|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst|inst1|inst3|inst5~0_combout\);

-- Location: LABCELL_X37_Y3_N30
\inst2|auto_generated|l3_w9_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w9_n0_mux_dataout~3_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA1[9]~input_o\ $ (!\DATA2[9]~input_o\ $ (((!\DATA2[8]~input_o\ & (\DATA1[8]~input_o\ & \inst|inst1|inst3|inst5~0_combout\)) # 
-- (\DATA2[8]~input_o\ & ((\inst|inst1|inst3|inst5~0_combout\) # (\DATA1[8]~input_o\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w9_n0_mux_dataout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011110001101001000011110000111101101001110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[8]~input_o\,
	datab => \ALT_INV_DATA1[9]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA1[8]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \inst|inst1|inst3|ALT_INV_inst5~0_combout\,
	datag => \ALT_INV_DATA2[9]~input_o\,
	combout => \inst2|auto_generated|l3_w9_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X37_Y3_N48
\inst2|auto_generated|l3_w9_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w9_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w9_n0_mux_dataout~3_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\DATA1[9]~input_o\) ) ) # ( 
-- !\inst2|auto_generated|l3_w9_n0_mux_dataout~3_combout\ & ( (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & \DATA1[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datac => \ALT_INV_DATA1[9]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~3_combout\,
	combout => \inst2|auto_generated|l3_w9_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X35_Y3_N51
\inst5|inst34|auto_generated|l4_w8_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l4_w8_n1_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( (\inst5|inst34|auto_generated|l2_w28_n0_mux_dataout~0_combout\ & !\SHAMT[3]~input_o\) ) ) # ( !\SHAMT[2]~input_o\ & ( 
-- (\inst5|inst34|auto_generated|l2_w24_n0_mux_dataout~0_combout\ & !\SHAMT[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w24_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	dataf => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst5|inst34|auto_generated|l4_w8_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y4_N24
\inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\ = ( \DATA1[9]~input_o\ & ( \DATA1[11]~input_o\ & ( ((!\SHAMT[1]~input_o\ & ((\DATA1[8]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[10]~input_o\))) # (\SHAMT[0]~input_o\) ) ) ) # ( 
-- !\DATA1[9]~input_o\ & ( \DATA1[11]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & ((\DATA1[8]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[10]~input_o\)))) # (\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)))) ) ) ) # ( \DATA1[9]~input_o\ & ( 
-- !\DATA1[11]~input_o\ & ( (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & ((\DATA1[8]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[10]~input_o\)))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\)))) ) ) ) # ( !\DATA1[9]~input_o\ & ( !\DATA1[11]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & ((!\SHAMT[1]~input_o\ & ((\DATA1[8]~input_o\))) # (\SHAMT[1]~input_o\ & (\DATA1[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[10]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[8]~input_o\,
	datae => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_DATA1[11]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N42
\inst2|auto_generated|l3_w8_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w8_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ & ( \SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\) # (\inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ & ( \SHAMT[2]~input_o\ & ( (\SHAMT[3]~input_o\ & \inst5|inst34|auto_generated|l2_w20_n0_mux_dataout~0_combout\) ) ) ) # ( \inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ & ( 
-- !\SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\)) # (\SHAMT[3]~input_o\ & ((\inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\))) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\ & ( !\SHAMT[2]~input_o\ & ( (!\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\)) # (\SHAMT[3]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w8_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[3]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w20_n0_mux_dataout~0_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w16_n0_mux_dataout~0_combout\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l2_w12_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst2|auto_generated|l3_w8_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N30
\inst2|auto_generated|l3_w8_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w8_n0_mux_dataout~4_combout\ = ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & (((\inst4|inst31|auto_generated|l4_w24_n1_mux_dataout~0_combout\ & ((!\SHAMT[4]~input_o\)))))) # (\OP[0]~input_o\ & (((!\SHAMT[4]~input_o\ & 
-- ((\inst2|auto_generated|l3_w8_n0_mux_dataout~0_combout\))) # (\SHAMT[4]~input_o\ & (\inst5|inst34|auto_generated|l4_w8_n1_mux_dataout~0_combout\))))) ) ) # ( \OP[1]~input_o\ & ( (((\DATA2[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000000111111000011110000111100000101000001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l4_w8_n1_mux_dataout~0_combout\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l4_w24_n1_mux_dataout~0_combout\,
	datac => \ALT_INV_DATA2[8]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	datag => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w8_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X36_Y3_N24
\inst2|auto_generated|l3_w8_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w8_n0_mux_dataout~1_combout\ = ( \DATA1[8]~input_o\ & ( \DATA2[8]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst7|inst1|inst3|inst5~0_combout\) # (\OP[1]~input_o\)))) # (\OP[2]~input_o\ & 
-- (!\inst2|auto_generated|l3_w8_n0_mux_dataout~4_combout\)) ) ) ) # ( !\DATA1[8]~input_o\ & ( \DATA2[8]~input_o\ & ( (!\OP[2]~input_o\ & (((!\OP[1]~input_o\ & \inst7|inst1|inst3|inst5~0_combout\)))) # (\OP[2]~input_o\ & 
-- (!\inst2|auto_generated|l3_w8_n0_mux_dataout~4_combout\)) ) ) ) # ( \DATA1[8]~input_o\ & ( !\DATA2[8]~input_o\ & ( (!\OP[2]~input_o\ & (((!\OP[1]~input_o\ & \inst7|inst1|inst3|inst5~0_combout\)))) # (\OP[2]~input_o\ & 
-- (!\inst2|auto_generated|l3_w8_n0_mux_dataout~4_combout\)) ) ) ) # ( !\DATA1[8]~input_o\ & ( !\DATA2[8]~input_o\ & ( (!\OP[2]~input_o\ & (((!\OP[1]~input_o\ & !\inst7|inst1|inst3|inst5~0_combout\)))) # (\OP[2]~input_o\ & 
-- (!\inst2|auto_generated|l3_w8_n0_mux_dataout~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010101010000011001010101000001100101010101111001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~4_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst7|inst1|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_OP[2]~input_o\,
	datae => \ALT_INV_DATA1[8]~input_o\,
	dataf => \ALT_INV_DATA2[8]~input_o\,
	combout => \inst2|auto_generated|l3_w8_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X36_Y3_N21
\inst2|auto_generated|l3_w8_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w8_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w8_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA2[8]~input_o\ $ (!\inst|inst1|inst3|inst5~0_combout\ $ 
-- (\DATA1[8]~input_o\)))) ) ) # ( !\inst2|auto_generated|l3_w8_n0_mux_dataout~1_combout\ & ( (!\DATA2[8]~input_o\ $ (!\inst|inst1|inst3|inst5~0_combout\ $ (\DATA1[8]~input_o\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110111010111011111011101011100101000100000100010100010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datab => \ALT_INV_DATA2[8]~input_o\,
	datac => \inst|inst1|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[8]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w8_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X37_Y3_N51
\inst2|auto_generated|l3_w8_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w8_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w8_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) # (\DATA1[8]~input_o\) ) ) # ( 
-- !\inst2|auto_generated|l3_w8_n0_mux_dataout~2_combout\ & ( (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & \DATA1[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA1[8]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w8_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X33_Y3_N24
\inst2|auto_generated|l3_w15_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ = ( \OP[0]~input_o\ & ( !\OP[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X31_Y2_N0
\inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\ = ( \DATA1[9]~input_o\ & ( \SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\) # (\DATA1[10]~input_o\) ) ) ) # ( !\DATA1[9]~input_o\ & ( \SHAMT[1]~input_o\ & ( (\SHAMT[0]~input_o\ & 
-- \DATA1[10]~input_o\) ) ) ) # ( \DATA1[9]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & (\DATA1[7]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[8]~input_o\))) ) ) ) # ( !\DATA1[9]~input_o\ & ( !\SHAMT[1]~input_o\ & ( (!\SHAMT[0]~input_o\ & 
-- (\DATA1[7]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[7]~input_o\,
	datac => \ALT_INV_DATA1[10]~input_o\,
	datad => \ALT_INV_DATA1[8]~input_o\,
	datae => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_SHAMT[1]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N18
\inst2|auto_generated|l3_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w7_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\) # ((!\SHAMT[2]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\)))) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\ & ( 
-- \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((\SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\))))) ) ) ) # ( \inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & 
-- (((!\SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\))))) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (\SHAMT[3]~input_o\ & ((!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\)) # 
-- (\SHAMT[2]~input_o\ & ((\inst5|inst34|auto_generated|l2_w19_n0_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w15_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[3]~input_o\,
	datac => \ALT_INV_SHAMT[2]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w19_n0_mux_dataout~0_combout\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l2_w7_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w11_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N45
\inst4|inst31|auto_generated|l5_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l5_w7_n0_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( (\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & \inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\) ) ) # ( !\SHAMT[2]~input_o\ & ( 
-- (\inst4|inst31|auto_generated|l2_w31_n6_mux_dataout~0_combout\ & \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n6_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n7_mux_dataout~0_combout\,
	dataf => \ALT_INV_SHAMT[2]~input_o\,
	combout => \inst4|inst31|auto_generated|l5_w7_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y3_N39
\inst2|auto_generated|l3_w15_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ = ( \SHAMT[4]~input_o\ & ( !\OP[1]~input_o\ ) ) # ( !\SHAMT[4]~input_o\ & ( (!\OP[1]~input_o\ & !\OP[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_SHAMT[4]~input_o\,
	combout => \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X36_Y3_N30
\inst2|auto_generated|l3_w7_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w7_n0_mux_dataout~1_combout\ = ( \inst4|inst31|auto_generated|l5_w7_n0_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\) # 
-- (\inst5|inst34|auto_generated|l4_w23_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst4|inst31|auto_generated|l5_w7_n0_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ 
-- & \inst5|inst34|auto_generated|l4_w23_n0_mux_dataout~0_combout\) ) ) ) # ( \inst4|inst31|auto_generated|l5_w7_n0_mux_dataout~0_combout\ & ( !\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( 
-- (!\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & ((\DATA2[7]~input_o\))) # (\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & (\inst2|auto_generated|l3_w7_n0_mux_dataout~0_combout\)) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l5_w7_n0_mux_dataout~0_combout\ & ( !\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & ((\DATA2[7]~input_o\))) # 
-- (\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & (\inst2|auto_generated|l3_w7_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~2_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l4_w23_n0_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_DATA2[7]~input_o\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l5_w7_n0_mux_dataout~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w7_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X36_Y3_N6
\inst2|auto_generated|l3_w7_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w7_n0_mux_dataout~2_combout\ = ( \DATA2[7]~input_o\ & ( \inst2|auto_generated|l3_w7_n0_mux_dataout~1_combout\ & ( (!\OP[2]~input_o\ & (!\DATA1[7]~input_o\ $ (((\OP[1]~input_o\) # (\inst7|inst1|inst2|inst5~0_combout\))))) ) ) ) # ( 
-- !\DATA2[7]~input_o\ & ( \inst2|auto_generated|l3_w7_n0_mux_dataout~1_combout\ & ( (!\OP[2]~input_o\ & (!\OP[1]~input_o\ & (!\DATA1[7]~input_o\ $ (!\inst7|inst1|inst2|inst5~0_combout\)))) ) ) ) # ( \DATA2[7]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w7_n0_mux_dataout~1_combout\ & ( (!\DATA1[7]~input_o\ $ (((\OP[1]~input_o\) # (\inst7|inst1|inst2|inst5~0_combout\)))) # (\OP[2]~input_o\) ) ) ) # ( !\DATA2[7]~input_o\ & ( !\inst2|auto_generated|l3_w7_n0_mux_dataout~1_combout\ & 
-- ( ((!\OP[1]~input_o\ & (!\DATA1[7]~input_o\ $ (!\inst7|inst1|inst2|inst5~0_combout\)))) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101100110011101101110111011101001000000000001000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[7]~input_o\,
	datab => \ALT_INV_OP[2]~input_o\,
	datac => \inst7|inst1|inst2|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \ALT_INV_DATA2[7]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w7_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X36_Y3_N45
\inst2|auto_generated|l3_w7_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w7_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w7_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA1[7]~input_o\ $ (!\DATA2[7]~input_o\ $ 
-- (!\inst|inst1|inst2|inst5~0_combout\)))) ) ) # ( !\inst2|auto_generated|l3_w7_n0_mux_dataout~2_combout\ & ( (!\DATA1[7]~input_o\ $ (!\DATA2[7]~input_o\ $ (!\inst|inst1|inst2|inst5~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101011101111101110101110111110110000010001010001000001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datab => \ALT_INV_DATA1[7]~input_o\,
	datac => \ALT_INV_DATA2[7]~input_o\,
	datad => \inst|inst1|inst2|ALT_INV_inst5~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w7_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X36_Y3_N42
\inst2|auto_generated|l3_w7_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w7_n0_mux_dataout~4_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[7]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( 
-- \inst2|auto_generated|l3_w7_n0_mux_dataout~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[7]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~3_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w7_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X33_Y4_N18
\inst4|inst31|auto_generated|l5_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l5_w6_n0_mux_dataout~0_combout\ = ( \inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & ((!\SHAMT[2]~input_o\) # 
-- (\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\))) ) ) # ( !\inst4|inst31|auto_generated|l2_w30_n6_mux_dataout~0_combout\ & ( (\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ & (\SHAMT[2]~input_o\ & 
-- \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n7_mux_dataout~0_combout\,
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n6_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l5_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y2_N6
\inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\ = ( \DATA1[9]~input_o\ & ( \DATA1[8]~input_o\ & ( ((!\SHAMT[0]~input_o\ & (\DATA1[6]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[7]~input_o\)))) # (\SHAMT[1]~input_o\) ) ) ) # ( 
-- !\DATA1[9]~input_o\ & ( \DATA1[8]~input_o\ & ( (!\SHAMT[0]~input_o\ & (((\SHAMT[1]~input_o\)) # (\DATA1[6]~input_o\))) # (\SHAMT[0]~input_o\ & (((!\SHAMT[1]~input_o\ & \DATA1[7]~input_o\)))) ) ) ) # ( \DATA1[9]~input_o\ & ( !\DATA1[8]~input_o\ & ( 
-- (!\SHAMT[0]~input_o\ & (\DATA1[6]~input_o\ & (!\SHAMT[1]~input_o\))) # (\SHAMT[0]~input_o\ & (((\DATA1[7]~input_o\) # (\SHAMT[1]~input_o\)))) ) ) ) # ( !\DATA1[9]~input_o\ & ( !\DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\ & ((!\SHAMT[0]~input_o\ & 
-- (\DATA1[6]~input_o\)) # (\SHAMT[0]~input_o\ & ((\DATA1[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001001010111010100101010011110100010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \ALT_INV_DATA1[6]~input_o\,
	datac => \ALT_INV_SHAMT[1]~input_o\,
	datad => \ALT_INV_DATA1[7]~input_o\,
	datae => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_DATA1[8]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N48
\inst2|auto_generated|l3_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w6_n0_mux_dataout~0_combout\ = ( \SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\) # (\inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\) ) ) ) # ( 
-- !\SHAMT[2]~input_o\ & ( \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\)) # (\SHAMT[3]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\))) ) ) ) # ( \SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l2_w18_n0_mux_dataout~0_combout\ & \SHAMT[3]~input_o\) ) ) 
-- ) # ( !\SHAMT[2]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\)) # (\SHAMT[3]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w6_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w18_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SHAMT[3]~input_o\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w14_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_SHAMT[2]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w10_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y3_N36
\inst2|auto_generated|l3_w6_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w6_n0_mux_dataout~1_combout\ = ( \DATA2[6]~input_o\ & ( \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & 
-- (\inst4|inst31|auto_generated|l5_w6_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & ((\inst5|inst34|auto_generated|l4_w22_n0_mux_dataout~0_combout\))) ) ) ) # ( !\DATA2[6]~input_o\ & ( 
-- \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & (\inst4|inst31|auto_generated|l5_w6_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & 
-- ((\inst5|inst34|auto_generated|l4_w22_n0_mux_dataout~0_combout\))) ) ) ) # ( \DATA2[6]~input_o\ & ( !\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\) # 
-- (\inst2|auto_generated|l3_w6_n0_mux_dataout~0_combout\) ) ) ) # ( !\DATA2[6]~input_o\ & ( !\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & 
-- \inst2|auto_generated|l3_w6_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst31|auto_generated|ALT_INV_l5_w6_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l4_w22_n0_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~2_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_DATA2[6]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w6_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X31_Y3_N42
\inst2|auto_generated|l3_w6_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w6_n0_mux_dataout~2_combout\ = ( \DATA1[6]~input_o\ & ( \DATA2[6]~input_o\ & ( (!\OP[2]~input_o\ & (((!\OP[1]~input_o\ & \inst7|inst1|inst1|inst5~2_combout\)))) # (\OP[2]~input_o\ & 
-- (\inst2|auto_generated|l3_w6_n0_mux_dataout~1_combout\)) ) ) ) # ( !\DATA1[6]~input_o\ & ( \DATA2[6]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst7|inst1|inst1|inst5~2_combout\) # (\OP[1]~input_o\)))) # (\OP[2]~input_o\ & 
-- (\inst2|auto_generated|l3_w6_n0_mux_dataout~1_combout\)) ) ) ) # ( \DATA1[6]~input_o\ & ( !\DATA2[6]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst7|inst1|inst1|inst5~2_combout\) # (\OP[1]~input_o\)))) # (\OP[2]~input_o\ & 
-- (\inst2|auto_generated|l3_w6_n0_mux_dataout~1_combout\)) ) ) ) # ( !\DATA1[6]~input_o\ & ( !\DATA2[6]~input_o\ & ( (!\OP[2]~input_o\ & (((\inst7|inst1|inst1|inst5~2_combout\) # (\OP[1]~input_o\)))) # (\OP[2]~input_o\ & 
-- (\inst2|auto_generated|l3_w6_n0_mux_dataout~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111110101111101010011010111110101001101010000010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~1_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \inst7|inst1|inst1|ALT_INV_inst5~2_combout\,
	datae => \ALT_INV_DATA1[6]~input_o\,
	dataf => \ALT_INV_DATA2[6]~input_o\,
	combout => \inst2|auto_generated|l3_w6_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X31_Y3_N33
\inst|inst1|inst|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst5~2_combout\ = (\inst|inst1|inst|inst~0_combout\) # (\inst|inst1|inst|inst5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst|ALT_INV_inst5~1_combout\,
	datad => \inst|inst1|inst|ALT_INV_inst~0_combout\,
	combout => \inst|inst1|inst|inst5~2_combout\);

-- Location: LABCELL_X31_Y3_N0
\inst2|auto_generated|l3_w6_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w6_n0_mux_dataout~4_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA1[6]~input_o\ $ (!\DATA2[6]~input_o\ $ (((!\DATA1[5]~input_o\ & (\DATA2[5]~input_o\ & \inst|inst1|inst|inst5~2_combout\)) # 
-- (\DATA1[5]~input_o\ & ((\inst|inst1|inst|inst5~2_combout\) # (\DATA2[5]~input_o\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w6_n0_mux_dataout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011110001101001000011110000111101101001110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[5]~input_o\,
	datab => \ALT_INV_DATA1[6]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~2_combout\,
	datad => \ALT_INV_DATA2[5]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \inst|inst1|inst|ALT_INV_inst5~2_combout\,
	datag => \ALT_INV_DATA2[6]~input_o\,
	combout => \inst2|auto_generated|l3_w6_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X42_Y2_N6
\inst2|auto_generated|l3_w6_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w6_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w6_n0_mux_dataout~4_combout\ & ( \DATA1[6]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w6_n0_mux_dataout~4_combout\ & ( \DATA1[6]~input_o\ & ( 
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ ) ) ) # ( \inst2|auto_generated|l3_w6_n0_mux_dataout~4_combout\ & ( !\DATA1[6]~input_o\ & ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~4_combout\,
	dataf => \ALT_INV_DATA1[6]~input_o\,
	combout => \inst2|auto_generated|l3_w6_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X31_Y2_N42
\inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\ = ( \DATA1[5]~input_o\ & ( \DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)) # (\DATA1[6]~input_o\))) # (\SHAMT[1]~input_o\ & (((\DATA1[7]~input_o\) # 
-- (\SHAMT[0]~input_o\)))) ) ) ) # ( !\DATA1[5]~input_o\ & ( \DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[6]~input_o\ & (\SHAMT[0]~input_o\))) # (\SHAMT[1]~input_o\ & (((\DATA1[7]~input_o\) # (\SHAMT[0]~input_o\)))) ) ) ) # ( \DATA1[5]~input_o\ & ( 
-- !\DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\)) # (\DATA1[6]~input_o\))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\ & \DATA1[7]~input_o\)))) ) ) ) # ( !\DATA1[5]~input_o\ & ( !\DATA1[8]~input_o\ & ( (!\SHAMT[1]~input_o\ & 
-- (\DATA1[6]~input_o\ & (\SHAMT[0]~input_o\))) # (\SHAMT[1]~input_o\ & (((!\SHAMT[0]~input_o\ & \DATA1[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[1]~input_o\,
	datab => \ALT_INV_DATA1[6]~input_o\,
	datac => \ALT_INV_SHAMT[0]~input_o\,
	datad => \ALT_INV_DATA1[7]~input_o\,
	datae => \ALT_INV_DATA1[5]~input_o\,
	dataf => \ALT_INV_DATA1[8]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y4_N24
\inst2|auto_generated|l3_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w5_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((!\SHAMT[2]~input_o\) # 
-- (\inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\)))) # (\SHAMT[3]~input_o\ & (((\SHAMT[2]~input_o\)) # (\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ 
-- & ( \inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((!\SHAMT[2]~input_o\) # (\inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\)))) # (\SHAMT[3]~input_o\ & 
-- (\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\ & ((!\SHAMT[2]~input_o\)))) ) ) ) # ( \inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & 
-- (((\inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & \SHAMT[2]~input_o\)))) # (\SHAMT[3]~input_o\ & (((\SHAMT[2]~input_o\)) # (\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\))) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l2_w17_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\ & ( (!\SHAMT[3]~input_o\ & (((\inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & \SHAMT[2]~input_o\)))) # 
-- (\SHAMT[3]~input_o\ & (\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\ & ((!\SHAMT[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[3]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w13_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l2_w17_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w5_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y4_N30
\inst4|inst31|auto_generated|l5_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l5_w5_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & ((\inst4|inst31|auto_generated|l2_w29_n6_mux_dataout~0_combout\))) # (\SHAMT[2]~input_o\ & 
-- (\inst4|inst31|auto_generated|l2_w29_n7_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n7_mux_dataout~0_combout\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w29_n6_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l5_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y3_N48
\inst2|auto_generated|l3_w5_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w5_n0_mux_dataout~1_combout\ = ( \inst4|inst31|auto_generated|l5_w5_n0_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\) # 
-- (\inst5|inst34|auto_generated|l4_w21_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst4|inst31|auto_generated|l5_w5_n0_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ 
-- & \inst5|inst34|auto_generated|l4_w21_n0_mux_dataout~0_combout\) ) ) ) # ( \inst4|inst31|auto_generated|l5_w5_n0_mux_dataout~0_combout\ & ( !\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( 
-- (!\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & ((\DATA2[5]~input_o\))) # (\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & (\inst2|auto_generated|l3_w5_n0_mux_dataout~0_combout\)) ) ) ) # ( 
-- !\inst4|inst31|auto_generated|l5_w5_n0_mux_dataout~0_combout\ & ( !\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & ((\DATA2[5]~input_o\))) # 
-- (\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & (\inst2|auto_generated|l3_w5_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~2_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l4_w21_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_DATA2[5]~input_o\,
	datae => \inst4|inst31|auto_generated|ALT_INV_l5_w5_n0_mux_dataout~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w5_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X31_Y3_N24
\inst2|auto_generated|l3_w5_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w5_n0_mux_dataout~2_combout\ = ( \DATA2[5]~input_o\ & ( \inst2|auto_generated|l3_w5_n0_mux_dataout~1_combout\ & ( (!\OP[2]~input_o\ & (!\DATA1[5]~input_o\ $ (((\inst7|inst1|inst|inst5~0_combout\) # (\OP[1]~input_o\))))) ) ) ) # ( 
-- !\DATA2[5]~input_o\ & ( \inst2|auto_generated|l3_w5_n0_mux_dataout~1_combout\ & ( (!\OP[2]~input_o\ & (!\OP[1]~input_o\ & (!\DATA1[5]~input_o\ $ (!\inst7|inst1|inst|inst5~0_combout\)))) ) ) ) # ( \DATA2[5]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w5_n0_mux_dataout~1_combout\ & ( (!\DATA1[5]~input_o\ $ (((\inst7|inst1|inst|inst5~0_combout\) # (\OP[1]~input_o\)))) # (\OP[2]~input_o\) ) ) ) # ( !\DATA2[5]~input_o\ & ( !\inst2|auto_generated|l3_w5_n0_mux_dataout~1_combout\ & 
-- ( ((!\OP[1]~input_o\ & (!\DATA1[5]~input_o\ $ (!\inst7|inst1|inst|inst5~0_combout\)))) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111010101110101110101111100001000100000001000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_DATA1[5]~input_o\,
	datad => \inst7|inst1|inst|ALT_INV_inst5~0_combout\,
	datae => \ALT_INV_DATA2[5]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w5_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X31_Y3_N30
\inst2|auto_generated|l3_w5_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w5_n0_mux_dataout~3_combout\ = ( \inst|inst1|inst|inst5~2_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA1[5]~input_o\ $ (((\DATA2[5]~input_o\))))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (((!\inst2|auto_generated|l3_w5_n0_mux_dataout~2_combout\)))) ) ) # ( !\inst|inst1|inst|inst5~2_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\DATA1[5]~input_o\ $ 
-- (((!\DATA2[5]~input_o\))))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (((!\inst2|auto_generated|l3_w5_n0_mux_dataout~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010010111000011101001011100010111000011101001011100001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[5]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~2_combout\,
	datad => \ALT_INV_DATA2[5]~input_o\,
	dataf => \inst|inst1|inst|ALT_INV_inst5~2_combout\,
	combout => \inst2|auto_generated|l3_w5_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X30_Y3_N21
\inst2|auto_generated|l3_w5_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w5_n0_mux_dataout~4_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[5]~input_o\ ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( 
-- \inst2|auto_generated|l3_w5_n0_mux_dataout~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[5]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~3_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w5_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X31_Y2_N48
\inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\ = ( \DATA1[7]~input_o\ & ( \SHAMT[0]~input_o\ & ( (\DATA1[5]~input_o\) # (\SHAMT[1]~input_o\) ) ) ) # ( !\DATA1[7]~input_o\ & ( \SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & \DATA1[5]~input_o\) 
-- ) ) ) # ( \DATA1[7]~input_o\ & ( !\SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[4]~input_o\)) # (\SHAMT[1]~input_o\ & ((\DATA1[6]~input_o\))) ) ) ) # ( !\DATA1[7]~input_o\ & ( !\SHAMT[0]~input_o\ & ( (!\SHAMT[1]~input_o\ & (\DATA1[4]~input_o\)) # 
-- (\SHAMT[1]~input_o\ & ((\DATA1[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[1]~input_o\,
	datab => \ALT_INV_DATA1[4]~input_o\,
	datac => \ALT_INV_DATA1[5]~input_o\,
	datad => \ALT_INV_DATA1[6]~input_o\,
	datae => \ALT_INV_DATA1[7]~input_o\,
	dataf => \ALT_INV_SHAMT[0]~input_o\,
	combout => \inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N18
\inst2|auto_generated|l3_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w4_n0_mux_dataout~0_combout\ = ( \SHAMT[3]~input_o\ & ( \inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ 
-- & ((\inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\))) ) ) ) # ( !\SHAMT[3]~input_o\ & ( \inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\) # (\inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\) 
-- ) ) ) # ( \SHAMT[3]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & 
-- ((\inst5|inst34|auto_generated|l2_w16_n0_mux_dataout~0_combout\))) ) ) ) # ( !\SHAMT[3]~input_o\ & ( !\inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\ & \SHAMT[2]~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w12_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l2_w16_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w8_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SHAMT[2]~input_o\,
	datae => \ALT_INV_SHAMT[3]~input_o\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w4_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N54
\inst4|inst31|auto_generated|l5_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31|auto_generated|l5_w4_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & ( (!\SHAMT[2]~input_o\ & (\inst4|inst31|auto_generated|l2_w28_n6_mux_dataout~0_combout\)) # (\SHAMT[2]~input_o\ & 
-- ((\inst4|inst31|auto_generated|l2_w28_n7_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHAMT[2]~input_o\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n6_mux_dataout~0_combout\,
	datad => \inst4|inst31|auto_generated|ALT_INV_l2_w28_n7_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	combout => \inst4|inst31|auto_generated|l5_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y3_N48
\inst2|auto_generated|l3_w4_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w4_n0_mux_dataout~1_combout\ = ( \inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & ( (\inst2|auto_generated|l3_w4_n0_mux_dataout~0_combout\) # 
-- (\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & 
-- \inst2|auto_generated|l3_w4_n0_mux_dataout~0_combout\) ) ) ) # ( \inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0_combout\ & ( !\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & 
-- ((\DATA2[4]~input_o\))) # (\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & (\inst4|inst31|auto_generated|l5_w4_n0_mux_dataout~0_combout\)) ) ) ) # ( !\inst5|inst34|auto_generated|l4_w20_n0_mux_dataout~0_combout\ & ( 
-- !\inst2|auto_generated|l3_w15_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & ((\DATA2[4]~input_o\))) # (\inst2|auto_generated|l3_w15_n0_mux_dataout~1_combout\ & 
-- (\inst4|inst31|auto_generated|l5_w4_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~1_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~0_combout\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l5_w4_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_DATA2[4]~input_o\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l4_w20_n0_mux_dataout~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w4_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X30_Y1_N48
\inst2|auto_generated|l3_w4_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w4_n0_mux_dataout~2_combout\ = ( \DATA2[4]~input_o\ & ( \OP[1]~input_o\ & ( (!\OP[2]~input_o\ & ((!\DATA1[4]~input_o\))) # (\OP[2]~input_o\ & (\inst2|auto_generated|l3_w4_n0_mux_dataout~1_combout\)) ) ) ) # ( !\DATA2[4]~input_o\ & 
-- ( \OP[1]~input_o\ & ( (!\OP[2]~input_o\) # (\inst2|auto_generated|l3_w4_n0_mux_dataout~1_combout\) ) ) ) # ( \DATA2[4]~input_o\ & ( !\OP[1]~input_o\ & ( (!\OP[2]~input_o\ & ((!\inst7|inst|inst3|inst5~0_combout\ $ (!\DATA1[4]~input_o\)))) # 
-- (\OP[2]~input_o\ & (\inst2|auto_generated|l3_w4_n0_mux_dataout~1_combout\)) ) ) ) # ( !\DATA2[4]~input_o\ & ( !\OP[1]~input_o\ & ( (!\OP[2]~input_o\ & ((!\inst7|inst|inst3|inst5~0_combout\ $ (\DATA1[4]~input_o\)))) # (\OP[2]~input_o\ & 
-- (\inst2|auto_generated|l3_w4_n0_mux_dataout~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100011101000111011101000111011101110111011101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~1_combout\,
	datab => \ALT_INV_OP[2]~input_o\,
	datac => \inst7|inst|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[4]~input_o\,
	datae => \ALT_INV_DATA2[4]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst2|auto_generated|l3_w4_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X30_Y1_N42
\inst|inst|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst5~0_combout\ = ( \DATA1[2]~input_o\ & ( (\inst|inst|inst1|inst5~0_combout\) # (\DATA2[2]~input_o\) ) ) # ( !\DATA1[2]~input_o\ & ( (\DATA2[2]~input_o\ & \inst|inst|inst1|inst5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA2[2]~input_o\,
	datad => \inst|inst|inst1|ALT_INV_inst5~0_combout\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	combout => \inst|inst|inst2|inst5~0_combout\);

-- Location: LABCELL_X30_Y1_N36
\inst2|auto_generated|l3_w4_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w4_n0_mux_dataout~4_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( !\DATA1[4]~input_o\ $ (!\DATA2[4]~input_o\ $ (((!\DATA2[3]~input_o\ & (\inst|inst|inst2|inst5~0_combout\ & \DATA1[3]~input_o\)) # 
-- (\DATA2[3]~input_o\ & ((\DATA1[3]~input_o\) # (\inst|inst|inst2|inst5~0_combout\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ( (((\inst2|auto_generated|l3_w4_n0_mux_dataout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011110001101001000011110000111101101001110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[3]~input_o\,
	datab => \ALT_INV_DATA1[4]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~2_combout\,
	datad => \inst|inst|inst2|ALT_INV_inst5~0_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	dataf => \ALT_INV_DATA1[3]~input_o\,
	datag => \ALT_INV_DATA2[4]~input_o\,
	combout => \inst2|auto_generated|l3_w4_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X30_Y3_N54
\inst2|auto_generated|l3_w4_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w4_n0_mux_dataout~3_combout\ = ( \DATA1[4]~input_o\ & ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ ) ) # ( \DATA1[4]~input_o\ & ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( 
-- \inst2|auto_generated|l3_w4_n0_mux_dataout~4_combout\ ) ) ) # ( !\DATA1[4]~input_o\ & ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \inst2|auto_generated|l3_w4_n0_mux_dataout~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~4_combout\,
	datae => \ALT_INV_DATA1[4]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w4_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X31_Y2_N54
\inst2|auto_generated|l3_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w3_n0_mux_dataout~0_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( \DATA1[6]~input_o\ & ( (\DATA1[4]~input_o\) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\) ) ) ) # ( 
-- !\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( \DATA1[6]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[5]~input_o\))) ) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( !\DATA1[6]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & \DATA1[4]~input_o\) ) 
-- ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ( !\DATA1[6]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & (\inst5|inst34|auto_generated|l2_w7_n0_mux_dataout~0_combout\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ((\DATA1[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\,
	datab => \ALT_INV_DATA1[4]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w7_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_DATA1[5]~input_o\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\,
	dataf => \ALT_INV_DATA1[6]~input_o\,
	combout => \inst2|auto_generated|l3_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y3_N54
\inst2|auto_generated|l3_w3_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w3_n0_mux_dataout~1_combout\ = ( \inst2|auto_generated|l3_w3_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & 
-- (((\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\) # (\inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)) # 
-- (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst2|auto_generated|l3_w3_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (((\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\) # (\inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & 
-- (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\ & ((\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)))) ) ) ) # ( \inst2|auto_generated|l3_w3_n0_mux_dataout~0_combout\ & ( 
-- !\inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (((\inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0_combout\ & !\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)) # (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst2|auto_generated|l3_w3_n0_mux_dataout~0_combout\ & ( 
-- !\inst5|inst34|auto_generated|l2_w11_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (((\inst5|inst34|auto_generated|l4_w19_n0_mux_dataout~0_combout\ & !\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (\inst5|inst34|auto_generated|l2_w15_n0_mux_dataout~0_combout\ & ((\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst34|auto_generated|ALT_INV_l2_w15_n0_mux_dataout~0_combout\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l4_w19_n0_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w11_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w3_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X33_Y3_N6
\inst2|auto_generated|l3_w3_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w3_n0_mux_dataout~2_combout\ = ( \OP[0]~input_o\ & ( \inst2|auto_generated|l3_w3_n0_mux_dataout~1_combout\ ) ) # ( !\OP[0]~input_o\ & ( (!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\ & 
-- \inst4|inst31|auto_generated|l2_w31_n7_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	datac => \inst4|inst31|auto_generated|ALT_INV_l2_w31_n7_mux_dataout~0_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w3_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X30_Y1_N24
\inst2|auto_generated|l3_w3_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w3_n0_mux_dataout~3_combout\ = ( \OP[2]~input_o\ & ( \DATA1[3]~input_o\ & ( (!\OP[1]~input_o\ & ((!\inst2|auto_generated|l3_w3_n0_mux_dataout~2_combout\))) # (\OP[1]~input_o\ & (!\DATA2[3]~input_o\)) ) ) ) # ( !\OP[2]~input_o\ & ( 
-- \DATA1[3]~input_o\ & ( !\DATA2[3]~input_o\ $ (((!\inst7|inst|inst2|inst5~0_combout\) # (\OP[1]~input_o\))) ) ) ) # ( \OP[2]~input_o\ & ( !\DATA1[3]~input_o\ & ( (!\OP[1]~input_o\ & ((!\inst2|auto_generated|l3_w3_n0_mux_dataout~2_combout\))) # 
-- (\OP[1]~input_o\ & (!\DATA2[3]~input_o\)) ) ) ) # ( !\OP[2]~input_o\ & ( !\DATA1[3]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst7|inst|inst2|inst5~0_combout\ $ (\DATA2[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100111111000011000001001011010010111111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst2|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_DATA2[3]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~2_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_DATA1[3]~input_o\,
	combout => \inst2|auto_generated|l3_w3_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X30_Y1_N45
\inst2|auto_generated|l3_w3_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w3_n0_mux_dataout~4_combout\ = ( \DATA2[3]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\inst|inst|inst2|inst5~0_combout\ $ (\DATA1[3]~input_o\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w3_n0_mux_dataout~3_combout\)) ) ) # ( !\DATA2[3]~input_o\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & ((!\inst|inst|inst2|inst5~0_combout\ $ 
-- (!\DATA1[3]~input_o\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~10_combout\ & (!\inst2|auto_generated|l3_w3_n0_mux_dataout~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011100010001011101110001011100010001011101110001000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~3_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~10_combout\,
	datac => \inst|inst|inst2|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_DATA1[3]~input_o\,
	dataf => \ALT_INV_DATA2[3]~input_o\,
	combout => \inst2|auto_generated|l3_w3_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X33_Y1_N54
\inst2|auto_generated|l3_w3_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w3_n0_mux_dataout~5_combout\ = ( \OP[0]~input_o\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & ( (!\OP[2]~input_o\ & ((!\OP[1]~input_o\ & ((\inst2|auto_generated|l3_w3_n0_mux_dataout~4_combout\))) # (\OP[1]~input_o\ 
-- & (\DATA1[3]~input_o\)))) # (\OP[2]~input_o\ & (((\inst2|auto_generated|l3_w3_n0_mux_dataout~4_combout\)))) ) ) ) # ( !\OP[0]~input_o\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & ( \inst2|auto_generated|l3_w3_n0_mux_dataout~4_combout\ ) ) 
-- ) # ( \OP[0]~input_o\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & ( (!\OP[2]~input_o\ & ((!\OP[1]~input_o\ & ((\inst2|auto_generated|l3_w3_n0_mux_dataout~4_combout\))) # (\OP[1]~input_o\ & (\DATA1[3]~input_o\)))) # (\OP[2]~input_o\ & 
-- (\DATA1[3]~input_o\)) ) ) ) # ( !\OP[0]~input_o\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & ( \inst2|auto_generated|l3_w3_n0_mux_dataout~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111010101010100001111000011110000111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[3]~input_o\,
	datab => \ALT_INV_OP[2]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~4_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w3_n0_mux_dataout~5_combout\);

-- Location: LABCELL_X31_Y1_N3
\inst7|inst|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst5~0_combout\ = ( \DATA2[1]~input_o\ & ( (\DATA1[1]~input_o\ & ((!\DATA2[0]~input_o\) # (\DATA1[0]~input_o\))) ) ) # ( !\DATA2[1]~input_o\ & ( (!\DATA2[0]~input_o\) # ((\DATA1[1]~input_o\) # (\DATA1[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111101110111111111100000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[0]~input_o\,
	datab => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_DATA1[1]~input_o\,
	dataf => \ALT_INV_DATA2[1]~input_o\,
	combout => \inst7|inst|inst1|inst5~0_combout\);

-- Location: LABCELL_X30_Y4_N0
\inst2|auto_generated|l3_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w2_n0_mux_dataout~0_combout\ = ( \inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & 
-- (\DATA1[4]~input_o\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ((\DATA1[5]~input_o\))) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & (\DATA1[4]~input_o\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ((\DATA1[5]~input_o\))) ) ) ) # ( \inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\ & ( 
-- !\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\) # (\DATA1[3]~input_o\) ) ) ) # ( !\inst5|inst34|auto_generated|l2_w6_n0_mux_dataout~0_combout\ & ( 
-- !\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & \DATA1[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\,
	datab => \ALT_INV_DATA1[4]~input_o\,
	datac => \ALT_INV_DATA1[5]~input_o\,
	datad => \ALT_INV_DATA1[3]~input_o\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l2_w6_n0_mux_dataout~0_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\,
	combout => \inst2|auto_generated|l3_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N24
\inst2|auto_generated|l3_w2_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w2_n0_mux_dataout~1_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- (\inst2|auto_generated|l3_w2_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( 
-- \inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (\inst5|inst34|auto_generated|l4_w18_n0_mux_dataout~0_combout\) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\) ) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & 
-- ( !\inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst2|auto_generated|l3_w2_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- ((\inst5|inst34|auto_generated|l2_w14_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ( !\inst5|inst34|auto_generated|l2_w10_n0_mux_dataout~0_combout\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & \inst5|inst34|auto_generated|l4_w18_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l4_w18_n0_mux_dataout~0_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w14_n0_mux_dataout~0_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w10_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w2_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X33_Y4_N54
\inst2|auto_generated|l3_w2_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w2_n0_mux_dataout~2_combout\ = ( \inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ & ( (!\OP[0]~input_o\ & (!\SHAMT[2]~input_o\ & (\inst5|inst34|auto_generated|l5_w27_n0_mux_dataout~0_combout\))) # (\OP[0]~input_o\ & 
-- (((\inst2|auto_generated|l3_w2_n0_mux_dataout~1_combout\)))) ) ) # ( !\inst4|inst31|auto_generated|l2_w30_n7_mux_dataout~0_combout\ & ( (\inst2|auto_generated|l3_w2_n0_mux_dataout~1_combout\ & \OP[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100100010000011110010001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[2]~input_o\,
	datab => \inst5|inst34|auto_generated|ALT_INV_l5_w27_n0_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \inst4|inst31|auto_generated|ALT_INV_l2_w30_n7_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w2_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X31_Y1_N39
\inst2|auto_generated|l3_w2_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w2_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w2_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ((!\OP[1]~input_o\) # ((\DATA2[2]~input_o\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & (((!\DATA2[2]~input_o\) # (!\DATA1[2]~input_o\)))) ) ) # ( !\inst2|auto_generated|l3_w2_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & (\OP[1]~input_o\ & 
-- (\DATA2[2]~input_o\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & (((!\DATA2[2]~input_o\) # (!\DATA1[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110100001101110011010010111111101111001011111110111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\,
	datac => \ALT_INV_DATA2[2]~input_o\,
	datad => \ALT_INV_DATA1[2]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w2_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X30_Y1_N0
\inst2|auto_generated|l3_w2_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w2_n0_mux_dataout~5_combout\ = ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ( (!\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ((((\inst2|auto_generated|l3_w2_n0_mux_dataout~3_combout\))))) # 
-- (\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & (!\DATA2[2]~input_o\ $ (!\inst|inst|inst1|inst5~0_combout\ $ (((\DATA1[2]~input_o\)))))) ) ) # ( \inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ( 
-- (!\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ((((\inst2|auto_generated|l3_w2_n0_mux_dataout~3_combout\))))) # (\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & (!\DATA2[2]~input_o\ $ (!\inst7|inst|inst1|inst5~0_combout\ 
-- $ (((!\DATA1[2]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001001011011110001000011110110100100001111011010001001011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[2]~input_o\,
	datab => \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\,
	datac => \inst7|inst|inst1|ALT_INV_inst5~0_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~3_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	datag => \inst|inst|inst1|ALT_INV_inst5~0_combout\,
	combout => \inst2|auto_generated|l3_w2_n0_mux_dataout~5_combout\);

-- Location: LABCELL_X31_Y1_N45
\inst2|auto_generated|l3_w2_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w2_n0_mux_dataout~4_combout\ = ( \DATA1[2]~input_o\ & ( \inst2|auto_generated|l3_w2_n0_mux_dataout~5_combout\ ) ) # ( !\DATA1[2]~input_o\ & ( \inst2|auto_generated|l3_w2_n0_mux_dataout~5_combout\ & ( (!\OP[0]~input_o\) # 
-- ((!\OP[2]~input_o\ & (!\OP[1]~input_o\)) # (\OP[2]~input_o\ & ((\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\)))) ) ) ) # ( \DATA1[2]~input_o\ & ( !\inst2|auto_generated|l3_w2_n0_mux_dataout~5_combout\ & ( (\OP[0]~input_o\ & ((!\OP[2]~input_o\ & 
-- (\OP[1]~input_o\)) # (\OP[2]~input_o\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000110011111010111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~2_combout\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	datae => \ALT_INV_DATA1[2]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~5_combout\,
	combout => \inst2|auto_generated|l3_w2_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X31_Y1_N0
\inst7|inst|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst3~combout\ = ( \DATA2[1]~input_o\ & ( !\DATA1[1]~input_o\ $ (((!\DATA2[0]~input_o\) # (\DATA1[0]~input_o\))) ) ) # ( !\DATA2[1]~input_o\ & ( !\DATA1[1]~input_o\ $ (((\DATA2[0]~input_o\ & !\DATA1[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010010110100101101001011010001001011010010110100101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[0]~input_o\,
	datab => \ALT_INV_DATA1[0]~input_o\,
	datac => \ALT_INV_DATA1[1]~input_o\,
	dataf => \ALT_INV_DATA2[1]~input_o\,
	combout => \inst7|inst|inst1|inst3~combout\);

-- Location: LABCELL_X30_Y4_N6
\inst2|auto_generated|l3_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w1_n0_mux_dataout~0_combout\ = ( \DATA1[4]~input_o\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (\DATA1[3]~input_o\) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\) ) ) ) # ( !\DATA1[4]~input_o\ & ( 
-- \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & \DATA1[3]~input_o\) ) ) ) # ( \DATA1[4]~input_o\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ((\inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & (\DATA1[2]~input_o\)) ) ) ) # ( !\DATA1[4]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ((\inst5|inst34|auto_generated|l2_w5_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & 
-- (\DATA1[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\,
	datab => \ALT_INV_DATA1[2]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w5_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_DATA1[3]~input_o\,
	datae => \ALT_INV_DATA1[4]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\,
	combout => \inst2|auto_generated|l3_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y4_N42
\inst2|auto_generated|l3_w1_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w1_n0_mux_dataout~1_combout\ = ( \inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\) # 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst2|auto_generated|l3_w1_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst2|auto_generated|l3_w1_n0_mux_dataout~0_combout\ & 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\) # (\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\)))) ) ) ) # 
-- ( \inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\)) # 
-- (\inst2|auto_generated|l3_w1_n0_mux_dataout~0_combout\))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (((\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & \inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l4_w17_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w9_n0_mux_dataout~0_combout\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- (\inst2|auto_generated|l3_w1_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst5|inst34|auto_generated|l2_w13_n0_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~0_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\,
	datad => \inst5|inst34|auto_generated|ALT_INV_l2_w13_n0_mux_dataout~0_combout\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l4_w17_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w9_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w1_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X30_Y4_N48
\inst2|auto_generated|l3_w1_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w1_n0_mux_dataout~2_combout\ = ( \DATA1[1]~input_o\ & ( \OP[0]~input_o\ & ( \inst2|auto_generated|l3_w1_n0_mux_dataout~1_combout\ ) ) ) # ( !\DATA1[1]~input_o\ & ( \OP[0]~input_o\ & ( 
-- \inst2|auto_generated|l3_w1_n0_mux_dataout~1_combout\ ) ) ) # ( \DATA1[1]~input_o\ & ( !\OP[0]~input_o\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~0_combout\ & ((!\SHAMT[0]~input_o\) # (\DATA1[0]~input_o\))) ) ) ) # ( !\DATA1[1]~input_o\ & ( 
-- !\OP[0]~input_o\ & ( (\SHAMT[0]~input_o\ & (\DATA1[0]~input_o\ & \inst2|auto_generated|l3_w30_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001010111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHAMT[0]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~1_combout\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_DATA1[1]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst2|auto_generated|l3_w1_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X31_Y1_N36
\inst2|auto_generated|l3_w1_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w1_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w1_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & (\OP[1]~input_o\ & ((!\DATA2[1]~input_o\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & (((\DATA1[1]~input_o\ & \DATA2[1]~input_o\)))) ) ) # ( !\inst2|auto_generated|l3_w1_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & ((!\OP[1]~input_o\) # 
-- ((!\DATA2[1]~input_o\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\ & (((\DATA1[1]~input_o\ & \DATA2[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001011110011001000101101000100000000110100010000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\,
	datac => \ALT_INV_DATA1[1]~input_o\,
	datad => \ALT_INV_DATA2[1]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w1_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X31_Y1_N51
\inst|inst|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst3~combout\ = ( \DATA1[0]~input_o\ & ( !\DATA1[1]~input_o\ $ (!\DATA2[1]~input_o\ $ (((\DATA2[0]~input_o\) # (\Cin~input_o\)))) ) ) # ( !\DATA1[0]~input_o\ & ( !\DATA1[1]~input_o\ $ (!\DATA2[1]~input_o\ $ (((\Cin~input_o\ & 
-- \DATA2[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_DATA1[1]~input_o\,
	datac => \ALT_INV_DATA2[1]~input_o\,
	datad => \ALT_INV_DATA2[0]~input_o\,
	dataf => \ALT_INV_DATA1[0]~input_o\,
	combout => \inst|inst|inst1|inst3~combout\);

-- Location: LABCELL_X31_Y1_N24
\inst2|auto_generated|l3_w1_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w1_n0_mux_dataout~4_combout\ = ( \inst|inst|inst1|inst3~combout\ & ( (!\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & (((!\inst2|auto_generated|l3_w1_n0_mux_dataout~3_combout\)))) # 
-- (\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & ((!\inst7|inst|inst1|inst3~combout\) # ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\)))) ) ) # ( !\inst|inst|inst1|inst3~combout\ & ( 
-- (!\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & (((!\inst2|auto_generated|l3_w1_n0_mux_dataout~3_combout\)))) # (\inst29|$00001|auto_generated|l3_w0_n0_mux_dataout~1_combout\ & (!\inst7|inst|inst1|inst3~combout\ & 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111000000010110011100000001011111110001100101111111000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst1|ALT_INV_inst3~combout\,
	datab => \inst29|$00001|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~5_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~3_combout\,
	dataf => \inst|inst|inst1|ALT_INV_inst3~combout\,
	combout => \inst2|auto_generated|l3_w1_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X31_Y1_N42
\inst2|auto_generated|l3_w1_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w1_n0_mux_dataout~5_combout\ = ( \DATA1[1]~input_o\ & ( \inst2|auto_generated|l3_w1_n0_mux_dataout~4_combout\ ) ) # ( !\DATA1[1]~input_o\ & ( \inst2|auto_generated|l3_w1_n0_mux_dataout~4_combout\ & ( (!\OP[0]~input_o\) # 
-- ((!\OP[2]~input_o\ & (!\OP[1]~input_o\)) # (\OP[2]~input_o\ & ((\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\)))) ) ) ) # ( \DATA1[1]~input_o\ & ( !\inst2|auto_generated|l3_w1_n0_mux_dataout~4_combout\ & ( (\OP[0]~input_o\ & ((!\OP[2]~input_o\ & 
-- (\OP[1]~input_o\)) # (\OP[2]~input_o\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110011111111101000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~2_combout\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \ALT_INV_DATA1[1]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~4_combout\,
	combout => \inst2|auto_generated|l3_w1_n0_mux_dataout~5_combout\);

-- Location: LABCELL_X31_Y1_N21
\inst2|auto_generated|l3_w1_n0_mux_dataout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w1_n0_mux_dataout~6_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & ( (\OP[1]~input_o\ & (\OP[0]~input_o\ & !\OP[2]~input_o\)) ) ) # ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~2_combout\ & ( 
-- (\OP[0]~input_o\ & ((\OP[2]~input_o\) # (\OP[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w1_n0_mux_dataout~6_combout\);

-- Location: LABCELL_X30_Y4_N24
\inst2|auto_generated|l3_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w0_n0_mux_dataout~0_combout\ = ( \DATA1[1]~input_o\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & (\DATA1[2]~input_o\)) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ((\DATA1[3]~input_o\))) ) ) ) # ( !\DATA1[1]~input_o\ & ( \inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & (\DATA1[2]~input_o\)) 
-- # (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & ((\DATA1[3]~input_o\))) ) ) ) # ( \DATA1[1]~input_o\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (\inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\) ) ) ) # ( !\DATA1[1]~input_o\ & ( !\inst2|auto_generated|l3_w30_n0_mux_dataout~7_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~6_combout\ & 
-- \inst5|inst34|auto_generated|l2_w4_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~6_combout\,
	datab => \ALT_INV_DATA1[2]~input_o\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w4_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_DATA1[3]~input_o\,
	datae => \ALT_INV_DATA1[1]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~7_combout\,
	combout => \inst2|auto_generated|l3_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y3_N24
\inst2|auto_generated|l3_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w0_n0_mux_dataout~1_combout\ = ( \inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\) # 
-- ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst2|auto_generated|l3_w0_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0_combout\ & ( \inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\ & ( (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (((\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)))) # 
-- (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & (\inst2|auto_generated|l3_w0_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- ((\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\))))) ) ) ) # ( \inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\ & ( 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & (((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\)))) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- (\inst2|auto_generated|l3_w0_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\))))) ) ) ) # ( 
-- !\inst5|inst34|auto_generated|l4_w16_n0_mux_dataout~0_combout\ & ( !\inst5|inst34|auto_generated|l2_w8_n0_mux_dataout~0_combout\ & ( (\inst2|auto_generated|l3_w30_n0_mux_dataout~8_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & 
-- (\inst2|auto_generated|l3_w0_n0_mux_dataout~0_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~9_combout\ & ((\inst5|inst34|auto_generated|l2_w12_n0_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~8_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~0_combout\,
	datac => \inst5|inst34|auto_generated|ALT_INV_l2_w12_n0_mux_dataout~0_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~9_combout\,
	datae => \inst5|inst34|auto_generated|ALT_INV_l4_w16_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst34|auto_generated|ALT_INV_l2_w8_n0_mux_dataout~0_combout\,
	combout => \inst2|auto_generated|l3_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X31_Y1_N30
\inst2|auto_generated|l3_w0_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w0_n0_mux_dataout~4_combout\ = ( !\OP[2]~input_o\ & ( !\DATA1[0]~input_o\ $ (((!\OP[1]~input_o\ & (!\DATA2[0]~input_o\ $ (((\Cin~input_o\ & !\OP[0]~input_o\))))))) ) ) # ( \OP[2]~input_o\ & ( ((!\OP[1]~input_o\ & (\OP[0]~input_o\ 
-- & (\inst2|auto_generated|l3_w0_n0_mux_dataout~1_combout\))) # (\OP[1]~input_o\ & (((\DATA2[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100101110110100000000110000001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA2[0]~input_o\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	datag => \ALT_INV_DATA1[0]~input_o\,
	combout => \inst2|auto_generated|l3_w0_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X31_Y1_N18
\inst2|auto_generated|l3_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w0_n0_mux_dataout~2_combout\ = ( \inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ & ( (!\OP[2]~input_o\ & (\OP[1]~input_o\ & ((!\DATA2[0]~input_o\)))) # (\OP[2]~input_o\ & (((!\OP[0]~input_o\)))) ) ) # ( 
-- !\inst2|auto_generated|l3_w30_n0_mux_dataout~1_combout\ & ( (\OP[1]~input_o\ & (!\DATA2[0]~input_o\ & !\OP[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000110011000101000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_DATA2[0]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~1_combout\,
	combout => \inst2|auto_generated|l3_w0_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X31_Y1_N57
\inst2|auto_generated|l3_w0_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|l3_w0_n0_mux_dataout~3_combout\ = ( \inst2|auto_generated|l3_w0_n0_mux_dataout~2_combout\ & ( ((!\inst2|auto_generated|l3_w1_n0_mux_dataout~6_combout\ & \inst2|auto_generated|l3_w0_n0_mux_dataout~4_combout\)) # (\DATA1[0]~input_o\) ) 
-- ) # ( !\inst2|auto_generated|l3_w0_n0_mux_dataout~2_combout\ & ( (!\inst2|auto_generated|l3_w1_n0_mux_dataout~6_combout\ & (\inst2|auto_generated|l3_w0_n0_mux_dataout~4_combout\)) # (\inst2|auto_generated|l3_w1_n0_mux_dataout~6_combout\ & 
-- ((\DATA1[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~6_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~4_combout\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~2_combout\,
	combout => \inst2|auto_generated|l3_w0_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X33_Y2_N54
\inst34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~1_combout\ = ( \inst2|auto_generated|l3_w26_n0_mux_dataout~4_combout\ & ( (!\DATA1[27]~input_o\ & (!\DATA1[26]~input_o\ & \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\)) ) ) # ( !\inst2|auto_generated|l3_w26_n0_mux_dataout~4_combout\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (((!\inst2|auto_generated|l3_w27_n0_mux_dataout~4_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (!\DATA1[27]~input_o\ & ((!\DATA1[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010100000110011001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[27]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w27_n0_mux_dataout~4_combout\,
	datac => \ALT_INV_DATA1[26]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w26_n0_mux_dataout~4_combout\,
	combout => \inst34~1_combout\);

-- Location: LABCELL_X35_Y1_N48
\inst34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~2_combout\ = ( \inst34~1_combout\ & ( !\inst2|auto_generated|l3_w29_n0_mux_dataout~6_combout\ & ( (!\inst2|auto_generated|l3_w28_n0_mux_dataout~5_combout\ & ((!\inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\ & 
-- (!\inst2|auto_generated|l3_w30_n0_mux_dataout~15_combout\)) # (\inst2|auto_generated|l3_w30_n0_mux_dataout~3_combout\ & ((!\DATA1[30]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000101000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w28_n0_mux_dataout~5_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~3_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w30_n0_mux_dataout~15_combout\,
	datad => \ALT_INV_DATA1[30]~input_o\,
	datae => \ALT_INV_inst34~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w29_n0_mux_dataout~6_combout\,
	combout => \inst34~2_combout\);

-- Location: LABCELL_X37_Y3_N3
\inst34~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~11_combout\ = ( \inst2|auto_generated|l3_w8_n0_mux_dataout~2_combout\ & ( (!\DATA1[8]~input_o\ & (!\DATA1[9]~input_o\ & \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\)) ) ) # ( !\inst2|auto_generated|l3_w8_n0_mux_dataout~2_combout\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (((!\inst2|auto_generated|l3_w9_n0_mux_dataout~3_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (!\DATA1[8]~input_o\ & (!\DATA1[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010001000111100001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[8]~input_o\,
	datab => \ALT_INV_DATA1[9]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w9_n0_mux_dataout~3_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w8_n0_mux_dataout~2_combout\,
	combout => \inst34~11_combout\);

-- Location: LABCELL_X30_Y3_N30
\inst34~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~13_combout\ = ( !\DATA1[4]~input_o\ & ( \inst2|auto_generated|l3_w5_n0_mux_dataout~3_combout\ & ( (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & !\DATA1[5]~input_o\) ) ) ) # ( \DATA1[4]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w5_n0_mux_dataout~3_combout\ & ( (!\inst2|auto_generated|l3_w4_n0_mux_dataout~4_combout\ & !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) ) ) # ( !\DATA1[4]~input_o\ & ( 
-- !\inst2|auto_generated|l3_w5_n0_mux_dataout~3_combout\ & ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (!\inst2|auto_generated|l3_w4_n0_mux_dataout~4_combout\)) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & 
-- ((!\DATA1[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010111000100010001000100000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w4_n0_mux_dataout~4_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datac => \ALT_INV_DATA1[5]~input_o\,
	datae => \ALT_INV_DATA1[4]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w5_n0_mux_dataout~3_combout\,
	combout => \inst34~13_combout\);

-- Location: LABCELL_X37_Y3_N36
\inst34~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~10_combout\ = ( \DATA1[11]~input_o\ & ( (!\inst2|auto_generated|l3_w11_n0_mux_dataout~3_combout\ & (!\inst2|auto_generated|l3_w10_n0_mux_dataout~2_combout\ & !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\)) ) ) # ( !\DATA1[11]~input_o\ & 
-- ( (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (!\inst2|auto_generated|l3_w11_n0_mux_dataout~3_combout\ & (!\inst2|auto_generated|l3_w10_n0_mux_dataout~2_combout\))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & 
-- (((!\DATA1[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110000000100011111000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w11_n0_mux_dataout~3_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w10_n0_mux_dataout~2_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datad => \ALT_INV_DATA1[10]~input_o\,
	dataf => \ALT_INV_DATA1[11]~input_o\,
	combout => \inst34~10_combout\);

-- Location: LABCELL_X37_Y3_N27
\inst34~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~12_combout\ = ( \inst2|auto_generated|l3_w7_n0_mux_dataout~3_combout\ & ( (!\DATA1[6]~input_o\ & (!\DATA1[7]~input_o\ & \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\)) ) ) # ( !\inst2|auto_generated|l3_w7_n0_mux_dataout~3_combout\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (((!\inst2|auto_generated|l3_w6_n0_mux_dataout~4_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (!\DATA1[6]~input_o\ & (!\DATA1[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010001000111100001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[6]~input_o\,
	datab => \ALT_INV_DATA1[7]~input_o\,
	datac => \inst2|auto_generated|ALT_INV_l3_w6_n0_mux_dataout~4_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w7_n0_mux_dataout~3_combout\,
	combout => \inst34~12_combout\);

-- Location: LABCELL_X37_Y3_N54
\inst34~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~14_combout\ = ( \inst34~12_combout\ & ( !\inst2|auto_generated|l3_w3_n0_mux_dataout~5_combout\ & ( (\inst34~11_combout\ & (\inst34~13_combout\ & (\inst34~10_combout\ & !\inst2|auto_generated|l3_w2_n0_mux_dataout~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst34~11_combout\,
	datab => \ALT_INV_inst34~13_combout\,
	datac => \ALT_INV_inst34~10_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w2_n0_mux_dataout~4_combout\,
	datae => \ALT_INV_inst34~12_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w3_n0_mux_dataout~5_combout\,
	combout => \inst34~14_combout\);

-- Location: LABCELL_X35_Y1_N18
\inst34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~0_combout\ = ( !\inst2|auto_generated|l3_w24_n0_mux_dataout~3_combout\ & ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~6_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w24_n0_mux_dataout~3_combout\,
	combout => \inst34~0_combout\);

-- Location: LABCELL_X31_Y1_N54
\inst34~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~15_combout\ = ( !\inst2|auto_generated|l3_w1_n0_mux_dataout~5_combout\ & ( (!\inst2|auto_generated|l3_w1_n0_mux_dataout~6_combout\ & (!\inst2|auto_generated|l3_w0_n0_mux_dataout~4_combout\ & 
-- ((!\inst2|auto_generated|l3_w0_n0_mux_dataout~2_combout\) # (!\DATA1[0]~input_o\)))) # (\inst2|auto_generated|l3_w1_n0_mux_dataout~6_combout\ & (((!\DATA1[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110110000000110111011000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~6_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~4_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w0_n0_mux_dataout~2_combout\,
	datad => \ALT_INV_DATA1[0]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w1_n0_mux_dataout~5_combout\,
	combout => \inst34~15_combout\);

-- Location: LABCELL_X42_Y2_N51
\inst34~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~8_combout\ = ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( \DATA1[12]~input_o\ & ( (!\inst2|auto_generated|l3_w13_n0_mux_dataout~2_combout\ & !\inst2|auto_generated|l3_w12_n0_mux_dataout~2_combout\) ) ) ) # ( 
-- \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( !\DATA1[12]~input_o\ & ( !\DATA1[13]~input_o\ ) ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( !\DATA1[12]~input_o\ & ( 
-- (!\inst2|auto_generated|l3_w13_n0_mux_dataout~2_combout\ & !\inst2|auto_generated|l3_w12_n0_mux_dataout~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000101010101010101011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[13]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w13_n0_mux_dataout~2_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w12_n0_mux_dataout~2_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst34~8_combout\);

-- Location: LABCELL_X40_Y2_N3
\inst34~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~6_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( (!\DATA1[16]~input_o\ & !\DATA1[17]~input_o\) ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w17_n0_mux_dataout~2_combout\ & 
-- !\inst2|auto_generated|l3_w16_n0_mux_dataout~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w17_n0_mux_dataout~2_combout\,
	datab => \inst2|auto_generated|ALT_INV_l3_w16_n0_mux_dataout~3_combout\,
	datac => \ALT_INV_DATA1[16]~input_o\,
	datad => \ALT_INV_DATA1[17]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	combout => \inst34~6_combout\);

-- Location: MLABCELL_X39_Y2_N15
\inst34~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~4_combout\ = ( \DATA1[21]~input_o\ & ( (!\inst2|auto_generated|l3_w20_n0_mux_dataout~2_combout\ & (!\inst2|auto_generated|l3_w21_n0_mux_dataout~3_combout\ & !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\)) ) ) # ( !\DATA1[21]~input_o\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (((!\inst2|auto_generated|l3_w20_n0_mux_dataout~2_combout\ & !\inst2|auto_generated|l3_w21_n0_mux_dataout~3_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & 
-- (!\DATA1[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010101010110000001010101011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[20]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w20_n0_mux_dataout~2_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w21_n0_mux_dataout~3_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst34~4_combout\);

-- Location: LABCELL_X42_Y2_N15
\inst34~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~3_combout\ = ( \DATA1[22]~input_o\ & ( \DATA1[23]~input_o\ & ( (!\inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\ & (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & !\inst2|auto_generated|l3_w22_n0_mux_dataout~2_combout\)) ) ) ) # 
-- ( !\DATA1[22]~input_o\ & ( \DATA1[23]~input_o\ & ( (!\inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\ & (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & !\inst2|auto_generated|l3_w22_n0_mux_dataout~2_combout\)) ) ) ) # ( 
-- \DATA1[22]~input_o\ & ( !\DATA1[23]~input_o\ & ( (!\inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\ & (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & !\inst2|auto_generated|l3_w22_n0_mux_dataout~2_combout\)) ) ) ) # ( !\DATA1[22]~input_o\ 
-- & ( !\DATA1[23]~input_o\ & ( ((!\inst2|auto_generated|l3_w23_n0_mux_dataout~3_combout\ & !\inst2|auto_generated|l3_w22_n0_mux_dataout~2_combout\)) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001111101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auto_generated|ALT_INV_l3_w23_n0_mux_dataout~3_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datad => \inst2|auto_generated|ALT_INV_l3_w22_n0_mux_dataout~2_combout\,
	datae => \ALT_INV_DATA1[22]~input_o\,
	dataf => \ALT_INV_DATA1[23]~input_o\,
	combout => \inst34~3_combout\);

-- Location: LABCELL_X42_Y2_N54
\inst34~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~7_combout\ = ( \inst2|auto_generated|l3_w14_n0_mux_dataout~3_combout\ & ( (!\DATA1[15]~input_o\ & (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & !\DATA1[14]~input_o\)) ) ) # ( !\inst2|auto_generated|l3_w14_n0_mux_dataout~3_combout\ & ( 
-- (!\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (((!\inst2|auto_generated|l3_w15_n0_mux_dataout~4_combout\)))) # (\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & (!\DATA1[15]~input_o\ & ((!\DATA1[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001011000000111000101100000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[15]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	datac => \inst2|auto_generated|ALT_INV_l3_w15_n0_mux_dataout~4_combout\,
	datad => \ALT_INV_DATA1[14]~input_o\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w14_n0_mux_dataout~3_combout\,
	combout => \inst34~7_combout\);

-- Location: LABCELL_X40_Y2_N27
\inst34~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~5_combout\ = ( \inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( (!\DATA1[18]~input_o\ & !\DATA1[19]~input_o\) ) ) # ( !\inst2|auto_generated|l3_w25_n0_mux_dataout~1_combout\ & ( (!\inst2|auto_generated|l3_w19_n0_mux_dataout~3_combout\ & 
-- !\inst2|auto_generated|l3_w18_n0_mux_dataout~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[18]~input_o\,
	datab => \inst2|auto_generated|ALT_INV_l3_w19_n0_mux_dataout~3_combout\,
	datac => \ALT_INV_DATA1[19]~input_o\,
	datad => \inst2|auto_generated|ALT_INV_l3_w18_n0_mux_dataout~2_combout\,
	dataf => \inst2|auto_generated|ALT_INV_l3_w25_n0_mux_dataout~1_combout\,
	combout => \inst34~5_combout\);

-- Location: LABCELL_X42_Y2_N24
\inst34~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~9_combout\ = ( \inst34~7_combout\ & ( \inst34~5_combout\ & ( (\inst34~8_combout\ & (\inst34~6_combout\ & (\inst34~4_combout\ & \inst34~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst34~8_combout\,
	datab => \ALT_INV_inst34~6_combout\,
	datac => \ALT_INV_inst34~4_combout\,
	datad => \ALT_INV_inst34~3_combout\,
	datae => \ALT_INV_inst34~7_combout\,
	dataf => \ALT_INV_inst34~5_combout\,
	combout => \inst34~9_combout\);

-- Location: LABCELL_X35_Y1_N24
inst34 : cyclonev_lcell_comb
-- Equation(s):
-- \inst34~combout\ = ( \inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\ & ( \inst34~9_combout\ ) ) # ( !\inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\ & ( \inst34~9_combout\ & ( (!\inst34~2_combout\) # ((!\inst34~14_combout\) # 
-- ((!\inst34~0_combout\) # (!\inst34~15_combout\))) ) ) ) # ( \inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\ & ( !\inst34~9_combout\ ) ) # ( !\inst2|auto_generated|l3_w31_n0_mux_dataout~5_combout\ & ( !\inst34~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst34~2_combout\,
	datab => \ALT_INV_inst34~14_combout\,
	datac => \ALT_INV_inst34~0_combout\,
	datad => \ALT_INV_inst34~15_combout\,
	datae => \inst2|auto_generated|ALT_INV_l3_w31_n0_mux_dataout~5_combout\,
	dataf => \ALT_INV_inst34~9_combout\,
	combout => \inst34~combout\);

-- Location: LABCELL_X37_Y28_N0
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


