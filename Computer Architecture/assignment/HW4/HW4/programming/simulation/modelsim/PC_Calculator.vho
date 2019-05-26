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

-- DATE "05/12/2019 21:23:44"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PC IS
    PORT (
	PC : OUT std_logic_vector(31 DOWNTO 0);
	CLK : IN std_logic;
	Reset : IN std_logic;
	BranchOffset : IN std_logic_vector(15 DOWNTO 0);
	JumpAdderess : IN std_logic_vector(25 DOWNTO 0);
	Jump : IN std_logic;
	Branch : IN std_logic
	);
END PC;

-- Design Ports Information
-- PC[31]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[30]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[29]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[28]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[27]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[26]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[25]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[24]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[23]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[22]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[21]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[20]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[19]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[18]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[17]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[16]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[13]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[9]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jump	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[15]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[14]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[13]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[12]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[11]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[10]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[9]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[8]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Branch	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[25]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[24]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[23]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[22]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[21]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[20]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[19]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[18]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[17]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[16]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[15]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[14]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[13]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[12]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[11]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[10]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[9]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAdderess[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_BranchOffset : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_JumpAdderess : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_Jump : std_logic;
SIGNAL ww_Branch : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Jump~input_o\ : std_logic;
SIGNAL \BranchOffset[12]~input_o\ : std_logic;
SIGNAL \BranchOffset[7]~input_o\ : std_logic;
SIGNAL \BranchOffset[2]~input_o\ : std_logic;
SIGNAL \BranchOffset[3]~input_o\ : std_logic;
SIGNAL \BranchOffset[1]~input_o\ : std_logic;
SIGNAL \BranchOffset[0]~input_o\ : std_logic;
SIGNAL \BranchOffset[5]~input_o\ : std_logic;
SIGNAL \BranchOffset[4]~input_o\ : std_logic;
SIGNAL \inst5|inst1|inst|Bit2|inst|And1~0_combout\ : std_logic;
SIGNAL \BranchOffset[6]~input_o\ : std_logic;
SIGNAL \BranchOffset[8]~input_o\ : std_logic;
SIGNAL \BranchOffset[10]~input_o\ : std_logic;
SIGNAL \BranchOffset[9]~input_o\ : std_logic;
SIGNAL \inst5|inst2|inst|Bit0|inst|And1~0_combout\ : std_logic;
SIGNAL \BranchOffset[13]~input_o\ : std_logic;
SIGNAL \BranchOffset[11]~input_o\ : std_logic;
SIGNAL \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ : std_logic;
SIGNAL \BranchOffset[15]~input_o\ : std_logic;
SIGNAL \BranchOffset[14]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[31]~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Branch~input_o\ : std_logic;
SIGNAL \inst6|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst9|inst1_1|O1[21]~1_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|inst5~feeder_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|inst5~q\ : std_logic;
SIGNAL \inst6|inst|inst|inst|inst6~feeder_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|inst6~q\ : std_logic;
SIGNAL \inst6|inst|inst|inst|inst7~feeder_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|inst7~q\ : std_logic;
SIGNAL \JumpAdderess[25]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[27]~2_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|inst~q\ : std_logic;
SIGNAL \JumpAdderess[24]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[26]~3_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|inst5~q\ : std_logic;
SIGNAL \JumpAdderess[23]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[25]~4_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|inst6~q\ : std_logic;
SIGNAL \JumpAdderess[22]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[24]~5_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|inst7~q\ : std_logic;
SIGNAL \JumpAdderess[21]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[23]~6_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \JumpAdderess[20]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[22]~7_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|inst5~q\ : std_logic;
SIGNAL \JumpAdderess[19]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[21]~8_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|inst6~q\ : std_logic;
SIGNAL \JumpAdderess[18]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[20]~9_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|inst7~q\ : std_logic;
SIGNAL \JumpAdderess[17]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[19]~10_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst1|inst~q\ : std_logic;
SIGNAL \JumpAdderess[16]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[18]~11_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst1|inst5~q\ : std_logic;
SIGNAL \JumpAdderess[15]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[17]~12_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst1|inst6~q\ : std_logic;
SIGNAL \JumpAdderess[14]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[16]~13_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst1|inst7~q\ : std_logic;
SIGNAL \JumpAdderess[13]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[15]~30_combout\ : std_logic;
SIGNAL \inst6|inst1|inst|inst|inst~q\ : std_logic;
SIGNAL \JumpAdderess[12]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[14]~14_combout\ : std_logic;
SIGNAL \inst6|inst1|inst|inst|inst5~q\ : std_logic;
SIGNAL \JumpAdderess[11]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[13]~15_combout\ : std_logic;
SIGNAL \inst6|inst1|inst|inst|inst6~q\ : std_logic;
SIGNAL \inst5|inst1|inst|Bit0|inst|And1~0_combout\ : std_logic;
SIGNAL \JumpAdderess[10]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[12]~16_combout\ : std_logic;
SIGNAL \inst6|inst1|inst|inst|inst7~q\ : std_logic;
SIGNAL \JumpAdderess[9]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[11]~17_combout\ : std_logic;
SIGNAL \inst6|inst1|inst|inst1|inst~q\ : std_logic;
SIGNAL \JumpAdderess[8]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[10]~26_combout\ : std_logic;
SIGNAL \inst6|inst1|inst|inst1|inst5~q\ : std_logic;
SIGNAL \JumpAdderess[7]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[9]~18_combout\ : std_logic;
SIGNAL \inst6|inst1|inst|inst1|inst6~q\ : std_logic;
SIGNAL \JumpAdderess[6]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[8]~19_combout\ : std_logic;
SIGNAL \inst6|inst1|inst|inst1|inst7~q\ : std_logic;
SIGNAL \inst5|inst1|inst|Bit2|inst|And1~1_combout\ : std_logic;
SIGNAL \JumpAdderess[5]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[7]~20_combout\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst|inst~q\ : std_logic;
SIGNAL \JumpAdderess[4]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[6]~21_combout\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst|inst5~q\ : std_logic;
SIGNAL \inst5|inst3|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \JumpAdderess[3]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[5]~22_combout\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst|inst6~q\ : std_logic;
SIGNAL \JumpAdderess[2]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[4]~23_combout\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst|inst7~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst|inst7~q\ : std_logic;
SIGNAL \JumpAdderess[1]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[3]~24_combout\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst1|inst~q\ : std_logic;
SIGNAL \JumpAdderess[0]~input_o\ : std_logic;
SIGNAL \inst9|inst1_1|O1[2]~25_combout\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst1|inst5~q\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst1|inst6~q\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst1|inst7~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst1|inst7~q\ : std_logic;
SIGNAL \inst9|inst1_1|A2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_JumpAdderess[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAdderess[8]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_Branch~input_o\ : std_logic;
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
SIGNAL \inst9|inst1_1|ALT_INV_A2\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst9|inst1_1|ALT_INV_O1[4]~23_combout\ : std_logic;
SIGNAL \inst5|inst3|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst1|inst|Bit2|inst|ALT_INV_And1~1_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|Bit0|inst|ALT_INV_And1~0_combout\ : std_logic;
SIGNAL \inst9|inst1_1|ALT_INV_O1[21]~1_combout\ : std_logic;
SIGNAL \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\ : std_logic;
SIGNAL \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|Bit2|inst|ALT_INV_And1~0_combout\ : std_logic;

BEGIN

PC <= ww_PC;
ww_CLK <= CLK;
ww_Reset <= Reset;
ww_BranchOffset <= BranchOffset;
ww_JumpAdderess <= JumpAdderess;
ww_Jump <= Jump;
ww_Branch <= Branch;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_JumpAdderess[0]~input_o\ <= NOT \JumpAdderess[0]~input_o\;
\ALT_INV_JumpAdderess[1]~input_o\ <= NOT \JumpAdderess[1]~input_o\;
\ALT_INV_JumpAdderess[2]~input_o\ <= NOT \JumpAdderess[2]~input_o\;
\ALT_INV_JumpAdderess[3]~input_o\ <= NOT \JumpAdderess[3]~input_o\;
\ALT_INV_JumpAdderess[4]~input_o\ <= NOT \JumpAdderess[4]~input_o\;
\ALT_INV_JumpAdderess[5]~input_o\ <= NOT \JumpAdderess[5]~input_o\;
\ALT_INV_JumpAdderess[6]~input_o\ <= NOT \JumpAdderess[6]~input_o\;
\ALT_INV_JumpAdderess[7]~input_o\ <= NOT \JumpAdderess[7]~input_o\;
\ALT_INV_JumpAdderess[8]~input_o\ <= NOT \JumpAdderess[8]~input_o\;
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
\ALT_INV_Branch~input_o\ <= NOT \Branch~input_o\;
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
\inst9|inst1_1|ALT_INV_A2\(1) <= NOT \inst9|inst1_1|A2\(1);
\inst9|inst1_1|ALT_INV_O1[4]~23_combout\ <= NOT \inst9|inst1_1|O1[4]~23_combout\;
\inst5|inst3|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst3|inst|Bit1|inst|X1~combout\;
\inst5|inst1|inst|Bit2|inst|ALT_INV_And1~1_combout\ <= NOT \inst5|inst1|inst|Bit2|inst|And1~1_combout\;
\inst5|inst1|inst|Bit0|inst|ALT_INV_And1~0_combout\ <= NOT \inst5|inst1|inst|Bit0|inst|And1~0_combout\;
\inst9|inst1_1|ALT_INV_O1[21]~1_combout\ <= NOT \inst9|inst1_1|O1[21]~1_combout\;
\inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\ <= NOT \inst5|inst1|inst1|Bit2|inst|And1~0_combout\;
\inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\ <= NOT \inst5|inst2|inst|Bit0|inst|And1~0_combout\;
\inst5|inst1|inst|Bit2|inst|ALT_INV_And1~0_combout\ <= NOT \inst5|inst1|inst|Bit2|inst|And1~0_combout\;

-- Location: IOOBUF_X70_Y0_N36
\PC[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst|inst|inst~q\,
	devoe => ww_devoe,
	o => ww_PC(31));

-- Location: IOOBUF_X89_Y6_N56
\PC[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst|inst|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC(30));

-- Location: IOOBUF_X68_Y0_N19
\PC[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst|inst|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC(29));

-- Location: IOOBUF_X62_Y0_N53
\PC[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst|inst|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC(28));

-- Location: IOOBUF_X72_Y0_N19
\PC[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst|inst1|inst~q\,
	devoe => ww_devoe,
	o => ww_PC(27));

-- Location: IOOBUF_X88_Y81_N20
\PC[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst|inst1|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC(26));

-- Location: IOOBUF_X66_Y0_N59
\PC[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst|inst1|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC(25));

-- Location: IOOBUF_X89_Y38_N39
\PC[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst|inst1|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC(24));

-- Location: IOOBUF_X68_Y0_N36
\PC[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst1|inst|inst~q\,
	devoe => ww_devoe,
	o => ww_PC(23));

-- Location: IOOBUF_X89_Y9_N39
\PC[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst1|inst|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC(22));

-- Location: IOOBUF_X89_Y8_N5
\PC[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst1|inst|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC(21));

-- Location: IOOBUF_X89_Y8_N56
\PC[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst1|inst|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC(20));

-- Location: IOOBUF_X72_Y0_N53
\PC[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst1|inst1|inst~q\,
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
	i => \inst6|inst|inst1|inst1|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC(18));

-- Location: IOOBUF_X82_Y81_N76
\PC[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst1|inst1|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC(17));

-- Location: IOOBUF_X89_Y38_N56
\PC[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst1|inst1|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC(16));

-- Location: IOOBUF_X68_Y0_N53
\PC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst|inst|inst~q\,
	devoe => ww_devoe,
	o => ww_PC(15));

-- Location: IOOBUF_X72_Y0_N2
\PC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst|inst|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC(14));

