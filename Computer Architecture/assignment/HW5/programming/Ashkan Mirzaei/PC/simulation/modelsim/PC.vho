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

-- DATE "05/16/2019 14:34:15"

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
	PC31 : OUT std_logic;
	CLK : IN std_logic;
	Reset : IN std_logic;
	JumpAddress : IN std_logic_vector(25 DOWNTO 0);
	BranchOffset : IN std_logic_vector(15 DOWNTO 0);
	Jump : IN std_logic;
	Branch : IN std_logic;
	PC30 : OUT std_logic;
	PC29 : OUT std_logic;
	PC28 : OUT std_logic;
	PC27 : OUT std_logic;
	PC26 : OUT std_logic;
	PC25 : OUT std_logic;
	PC24 : OUT std_logic;
	PC23 : OUT std_logic;
	PC22 : OUT std_logic;
	PC21 : OUT std_logic;
	PC20 : OUT std_logic;
	PC19 : OUT std_logic;
	PC18 : OUT std_logic;
	PC17 : OUT std_logic;
	PC16 : OUT std_logic;
	PC15 : OUT std_logic;
	PC14 : OUT std_logic;
	PC13 : OUT std_logic;
	PC12 : OUT std_logic;
	PC11 : OUT std_logic;
	PC10 : OUT std_logic;
	PC9 : OUT std_logic;
	PC8 : OUT std_logic;
	PC7 : OUT std_logic;
	PC6 : OUT std_logic;
	PC5 : OUT std_logic;
	PC4 : OUT std_logic;
	PC3 : OUT std_logic;
	PC2 : OUT std_logic;
	PC1 : OUT std_logic;
	PC0 : OUT std_logic
	);
END PC;

-- Design Ports Information
-- PC31	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC30	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC29	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC28	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC27	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC26	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC25	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC24	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC23	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC22	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC21	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC20	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC19	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC18	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC17	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC16	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC15	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC14	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC13	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC12	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC11	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC10	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC9	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC8	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC7	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC6	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC5	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC3	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC2	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC1	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC0	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jump	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Branch	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[15]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[14]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[10]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[8]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOffset[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[25]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[24]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[23]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[22]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[21]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[20]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[19]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[18]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[17]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[16]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[13]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[11]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[10]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[8]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAddress[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_PC31 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_JumpAddress : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_BranchOffset : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Jump : std_logic;
SIGNAL ww_Branch : std_logic;
SIGNAL ww_PC30 : std_logic;
SIGNAL ww_PC29 : std_logic;
SIGNAL ww_PC28 : std_logic;
SIGNAL ww_PC27 : std_logic;
SIGNAL ww_PC26 : std_logic;
SIGNAL ww_PC25 : std_logic;
SIGNAL ww_PC24 : std_logic;
SIGNAL ww_PC23 : std_logic;
SIGNAL ww_PC22 : std_logic;
SIGNAL ww_PC21 : std_logic;
SIGNAL ww_PC20 : std_logic;
SIGNAL ww_PC19 : std_logic;
SIGNAL ww_PC18 : std_logic;
SIGNAL ww_PC17 : std_logic;
SIGNAL ww_PC16 : std_logic;
SIGNAL ww_PC15 : std_logic;
SIGNAL ww_PC14 : std_logic;
SIGNAL ww_PC13 : std_logic;
SIGNAL ww_PC12 : std_logic;
SIGNAL ww_PC11 : std_logic;
SIGNAL ww_PC10 : std_logic;
SIGNAL ww_PC9 : std_logic;
SIGNAL ww_PC8 : std_logic;
SIGNAL ww_PC7 : std_logic;
SIGNAL ww_PC6 : std_logic;
SIGNAL ww_PC5 : std_logic;
SIGNAL ww_PC4 : std_logic;
SIGNAL ww_PC3 : std_logic;
SIGNAL ww_PC2 : std_logic;
SIGNAL ww_PC1 : std_logic;
SIGNAL ww_PC0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \BranchOffset[15]~input_o\ : std_logic;
SIGNAL \JumpAddress[23]~input_o\ : std_logic;
SIGNAL \JumpAddress[22]~input_o\ : std_logic;
SIGNAL \Jump~input_o\ : std_logic;
SIGNAL \JumpAddress[21]~input_o\ : std_logic;
SIGNAL \Branch~input_o\ : std_logic;
SIGNAL \JumpAddress[20]~input_o\ : std_logic;
SIGNAL \JumpAddress[19]~input_o\ : std_logic;
SIGNAL \JumpAddress[7]~input_o\ : std_logic;
SIGNAL \BranchOffset[5]~input_o\ : std_logic;
SIGNAL \BranchOffset[2]~input_o\ : std_logic;
SIGNAL \BranchOffset[0]~input_o\ : std_logic;
SIGNAL \JumpAddress[2]~input_o\ : std_logic;
SIGNAL \JumpAddress[0]~input_o\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst|inst|inst5~q\ : std_logic;
SIGNAL \BranchOffset[1]~input_o\ : std_logic;
SIGNAL \JumpAddress[1]~input_o\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst|inst4~q\ : std_logic;
SIGNAL \inst8|inst|inst3|inst5~combout\ : std_logic;
SIGNAL \inst5|inst1|inst|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst|inst3~q\ : std_logic;
SIGNAL \inst8|inst1|inst|inst5~0_combout\ : std_logic;
SIGNAL \BranchOffset[3]~input_o\ : std_logic;
SIGNAL \JumpAddress[3]~input_o\ : std_logic;
SIGNAL \inst5|inst1|inst1|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2~q\ : std_logic;
SIGNAL \JumpAddress[4]~input_o\ : std_logic;
SIGNAL \BranchOffset[4]~input_o\ : std_logic;
SIGNAL \inst5|inst1|inst2|inst3~combout\ : std_logic;
SIGNAL \inst8|inst1|inst2|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst|inst1~q\ : std_logic;
SIGNAL \JumpAddress[5]~input_o\ : std_logic;
SIGNAL \inst8|inst1|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst|inst~q\ : std_logic;
SIGNAL \inst5|inst1|inst3|inst3~combout\ : std_logic;
SIGNAL \inst8|inst1|inst3|inst5~0_combout\ : std_logic;
SIGNAL \BranchOffset[6]~input_o\ : std_logic;
SIGNAL \BranchOffset[7]~input_o\ : std_logic;
SIGNAL \inst5|inst1|inst3|inst1~combout\ : std_logic;
SIGNAL \JumpAddress[6]~input_o\ : std_logic;
SIGNAL \inst5|inst2|inst|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst7~q\ : std_logic;
SIGNAL \inst5|inst2|inst1|inst3~combout\ : std_logic;
SIGNAL \inst8|inst2|inst1|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst6~q\ : std_logic;
SIGNAL \inst8|inst2|inst1|inst~combout\ : std_logic;
SIGNAL \inst8|inst2|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst1|inst5~1_combout\ : std_logic;
SIGNAL \inst8|inst2|inst1|inst5~2_combout\ : std_logic;
SIGNAL \BranchOffset[8]~input_o\ : std_logic;
SIGNAL \JumpAddress[8]~input_o\ : std_logic;
SIGNAL \inst5|inst2|inst2|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst5~q\ : std_logic;
SIGNAL \BranchOffset[9]~input_o\ : std_logic;
SIGNAL \inst5|inst2|inst3|inst3~combout\ : std_logic;
SIGNAL \JumpAddress[9]~input_o\ : std_logic;
SIGNAL \inst8|inst2|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst4~q\ : std_logic;
SIGNAL \BranchOffset[10]~input_o\ : std_logic;
SIGNAL \JumpAddress[10]~input_o\ : std_logic;
SIGNAL \inst5|inst3|inst|inst3~combout\ : std_logic;
SIGNAL \inst8|inst2|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst3~q\ : std_logic;
SIGNAL \inst5|inst3|inst|inst1~combout\ : std_logic;
SIGNAL \inst5|inst3|inst1|inst3~combout\ : std_logic;
SIGNAL \JumpAddress[11]~input_o\ : std_logic;
SIGNAL \BranchOffset[11]~input_o\ : std_logic;
SIGNAL \inst8|inst3|inst1|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst2~q\ : std_logic;
SIGNAL \BranchOffset[12]~input_o\ : std_logic;
SIGNAL \JumpAddress[12]~input_o\ : std_logic;
SIGNAL \inst8|inst3|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst3|inst2|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst1~q\ : std_logic;
SIGNAL \inst5|inst3|inst3|inst3~combout\ : std_logic;
SIGNAL \BranchOffset[13]~input_o\ : std_logic;
SIGNAL \inst8|inst3|inst2|inst~combout\ : std_logic;
SIGNAL \inst8|inst3|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst3|inst2|inst5~1_combout\ : std_logic;
SIGNAL \JumpAddress[13]~input_o\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst~q\ : std_logic;
SIGNAL \JumpAddress[14]~input_o\ : std_logic;
SIGNAL \BranchOffset[14]~input_o\ : std_logic;
SIGNAL \inst5|inst4|inst|inst3~combout\ : std_logic;
SIGNAL \inst8|inst3|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w16_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst7~q\ : std_logic;
SIGNAL \JumpAddress[15]~input_o\ : std_logic;
SIGNAL \inst5|inst4|inst1|inst3~combout\ : std_logic;
SIGNAL \inst8|inst4|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w17_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst6~q\ : std_logic;
SIGNAL \inst5|inst4|inst1|inst1~combout\ : std_logic;
SIGNAL \inst5|inst4|inst2|inst3~combout\ : std_logic;
SIGNAL \JumpAddress[16]~input_o\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w18_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst5~q\ : std_logic;
SIGNAL \JumpAddress[17]~input_o\ : std_logic;
SIGNAL \inst8|inst4|inst3|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w19_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst4~q\ : std_logic;
SIGNAL \inst5|inst4|inst3|inst3~combout\ : std_logic;
SIGNAL \JumpAddress[18]~input_o\ : std_logic;
SIGNAL \inst8|inst4|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w20_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst3~q\ : std_logic;
SIGNAL \inst5|inst5|inst|inst3~combout\ : std_logic;
SIGNAL \inst8|inst5|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst5|inst1|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w21_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst2~q\ : std_logic;
SIGNAL \inst5|inst5|inst1|inst1~combout\ : std_logic;
SIGNAL \inst5|inst5|inst2|inst3~combout\ : std_logic;
SIGNAL \inst8|inst5|inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst8|inst5|inst2|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w22_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst1~q\ : std_logic;
SIGNAL \inst5|inst5|inst3|inst3~combout\ : std_logic;
SIGNAL \inst8|inst5|inst3|inst3~0_combout\ : std_logic;
SIGNAL \inst8|inst5|inst3|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w23_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst~q\ : std_logic;
SIGNAL \inst5|inst6|inst|inst3~combout\ : std_logic;
SIGNAL \inst8|inst5|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w24_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst7~q\ : std_logic;
SIGNAL \inst5|inst6|inst|inst1~combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|inst3~combout\ : std_logic;
SIGNAL \inst8|inst6|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w25_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6~q\ : std_logic;
SIGNAL \JumpAddress[24]~input_o\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w26_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst5~q\ : std_logic;
SIGNAL \JumpAddress[25]~input_o\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|inst6|inst3|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w27_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst4~q\ : std_logic;
SIGNAL \inst5|inst7|inst|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w28_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w28_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst3~q\ : std_logic;
SIGNAL \inst5|inst6|inst3|inst1~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w29_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w29_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2~q\ : std_logic;
SIGNAL \inst5|inst7|inst1|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w31_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w30_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w30_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1~q\ : std_logic;
SIGNAL \inst5|inst7|inst2|inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w31_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst12|auto_generated|l2_w31_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst~q\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAddress[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
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
SIGNAL \ALT_INV_Branch~input_o\ : std_logic;
SIGNAL \ALT_INV_Jump~input_o\ : std_logic;
SIGNAL \inst8|inst5|inst2|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst8|inst5|inst3|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst12|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst12|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst12|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst12|auto_generated|ALT_INV_l2_w30_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst12|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst3|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst5|inst1|inst|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst1|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst2|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst1|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst2|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst2|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst1|ALT_INV_inst5~2_combout\ : std_logic;
SIGNAL \inst8|inst3|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst3|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst3|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst3|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst4|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst4|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst5|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst5|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst5|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst6|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst5|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst4|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst3|inst2|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst8|inst3|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst1|ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \inst8|inst2|inst1|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst2|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst1|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst1|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst2|inst|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst2|inst1|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst5|inst2|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst2|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst3|inst|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst3|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst3|inst2|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst5|inst3|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst4|inst|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst4|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst4|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst4|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst5|inst|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst5|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst5|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst5|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst6|inst|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst6|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst7|inst|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst7|inst1|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst5|inst7|inst2|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst3|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst5|inst6|inst|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst5|inst5|inst1|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst5|inst4|inst1|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst5|inst3|inst|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst5|inst1|inst3|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst|inst|ALT_INV_inst5~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst5~q\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst5~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst5~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst~q\ : std_logic;

BEGIN

PC31 <= ww_PC31;
ww_CLK <= CLK;
ww_Reset <= Reset;
ww_JumpAddress <= JumpAddress;
ww_BranchOffset <= BranchOffset;
ww_Jump <= Jump;
ww_Branch <= Branch;
PC30 <= ww_PC30;
PC29 <= ww_PC29;
PC28 <= ww_PC28;
PC27 <= ww_PC27;
PC26 <= ww_PC26;
PC25 <= ww_PC25;
PC24 <= ww_PC24;
PC23 <= ww_PC23;
PC22 <= ww_PC22;
PC21 <= ww_PC21;
PC20 <= ww_PC20;
PC19 <= ww_PC19;
PC18 <= ww_PC18;
PC17 <= ww_PC17;
PC16 <= ww_PC16;
PC15 <= ww_PC15;
PC14 <= ww_PC14;
PC13 <= ww_PC13;
PC12 <= ww_PC12;
PC11 <= ww_PC11;
PC10 <= ww_PC10;
PC9 <= ww_PC9;
PC8 <= ww_PC8;
PC7 <= ww_PC7;
PC6 <= ww_PC6;
PC5 <= ww_PC5;
PC4 <= ww_PC4;
PC3 <= ww_PC3;
PC2 <= ww_PC2;
PC1 <= ww_PC1;
PC0 <= ww_PC0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_JumpAddress[0]~input_o\ <= NOT \JumpAddress[0]~input_o\;
\ALT_INV_JumpAddress[1]~input_o\ <= NOT \JumpAddress[1]~input_o\;
\ALT_INV_JumpAddress[2]~input_o\ <= NOT \JumpAddress[2]~input_o\;
\ALT_INV_JumpAddress[3]~input_o\ <= NOT \JumpAddress[3]~input_o\;
\ALT_INV_JumpAddress[4]~input_o\ <= NOT \JumpAddress[4]~input_o\;
\ALT_INV_JumpAddress[5]~input_o\ <= NOT \JumpAddress[5]~input_o\;
\ALT_INV_JumpAddress[6]~input_o\ <= NOT \JumpAddress[6]~input_o\;
\ALT_INV_JumpAddress[7]~input_o\ <= NOT \JumpAddress[7]~input_o\;
\ALT_INV_JumpAddress[8]~input_o\ <= NOT \JumpAddress[8]~input_o\;
\ALT_INV_JumpAddress[9]~input_o\ <= NOT \JumpAddress[9]~input_o\;
\ALT_INV_JumpAddress[10]~input_o\ <= NOT \JumpAddress[10]~input_o\;
\ALT_INV_JumpAddress[11]~input_o\ <= NOT \JumpAddress[11]~input_o\;
\ALT_INV_JumpAddress[12]~input_o\ <= NOT \JumpAddress[12]~input_o\;
\ALT_INV_JumpAddress[13]~input_o\ <= NOT \JumpAddress[13]~input_o\;
\ALT_INV_JumpAddress[14]~input_o\ <= NOT \JumpAddress[14]~input_o\;
\ALT_INV_JumpAddress[15]~input_o\ <= NOT \JumpAddress[15]~input_o\;
\ALT_INV_JumpAddress[16]~input_o\ <= NOT \JumpAddress[16]~input_o\;
\ALT_INV_JumpAddress[17]~input_o\ <= NOT \JumpAddress[17]~input_o\;
\ALT_INV_JumpAddress[18]~input_o\ <= NOT \JumpAddress[18]~input_o\;
\ALT_INV_JumpAddress[19]~input_o\ <= NOT \JumpAddress[19]~input_o\;
\ALT_INV_JumpAddress[20]~input_o\ <= NOT \JumpAddress[20]~input_o\;
\ALT_INV_JumpAddress[21]~input_o\ <= NOT \JumpAddress[21]~input_o\;
\ALT_INV_JumpAddress[22]~input_o\ <= NOT \JumpAddress[22]~input_o\;
\ALT_INV_JumpAddress[23]~input_o\ <= NOT \JumpAddress[23]~input_o\;
\ALT_INV_JumpAddress[24]~input_o\ <= NOT \JumpAddress[24]~input_o\;
\ALT_INV_JumpAddress[25]~input_o\ <= NOT \JumpAddress[25]~input_o\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
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
\ALT_INV_Branch~input_o\ <= NOT \Branch~input_o\;
\ALT_INV_Jump~input_o\ <= NOT \Jump~input_o\;
\inst8|inst5|inst2|ALT_INV_inst3~0_combout\ <= NOT \inst8|inst5|inst2|inst3~0_combout\;
\inst8|inst5|inst3|ALT_INV_inst3~0_combout\ <= NOT \inst8|inst5|inst3|inst3~0_combout\;
\inst12|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~1_combout\ <= NOT \inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\;
\inst12|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~1_combout\ <= NOT \inst12|auto_generated|l2_w28_n0_mux_dataout~1_combout\;
\inst12|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~1_combout\ <= NOT \inst12|auto_generated|l2_w29_n0_mux_dataout~1_combout\;
\inst12|auto_generated|ALT_INV_l2_w30_n0_mux_dataout~1_combout\ <= NOT \inst12|auto_generated|l2_w30_n0_mux_dataout~1_combout\;
\inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~3_combout\ <= NOT \inst12|auto_generated|l2_w31_n0_mux_dataout~3_combout\;
\inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~2_combout\ <= NOT \inst12|auto_generated|l2_w31_n0_mux_dataout~2_combout\;
\inst12|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~1_combout\ <= NOT \inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\;
\inst8|inst|inst3|ALT_INV_inst5~combout\ <= NOT \inst8|inst|inst3|inst5~combout\;
\inst5|inst1|inst|ALT_INV_inst3~combout\ <= NOT \inst5|inst1|inst|inst3~combout\;
\inst8|inst1|inst2|ALT_INV_inst3~combout\ <= NOT \inst8|inst1|inst2|inst3~combout\;
\inst8|inst2|inst1|ALT_INV_inst3~combout\ <= NOT \inst8|inst2|inst1|inst3~combout\;
\inst8|inst1|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst1|inst3|inst5~0_combout\;
\inst5|inst2|inst1|ALT_INV_inst3~combout\ <= NOT \inst5|inst2|inst1|inst3~combout\;
\inst8|inst2|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst2|inst2|inst5~0_combout\;
\inst8|inst2|inst1|ALT_INV_inst5~2_combout\ <= NOT \inst8|inst2|inst1|inst5~2_combout\;
\inst8|inst3|inst1|ALT_INV_inst3~combout\ <= NOT \inst8|inst3|inst1|inst3~combout\;
\inst8|inst3|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst3|inst1|inst5~0_combout\;
\inst5|inst3|inst2|ALT_INV_inst3~combout\ <= NOT \inst5|inst3|inst2|inst3~combout\;
\inst8|inst3|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst3|inst3|inst5~0_combout\;
\inst8|inst4|inst3|ALT_INV_inst3~combout\ <= NOT \inst8|inst4|inst3|inst3~combout\;
\inst8|inst4|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst4|inst3|inst5~0_combout\;
\inst8|inst5|inst2|ALT_INV_inst3~combout\ <= NOT \inst8|inst5|inst2|inst3~combout\;
\inst8|inst5|inst3|ALT_INV_inst3~combout\ <= NOT \inst8|inst5|inst3|inst3~combout\;
\inst8|inst5|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst5|inst3|inst5~0_combout\;
\inst8|inst6|inst|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst6|inst|inst5~0_combout\;
\inst8|inst5|inst|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst5|inst|inst5~0_combout\;
\inst8|inst4|inst|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst4|inst|inst5~0_combout\;
\inst8|inst3|inst2|ALT_INV_inst5~1_combout\ <= NOT \inst8|inst3|inst2|inst5~1_combout\;
\inst8|inst3|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst3|inst2|inst5~0_combout\;
\inst8|inst2|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst2|inst3|inst5~0_combout\;
\inst8|inst2|inst1|ALT_INV_inst5~1_combout\ <= NOT \inst8|inst2|inst1|inst5~1_combout\;
\inst8|inst2|inst1|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst2|inst1|inst5~0_combout\;
\inst8|inst1|inst2|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst1|inst2|inst5~0_combout\;
\inst8|inst1|inst|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst1|inst|inst5~0_combout\;
\inst5|inst1|inst1|ALT_INV_inst3~combout\ <= NOT \inst5|inst1|inst1|inst3~combout\;
\inst5|inst1|inst2|ALT_INV_inst3~combout\ <= NOT \inst5|inst1|inst2|inst3~combout\;
\inst5|inst1|inst3|ALT_INV_inst3~combout\ <= NOT \inst5|inst1|inst3|inst3~combout\;
\inst5|inst2|inst|ALT_INV_inst3~combout\ <= NOT \inst5|inst2|inst|inst3~combout\;
\inst8|inst2|inst1|ALT_INV_inst~combout\ <= NOT \inst8|inst2|inst1|inst~combout\;
\inst5|inst2|inst2|ALT_INV_inst3~combout\ <= NOT \inst5|inst2|inst2|inst3~combout\;
\inst5|inst2|inst3|ALT_INV_inst3~combout\ <= NOT \inst5|inst2|inst3|inst3~combout\;
\inst5|inst3|inst|ALT_INV_inst3~combout\ <= NOT \inst5|inst3|inst|inst3~combout\;
\inst5|inst3|inst1|ALT_INV_inst3~combout\ <= NOT \inst5|inst3|inst1|inst3~combout\;
\inst8|inst3|inst2|ALT_INV_inst~combout\ <= NOT \inst8|inst3|inst2|inst~combout\;
\inst5|inst3|inst3|ALT_INV_inst3~combout\ <= NOT \inst5|inst3|inst3|inst3~combout\;
\inst5|inst4|inst|ALT_INV_inst3~combout\ <= NOT \inst5|inst4|inst|inst3~combout\;
\inst5|inst4|inst1|ALT_INV_inst3~combout\ <= NOT \inst5|inst4|inst1|inst3~combout\;
\inst5|inst4|inst2|ALT_INV_inst3~combout\ <= NOT \inst5|inst4|inst2|inst3~combout\;
\inst5|inst4|inst3|ALT_INV_inst3~combout\ <= NOT \inst5|inst4|inst3|inst3~combout\;
\inst5|inst5|inst|ALT_INV_inst3~combout\ <= NOT \inst5|inst5|inst|inst3~combout\;
\inst5|inst5|inst1|ALT_INV_inst3~combout\ <= NOT \inst5|inst5|inst1|inst3~combout\;
\inst5|inst5|inst2|ALT_INV_inst3~combout\ <= NOT \inst5|inst5|inst2|inst3~combout\;
\inst5|inst5|inst3|ALT_INV_inst3~combout\ <= NOT \inst5|inst5|inst3|inst3~combout\;
\inst5|inst6|inst|ALT_INV_inst3~combout\ <= NOT \inst5|inst6|inst|inst3~combout\;
\inst5|inst6|inst1|ALT_INV_inst3~combout\ <= NOT \inst5|inst6|inst1|inst3~combout\;
\inst5|inst6|inst2|ALT_INV_inst3~combout\ <= NOT \inst5|inst6|inst2|inst3~combout\;
\inst5|inst6|inst3|ALT_INV_inst3~combout\ <= NOT \inst5|inst6|inst3|inst3~combout\;
\inst5|inst7|inst|ALT_INV_inst3~combout\ <= NOT \inst5|inst7|inst|inst3~combout\;
\inst5|inst7|inst1|ALT_INV_inst3~combout\ <= NOT \inst5|inst7|inst1|inst3~combout\;
\inst5|inst7|inst2|ALT_INV_inst3~combout\ <= NOT \inst5|inst7|inst2|inst3~combout\;
\inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~0_combout\ <= NOT \inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\;
\inst5|inst6|inst3|ALT_INV_inst1~combout\ <= NOT \inst5|inst6|inst3|inst1~combout\;
\inst5|inst6|inst|ALT_INV_inst1~combout\ <= NOT \inst5|inst6|inst|inst1~combout\;
\inst5|inst5|inst1|ALT_INV_inst1~combout\ <= NOT \inst5|inst5|inst1|inst1~combout\;
\inst5|inst4|inst1|ALT_INV_inst1~combout\ <= NOT \inst5|inst4|inst1|inst1~combout\;
\inst5|inst3|inst|ALT_INV_inst1~combout\ <= NOT \inst5|inst3|inst|inst1~combout\;
\inst5|inst1|inst3|ALT_INV_inst1~combout\ <= NOT \inst5|inst1|inst3|inst1~combout\;
\inst|inst|ALT_INV_inst5~q\ <= NOT \inst|inst|inst5~q\;
\inst|inst|ALT_INV_inst4~q\ <= NOT \inst|inst|inst4~q\;
\inst|inst|ALT_INV_inst3~q\ <= NOT \inst|inst|inst3~q\;
\inst|inst|ALT_INV_inst2~q\ <= NOT \inst|inst|inst2~q\;
\inst|inst|ALT_INV_inst1~q\ <= NOT \inst|inst|inst1~q\;
\inst|inst|ALT_INV_inst~q\ <= NOT \inst|inst|inst~q\;
\inst|inst1|ALT_INV_inst7~q\ <= NOT \inst|inst1|inst7~q\;
\inst|inst1|ALT_INV_inst6~q\ <= NOT \inst|inst1|inst6~q\;
\inst|inst1|ALT_INV_inst5~q\ <= NOT \inst|inst1|inst5~q\;
\inst|inst1|ALT_INV_inst4~q\ <= NOT \inst|inst1|inst4~q\;
\inst|inst1|ALT_INV_inst3~q\ <= NOT \inst|inst1|inst3~q\;
\inst|inst1|ALT_INV_inst2~q\ <= NOT \inst|inst1|inst2~q\;
\inst|inst1|ALT_INV_inst1~q\ <= NOT \inst|inst1|inst1~q\;
\inst|inst1|ALT_INV_inst~q\ <= NOT \inst|inst1|inst~q\;
\inst|inst2|ALT_INV_inst7~q\ <= NOT \inst|inst2|inst7~q\;
\inst|inst2|ALT_INV_inst6~q\ <= NOT \inst|inst2|inst6~q\;
\inst|inst2|ALT_INV_inst5~q\ <= NOT \inst|inst2|inst5~q\;
\inst|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst2|inst4~q\;
\inst|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst2|inst3~q\;
\inst|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst2|inst2~q\;
\inst|inst2|ALT_INV_inst1~q\ <= NOT \inst|inst2|inst1~q\;
\inst|inst2|ALT_INV_inst~q\ <= NOT \inst|inst2|inst~q\;
\inst|inst3|ALT_INV_inst7~q\ <= NOT \inst|inst3|inst7~q\;
\inst|inst3|ALT_INV_inst6~q\ <= NOT \inst|inst3|inst6~q\;
\inst|inst3|ALT_INV_inst5~q\ <= NOT \inst|inst3|inst5~q\;
\inst|inst3|ALT_INV_inst4~q\ <= NOT \inst|inst3|inst4~q\;
\inst|inst3|ALT_INV_inst3~q\ <= NOT \inst|inst3|inst3~q\;
\inst|inst3|ALT_INV_inst2~q\ <= NOT \inst|inst3|inst2~q\;
\inst|inst3|ALT_INV_inst1~q\ <= NOT \inst|inst3|inst1~q\;
\inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst3|inst~q\;

-- Location: IOOBUF_X2_Y0_N59
\PC31~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst~q\,
	devoe => ww_devoe,
	o => ww_PC31);

-- Location: IOOBUF_X6_Y0_N36
\PC30~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst1~q\,
	devoe => ww_devoe,
	o => ww_PC30);

-- Location: IOOBUF_X2_Y0_N76
\PC29~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst2~q\,
	devoe => ww_devoe,
	o => ww_PC29);

