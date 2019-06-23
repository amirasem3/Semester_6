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
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "06/18/2019 14:43:21"

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

ENTITY 	PC IS
    PORT (
	PC : OUT std_logic_vector(31 DOWNTO 0);
	BranchOffset : IN std_logic_vector(15 DOWNTO 0);
	JumpAdderess : IN std_logic_vector(25 DOWNTO 0);
	Jump : IN std_logic;
	Branch : IN std_logic;
	Reset : IN std_logic;
	CLK : IN std_logic
	);
END PC;

-- Design Ports Information
-- PC[31]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[30]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[29]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[28]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[27]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[26]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[25]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[24]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[23]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[22]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[21]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[20]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[19]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[18]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[17]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[16]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[13]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Branch	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jump	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[15]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[14]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[13]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[12]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[11]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[10]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[25]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[24]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[23]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[22]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[20]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[19]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[18]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[17]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[16]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[15]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[14]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[13]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[11]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[10]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[9]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[8]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BranchOffset : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_JumpAdderess : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_Jump : std_logic;
SIGNAL ww_Branch : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Jump~input_o\ : std_logic;
SIGNAL \BranchOffset[13]~input_o\ : std_logic;
SIGNAL \BranchOffset[14]~input_o\ : std_logic;
SIGNAL \BranchOffset[11]~input_o\ : std_logic;
SIGNAL \BranchOffset[15]~input_o\ : std_logic;
SIGNAL \BranchOffset[12]~input_o\ : std_logic;
SIGNAL \BranchOffset[4]~input_o\ : std_logic;
SIGNAL \BranchOffset[1]~input_o\ : std_logic;
SIGNAL \BranchOffset[5]~input_o\ : std_logic;
SIGNAL \BranchOffset[2]~input_o\ : std_logic;
SIGNAL \BranchOffset[0]~input_o\ : std_logic;
SIGNAL \BranchOffset[3]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst1|Bit3|inst|And1~0_combout\ : std_logic;
SIGNAL \BranchOffset[8]~input_o\ : std_logic;
SIGNAL \BranchOffset[6]~input_o\ : std_logic;
SIGNAL \BranchOffset[9]~input_o\ : std_logic;
SIGNAL \BranchOffset[7]~input_o\ : std_logic;
SIGNAL \BranchOffset[10]~input_o\ : std_logic;
SIGNAL \inst5|inst2|inst|Bit0|inst|And1~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Branch~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w28_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w30_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[25]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w27_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[24]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w26_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[23]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w25_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[22]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w24_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[21]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w23_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[20]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w22_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \JumpAdderess[19]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w21_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[18]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w20_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[17]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w19_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[16]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w18_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ : std_logic;
SIGNAL \JumpAdderess[15]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w17_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \JumpAdderess[14]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w16_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[13]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w15_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \JumpAdderess[12]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[11]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|Bit0|inst|And1~0_combout\ : std_logic;
SIGNAL \JumpAdderess[10]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[9]~input_o\ : std_logic;
SIGNAL \inst5|inst2|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[8]~input_o\ : std_logic;
SIGNAL \inst5|inst2|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[7]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[6]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst3|inst|Bit2|inst|And1~0_combout\ : std_logic;
SIGNAL \JumpAdderess[5]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[4]~input_o\ : std_logic;
SIGNAL \inst5|inst3|inst|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst3|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \JumpAdderess[3]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[2]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[1]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \JumpAdderess[0]~input_o\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|l1_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchOffset[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Jump~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Branch~input_o\ : std_logic;
SIGNAL \inst5|inst3|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst3|inst|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst3|inst|Bit2|inst|ALT_INV_And1~0_combout\ : std_logic;
SIGNAL \inst5|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst1|inst|Bit0|inst|ALT_INV_And1~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\ : std_logic;
SIGNAL \inst5|inst|inst1|Bit3|inst|ALT_INV_And1~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[8]~input_o\ : std_logic;

BEGIN

PC <= ww_PC;
ww_BranchOffset <= BranchOffset;
ww_JumpAdderess <= JumpAdderess;
ww_Jump <= Jump;
ww_Branch <= Branch;
ww_Reset <= Reset;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_JumpAdderess[9]~input_o\ <= NOT \JumpAdderess[9]~input_o\;
\ALT_INV_JumpAdderess[10]~input_o\ <= NOT \JumpAdderess[10]~input_o\;
\ALT_INV_JumpAdderess[11]~input_o\ <= NOT \JumpAdderess[11]~input_o\;
\ALT_INV_JumpAdderess[12]~input_o\ <= NOT \JumpAdderess[12]~input_o\;
\ALT_INV_JumpAdderess[13]~input_o\ <= NOT \JumpAdderess[13]~input_o\;
\ALT_INV_JumpAdderess[14]~input_o\ <= NOT \JumpAdderess[14]~input_o\;
\ALT_INV_JumpAdderess[15]~input_o\ <= NOT \JumpAdderess[15]~input_o\;
\ALT_INV_JumpAdderess[16]~input_o\ <= NOT \JumpAdderess[16]~input_o\;
\ALT_INV_JumpAdderess[17]~input_o\ <= NOT \JumpAdderess[17]~input_o\;
\ALT_INV_JumpAdderess[18]~input_o\ <= NOT \JumpAdderess[18]~input_o\;
\ALT_INV_JumpAdderess[19]~input_o\ <= NOT \JumpAdderess[19]~input_o\;
\ALT_INV_JumpAdderess[20]~input_o\ <= NOT \JumpAdderess[20]~input_o\;
\ALT_INV_JumpAdderess[21]~input_o\ <= NOT \JumpAdderess[21]~input_o\;
\ALT_INV_JumpAdderess[22]~input_o\ <= NOT \JumpAdderess[22]~input_o\;
\ALT_INV_JumpAdderess[23]~input_o\ <= NOT \JumpAdderess[23]~input_o\;
\ALT_INV_JumpAdderess[24]~input_o\ <= NOT \JumpAdderess[24]~input_o\;
\ALT_INV_JumpAdderess[25]~input_o\ <= NOT \JumpAdderess[25]~input_o\;
\ALT_INV_BranchOffset[0]~input_o\ <= NOT \BranchOffset[0]~input_o\;
\ALT_INV_BranchOffset[1]~input_o\ <= NOT \BranchOffset[1]~input_o\;
\ALT_INV_BranchOffset[2]~input_o\ <= NOT \BranchOffset[2]~input_o\;
\ALT_INV_BranchOffset[3]~input_o\ <= NOT \BranchOffset[3]~input_o\;
\ALT_INV_BranchOffset[4]~input_o\ <= NOT \BranchOffset[4]~input_o\;
\ALT_INV_BranchOffset[5]~input_o\ <= NOT \BranchOffset[5]~input_o\;
\ALT_INV_BranchOffset[6]~input_o\ <= NOT \BranchOffset[6]~input_o\;
\ALT_INV_BranchOffset[7]~input_o\ <= NOT \BranchOffset[7]~input_o\;
\ALT_INV_BranchOffset[8]~input_o\ <= NOT \BranchOffset[8]~input_o\;
\ALT_INV_BranchOffset[9]~input_o\ <= NOT \BranchOffset[9]~input_o\;
\ALT_INV_BranchOffset[10]~input_o\ <= NOT \BranchOffset[10]~input_o\;
\ALT_INV_BranchOffset[11]~input_o\ <= NOT \BranchOffset[11]~input_o\;
\ALT_INV_BranchOffset[12]~input_o\ <= NOT \BranchOffset[12]~input_o\;
\ALT_INV_BranchOffset[13]~input_o\ <= NOT \BranchOffset[13]~input_o\;
\ALT_INV_BranchOffset[14]~input_o\ <= NOT \BranchOffset[14]~input_o\;
\ALT_INV_BranchOffset[15]~input_o\ <= NOT \BranchOffset[15]~input_o\;
\ALT_INV_Jump~input_o\ <= NOT \Jump~input_o\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\ALT_INV_Branch~input_o\ <= NOT \Branch~input_o\;
\inst5|inst3|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst3|inst|Bit1|inst|X1~combout\;
\inst5|inst3|inst|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst3|inst|Bit2|inst|X1~combout\;
\inst5|inst3|inst|Bit2|inst|ALT_INV_And1~0_combout\ <= NOT \inst5|inst3|inst|Bit2|inst|And1~0_combout\;
\inst5|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst2|inst1|Bit2|inst|X1~combout\;
\inst5|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst2|inst1|Bit3|inst|X1~combout\;
\inst5|inst1|inst|Bit0|inst|ALT_INV_And1~0_combout\ <= NOT \inst5|inst1|inst|Bit0|inst|And1~0_combout\;
\inst1|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\ <= NOT \inst1|auto_generated|l1_w15_n0_mux_dataout~0_combout\;
\inst5|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst1|inst1|Bit0|inst|X1~combout\;
\inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\ <= NOT \inst5|inst1|inst1|Bit2|inst|And1~0_combout\;
\inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\ <= NOT \inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\;
\inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\ <= NOT \inst5|inst2|inst|Bit0|inst|And1~0_combout\;
\inst5|inst|inst1|Bit3|inst|ALT_INV_And1~0_combout\ <= NOT \inst5|inst|inst1|Bit3|inst|And1~0_combout\;
\inst1|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\ALT_INV_JumpAdderess[0]~input_o\ <= NOT \JumpAdderess[0]~input_o\;
\ALT_INV_JumpAdderess[1]~input_o\ <= NOT \JumpAdderess[1]~input_o\;
\ALT_INV_JumpAdderess[2]~input_o\ <= NOT \JumpAdderess[2]~input_o\;
\ALT_INV_JumpAdderess[3]~input_o\ <= NOT \JumpAdderess[3]~input_o\;
\ALT_INV_JumpAdderess[4]~input_o\ <= NOT \JumpAdderess[4]~input_o\;
\ALT_INV_JumpAdderess[5]~input_o\ <= NOT \JumpAdderess[5]~input_o\;
\ALT_INV_JumpAdderess[6]~input_o\ <= NOT \JumpAdderess[6]~input_o\;
\ALT_INV_JumpAdderess[7]~input_o\ <= NOT \JumpAdderess[7]~input_o\;
\ALT_INV_JumpAdderess[8]~input_o\ <= NOT \JumpAdderess[8]~input_o\;

-- Location: IOOBUF_X2_Y0_N59
\PC[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w28_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(31));

-- Location: IOOBUF_X8_Y0_N19
\PC[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w30_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(30));

-- Location: IOOBUF_X2_Y0_N42
\PC[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w28_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(29));

-- Location: IOOBUF_X4_Y0_N19
\PC[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w28_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(28));

-- Location: IOOBUF_X6_Y0_N53
\PC[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w27_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(27));

-- Location: IOOBUF_X26_Y0_N59
\PC[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w26_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(26));

-- Location: IOOBUF_X34_Y0_N42
\PC[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w25_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(25));

-- Location: IOOBUF_X4_Y0_N53
\PC[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w24_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(24));

-- Location: IOOBUF_X40_Y0_N19
\PC[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w23_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(23));

-- Location: IOOBUF_X34_Y0_N93
\PC[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w22_n0_mux_dataout~1_combout\,
	devoe => ww_devoe,
	o => ww_PC(22));

-- Location: IOOBUF_X56_Y0_N2
\PC[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w21_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(21));

-- Location: IOOBUF_X30_Y0_N53
\PC[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w20_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(20));

-- Location: IOOBUF_X36_Y0_N2
\PC[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w19_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(19));

-- Location: IOOBUF_X60_Y0_N53
\PC[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w18_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(18));

-- Location: IOOBUF_X28_Y0_N19
\PC[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w17_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(17));

-- Location: IOOBUF_X30_Y0_N36
\PC[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w16_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(16));

-- Location: IOOBUF_X8_Y0_N2
\PC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w15_n0_mux_dataout~1_combout\,
	devoe => ww_devoe,
	o => ww_PC(15));