-- Location: IOOBUF_X82_Y81_N42
\PC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst|inst|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC(13));

-- Location: IOOBUF_X70_Y0_N19
\PC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst|inst|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC(12));

-- Location: IOOBUF_X89_Y9_N56
\PC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst|inst1|inst~q\,
	devoe => ww_devoe,
	o => ww_PC(11));

-- Location: IOOBUF_X82_Y81_N93
\PC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst|inst1|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC(10));

-- Location: IOOBUF_X84_Y81_N2
\PC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst|inst1|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC(9));

-- Location: IOOBUF_X88_Y81_N54
\PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst|inst1|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC(8));

-- Location: IOOBUF_X70_Y0_N53
\PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst1|inst|inst~q\,
	devoe => ww_devoe,
	o => ww_PC(7));

-- Location: IOOBUF_X66_Y0_N93
\PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst1|inst|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC(6));

-- Location: IOOBUF_X89_Y8_N22
\PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst1|inst|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC(5));

-- Location: IOOBUF_X88_Y81_N37
\PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst1|inst|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC(4));

-- Location: IOOBUF_X72_Y0_N36
\PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst1|inst1|inst~q\,
	devoe => ww_devoe,
	o => ww_PC(3));

-- Location: IOOBUF_X89_Y4_N96
\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst1|inst1|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X89_Y4_N45
\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst1|inst1|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC(1));