-- Location: IOOBUF_X2_Y0_N42
\PC28~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst3~q\,
	devoe => ww_devoe,
	o => ww_PC28);

-- Location: IOOBUF_X6_Y0_N19
\PC27~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst4~q\,
	devoe => ww_devoe,
	o => ww_PC27);

-- Location: IOOBUF_X58_Y0_N76
\PC26~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC26);

-- Location: IOOBUF_X58_Y0_N93
\PC25~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC25);

-- Location: IOOBUF_X56_Y0_N19
\PC24~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC24);

-- Location: IOOBUF_X28_Y0_N2
\PC23~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst~q\,
	devoe => ww_devoe,
	o => ww_PC23);

-- Location: IOOBUF_X28_Y0_N53
\PC22~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst1~q\,
	devoe => ww_devoe,
	o => ww_PC22);

-- Location: IOOBUF_X50_Y0_N42
\PC21~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst2~q\,
	devoe => ww_devoe,
	o => ww_PC21);

-- Location: IOOBUF_X40_Y0_N2
\PC20~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst3~q\,
	devoe => ww_devoe,
	o => ww_PC20);

-- Location: IOOBUF_X60_Y0_N2
\PC19~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst4~q\,
	devoe => ww_devoe,
	o => ww_PC19);

-- Location: IOOBUF_X6_Y0_N2
\PC18~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC18);

-- Location: IOOBUF_X4_Y0_N36
\PC17~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC17);

-- Location: IOOBUF_X8_Y0_N19
\PC16~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC16);

-- Location: IOOBUF_X56_Y0_N36
\PC15~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst~q\,
	devoe => ww_devoe,
	o => ww_PC15);

-- Location: IOOBUF_X26_Y0_N76
\PC14~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst1~q\,
	devoe => ww_devoe,
	o => ww_PC14);

-- Location: IOOBUF_X26_Y0_N93
\PC13~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst2~q\,
	devoe => ww_devoe,
	o => ww_PC13);

-- Location: IOOBUF_X60_Y0_N53
\PC12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst3~q\,
	devoe => ww_devoe,
	o => ww_PC12);

-- Location: IOOBUF_X60_Y0_N36
\PC11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst4~q\,
	devoe => ww_devoe,
	o => ww_PC11);

-- Location: IOOBUF_X34_Y0_N76
\PC10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC10);

-- Location: IOOBUF_X36_Y0_N36
\PC9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst6~q\,
	devoe => ww_devoe,
	o => ww_PC9);

-- Location: IOOBUF_X34_Y0_N93
\PC8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst7~q\,
	devoe => ww_devoe,
	o => ww_PC8);

-- Location: IOOBUF_X52_Y0_N2
\PC7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst~q\,
	devoe => ww_devoe,
	o => ww_PC7);

-- Location: IOOBUF_X54_Y0_N19
\PC6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst1~q\,
	devoe => ww_devoe,
	o => ww_PC6);

-- Location: IOOBUF_X58_Y0_N42
\PC5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst2~q\,
	devoe => ww_devoe,
	o => ww_PC5);

-- Location: IOOBUF_X32_Y0_N2
\PC4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst3~q\,
	devoe => ww_devoe,
	o => ww_PC4);

-- Location: IOOBUF_X52_Y0_N36
\PC3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst4~q\,
	devoe => ww_devoe,
	o => ww_PC3);

-- Location: IOOBUF_X38_Y0_N53
\PC2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst5~q\,
	devoe => ww_devoe,
	o => ww_PC2);

-- Location: IOOBUF_X56_Y81_N19
\PC1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC1);

-- Location: IOOBUF_X74_Y81_N76
\PC0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC0);

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