-- Location: IOOBUF_X6_Y0_N2
\PC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w14_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(14));

-- Location: IOOBUF_X6_Y0_N36
\PC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w13_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(13));

-- Location: IOOBUF_X40_Y0_N2
\PC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w12_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(12));

-- Location: IOOBUF_X38_Y0_N36
\PC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w11_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(11));

-- Location: IOOBUF_X50_Y0_N42
\PC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w10_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(10));

-- Location: IOOBUF_X34_Y0_N59
\PC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w9_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(9));

-- Location: IOOBUF_X52_Y0_N19
\PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w8_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(8));

-- Location: IOOBUF_X60_Y0_N2
\PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w7_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(7));

-- Location: IOOBUF_X62_Y0_N36
\PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w6_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(6));

-- Location: IOOBUF_X54_Y0_N36
\PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w5_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(5));

-- Location: IOOBUF_X62_Y0_N53
\PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w4_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(4));

-- Location: IOOBUF_X54_Y0_N2
\PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(3));

-- Location: IOOBUF_X60_Y0_N36
\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X2_Y0_N93
\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w1_n0_mux_dataout~1_combout\,
	devoe => ww_devoe,
	o => ww_PC(1));

-- Location: IOOBUF_X2_Y0_N76
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|l1_w1_n0_mux_dataout~1_combout\,
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOIBUF_X50_Y0_N92
\Jump~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Jump,
	o => \Jump~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\BranchOffset[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(13),
	o => \BranchOffset[13]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\BranchOffset[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(14),
	o => \BranchOffset[14]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\BranchOffset[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(11),
	o => \BranchOffset[11]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\BranchOffset[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(15),
	o => \BranchOffset[15]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\BranchOffset[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(12),
	o => \BranchOffset[12]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\BranchOffset[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(4),
	o => \BranchOffset[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\BranchOffset[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(1),
	o => \BranchOffset[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\BranchOffset[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(5),
	o => \BranchOffset[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\BranchOffset[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(2),
	o => \BranchOffset[2]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\BranchOffset[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(0),
	o => \BranchOffset[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\BranchOffset[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(3),
	o => \BranchOffset[3]~input_o\);

-- Location: LABCELL_X57_Y1_N6
\inst5|inst|inst1|Bit3|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|Bit3|inst|And1~0_combout\ = ( \BranchOffset[0]~input_o\ & ( \BranchOffset[3]~input_o\ & ( (\BranchOffset[4]~input_o\ & (\BranchOffset[1]~input_o\ & (\BranchOffset[5]~input_o\ & \BranchOffset[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[4]~input_o\,
	datab => \ALT_INV_BranchOffset[1]~input_o\,
	datac => \ALT_INV_BranchOffset[5]~input_o\,
	datad => \ALT_INV_BranchOffset[2]~input_o\,
	datae => \ALT_INV_BranchOffset[0]~input_o\,
	dataf => \ALT_INV_BranchOffset[3]~input_o\,
	combout => \inst5|inst|inst1|Bit3|inst|And1~0_combout\);

-- Location: IOIBUF_X38_Y0_N18
\BranchOffset[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(8),
	o => \BranchOffset[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\BranchOffset[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(6),
	o => \BranchOffset[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\BranchOffset[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(9),
	o => \BranchOffset[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\BranchOffset[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(7),
	o => \BranchOffset[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\BranchOffset[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(10),
	o => \BranchOffset[10]~input_o\);

-- Location: LABCELL_X35_Y1_N36
\inst5|inst2|inst|Bit0|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst|Bit0|inst|And1~0_combout\ = ( \BranchOffset[7]~input_o\ & ( \BranchOffset[10]~input_o\ & ( (\inst5|inst|inst1|Bit3|inst|And1~0_combout\ & (\BranchOffset[8]~input_o\ & (\BranchOffset[6]~input_o\ & \BranchOffset[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|Bit3|inst|ALT_INV_And1~0_combout\,
	datab => \ALT_INV_BranchOffset[8]~input_o\,
	datac => \ALT_INV_BranchOffset[6]~input_o\,
	datad => \ALT_INV_BranchOffset[9]~input_o\,
	datae => \ALT_INV_BranchOffset[7]~input_o\,
	dataf => \ALT_INV_BranchOffset[10]~input_o\,
	combout => \inst5|inst2|inst|Bit0|inst|And1~0_combout\);

-- Location: MLABCELL_X25_Y1_N42
\inst1|auto_generated|l1_w22_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ = ( \BranchOffset[12]~input_o\ & ( \inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( (\BranchOffset[15]~input_o\ & ((!\BranchOffset[13]~input_o\) # ((!\BranchOffset[14]~input_o\) # 
-- (!\BranchOffset[11]~input_o\)))) ) ) ) # ( !\BranchOffset[12]~input_o\ & ( \inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( \BranchOffset[15]~input_o\ ) ) ) # ( \BranchOffset[12]~input_o\ & ( !\inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( 
-- \BranchOffset[15]~input_o\ ) ) ) # ( !\BranchOffset[12]~input_o\ & ( !\inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( \BranchOffset[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[13]~input_o\,
	datab => \ALT_INV_BranchOffset[14]~input_o\,
	datac => \ALT_INV_BranchOffset[11]~input_o\,
	datad => \ALT_INV_BranchOffset[15]~input_o\,
	datae => \ALT_INV_BranchOffset[12]~input_o\,
	dataf => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	combout => \inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X52_Y0_N52
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\Branch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Branch,
	o => \Branch~input_o\);

-- Location: MLABCELL_X25_Y1_N36
\inst1|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = (\Reset~input_o\ & \Branch~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Reset~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	combout => \inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X25_Y1_N51
\inst1|auto_generated|l1_w28_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w28_n0_mux_dataout~0_combout\ = (\inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\) # (\Jump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datac => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	datad => \inst1|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|auto_generated|l1_w28_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X25_Y1_N57
\inst1|auto_generated|l1_w30_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w30_n0_mux_dataout~0_combout\ = ( \inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( (\Reset~input_o\ & ((\Branch~input_o\) # (\Jump~input_o\))) ) ) # ( !\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( 
-- (\Jump~input_o\ & \Reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_Reset~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	dataf => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	combout => \inst1|auto_generated|l1_w30_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X8_Y0_N52
\JumpAdderess[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(25),
	o => \JumpAdderess[25]~input_o\);

-- Location: MLABCELL_X25_Y1_N0
\inst1|auto_generated|l1_w27_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w27_n0_mux_dataout~0_combout\ = ( \inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( (\Reset~input_o\ & (((\Jump~input_o\ & \JumpAdderess[25]~input_o\)) # (\Branch~input_o\))) ) ) # ( 
-- !\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( (\Reset~input_o\ & (\Jump~input_o\ & ((\JumpAdderess[25]~input_o\) # (\Branch~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001100010001000100110001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \ALT_INV_JumpAdderess[25]~input_o\,
	dataf => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	combout => \inst1|auto_generated|l1_w27_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\JumpAdderess[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(24),
	o => \JumpAdderess[24]~input_o\);

-- Location: MLABCELL_X25_Y1_N3
\inst1|auto_generated|l1_w26_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w26_n0_mux_dataout~0_combout\ = ( \inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( (\Reset~input_o\ & (((\JumpAdderess[24]~input_o\ & \Jump~input_o\)) # (\Branch~input_o\))) ) ) # ( 
-- !\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( (\Reset~input_o\ & (\Jump~input_o\ & ((\JumpAdderess[24]~input_o\) # (\Branch~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100010001000100110001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \ALT_INV_JumpAdderess[24]~input_o\,
	datad => \ALT_INV_Jump~input_o\,
	dataf => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	combout => \inst1|auto_generated|l1_w26_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X50_Y0_N75
\JumpAdderess[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(23),
	o => \JumpAdderess[23]~input_o\);

-- Location: LABCELL_X35_Y1_N42
\inst1|auto_generated|l1_w25_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w25_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( (\Reset~input_o\ & ((\JumpAdderess[23]~input_o\) # (\Branch~input_o\))) ) ) # ( !\Jump~input_o\ & ( (\Branch~input_o\ & (\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & 
-- \Reset~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_JumpAdderess[23]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst1|auto_generated|l1_w25_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X32_Y0_N35
\JumpAdderess[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(22),
	o => \JumpAdderess[22]~input_o\);

-- Location: LABCELL_X35_Y1_N21
\inst1|auto_generated|l1_w24_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w24_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( (\Reset~input_o\ & ((\JumpAdderess[22]~input_o\) # (\Branch~input_o\))) ) ) # ( !\Jump~input_o\ & ( (\Branch~input_o\ & (\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & 
-- \Reset~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_JumpAdderess[22]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst1|auto_generated|l1_w24_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X40_Y0_N35
\JumpAdderess[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(21),
	o => \JumpAdderess[21]~input_o\);

-- Location: LABCELL_X35_Y1_N18
\inst1|auto_generated|l1_w23_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w23_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( (\Reset~input_o\ & ((\JumpAdderess[21]~input_o\) # (\Branch~input_o\))) ) ) # ( !\Jump~input_o\ & ( (\Branch~input_o\ & (\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & 
-- \Reset~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_JumpAdderess[21]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst1|auto_generated|l1_w23_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X28_Y0_N52
\JumpAdderess[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(20),
	o => \JumpAdderess[20]~input_o\);

-- Location: LABCELL_X35_Y1_N45
\inst1|auto_generated|l1_w22_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w22_n0_mux_dataout~1_combout\ = ( \Jump~input_o\ & ( (\Reset~input_o\ & ((\JumpAdderess[20]~input_o\) # (\Branch~input_o\))) ) ) # ( !\Jump~input_o\ & ( (\Branch~input_o\ & (\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & 
-- \Reset~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_JumpAdderess[20]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst1|auto_generated|l1_w22_n0_mux_dataout~1_combout\);

-- Location: IOIBUF_X60_Y0_N18
\JumpAdderess[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(19),
	o => \JumpAdderess[19]~input_o\);

-- Location: LABCELL_X57_Y1_N42
\inst1|auto_generated|l1_w21_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w21_n0_mux_dataout~0_combout\ = ( \Reset~input_o\ & ( \inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( ((\Jump~input_o\ & \JumpAdderess[19]~input_o\)) # (\Branch~input_o\) ) ) ) # ( \Reset~input_o\ & ( 
-- !\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( (\Jump~input_o\ & ((\Branch~input_o\) # (\JumpAdderess[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011001100000000000000000000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_JumpAdderess[19]~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \ALT_INV_Reset~input_o\,
	dataf => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	combout => \inst1|auto_generated|l1_w21_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X36_Y0_N52
\JumpAdderess[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(18),
	o => \JumpAdderess[18]~input_o\);

-- Location: LABCELL_X35_Y1_N54
\inst1|auto_generated|l1_w20_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w20_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( (\Reset~input_o\ & ((\JumpAdderess[18]~input_o\) # (\Branch~input_o\))) ) ) # ( !\Jump~input_o\ & ( (\Branch~input_o\ & (\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & 
-- \Reset~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_JumpAdderess[18]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst1|auto_generated|l1_w20_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X50_Y0_N58
\JumpAdderess[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(17),
	o => \JumpAdderess[17]~input_o\);

-- Location: LABCELL_X35_Y1_N57
\inst1|auto_generated|l1_w19_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w19_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( (\Reset~input_o\ & ((\JumpAdderess[17]~input_o\) # (\Branch~input_o\))) ) ) # ( !\Jump~input_o\ & ( (\Branch~input_o\ & (\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & 
-- \Reset~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_JumpAdderess[17]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst1|auto_generated|l1_w19_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X52_Y0_N35
\JumpAdderess[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(16),
	o => \JumpAdderess[16]~input_o\);

-- Location: LABCELL_X57_Y1_N51
\inst1|auto_generated|l1_w18_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w18_n0_mux_dataout~0_combout\ = ( \Reset~input_o\ & ( \inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( ((\JumpAdderess[16]~input_o\ & \Jump~input_o\)) # (\Branch~input_o\) ) ) ) # ( \Reset~input_o\ & ( 
-- !\inst1|auto_generated|l1_w22_n0_mux_dataout~0_combout\ & ( (\Jump~input_o\ & ((\Branch~input_o\) # (\JumpAdderess[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110000011100000000000000000011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAdderess[16]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datae => \ALT_INV_Reset~input_o\,
	dataf => \inst1|auto_generated|ALT_INV_l1_w22_n0_mux_dataout~0_combout\,
	combout => \inst1|auto_generated|l1_w18_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X25_Y1_N6
\inst5|inst1|inst1|Bit2|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ = ( \inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( (\BranchOffset[13]~input_o\ & (\BranchOffset[14]~input_o\ & (\BranchOffset[11]~input_o\ & \BranchOffset[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[13]~input_o\,
	datab => \ALT_INV_BranchOffset[14]~input_o\,
	datac => \ALT_INV_BranchOffset[11]~input_o\,
	datad => \ALT_INV_BranchOffset[12]~input_o\,
	dataf => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	combout => \inst5|inst1|inst1|Bit2|inst|And1~0_combout\);

-- Location: IOIBUF_X4_Y0_N1
\JumpAdderess[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(15),
	o => \JumpAdderess[15]~input_o\);

-- Location: MLABCELL_X25_Y1_N12
\inst1|auto_generated|l1_w17_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w17_n0_mux_dataout~0_combout\ = ( \Reset~input_o\ & ( \BranchOffset[15]~input_o\ & ( (!\Jump~input_o\ & (!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ((\Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\) # 
-- (\JumpAdderess[15]~input_o\)))) ) ) ) # ( \Reset~input_o\ & ( !\BranchOffset[15]~input_o\ & ( (!\Jump~input_o\ & (\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ((\Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\) # 
-- (\JumpAdderess[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010111011100000000000000000000010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datac => \ALT_INV_JumpAdderess[15]~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_BranchOffset[15]~input_o\,
	combout => \inst1|auto_generated|l1_w17_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X25_Y1_N9
\inst5|inst1|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst1|Bit0|inst|X1~combout\ = ( \inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( !\BranchOffset[14]~input_o\ $ (((!\BranchOffset[13]~input_o\) # ((!\BranchOffset[11]~input_o\) # (!\BranchOffset[12]~input_o\)))) ) ) # ( 
-- !\inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( \BranchOffset[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[13]~input_o\,
	datab => \ALT_INV_BranchOffset[14]~input_o\,
	datac => \ALT_INV_BranchOffset[11]~input_o\,
	datad => \ALT_INV_BranchOffset[12]~input_o\,
	dataf => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	combout => \inst5|inst1|inst1|Bit0|inst|X1~combout\);

-- Location: IOIBUF_X28_Y0_N35
\JumpAdderess[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(14),
	o => \JumpAdderess[14]~input_o\);

-- Location: MLABCELL_X25_Y1_N48
\inst1|auto_generated|l1_w16_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w16_n0_mux_dataout~0_combout\ = ( \Branch~input_o\ & ( (\Reset~input_o\ & ((\inst5|inst1|inst1|Bit0|inst|X1~combout\) # (\Jump~input_o\))) ) ) # ( !\Branch~input_o\ & ( (\Jump~input_o\ & (\JumpAdderess[14]~input_o\ & 
-- \Reset~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \inst5|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \ALT_INV_JumpAdderess[14]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_Branch~input_o\,
	combout => \inst1|auto_generated|l1_w16_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X30_Y0_N18
\JumpAdderess[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(13),
	o => \JumpAdderess[13]~input_o\);

-- Location: MLABCELL_X25_Y1_N39
\inst1|auto_generated|l1_w15_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w15_n0_mux_dataout~0_combout\ = (\Reset~input_o\ & (\Jump~input_o\ & ((\JumpAdderess[13]~input_o\) # (\Branch~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \ALT_INV_JumpAdderess[13]~input_o\,
	datad => \ALT_INV_Jump~input_o\,
	combout => \inst1|auto_generated|l1_w15_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X25_Y1_N18
\inst1|auto_generated|l1_w15_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w15_n0_mux_dataout~1_combout\ = ( \inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( (!\BranchOffset[13]~input_o\ $ (((!\BranchOffset[11]~input_o\) # 
-- (!\BranchOffset[12]~input_o\)))) # (\inst1|auto_generated|l1_w15_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( 
-- \inst1|auto_generated|l1_w15_n0_mux_dataout~0_combout\ ) ) ) # ( \inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( !\inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( (\BranchOffset[13]~input_o\) # 
-- (\inst1|auto_generated|l1_w15_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( !\inst5|inst2|inst|Bit0|inst|And1~0_combout\ & ( \inst1|auto_generated|l1_w15_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111100110011001100110011111101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[11]~input_o\,
	datab => \inst1|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_BranchOffset[13]~input_o\,
	datad => \ALT_INV_BranchOffset[12]~input_o\,
	datae => \inst1|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	combout => \inst1|auto_generated|l1_w15_n0_mux_dataout~1_combout\);

-- Location: IOIBUF_X6_Y0_N18
\JumpAdderess[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(12),
	o => \JumpAdderess[12]~input_o\);

-- Location: MLABCELL_X25_Y1_N30
\inst1|auto_generated|l1_w14_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w14_n0_mux_dataout~0_combout\ = ( !\Jump~input_o\ & ( (\Branch~input_o\ & (\Reset~input_o\ & (!\BranchOffset[12]~input_o\ $ (((!\inst5|inst2|inst|Bit0|inst|And1~0_combout\) # (!\BranchOffset[11]~input_o\)))))) ) ) # ( 
-- \Jump~input_o\ & ( ((\Reset~input_o\ & (((\JumpAdderess[12]~input_o\)) # (\Branch~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000011000000000011111100000000000100100000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[12]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \ALT_INV_BranchOffset[11]~input_o\,
	datag => \ALT_INV_BranchOffset[12]~input_o\,
	combout => \inst1|auto_generated|l1_w14_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\JumpAdderess[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(11),
	o => \JumpAdderess[11]~input_o\);

-- Location: MLABCELL_X25_Y1_N24
\inst1|auto_generated|l1_w13_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w13_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( \BranchOffset[11]~input_o\ & ( (\Reset~input_o\ & ((\Branch~input_o\) # (\JumpAdderess[11]~input_o\))) ) ) ) # ( !\Jump~input_o\ & ( \BranchOffset[11]~input_o\ & ( 
-- (\Branch~input_o\ & (!\inst5|inst2|inst|Bit0|inst|And1~0_combout\ & \Reset~input_o\)) ) ) ) # ( \Jump~input_o\ & ( !\BranchOffset[11]~input_o\ & ( (\Reset~input_o\ & ((\Branch~input_o\) # (\JumpAdderess[11]~input_o\))) ) ) ) # ( !\Jump~input_o\ & ( 
-- !\BranchOffset[11]~input_o\ & ( (\Branch~input_o\ & (\inst5|inst2|inst|Bit0|inst|And1~0_combout\ & \Reset~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000111011100000000001100000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAdderess[11]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	datad => \ALT_INV_Reset~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \ALT_INV_BranchOffset[11]~input_o\,
	combout => \inst1|auto_generated|l1_w13_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N33
\inst5|inst1|inst|Bit0|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Bit0|inst|And1~0_combout\ = ( \inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( (\BranchOffset[7]~input_o\ & (\BranchOffset[8]~input_o\ & (\BranchOffset[9]~input_o\ & \BranchOffset[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[7]~input_o\,
	datab => \ALT_INV_BranchOffset[8]~input_o\,
	datac => \ALT_INV_BranchOffset[9]~input_o\,
	datad => \ALT_INV_BranchOffset[6]~input_o\,
	dataf => \inst5|inst|inst1|Bit3|inst|ALT_INV_And1~0_combout\,
	combout => \inst5|inst1|inst|Bit0|inst|And1~0_combout\);

-- Location: IOIBUF_X36_Y0_N35
\JumpAdderess[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(10),
	o => \JumpAdderess[10]~input_o\);

-- Location: LABCELL_X35_Y1_N6
\inst1|auto_generated|l1_w12_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w12_n0_mux_dataout~0_combout\ = ( \JumpAdderess[10]~input_o\ & ( \Branch~input_o\ & ( (\Reset~input_o\ & ((!\inst5|inst1|inst|Bit0|inst|And1~0_combout\ $ (!\BranchOffset[10]~input_o\)) # (\Jump~input_o\))) ) ) ) # ( 
-- !\JumpAdderess[10]~input_o\ & ( \Branch~input_o\ & ( (\Reset~input_o\ & ((!\inst5|inst1|inst|Bit0|inst|And1~0_combout\ $ (!\BranchOffset[10]~input_o\)) # (\Jump~input_o\))) ) ) ) # ( \JumpAdderess[10]~input_o\ & ( !\Branch~input_o\ & ( (\Jump~input_o\ & 
-- \Reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000011110110000000001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_BranchOffset[10]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	datae => \ALT_INV_JumpAdderess[10]~input_o\,
	dataf => \ALT_INV_Branch~input_o\,
	combout => \inst1|auto_generated|l1_w12_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X36_Y0_N18
\JumpAdderess[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(9),
	o => \JumpAdderess[9]~input_o\);

-- Location: LABCELL_X35_Y1_N30
\inst5|inst2|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst1|Bit3|inst|X1~combout\ = ( \inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( !\BranchOffset[9]~input_o\ $ (((!\BranchOffset[7]~input_o\) # ((!\BranchOffset[8]~input_o\) # (!\BranchOffset[6]~input_o\)))) ) ) # ( 
-- !\inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( \BranchOffset[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[7]~input_o\,
	datab => \ALT_INV_BranchOffset[8]~input_o\,
	datac => \ALT_INV_BranchOffset[6]~input_o\,
	datad => \ALT_INV_BranchOffset[9]~input_o\,
	dataf => \inst5|inst|inst1|Bit3|inst|ALT_INV_And1~0_combout\,
	combout => \inst5|inst2|inst1|Bit3|inst|X1~combout\);

-- Location: LABCELL_X35_Y1_N12
\inst1|auto_generated|l1_w11_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w11_n0_mux_dataout~0_combout\ = ( \inst5|inst2|inst1|Bit3|inst|X1~combout\ & ( (\Reset~input_o\ & (((\JumpAdderess[9]~input_o\ & \Jump~input_o\)) # (\Branch~input_o\))) ) ) # ( !\inst5|inst2|inst1|Bit3|inst|X1~combout\ & ( 
-- (\Reset~input_o\ & (\Jump~input_o\ & ((\JumpAdderess[9]~input_o\) # (\Branch~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100010001000100110001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \ALT_INV_JumpAdderess[9]~input_o\,
	datad => \ALT_INV_Jump~input_o\,
	dataf => \inst5|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst1|auto_generated|l1_w11_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X32_Y0_N52
\JumpAdderess[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(8),
	o => \JumpAdderess[8]~input_o\);

-- Location: LABCELL_X35_Y1_N48
\inst5|inst2|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst1|Bit2|inst|X1~combout\ = ( \BranchOffset[6]~input_o\ & ( \inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( !\BranchOffset[8]~input_o\ $ (!\BranchOffset[7]~input_o\) ) ) ) # ( !\BranchOffset[6]~input_o\ & ( 
-- \inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( \BranchOffset[8]~input_o\ ) ) ) # ( \BranchOffset[6]~input_o\ & ( !\inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( \BranchOffset[8]~input_o\ ) ) ) # ( !\BranchOffset[6]~input_o\ & ( 
-- !\inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( \BranchOffset[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BranchOffset[8]~input_o\,
	datac => \ALT_INV_BranchOffset[7]~input_o\,
	datae => \ALT_INV_BranchOffset[6]~input_o\,
	dataf => \inst5|inst|inst1|Bit3|inst|ALT_INV_And1~0_combout\,
	combout => \inst5|inst2|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X35_Y1_N15
\inst1|auto_generated|l1_w10_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w10_n0_mux_dataout~0_combout\ = ( \inst5|inst2|inst1|Bit2|inst|X1~combout\ & ( (\Reset~input_o\ & (((\JumpAdderess[8]~input_o\ & \Jump~input_o\)) # (\Branch~input_o\))) ) ) # ( !\inst5|inst2|inst1|Bit2|inst|X1~combout\ & ( 
-- (\Reset~input_o\ & (\Jump~input_o\ & ((\JumpAdderess[8]~input_o\) # (\Branch~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100010001000100110001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \ALT_INV_JumpAdderess[8]~input_o\,
	datad => \ALT_INV_Jump~input_o\,
	dataf => \inst5|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst1|auto_generated|l1_w10_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X32_Y0_N18
\JumpAdderess[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(7),
	o => \JumpAdderess[7]~input_o\);

-- Location: LABCELL_X35_Y1_N0
\inst1|auto_generated|l1_w9_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w9_n0_mux_dataout~0_combout\ = ( !\Jump~input_o\ & ( (\Reset~input_o\ & (\Branch~input_o\ & (!\BranchOffset[7]~input_o\ $ (((!\inst5|inst|inst1|Bit3|inst|And1~0_combout\) # (!\BranchOffset[6]~input_o\)))))) ) ) # ( \Jump~input_o\ 
-- & ( ((\Reset~input_o\ & (((\Branch~input_o\)) # (\JumpAdderess[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000110000001100010001000100100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[7]~input_o\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \ALT_INV_JumpAdderess[7]~input_o\,
	datad => \ALT_INV_BranchOffset[6]~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \ALT_INV_Branch~input_o\,
	datag => \inst5|inst|inst1|Bit3|inst|ALT_INV_And1~0_combout\,
	combout => \inst1|auto_generated|l1_w9_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X38_Y0_N1
\JumpAdderess[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(6),
	o => \JumpAdderess[6]~input_o\);

-- Location: LABCELL_X35_Y1_N24
\inst1|auto_generated|l1_w8_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w8_n0_mux_dataout~0_combout\ = ( \BranchOffset[6]~input_o\ & ( \inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( (\Jump~input_o\ & (\Reset~input_o\ & ((\JumpAdderess[6]~input_o\) # (\Branch~input_o\)))) ) ) ) # ( 
-- !\BranchOffset[6]~input_o\ & ( \inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( (\Reset~input_o\ & (((\Jump~input_o\ & \JumpAdderess[6]~input_o\)) # (\Branch~input_o\))) ) ) ) # ( \BranchOffset[6]~input_o\ & ( !\inst5|inst|inst1|Bit3|inst|And1~0_combout\ & 
-- ( (\Reset~input_o\ & (((\Jump~input_o\ & \JumpAdderess[6]~input_o\)) # (\Branch~input_o\))) ) ) ) # ( !\BranchOffset[6]~input_o\ & ( !\inst5|inst|inst1|Bit3|inst|And1~0_combout\ & ( (\Jump~input_o\ & (\Reset~input_o\ & ((\JumpAdderess[6]~input_o\) # 
-- (\Branch~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000101011100000000010101110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Branch~input_o\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_JumpAdderess[6]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	datae => \ALT_INV_BranchOffset[6]~input_o\,
	dataf => \inst5|inst|inst1|Bit3|inst|ALT_INV_And1~0_combout\,
	combout => \inst1|auto_generated|l1_w8_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y1_N54
\inst5|inst3|inst|Bit2|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst|Bit2|inst|And1~0_combout\ = ( \BranchOffset[0]~input_o\ & ( \BranchOffset[3]~input_o\ & ( (\BranchOffset[1]~input_o\ & (\BranchOffset[4]~input_o\ & \BranchOffset[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BranchOffset[1]~input_o\,
	datac => \ALT_INV_BranchOffset[4]~input_o\,
	datad => \ALT_INV_BranchOffset[2]~input_o\,
	datae => \ALT_INV_BranchOffset[0]~input_o\,
	dataf => \ALT_INV_BranchOffset[3]~input_o\,
	combout => \inst5|inst3|inst|Bit2|inst|And1~0_combout\);

-- Location: IOIBUF_X62_Y0_N18
\JumpAdderess[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(5),
	o => \JumpAdderess[5]~input_o\);

-- Location: LABCELL_X57_Y1_N30
\inst1|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( \JumpAdderess[5]~input_o\ & ( \Reset~input_o\ ) ) ) # ( !\Jump~input_o\ & ( \JumpAdderess[5]~input_o\ & ( (\Branch~input_o\ & (\Reset~input_o\ & 
-- (!\inst5|inst3|inst|Bit2|inst|And1~0_combout\ $ (!\BranchOffset[5]~input_o\)))) ) ) ) # ( \Jump~input_o\ & ( !\JumpAdderess[5]~input_o\ & ( (\Branch~input_o\ & \Reset~input_o\) ) ) ) # ( !\Jump~input_o\ & ( !\JumpAdderess[5]~input_o\ & ( (\Branch~input_o\ 
-- & (\Reset~input_o\ & (!\inst5|inst3|inst|Bit2|inst|And1~0_combout\ $ (!\BranchOffset[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000011001100000000000100100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst|Bit2|inst|ALT_INV_And1~0_combout\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_BranchOffset[5]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \ALT_INV_JumpAdderess[5]~input_o\,
	combout => \inst1|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X54_Y0_N52
\JumpAdderess[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(4),
	o => \JumpAdderess[4]~input_o\);

-- Location: LABCELL_X57_Y1_N39
\inst5|inst3|inst|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst|Bit2|inst|X1~combout\ = ( \BranchOffset[0]~input_o\ & ( \BranchOffset[3]~input_o\ & ( !\BranchOffset[4]~input_o\ $ (((!\BranchOffset[2]~input_o\) # (!\BranchOffset[1]~input_o\))) ) ) ) # ( !\BranchOffset[0]~input_o\ & ( 
-- \BranchOffset[3]~input_o\ & ( \BranchOffset[4]~input_o\ ) ) ) # ( \BranchOffset[0]~input_o\ & ( !\BranchOffset[3]~input_o\ & ( \BranchOffset[4]~input_o\ ) ) ) # ( !\BranchOffset[0]~input_o\ & ( !\BranchOffset[3]~input_o\ & ( \BranchOffset[4]~input_o\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[4]~input_o\,
	datab => \ALT_INV_BranchOffset[2]~input_o\,
	datac => \ALT_INV_BranchOffset[1]~input_o\,
	datae => \ALT_INV_BranchOffset[0]~input_o\,
	dataf => \ALT_INV_BranchOffset[3]~input_o\,
	combout => \inst5|inst3|inst|Bit2|inst|X1~combout\);

-- Location: LABCELL_X57_Y1_N15
\inst1|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst5|inst3|inst|Bit2|inst|X1~combout\ & ( (\Reset~input_o\ & (((\Jump~input_o\ & \JumpAdderess[4]~input_o\)) # (\Branch~input_o\))) ) ) # ( !\inst5|inst3|inst|Bit2|inst|X1~combout\ & ( 
-- (\Jump~input_o\ & (\Reset~input_o\ & ((\JumpAdderess[4]~input_o\) # (\Branch~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000001101110000000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[4]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	dataf => \inst5|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst1|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y1_N18
\inst5|inst3|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst|Bit1|inst|X1~combout\ = ( \BranchOffset[3]~input_o\ & ( (!\BranchOffset[0]~input_o\) # ((!\BranchOffset[1]~input_o\) # (!\BranchOffset[2]~input_o\)) ) ) # ( !\BranchOffset[3]~input_o\ & ( (\BranchOffset[0]~input_o\ & 
-- (\BranchOffset[1]~input_o\ & \BranchOffset[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[0]~input_o\,
	datac => \ALT_INV_BranchOffset[1]~input_o\,
	datad => \ALT_INV_BranchOffset[2]~input_o\,
	dataf => \ALT_INV_BranchOffset[3]~input_o\,
	combout => \inst5|inst3|inst|Bit1|inst|X1~combout\);

-- Location: IOIBUF_X64_Y0_N52
\JumpAdderess[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(3),
	o => \JumpAdderess[3]~input_o\);

-- Location: LABCELL_X57_Y1_N12
\inst1|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \JumpAdderess[3]~input_o\ & ( (\Reset~input_o\ & (((\Branch~input_o\ & \inst5|inst3|inst|Bit1|inst|X1~combout\)) # (\Jump~input_o\))) ) ) # ( !\JumpAdderess[3]~input_o\ & ( (\Branch~input_o\ & 
-- (\Reset~input_o\ & ((\inst5|inst3|inst|Bit1|inst|X1~combout\) # (\Jump~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000010101110000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \inst5|inst3|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_JumpAdderess[3]~input_o\,
	combout => \inst1|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X58_Y0_N41
\JumpAdderess[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(2),
	o => \JumpAdderess[2]~input_o\);

-- Location: LABCELL_X57_Y1_N0
\inst1|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( !\Jump~input_o\ & ( (\Branch~input_o\ & (\Reset~input_o\ & (!\BranchOffset[2]~input_o\ $ (((!\BranchOffset[0]~input_o\) # (!\BranchOffset[1]~input_o\)))))) ) ) # ( \Jump~input_o\ & ( 
-- ((\Reset~input_o\ & (((\JumpAdderess[2]~input_o\)) # (\Branch~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000011000000000011111100000000000100100000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[0]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[2]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \ALT_INV_BranchOffset[1]~input_o\,
	datag => \ALT_INV_BranchOffset[2]~input_o\,
	combout => \inst1|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X58_Y0_N58
\JumpAdderess[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(1),
	o => \JumpAdderess[1]~input_o\);

-- Location: LABCELL_X57_Y1_N24
\inst1|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \Reset~input_o\ & ( \BranchOffset[1]~input_o\ & ( (!\Jump~input_o\ & (!\BranchOffset[0]~input_o\ & ((\Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\) # (\JumpAdderess[1]~input_o\)))) ) 
-- ) ) # ( \Reset~input_o\ & ( !\BranchOffset[1]~input_o\ & ( (!\Jump~input_o\ & (\BranchOffset[0]~input_o\ & ((\Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\) # (\JumpAdderess[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110111011100000000000000000000001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[0]~input_o\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_JumpAdderess[1]~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_BranchOffset[1]~input_o\,
	combout => \inst1|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X62_Y0_N1
\JumpAdderess[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(0),
	o => \JumpAdderess[0]~input_o\);

-- Location: LABCELL_X57_Y1_N21
\inst1|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \JumpAdderess[0]~input_o\ & ( ((!\Reset~input_o\) # ((!\BranchOffset[0]~input_o\ & \Branch~input_o\))) # (\Jump~input_o\) ) ) # ( !\JumpAdderess[0]~input_o\ & ( (!\Reset~input_o\) # 
-- ((\Branch~input_o\ & ((!\BranchOffset[0]~input_o\) # (\Jump~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111011111100001111101111110011111110111111001111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[0]~input_o\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_Reset~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	dataf => \ALT_INV_JumpAdderess[0]~input_o\,
	combout => \inst1|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X25_Y1_N54
\inst1|auto_generated|l1_w1_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|l1_w1_n0_mux_dataout~1_combout\ = (\Jump~input_o\ & \inst1|auto_generated|l1_w1_n0_mux_dataout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datac => \inst1|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|auto_generated|l1_w1_n0_mux_dataout~1_combout\);

-- Location: IOIBUF_X66_Y81_N58
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LABCELL_X70_Y42_N0
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