-- Location: IOOBUF_X66_Y0_N76
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|inst1|inst1|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOIBUF_X89_Y35_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y36_N38
\Jump~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Jump,
	o => \Jump~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\BranchOffset[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(12),
	o => \BranchOffset[12]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\BranchOffset[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(7),
	o => \BranchOffset[7]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\BranchOffset[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(2),
	o => \BranchOffset[2]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\BranchOffset[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(3),
	o => \BranchOffset[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\BranchOffset[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(1),
	o => \BranchOffset[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\BranchOffset[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(0),
	o => \BranchOffset[0]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\BranchOffset[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(5),
	o => \BranchOffset[5]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\BranchOffset[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(4),
	o => \BranchOffset[4]~input_o\);

-- Location: LABCELL_X88_Y34_N36
\inst5|inst1|inst|Bit2|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Bit2|inst|And1~0_combout\ = ( \BranchOffset[5]~input_o\ & ( \BranchOffset[4]~input_o\ & ( (\BranchOffset[2]~input_o\ & (\BranchOffset[3]~input_o\ & (\BranchOffset[1]~input_o\ & \BranchOffset[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[2]~input_o\,
	datab => \ALT_INV_BranchOffset[3]~input_o\,
	datac => \ALT_INV_BranchOffset[1]~input_o\,
	datad => \ALT_INV_BranchOffset[0]~input_o\,
	datae => \ALT_INV_BranchOffset[5]~input_o\,
	dataf => \ALT_INV_BranchOffset[4]~input_o\,
	combout => \inst5|inst1|inst|Bit2|inst|And1~0_combout\);

-- Location: IOIBUF_X89_Y35_N44
\BranchOffset[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(6),
	o => \BranchOffset[6]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\BranchOffset[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(8),
	o => \BranchOffset[8]~input_o\);

-- Location: IOIBUF_X86_Y81_N52
\BranchOffset[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(10),
	o => \BranchOffset[10]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\BranchOffset[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(9),
	o => \BranchOffset[9]~input_o\);

-- Location: MLABCELL_X87_Y35_N18
\inst5|inst2|inst|Bit0|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst|Bit0|inst|And1~0_combout\ = ( \BranchOffset[10]~input_o\ & ( \BranchOffset[9]~input_o\ & ( (\BranchOffset[7]~input_o\ & (\inst5|inst1|inst|Bit2|inst|And1~0_combout\ & (\BranchOffset[6]~input_o\ & \BranchOffset[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[7]~input_o\,
	datab => \inst5|inst1|inst|Bit2|inst|ALT_INV_And1~0_combout\,
	datac => \ALT_INV_BranchOffset[6]~input_o\,
	datad => \ALT_INV_BranchOffset[8]~input_o\,
	datae => \ALT_INV_BranchOffset[10]~input_o\,
	dataf => \ALT_INV_BranchOffset[9]~input_o\,
	combout => \inst5|inst2|inst|Bit0|inst|And1~0_combout\);

-- Location: IOIBUF_X89_Y6_N21
\BranchOffset[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(13),
	o => \BranchOffset[13]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\BranchOffset[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(11),
	o => \BranchOffset[11]~input_o\);

-- Location: LABCELL_X88_Y34_N42
\inst5|inst1|inst1|Bit2|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ = ( \BranchOffset[13]~input_o\ & ( \BranchOffset[11]~input_o\ & ( (\BranchOffset[12]~input_o\ & \inst5|inst2|inst|Bit0|inst|And1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[12]~input_o\,
	datab => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	datae => \ALT_INV_BranchOffset[13]~input_o\,
	dataf => \ALT_INV_BranchOffset[11]~input_o\,
	combout => \inst5|inst1|inst1|Bit2|inst|And1~0_combout\);

-- Location: IOIBUF_X89_Y36_N21
\BranchOffset[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(15),
	o => \BranchOffset[15]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\BranchOffset[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(14),
	o => \BranchOffset[14]~input_o\);

-- Location: MLABCELL_X87_Y35_N48
\inst9|inst1_1|O1[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[31]~0_combout\ = ( \BranchOffset[14]~input_o\ & ( ((!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & \BranchOffset[15]~input_o\)) # (\Jump~input_o\) ) ) # ( !\BranchOffset[14]~input_o\ & ( (\BranchOffset[15]~input_o\) # (\Jump~input_o\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datac => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datad => \ALT_INV_BranchOffset[15]~input_o\,
	dataf => \ALT_INV_BranchOffset[14]~input_o\,
	combout => \inst9|inst1_1|O1[31]~0_combout\);

-- Location: IOIBUF_X89_Y38_N4
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\Branch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Branch,
	o => \Branch~input_o\);

-- Location: FF_X87_Y35_N49
\inst6|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[31]~0_combout\,
	clrn => \Reset~input_o\,
	sclr => \ALT_INV_Branch~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst|inst|inst~q\);

-- Location: LABCELL_X88_Y34_N15
\inst9|inst1_1|O1[21]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[21]~1_combout\ = ( \Branch~input_o\ & ( (\BranchOffset[15]~input_o\ & ((!\BranchOffset[14]~input_o\) # (!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[14]~input_o\,
	datac => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datad => \ALT_INV_BranchOffset[15]~input_o\,
	dataf => \ALT_INV_Branch~input_o\,
	combout => \inst9|inst1_1|O1[21]~1_combout\);

-- Location: LABCELL_X88_Y34_N24
\inst6|inst|inst|inst|inst5~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst|inst5~feeder_combout\ = ( \inst9|inst1_1|O1[21]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|inst1_1|ALT_INV_O1[21]~1_combout\,
	combout => \inst6|inst|inst|inst|inst5~feeder_combout\);

-- Location: FF_X88_Y34_N25
\inst6|inst|inst|inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|inst|inst|inst|inst5~feeder_combout\,
	asdata => \Branch~input_o\,
	clrn => \Reset~input_o\,
	sload => \Jump~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst|inst|inst5~q\);

-- Location: LABCELL_X88_Y35_N24
\inst6|inst|inst|inst|inst6~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst|inst6~feeder_combout\ = \inst9|inst1_1|O1[21]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst1_1|ALT_INV_O1[21]~1_combout\,
	combout => \inst6|inst|inst|inst|inst6~feeder_combout\);

-- Location: FF_X88_Y35_N26
\inst6|inst|inst|inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|inst|inst|inst|inst6~feeder_combout\,
	asdata => \Branch~input_o\,
	clrn => \Reset~input_o\,
	sload => \Jump~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst|inst|inst6~q\);

-- Location: LABCELL_X88_Y35_N45
\inst6|inst|inst|inst|inst7~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst|inst7~feeder_combout\ = \inst9|inst1_1|O1[21]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1_1|ALT_INV_O1[21]~1_combout\,
	combout => \inst6|inst|inst|inst|inst7~feeder_combout\);

-- Location: FF_X88_Y35_N46
\inst6|inst|inst|inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|inst|inst|inst|inst7~feeder_combout\,
	asdata => \Branch~input_o\,
	clrn => \Reset~input_o\,
	sload => \Jump~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst|inst|inst7~q\);

-- Location: IOIBUF_X88_Y81_N2
\JumpAdderess[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(25),
	o => \JumpAdderess[25]~input_o\);

-- Location: LABCELL_X88_Y35_N36
\inst9|inst1_1|O1[27]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[27]~2_combout\ = ( \Branch~input_o\ & ( \JumpAdderess[25]~input_o\ & ( ((\BranchOffset[15]~input_o\ & ((!\BranchOffset[14]~input_o\) # (!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\)))) # (\Jump~input_o\) ) ) ) # ( !\Branch~input_o\ & ( 
-- \JumpAdderess[25]~input_o\ & ( \Jump~input_o\ ) ) ) # ( \Branch~input_o\ & ( !\JumpAdderess[25]~input_o\ & ( ((\BranchOffset[15]~input_o\ & ((!\BranchOffset[14]~input_o\) # (!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\)))) # (\Jump~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111010101010101010101010111011101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_BranchOffset[15]~input_o\,
	datac => \ALT_INV_BranchOffset[14]~input_o\,
	datad => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \ALT_INV_JumpAdderess[25]~input_o\,
	combout => \inst9|inst1_1|O1[27]~2_combout\);

-- Location: FF_X88_Y35_N37
\inst6|inst|inst|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[27]~2_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst|inst1|inst~q\);

-- Location: IOIBUF_X89_Y35_N78
\JumpAdderess[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(24),
	o => \JumpAdderess[24]~input_o\);

-- Location: LABCELL_X88_Y35_N39
\inst9|inst1_1|O1[26]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[26]~3_combout\ = ( \Branch~input_o\ & ( \JumpAdderess[24]~input_o\ & ( ((\BranchOffset[15]~input_o\ & ((!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\) # (!\BranchOffset[14]~input_o\)))) # (\Jump~input_o\) ) ) ) # ( !\Branch~input_o\ & ( 
-- \JumpAdderess[24]~input_o\ & ( \Jump~input_o\ ) ) ) # ( \Branch~input_o\ & ( !\JumpAdderess[24]~input_o\ & ( ((\BranchOffset[15]~input_o\ & ((!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\) # (!\BranchOffset[14]~input_o\)))) # (\Jump~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111010101010101010101010111011101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_BranchOffset[15]~input_o\,
	datac => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datad => \ALT_INV_BranchOffset[14]~input_o\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \ALT_INV_JumpAdderess[24]~input_o\,
	combout => \inst9|inst1_1|O1[26]~3_combout\);

-- Location: FF_X88_Y35_N40
\inst6|inst|inst|inst1|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[26]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst|inst1|inst5~q\);

-- Location: IOIBUF_X70_Y0_N1
\JumpAdderess[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(23),
	o => \JumpAdderess[23]~input_o\);

-- Location: MLABCELL_X87_Y34_N0
\inst9|inst1_1|O1[25]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[25]~4_combout\ = ( \Jump~input_o\ & ( \Branch~input_o\ ) ) # ( !\Jump~input_o\ & ( \Branch~input_o\ & ( (\BranchOffset[15]~input_o\ & ((!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\) # (!\BranchOffset[14]~input_o\))) ) ) ) # ( 
-- \Jump~input_o\ & ( !\Branch~input_o\ & ( \JumpAdderess[23]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111101010100010101001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datab => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datac => \ALT_INV_BranchOffset[14]~input_o\,
	datad => \ALT_INV_JumpAdderess[23]~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \ALT_INV_Branch~input_o\,
	combout => \inst9|inst1_1|O1[25]~4_combout\);

-- Location: FF_X88_Y34_N38
\inst6|inst|inst|inst1|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst9|inst1_1|O1[25]~4_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst|inst1|inst6~q\);

-- Location: IOIBUF_X89_Y37_N55
\JumpAdderess[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(22),
	o => \JumpAdderess[22]~input_o\);

-- Location: MLABCELL_X87_Y35_N12
\inst9|inst1_1|O1[24]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[24]~5_combout\ = ( \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( \JumpAdderess[22]~input_o\ & ( ((\BranchOffset[15]~input_o\ & (\Branch~input_o\ & !\BranchOffset[14]~input_o\))) # (\Jump~input_o\) ) ) ) # ( 
-- !\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( \JumpAdderess[22]~input_o\ & ( ((\BranchOffset[15]~input_o\ & \Branch~input_o\)) # (\Jump~input_o\) ) ) ) # ( \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( !\JumpAdderess[22]~input_o\ & ( 
-- (\Branch~input_o\ & (((\BranchOffset[15]~input_o\ & !\BranchOffset[14]~input_o\)) # (\Jump~input_o\))) ) ) ) # ( !\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( !\JumpAdderess[22]~input_o\ & ( (\Branch~input_o\ & ((\Jump~input_o\) # 
-- (\BranchOffset[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110000001100011111000111110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \ALT_INV_BranchOffset[14]~input_o\,
	datae => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	dataf => \ALT_INV_JumpAdderess[22]~input_o\,
	combout => \inst9|inst1_1|O1[24]~5_combout\);

-- Location: FF_X88_Y35_N58
\inst6|inst|inst|inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst9|inst1_1|O1[24]~5_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst|inst1|inst7~q\);

-- Location: IOIBUF_X84_Y81_N18
\JumpAdderess[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(21),
	o => \JumpAdderess[21]~input_o\);

-- Location: MLABCELL_X87_Y35_N27
\inst9|inst1_1|O1[23]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[23]~6_combout\ = ( \BranchOffset[15]~input_o\ & ( \JumpAdderess[21]~input_o\ & ( ((\Branch~input_o\ & ((!\BranchOffset[14]~input_o\) # (!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\)))) # (\Jump~input_o\) ) ) ) # ( 
-- !\BranchOffset[15]~input_o\ & ( \JumpAdderess[21]~input_o\ & ( \Jump~input_o\ ) ) ) # ( \BranchOffset[15]~input_o\ & ( !\JumpAdderess[21]~input_o\ & ( (\Branch~input_o\ & (((!\BranchOffset[14]~input_o\) # (!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\)) # 
-- (\Jump~input_o\))) ) ) ) # ( !\BranchOffset[15]~input_o\ & ( !\JumpAdderess[21]~input_o\ & ( (\Jump~input_o\ & \Branch~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000011110000110101010101010101010101111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_BranchOffset[14]~input_o\,
	datac => \ALT_INV_Branch~input_o\,
	datad => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datae => \ALT_INV_BranchOffset[15]~input_o\,
	dataf => \ALT_INV_JumpAdderess[21]~input_o\,
	combout => \inst9|inst1_1|O1[23]~6_combout\);

-- Location: FF_X87_Y35_N29
\inst6|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[23]~6_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst1|inst|inst~q\);

-- Location: IOIBUF_X89_Y9_N21
\JumpAdderess[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(20),
	o => \JumpAdderess[20]~input_o\);

-- Location: LABCELL_X88_Y35_N51
\inst9|inst1_1|O1[22]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[22]~7_combout\ = ( \BranchOffset[15]~input_o\ & ( \BranchOffset[14]~input_o\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & ((!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\)))) # (\Jump~input_o\ & (((\JumpAdderess[20]~input_o\)) # 
-- (\Branch~input_o\))) ) ) ) # ( !\BranchOffset[15]~input_o\ & ( \BranchOffset[14]~input_o\ & ( (\Jump~input_o\ & ((\JumpAdderess[20]~input_o\) # (\Branch~input_o\))) ) ) ) # ( \BranchOffset[15]~input_o\ & ( !\BranchOffset[14]~input_o\ & ( ((\Jump~input_o\ 
-- & \JumpAdderess[20]~input_o\)) # (\Branch~input_o\) ) ) ) # ( !\BranchOffset[15]~input_o\ & ( !\BranchOffset[14]~input_o\ & ( (\Jump~input_o\ & ((\JumpAdderess[20]~input_o\) # (\Branch~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101001101110011011100010101000101010011011100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[20]~input_o\,
	datad => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datae => \ALT_INV_BranchOffset[15]~input_o\,
	dataf => \ALT_INV_BranchOffset[14]~input_o\,
	combout => \inst9|inst1_1|O1[22]~7_combout\);

-- Location: FF_X88_Y35_N52
\inst6|inst|inst1|inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[22]~7_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst1|inst|inst5~q\);

-- Location: IOIBUF_X89_Y37_N4
\JumpAdderess[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(19),
	o => \JumpAdderess[19]~input_o\);

-- Location: MLABCELL_X87_Y34_N21
\inst9|inst1_1|O1[21]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[21]~8_combout\ = ( \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( \JumpAdderess[19]~input_o\ & ( ((\BranchOffset[15]~input_o\ & (\Branch~input_o\ & !\BranchOffset[14]~input_o\))) # (\Jump~input_o\) ) ) ) # ( 
-- !\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( \JumpAdderess[19]~input_o\ & ( ((\BranchOffset[15]~input_o\ & \Branch~input_o\)) # (\Jump~input_o\) ) ) ) # ( \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( !\JumpAdderess[19]~input_o\ & ( 
-- (\Branch~input_o\ & (((\BranchOffset[15]~input_o\ & !\BranchOffset[14]~input_o\)) # (\Jump~input_o\))) ) ) ) # ( !\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( !\JumpAdderess[19]~input_o\ & ( (\Branch~input_o\ & ((\Jump~input_o\) # 
-- (\BranchOffset[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110000001100011111000111110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \ALT_INV_BranchOffset[14]~input_o\,
	datae => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	dataf => \ALT_INV_JumpAdderess[19]~input_o\,
	combout => \inst9|inst1_1|O1[21]~8_combout\);

-- Location: FF_X88_Y35_N19
\inst6|inst|inst1|inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst9|inst1_1|O1[21]~8_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst1|inst|inst6~q\);

-- Location: IOIBUF_X89_Y37_N38
\JumpAdderess[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(18),
	o => \JumpAdderess[18]~input_o\);

-- Location: LABCELL_X88_Y35_N3
\inst9|inst1_1|O1[20]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[20]~9_combout\ = ( \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( \BranchOffset[15]~input_o\ & ( (!\Branch~input_o\ & (((\JumpAdderess[18]~input_o\ & \Jump~input_o\)))) # (\Branch~input_o\ & ((!\BranchOffset[14]~input_o\) # 
-- ((\Jump~input_o\)))) ) ) ) # ( !\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( \BranchOffset[15]~input_o\ & ( ((\JumpAdderess[18]~input_o\ & \Jump~input_o\)) # (\Branch~input_o\) ) ) ) # ( \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( 
-- !\BranchOffset[15]~input_o\ & ( (\Jump~input_o\ & ((\JumpAdderess[18]~input_o\) # (\Branch~input_o\))) ) ) ) # ( !\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( !\BranchOffset[15]~input_o\ & ( (\Jump~input_o\ & ((\JumpAdderess[18]~input_o\) # 
-- (\Branch~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100110011001111110010001000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[14]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[18]~input_o\,
	datad => \ALT_INV_Jump~input_o\,
	datae => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	dataf => \ALT_INV_BranchOffset[15]~input_o\,
	combout => \inst9|inst1_1|O1[20]~9_combout\);

-- Location: FF_X88_Y35_N5
\inst6|inst|inst1|inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[20]~9_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst1|inst|inst7~q\);

-- Location: IOIBUF_X89_Y8_N38
\JumpAdderess[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(17),
	o => \JumpAdderess[17]~input_o\);

-- Location: LABCELL_X88_Y34_N30
\inst9|inst1_1|O1[19]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[19]~10_combout\ = ( \JumpAdderess[17]~input_o\ & ( \Branch~input_o\ & ( ((\BranchOffset[15]~input_o\ & ((!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\) # (!\BranchOffset[14]~input_o\)))) # (\Jump~input_o\) ) ) ) # ( 
-- !\JumpAdderess[17]~input_o\ & ( \Branch~input_o\ & ( ((\BranchOffset[15]~input_o\ & ((!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\) # (!\BranchOffset[14]~input_o\)))) # (\Jump~input_o\) ) ) ) # ( \JumpAdderess[17]~input_o\ & ( !\Branch~input_o\ & ( 
-- \Jump~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101111111010101010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datac => \ALT_INV_BranchOffset[14]~input_o\,
	datad => \ALT_INV_BranchOffset[15]~input_o\,
	datae => \ALT_INV_JumpAdderess[17]~input_o\,
	dataf => \ALT_INV_Branch~input_o\,
	combout => \inst9|inst1_1|O1[19]~10_combout\);

-- Location: FF_X88_Y34_N32
\inst6|inst|inst1|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[19]~10_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst1|inst1|inst~q\);

-- Location: IOIBUF_X58_Y0_N92
\JumpAdderess[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(16),
	o => \JumpAdderess[16]~input_o\);

-- Location: LABCELL_X88_Y35_N21
\inst9|inst1_1|O1[18]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[18]~11_combout\ = ( \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( \BranchOffset[14]~input_o\ & ( (\Jump~input_o\ & ((\JumpAdderess[16]~input_o\) # (\Branch~input_o\))) ) ) ) # ( !\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( 
-- \BranchOffset[14]~input_o\ & ( (!\Branch~input_o\ & (((\JumpAdderess[16]~input_o\ & \Jump~input_o\)))) # (\Branch~input_o\ & (((\Jump~input_o\)) # (\BranchOffset[15]~input_o\))) ) ) ) # ( \inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( 
-- !\BranchOffset[14]~input_o\ & ( (!\Branch~input_o\ & (((\JumpAdderess[16]~input_o\ & \Jump~input_o\)))) # (\Branch~input_o\ & (((\Jump~input_o\)) # (\BranchOffset[15]~input_o\))) ) ) ) # ( !\inst5|inst1|inst1|Bit2|inst|And1~0_combout\ & ( 
-- !\BranchOffset[14]~input_o\ & ( (!\Branch~input_o\ & (((\JumpAdderess[16]~input_o\ & \Jump~input_o\)))) # (\Branch~input_o\ & (((\Jump~input_o\)) # (\BranchOffset[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100111111000100010011111100010001001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[16]~input_o\,
	datad => \ALT_INV_Jump~input_o\,
	datae => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	dataf => \ALT_INV_BranchOffset[14]~input_o\,
	combout => \inst9|inst1_1|O1[18]~11_combout\);

-- Location: FF_X88_Y35_N22
\inst6|inst|inst1|inst1|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[18]~11_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst1|inst1|inst5~q\);

-- Location: IOIBUF_X62_Y0_N1
\JumpAdderess[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(15),
	o => \JumpAdderess[15]~input_o\);

-- Location: MLABCELL_X87_Y35_N30
\inst9|inst1_1|O1[17]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[17]~12_combout\ = ( \BranchOffset[15]~input_o\ & ( \BranchOffset[14]~input_o\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & (!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\))) # (\Jump~input_o\ & (((\JumpAdderess[15]~input_o\)) # 
-- (\Branch~input_o\))) ) ) ) # ( !\BranchOffset[15]~input_o\ & ( \BranchOffset[14]~input_o\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & (\inst5|inst1|inst1|Bit2|inst|And1~0_combout\))) # (\Jump~input_o\ & (((\JumpAdderess[15]~input_o\)) # 
-- (\Branch~input_o\))) ) ) ) # ( \BranchOffset[15]~input_o\ & ( !\BranchOffset[14]~input_o\ & ( ((\Jump~input_o\ & \JumpAdderess[15]~input_o\)) # (\Branch~input_o\) ) ) ) # ( !\BranchOffset[15]~input_o\ & ( !\BranchOffset[14]~input_o\ & ( (\Jump~input_o\ & 
-- ((\JumpAdderess[15]~input_o\) # (\Branch~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101001100110111011100010011010101110011000101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	datad => \ALT_INV_JumpAdderess[15]~input_o\,
	datae => \ALT_INV_BranchOffset[15]~input_o\,
	dataf => \ALT_INV_BranchOffset[14]~input_o\,
	combout => \inst9|inst1_1|O1[17]~12_combout\);

-- Location: FF_X88_Y35_N43
\inst6|inst|inst1|inst1|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst9|inst1_1|O1[17]~12_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst1|inst1|inst6~q\);

-- Location: IOIBUF_X56_Y0_N52
\JumpAdderess[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(14),
	o => \JumpAdderess[14]~input_o\);

-- Location: LABCELL_X88_Y35_N33
\inst9|inst1_1|O1[16]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[16]~13_combout\ = ( \BranchOffset[14]~input_o\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & ((!\inst5|inst1|inst1|Bit2|inst|And1~0_combout\)))) # (\Jump~input_o\ & (((\JumpAdderess[14]~input_o\)) # (\Branch~input_o\))) ) ) # ( 
-- !\BranchOffset[14]~input_o\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & ((\inst5|inst1|inst1|Bit2|inst|And1~0_combout\)))) # (\Jump~input_o\ & (((\JumpAdderess[14]~input_o\)) # (\Branch~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100110111000101010011011100110111000101010011011100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[14]~input_o\,
	datad => \inst5|inst1|inst1|Bit2|inst|ALT_INV_And1~0_combout\,
	dataf => \ALT_INV_BranchOffset[14]~input_o\,
	combout => \inst9|inst1_1|O1[16]~13_combout\);

-- Location: FF_X88_Y35_N34
\inst6|inst|inst1|inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[16]~13_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst|inst1|inst1|inst7~q\);

-- Location: IOIBUF_X89_Y6_N38
\JumpAdderess[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(13),
	o => \JumpAdderess[13]~input_o\);

-- Location: LABCELL_X88_Y34_N6
\inst9|inst1_1|O1[15]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[15]~30_combout\ = ( !\Jump~input_o\ & ( (\Branch~input_o\ & (!\BranchOffset[13]~input_o\ $ (((!\BranchOffset[12]~input_o\) # ((!\inst5|inst2|inst|Bit0|inst|And1~0_combout\) # (!\BranchOffset[11]~input_o\)))))) ) ) # ( \Jump~input_o\ & ( 
-- (((\JumpAdderess[13]~input_o\)) # (\Branch~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011001111110011111100000011000100100011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[12]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[13]~input_o\,
	datad => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \ALT_INV_BranchOffset[11]~input_o\,
	datag => \ALT_INV_BranchOffset[13]~input_o\,
	combout => \inst9|inst1_1|O1[15]~30_combout\);

-- Location: FF_X88_Y34_N8
\inst6|inst1|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[15]~30_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst|inst|inst~q\);

-- Location: IOIBUF_X56_Y0_N1
\JumpAdderess[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(12),
	o => \JumpAdderess[12]~input_o\);

-- Location: LABCELL_X88_Y34_N0
\inst9|inst1_1|O1[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[14]~14_combout\ = ( \JumpAdderess[12]~input_o\ & ( \BranchOffset[11]~input_o\ & ( ((\Branch~input_o\ & (!\BranchOffset[12]~input_o\ $ (!\inst5|inst2|inst|Bit0|inst|And1~0_combout\)))) # (\Jump~input_o\) ) ) ) # ( 
-- !\JumpAdderess[12]~input_o\ & ( \BranchOffset[11]~input_o\ & ( (\Branch~input_o\ & ((!\BranchOffset[12]~input_o\ $ (!\inst5|inst2|inst|Bit0|inst|And1~0_combout\)) # (\Jump~input_o\))) ) ) ) # ( \JumpAdderess[12]~input_o\ & ( !\BranchOffset[11]~input_o\ & 
-- ( ((\BranchOffset[12]~input_o\ & \Branch~input_o\)) # (\Jump~input_o\) ) ) ) # ( !\JumpAdderess[12]~input_o\ & ( !\BranchOffset[11]~input_o\ & ( (\Branch~input_o\ & ((\Jump~input_o\) # (\BranchOffset[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000111110001111100010011001000110001111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[12]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	datae => \ALT_INV_JumpAdderess[12]~input_o\,
	dataf => \ALT_INV_BranchOffset[11]~input_o\,
	combout => \inst9|inst1_1|O1[14]~14_combout\);

-- Location: FF_X88_Y34_N1
\inst6|inst1|inst|inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[14]~14_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst|inst|inst5~q\);

-- Location: IOIBUF_X89_Y37_N21
\JumpAdderess[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(11),
	o => \JumpAdderess[11]~input_o\);

-- Location: LABCELL_X88_Y35_N30
\inst9|inst1_1|O1[13]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[13]~15_combout\ = ( \JumpAdderess[11]~input_o\ & ( ((\Branch~input_o\ & (!\BranchOffset[11]~input_o\ $ (!\inst5|inst2|inst|Bit0|inst|And1~0_combout\)))) # (\Jump~input_o\) ) ) # ( !\JumpAdderess[11]~input_o\ & ( (\Branch~input_o\ & 
-- ((!\BranchOffset[11]~input_o\ $ (!\inst5|inst2|inst|Bit0|inst|And1~0_combout\)) # (\Jump~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110001000100110011000101010111011101010101011101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_BranchOffset[11]~input_o\,
	datad => \inst5|inst2|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	dataf => \ALT_INV_JumpAdderess[11]~input_o\,
	combout => \inst9|inst1_1|O1[13]~15_combout\);

-- Location: FF_X88_Y35_N32
\inst6|inst1|inst|inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[13]~15_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst|inst|inst6~q\);

-- Location: MLABCELL_X87_Y35_N0
\inst5|inst1|inst|Bit0|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Bit0|inst|And1~0_combout\ = ( \BranchOffset[8]~input_o\ & ( \BranchOffset[6]~input_o\ & ( (\inst5|inst1|inst|Bit2|inst|And1~0_combout\ & \BranchOffset[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst|Bit2|inst|ALT_INV_And1~0_combout\,
	datac => \ALT_INV_BranchOffset[7]~input_o\,
	datae => \ALT_INV_BranchOffset[8]~input_o\,
	dataf => \ALT_INV_BranchOffset[6]~input_o\,
	combout => \inst5|inst1|inst|Bit0|inst|And1~0_combout\);

-- Location: IOIBUF_X58_Y0_N75
\JumpAdderess[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(10),
	o => \JumpAdderess[10]~input_o\);

-- Location: MLABCELL_X87_Y35_N6
\inst9|inst1_1|O1[12]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[12]~16_combout\ = ( \Jump~input_o\ & ( \JumpAdderess[10]~input_o\ ) ) # ( !\Jump~input_o\ & ( \JumpAdderess[10]~input_o\ & ( (\Branch~input_o\ & (!\BranchOffset[10]~input_o\ $ (((!\inst5|inst1|inst|Bit0|inst|And1~0_combout\) # 
-- (!\BranchOffset[9]~input_o\))))) ) ) ) # ( \Jump~input_o\ & ( !\JumpAdderess[10]~input_o\ & ( \Branch~input_o\ ) ) ) # ( !\Jump~input_o\ & ( !\JumpAdderess[10]~input_o\ & ( (\Branch~input_o\ & (!\BranchOffset[10]~input_o\ $ 
-- (((!\inst5|inst1|inst|Bit0|inst|And1~0_combout\) # (!\BranchOffset[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010010001100110011001100000011000100101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_BranchOffset[10]~input_o\,
	datad => \ALT_INV_BranchOffset[9]~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \ALT_INV_JumpAdderess[10]~input_o\,
	combout => \inst9|inst1_1|O1[12]~16_combout\);

-- Location: FF_X87_Y35_N8
\inst6|inst1|inst|inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[12]~16_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst|inst|inst7~q\);

-- Location: IOIBUF_X84_Y81_N35
\JumpAdderess[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(9),
	o => \JumpAdderess[9]~input_o\);

-- Location: MLABCELL_X87_Y35_N51
\inst9|inst1_1|O1[11]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[11]~17_combout\ = ( \JumpAdderess[9]~input_o\ & ( ((\Branch~input_o\ & (!\BranchOffset[9]~input_o\ $ (!\inst5|inst1|inst|Bit0|inst|And1~0_combout\)))) # (\Jump~input_o\) ) ) # ( !\JumpAdderess[9]~input_o\ & ( (\Branch~input_o\ & 
-- ((!\BranchOffset[9]~input_o\ $ (!\inst5|inst1|inst|Bit0|inst|And1~0_combout\)) # (\Jump~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110001000100110011000101010111011101010101011101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_BranchOffset[9]~input_o\,
	datad => \inst5|inst1|inst|Bit0|inst|ALT_INV_And1~0_combout\,
	dataf => \ALT_INV_JumpAdderess[9]~input_o\,
	combout => \inst9|inst1_1|O1[11]~17_combout\);

-- Location: FF_X88_Y35_N49
\inst6|inst1|inst|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst9|inst1_1|O1[11]~17_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst|inst1|inst~q\);

-- Location: IOIBUF_X86_Y81_N35
\JumpAdderess[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(8),
	o => \JumpAdderess[8]~input_o\);

-- Location: MLABCELL_X87_Y35_N42
\inst9|inst1_1|O1[10]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[10]~26_combout\ = ( !\Jump~input_o\ & ( (\Branch~input_o\ & (!\BranchOffset[8]~input_o\ $ (((!\BranchOffset[7]~input_o\) # ((!\inst5|inst1|inst|Bit2|inst|And1~0_combout\) # (!\BranchOffset[6]~input_o\)))))) ) ) # ( \Jump~input_o\ & ( 
-- (((\JumpAdderess[8]~input_o\)) # (\Branch~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011001111110011111100000011000100100011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[7]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[8]~input_o\,
	datad => \inst5|inst1|inst|Bit2|inst|ALT_INV_And1~0_combout\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \ALT_INV_BranchOffset[6]~input_o\,
	datag => \ALT_INV_BranchOffset[8]~input_o\,
	combout => \inst9|inst1_1|O1[10]~26_combout\);

-- Location: FF_X87_Y35_N43
\inst6|inst1|inst|inst1|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[10]~26_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst|inst1|inst5~q\);

-- Location: IOIBUF_X64_Y0_N18
\JumpAdderess[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(7),
	o => \JumpAdderess[7]~input_o\);

-- Location: MLABCELL_X87_Y35_N36
\inst9|inst1_1|O1[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[9]~18_combout\ = ( \Jump~input_o\ & ( \inst5|inst1|inst|Bit2|inst|And1~0_combout\ & ( (\JumpAdderess[7]~input_o\) # (\Branch~input_o\) ) ) ) # ( !\Jump~input_o\ & ( \inst5|inst1|inst|Bit2|inst|And1~0_combout\ & ( (\Branch~input_o\ & 
-- (!\BranchOffset[6]~input_o\ $ (!\BranchOffset[7]~input_o\))) ) ) ) # ( \Jump~input_o\ & ( !\inst5|inst1|inst|Bit2|inst|And1~0_combout\ & ( (\JumpAdderess[7]~input_o\) # (\Branch~input_o\) ) ) ) # ( !\Jump~input_o\ & ( 
-- !\inst5|inst1|inst|Bit2|inst|And1~0_combout\ & ( (\Branch~input_o\ & \BranchOffset[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100111111111100010010000100100011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[6]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_BranchOffset[7]~input_o\,
	datad => \ALT_INV_JumpAdderess[7]~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \inst5|inst1|inst|Bit2|inst|ALT_INV_And1~0_combout\,
	combout => \inst9|inst1_1|O1[9]~18_combout\);

-- Location: FF_X87_Y35_N37
\inst6|inst1|inst|inst1|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[9]~18_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst|inst1|inst6~q\);

-- Location: IOIBUF_X89_Y4_N78
\JumpAdderess[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(6),
	o => \JumpAdderess[6]~input_o\);

-- Location: LABCELL_X88_Y35_N12
\inst9|inst1_1|O1[8]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[8]~19_combout\ = ( \inst5|inst1|inst|Bit2|inst|And1~0_combout\ & ( (!\Jump~input_o\ & (((!\BranchOffset[6]~input_o\ & \Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\)) # (\JumpAdderess[6]~input_o\))) ) ) # ( 
-- !\inst5|inst1|inst|Bit2|inst|And1~0_combout\ & ( (!\Jump~input_o\ & (((\BranchOffset[6]~input_o\ & \Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\)) # (\JumpAdderess[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101011111000100010101111100010001111101010001000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_JumpAdderess[6]~input_o\,
	datac => \ALT_INV_BranchOffset[6]~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	dataf => \inst5|inst1|inst|Bit2|inst|ALT_INV_And1~0_combout\,
	combout => \inst9|inst1_1|O1[8]~19_combout\);

-- Location: FF_X88_Y35_N13
\inst6|inst1|inst|inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[8]~19_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst|inst1|inst7~q\);

-- Location: LABCELL_X88_Y34_N48
\inst5|inst1|inst|Bit2|inst|And1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Bit2|inst|And1~1_combout\ = (\BranchOffset[1]~input_o\ & (\BranchOffset[0]~input_o\ & (\BranchOffset[2]~input_o\ & \BranchOffset[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[1]~input_o\,
	datab => \ALT_INV_BranchOffset[0]~input_o\,
	datac => \ALT_INV_BranchOffset[2]~input_o\,
	datad => \ALT_INV_BranchOffset[3]~input_o\,
	combout => \inst5|inst1|inst|Bit2|inst|And1~1_combout\);

-- Location: IOIBUF_X89_Y35_N95
\JumpAdderess[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(5),
	o => \JumpAdderess[5]~input_o\);

-- Location: LABCELL_X88_Y35_N54
\inst9|inst1_1|O1[7]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[7]~20_combout\ = ( \JumpAdderess[5]~input_o\ & ( \BranchOffset[4]~input_o\ & ( ((\Branch~input_o\ & (!\BranchOffset[5]~input_o\ $ (!\inst5|inst1|inst|Bit2|inst|And1~1_combout\)))) # (\Jump~input_o\) ) ) ) # ( !\JumpAdderess[5]~input_o\ & 
-- ( \BranchOffset[4]~input_o\ & ( (\Branch~input_o\ & ((!\BranchOffset[5]~input_o\ $ (!\inst5|inst1|inst|Bit2|inst|And1~1_combout\)) # (\Jump~input_o\))) ) ) ) # ( \JumpAdderess[5]~input_o\ & ( !\BranchOffset[4]~input_o\ & ( ((\BranchOffset[5]~input_o\ & 
-- \Branch~input_o\)) # (\Jump~input_o\) ) ) ) # ( !\JumpAdderess[5]~input_o\ & ( !\BranchOffset[4]~input_o\ & ( (\Branch~input_o\ & ((\Jump~input_o\) # (\BranchOffset[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000011110101111100000000011011110000111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[5]~input_o\,
	datab => \inst5|inst1|inst|Bit2|inst|ALT_INV_And1~1_combout\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \ALT_INV_JumpAdderess[5]~input_o\,
	dataf => \ALT_INV_BranchOffset[4]~input_o\,
	combout => \inst9|inst1_1|O1[7]~20_combout\);

-- Location: FF_X88_Y35_N56
\inst6|inst1|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[7]~20_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst1|inst|inst~q\);

-- Location: IOIBUF_X60_Y0_N35
\JumpAdderess[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(4),
	o => \JumpAdderess[4]~input_o\);

-- Location: LABCELL_X88_Y34_N57
\inst9|inst1_1|O1[6]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[6]~21_combout\ = ( \JumpAdderess[4]~input_o\ & ( \Jump~input_o\ ) ) # ( !\JumpAdderess[4]~input_o\ & ( \Jump~input_o\ & ( \Branch~input_o\ ) ) ) # ( \JumpAdderess[4]~input_o\ & ( !\Jump~input_o\ & ( (\Branch~input_o\ & 
-- (!\inst5|inst1|inst|Bit2|inst|And1~1_combout\ $ (!\BranchOffset[4]~input_o\))) ) ) ) # ( !\JumpAdderess[4]~input_o\ & ( !\Jump~input_o\ & ( (\Branch~input_o\ & (!\inst5|inst1|inst|Bit2|inst|And1~1_combout\ $ (!\BranchOffset[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst|Bit2|inst|ALT_INV_And1~1_combout\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_BranchOffset[4]~input_o\,
	datae => \ALT_INV_JumpAdderess[4]~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst9|inst1_1|O1[6]~21_combout\);

-- Location: FF_X88_Y34_N58
\inst6|inst1|inst1|inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[6]~21_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst1|inst|inst5~q\);

-- Location: LABCELL_X88_Y34_N12
\inst5|inst3|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst|Bit1|inst|X1~combout\ = ( \BranchOffset[0]~input_o\ & ( !\BranchOffset[3]~input_o\ $ (((!\BranchOffset[2]~input_o\) # (!\BranchOffset[1]~input_o\))) ) ) # ( !\BranchOffset[0]~input_o\ & ( \BranchOffset[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BranchOffset[3]~input_o\,
	datac => \ALT_INV_BranchOffset[2]~input_o\,
	datad => \ALT_INV_BranchOffset[1]~input_o\,
	dataf => \ALT_INV_BranchOffset[0]~input_o\,
	combout => \inst5|inst3|inst|Bit1|inst|X1~combout\);

-- Location: IOIBUF_X58_Y0_N41
\JumpAdderess[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(3),
	o => \JumpAdderess[3]~input_o\);

-- Location: LABCELL_X88_Y35_N27
\inst9|inst1_1|O1[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[5]~22_combout\ = (!\Jump~input_o\ & (\Branch~input_o\ & (\inst5|inst3|inst|Bit1|inst|X1~combout\))) # (\Jump~input_o\ & (((\JumpAdderess[3]~input_o\)) # (\Branch~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001101010111000100110101011100010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \inst5|inst3|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \ALT_INV_JumpAdderess[3]~input_o\,
	combout => \inst9|inst1_1|O1[5]~22_combout\);

-- Location: FF_X88_Y35_N28
\inst6|inst1|inst1|inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[5]~22_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst1|inst|inst6~q\);

-- Location: IOIBUF_X68_Y0_N1
\JumpAdderess[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(2),
	o => \JumpAdderess[2]~input_o\);

-- Location: LABCELL_X88_Y34_N21
\inst9|inst1_1|O1[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[4]~23_combout\ = ( \BranchOffset[0]~input_o\ & ( \Jump~input_o\ & ( (\JumpAdderess[2]~input_o\) # (\Branch~input_o\) ) ) ) # ( !\BranchOffset[0]~input_o\ & ( \Jump~input_o\ & ( (\JumpAdderess[2]~input_o\) # (\Branch~input_o\) ) ) ) # ( 
-- \BranchOffset[0]~input_o\ & ( !\Jump~input_o\ & ( (\Branch~input_o\ & (!\BranchOffset[1]~input_o\ $ (!\BranchOffset[2]~input_o\))) ) ) ) # ( !\BranchOffset[0]~input_o\ & ( !\Jump~input_o\ & ( (\Branch~input_o\ & \BranchOffset[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000100010010001000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[1]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAdderess[2]~input_o\,
	datad => \ALT_INV_BranchOffset[2]~input_o\,
	datae => \ALT_INV_BranchOffset[0]~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst9|inst1_1|O1[4]~23_combout\);

-- Location: LABCELL_X88_Y35_N9
\inst6|inst1|inst1|inst|inst7~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst1|inst|inst7~feeder_combout\ = ( \inst9|inst1_1|O1[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|inst1_1|ALT_INV_O1[4]~23_combout\,
	combout => \inst6|inst1|inst1|inst|inst7~feeder_combout\);

-- Location: FF_X88_Y35_N11
\inst6|inst1|inst1|inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|inst1|inst1|inst|inst7~feeder_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst1|inst|inst7~q\);

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

-- Location: LABCELL_X88_Y34_N51
\inst9|inst1_1|O1[3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[3]~24_combout\ = ( \Jump~input_o\ & ( (\JumpAdderess[1]~input_o\) # (\Branch~input_o\) ) ) # ( !\Jump~input_o\ & ( (\Branch~input_o\ & (!\BranchOffset[1]~input_o\ $ (!\BranchOffset[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[1]~input_o\,
	datab => \ALT_INV_BranchOffset[0]~input_o\,
	datac => \ALT_INV_Branch~input_o\,
	datad => \ALT_INV_JumpAdderess[1]~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst9|inst1_1|O1[3]~24_combout\);

-- Location: FF_X88_Y34_N52
\inst6|inst1|inst1|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|inst1_1|O1[3]~24_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst1|inst1|inst~q\);

-- Location: IOIBUF_X60_Y0_N18
\JumpAdderess[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAdderess(0),
	o => \JumpAdderess[0]~input_o\);

-- Location: LABCELL_X88_Y34_N27
\inst9|inst1_1|O1[2]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|O1[2]~25_combout\ = ( \Branch~input_o\ & ( (!\BranchOffset[0]~input_o\) # (\Jump~input_o\) ) ) # ( !\Branch~input_o\ & ( (\Jump~input_o\ & \JumpAdderess[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_JumpAdderess[0]~input_o\,
	datac => \ALT_INV_BranchOffset[0]~input_o\,
	dataf => \ALT_INV_Branch~input_o\,
	combout => \inst9|inst1_1|O1[2]~25_combout\);

-- Location: FF_X88_Y35_N16
\inst6|inst1|inst1|inst1|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst9|inst1_1|O1[2]~25_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst1|inst1|inst5~q\);

-- Location: LABCELL_X88_Y35_N42
\inst9|inst1_1|A2[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst1_1|A2\(1) = (\Branch~input_o\ & \Jump~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	combout => \inst9|inst1_1|A2\(1));

-- Location: FF_X88_Y35_N1
\inst6|inst1|inst1|inst1|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst9|inst1_1|A2\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst1|inst1|inst6~q\);

-- Location: LABCELL_X88_Y35_N6
\inst6|inst1|inst1|inst1|inst7~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst1|inst1|inst7~feeder_combout\ = ( \inst9|inst1_1|A2\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|inst1_1|ALT_INV_A2\(1),
	combout => \inst6|inst1|inst1|inst1|inst7~feeder_combout\);

-- Location: FF_X88_Y35_N7
\inst6|inst1|inst1|inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|inst1|inst1|inst1|inst7~feeder_combout\,
	clrn => \Reset~input_o\,
	ena => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst1|inst1|inst7~q\);

-- Location: LABCELL_X36_Y24_N3
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