-- Location: IOIBUF_X26_Y0_N58
\BranchOffset[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(15),
	o => \BranchOffset[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\JumpAddress[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(23),
	o => \JumpAddress[23]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\JumpAddress[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(22),
	o => \JumpAddress[22]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\Jump~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Jump,
	o => \Jump~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\JumpAddress[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(21),
	o => \JumpAddress[21]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\Branch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Branch,
	o => \Branch~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\JumpAddress[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(20),
	o => \JumpAddress[20]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\JumpAddress[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(19),
	o => \JumpAddress[19]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\JumpAddress[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(7),
	o => \JumpAddress[7]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\BranchOffset[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(5),
	o => \BranchOffset[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\BranchOffset[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(2),
	o => \BranchOffset[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\BranchOffset[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(0),
	o => \BranchOffset[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\JumpAddress[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(2),
	o => \JumpAddress[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\JumpAddress[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(0),
	o => \JumpAddress[0]~input_o\);

-- Location: LABCELL_X19_Y2_N3
\inst12|auto_generated|l2_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w2_n0_mux_dataout~0_combout\ = ( \BranchOffset[0]~input_o\ & ( \inst|inst|inst5~q\ & ( (!\Jump~input_o\ & ((\Branch~input_o\))) # (\Jump~input_o\ & (\JumpAddress[0]~input_o\ & !\Branch~input_o\)) ) ) ) # ( 
-- !\BranchOffset[0]~input_o\ & ( \inst|inst|inst5~q\ & ( (\Jump~input_o\ & (\JumpAddress[0]~input_o\ & !\Branch~input_o\)) ) ) ) # ( \BranchOffset[0]~input_o\ & ( !\inst|inst|inst5~q\ & ( (!\Jump~input_o\ & ((!\Branch~input_o\))) # (\Jump~input_o\ & 
-- ((\Branch~input_o\) # (\JumpAddress[0]~input_o\))) ) ) ) # ( !\BranchOffset[0]~input_o\ & ( !\inst|inst|inst5~q\ & ( (!\Jump~input_o\) # ((\Branch~input_o\) # (\JumpAddress[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111101110110101010100010001000000000001000110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_JumpAddress[0]~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \ALT_INV_BranchOffset[0]~input_o\,
	dataf => \inst|inst|ALT_INV_inst5~q\,
	combout => \inst12|auto_generated|l2_w2_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X8_Y0_N52
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X18_Y2_N32
\inst|inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst12|auto_generated|l2_w2_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5~q\);

-- Location: IOIBUF_X32_Y0_N52
\BranchOffset[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(1),
	o => \BranchOffset[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\JumpAddress[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(1),
	o => \JumpAddress[1]~input_o\);

-- Location: LABCELL_X19_Y2_N21
\inst12|auto_generated|l2_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w3_n0_mux_dataout~0_combout\ = ( !\Branch~input_o\ & ( ((!\Jump~input_o\ & (!\inst|inst|inst5~q\ $ (((!\inst|inst|inst4~q\))))) # (\Jump~input_o\ & (((\JumpAddress[1]~input_o\))))) ) ) # ( \Branch~input_o\ & ( 
-- !\inst|inst|inst4~q\ $ (((!\Jump~input_o\ & (!\BranchOffset[1]~input_o\ $ (((\BranchOffset[0]~input_o\) # (\inst|inst|inst5~q\))))) # (\Jump~input_o\ & (!\inst|inst|inst5~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010110101010011110001000011100001111000011110101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|ALT_INV_inst5~q\,
	datab => \ALT_INV_BranchOffset[0]~input_o\,
	datac => \ALT_INV_BranchOffset[1]~input_o\,
	datad => \inst|inst|ALT_INV_inst4~q\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	datag => \ALT_INV_JumpAddress[1]~input_o\,
	combout => \inst12|auto_generated|l2_w3_n0_mux_dataout~0_combout\);

-- Location: FF_X18_Y2_N56
\inst|inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst12|auto_generated|l2_w3_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst4~q\);

-- Location: LABCELL_X19_Y2_N27
\inst8|inst|inst3|inst5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst3|inst5~combout\ = ( \inst|inst|inst5~q\ & ( (!\inst|inst|inst4~q\ & \BranchOffset[1]~input_o\) ) ) # ( !\inst|inst|inst5~q\ & ( (!\inst|inst|inst4~q\ & (\BranchOffset[0]~input_o\ & \BranchOffset[1]~input_o\)) # (\inst|inst|inst4~q\ & 
-- ((\BranchOffset[1]~input_o\) # (\BranchOffset[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|ALT_INV_inst4~q\,
	datac => \ALT_INV_BranchOffset[0]~input_o\,
	datad => \ALT_INV_BranchOffset[1]~input_o\,
	dataf => \inst|inst|ALT_INV_inst5~q\,
	combout => \inst8|inst|inst3|inst5~combout\);

-- Location: LABCELL_X19_Y2_N24
\inst5|inst1|inst|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|inst3~combout\ = ( \inst|inst|inst5~q\ & ( !\inst|inst|inst4~q\ $ (!\inst|inst|inst3~q\) ) ) # ( !\inst|inst|inst5~q\ & ( \inst|inst|inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|ALT_INV_inst4~q\,
	datad => \inst|inst|ALT_INV_inst3~q\,
	dataf => \inst|inst|ALT_INV_inst5~q\,
	combout => \inst5|inst1|inst|inst3~combout\);

-- Location: LABCELL_X19_Y2_N6
\inst12|auto_generated|l2_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w4_n0_mux_dataout~0_combout\ = ( \inst8|inst|inst3|inst5~combout\ & ( \inst5|inst1|inst|inst3~combout\ & ( (!\Jump~input_o\ & (((!\Branch~input_o\) # (\BranchOffset[2]~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\)) # 
-- (\JumpAddress[2]~input_o\))) ) ) ) # ( !\inst8|inst|inst3|inst5~combout\ & ( \inst5|inst1|inst|inst3~combout\ & ( (!\Jump~input_o\ & (((!\BranchOffset[2]~input_o\) # (!\Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\)) # 
-- (\JumpAddress[2]~input_o\))) ) ) ) # ( \inst8|inst|inst3|inst5~combout\ & ( !\inst5|inst1|inst|inst3~combout\ & ( (!\Jump~input_o\ & (((!\BranchOffset[2]~input_o\ & \Branch~input_o\)))) # (\Jump~input_o\ & (\JumpAddress[2]~input_o\ & 
-- ((!\Branch~input_o\)))) ) ) ) # ( !\inst8|inst|inst3|inst5~combout\ & ( !\inst5|inst1|inst|inst3~combout\ & ( (!\Jump~input_o\ & (((\BranchOffset[2]~input_o\ & \Branch~input_o\)))) # (\Jump~input_o\ & (\JumpAddress[2]~input_o\ & ((!\Branch~input_o\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001011100000011110101110011111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAddress[2]~input_o\,
	datab => \ALT_INV_BranchOffset[2]~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \inst8|inst|inst3|ALT_INV_inst5~combout\,
	dataf => \inst5|inst1|inst|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w4_n0_mux_dataout~0_combout\);

-- Location: FF_X18_Y2_N29
\inst|inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst12|auto_generated|l2_w4_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst3~q\);

-- Location: LABCELL_X18_Y2_N24
\inst8|inst1|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst|inst5~0_combout\ = ( \inst|inst|inst4~q\ & ( \inst|inst|inst5~q\ & ( (\BranchOffset[2]~input_o\ & !\inst|inst|inst3~q\) ) ) ) # ( !\inst|inst|inst4~q\ & ( \inst|inst|inst5~q\ & ( (!\BranchOffset[2]~input_o\ & (\inst|inst|inst3~q\ & 
-- \BranchOffset[1]~input_o\)) # (\BranchOffset[2]~input_o\ & ((\BranchOffset[1]~input_o\) # (\inst|inst|inst3~q\))) ) ) ) # ( \inst|inst|inst4~q\ & ( !\inst|inst|inst5~q\ & ( (!\BranchOffset[2]~input_o\ & (\inst|inst|inst3~q\ & ((\BranchOffset[1]~input_o\) 
-- # (\BranchOffset[0]~input_o\)))) # (\BranchOffset[2]~input_o\ & (((\BranchOffset[1]~input_o\) # (\inst|inst|inst3~q\)) # (\BranchOffset[0]~input_o\))) ) ) ) # ( !\inst|inst|inst4~q\ & ( !\inst|inst|inst5~q\ & ( (!\BranchOffset[2]~input_o\ & 
-- (\BranchOffset[0]~input_o\ & (\inst|inst|inst3~q\ & \BranchOffset[1]~input_o\))) # (\BranchOffset[2]~input_o\ & (((\BranchOffset[0]~input_o\ & \BranchOffset[1]~input_o\)) # (\inst|inst|inst3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000101110101111100000101010111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[2]~input_o\,
	datab => \ALT_INV_BranchOffset[0]~input_o\,
	datac => \inst|inst|ALT_INV_inst3~q\,
	datad => \ALT_INV_BranchOffset[1]~input_o\,
	datae => \inst|inst|ALT_INV_inst4~q\,
	dataf => \inst|inst|ALT_INV_inst5~q\,
	combout => \inst8|inst1|inst|inst5~0_combout\);

-- Location: IOIBUF_X32_Y0_N35
\BranchOffset[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(3),
	o => \BranchOffset[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\JumpAddress[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(3),
	o => \JumpAddress[3]~input_o\);

-- Location: LABCELL_X18_Y2_N15
\inst5|inst1|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst1|inst3~combout\ = ( \inst|inst|inst5~q\ & ( !\inst|inst|inst2~q\ $ (((!\inst|inst|inst3~q\) # (!\inst|inst|inst4~q\))) ) ) # ( !\inst|inst|inst5~q\ & ( \inst|inst|inst2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|ALT_INV_inst2~q\,
	datac => \inst|inst|ALT_INV_inst3~q\,
	datad => \inst|inst|ALT_INV_inst4~q\,
	dataf => \inst|inst|ALT_INV_inst5~q\,
	combout => \inst5|inst1|inst1|inst3~combout\);

-- Location: LABCELL_X19_Y2_N54
\inst12|auto_generated|l2_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w5_n0_mux_dataout~0_combout\ = ( \Branch~input_o\ & ( \inst5|inst1|inst1|inst3~combout\ & ( (!\inst8|inst1|inst|inst5~0_combout\ $ (\BranchOffset[3]~input_o\)) # (\Jump~input_o\) ) ) ) # ( !\Branch~input_o\ & ( 
-- \inst5|inst1|inst1|inst3~combout\ & ( (!\Jump~input_o\) # (\JumpAddress[3]~input_o\) ) ) ) # ( \Branch~input_o\ & ( !\inst5|inst1|inst1|inst3~combout\ & ( (!\Jump~input_o\ & (!\inst8|inst1|inst|inst5~0_combout\ $ (!\BranchOffset[3]~input_o\))) ) ) ) # ( 
-- !\Branch~input_o\ & ( !\inst5|inst1|inst1|inst3~combout\ & ( (\Jump~input_o\ & \JumpAddress[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111011000000110000011110000111111111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_BranchOffset[3]~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \ALT_INV_JumpAddress[3]~input_o\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \inst5|inst1|inst1|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w5_n0_mux_dataout~0_combout\);

-- Location: FF_X18_Y2_N2
\inst|inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst12|auto_generated|l2_w5_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst2~q\);

-- Location: IOIBUF_X50_Y0_N75
\JumpAddress[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(4),
	o => \JumpAddress[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\BranchOffset[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(4),
	o => \BranchOffset[4]~input_o\);

-- Location: LABCELL_X18_Y2_N18
\inst5|inst1|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst2|inst3~combout\ = ( \inst|inst|inst1~q\ & ( (!\inst|inst|inst3~q\) # ((!\inst|inst|inst5~q\) # ((!\inst|inst|inst4~q\) # (!\inst|inst|inst2~q\))) ) ) # ( !\inst|inst|inst1~q\ & ( (\inst|inst|inst3~q\ & (\inst|inst|inst5~q\ & 
-- (\inst|inst|inst4~q\ & \inst|inst|inst2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|ALT_INV_inst3~q\,
	datab => \inst|inst|ALT_INV_inst5~q\,
	datac => \inst|inst|ALT_INV_inst4~q\,
	datad => \inst|inst|ALT_INV_inst2~q\,
	dataf => \inst|inst|ALT_INV_inst1~q\,
	combout => \inst5|inst1|inst2|inst3~combout\);

-- Location: LABCELL_X19_Y2_N36
\inst8|inst1|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst2|inst3~combout\ = ( \BranchOffset[3]~input_o\ & ( \inst5|inst1|inst1|inst3~combout\ & ( !\BranchOffset[4]~input_o\ $ (\inst5|inst1|inst2|inst3~combout\) ) ) ) # ( !\BranchOffset[3]~input_o\ & ( \inst5|inst1|inst1|inst3~combout\ & ( 
-- !\inst8|inst1|inst|inst5~0_combout\ $ (!\BranchOffset[4]~input_o\ $ (\inst5|inst1|inst2|inst3~combout\)) ) ) ) # ( \BranchOffset[3]~input_o\ & ( !\inst5|inst1|inst1|inst3~combout\ & ( !\inst8|inst1|inst|inst5~0_combout\ $ (!\BranchOffset[4]~input_o\ $ 
-- (\inst5|inst1|inst2|inst3~combout\)) ) ) ) # ( !\BranchOffset[3]~input_o\ & ( !\inst5|inst1|inst1|inst3~combout\ & ( !\BranchOffset[4]~input_o\ $ (!\inst5|inst1|inst2|inst3~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100011010010110100101101001011010011100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_BranchOffset[4]~input_o\,
	datac => \inst5|inst1|inst2|ALT_INV_inst3~combout\,
	datae => \ALT_INV_BranchOffset[3]~input_o\,
	dataf => \inst5|inst1|inst1|ALT_INV_inst3~combout\,
	combout => \inst8|inst1|inst2|inst3~combout\);

-- Location: LABCELL_X18_Y2_N6
\inst12|auto_generated|l2_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w6_n0_mux_dataout~0_combout\ = ( \inst5|inst1|inst2|inst3~combout\ & ( (!\Jump~input_o\ & ((!\Branch~input_o\) # ((\inst8|inst1|inst2|inst3~combout\)))) # (\Jump~input_o\ & (((\JumpAddress[4]~input_o\)) # (\Branch~input_o\))) ) ) 
-- # ( !\inst5|inst1|inst2|inst3~combout\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & ((\inst8|inst1|inst2|inst3~combout\)))) # (\Jump~input_o\ & (!\Branch~input_o\ & (\JumpAddress[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010011101101111111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAddress[4]~input_o\,
	datad => \inst8|inst1|inst2|ALT_INV_inst3~combout\,
	dataf => \inst5|inst1|inst2|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w6_n0_mux_dataout~0_combout\);

-- Location: FF_X18_Y2_N8
\inst|inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w6_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1~q\);

-- Location: IOIBUF_X30_Y0_N18
\JumpAddress[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(5),
	o => \JumpAddress[5]~input_o\);

-- Location: LABCELL_X18_Y2_N42
\inst8|inst1|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst2|inst5~0_combout\ = ( \inst5|inst1|inst1|inst3~combout\ & ( (!\inst5|inst1|inst2|inst3~combout\ & (\BranchOffset[4]~input_o\ & ((\BranchOffset[3]~input_o\) # (\inst8|inst1|inst|inst5~0_combout\)))) # (\inst5|inst1|inst2|inst3~combout\ & 
-- (((\BranchOffset[4]~input_o\) # (\BranchOffset[3]~input_o\)) # (\inst8|inst1|inst|inst5~0_combout\))) ) ) # ( !\inst5|inst1|inst1|inst3~combout\ & ( (!\inst5|inst1|inst2|inst3~combout\ & (\inst8|inst1|inst|inst5~0_combout\ & (\BranchOffset[3]~input_o\ & 
-- \BranchOffset[4]~input_o\))) # (\inst5|inst1|inst2|inst3~combout\ & (((\inst8|inst1|inst|inst5~0_combout\ & \BranchOffset[3]~input_o\)) # (\BranchOffset[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_BranchOffset[3]~input_o\,
	datac => \inst5|inst1|inst2|ALT_INV_inst3~combout\,
	datad => \ALT_INV_BranchOffset[4]~input_o\,
	dataf => \inst5|inst1|inst1|ALT_INV_inst3~combout\,
	combout => \inst8|inst1|inst2|inst5~0_combout\);

-- Location: LABCELL_X19_Y2_N42
\inst12|auto_generated|l2_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w7_n0_mux_dataout~0_combout\ = ( \JumpAddress[5]~input_o\ & ( \inst8|inst1|inst2|inst5~0_combout\ & ( (!\Jump~input_o\ & (!\inst5|inst1|inst3|inst3~combout\ $ (((!\Branch~input_o\) # (\BranchOffset[5]~input_o\))))) # 
-- (\Jump~input_o\ & (((!\Branch~input_o\) # (\inst5|inst1|inst3|inst3~combout\)))) ) ) ) # ( !\JumpAddress[5]~input_o\ & ( \inst8|inst1|inst2|inst5~0_combout\ & ( (!\Jump~input_o\ & (!\inst5|inst1|inst3|inst3~combout\ $ (((!\Branch~input_o\) # 
-- (\BranchOffset[5]~input_o\))))) # (\Jump~input_o\ & (((\Branch~input_o\ & \inst5|inst1|inst3|inst3~combout\)))) ) ) ) # ( \JumpAddress[5]~input_o\ & ( !\inst8|inst1|inst2|inst5~0_combout\ & ( (!\Jump~input_o\ & (!\inst5|inst1|inst3|inst3~combout\ $ 
-- (((!\BranchOffset[5]~input_o\) # (!\Branch~input_o\))))) # (\Jump~input_o\ & (((!\Branch~input_o\) # (\inst5|inst1|inst3|inst3~combout\)))) ) ) ) # ( !\JumpAddress[5]~input_o\ & ( !\inst8|inst1|inst2|inst5~0_combout\ & ( (!\Jump~input_o\ & 
-- (!\inst5|inst1|inst3|inst3~combout\ $ (((!\BranchOffset[5]~input_o\) # (!\Branch~input_o\))))) # (\Jump~input_o\ & (((\Branch~input_o\ & \inst5|inst1|inst3|inst3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101101010100101111110100001000101001110101100011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_BranchOffset[5]~input_o\,
	datac => \ALT_INV_Branch~input_o\,
	datad => \inst5|inst1|inst3|ALT_INV_inst3~combout\,
	datae => \ALT_INV_JumpAddress[5]~input_o\,
	dataf => \inst8|inst1|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w7_n0_mux_dataout~0_combout\);

-- Location: FF_X18_Y2_N41
\inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst12|auto_generated|l2_w7_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst~q\);

-- Location: LABCELL_X18_Y2_N36
\inst5|inst1|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst3|inst3~combout\ = ( \inst|inst|inst3~q\ & ( \inst|inst|inst5~q\ & ( !\inst|inst|inst~q\ $ (((!\inst|inst|inst2~q\) # ((!\inst|inst|inst1~q\) # (!\inst|inst|inst4~q\)))) ) ) ) # ( !\inst|inst|inst3~q\ & ( \inst|inst|inst5~q\ & ( 
-- \inst|inst|inst~q\ ) ) ) # ( \inst|inst|inst3~q\ & ( !\inst|inst|inst5~q\ & ( \inst|inst|inst~q\ ) ) ) # ( !\inst|inst|inst3~q\ & ( !\inst|inst|inst5~q\ & ( \inst|inst|inst~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|ALT_INV_inst2~q\,
	datab => \inst|inst|ALT_INV_inst1~q\,
	datac => \inst|inst|ALT_INV_inst4~q\,
	datad => \inst|inst|ALT_INV_inst~q\,
	datae => \inst|inst|ALT_INV_inst3~q\,
	dataf => \inst|inst|ALT_INV_inst5~q\,
	combout => \inst5|inst1|inst3|inst3~combout\);

-- Location: LABCELL_X18_Y2_N45
\inst8|inst1|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst3|inst5~0_combout\ = ( \inst8|inst1|inst2|inst5~0_combout\ & ( (\inst5|inst1|inst3|inst3~combout\) # (\BranchOffset[5]~input_o\) ) ) # ( !\inst8|inst1|inst2|inst5~0_combout\ & ( (\BranchOffset[5]~input_o\ & 
-- \inst5|inst1|inst3|inst3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BranchOffset[5]~input_o\,
	datad => \inst5|inst1|inst3|ALT_INV_inst3~combout\,
	dataf => \inst8|inst1|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst8|inst1|inst3|inst5~0_combout\);

-- Location: IOIBUF_X34_Y0_N58
\BranchOffset[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(6),
	o => \BranchOffset[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\BranchOffset[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(7),
	o => \BranchOffset[7]~input_o\);

-- Location: LABCELL_X18_Y2_N33
\inst5|inst1|inst3|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst3|inst1~combout\ = ( \inst|inst|inst4~q\ & ( \inst|inst|inst1~q\ & ( (\inst|inst|inst2~q\ & (\inst|inst|inst5~q\ & (\inst|inst|inst~q\ & \inst|inst|inst3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|ALT_INV_inst2~q\,
	datab => \inst|inst|ALT_INV_inst5~q\,
	datac => \inst|inst|ALT_INV_inst~q\,
	datad => \inst|inst|ALT_INV_inst3~q\,
	datae => \inst|inst|ALT_INV_inst4~q\,
	dataf => \inst|inst|ALT_INV_inst1~q\,
	combout => \inst5|inst1|inst3|inst1~combout\);

-- Location: IOIBUF_X6_Y0_N52
\JumpAddress[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(6),
	o => \JumpAddress[6]~input_o\);

-- Location: LABCELL_X18_Y2_N21
\inst5|inst2|inst|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst|inst3~combout\ = ( \inst5|inst1|inst3|inst1~combout\ & ( !\inst|inst1|inst7~q\ ) ) # ( !\inst5|inst1|inst3|inst1~combout\ & ( \inst|inst1|inst7~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|ALT_INV_inst7~q\,
	dataf => \inst5|inst1|inst3|ALT_INV_inst1~combout\,
	combout => \inst5|inst2|inst|inst3~combout\);

-- Location: LABCELL_X17_Y2_N6
\inst12|auto_generated|l2_w8_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w8_n0_mux_dataout~0_combout\ = ( \Branch~input_o\ & ( \inst5|inst2|inst|inst3~combout\ & ( (!\inst8|inst1|inst3|inst5~0_combout\ $ (\BranchOffset[6]~input_o\)) # (\Jump~input_o\) ) ) ) # ( !\Branch~input_o\ & ( 
-- \inst5|inst2|inst|inst3~combout\ & ( (!\Jump~input_o\) # (\JumpAddress[6]~input_o\) ) ) ) # ( \Branch~input_o\ & ( !\inst5|inst2|inst|inst3~combout\ & ( (!\Jump~input_o\ & (!\inst8|inst1|inst3|inst5~0_combout\ $ (!\BranchOffset[6]~input_o\))) ) ) ) # ( 
-- !\Branch~input_o\ & ( !\inst5|inst2|inst|inst3~combout\ & ( (\Jump~input_o\ & \JumpAddress[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010101010000010111011101110111111010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_JumpAddress[6]~input_o\,
	datac => \inst8|inst1|inst3|ALT_INV_inst5~0_combout\,
	datad => \ALT_INV_BranchOffset[6]~input_o\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \inst5|inst2|inst|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w8_n0_mux_dataout~0_combout\);

-- Location: FF_X17_Y2_N8
\inst|inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w8_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst7~q\);

-- Location: LABCELL_X17_Y2_N45
\inst5|inst2|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst1|inst3~combout\ = ( \inst|inst1|inst7~q\ & ( !\inst5|inst1|inst3|inst1~combout\ $ (!\inst|inst1|inst6~q\) ) ) # ( !\inst|inst1|inst7~q\ & ( \inst|inst1|inst6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst3|ALT_INV_inst1~combout\,
	datad => \inst|inst1|ALT_INV_inst6~q\,
	dataf => \inst|inst1|ALT_INV_inst7~q\,
	combout => \inst5|inst2|inst1|inst3~combout\);

-- Location: LABCELL_X17_Y2_N48
\inst8|inst2|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst1|inst3~combout\ = ( \inst5|inst2|inst|inst3~combout\ & ( !\BranchOffset[7]~input_o\ $ (!\inst5|inst2|inst1|inst3~combout\ $ (((\BranchOffset[6]~input_o\) # (\inst8|inst1|inst3|inst5~0_combout\)))) ) ) # ( 
-- !\inst5|inst2|inst|inst3~combout\ & ( !\BranchOffset[7]~input_o\ $ (!\inst5|inst2|inst1|inst3~combout\ $ (((\inst8|inst1|inst3|inst5~0_combout\ & \BranchOffset[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst3|ALT_INV_inst5~0_combout\,
	datab => \ALT_INV_BranchOffset[6]~input_o\,
	datac => \ALT_INV_BranchOffset[7]~input_o\,
	datad => \inst5|inst2|inst1|ALT_INV_inst3~combout\,
	dataf => \inst5|inst2|inst|ALT_INV_inst3~combout\,
	combout => \inst8|inst2|inst1|inst3~combout\);

-- Location: LABCELL_X18_Y2_N9
\inst12|auto_generated|l2_w9_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w9_n0_mux_dataout~0_combout\ = ( \inst5|inst2|inst1|inst3~combout\ & ( (!\Jump~input_o\ & ((!\Branch~input_o\) # ((\inst8|inst2|inst1|inst3~combout\)))) # (\Jump~input_o\ & (((\JumpAddress[7]~input_o\)) # (\Branch~input_o\))) ) ) 
-- # ( !\inst5|inst2|inst1|inst3~combout\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & ((\inst8|inst2|inst1|inst3~combout\)))) # (\Jump~input_o\ & (!\Branch~input_o\ & (\JumpAddress[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010011101101111111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \ALT_INV_JumpAddress[7]~input_o\,
	datad => \inst8|inst2|inst1|ALT_INV_inst3~combout\,
	dataf => \inst5|inst2|inst1|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w9_n0_mux_dataout~0_combout\);

-- Location: FF_X18_Y2_N11
\inst|inst1|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w9_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst6~q\);

-- Location: LABCELL_X18_Y2_N12
\inst8|inst2|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst1|inst~combout\ = ( \inst5|inst1|inst3|inst1~combout\ & ( (\BranchOffset[7]~input_o\ & (!\inst|inst1|inst6~q\ $ (!\inst|inst1|inst7~q\))) ) ) # ( !\inst5|inst1|inst3|inst1~combout\ & ( (\inst|inst1|inst6~q\ & \BranchOffset[7]~input_o\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|ALT_INV_inst6~q\,
	datac => \ALT_INV_BranchOffset[7]~input_o\,
	datad => \inst|inst1|ALT_INV_inst7~q\,
	dataf => \inst5|inst1|inst3|ALT_INV_inst1~combout\,
	combout => \inst8|inst2|inst1|inst~combout\);

-- Location: LABCELL_X18_Y2_N48
\inst8|inst2|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst1|inst5~0_combout\ = ( \inst5|inst1|inst3|inst1~combout\ & ( (!\BranchOffset[7]~input_o\ & (!\inst|inst1|inst6~q\ $ (\inst|inst1|inst7~q\))) ) ) # ( !\inst5|inst1|inst3|inst1~combout\ & ( (!\inst|inst1|inst6~q\ & 
-- !\BranchOffset[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|ALT_INV_inst6~q\,
	datac => \ALT_INV_BranchOffset[7]~input_o\,
	datad => \inst|inst1|ALT_INV_inst7~q\,
	dataf => \inst5|inst1|inst3|ALT_INV_inst1~combout\,
	combout => \inst8|inst2|inst1|inst5~0_combout\);

-- Location: LABCELL_X18_Y3_N18
\inst8|inst2|inst1|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst1|inst5~1_combout\ = ( !\inst8|inst2|inst1|inst5~0_combout\ & ( \inst8|inst1|inst2|inst5~0_combout\ & ( (!\BranchOffset[6]~input_o\ & (\inst5|inst2|inst|inst3~combout\ & ((\inst5|inst1|inst3|inst3~combout\) # 
-- (\BranchOffset[5]~input_o\)))) # (\BranchOffset[6]~input_o\ & (((\inst5|inst1|inst3|inst3~combout\) # (\inst5|inst2|inst|inst3~combout\)) # (\BranchOffset[5]~input_o\))) ) ) ) # ( !\inst8|inst2|inst1|inst5~0_combout\ & ( 
-- !\inst8|inst1|inst2|inst5~0_combout\ & ( (!\BranchOffset[6]~input_o\ & (\BranchOffset[5]~input_o\ & (\inst5|inst2|inst|inst3~combout\ & \inst5|inst1|inst3|inst3~combout\))) # (\BranchOffset[6]~input_o\ & (((\BranchOffset[5]~input_o\ & 
-- \inst5|inst1|inst3|inst3~combout\)) # (\inst5|inst2|inst|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000000000000000000010111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[6]~input_o\,
	datab => \ALT_INV_BranchOffset[5]~input_o\,
	datac => \inst5|inst2|inst|ALT_INV_inst3~combout\,
	datad => \inst5|inst1|inst3|ALT_INV_inst3~combout\,
	datae => \inst8|inst2|inst1|ALT_INV_inst5~0_combout\,
	dataf => \inst8|inst1|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst8|inst2|inst1|inst5~1_combout\);

-- Location: LABCELL_X18_Y3_N15
\inst8|inst2|inst1|inst5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst1|inst5~2_combout\ = ( !\inst8|inst2|inst1|inst5~1_combout\ & ( !\inst8|inst2|inst1|inst~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|inst1|ALT_INV_inst~combout\,
	dataf => \inst8|inst2|inst1|ALT_INV_inst5~1_combout\,
	combout => \inst8|inst2|inst1|inst5~2_combout\);

-- Location: IOIBUF_X56_Y0_N52
\BranchOffset[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(8),
	o => \BranchOffset[8]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\JumpAddress[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(8),
	o => \JumpAddress[8]~input_o\);

-- Location: LABCELL_X18_Y2_N51
\inst5|inst2|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst2|inst3~combout\ = ( \inst5|inst1|inst3|inst1~combout\ & ( !\inst|inst1|inst5~q\ $ (((!\inst|inst1|inst6~q\) # (!\inst|inst1|inst7~q\))) ) ) # ( !\inst5|inst1|inst3|inst1~combout\ & ( \inst|inst1|inst5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|ALT_INV_inst6~q\,
	datac => \inst|inst1|ALT_INV_inst5~q\,
	datad => \inst|inst1|ALT_INV_inst7~q\,
	dataf => \inst5|inst1|inst3|ALT_INV_inst1~combout\,
	combout => \inst5|inst2|inst2|inst3~combout\);

-- Location: LABCELL_X17_Y2_N54
\inst12|auto_generated|l2_w10_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w10_n0_mux_dataout~0_combout\ = ( \JumpAddress[8]~input_o\ & ( \inst5|inst2|inst2|inst3~combout\ & ( ((!\Branch~input_o\) # (!\inst8|inst2|inst1|inst5~2_combout\ $ (!\BranchOffset[8]~input_o\))) # (\Jump~input_o\) ) ) ) # ( 
-- !\JumpAddress[8]~input_o\ & ( \inst5|inst2|inst2|inst3~combout\ & ( (!\Jump~input_o\ & ((!\Branch~input_o\) # (!\inst8|inst2|inst1|inst5~2_combout\ $ (!\BranchOffset[8]~input_o\)))) # (\Jump~input_o\ & (\Branch~input_o\)) ) ) ) # ( 
-- \JumpAddress[8]~input_o\ & ( !\inst5|inst2|inst2|inst3~combout\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & (!\inst8|inst2|inst1|inst5~2_combout\ $ (\BranchOffset[8]~input_o\)))) # (\Jump~input_o\ & (!\Branch~input_o\)) ) ) ) # ( !\JumpAddress[8]~input_o\ 
-- & ( !\inst5|inst2|inst2|inst3~combout\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & (!\inst8|inst2|inst1|inst5~2_combout\ $ (\BranchOffset[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010011001000100011010011011101110011101111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \inst8|inst2|inst1|ALT_INV_inst5~2_combout\,
	datad => \ALT_INV_BranchOffset[8]~input_o\,
	datae => \ALT_INV_JumpAddress[8]~input_o\,
	dataf => \inst5|inst2|inst2|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w10_n0_mux_dataout~0_combout\);

-- Location: FF_X17_Y2_N56
\inst|inst1|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w10_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst5~q\);

-- Location: IOIBUF_X34_Y0_N41
\BranchOffset[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(9),
	o => \BranchOffset[9]~input_o\);

-- Location: LABCELL_X18_Y2_N57
\inst5|inst2|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst3|inst3~combout\ = ( \inst|inst1|inst4~q\ & ( \inst5|inst1|inst3|inst1~combout\ & ( (!\inst|inst1|inst6~q\) # ((!\inst|inst1|inst5~q\) # (!\inst|inst1|inst7~q\)) ) ) ) # ( !\inst|inst1|inst4~q\ & ( \inst5|inst1|inst3|inst1~combout\ & ( 
-- (\inst|inst1|inst6~q\ & (\inst|inst1|inst5~q\ & \inst|inst1|inst7~q\)) ) ) ) # ( \inst|inst1|inst4~q\ & ( !\inst5|inst1|inst3|inst1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|ALT_INV_inst6~q\,
	datac => \inst|inst1|ALT_INV_inst5~q\,
	datad => \inst|inst1|ALT_INV_inst7~q\,
	datae => \inst|inst1|ALT_INV_inst4~q\,
	dataf => \inst5|inst1|inst3|ALT_INV_inst1~combout\,
	combout => \inst5|inst2|inst3|inst3~combout\);

-- Location: IOIBUF_X54_Y0_N52
\JumpAddress[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(9),
	o => \JumpAddress[9]~input_o\);

-- Location: LABCELL_X17_Y2_N51
\inst8|inst2|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst2|inst5~0_combout\ = ( \inst8|inst2|inst1|inst5~2_combout\ & ( (\inst5|inst2|inst2|inst3~combout\ & \BranchOffset[8]~input_o\) ) ) # ( !\inst8|inst2|inst1|inst5~2_combout\ & ( (\BranchOffset[8]~input_o\) # 
-- (\inst5|inst2|inst2|inst3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst2|inst2|ALT_INV_inst3~combout\,
	datad => \ALT_INV_BranchOffset[8]~input_o\,
	dataf => \inst8|inst2|inst1|ALT_INV_inst5~2_combout\,
	combout => \inst8|inst2|inst2|inst5~0_combout\);

-- Location: LABCELL_X17_Y2_N24
\inst12|auto_generated|l2_w11_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w11_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( \inst8|inst2|inst2|inst5~0_combout\ & ( (!\Branch~input_o\ & ((\JumpAddress[9]~input_o\))) # (\Branch~input_o\ & (\inst5|inst2|inst3|inst3~combout\)) ) ) ) # ( !\Jump~input_o\ 
-- & ( \inst8|inst2|inst2|inst5~0_combout\ & ( !\inst5|inst2|inst3|inst3~combout\ $ (((!\Branch~input_o\) # (\BranchOffset[9]~input_o\))) ) ) ) # ( \Jump~input_o\ & ( !\inst8|inst2|inst2|inst5~0_combout\ & ( (!\Branch~input_o\ & ((\JumpAddress[9]~input_o\))) 
-- # (\Branch~input_o\ & (\inst5|inst2|inst3|inst3~combout\)) ) ) ) # ( !\Jump~input_o\ & ( !\inst8|inst2|inst2|inst5~0_combout\ & ( !\inst5|inst2|inst3|inst3~combout\ $ (((!\BranchOffset[9]~input_o\) # (!\Branch~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110000000111111001100111001001110010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[9]~input_o\,
	datab => \inst5|inst2|inst3|ALT_INV_inst3~combout\,
	datac => \ALT_INV_Branch~input_o\,
	datad => \ALT_INV_JumpAddress[9]~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \inst8|inst2|inst2|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w11_n0_mux_dataout~0_combout\);

-- Location: FF_X17_Y2_N26
\inst|inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w11_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst4~q\);

-- Location: IOIBUF_X8_Y0_N35
\BranchOffset[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(10),
	o => \BranchOffset[10]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\JumpAddress[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(10),
	o => \JumpAddress[10]~input_o\);

-- Location: LABCELL_X18_Y2_N3
\inst5|inst3|inst|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst|inst3~combout\ = ( \inst|inst1|inst4~q\ & ( \inst5|inst1|inst3|inst1~combout\ & ( !\inst|inst1|inst3~q\ $ (((!\inst|inst1|inst6~q\) # ((!\inst|inst1|inst5~q\) # (!\inst|inst1|inst7~q\)))) ) ) ) # ( !\inst|inst1|inst4~q\ & ( 
-- \inst5|inst1|inst3|inst1~combout\ & ( \inst|inst1|inst3~q\ ) ) ) # ( \inst|inst1|inst4~q\ & ( !\inst5|inst1|inst3|inst1~combout\ & ( \inst|inst1|inst3~q\ ) ) ) # ( !\inst|inst1|inst4~q\ & ( !\inst5|inst1|inst3|inst1~combout\ & ( \inst|inst1|inst3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|ALT_INV_inst3~q\,
	datab => \inst|inst1|ALT_INV_inst6~q\,
	datac => \inst|inst1|ALT_INV_inst5~q\,
	datad => \inst|inst1|ALT_INV_inst7~q\,
	datae => \inst|inst1|ALT_INV_inst4~q\,
	dataf => \inst5|inst1|inst3|ALT_INV_inst1~combout\,
	combout => \inst5|inst3|inst|inst3~combout\);

-- Location: LABCELL_X18_Y3_N24
\inst8|inst2|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst3|inst5~0_combout\ = ( \inst5|inst2|inst2|inst3~combout\ & ( \inst8|inst2|inst1|inst5~1_combout\ & ( (!\BranchOffset[9]~input_o\ & !\inst5|inst2|inst3|inst3~combout\) ) ) ) # ( !\inst5|inst2|inst2|inst3~combout\ & ( 
-- \inst8|inst2|inst1|inst5~1_combout\ & ( (!\BranchOffset[8]~input_o\ & ((!\BranchOffset[9]~input_o\) # (!\inst5|inst2|inst3|inst3~combout\))) # (\BranchOffset[8]~input_o\ & (!\BranchOffset[9]~input_o\ & !\inst5|inst2|inst3|inst3~combout\)) ) ) ) # ( 
-- \inst5|inst2|inst2|inst3~combout\ & ( !\inst8|inst2|inst1|inst5~1_combout\ & ( (!\BranchOffset[9]~input_o\ & ((!\inst5|inst2|inst3|inst3~combout\) # ((!\BranchOffset[8]~input_o\ & !\inst8|inst2|inst1|inst~combout\)))) # (\BranchOffset[9]~input_o\ & 
-- (!\BranchOffset[8]~input_o\ & (!\inst5|inst2|inst3|inst3~combout\ & !\inst8|inst2|inst1|inst~combout\))) ) ) ) # ( !\inst5|inst2|inst2|inst3~combout\ & ( !\inst8|inst2|inst1|inst5~1_combout\ & ( (!\BranchOffset[9]~input_o\ & ((!\BranchOffset[8]~input_o\) 
-- # ((!\inst5|inst2|inst3|inst3~combout\) # (!\inst8|inst2|inst1|inst~combout\)))) # (\BranchOffset[9]~input_o\ & (!\inst5|inst2|inst3|inst3~combout\ & ((!\BranchOffset[8]~input_o\) # (!\inst8|inst2|inst1|inst~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011101000111010001100000011101000111010001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[8]~input_o\,
	datab => \ALT_INV_BranchOffset[9]~input_o\,
	datac => \inst5|inst2|inst3|ALT_INV_inst3~combout\,
	datad => \inst8|inst2|inst1|ALT_INV_inst~combout\,
	datae => \inst5|inst2|inst2|ALT_INV_inst3~combout\,
	dataf => \inst8|inst2|inst1|ALT_INV_inst5~1_combout\,
	combout => \inst8|inst2|inst3|inst5~0_combout\);

-- Location: LABCELL_X16_Y2_N36
\inst12|auto_generated|l2_w12_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w12_n0_mux_dataout~0_combout\ = ( \inst5|inst3|inst|inst3~combout\ & ( \inst8|inst2|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & ((!\BranchOffset[10]~input_o\) # ((!\Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\) # 
-- (\JumpAddress[10]~input_o\)))) ) ) ) # ( !\inst5|inst3|inst|inst3~combout\ & ( \inst8|inst2|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & (\BranchOffset[10]~input_o\ & ((\Branch~input_o\)))) # (\Jump~input_o\ & (((\JumpAddress[10]~input_o\ & 
-- !\Branch~input_o\)))) ) ) ) # ( \inst5|inst3|inst|inst3~combout\ & ( !\inst8|inst2|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & (((!\Branch~input_o\)) # (\BranchOffset[10]~input_o\))) # (\Jump~input_o\ & (((\Branch~input_o\) # 
-- (\JumpAddress[10]~input_o\)))) ) ) ) # ( !\inst5|inst3|inst|inst3~combout\ & ( !\inst8|inst2|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & (!\BranchOffset[10]~input_o\ & ((\Branch~input_o\)))) # (\Jump~input_o\ & (((\JumpAddress[10]~input_o\ & 
-- !\Branch~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001000110011110111011100000011010001001100111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[10]~input_o\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_JumpAddress[10]~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \inst5|inst3|inst|ALT_INV_inst3~combout\,
	dataf => \inst8|inst2|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w12_n0_mux_dataout~0_combout\);

-- Location: FF_X16_Y2_N38
\inst|inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w12_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst3~q\);

-- Location: LABCELL_X17_Y2_N30
\inst5|inst3|inst|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst|inst1~combout\ = ( \inst|inst1|inst6~q\ & ( \inst5|inst1|inst3|inst1~combout\ & ( (\inst|inst1|inst5~q\ & (\inst|inst1|inst7~q\ & (\inst|inst1|inst4~q\ & \inst|inst1|inst3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|ALT_INV_inst5~q\,
	datab => \inst|inst1|ALT_INV_inst7~q\,
	datac => \inst|inst1|ALT_INV_inst4~q\,
	datad => \inst|inst1|ALT_INV_inst3~q\,
	datae => \inst|inst1|ALT_INV_inst6~q\,
	dataf => \inst5|inst1|inst3|ALT_INV_inst1~combout\,
	combout => \inst5|inst3|inst|inst1~combout\);

-- Location: LABCELL_X17_Y2_N42
\inst5|inst3|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst1|inst3~combout\ = ( \inst5|inst3|inst|inst1~combout\ & ( !\inst|inst1|inst2~q\ ) ) # ( !\inst5|inst3|inst|inst1~combout\ & ( \inst|inst1|inst2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|ALT_INV_inst2~q\,
	dataf => \inst5|inst3|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst3|inst1|inst3~combout\);

-- Location: IOIBUF_X36_Y0_N18
\JumpAddress[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(11),
	o => \JumpAddress[11]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\BranchOffset[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(11),
	o => \BranchOffset[11]~input_o\);

-- Location: LABCELL_X19_Y2_N51
\inst8|inst3|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst1|inst3~combout\ = ( \inst8|inst2|inst3|inst5~0_combout\ & ( !\BranchOffset[11]~input_o\ $ (!\inst5|inst3|inst1|inst3~combout\ $ (((\BranchOffset[10]~input_o\ & \inst5|inst3|inst|inst3~combout\)))) ) ) # ( 
-- !\inst8|inst2|inst3|inst5~0_combout\ & ( !\BranchOffset[11]~input_o\ $ (!\inst5|inst3|inst1|inst3~combout\ $ (((\inst5|inst3|inst|inst3~combout\) # (\BranchOffset[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010010101011010101001010101010110101010010101011010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[11]~input_o\,
	datab => \ALT_INV_BranchOffset[10]~input_o\,
	datac => \inst5|inst3|inst|ALT_INV_inst3~combout\,
	datad => \inst5|inst3|inst1|ALT_INV_inst3~combout\,
	dataf => \inst8|inst2|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst8|inst3|inst1|inst3~combout\);

-- Location: LABCELL_X19_Y2_N12
\inst12|auto_generated|l2_w13_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w13_n0_mux_dataout~0_combout\ = ( \Branch~input_o\ & ( \inst8|inst3|inst1|inst3~combout\ & ( (!\Jump~input_o\) # (\inst5|inst3|inst1|inst3~combout\) ) ) ) # ( !\Branch~input_o\ & ( \inst8|inst3|inst1|inst3~combout\ & ( 
-- (!\Jump~input_o\ & (\inst5|inst3|inst1|inst3~combout\)) # (\Jump~input_o\ & ((\JumpAddress[11]~input_o\))) ) ) ) # ( \Branch~input_o\ & ( !\inst8|inst3|inst1|inst3~combout\ & ( (\inst5|inst3|inst1|inst3~combout\ & \Jump~input_o\) ) ) ) # ( 
-- !\Branch~input_o\ & ( !\inst8|inst3|inst1|inst3~combout\ & ( (!\Jump~input_o\ & (\inst5|inst3|inst1|inst3~combout\)) # (\Jump~input_o\ & ((\JumpAddress[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000001010000010101010011010100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst1|ALT_INV_inst3~combout\,
	datab => \ALT_INV_JumpAddress[11]~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \inst8|inst3|inst1|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w13_n0_mux_dataout~0_combout\);

-- Location: FF_X19_Y2_N14
\inst|inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w13_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst2~q\);

-- Location: IOIBUF_X2_Y0_N92
\BranchOffset[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(12),
	o => \BranchOffset[12]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\JumpAddress[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(12),
	o => \JumpAddress[12]~input_o\);

-- Location: MLABCELL_X15_Y2_N3
\inst8|inst3|inst1|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst1|inst5~0_combout\ = ( \inst5|inst3|inst1|inst3~combout\ & ( \inst8|inst2|inst3|inst5~0_combout\ & ( ((\inst5|inst3|inst|inst3~combout\ & \BranchOffset[10]~input_o\)) # (\BranchOffset[11]~input_o\) ) ) ) # ( 
-- !\inst5|inst3|inst1|inst3~combout\ & ( \inst8|inst2|inst3|inst5~0_combout\ & ( (\BranchOffset[11]~input_o\ & (\inst5|inst3|inst|inst3~combout\ & \BranchOffset[10]~input_o\)) ) ) ) # ( \inst5|inst3|inst1|inst3~combout\ & ( 
-- !\inst8|inst2|inst3|inst5~0_combout\ & ( ((\BranchOffset[10]~input_o\) # (\inst5|inst3|inst|inst3~combout\)) # (\BranchOffset[11]~input_o\) ) ) ) # ( !\inst5|inst3|inst1|inst3~combout\ & ( !\inst8|inst2|inst3|inst5~0_combout\ & ( 
-- (\BranchOffset[11]~input_o\ & ((\BranchOffset[10]~input_o\) # (\inst5|inst3|inst|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101010111111111111100000000000001010101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[11]~input_o\,
	datac => \inst5|inst3|inst|ALT_INV_inst3~combout\,
	datad => \ALT_INV_BranchOffset[10]~input_o\,
	datae => \inst5|inst3|inst1|ALT_INV_inst3~combout\,
	dataf => \inst8|inst2|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst8|inst3|inst1|inst5~0_combout\);

-- Location: MLABCELL_X15_Y2_N33
\inst5|inst3|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst2|inst3~combout\ = ( \inst5|inst3|inst|inst1~combout\ & ( \inst|inst1|inst1~q\ & ( !\inst|inst1|inst2~q\ ) ) ) # ( !\inst5|inst3|inst|inst1~combout\ & ( \inst|inst1|inst1~q\ ) ) # ( \inst5|inst3|inst|inst1~combout\ & ( 
-- !\inst|inst1|inst1~q\ & ( \inst|inst1|inst2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|ALT_INV_inst2~q\,
	datae => \inst5|inst3|inst|ALT_INV_inst1~combout\,
	dataf => \inst|inst1|ALT_INV_inst1~q\,
	combout => \inst5|inst3|inst2|inst3~combout\);

-- Location: MLABCELL_X15_Y2_N39
\inst12|auto_generated|l2_w14_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w14_n0_mux_dataout~0_combout\ = ( \inst8|inst3|inst1|inst5~0_combout\ & ( \inst5|inst3|inst2|inst3~combout\ & ( (!\Jump~input_o\ & (((!\Branch~input_o\)) # (\BranchOffset[12]~input_o\))) # (\Jump~input_o\ & 
-- (((\JumpAddress[12]~input_o\) # (\Branch~input_o\)))) ) ) ) # ( !\inst8|inst3|inst1|inst5~0_combout\ & ( \inst5|inst3|inst2|inst3~combout\ & ( (!\Jump~input_o\ & ((!\BranchOffset[12]~input_o\) # ((!\Branch~input_o\)))) # (\Jump~input_o\ & 
-- (((\JumpAddress[12]~input_o\) # (\Branch~input_o\)))) ) ) ) # ( \inst8|inst3|inst1|inst5~0_combout\ & ( !\inst5|inst3|inst2|inst3~combout\ & ( (!\Jump~input_o\ & (!\BranchOffset[12]~input_o\ & (\Branch~input_o\))) # (\Jump~input_o\ & (((!\Branch~input_o\ 
-- & \JumpAddress[12]~input_o\)))) ) ) ) # ( !\inst8|inst3|inst1|inst5~0_combout\ & ( !\inst5|inst3|inst2|inst3~combout\ & ( (!\Jump~input_o\ & (\BranchOffset[12]~input_o\ & (\Branch~input_o\))) # (\Jump~input_o\ & (((!\Branch~input_o\ & 
-- \JumpAddress[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000010000011100011001011111110111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[12]~input_o\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_Branch~input_o\,
	datad => \ALT_INV_JumpAddress[12]~input_o\,
	datae => \inst8|inst3|inst1|ALT_INV_inst5~0_combout\,
	dataf => \inst5|inst3|inst2|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w14_n0_mux_dataout~0_combout\);

-- Location: FF_X15_Y2_N41
\inst|inst1|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w14_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst1~q\);

-- Location: LABCELL_X17_Y3_N57
\inst5|inst3|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst3|inst3~combout\ = ( \inst5|inst3|inst|inst1~combout\ & ( !\inst|inst1|inst~q\ $ (((!\inst|inst1|inst2~q\) # (!\inst|inst1|inst1~q\))) ) ) # ( !\inst5|inst3|inst|inst1~combout\ & ( \inst|inst1|inst~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|ALT_INV_inst2~q\,
	datac => \inst|inst1|ALT_INV_inst1~q\,
	datad => \inst|inst1|ALT_INV_inst~q\,
	dataf => \inst5|inst3|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst3|inst3|inst3~combout\);

-- Location: IOIBUF_X40_Y0_N52
\BranchOffset[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(13),
	o => \BranchOffset[13]~input_o\);

-- Location: LABCELL_X17_Y2_N18
\inst8|inst3|inst2|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst2|inst~combout\ = ( \inst5|inst3|inst|inst1~combout\ & ( (\BranchOffset[12]~input_o\ & (!\inst|inst1|inst2~q\ $ (!\inst|inst1|inst1~q\))) ) ) # ( !\inst5|inst3|inst|inst1~combout\ & ( (\BranchOffset[12]~input_o\ & \inst|inst1|inst1~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|ALT_INV_inst2~q\,
	datac => \ALT_INV_BranchOffset[12]~input_o\,
	datad => \inst|inst1|ALT_INV_inst1~q\,
	dataf => \inst5|inst3|inst|ALT_INV_inst1~combout\,
	combout => \inst8|inst3|inst2|inst~combout\);

-- Location: LABCELL_X17_Y2_N15
\inst8|inst3|inst2|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst2|inst5~0_combout\ = ( \inst5|inst3|inst|inst1~combout\ & ( (!\BranchOffset[12]~input_o\ & (!\inst|inst1|inst2~q\ $ (\inst|inst1|inst1~q\))) ) ) # ( !\inst5|inst3|inst|inst1~combout\ & ( (!\BranchOffset[12]~input_o\ & 
-- !\inst|inst1|inst1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[12]~input_o\,
	datac => \inst|inst1|ALT_INV_inst2~q\,
	datad => \inst|inst1|ALT_INV_inst1~q\,
	dataf => \inst5|inst3|inst|ALT_INV_inst1~combout\,
	combout => \inst8|inst3|inst2|inst5~0_combout\);

-- Location: LABCELL_X18_Y3_N48
\inst8|inst3|inst2|inst5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst2|inst5~1_combout\ = ( !\inst8|inst3|inst2|inst5~0_combout\ & ( \inst8|inst2|inst3|inst5~0_combout\ & ( (!\BranchOffset[11]~input_o\ & (\BranchOffset[10]~input_o\ & (\inst5|inst3|inst|inst3~combout\ & \inst5|inst3|inst1|inst3~combout\))) 
-- # (\BranchOffset[11]~input_o\ & (((\BranchOffset[10]~input_o\ & \inst5|inst3|inst|inst3~combout\)) # (\inst5|inst3|inst1|inst3~combout\))) ) ) ) # ( !\inst8|inst3|inst2|inst5~0_combout\ & ( !\inst8|inst2|inst3|inst5~0_combout\ & ( 
-- (!\BranchOffset[11]~input_o\ & (\inst5|inst3|inst1|inst3~combout\ & ((\inst5|inst3|inst|inst3~combout\) # (\BranchOffset[10]~input_o\)))) # (\BranchOffset[11]~input_o\ & (((\inst5|inst3|inst1|inst3~combout\) # (\inst5|inst3|inst|inst3~combout\)) # 
-- (\BranchOffset[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001101111111000000000000000000000001001101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[10]~input_o\,
	datab => \ALT_INV_BranchOffset[11]~input_o\,
	datac => \inst5|inst3|inst|ALT_INV_inst3~combout\,
	datad => \inst5|inst3|inst1|ALT_INV_inst3~combout\,
	datae => \inst8|inst3|inst2|ALT_INV_inst5~0_combout\,
	dataf => \inst8|inst2|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst8|inst3|inst2|inst5~1_combout\);

-- Location: IOIBUF_X62_Y0_N35
\JumpAddress[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(13),
	o => \JumpAddress[13]~input_o\);

-- Location: LABCELL_X16_Y3_N12
\inst12|auto_generated|l2_w15_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w15_n0_mux_dataout~0_combout\ = ( !\Branch~input_o\ & ( (!\Jump~input_o\ & (\inst5|inst3|inst3|inst3~combout\)) # (\Jump~input_o\ & (((\JumpAddress[13]~input_o\)))) ) ) # ( \Branch~input_o\ & ( !\inst5|inst3|inst3|inst3~combout\ 
-- $ (((!\BranchOffset[13]~input_o\ $ (((\inst8|inst3|inst2|inst5~1_combout\) # (\inst8|inst3|inst2|inst~combout\)))) # (\Jump~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100100111001110011001001100100111001001111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \inst5|inst3|inst3|ALT_INV_inst3~combout\,
	datac => \ALT_INV_BranchOffset[13]~input_o\,
	datad => \inst8|inst3|inst2|ALT_INV_inst~combout\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \inst8|inst3|inst2|ALT_INV_inst5~1_combout\,
	datag => \ALT_INV_JumpAddress[13]~input_o\,
	combout => \inst12|auto_generated|l2_w15_n0_mux_dataout~0_combout\);

-- Location: FF_X16_Y3_N14
\inst|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w15_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst~q\);

-- Location: IOIBUF_X58_Y0_N58
\JumpAddress[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(14),
	o => \JumpAddress[14]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\BranchOffset[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchOffset(14),
	o => \BranchOffset[14]~input_o\);

-- Location: LABCELL_X17_Y3_N12
\inst5|inst4|inst|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst4|inst|inst3~combout\ = ( \inst5|inst3|inst|inst1~combout\ & ( !\inst|inst2|inst7~q\ $ (((!\inst|inst1|inst~q\) # ((!\inst|inst1|inst2~q\) # (!\inst|inst1|inst1~q\)))) ) ) # ( !\inst5|inst3|inst|inst1~combout\ & ( \inst|inst2|inst7~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|ALT_INV_inst~q\,
	datab => \inst|inst2|ALT_INV_inst7~q\,
	datac => \inst|inst1|ALT_INV_inst2~q\,
	datad => \inst|inst1|ALT_INV_inst1~q\,
	dataf => \inst5|inst3|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst4|inst|inst3~combout\);

-- Location: LABCELL_X17_Y2_N21
\inst8|inst3|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst3|inst5~0_combout\ = ( \inst8|inst3|inst2|inst5~1_combout\ & ( (!\inst5|inst3|inst3|inst3~combout\ & !\BranchOffset[13]~input_o\) ) ) # ( !\inst8|inst3|inst2|inst5~1_combout\ & ( (!\inst8|inst3|inst2|inst~combout\ & 
-- ((!\inst5|inst3|inst3|inst3~combout\) # (!\BranchOffset[13]~input_o\))) # (\inst8|inst3|inst2|inst~combout\ & (!\inst5|inst3|inst3|inst3~combout\ & !\BranchOffset[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst3|inst2|ALT_INV_inst~combout\,
	datac => \inst5|inst3|inst3|ALT_INV_inst3~combout\,
	datad => \ALT_INV_BranchOffset[13]~input_o\,
	dataf => \inst8|inst3|inst2|ALT_INV_inst5~1_combout\,
	combout => \inst8|inst3|inst3|inst5~0_combout\);

-- Location: LABCELL_X17_Y2_N36
\inst12|auto_generated|l2_w16_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w16_n0_mux_dataout~0_combout\ = ( \inst5|inst4|inst|inst3~combout\ & ( \inst8|inst3|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & (((!\BranchOffset[14]~input_o\) # (!\Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\)) 
-- # (\JumpAddress[14]~input_o\))) ) ) ) # ( !\inst5|inst4|inst|inst3~combout\ & ( \inst8|inst3|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & (((\BranchOffset[14]~input_o\ & \Branch~input_o\)))) # (\Jump~input_o\ & (\JumpAddress[14]~input_o\ & 
-- ((!\Branch~input_o\)))) ) ) ) # ( \inst5|inst4|inst|inst3~combout\ & ( !\inst8|inst3|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & (((!\Branch~input_o\) # (\BranchOffset[14]~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\)) # 
-- (\JumpAddress[14]~input_o\))) ) ) ) # ( !\inst5|inst4|inst|inst3~combout\ & ( !\inst8|inst3|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & (((!\BranchOffset[14]~input_o\ & \Branch~input_o\)))) # (\Jump~input_o\ & (\JumpAddress[14]~input_o\ & 
-- ((!\Branch~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000000111101010011111100000101001100001111010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAddress[14]~input_o\,
	datab => \ALT_INV_BranchOffset[14]~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \inst5|inst4|inst|ALT_INV_inst3~combout\,
	dataf => \inst8|inst3|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w16_n0_mux_dataout~0_combout\);

-- Location: FF_X17_Y2_N38
\inst|inst2|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w16_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst7~q\);

-- Location: IOIBUF_X4_Y0_N52
\JumpAddress[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(15),
	o => \JumpAddress[15]~input_o\);

-- Location: LABCELL_X16_Y3_N27
\inst5|inst4|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst4|inst1|inst3~combout\ = ( \inst|inst2|inst6~q\ & ( \inst5|inst3|inst|inst1~combout\ & ( (!\inst|inst2|inst7~q\) # ((!\inst|inst1|inst~q\) # ((!\inst|inst1|inst1~q\) # (!\inst|inst1|inst2~q\))) ) ) ) # ( !\inst|inst2|inst6~q\ & ( 
-- \inst5|inst3|inst|inst1~combout\ & ( (\inst|inst2|inst7~q\ & (\inst|inst1|inst~q\ & (\inst|inst1|inst1~q\ & \inst|inst1|inst2~q\))) ) ) ) # ( \inst|inst2|inst6~q\ & ( !\inst5|inst3|inst|inst1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ALT_INV_inst7~q\,
	datab => \inst|inst1|ALT_INV_inst~q\,
	datac => \inst|inst1|ALT_INV_inst1~q\,
	datad => \inst|inst1|ALT_INV_inst2~q\,
	datae => \inst|inst2|ALT_INV_inst6~q\,
	dataf => \inst5|inst3|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst4|inst1|inst3~combout\);

-- Location: LABCELL_X18_Y3_N6
\inst8|inst4|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst4|inst|inst5~0_combout\ = ( \inst5|inst4|inst|inst3~combout\ & ( \inst8|inst3|inst2|inst5~1_combout\ & ( ((\inst5|inst3|inst3|inst3~combout\) # (\BranchOffset[13]~input_o\)) # (\BranchOffset[14]~input_o\) ) ) ) # ( 
-- !\inst5|inst4|inst|inst3~combout\ & ( \inst8|inst3|inst2|inst5~1_combout\ & ( (\BranchOffset[14]~input_o\ & ((\inst5|inst3|inst3|inst3~combout\) # (\BranchOffset[13]~input_o\))) ) ) ) # ( \inst5|inst4|inst|inst3~combout\ & ( 
-- !\inst8|inst3|inst2|inst5~1_combout\ & ( ((!\BranchOffset[13]~input_o\ & (\inst8|inst3|inst2|inst~combout\ & \inst5|inst3|inst3|inst3~combout\)) # (\BranchOffset[13]~input_o\ & ((\inst5|inst3|inst3|inst3~combout\) # (\inst8|inst3|inst2|inst~combout\)))) # 
-- (\BranchOffset[14]~input_o\) ) ) ) # ( !\inst5|inst4|inst|inst3~combout\ & ( !\inst8|inst3|inst2|inst5~1_combout\ & ( (\BranchOffset[14]~input_o\ & ((!\BranchOffset[13]~input_o\ & (\inst8|inst3|inst2|inst~combout\ & \inst5|inst3|inst3|inst3~combout\)) # 
-- (\BranchOffset[13]~input_o\ & ((\inst5|inst3|inst3|inst3~combout\) # (\inst8|inst3|inst2|inst~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101010101110111111100010001010101010111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[14]~input_o\,
	datab => \ALT_INV_BranchOffset[13]~input_o\,
	datac => \inst8|inst3|inst2|ALT_INV_inst~combout\,
	datad => \inst5|inst3|inst3|ALT_INV_inst3~combout\,
	datae => \inst5|inst4|inst|ALT_INV_inst3~combout\,
	dataf => \inst8|inst3|inst2|ALT_INV_inst5~1_combout\,
	combout => \inst8|inst4|inst|inst5~0_combout\);

-- Location: LABCELL_X16_Y3_N54
\inst12|auto_generated|l2_w17_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w17_n0_mux_dataout~0_combout\ = ( \inst5|inst4|inst1|inst3~combout\ & ( \inst8|inst4|inst|inst5~0_combout\ & ( (!\Jump~input_o\ & (((!\Branch~input_o\) # (\BranchOffset[15]~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\)) # 
-- (\JumpAddress[15]~input_o\))) ) ) ) # ( !\inst5|inst4|inst1|inst3~combout\ & ( \inst8|inst4|inst|inst5~0_combout\ & ( (!\Jump~input_o\ & (((!\BranchOffset[15]~input_o\ & \Branch~input_o\)))) # (\Jump~input_o\ & (\JumpAddress[15]~input_o\ & 
-- ((!\Branch~input_o\)))) ) ) ) # ( \inst5|inst4|inst1|inst3~combout\ & ( !\inst8|inst4|inst|inst5~0_combout\ & ( (!\Jump~input_o\ & (((!\BranchOffset[15]~input_o\) # (!\Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\)) # 
-- (\JumpAddress[15]~input_o\))) ) ) ) # ( !\inst5|inst4|inst1|inst3~combout\ & ( !\inst8|inst4|inst|inst5~0_combout\ & ( (!\Jump~input_o\ & (((\BranchOffset[15]~input_o\ & \Branch~input_o\)))) # (\Jump~input_o\ & (\JumpAddress[15]~input_o\ & 
-- ((!\Branch~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101011100111100000101110000001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAddress[15]~input_o\,
	datab => \ALT_INV_BranchOffset[15]~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \inst5|inst4|inst1|ALT_INV_inst3~combout\,
	dataf => \inst8|inst4|inst|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w17_n0_mux_dataout~0_combout\);

-- Location: FF_X16_Y3_N56
\inst|inst2|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w17_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst6~q\);

-- Location: LABCELL_X16_Y2_N12
\inst5|inst4|inst1|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst4|inst1|inst1~combout\ = ( \inst|inst1|inst1~q\ & ( \inst5|inst3|inst|inst1~combout\ & ( (\inst|inst1|inst~q\ & (\inst|inst2|inst7~q\ & (\inst|inst2|inst6~q\ & \inst|inst1|inst2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|ALT_INV_inst~q\,
	datab => \inst|inst2|ALT_INV_inst7~q\,
	datac => \inst|inst2|ALT_INV_inst6~q\,
	datad => \inst|inst1|ALT_INV_inst2~q\,
	datae => \inst|inst1|ALT_INV_inst1~q\,
	dataf => \inst5|inst3|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst4|inst1|inst1~combout\);

-- Location: LABCELL_X16_Y2_N51
\inst5|inst4|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst4|inst2|inst3~combout\ = ( \inst5|inst4|inst1|inst1~combout\ & ( !\inst|inst2|inst5~q\ ) ) # ( !\inst5|inst4|inst1|inst1~combout\ & ( \inst|inst2|inst5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|ALT_INV_inst5~q\,
	dataf => \inst5|inst4|inst1|ALT_INV_inst1~combout\,
	combout => \inst5|inst4|inst2|inst3~combout\);

-- Location: IOIBUF_X4_Y0_N1
\JumpAddress[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(16),
	o => \JumpAddress[16]~input_o\);

-- Location: LABCELL_X16_Y3_N51
\inst12|auto_generated|l2_w18_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w18_n0_mux_dataout~0_combout\ = ( !\Branch~input_o\ & ( (!\Jump~input_o\ & (\inst5|inst4|inst2|inst3~combout\)) # (\Jump~input_o\ & (((\JumpAddress[16]~input_o\)))) ) ) # ( \Branch~input_o\ & ( !\inst5|inst4|inst2|inst3~combout\ 
-- $ ((((!\BranchOffset[15]~input_o\ & ((!\inst8|inst4|inst|inst5~0_combout\) # (!\inst5|inst4|inst1|inst3~combout\))) # (\BranchOffset[15]~input_o\ & ((\inst5|inst4|inst1|inst3~combout\) # (\inst8|inst4|inst|inst5~0_combout\)))) # (\Jump~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011101000111010110010101010101000111010001110101010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst4|inst2|ALT_INV_inst3~combout\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_BranchOffset[15]~input_o\,
	datad => \inst8|inst4|inst|ALT_INV_inst5~0_combout\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \inst5|inst4|inst1|ALT_INV_inst3~combout\,
	datag => \ALT_INV_JumpAddress[16]~input_o\,
	combout => \inst12|auto_generated|l2_w18_n0_mux_dataout~0_combout\);

-- Location: FF_X16_Y3_N53
\inst|inst2|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w18_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst5~q\);

-- Location: IOIBUF_X30_Y0_N52
\JumpAddress[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(17),
	o => \JumpAddress[17]~input_o\);

-- Location: LABCELL_X19_Y3_N45
\inst8|inst4|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst4|inst3|inst3~combout\ = ( \inst5|inst4|inst3|inst3~combout\ & ( (!\inst5|inst4|inst2|inst3~combout\ & ((!\BranchOffset[15]~input_o\) # ((\inst8|inst4|inst|inst5~0_combout\) # (\inst5|inst4|inst1|inst3~combout\)))) # 
-- (\inst5|inst4|inst2|inst3~combout\ & (((!\inst5|inst4|inst1|inst3~combout\) # (!\inst8|inst4|inst|inst5~0_combout\)) # (\BranchOffset[15]~input_o\))) ) ) # ( !\inst5|inst4|inst3|inst3~combout\ & ( (!\inst5|inst4|inst2|inst3~combout\ & 
-- (\BranchOffset[15]~input_o\ & (!\inst5|inst4|inst1|inst3~combout\ & !\inst8|inst4|inst|inst5~0_combout\))) # (\inst5|inst4|inst2|inst3~combout\ & (!\BranchOffset[15]~input_o\ & (\inst5|inst4|inst1|inst3~combout\ & \inst8|inst4|inst|inst5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000000010011011111111110111101111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst4|inst2|ALT_INV_inst3~combout\,
	datab => \ALT_INV_BranchOffset[15]~input_o\,
	datac => \inst5|inst4|inst1|ALT_INV_inst3~combout\,
	datad => \inst8|inst4|inst|ALT_INV_inst5~0_combout\,
	dataf => \inst5|inst4|inst3|ALT_INV_inst3~combout\,
	combout => \inst8|inst4|inst3|inst3~combout\);

-- Location: LABCELL_X19_Y3_N21
\inst12|auto_generated|l2_w19_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w19_n0_mux_dataout~0_combout\ = ( \inst8|inst4|inst3|inst3~combout\ & ( \inst5|inst4|inst3|inst3~combout\ & ( ((!\Jump~input_o\) # (\Branch~input_o\)) # (\JumpAddress[17]~input_o\) ) ) ) # ( !\inst8|inst4|inst3|inst3~combout\ & ( 
-- \inst5|inst4|inst3|inst3~combout\ & ( (!\Branch~input_o\ & ((!\Jump~input_o\) # (\JumpAddress[17]~input_o\))) # (\Branch~input_o\ & ((\Jump~input_o\))) ) ) ) # ( \inst8|inst4|inst3|inst3~combout\ & ( !\inst5|inst4|inst3|inst3~combout\ & ( 
-- (!\Branch~input_o\ & (\JumpAddress[17]~input_o\ & \Jump~input_o\)) # (\Branch~input_o\ & ((!\Jump~input_o\))) ) ) ) # ( !\inst8|inst4|inst3|inst3~combout\ & ( !\inst5|inst4|inst3|inst3~combout\ & ( (\JumpAddress[17]~input_o\ & (!\Branch~input_o\ & 
-- \Jump~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100001100110100010011001100011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAddress[17]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datad => \ALT_INV_Jump~input_o\,
	datae => \inst8|inst4|inst3|ALT_INV_inst3~combout\,
	dataf => \inst5|inst4|inst3|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w19_n0_mux_dataout~0_combout\);

-- Location: FF_X19_Y3_N23
\inst|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w19_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst4~q\);

-- Location: LABCELL_X16_Y2_N3
\inst5|inst4|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst4|inst3|inst3~combout\ = ( \inst5|inst4|inst1|inst1~combout\ & ( !\inst|inst2|inst5~q\ $ (!\inst|inst2|inst4~q\) ) ) # ( !\inst5|inst4|inst1|inst1~combout\ & ( \inst|inst2|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ALT_INV_inst5~q\,
	datad => \inst|inst2|ALT_INV_inst4~q\,
	dataf => \inst5|inst4|inst1|ALT_INV_inst1~combout\,
	combout => \inst5|inst4|inst3|inst3~combout\);

-- Location: IOIBUF_X56_Y0_N1
\JumpAddress[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(18),
	o => \JumpAddress[18]~input_o\);

-- Location: LABCELL_X19_Y3_N48
\inst8|inst4|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst4|inst3|inst5~0_combout\ = ( \inst8|inst4|inst|inst5~0_combout\ & ( \inst5|inst4|inst3|inst3~combout\ & ( ((\inst5|inst4|inst2|inst3~combout\ & \inst5|inst4|inst1|inst3~combout\)) # (\BranchOffset[15]~input_o\) ) ) ) # ( 
-- !\inst8|inst4|inst|inst5~0_combout\ & ( \inst5|inst4|inst3|inst3~combout\ & ( \BranchOffset[15]~input_o\ ) ) ) # ( \inst8|inst4|inst|inst5~0_combout\ & ( !\inst5|inst4|inst3|inst3~combout\ & ( \BranchOffset[15]~input_o\ ) ) ) # ( 
-- !\inst8|inst4|inst|inst5~0_combout\ & ( !\inst5|inst4|inst3|inst3~combout\ & ( (\BranchOffset[15]~input_o\ & ((\inst5|inst4|inst1|inst3~combout\) # (\inst5|inst4|inst2|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101010101010101010101010101010101010101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datac => \inst5|inst4|inst2|ALT_INV_inst3~combout\,
	datad => \inst5|inst4|inst1|ALT_INV_inst3~combout\,
	datae => \inst8|inst4|inst|ALT_INV_inst5~0_combout\,
	dataf => \inst5|inst4|inst3|ALT_INV_inst3~combout\,
	combout => \inst8|inst4|inst3|inst5~0_combout\);

-- Location: LABCELL_X19_Y3_N24
\inst12|auto_generated|l2_w20_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w20_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( \inst8|inst4|inst3|inst5~0_combout\ & ( (!\Branch~input_o\ & (\JumpAddress[18]~input_o\)) # (\Branch~input_o\ & ((\inst5|inst5|inst|inst3~combout\))) ) ) ) # ( !\Jump~input_o\ 
-- & ( \inst8|inst4|inst3|inst5~0_combout\ & ( !\inst5|inst5|inst|inst3~combout\ $ (((!\Branch~input_o\) # (\BranchOffset[15]~input_o\))) ) ) ) # ( \Jump~input_o\ & ( !\inst8|inst4|inst3|inst5~0_combout\ & ( (!\Branch~input_o\ & (\JumpAddress[18]~input_o\)) 
-- # (\Branch~input_o\ & ((\inst5|inst5|inst|inst3~combout\))) ) ) ) # ( !\Jump~input_o\ & ( !\inst8|inst4|inst3|inst5~0_combout\ & ( !\inst5|inst5|inst|inst3~combout\ $ (((!\BranchOffset[15]~input_o\) # (!\Branch~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100010101010011001100110011110000110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAddress[18]~input_o\,
	datab => \inst5|inst5|inst|ALT_INV_inst3~combout\,
	datac => \ALT_INV_BranchOffset[15]~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \inst8|inst4|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w20_n0_mux_dataout~0_combout\);

-- Location: FF_X19_Y3_N26
\inst|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w20_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst3~q\);

-- Location: LABCELL_X16_Y2_N27
\inst5|inst5|inst|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst|inst3~combout\ = ( \inst5|inst4|inst1|inst1~combout\ & ( !\inst|inst2|inst3~q\ $ (((!\inst|inst2|inst5~q\) # (!\inst|inst2|inst4~q\))) ) ) # ( !\inst5|inst4|inst1|inst1~combout\ & ( \inst|inst2|inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ALT_INV_inst5~q\,
	datac => \inst|inst2|ALT_INV_inst3~q\,
	datad => \inst|inst2|ALT_INV_inst4~q\,
	dataf => \inst5|inst4|inst1|ALT_INV_inst1~combout\,
	combout => \inst5|inst5|inst|inst3~combout\);

-- Location: LABCELL_X18_Y3_N42
\inst8|inst5|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst5|inst|inst5~0_combout\ = ( \inst5|inst4|inst1|inst3~combout\ & ( \inst8|inst4|inst|inst5~0_combout\ & ( ((\inst5|inst4|inst3|inst3~combout\ & (\inst5|inst5|inst|inst3~combout\ & \inst5|inst4|inst2|inst3~combout\))) # 
-- (\BranchOffset[15]~input_o\) ) ) ) # ( !\inst5|inst4|inst1|inst3~combout\ & ( \inst8|inst4|inst|inst5~0_combout\ & ( \BranchOffset[15]~input_o\ ) ) ) # ( \inst5|inst4|inst1|inst3~combout\ & ( !\inst8|inst4|inst|inst5~0_combout\ & ( 
-- \BranchOffset[15]~input_o\ ) ) ) # ( !\inst5|inst4|inst1|inst3~combout\ & ( !\inst8|inst4|inst|inst5~0_combout\ & ( (\BranchOffset[15]~input_o\ & (((\inst5|inst4|inst2|inst3~combout\) # (\inst5|inst5|inst|inst3~combout\)) # 
-- (\inst5|inst4|inst3|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100110011001100110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst4|inst3|ALT_INV_inst3~combout\,
	datab => \ALT_INV_BranchOffset[15]~input_o\,
	datac => \inst5|inst5|inst|ALT_INV_inst3~combout\,
	datad => \inst5|inst4|inst2|ALT_INV_inst3~combout\,
	datae => \inst5|inst4|inst1|ALT_INV_inst3~combout\,
	dataf => \inst8|inst4|inst|ALT_INV_inst5~0_combout\,
	combout => \inst8|inst5|inst|inst5~0_combout\);

-- Location: LABCELL_X17_Y3_N30
\inst5|inst5|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst1|inst3~combout\ = ( \inst|inst2|inst2~q\ & ( (!\inst|inst2|inst5~q\) # ((!\inst|inst2|inst4~q\) # ((!\inst|inst2|inst3~q\) # (!\inst5|inst4|inst1|inst1~combout\))) ) ) # ( !\inst|inst2|inst2~q\ & ( (\inst|inst2|inst5~q\ & 
-- (\inst|inst2|inst4~q\ & (\inst|inst2|inst3~q\ & \inst5|inst4|inst1|inst1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ALT_INV_inst5~q\,
	datab => \inst|inst2|ALT_INV_inst4~q\,
	datac => \inst|inst2|ALT_INV_inst3~q\,
	datad => \inst5|inst4|inst1|ALT_INV_inst1~combout\,
	dataf => \inst|inst2|ALT_INV_inst2~q\,
	combout => \inst5|inst5|inst1|inst3~combout\);

-- Location: LABCELL_X17_Y3_N24
\inst12|auto_generated|l2_w21_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w21_n0_mux_dataout~0_combout\ = ( \inst8|inst5|inst|inst5~0_combout\ & ( \inst5|inst5|inst1|inst3~combout\ & ( (!\Jump~input_o\ & (((!\Branch~input_o\)) # (\BranchOffset[15]~input_o\))) # (\Jump~input_o\ & (((\Branch~input_o\) # 
-- (\JumpAddress[19]~input_o\)))) ) ) ) # ( !\inst8|inst5|inst|inst5~0_combout\ & ( \inst5|inst5|inst1|inst3~combout\ & ( (!\Jump~input_o\ & ((!\BranchOffset[15]~input_o\) # ((!\Branch~input_o\)))) # (\Jump~input_o\ & (((\Branch~input_o\) # 
-- (\JumpAddress[19]~input_o\)))) ) ) ) # ( \inst8|inst5|inst|inst5~0_combout\ & ( !\inst5|inst5|inst1|inst3~combout\ & ( (!\Jump~input_o\ & (!\BranchOffset[15]~input_o\ & ((\Branch~input_o\)))) # (\Jump~input_o\ & (((\JumpAddress[19]~input_o\ & 
-- !\Branch~input_o\)))) ) ) ) # ( !\inst8|inst5|inst|inst5~0_combout\ & ( !\inst5|inst5|inst1|inst3~combout\ & ( (!\Jump~input_o\ & (\BranchOffset[15]~input_o\ & ((\Branch~input_o\)))) # (\Jump~input_o\ & (((\JumpAddress[19]~input_o\ & !\Branch~input_o\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000111000100011001111101110111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_JumpAddress[19]~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \inst8|inst5|inst|ALT_INV_inst5~0_combout\,
	dataf => \inst5|inst5|inst1|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w21_n0_mux_dataout~0_combout\);

-- Location: FF_X17_Y3_N26
\inst|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w21_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst2~q\);

-- Location: LABCELL_X16_Y2_N42
\inst5|inst5|inst1|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst1|inst1~combout\ = ( \inst|inst2|inst4~q\ & ( \inst5|inst4|inst1|inst1~combout\ & ( (\inst|inst2|inst2~q\ & (\inst|inst2|inst5~q\ & \inst|inst2|inst3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|ALT_INV_inst2~q\,
	datac => \inst|inst2|ALT_INV_inst5~q\,
	datad => \inst|inst2|ALT_INV_inst3~q\,
	datae => \inst|inst2|ALT_INV_inst4~q\,
	dataf => \inst5|inst4|inst1|ALT_INV_inst1~combout\,
	combout => \inst5|inst5|inst1|inst1~combout\);

-- Location: LABCELL_X16_Y2_N18
\inst5|inst5|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst2|inst3~combout\ = ( \inst5|inst5|inst1|inst1~combout\ & ( !\inst|inst2|inst1~q\ ) ) # ( !\inst5|inst5|inst1|inst1~combout\ & ( \inst|inst2|inst1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|ALT_INV_inst1~q\,
	dataf => \inst5|inst5|inst1|ALT_INV_inst1~combout\,
	combout => \inst5|inst5|inst2|inst3~combout\);

-- Location: LABCELL_X19_Y3_N54
\inst8|inst5|inst2|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst5|inst2|inst3~0_combout\ = ( \inst5|inst4|inst2|inst3~combout\ & ( \inst5|inst4|inst3|inst3~combout\ & ( (!\BranchOffset[15]~input_o\ & \inst5|inst4|inst1|inst3~combout\) ) ) ) # ( !\inst5|inst4|inst2|inst3~combout\ & ( 
-- !\inst5|inst4|inst3|inst3~combout\ & ( (\BranchOffset[15]~input_o\ & !\inst5|inst4|inst1|inst3~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datad => \inst5|inst4|inst1|ALT_INV_inst3~combout\,
	datae => \inst5|inst4|inst2|ALT_INV_inst3~combout\,
	dataf => \inst5|inst4|inst3|ALT_INV_inst3~combout\,
	combout => \inst8|inst5|inst2|inst3~0_combout\);

-- Location: LABCELL_X19_Y3_N30
\inst8|inst5|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst5|inst2|inst3~combout\ = ( \inst8|inst5|inst2|inst3~0_combout\ & ( \inst5|inst5|inst2|inst3~combout\ & ( (!\inst5|inst5|inst|inst3~combout\ & (((\inst5|inst4|inst1|inst3~combout\) # (\inst8|inst4|inst|inst5~0_combout\)) # 
-- (\inst5|inst5|inst1|inst3~combout\))) # (\inst5|inst5|inst|inst3~combout\ & ((!\inst5|inst5|inst1|inst3~combout\) # ((!\inst8|inst4|inst|inst5~0_combout\) # (!\inst5|inst4|inst1|inst3~combout\)))) ) ) ) # ( !\inst8|inst5|inst2|inst3~0_combout\ & ( 
-- \inst5|inst5|inst2|inst3~combout\ ) ) # ( \inst8|inst5|inst2|inst3~0_combout\ & ( !\inst5|inst5|inst2|inst3~combout\ & ( (!\inst5|inst5|inst|inst3~combout\ & (!\inst5|inst5|inst1|inst3~combout\ & (!\inst8|inst4|inst|inst5~0_combout\ & 
-- !\inst5|inst4|inst1|inst3~combout\))) # (\inst5|inst5|inst|inst3~combout\ & (\inst5|inst5|inst1|inst3~combout\ & (\inst8|inst4|inst|inst5~0_combout\ & \inst5|inst4|inst1|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000111111111111111110111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|inst|ALT_INV_inst3~combout\,
	datab => \inst5|inst5|inst1|ALT_INV_inst3~combout\,
	datac => \inst8|inst4|inst|ALT_INV_inst5~0_combout\,
	datad => \inst5|inst4|inst1|ALT_INV_inst3~combout\,
	datae => \inst8|inst5|inst2|ALT_INV_inst3~0_combout\,
	dataf => \inst5|inst5|inst2|ALT_INV_inst3~combout\,
	combout => \inst8|inst5|inst2|inst3~combout\);

-- Location: LABCELL_X19_Y3_N6
\inst12|auto_generated|l2_w22_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w22_n0_mux_dataout~0_combout\ = ( \inst5|inst5|inst2|inst3~combout\ & ( \inst8|inst5|inst2|inst3~combout\ & ( ((!\Jump~input_o\) # (\Branch~input_o\)) # (\JumpAddress[20]~input_o\) ) ) ) # ( !\inst5|inst5|inst2|inst3~combout\ & ( 
-- \inst8|inst5|inst2|inst3~combout\ & ( (!\Jump~input_o\ & ((\Branch~input_o\))) # (\Jump~input_o\ & (\JumpAddress[20]~input_o\ & !\Branch~input_o\)) ) ) ) # ( \inst5|inst5|inst2|inst3~combout\ & ( !\inst8|inst5|inst2|inst3~combout\ & ( (!\Jump~input_o\ & 
-- ((!\Branch~input_o\))) # (\Jump~input_o\ & ((\Branch~input_o\) # (\JumpAddress[20]~input_o\))) ) ) ) # ( !\inst5|inst5|inst2|inst3~combout\ & ( !\inst8|inst5|inst2|inst3~combout\ & ( (\JumpAddress[20]~input_o\ & (\Jump~input_o\ & !\Branch~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111101010000111100000101111100001111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAddress[20]~input_o\,
	datac => \ALT_INV_Jump~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \inst5|inst5|inst2|ALT_INV_inst3~combout\,
	dataf => \inst8|inst5|inst2|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w22_n0_mux_dataout~0_combout\);

-- Location: FF_X19_Y3_N8
\inst|inst2|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w22_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst1~q\);

-- Location: LABCELL_X17_Y3_N33
\inst5|inst5|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst3|inst3~combout\ = ( \inst5|inst5|inst1|inst1~combout\ & ( !\inst|inst2|inst1~q\ $ (!\inst|inst2|inst~q\) ) ) # ( !\inst5|inst5|inst1|inst1~combout\ & ( \inst|inst2|inst~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|ALT_INV_inst1~q\,
	datad => \inst|inst2|ALT_INV_inst~q\,
	dataf => \inst5|inst5|inst1|ALT_INV_inst1~combout\,
	combout => \inst5|inst5|inst3|inst3~combout\);

-- Location: LABCELL_X19_Y3_N0
\inst8|inst5|inst3|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst5|inst3|inst3~0_combout\ = ( \inst5|inst4|inst3|inst3~combout\ & ( \inst5|inst4|inst2|inst3~combout\ & ( (!\BranchOffset[15]~input_o\ & (\inst5|inst5|inst|inst3~combout\ & \inst5|inst4|inst1|inst3~combout\)) ) ) ) # ( 
-- !\inst5|inst4|inst3|inst3~combout\ & ( !\inst5|inst4|inst2|inst3~combout\ & ( (\BranchOffset[15]~input_o\ & (!\inst5|inst5|inst|inst3~combout\ & !\inst5|inst4|inst1|inst3~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datac => \inst5|inst5|inst|ALT_INV_inst3~combout\,
	datad => \inst5|inst4|inst1|ALT_INV_inst3~combout\,
	datae => \inst5|inst4|inst3|ALT_INV_inst3~combout\,
	dataf => \inst5|inst4|inst2|ALT_INV_inst3~combout\,
	combout => \inst8|inst5|inst3|inst3~0_combout\);

-- Location: LABCELL_X19_Y3_N12
\inst8|inst5|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst5|inst3|inst3~combout\ = ( \inst8|inst5|inst3|inst3~0_combout\ & ( \inst5|inst5|inst2|inst3~combout\ & ( !\inst5|inst5|inst3|inst3~combout\ $ (((!\inst5|inst5|inst1|inst3~combout\) # ((!\inst8|inst4|inst|inst5~0_combout\) # 
-- (!\inst5|inst4|inst1|inst3~combout\)))) ) ) ) # ( !\inst8|inst5|inst3|inst3~0_combout\ & ( \inst5|inst5|inst2|inst3~combout\ & ( \inst5|inst5|inst3|inst3~combout\ ) ) ) # ( \inst8|inst5|inst3|inst3~0_combout\ & ( !\inst5|inst5|inst2|inst3~combout\ & ( 
-- !\inst5|inst5|inst3|inst3~combout\ $ ((((\inst5|inst4|inst1|inst3~combout\) # (\inst8|inst4|inst|inst5~0_combout\)) # (\inst5|inst5|inst1|inst3~combout\))) ) ) ) # ( !\inst8|inst5|inst3|inst3~0_combout\ & ( !\inst5|inst5|inst2|inst3~combout\ & ( 
-- \inst5|inst5|inst3|inst3~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101100101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|inst3|ALT_INV_inst3~combout\,
	datab => \inst5|inst5|inst1|ALT_INV_inst3~combout\,
	datac => \inst8|inst4|inst|ALT_INV_inst5~0_combout\,
	datad => \inst5|inst4|inst1|ALT_INV_inst3~combout\,
	datae => \inst8|inst5|inst3|ALT_INV_inst3~0_combout\,
	dataf => \inst5|inst5|inst2|ALT_INV_inst3~combout\,
	combout => \inst8|inst5|inst3|inst3~combout\);

-- Location: LABCELL_X19_Y3_N39
\inst12|auto_generated|l2_w23_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w23_n0_mux_dataout~0_combout\ = ( \Jump~input_o\ & ( \inst8|inst5|inst3|inst3~combout\ & ( (!\Branch~input_o\ & (\JumpAddress[21]~input_o\)) # (\Branch~input_o\ & ((\inst5|inst5|inst3|inst3~combout\))) ) ) ) # ( !\Jump~input_o\ & 
-- ( \inst8|inst5|inst3|inst3~combout\ & ( (\inst5|inst5|inst3|inst3~combout\) # (\Branch~input_o\) ) ) ) # ( \Jump~input_o\ & ( !\inst8|inst5|inst3|inst3~combout\ & ( (!\Branch~input_o\ & (\JumpAddress[21]~input_o\)) # (\Branch~input_o\ & 
-- ((\inst5|inst5|inst3|inst3~combout\))) ) ) ) # ( !\Jump~input_o\ & ( !\inst8|inst5|inst3|inst3~combout\ & ( (!\Branch~input_o\ & \inst5|inst5|inst3|inst3~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010001000111011100110011111111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAddress[21]~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datad => \inst5|inst5|inst3|ALT_INV_inst3~combout\,
	datae => \ALT_INV_Jump~input_o\,
	dataf => \inst8|inst5|inst3|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w23_n0_mux_dataout~0_combout\);

-- Location: FF_X19_Y3_N41
\inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w23_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst~q\);

-- Location: LABCELL_X17_Y2_N12
\inst5|inst6|inst|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst|inst3~combout\ = ( \inst5|inst5|inst1|inst1~combout\ & ( !\inst|inst3|inst7~q\ $ (((!\inst|inst2|inst~q\) # (!\inst|inst2|inst1~q\))) ) ) # ( !\inst5|inst5|inst1|inst1~combout\ & ( \inst|inst3|inst7~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|ALT_INV_inst7~q\,
	datac => \inst|inst2|ALT_INV_inst~q\,
	datad => \inst|inst2|ALT_INV_inst1~q\,
	dataf => \inst5|inst5|inst1|ALT_INV_inst1~combout\,
	combout => \inst5|inst6|inst|inst3~combout\);

-- Location: LABCELL_X18_Y3_N12
\inst8|inst5|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst5|inst3|inst5~0_combout\ = ( \inst8|inst5|inst|inst5~0_combout\ & ( ((\inst5|inst5|inst1|inst3~combout\ & (\inst5|inst5|inst2|inst3~combout\ & \inst5|inst5|inst3|inst3~combout\))) # (\BranchOffset[15]~input_o\) ) ) # ( 
-- !\inst8|inst5|inst|inst5~0_combout\ & ( (\BranchOffset[15]~input_o\ & (((\inst5|inst5|inst3|inst3~combout\) # (\inst5|inst5|inst2|inst3~combout\)) # (\inst5|inst5|inst1|inst3~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|inst1|ALT_INV_inst3~combout\,
	datab => \inst5|inst5|inst2|ALT_INV_inst3~combout\,
	datac => \ALT_INV_BranchOffset[15]~input_o\,
	datad => \inst5|inst5|inst3|ALT_INV_inst3~combout\,
	dataf => \inst8|inst5|inst|ALT_INV_inst5~0_combout\,
	combout => \inst8|inst5|inst3|inst5~0_combout\);

-- Location: LABCELL_X18_Y3_N54
\inst12|auto_generated|l2_w24_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w24_n0_mux_dataout~0_combout\ = ( \Branch~input_o\ & ( \inst8|inst5|inst3|inst5~0_combout\ & ( !\inst5|inst6|inst|inst3~combout\ $ (((\BranchOffset[15]~input_o\) # (\Jump~input_o\))) ) ) ) # ( !\Branch~input_o\ & ( 
-- \inst8|inst5|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & ((\inst5|inst6|inst|inst3~combout\))) # (\Jump~input_o\ & (\JumpAddress[22]~input_o\)) ) ) ) # ( \Branch~input_o\ & ( !\inst8|inst5|inst3|inst5~0_combout\ & ( !\inst5|inst6|inst|inst3~combout\ $ 
-- (((!\BranchOffset[15]~input_o\) # (\Jump~input_o\))) ) ) ) # ( !\Branch~input_o\ & ( !\inst8|inst5|inst3|inst5~0_combout\ & ( (!\Jump~input_o\ & ((\inst5|inst6|inst|inst3~combout\))) # (\Jump~input_o\ & (\JumpAddress[22]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011001111001100010001110111011100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAddress[22]~input_o\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \ALT_INV_BranchOffset[15]~input_o\,
	datad => \inst5|inst6|inst|ALT_INV_inst3~combout\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \inst8|inst5|inst3|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w24_n0_mux_dataout~0_combout\);

-- Location: FF_X18_Y3_N56
\inst|inst3|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w24_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst7~q\);

-- Location: LABCELL_X16_Y2_N24
\inst5|inst6|inst|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst|inst1~combout\ = ( \inst5|inst5|inst1|inst1~combout\ & ( (\inst|inst3|inst7~q\ & (\inst|inst2|inst1~q\ & \inst|inst2|inst~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|ALT_INV_inst7~q\,
	datac => \inst|inst2|ALT_INV_inst1~q\,
	datad => \inst|inst2|ALT_INV_inst~q\,
	dataf => \inst5|inst5|inst1|ALT_INV_inst1~combout\,
	combout => \inst5|inst6|inst|inst1~combout\);

-- Location: LABCELL_X16_Y2_N33
\inst5|inst6|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|inst3~combout\ = ( \inst5|inst6|inst|inst1~combout\ & ( !\inst|inst3|inst6~q\ ) ) # ( !\inst5|inst6|inst|inst1~combout\ & ( \inst|inst3|inst6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|ALT_INV_inst6~q\,
	dataf => \inst5|inst6|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst6|inst1|inst3~combout\);

-- Location: LABCELL_X18_Y3_N30
\inst8|inst6|inst|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst6|inst|inst5~0_combout\ = ( \inst5|inst6|inst|inst3~combout\ & ( \inst8|inst5|inst|inst5~0_combout\ & ( ((\inst5|inst5|inst2|inst3~combout\ & (\inst5|inst5|inst1|inst3~combout\ & \inst5|inst5|inst3|inst3~combout\))) # 
-- (\BranchOffset[15]~input_o\) ) ) ) # ( !\inst5|inst6|inst|inst3~combout\ & ( \inst8|inst5|inst|inst5~0_combout\ & ( \BranchOffset[15]~input_o\ ) ) ) # ( \inst5|inst6|inst|inst3~combout\ & ( !\inst8|inst5|inst|inst5~0_combout\ & ( 
-- \BranchOffset[15]~input_o\ ) ) ) # ( !\inst5|inst6|inst|inst3~combout\ & ( !\inst8|inst5|inst|inst5~0_combout\ & ( (\BranchOffset[15]~input_o\ & (((\inst5|inst5|inst3|inst3~combout\) # (\inst5|inst5|inst1|inst3~combout\)) # 
-- (\inst5|inst5|inst2|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datab => \inst5|inst5|inst2|ALT_INV_inst3~combout\,
	datac => \inst5|inst5|inst1|ALT_INV_inst3~combout\,
	datad => \inst5|inst5|inst3|ALT_INV_inst3~combout\,
	datae => \inst5|inst6|inst|ALT_INV_inst3~combout\,
	dataf => \inst8|inst5|inst|ALT_INV_inst5~0_combout\,
	combout => \inst8|inst6|inst|inst5~0_combout\);

-- Location: LABCELL_X18_Y3_N0
\inst12|auto_generated|l2_w25_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w25_n0_mux_dataout~0_combout\ = ( \Branch~input_o\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( !\inst5|inst6|inst1|inst3~combout\ $ (((\Jump~input_o\) # (\BranchOffset[15]~input_o\))) ) ) ) # ( !\Branch~input_o\ & ( 
-- \inst8|inst6|inst|inst5~0_combout\ & ( (!\Jump~input_o\ & ((\inst5|inst6|inst1|inst3~combout\))) # (\Jump~input_o\ & (\JumpAddress[23]~input_o\)) ) ) ) # ( \Branch~input_o\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( !\inst5|inst6|inst1|inst3~combout\ $ 
-- (((!\BranchOffset[15]~input_o\) # (\Jump~input_o\))) ) ) ) # ( !\Branch~input_o\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( (!\Jump~input_o\ & ((\inst5|inst6|inst1|inst3~combout\))) # (\Jump~input_o\ & (\JumpAddress[23]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010110100000111100001111001100111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datab => \ALT_INV_JumpAddress[23]~input_o\,
	datac => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	datad => \ALT_INV_Jump~input_o\,
	datae => \ALT_INV_Branch~input_o\,
	dataf => \inst8|inst6|inst|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w25_n0_mux_dataout~0_combout\);

-- Location: FF_X18_Y3_N2
\inst|inst3|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w25_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst6~q\);

-- Location: IOIBUF_X54_Y0_N1
\JumpAddress[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(24),
	o => \JumpAddress[24]~input_o\);

-- Location: LABCELL_X19_Y3_N42
\inst12|auto_generated|l2_w26_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\ = (!\Branch~input_o\ & ((\JumpAddress[24]~input_o\))) # (\Branch~input_o\ & (\BranchOffset[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BranchOffset[15]~input_o\,
	datac => \ALT_INV_JumpAddress[24]~input_o\,
	datad => \ALT_INV_Branch~input_o\,
	combout => \inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X16_Y2_N57
\inst5|inst6|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst3~combout\ = ( \inst5|inst6|inst|inst1~combout\ & ( !\inst|inst3|inst6~q\ $ (!\inst|inst3|inst5~q\) ) ) # ( !\inst5|inst6|inst|inst1~combout\ & ( \inst|inst3|inst5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|ALT_INV_inst6~q\,
	datad => \inst|inst3|ALT_INV_inst5~q\,
	dataf => \inst5|inst6|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst6|inst2|inst3~combout\);

-- Location: LABCELL_X18_Y3_N36
\inst12|auto_generated|l2_w26_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w26_n0_mux_dataout~0_combout\ = ( \inst5|inst6|inst2|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( ((!\Jump~input_o\ & ((!\inst5|inst6|inst1|inst3~combout\) # (!\Branch~input_o\))) # (\Jump~input_o\ & 
-- ((\Branch~input_o\)))) # (\inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst5|inst6|inst2|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( (!\inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\ & (!\Jump~input_o\ & 
-- (\inst5|inst6|inst1|inst3~combout\ & \Branch~input_o\))) # (\inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\ & (\Jump~input_o\ & ((!\Branch~input_o\)))) ) ) ) # ( \inst5|inst6|inst2|inst3~combout\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( 
-- (!\inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\ & ((!\Jump~input_o\) # ((\Branch~input_o\)))) # (\inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\ & (((!\Branch~input_o\) # (\inst5|inst6|inst1|inst3~combout\)) # (\Jump~input_o\))) ) ) ) # 
-- ( !\inst5|inst6|inst2|inst3~combout\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( (\inst12|auto_generated|l2_w26_n0_mux_dataout~1_combout\ & ((!\Jump~input_o\ & (!\inst5|inst6|inst1|inst3~combout\ & \Branch~input_o\)) # (\Jump~input_o\ & 
-- ((!\Branch~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000000110111011011111100010001000010001101110111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|auto_generated|ALT_INV_l2_w26_n0_mux_dataout~1_combout\,
	datab => \ALT_INV_Jump~input_o\,
	datac => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	datad => \ALT_INV_Branch~input_o\,
	datae => \inst5|inst6|inst2|ALT_INV_inst3~combout\,
	dataf => \inst8|inst6|inst|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w26_n0_mux_dataout~0_combout\);

-- Location: FF_X18_Y3_N38
\inst|inst3|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w26_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst5~q\);

-- Location: IOIBUF_X40_Y0_N35
\JumpAddress[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAddress(25),
	o => \JumpAddress[25]~input_o\);

-- Location: LABCELL_X17_Y3_N21
\inst12|auto_generated|l2_w27_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\ = ( \inst5|inst6|inst2|inst3~combout\ & ( \inst5|inst6|inst1|inst3~combout\ & ( (!\Branch~input_o\ & (!\JumpAddress[25]~input_o\)) # (\Branch~input_o\ & ((!\BranchOffset[15]~input_o\))) ) ) ) # ( 
-- !\inst5|inst6|inst2|inst3~combout\ & ( \inst5|inst6|inst1|inst3~combout\ & ( (!\JumpAddress[25]~input_o\ & !\Branch~input_o\) ) ) ) # ( \inst5|inst6|inst2|inst3~combout\ & ( !\inst5|inst6|inst1|inst3~combout\ & ( (!\JumpAddress[25]~input_o\ & 
-- !\Branch~input_o\) ) ) ) # ( !\inst5|inst6|inst2|inst3~combout\ & ( !\inst5|inst6|inst1|inst3~combout\ & ( (!\Branch~input_o\ & (!\JumpAddress[25]~input_o\)) # (\Branch~input_o\ & ((\BranchOffset[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111101000001010000010100000101000001010111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAddress[25]~input_o\,
	datac => \ALT_INV_Branch~input_o\,
	datad => \ALT_INV_BranchOffset[15]~input_o\,
	datae => \inst5|inst6|inst2|ALT_INV_inst3~combout\,
	dataf => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X16_Y2_N30
\inst5|inst6|inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst3|inst3~combout\ = ( \inst5|inst6|inst|inst1~combout\ & ( !\inst|inst3|inst4~q\ $ (((!\inst|inst3|inst6~q\) # (!\inst|inst3|inst5~q\))) ) ) # ( !\inst5|inst6|inst|inst1~combout\ & ( \inst|inst3|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|ALT_INV_inst6~q\,
	datac => \inst|inst3|ALT_INV_inst4~q\,
	datad => \inst|inst3|ALT_INV_inst5~q\,
	dataf => \inst5|inst6|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst6|inst3|inst3~combout\);

-- Location: LABCELL_X17_Y3_N6
\inst12|auto_generated|l2_w27_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w27_n0_mux_dataout~0_combout\ = ( \inst5|inst6|inst3|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( (!\inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\) # ((!\Jump~input_o\ & ((!\Branch~input_o\) # 
-- (!\inst5|inst6|inst1|inst3~combout\))) # (\Jump~input_o\ & (\Branch~input_o\))) ) ) ) # ( !\inst5|inst6|inst3|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & 
-- (\inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\ & \inst5|inst6|inst1|inst3~combout\))) # (\Jump~input_o\ & (!\Branch~input_o\ & (!\inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\))) ) ) ) # ( \inst5|inst6|inst3|inst3~combout\ & ( 
-- !\inst8|inst6|inst|inst5~0_combout\ & ( (!\inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\) # ((!\Jump~input_o\ & ((!\Branch~input_o\) # (\inst5|inst6|inst1|inst3~combout\))) # (\Jump~input_o\ & (\Branch~input_o\))) ) ) ) # ( 
-- !\inst5|inst6|inst3|inst3~combout\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( (!\Jump~input_o\ & (\Branch~input_o\ & (\inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\ & !\inst5|inst6|inst1|inst3~combout\))) # (\Jump~input_o\ & (!\Branch~input_o\ & 
-- (!\inst12|auto_generated|l2_w27_n0_mux_dataout~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000000111110011111101101000000010000101111101111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Jump~input_o\,
	datab => \ALT_INV_Branch~input_o\,
	datac => \inst12|auto_generated|ALT_INV_l2_w27_n0_mux_dataout~1_combout\,
	datad => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	datae => \inst5|inst6|inst3|ALT_INV_inst3~combout\,
	dataf => \inst8|inst6|inst|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w27_n0_mux_dataout~0_combout\);

-- Location: FF_X17_Y3_N8
\inst|inst3|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w27_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst4~q\);

-- Location: LABCELL_X16_Y2_N54
\inst5|inst7|inst|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst7|inst|inst3~combout\ = ( \inst5|inst6|inst|inst1~combout\ & ( !\inst|inst3|inst3~q\ $ (((!\inst|inst3|inst6~q\) # ((!\inst|inst3|inst5~q\) # (!\inst|inst3|inst4~q\)))) ) ) # ( !\inst5|inst6|inst|inst1~combout\ & ( \inst|inst3|inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|ALT_INV_inst6~q\,
	datab => \inst|inst3|ALT_INV_inst5~q\,
	datac => \inst|inst3|ALT_INV_inst4~q\,
	datad => \inst|inst3|ALT_INV_inst3~q\,
	dataf => \inst5|inst6|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst7|inst|inst3~combout\);

-- Location: LABCELL_X16_Y3_N18
\inst12|auto_generated|l2_w31_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\ = ( \Branch~input_o\ & ( !\Jump~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Branch~input_o\,
	dataf => \ALT_INV_Jump~input_o\,
	combout => \inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X17_Y3_N15
\inst12|auto_generated|l2_w28_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w28_n0_mux_dataout~1_combout\ = ( \inst5|inst6|inst1|inst3~combout\ & ( (\inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\ & !\BranchOffset[15]~input_o\) ) ) # ( !\inst5|inst6|inst1|inst3~combout\ & ( 
-- (\inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\ & \BranchOffset[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_BranchOffset[15]~input_o\,
	dataf => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w28_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X17_Y3_N48
\inst12|auto_generated|l2_w28_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w28_n0_mux_dataout~0_combout\ = ( \inst5|inst6|inst2|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( !\inst5|inst7|inst|inst3~combout\ $ (((!\inst12|auto_generated|l2_w28_n0_mux_dataout~1_combout\) # 
-- ((!\inst5|inst6|inst3|inst3~combout\) # (!\inst5|inst6|inst1|inst3~combout\)))) ) ) ) # ( !\inst5|inst6|inst2|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( \inst5|inst7|inst|inst3~combout\ ) ) ) # ( \inst5|inst6|inst2|inst3~combout\ & ( 
-- !\inst8|inst6|inst|inst5~0_combout\ & ( \inst5|inst7|inst|inst3~combout\ ) ) ) # ( !\inst5|inst6|inst2|inst3~combout\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( !\inst5|inst7|inst|inst3~combout\ $ 
-- (((!\inst12|auto_generated|l2_w28_n0_mux_dataout~1_combout\) # ((\inst5|inst6|inst1|inst3~combout\) # (\inst5|inst6|inst3|inst3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|inst|ALT_INV_inst3~combout\,
	datab => \inst12|auto_generated|ALT_INV_l2_w28_n0_mux_dataout~1_combout\,
	datac => \inst5|inst6|inst3|ALT_INV_inst3~combout\,
	datad => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	datae => \inst5|inst6|inst2|ALT_INV_inst3~combout\,
	dataf => \inst8|inst6|inst|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w28_n0_mux_dataout~0_combout\);

-- Location: FF_X17_Y3_N50
\inst|inst3|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w28_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst3~q\);

-- Location: LABCELL_X16_Y2_N21
\inst5|inst6|inst3|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst3|inst1~combout\ = ( \inst5|inst6|inst|inst1~combout\ & ( (\inst|inst3|inst4~q\ & (\inst|inst3|inst5~q\ & \inst|inst3|inst6~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|ALT_INV_inst4~q\,
	datab => \inst|inst3|ALT_INV_inst5~q\,
	datad => \inst|inst3|ALT_INV_inst6~q\,
	dataf => \inst5|inst6|inst|ALT_INV_inst1~combout\,
	combout => \inst5|inst6|inst3|inst1~combout\);

-- Location: LABCELL_X17_Y3_N54
\inst12|auto_generated|l2_w29_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w29_n0_mux_dataout~1_combout\ = ( \inst5|inst6|inst1|inst3~combout\ & ( (\inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\ & (!\BranchOffset[15]~input_o\ & \inst5|inst6|inst2|inst3~combout\)) ) ) # ( 
-- !\inst5|inst6|inst1|inst3~combout\ & ( (\inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\ & (\BranchOffset[15]~input_o\ & !\inst5|inst6|inst2|inst3~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_BranchOffset[15]~input_o\,
	datad => \inst5|inst6|inst2|ALT_INV_inst3~combout\,
	dataf => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w29_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X17_Y3_N42
\inst12|auto_generated|l2_w29_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w29_n0_mux_dataout~0_combout\ = ( \inst5|inst7|inst|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( !\inst5|inst7|inst1|inst3~combout\ $ (((!\inst5|inst6|inst1|inst3~combout\) # 
-- ((!\inst12|auto_generated|l2_w29_n0_mux_dataout~1_combout\) # (!\inst5|inst6|inst3|inst3~combout\)))) ) ) ) # ( !\inst5|inst7|inst|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( \inst5|inst7|inst1|inst3~combout\ ) ) ) # ( 
-- \inst5|inst7|inst|inst3~combout\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( \inst5|inst7|inst1|inst3~combout\ ) ) ) # ( !\inst5|inst7|inst|inst3~combout\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( !\inst5|inst7|inst1|inst3~combout\ $ 
-- ((((!\inst12|auto_generated|l2_w29_n0_mux_dataout~1_combout\) # (\inst5|inst6|inst3|inst3~combout\)) # (\inst5|inst6|inst1|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|inst1|ALT_INV_inst3~combout\,
	datab => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	datac => \inst12|auto_generated|ALT_INV_l2_w29_n0_mux_dataout~1_combout\,
	datad => \inst5|inst6|inst3|ALT_INV_inst3~combout\,
	datae => \inst5|inst7|inst|ALT_INV_inst3~combout\,
	dataf => \inst8|inst6|inst|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w29_n0_mux_dataout~0_combout\);

-- Location: FF_X17_Y3_N44
\inst|inst3|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w29_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2~q\);

-- Location: LABCELL_X16_Y2_N9
\inst5|inst7|inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst7|inst1|inst3~combout\ = ( \inst|inst3|inst2~q\ & ( (!\inst|inst3|inst3~q\) # (!\inst5|inst6|inst3|inst1~combout\) ) ) # ( !\inst|inst3|inst2~q\ & ( (\inst|inst3|inst3~q\ & \inst5|inst6|inst3|inst1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|ALT_INV_inst3~q\,
	datad => \inst5|inst6|inst3|ALT_INV_inst1~combout\,
	dataf => \inst|inst3|ALT_INV_inst2~q\,
	combout => \inst5|inst7|inst1|inst3~combout\);

-- Location: LABCELL_X17_Y3_N36
\inst12|auto_generated|l2_w31_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w31_n0_mux_dataout~3_combout\ = ( \inst5|inst6|inst3|inst3~combout\ & ( \inst5|inst6|inst1|inst3~combout\ & ( (!\BranchOffset[15]~input_o\ & (\inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\ & 
-- (\inst5|inst7|inst|inst3~combout\ & \inst5|inst6|inst2|inst3~combout\))) ) ) ) # ( !\inst5|inst6|inst3|inst3~combout\ & ( !\inst5|inst6|inst1|inst3~combout\ & ( (\BranchOffset[15]~input_o\ & (\inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\ & 
-- (!\inst5|inst7|inst|inst3~combout\ & !\inst5|inst6|inst2|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datab => \inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~0_combout\,
	datac => \inst5|inst7|inst|ALT_INV_inst3~combout\,
	datad => \inst5|inst6|inst2|ALT_INV_inst3~combout\,
	datae => \inst5|inst6|inst3|ALT_INV_inst3~combout\,
	dataf => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w31_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X16_Y2_N6
\inst12|auto_generated|l2_w30_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w30_n0_mux_dataout~1_combout\ = ( \inst5|inst6|inst3|inst3~combout\ & ( (!\BranchOffset[15]~input_o\ & (\inst5|inst6|inst2|inst3~combout\ & (\inst5|inst6|inst1|inst3~combout\ & 
-- \inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\))) ) ) # ( !\inst5|inst6|inst3|inst3~combout\ & ( (\BranchOffset[15]~input_o\ & (!\inst5|inst6|inst2|inst3~combout\ & (!\inst5|inst6|inst1|inst3~combout\ & 
-- \inst12|auto_generated|l2_w31_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchOffset[15]~input_o\,
	datab => \inst5|inst6|inst2|ALT_INV_inst3~combout\,
	datac => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	datad => \inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~0_combout\,
	dataf => \inst5|inst6|inst3|ALT_INV_inst3~combout\,
	combout => \inst12|auto_generated|l2_w30_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X17_Y2_N0
\inst12|auto_generated|l2_w30_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w30_n0_mux_dataout~0_combout\ = ( \inst5|inst6|inst1|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( !\inst5|inst7|inst2|inst3~combout\ $ (((!\inst5|inst7|inst|inst3~combout\) # 
-- ((!\inst12|auto_generated|l2_w30_n0_mux_dataout~1_combout\) # (!\inst5|inst7|inst1|inst3~combout\)))) ) ) ) # ( !\inst5|inst6|inst1|inst3~combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( \inst5|inst7|inst2|inst3~combout\ ) ) ) # ( 
-- \inst5|inst6|inst1|inst3~combout\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( \inst5|inst7|inst2|inst3~combout\ ) ) ) # ( !\inst5|inst6|inst1|inst3~combout\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( !\inst5|inst7|inst2|inst3~combout\ $ 
-- ((((!\inst12|auto_generated|l2_w30_n0_mux_dataout~1_combout\) # (\inst5|inst7|inst1|inst3~combout\)) # (\inst5|inst7|inst|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|inst|ALT_INV_inst3~combout\,
	datab => \inst5|inst7|inst2|ALT_INV_inst3~combout\,
	datac => \inst12|auto_generated|ALT_INV_l2_w30_n0_mux_dataout~1_combout\,
	datad => \inst5|inst7|inst1|ALT_INV_inst3~combout\,
	datae => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	dataf => \inst8|inst6|inst|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w30_n0_mux_dataout~0_combout\);

-- Location: FF_X17_Y2_N2
\inst|inst3|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w30_n0_mux_dataout~0_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1~q\);

-- Location: LABCELL_X16_Y2_N0
\inst5|inst7|inst2|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst7|inst2|inst3~combout\ = ( \inst|inst3|inst1~q\ & ( (!\inst|inst3|inst3~q\) # ((!\inst|inst3|inst2~q\) # (!\inst5|inst6|inst3|inst1~combout\)) ) ) # ( !\inst|inst3|inst1~q\ & ( (\inst|inst3|inst3~q\ & (\inst|inst3|inst2~q\ & 
-- \inst5|inst6|inst3|inst1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|ALT_INV_inst3~q\,
	datac => \inst|inst3|ALT_INV_inst2~q\,
	datad => \inst5|inst6|inst3|ALT_INV_inst1~combout\,
	dataf => \inst|inst3|ALT_INV_inst1~q\,
	combout => \inst5|inst7|inst2|inst3~combout\);

-- Location: LABCELL_X16_Y2_N48
\inst12|auto_generated|l2_w31_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w31_n0_mux_dataout~2_combout\ = ( \inst5|inst6|inst3|inst1~combout\ & ( !\inst|inst3|inst~q\ $ (((!\inst|inst3|inst2~q\) # ((!\inst|inst3|inst1~q\) # (!\inst|inst3|inst3~q\)))) ) ) # ( !\inst5|inst6|inst3|inst1~combout\ & ( 
-- \inst|inst3|inst~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|ALT_INV_inst2~q\,
	datab => \inst|inst3|ALT_INV_inst1~q\,
	datac => \inst|inst3|ALT_INV_inst~q\,
	datad => \inst|inst3|ALT_INV_inst3~q\,
	dataf => \inst5|inst6|inst3|ALT_INV_inst1~combout\,
	combout => \inst12|auto_generated|l2_w31_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X17_Y3_N0
\inst12|auto_generated|l2_w31_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|auto_generated|l2_w31_n0_mux_dataout~1_combout\ = ( \inst12|auto_generated|l2_w31_n0_mux_dataout~2_combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( (!\inst5|inst7|inst1|inst3~combout\) # ((!\inst5|inst6|inst1|inst3~combout\) # 
-- ((!\inst12|auto_generated|l2_w31_n0_mux_dataout~3_combout\) # (!\inst5|inst7|inst2|inst3~combout\))) ) ) ) # ( !\inst12|auto_generated|l2_w31_n0_mux_dataout~2_combout\ & ( \inst8|inst6|inst|inst5~0_combout\ & ( (\inst5|inst7|inst1|inst3~combout\ & 
-- (\inst5|inst6|inst1|inst3~combout\ & (\inst12|auto_generated|l2_w31_n0_mux_dataout~3_combout\ & \inst5|inst7|inst2|inst3~combout\))) ) ) ) # ( \inst12|auto_generated|l2_w31_n0_mux_dataout~2_combout\ & ( !\inst8|inst6|inst|inst5~0_combout\ & ( 
-- (((!\inst12|auto_generated|l2_w31_n0_mux_dataout~3_combout\) # (\inst5|inst7|inst2|inst3~combout\)) # (\inst5|inst6|inst1|inst3~combout\)) # (\inst5|inst7|inst1|inst3~combout\) ) ) ) # ( !\inst12|auto_generated|l2_w31_n0_mux_dataout~2_combout\ & ( 
-- !\inst8|inst6|inst|inst5~0_combout\ & ( (!\inst5|inst7|inst1|inst3~combout\ & (!\inst5|inst6|inst1|inst3~combout\ & (\inst12|auto_generated|l2_w31_n0_mux_dataout~3_combout\ & !\inst5|inst7|inst2|inst3~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000111101111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|inst1|ALT_INV_inst3~combout\,
	datab => \inst5|inst6|inst1|ALT_INV_inst3~combout\,
	datac => \inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~3_combout\,
	datad => \inst5|inst7|inst2|ALT_INV_inst3~combout\,
	datae => \inst12|auto_generated|ALT_INV_l2_w31_n0_mux_dataout~2_combout\,
	dataf => \inst8|inst6|inst|ALT_INV_inst5~0_combout\,
	combout => \inst12|auto_generated|l2_w31_n0_mux_dataout~1_combout\);

-- Location: FF_X17_Y3_N2
\inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst12|auto_generated|l2_w31_n0_mux_dataout~1_combout\,
	sclr => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst~q\);

-- Location: MLABCELL_X52_Y42_N3
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


