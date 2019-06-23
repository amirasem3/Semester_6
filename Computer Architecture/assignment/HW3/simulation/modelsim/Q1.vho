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

-- DATE "06/18/2019 13:53:06"

-- 
-- Device: Altera 5CGTFD9E5F35I7 Package FBGA1152
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
	ZERO : OUT std_logic;
	SIGN : OUT std_logic;
	Cin : IN std_logic;
	DATA1 : IN std_logic_vector(31 DOWNTO 0);
	DATA2 : IN std_logic_vector(31 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(31 DOWNTO 0);
	OP : IN std_logic_vector(2 DOWNTO 0);
	OVERFLOW : OUT std_logic;
	E : OUT std_logic;
	cmpout : OUT std_logic;
	equals : OUT std_logic_vector(31 DOWNTO 0);
	SHAMT : IN std_logic_vector(4 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- ZERO	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[31]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[30]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[29]	=>  Location: PIN_AM14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[28]	=>  Location: PIN_AL8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[27]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[26]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[25]	=>  Location: PIN_AN4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[24]	=>  Location: PIN_AN8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[23]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[22]	=>  Location: PIN_AM6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[21]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[20]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[19]	=>  Location: PIN_AN14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[18]	=>  Location: PIN_AP6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[17]	=>  Location: PIN_AL23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[16]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[15]	=>  Location: PIN_AN16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[14]	=>  Location: PIN_AL17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[13]	=>  Location: PIN_AN28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[12]	=>  Location: PIN_AM20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[11]	=>  Location: PIN_AN18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[10]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[9]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[8]	=>  Location: PIN_AP14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[7]	=>  Location: PIN_AM18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[6]	=>  Location: PIN_AP27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[5]	=>  Location: PIN_AN27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[4]	=>  Location: PIN_AP16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_AL10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_AM25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVERFLOW	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmpout	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[31]	=>  Location: PIN_AN7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[30]	=>  Location: PIN_AN11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[29]	=>  Location: PIN_AL13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[28]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[27]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[26]	=>  Location: PIN_AM8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[25]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[24]	=>  Location: PIN_AM10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[23]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[22]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[21]	=>  Location: PIN_AP29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[20]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[19]	=>  Location: PIN_AN22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[18]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[17]	=>  Location: PIN_AP17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[16]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[15]	=>  Location: PIN_AN21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[14]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[13]	=>  Location: PIN_AN19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[12]	=>  Location: PIN_AN24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[11]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[10]	=>  Location: PIN_AP20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[9]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[8]	=>  Location: PIN_AL20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[7]	=>  Location: PIN_AL18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[6]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[4]	=>  Location: PIN_AM24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[3]	=>  Location: PIN_AM9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[1]	=>  Location: PIN_AL15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equals[0]	=>  Location: PIN_AL16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[4]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[1]	=>  Location: PIN_AL32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHAMT[0]	=>  Location: PIN_Y34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[8]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[8]	=>  Location: PIN_AP21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[0]	=>  Location: PIN_AP11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[0]	=>  Location: PIN_AN12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[1]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[1]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[7]	=>  Location: PIN_AN23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[7]	=>  Location: PIN_AP25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[6]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[5]	=>  Location: PIN_AM26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[5]	=>  Location: PIN_AN13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[4]	=>  Location: PIN_AM21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[4]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[3]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[3]	=>  Location: PIN_AL12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[2]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[2]	=>  Location: PIN_AM19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[14]	=>  Location: PIN_AP24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[14]	=>  Location: PIN_AP22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[13]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[13]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[12]	=>  Location: PIN_AL22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[12]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[11]	=>  Location: PIN_AN17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[11]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[10]	=>  Location: PIN_AL21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[10]	=>  Location: PIN_AP19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[9]	=>  Location: PIN_AM23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[9]	=>  Location: PIN_AP26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[16]	=>  Location: PIN_AN26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[16]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[15]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[15]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[21]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[21]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[20]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[20]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[19]	=>  Location: PIN_AM13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[19]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[18]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[18]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[17]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[17]	=>  Location: PIN_AM16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[23]	=>  Location: PIN_AP10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[23]	=>  Location: PIN_AM15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[22]	=>  Location: PIN_AN5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[22]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[28]	=>  Location: PIN_AP9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[28]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[27]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[27]	=>  Location: PIN_AN9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[26]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[26]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[25]	=>  Location: PIN_AL6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[25]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[24]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[24]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[30]	=>  Location: PIN_AL11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[30]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[29]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[29]	=>  Location: PIN_AM11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[31]	=>  Location: PIN_AP5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[31]	=>  Location: PIN_AP7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_AP12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_AP15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ZERO : std_logic;
SIGNAL ww_SIGN : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_DATA1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DATA2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_OVERFLOW : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_cmpout : std_logic;
SIGNAL ww_equals : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SHAMT : std_logic_vector(4 DOWNTO 0);
SIGNAL \SHAMT[4]~input_o\ : std_logic;
SIGNAL \SHAMT[3]~input_o\ : std_logic;
SIGNAL \SHAMT[2]~input_o\ : std_logic;
SIGNAL \SHAMT[1]~input_o\ : std_logic;
SIGNAL \SHAMT[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \DATA2[30]~input_o\ : std_logic;
SIGNAL \DATA2[24]~input_o\ : std_logic;
SIGNAL \DATA2[25]~input_o\ : std_logic;
SIGNAL \DATA2[23]~input_o\ : std_logic;
SIGNAL \DATA2[20]~input_o\ : std_logic;
SIGNAL \DATA2[18]~input_o\ : std_logic;
SIGNAL \DATA2[15]~input_o\ : std_logic;
SIGNAL \DATA2[16]~input_o\ : std_logic;
SIGNAL \DATA2[9]~input_o\ : std_logic;
SIGNAL \DATA2[8]~input_o\ : std_logic;
SIGNAL \DATA2[10]~input_o\ : std_logic;
SIGNAL \DATA2[2]~input_o\ : std_logic;
SIGNAL \DATA2[3]~input_o\ : std_logic;
SIGNAL \DATA2[0]~input_o\ : std_logic;
SIGNAL \DATA2[1]~input_o\ : std_logic;
SIGNAL \DATA2[4]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \DATA2[6]~input_o\ : std_logic;
SIGNAL \DATA2[7]~input_o\ : std_logic;
SIGNAL \DATA2[5]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \DATA2[11]~input_o\ : std_logic;
SIGNAL \DATA2[13]~input_o\ : std_logic;
SIGNAL \DATA2[12]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \DATA2[14]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \DATA2[17]~input_o\ : std_logic;
SIGNAL \DATA2[19]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \DATA2[21]~input_o\ : std_logic;
SIGNAL \DATA2[22]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \DATA2[26]~input_o\ : std_logic;
SIGNAL \DATA2[28]~input_o\ : std_logic;
SIGNAL \DATA2[27]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \DATA2[29]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \DATA2[31]~input_o\ : std_logic;
SIGNAL \DATA1[29]~input_o\ : std_logic;
SIGNAL \DATA1[30]~input_o\ : std_logic;
SIGNAL \DATA1[31]~input_o\ : std_logic;
SIGNAL \DATA1[28]~input_o\ : std_logic;
SIGNAL \DATA1[26]~input_o\ : std_logic;
SIGNAL \DATA1[27]~input_o\ : std_logic;
SIGNAL \DATA1[23]~input_o\ : std_logic;
SIGNAL \DATA1[24]~input_o\ : std_logic;
SIGNAL \DATA1[25]~input_o\ : std_logic;
SIGNAL \DATA1[18]~input_o\ : std_logic;
SIGNAL \DATA1[17]~input_o\ : std_logic;
SIGNAL \DATA1[19]~input_o\ : std_logic;
SIGNAL \DATA1[14]~input_o\ : std_logic;
SIGNAL \DATA1[7]~input_o\ : std_logic;
SIGNAL \DATA1[6]~input_o\ : std_logic;
SIGNAL \DATA1[5]~input_o\ : std_logic;
SIGNAL \DATA1[4]~input_o\ : std_logic;
SIGNAL \DATA1[1]~input_o\ : std_logic;
SIGNAL \DATA1[0]~input_o\ : std_logic;
SIGNAL \DATA1[3]~input_o\ : std_logic;
SIGNAL \DATA1[2]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \DATA1[8]~input_o\ : std_logic;
SIGNAL \DATA1[9]~input_o\ : std_logic;
SIGNAL \DATA1[10]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \DATA1[11]~input_o\ : std_logic;
SIGNAL \DATA1[12]~input_o\ : std_logic;
SIGNAL \DATA1[13]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \DATA1[15]~input_o\ : std_logic;
SIGNAL \DATA1[16]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \DATA1[20]~input_o\ : std_logic;
SIGNAL \DATA1[22]~input_o\ : std_logic;
SIGNAL \DATA1[21]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst|Bit3|inst|X1~0_combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit3|inst1|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit2|inst1|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst2|inst3|inst1|inst2|inst2~combout\ : std_logic;
SIGNAL \inst2|inst3|inst1|inst|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit1|inst1|X1~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst2|inst1|inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst1|inst|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst1|inst1|inst2~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst3|inst2~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit3|inst1|X1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst|inst1|inst2~combout\ : std_logic;
SIGNAL \inst2|inst2|inst|inst2|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst2|inst2~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit2|inst1|X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst|inst1|inst|inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst|inst1|inst1|inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst3|inst2~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst|inst1|inst2~combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst2|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst|Bit3|inst|X1~1_combout\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~9_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~10_combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst|inst|inst5~combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~11_combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst1|inst3|inst4~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst1|inst3|inst4~2_combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst|inst|inst5~combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst1|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst1|inst2|inst4~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst1|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst1|inst2|inst4~combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~12_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst|inst4~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst|inst4~2_combout\ : std_logic;
SIGNAL \inst8|inst1|inst|inst1|inst1|inst4~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst|inst1|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst|inst1|inst1|inst4~2_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~13_combout\ : std_logic;
SIGNAL \inst8|inst1|inst|inst1|inst1|inst4~combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst1|inst3|inst4~combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~6_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~7_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~8_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~2_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~3_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~4_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~5_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \inst24|inst7|O1[31]~179_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit2|inst1|And1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit2|inst1|And1~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Bit1|inst2~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Bit3|inst2~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit1|inst1|And1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit0|inst2~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit3|inst1|And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit1|inst2~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit3|inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit2|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit0|inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit3|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit3|inst1|And1~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit1|inst2~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit3|inst2~combout\ : std_logic;
SIGNAL \inst|inst|inst|Bit1|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit2|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit0|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit1|inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit3|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit1|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit3|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit1|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit3|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit1|inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst1|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst1|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit0|inst1|X1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit2|inst1|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit2|inst2~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit0|inst1|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst1|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst1|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit2|inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst|inst|Bit1|inst2~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[31]~33_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[31]~34_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[31]~32_combout\ : std_logic;
SIGNAL \inst|inst|inst|Bit2|inst1|X1~combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst1|inst|inst~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst3|inst|inst~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst1|inst|inst~combout\ : std_logic;
SIGNAL \inst2|inst2|inst|inst1|inst|inst~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst3|inst|inst~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst2|inst2~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst1|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst1|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst2|inst2~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst1|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst|inst2~combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst|inst|inst|inst~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst2|inst|inst~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst1|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst|inst2|inst|inst~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst|inst|inst~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst|inst2|inst2~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst1|Bit2|inst|And1~combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst2|inst|inst~combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst3|inst|inst~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst|inst|inst~combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[31]~35_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[30]~175_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[30]~36_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[30]~37_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[29]~171_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[29]~38_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[29]~39_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[29]~40_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[28]~41_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[28]~42_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[28]~167_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[28]~43_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[27]~45_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[27]~44_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[27]~46_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[27]~47_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[26]~49_combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[26]~48_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[26]~50_combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst1|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[25]~163_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[25]~51_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[25]~52_combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[24]~159_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[24]~53_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[24]~54_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[24]~55_combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[23]~56_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[23]~57_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[23]~58_combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit1|inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[22]~59_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[22]~60_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[22]~61_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[22]~62_combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[21]~63_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[21]~64_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[21]~65_combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[20]~155_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[20]~66_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[20]~67_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[19]~68_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[19]~69_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[19]~70_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[19]~71_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[18]~72_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[18]~73_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[18]~74_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[18]~75_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[17]~78_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[17]~76_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[17]~77_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[17]~79_combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst1|Bit0|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[16]~151_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[16]~80_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[16]~81_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[15]~83_combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst|Bit1|inst|And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[15]~82_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[15]~84_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[14]~147_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[14]~85_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[14]~86_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[14]~87_combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[13]~143_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[13]~88_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[13]~89_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[12]~92_combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit3|inst|And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit3|inst2~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[12]~90_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[12]~91_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[12]~93_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[11]~95_combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[11]~94_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[11]~96_combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit2|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[10]~97_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[10]~98_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[10]~99_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[10]~100_combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst1|Bit0|inst|And1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[9]~139_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[9]~101_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[9]~102_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[9]~103_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[8]~106_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[8]~104_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[8]~105_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[8]~107_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[7]~109_combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[7]~108_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[7]~110_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[6]~111_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[6]~112_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[6]~113_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[6]~114_combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst|Bit1|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[5]~115_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[5]~116_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[5]~117_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[4]~119_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[4]~135_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[4]~118_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[4]~120_combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst1|Bit3|inst|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[3]~121_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[3]~122_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[3]~123_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Bit2|inst1|X1~combout\ : std_logic;
SIGNAL \inst24|inst7|O1[2]~124_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[2]~125_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[2]~126_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[2]~127_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[1]~128_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[1]~129_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[1]~130_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[1]~131_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[0]~133_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[0]~132_combout\ : std_logic;
SIGNAL \inst24|inst7|O1[0]~134_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|inst4~combout\ : std_logic;
SIGNAL \inst21|O1[31]~0_combout\ : std_logic;
SIGNAL \inst21|O1[30]~1_combout\ : std_logic;
SIGNAL \inst21|O1[29]~2_combout\ : std_logic;
SIGNAL \inst21|O1[28]~3_combout\ : std_logic;
SIGNAL \inst21|O1[27]~4_combout\ : std_logic;
SIGNAL \inst21|O1[26]~5_combout\ : std_logic;
SIGNAL \inst21|O1[25]~6_combout\ : std_logic;
SIGNAL \inst21|O1[24]~7_combout\ : std_logic;
SIGNAL \inst21|O1[23]~8_combout\ : std_logic;
SIGNAL \inst21|O1[22]~9_combout\ : std_logic;
SIGNAL \inst21|O1[21]~10_combout\ : std_logic;
SIGNAL \inst21|O1[20]~11_combout\ : std_logic;
SIGNAL \inst21|O1[19]~12_combout\ : std_logic;
SIGNAL \inst21|O1[18]~13_combout\ : std_logic;
SIGNAL \inst21|O1[17]~14_combout\ : std_logic;
SIGNAL \inst21|O1[16]~15_combout\ : std_logic;
SIGNAL \inst21|O1[15]~16_combout\ : std_logic;
SIGNAL \inst21|O1[14]~17_combout\ : std_logic;
SIGNAL \inst21|O1[13]~18_combout\ : std_logic;
SIGNAL \inst21|O1[12]~19_combout\ : std_logic;
SIGNAL \inst21|O1[11]~20_combout\ : std_logic;
SIGNAL \inst21|O1[10]~21_combout\ : std_logic;
SIGNAL \inst21|O1[9]~22_combout\ : std_logic;
SIGNAL \inst21|O1[8]~23_combout\ : std_logic;
SIGNAL \inst21|O1[7]~24_combout\ : std_logic;
SIGNAL \inst21|O1[6]~25_combout\ : std_logic;
SIGNAL \inst21|O1[5]~26_combout\ : std_logic;
SIGNAL \inst21|O1[4]~27_combout\ : std_logic;
SIGNAL \inst21|O1[3]~28_combout\ : std_logic;
SIGNAL \inst21|O1[2]~29_combout\ : std_logic;
SIGNAL \inst21|O1[1]~30_combout\ : std_logic;
SIGNAL \inst21|O1[0]~31_combout\ : std_logic;
SIGNAL \ALT_INV_OP[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA1[8]~input_o\ : std_logic;
SIGNAL \inst7|inst|inst2|inst1|Bit1|inst|ALT_INV_And1~0_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[0]~134_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[0]~133_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[0]~132_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[1]~131_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[1]~130_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[1]~129_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[1]~128_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[2]~127_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[2]~126_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[2]~125_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[2]~124_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Bit2|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[3]~123_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[3]~122_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[3]~121_combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[4]~120_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[4]~119_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[4]~118_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[5]~117_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[5]~116_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[5]~115_combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[6]~114_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[6]~113_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[6]~112_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[6]~111_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[7]~110_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[7]~109_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[7]~108_combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[8]~107_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[8]~106_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[8]~105_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[8]~104_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[9]~103_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[9]~102_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[9]~101_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[10]~100_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[10]~99_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[10]~98_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[10]~97_combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[11]~96_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[11]~95_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[11]~94_combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[12]~93_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[12]~92_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[12]~91_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[12]~90_combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit3|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[13]~89_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[13]~88_combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[14]~87_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[14]~86_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[14]~85_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[15]~84_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[15]~83_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[15]~82_combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[16]~81_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[16]~80_combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[17]~79_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[17]~78_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[17]~77_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[17]~76_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[18]~75_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[18]~74_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[18]~73_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[18]~72_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[19]~71_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[19]~70_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[19]~69_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[19]~68_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[20]~67_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[20]~66_combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[21]~65_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[21]~64_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[21]~63_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[22]~62_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[22]~61_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[22]~60_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[22]~59_combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[23]~58_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[23]~57_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[23]~56_combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[24]~55_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[24]~54_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[24]~53_combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[25]~52_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[25]~51_combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[26]~50_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[26]~49_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[26]~48_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[27]~47_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[27]~46_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[27]~45_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[27]~44_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[28]~43_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[28]~42_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[28]~41_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[29]~40_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[29]~39_combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[29]~38_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[30]~37_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[30]~36_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[31]~35_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[31]~34_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[31]~33_combout\ : std_logic;
SIGNAL \inst|inst|inst|Bit1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit3|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit3|inst1|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst1|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit2|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit0|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit2|inst1|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst1|inst1|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit3|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit3|inst1|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit2|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit0|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit2|inst1|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit1|inst1|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Bit3|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Bit1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit2|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit0|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst|Bit3|inst|ALT_INV_X1~1_combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst|Bit3|inst|ALT_INV_X1~0_combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[31]~32_combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst1|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst2|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst|inst|Bit2|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst2|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst|inst|inst|Bit1|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst3|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst|inst1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit3|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst|inst1|Bit2|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst3|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst3|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst|inst1|inst1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst2|inst1|inst|inst1|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit2|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit3|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst|inst2|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst|inst2|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst|Bit0|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit3|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst1|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst2|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit2|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst2|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst|inst1|inst1|Bit1|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst7|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst1|inst1|inst3|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst2|inst2|inst|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst|inst|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit3|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst|inst1|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst2|inst2|inst|inst2|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst|Bit1|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst|inst1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit3|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst2|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst3|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst2|inst1|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst1|inst1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst1|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit2|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|Bit0|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit3|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst2|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|inst2|inst1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst2|inst3|inst1|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst2|inst3|inst1|inst2|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~13_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~12_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~11_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~10_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~9_combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst|inst|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~8_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~7_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~6_combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~5_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~4_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~3_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~2_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\ : std_logic;
SIGNAL \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~2_combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst|inst|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[31]~179_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[30]~175_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[29]~171_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[28]~167_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[25]~163_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[24]~159_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[20]~155_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[16]~151_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[14]~147_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[13]~143_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[9]~139_combout\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_O1[4]~135_combout\ : std_logic;

BEGIN

ZERO <= ww_ZERO;
SIGN <= ww_SIGN;
ww_Cin <= Cin;
ww_DATA1 <= DATA1;
ww_DATA2 <= DATA2;
OUTPUT <= ww_OUTPUT;
ww_OP <= OP;
OVERFLOW <= ww_OVERFLOW;
E <= ww_E;
cmpout <= ww_cmpout;
equals <= ww_equals;
ww_SHAMT <= SHAMT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_OP[0]~input_o\ <= NOT \OP[0]~input_o\;
\ALT_INV_OP[1]~input_o\ <= NOT \OP[1]~input_o\;
\ALT_INV_OP[2]~input_o\ <= NOT \OP[2]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_DATA2[31]~input_o\ <= NOT \DATA2[31]~input_o\;
\ALT_INV_DATA1[31]~input_o\ <= NOT \DATA1[31]~input_o\;
\ALT_INV_DATA2[29]~input_o\ <= NOT \DATA2[29]~input_o\;
\ALT_INV_DATA1[29]~input_o\ <= NOT \DATA1[29]~input_o\;
\ALT_INV_DATA2[30]~input_o\ <= NOT \DATA2[30]~input_o\;
\ALT_INV_DATA1[30]~input_o\ <= NOT \DATA1[30]~input_o\;
\ALT_INV_DATA2[24]~input_o\ <= NOT \DATA2[24]~input_o\;
\ALT_INV_DATA1[24]~input_o\ <= NOT \DATA1[24]~input_o\;
\ALT_INV_DATA2[25]~input_o\ <= NOT \DATA2[25]~input_o\;
\ALT_INV_DATA1[25]~input_o\ <= NOT \DATA1[25]~input_o\;
\ALT_INV_DATA2[26]~input_o\ <= NOT \DATA2[26]~input_o\;
\ALT_INV_DATA1[26]~input_o\ <= NOT \DATA1[26]~input_o\;
\ALT_INV_DATA2[27]~input_o\ <= NOT \DATA2[27]~input_o\;
\ALT_INV_DATA1[27]~input_o\ <= NOT \DATA1[27]~input_o\;
\ALT_INV_DATA2[28]~input_o\ <= NOT \DATA2[28]~input_o\;
\ALT_INV_DATA1[28]~input_o\ <= NOT \DATA1[28]~input_o\;
\ALT_INV_DATA2[22]~input_o\ <= NOT \DATA2[22]~input_o\;
\ALT_INV_DATA1[22]~input_o\ <= NOT \DATA1[22]~input_o\;
\ALT_INV_DATA2[23]~input_o\ <= NOT \DATA2[23]~input_o\;
\ALT_INV_DATA1[23]~input_o\ <= NOT \DATA1[23]~input_o\;
\ALT_INV_DATA2[17]~input_o\ <= NOT \DATA2[17]~input_o\;
\ALT_INV_DATA1[17]~input_o\ <= NOT \DATA1[17]~input_o\;
\ALT_INV_DATA2[18]~input_o\ <= NOT \DATA2[18]~input_o\;
\ALT_INV_DATA1[18]~input_o\ <= NOT \DATA1[18]~input_o\;
\ALT_INV_DATA2[19]~input_o\ <= NOT \DATA2[19]~input_o\;
\ALT_INV_DATA1[19]~input_o\ <= NOT \DATA1[19]~input_o\;
\ALT_INV_DATA2[20]~input_o\ <= NOT \DATA2[20]~input_o\;
\ALT_INV_DATA1[20]~input_o\ <= NOT \DATA1[20]~input_o\;
\ALT_INV_DATA2[21]~input_o\ <= NOT \DATA2[21]~input_o\;
\ALT_INV_DATA1[21]~input_o\ <= NOT \DATA1[21]~input_o\;
\ALT_INV_DATA2[15]~input_o\ <= NOT \DATA2[15]~input_o\;
\ALT_INV_DATA1[15]~input_o\ <= NOT \DATA1[15]~input_o\;
\ALT_INV_DATA2[16]~input_o\ <= NOT \DATA2[16]~input_o\;
\ALT_INV_DATA1[16]~input_o\ <= NOT \DATA1[16]~input_o\;
\ALT_INV_DATA2[9]~input_o\ <= NOT \DATA2[9]~input_o\;
\ALT_INV_DATA1[9]~input_o\ <= NOT \DATA1[9]~input_o\;
\ALT_INV_DATA2[10]~input_o\ <= NOT \DATA2[10]~input_o\;
\ALT_INV_DATA1[10]~input_o\ <= NOT \DATA1[10]~input_o\;
\ALT_INV_DATA2[11]~input_o\ <= NOT \DATA2[11]~input_o\;
\ALT_INV_DATA1[11]~input_o\ <= NOT \DATA1[11]~input_o\;
\ALT_INV_DATA2[12]~input_o\ <= NOT \DATA2[12]~input_o\;
\ALT_INV_DATA1[12]~input_o\ <= NOT \DATA1[12]~input_o\;
\ALT_INV_DATA2[13]~input_o\ <= NOT \DATA2[13]~input_o\;
\ALT_INV_DATA1[13]~input_o\ <= NOT \DATA1[13]~input_o\;
\ALT_INV_DATA2[14]~input_o\ <= NOT \DATA2[14]~input_o\;
\ALT_INV_DATA1[14]~input_o\ <= NOT \DATA1[14]~input_o\;
\ALT_INV_DATA2[2]~input_o\ <= NOT \DATA2[2]~input_o\;
\ALT_INV_DATA1[2]~input_o\ <= NOT \DATA1[2]~input_o\;
\ALT_INV_DATA2[3]~input_o\ <= NOT \DATA2[3]~input_o\;
\ALT_INV_DATA1[3]~input_o\ <= NOT \DATA1[3]~input_o\;
\ALT_INV_DATA2[4]~input_o\ <= NOT \DATA2[4]~input_o\;
\ALT_INV_DATA1[4]~input_o\ <= NOT \DATA1[4]~input_o\;
\ALT_INV_DATA2[5]~input_o\ <= NOT \DATA2[5]~input_o\;
\ALT_INV_DATA1[5]~input_o\ <= NOT \DATA1[5]~input_o\;
\ALT_INV_DATA2[6]~input_o\ <= NOT \DATA2[6]~input_o\;
\ALT_INV_DATA1[6]~input_o\ <= NOT \DATA1[6]~input_o\;
\ALT_INV_DATA2[7]~input_o\ <= NOT \DATA2[7]~input_o\;
\ALT_INV_DATA1[7]~input_o\ <= NOT \DATA1[7]~input_o\;
\ALT_INV_DATA2[1]~input_o\ <= NOT \DATA2[1]~input_o\;
\ALT_INV_DATA1[1]~input_o\ <= NOT \DATA1[1]~input_o\;
\ALT_INV_DATA2[0]~input_o\ <= NOT \DATA2[0]~input_o\;
\ALT_INV_DATA1[0]~input_o\ <= NOT \DATA1[0]~input_o\;
\ALT_INV_DATA2[8]~input_o\ <= NOT \DATA2[8]~input_o\;
\ALT_INV_DATA1[8]~input_o\ <= NOT \DATA1[8]~input_o\;
\inst7|inst|inst2|inst1|Bit1|inst|ALT_INV_And1~0_combout\ <= NOT \inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\;
\inst24|inst7|ALT_INV_O1[0]~134_combout\ <= NOT \inst24|inst7|O1[0]~134_combout\;
\inst24|inst7|ALT_INV_O1[0]~133_combout\ <= NOT \inst24|inst7|O1[0]~133_combout\;
\inst24|inst7|ALT_INV_O1[0]~132_combout\ <= NOT \inst24|inst7|O1[0]~132_combout\;
\inst24|inst7|ALT_INV_O1[1]~131_combout\ <= NOT \inst24|inst7|O1[1]~131_combout\;
\inst24|inst7|ALT_INV_O1[1]~130_combout\ <= NOT \inst24|inst7|O1[1]~130_combout\;
\inst24|inst7|ALT_INV_O1[1]~129_combout\ <= NOT \inst24|inst7|O1[1]~129_combout\;
\inst24|inst7|ALT_INV_O1[1]~128_combout\ <= NOT \inst24|inst7|O1[1]~128_combout\;
\inst24|inst7|ALT_INV_O1[2]~127_combout\ <= NOT \inst24|inst7|O1[2]~127_combout\;
\inst24|inst7|ALT_INV_O1[2]~126_combout\ <= NOT \inst24|inst7|O1[2]~126_combout\;
\inst24|inst7|ALT_INV_O1[2]~125_combout\ <= NOT \inst24|inst7|O1[2]~125_combout\;
\inst24|inst7|ALT_INV_O1[2]~124_combout\ <= NOT \inst24|inst7|O1[2]~124_combout\;
\inst|inst3|inst1|Bit2|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst3|inst1|Bit2|inst1|X1~combout\;
\inst24|inst7|ALT_INV_O1[3]~123_combout\ <= NOT \inst24|inst7|O1[3]~123_combout\;
\inst24|inst7|ALT_INV_O1[3]~122_combout\ <= NOT \inst24|inst7|O1[3]~122_combout\;
\inst24|inst7|ALT_INV_O1[3]~121_combout\ <= NOT \inst24|inst7|O1[3]~121_combout\;
\inst6|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst3|inst1|Bit3|inst|X1~combout\;
\inst7|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst3|inst1|Bit3|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[4]~120_combout\ <= NOT \inst24|inst7|O1[4]~120_combout\;
\inst24|inst7|ALT_INV_O1[4]~119_combout\ <= NOT \inst24|inst7|O1[4]~119_combout\;
\inst24|inst7|ALT_INV_O1[4]~118_combout\ <= NOT \inst24|inst7|O1[4]~118_combout\;
\inst24|inst7|ALT_INV_O1[5]~117_combout\ <= NOT \inst24|inst7|O1[5]~117_combout\;
\inst24|inst7|ALT_INV_O1[5]~116_combout\ <= NOT \inst24|inst7|O1[5]~116_combout\;
\inst24|inst7|ALT_INV_O1[5]~115_combout\ <= NOT \inst24|inst7|O1[5]~115_combout\;
\inst6|inst|inst3|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst3|inst|Bit1|inst|X1~combout\;
\inst7|inst|inst3|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst3|inst|Bit1|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[6]~114_combout\ <= NOT \inst24|inst7|O1[6]~114_combout\;
\inst24|inst7|ALT_INV_O1[6]~113_combout\ <= NOT \inst24|inst7|O1[6]~113_combout\;
\inst24|inst7|ALT_INV_O1[6]~112_combout\ <= NOT \inst24|inst7|O1[6]~112_combout\;
\inst24|inst7|ALT_INV_O1[6]~111_combout\ <= NOT \inst24|inst7|O1[6]~111_combout\;
\inst24|inst7|ALT_INV_O1[7]~110_combout\ <= NOT \inst24|inst7|O1[7]~110_combout\;
\inst24|inst7|ALT_INV_O1[7]~109_combout\ <= NOT \inst24|inst7|O1[7]~109_combout\;
\inst24|inst7|ALT_INV_O1[7]~108_combout\ <= NOT \inst24|inst7|O1[7]~108_combout\;
\inst6|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst3|inst|Bit3|inst|X1~combout\;
\inst7|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst3|inst|Bit3|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[8]~107_combout\ <= NOT \inst24|inst7|O1[8]~107_combout\;
\inst24|inst7|ALT_INV_O1[8]~106_combout\ <= NOT \inst24|inst7|O1[8]~106_combout\;
\inst24|inst7|ALT_INV_O1[8]~105_combout\ <= NOT \inst24|inst7|O1[8]~105_combout\;
\inst24|inst7|ALT_INV_O1[8]~104_combout\ <= NOT \inst24|inst7|O1[8]~104_combout\;
\inst24|inst7|ALT_INV_O1[9]~103_combout\ <= NOT \inst24|inst7|O1[9]~103_combout\;
\inst24|inst7|ALT_INV_O1[9]~102_combout\ <= NOT \inst24|inst7|O1[9]~102_combout\;
\inst24|inst7|ALT_INV_O1[9]~101_combout\ <= NOT \inst24|inst7|O1[9]~101_combout\;
\inst24|inst7|ALT_INV_O1[10]~100_combout\ <= NOT \inst24|inst7|O1[10]~100_combout\;
\inst24|inst7|ALT_INV_O1[10]~99_combout\ <= NOT \inst24|inst7|O1[10]~99_combout\;
\inst24|inst7|ALT_INV_O1[10]~98_combout\ <= NOT \inst24|inst7|O1[10]~98_combout\;
\inst24|inst7|ALT_INV_O1[10]~97_combout\ <= NOT \inst24|inst7|O1[10]~97_combout\;
\inst6|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst2|inst1|Bit2|inst|X1~combout\;
\inst6|inst|inst2|inst1|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst2|inst1|Bit0|inst|And1~combout\;
\inst24|inst7|ALT_INV_O1[11]~96_combout\ <= NOT \inst24|inst7|O1[11]~96_combout\;
\inst24|inst7|ALT_INV_O1[11]~95_combout\ <= NOT \inst24|inst7|O1[11]~95_combout\;
\inst24|inst7|ALT_INV_O1[11]~94_combout\ <= NOT \inst24|inst7|O1[11]~94_combout\;
\inst6|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst2|inst1|Bit3|inst|X1~combout\;
\inst7|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst2|inst1|Bit3|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[12]~93_combout\ <= NOT \inst24|inst7|O1[12]~93_combout\;
\inst24|inst7|ALT_INV_O1[12]~92_combout\ <= NOT \inst24|inst7|O1[12]~92_combout\;
\inst24|inst7|ALT_INV_O1[12]~91_combout\ <= NOT \inst24|inst7|O1[12]~91_combout\;
\inst24|inst7|ALT_INV_O1[12]~90_combout\ <= NOT \inst24|inst7|O1[12]~90_combout\;
\inst|inst2|inst1|Bit3|ALT_INV_inst2~combout\ <= NOT \inst|inst2|inst1|Bit3|inst2~combout\;
\inst6|inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst2|inst1|Bit3|inst|And1~combout\;
\inst24|inst7|ALT_INV_O1[13]~89_combout\ <= NOT \inst24|inst7|O1[13]~89_combout\;
\inst24|inst7|ALT_INV_O1[13]~88_combout\ <= NOT \inst24|inst7|O1[13]~88_combout\;
\inst7|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst2|inst|Bit1|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[14]~87_combout\ <= NOT \inst24|inst7|O1[14]~87_combout\;
\inst24|inst7|ALT_INV_O1[14]~86_combout\ <= NOT \inst24|inst7|O1[14]~86_combout\;
\inst24|inst7|ALT_INV_O1[14]~85_combout\ <= NOT \inst24|inst7|O1[14]~85_combout\;
\inst24|inst7|ALT_INV_O1[15]~84_combout\ <= NOT \inst24|inst7|O1[15]~84_combout\;
\inst24|inst7|ALT_INV_O1[15]~83_combout\ <= NOT \inst24|inst7|O1[15]~83_combout\;
\inst24|inst7|ALT_INV_O1[15]~82_combout\ <= NOT \inst24|inst7|O1[15]~82_combout\;
\inst6|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst2|inst|Bit3|inst|X1~combout\;
\inst6|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst2|inst|Bit1|inst|And1~combout\;
\inst7|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst2|inst|Bit3|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[16]~81_combout\ <= NOT \inst24|inst7|O1[16]~81_combout\;
\inst24|inst7|ALT_INV_O1[16]~80_combout\ <= NOT \inst24|inst7|O1[16]~80_combout\;
\inst7|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst1|inst1|Bit0|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[17]~79_combout\ <= NOT \inst24|inst7|O1[17]~79_combout\;
\inst24|inst7|ALT_INV_O1[17]~78_combout\ <= NOT \inst24|inst7|O1[17]~78_combout\;
\inst24|inst7|ALT_INV_O1[17]~77_combout\ <= NOT \inst24|inst7|O1[17]~77_combout\;
\inst24|inst7|ALT_INV_O1[17]~76_combout\ <= NOT \inst24|inst7|O1[17]~76_combout\;
\inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst1|Bit1|inst|X1~combout\;
\inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst1|Bit0|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[18]~75_combout\ <= NOT \inst24|inst7|O1[18]~75_combout\;
\inst24|inst7|ALT_INV_O1[18]~74_combout\ <= NOT \inst24|inst7|O1[18]~74_combout\;
\inst24|inst7|ALT_INV_O1[18]~73_combout\ <= NOT \inst24|inst7|O1[18]~73_combout\;
\inst24|inst7|ALT_INV_O1[18]~72_combout\ <= NOT \inst24|inst7|O1[18]~72_combout\;
\inst24|inst7|ALT_INV_O1[19]~71_combout\ <= NOT \inst24|inst7|O1[19]~71_combout\;
\inst24|inst7|ALT_INV_O1[19]~70_combout\ <= NOT \inst24|inst7|O1[19]~70_combout\;
\inst24|inst7|ALT_INV_O1[19]~69_combout\ <= NOT \inst24|inst7|O1[19]~69_combout\;
\inst24|inst7|ALT_INV_O1[19]~68_combout\ <= NOT \inst24|inst7|O1[19]~68_combout\;
\inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst1|Bit3|inst|X1~combout\;
\inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst1|Bit2|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[20]~67_combout\ <= NOT \inst24|inst7|O1[20]~67_combout\;
\inst24|inst7|ALT_INV_O1[20]~66_combout\ <= NOT \inst24|inst7|O1[20]~66_combout\;
\inst7|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst1|inst|Bit0|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[21]~65_combout\ <= NOT \inst24|inst7|O1[21]~65_combout\;
\inst24|inst7|ALT_INV_O1[21]~64_combout\ <= NOT \inst24|inst7|O1[21]~64_combout\;
\inst24|inst7|ALT_INV_O1[21]~63_combout\ <= NOT \inst24|inst7|O1[21]~63_combout\;
\inst6|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst1|inst|Bit1|inst|X1~combout\;
\inst7|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst1|inst|Bit1|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[22]~62_combout\ <= NOT \inst24|inst7|O1[22]~62_combout\;
\inst24|inst7|ALT_INV_O1[22]~61_combout\ <= NOT \inst24|inst7|O1[22]~61_combout\;
\inst24|inst7|ALT_INV_O1[22]~60_combout\ <= NOT \inst24|inst7|O1[22]~60_combout\;
\inst24|inst7|ALT_INV_O1[22]~59_combout\ <= NOT \inst24|inst7|O1[22]~59_combout\;
\inst|inst1|inst|Bit1|ALT_INV_inst2~combout\ <= NOT \inst|inst1|inst|Bit1|inst2~combout\;
\inst6|inst|inst1|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst1|inst|Bit1|inst|And1~combout\;
\inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst|Bit1|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[23]~58_combout\ <= NOT \inst24|inst7|O1[23]~58_combout\;
\inst24|inst7|ALT_INV_O1[23]~57_combout\ <= NOT \inst24|inst7|O1[23]~57_combout\;
\inst24|inst7|ALT_INV_O1[23]~56_combout\ <= NOT \inst24|inst7|O1[23]~56_combout\;
\inst6|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst1|inst|Bit3|inst|X1~combout\;
\inst7|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst1|inst|Bit3|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[24]~55_combout\ <= NOT \inst24|inst7|O1[24]~55_combout\;
\inst24|inst7|ALT_INV_O1[24]~54_combout\ <= NOT \inst24|inst7|O1[24]~54_combout\;
\inst24|inst7|ALT_INV_O1[24]~53_combout\ <= NOT \inst24|inst7|O1[24]~53_combout\;
\inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst|inst|inst1|Bit0|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[25]~52_combout\ <= NOT \inst24|inst7|O1[25]~52_combout\;
\inst24|inst7|ALT_INV_O1[25]~51_combout\ <= NOT \inst24|inst7|O1[25]~51_combout\;
\inst7|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst|inst1|Bit1|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[26]~50_combout\ <= NOT \inst24|inst7|O1[26]~50_combout\;
\inst24|inst7|ALT_INV_O1[26]~49_combout\ <= NOT \inst24|inst7|O1[26]~49_combout\;
\inst24|inst7|ALT_INV_O1[26]~48_combout\ <= NOT \inst24|inst7|O1[26]~48_combout\;
\inst6|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst|inst1|Bit2|inst|X1~combout\;
\inst7|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst7|inst|inst|inst1|Bit2|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[27]~47_combout\ <= NOT \inst24|inst7|O1[27]~47_combout\;
\inst24|inst7|ALT_INV_O1[27]~46_combout\ <= NOT \inst24|inst7|O1[27]~46_combout\;
\inst24|inst7|ALT_INV_O1[27]~45_combout\ <= NOT \inst24|inst7|O1[27]~45_combout\;
\inst24|inst7|ALT_INV_O1[27]~44_combout\ <= NOT \inst24|inst7|O1[27]~44_combout\;
\inst24|inst7|ALT_INV_O1[28]~43_combout\ <= NOT \inst24|inst7|O1[28]~43_combout\;
\inst24|inst7|ALT_INV_O1[28]~42_combout\ <= NOT \inst24|inst7|O1[28]~42_combout\;
\inst6|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst|inst|Bit0|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[28]~41_combout\ <= NOT \inst24|inst7|O1[28]~41_combout\;
\inst24|inst7|ALT_INV_O1[29]~40_combout\ <= NOT \inst24|inst7|O1[29]~40_combout\;
\inst24|inst7|ALT_INV_O1[29]~39_combout\ <= NOT \inst24|inst7|O1[29]~39_combout\;
\inst6|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst6|inst|inst|inst|Bit1|inst|X1~combout\;
\inst24|inst7|ALT_INV_O1[29]~38_combout\ <= NOT \inst24|inst7|O1[29]~38_combout\;
\inst24|inst7|ALT_INV_O1[30]~37_combout\ <= NOT \inst24|inst7|O1[30]~37_combout\;
\inst24|inst7|ALT_INV_O1[30]~36_combout\ <= NOT \inst24|inst7|O1[30]~36_combout\;
\inst24|inst7|ALT_INV_O1[31]~35_combout\ <= NOT \inst24|inst7|O1[31]~35_combout\;
\inst24|inst7|ALT_INV_O1[31]~34_combout\ <= NOT \inst24|inst7|O1[31]~34_combout\;
\inst24|inst7|ALT_INV_O1[31]~33_combout\ <= NOT \inst24|inst7|O1[31]~33_combout\;
\inst|inst|inst|Bit1|ALT_INV_inst2~combout\ <= NOT \inst|inst|inst|Bit1|inst2~combout\;
\inst6|inst|inst|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst|inst|Bit1|inst|And1~combout\;
\inst|inst|inst1|Bit3|ALT_INV_inst2~combout\ <= NOT \inst|inst|inst1|Bit3|inst2~combout\;
\inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst|inst|inst1|Bit3|inst|X1~combout\;
\inst6|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst|inst1|Bit2|inst|And1~combout\;
\inst|inst|inst1|Bit1|ALT_INV_inst2~combout\ <= NOT \inst|inst|inst1|Bit1|inst2~combout\;
\inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst|inst|inst1|Bit1|inst|X1~combout\;
\inst|inst1|inst|Bit3|inst1|ALT_INV_And1~combout\ <= NOT \inst|inst1|inst|Bit3|inst1|And1~combout\;
\inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst|inst1|inst|Bit3|inst|And1~combout\;
\inst6|inst|inst|inst1|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst|inst1|Bit0|inst|And1~combout\;
\inst|inst1|inst|Bit2|ALT_INV_inst2~combout\ <= NOT \inst|inst1|inst|Bit2|inst2~combout\;
\inst6|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst1|inst|Bit2|inst|And1~combout\;
\inst|inst1|inst|Bit0|ALT_INV_inst2~combout\ <= NOT \inst|inst1|inst|Bit0|inst2~combout\;
\inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst|Bit0|inst|X1~combout\;
\inst|inst1|inst1|Bit2|inst1|ALT_INV_And1~combout\ <= NOT \inst|inst1|inst1|Bit2|inst1|And1~combout\;
\inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst|inst1|inst1|Bit2|inst|And1~combout\;
\inst6|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst1|inst1|Bit3|inst|And1~combout\;
\inst|inst1|inst1|Bit1|ALT_INV_inst2~combout\ <= NOT \inst|inst1|inst1|Bit1|inst2~combout\;
\inst6|inst|inst1|inst1|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst1|inst1|Bit1|inst|And1~combout\;
\inst|inst2|inst|Bit3|ALT_INV_inst2~combout\ <= NOT \inst|inst2|inst|Bit3|inst2~combout\;
\inst6|inst|inst2|inst|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst2|inst|Bit3|inst|And1~combout\;
\inst|inst2|inst|Bit1|ALT_INV_inst2~combout\ <= NOT \inst|inst2|inst|Bit1|inst2~combout\;
\inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst|inst2|inst|Bit1|inst|X1~combout\;
\inst|inst2|inst1|Bit3|inst1|ALT_INV_And1~combout\ <= NOT \inst|inst2|inst1|Bit3|inst1|And1~combout\;
\inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst|inst2|inst1|Bit3|inst|And1~combout\;
\inst6|inst|inst2|inst|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst2|inst|Bit0|inst|And1~combout\;
\inst|inst2|inst1|Bit2|ALT_INV_inst2~combout\ <= NOT \inst|inst2|inst1|Bit2|inst2~combout\;
\inst6|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst2|inst1|Bit2|inst|And1~combout\;
\inst|inst2|inst1|Bit0|ALT_INV_inst2~combout\ <= NOT \inst|inst2|inst1|Bit0|inst2~combout\;
\inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst|inst2|inst1|Bit0|inst|X1~combout\;
\inst|inst3|inst|Bit2|inst1|ALT_INV_And1~combout\ <= NOT \inst|inst3|inst|Bit2|inst1|And1~combout\;
\inst|inst3|inst|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst|inst3|inst|Bit2|inst|And1~combout\;
\inst6|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst3|inst|Bit3|inst|And1~combout\;
\inst|inst3|inst|Bit1|ALT_INV_inst2~combout\ <= NOT \inst|inst3|inst|Bit1|inst2~combout\;
\inst|inst3|inst|Bit1|inst1|ALT_INV_And1~combout\ <= NOT \inst|inst3|inst|Bit1|inst1|And1~combout\;
\inst6|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst3|inst|Bit1|inst|And1~combout\;
\inst|inst3|inst1|Bit3|ALT_INV_inst2~combout\ <= NOT \inst|inst3|inst1|Bit3|inst2~combout\;
\inst6|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst3|inst1|Bit3|inst|And1~combout\;
\inst|inst3|inst1|Bit1|ALT_INV_inst2~combout\ <= NOT \inst|inst3|inst1|Bit1|inst2~combout\;
\inst6|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst6|inst|inst3|inst1|Bit1|inst|And1~combout\;
\inst|inst2|inst1|Bit2|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst2|inst1|Bit2|inst1|X1~combout\;
\inst|inst2|inst|Bit0|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst2|inst|Bit0|inst1|X1~combout\;
\inst7|inst|inst|inst|Bit3|inst|ALT_INV_X1~1_combout\ <= NOT \inst7|inst|inst|inst|Bit3|inst|X1~1_combout\;
\inst7|inst|inst|inst|Bit3|inst|ALT_INV_X1~0_combout\ <= NOT \inst7|inst|inst|inst|Bit3|inst|X1~0_combout\;
\inst5|inst|inst|inst|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst|inst|Bit2|inst|And1~combout\;
\inst24|inst7|ALT_INV_O1[31]~32_combout\ <= NOT \inst24|inst7|O1[31]~32_combout\;
\inst2|inst|inst|inst1|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst|inst|inst1|inst|inst~combout\;
\inst2|inst|inst|inst2|ALT_INV_inst2~combout\ <= NOT \inst2|inst|inst|inst2|inst2~combout\;
\inst|inst|inst|Bit2|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst|inst|Bit2|inst1|X1~combout\;
\inst5|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst|inst|Bit2|inst|X1~combout\;
\inst4|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst|inst|Bit2|inst|X1~combout\;
\inst7|inst|inst|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst|inst|Bit1|inst|And1~combout\;
\inst2|inst|inst|inst2|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst|inst|inst2|inst|inst~combout\;
\inst|inst|inst|Bit1|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst|inst|Bit1|inst1|X1~combout\;
\inst5|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst|inst|Bit1|inst|X1~combout\;
\inst5|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst|inst|Bit0|inst|And1~combout\;
\inst4|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst|inst|Bit1|inst|X1~combout\;
\inst4|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst4|inst|inst|inst|Bit0|inst|And1~combout\;
\inst2|inst|inst|inst3|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst|inst|inst3|inst|inst~combout\;
\inst2|inst|inst1|inst|inst1|ALT_INV_inst2~combout\ <= NOT \inst2|inst|inst1|inst|inst1|inst2~combout\;
\inst2|inst|inst1|inst|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst|inst1|inst|inst|inst2~combout\;
\inst5|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst|inst|Bit0|inst|X1~combout\;
\inst4|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst|inst|Bit0|inst|X1~combout\;
\inst2|inst|inst1|inst|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst|inst1|inst|inst|inst~combout\;
\inst|inst|inst1|Bit3|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst|inst1|Bit3|inst1|X1~combout\;
\inst5|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst|inst1|Bit3|inst|X1~combout\;
\inst4|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst|inst1|Bit3|inst|X1~combout\;
\inst7|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst|inst1|Bit2|inst|And1~combout\;
\inst|inst|inst1|Bit2|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst|inst1|Bit2|inst1|X1~combout\;
\inst5|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst|inst1|Bit2|inst|X1~combout\;
\inst5|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst|inst1|Bit1|inst|And1~combout\;
\inst4|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst|inst1|Bit2|inst|X1~combout\;
\inst4|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst4|inst|inst|inst1|Bit1|inst|And1~combout\;
\inst2|inst|inst1|inst3|ALT_INV_inst2~combout\ <= NOT \inst2|inst|inst1|inst3|inst2~combout\;
\inst5|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst|inst1|Bit1|inst|X1~combout\;
\inst4|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst|inst1|Bit1|inst|X1~combout\;
\inst2|inst|inst1|inst3|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst|inst1|inst3|inst|inst~combout\;
\inst5|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst|inst1|Bit0|inst|X1~combout\;
\inst4|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst|inst1|Bit0|inst|X1~combout\;
\inst2|inst1|inst|inst1|inst1|ALT_INV_inst2~combout\ <= NOT \inst2|inst1|inst|inst1|inst1|inst2~combout\;
\inst2|inst1|inst|inst1|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst1|inst|inst1|inst|inst2~combout\;
\inst|inst1|inst|Bit2|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst|Bit2|inst1|X1~combout\;
\inst7|inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst1|inst|Bit3|inst|And1~combout\;
\inst|inst1|inst|Bit3|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst|Bit3|inst1|X1~combout\;
\inst5|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst1|inst|Bit3|inst|X1~combout\;
\inst5|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst1|inst|Bit2|inst|And1~combout\;
\inst4|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst1|inst|Bit3|inst|X1~combout\;
\inst4|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst4|inst|inst1|inst|Bit2|inst|And1~combout\;
\inst2|inst1|inst|inst2|ALT_INV_inst2~combout\ <= NOT \inst2|inst1|inst|inst2|inst2~combout\;
\inst5|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst1|inst|Bit2|inst|X1~combout\;
\inst4|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst1|inst|Bit2|inst|X1~combout\;
\inst7|inst|inst1|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst1|inst|Bit1|inst|And1~combout\;
\inst2|inst1|inst|inst2|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst1|inst|inst2|inst|inst~combout\;
\inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst1|inst|Bit1|inst|X1~combout\;
\inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst1|inst|Bit1|inst|X1~combout\;
\inst2|inst1|inst1|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst1|inst1|inst|inst2~combout\;
\inst|inst1|inst|Bit0|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst|Bit0|inst1|X1~combout\;
\inst5|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst1|inst|Bit0|inst|X1~combout\;
\inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst1|inst1|Bit3|inst|And1~combout\;
\inst4|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst1|inst|Bit0|inst|X1~combout\;
\inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst4|inst|inst1|inst1|Bit3|inst|And1~combout\;
\inst2|inst1|inst1|inst|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst1|inst1|inst|inst|inst~combout\;
\inst|inst1|inst1|Bit3|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst1|Bit3|inst1|X1~combout\;
\inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst1|inst1|Bit3|inst|X1~combout\;
\inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst1|inst1|Bit3|inst|X1~combout\;
\inst7|inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst1|inst1|Bit2|inst|And1~combout\;
\inst2|inst1|inst1|inst1|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst1|inst1|inst1|inst|inst~combout\;
\inst2|inst1|inst1|inst2|ALT_INV_inst2~combout\ <= NOT \inst2|inst1|inst1|inst2|inst2~combout\;
\inst|inst1|inst1|Bit2|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst1|Bit2|inst1|X1~combout\;
\inst5|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst1|inst1|Bit2|inst|X1~combout\;
\inst4|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst1|inst1|Bit2|inst|X1~combout\;
\inst2|inst1|inst1|inst2|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst1|inst1|inst2|inst|inst~combout\;
\inst|inst1|inst1|Bit1|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst1|inst1|Bit1|inst1|X1~combout\;
\inst5|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst1|inst1|Bit1|inst|X1~combout\;
\inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst1|inst1|Bit0|inst|And1~combout\;
\inst4|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst1|inst1|Bit1|inst|X1~combout\;
\inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst4|inst|inst1|inst1|Bit0|inst|And1~combout\;
\inst7|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst1|inst1|Bit0|inst|And1~combout\;
\inst2|inst1|inst1|inst3|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst1|inst1|inst3|inst|inst~combout\;
\inst2|inst2|inst|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst2|inst|inst|inst2~combout\;
\inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst1|inst1|Bit0|inst|X1~combout\;
\inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst1|inst1|Bit0|inst|X1~combout\;
\inst2|inst2|inst|inst|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst2|inst|inst|inst|inst~combout\;
\inst|inst2|inst|Bit3|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst2|inst|Bit3|inst1|X1~combout\;
\inst5|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst2|inst|Bit3|inst|X1~combout\;
\inst4|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst2|inst|Bit3|inst|X1~combout\;
\inst2|inst2|inst|inst1|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst2|inst|inst1|inst|inst~combout\;
\inst2|inst2|inst|inst2|ALT_INV_inst2~combout\ <= NOT \inst2|inst2|inst|inst2|inst2~combout\;
\inst5|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst2|inst|Bit2|inst|X1~combout\;
\inst5|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst2|inst|Bit1|inst|And1~combout\;
\inst4|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst2|inst|Bit2|inst|X1~combout\;
\inst4|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst4|inst|inst2|inst|Bit1|inst|And1~combout\;
\inst7|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst2|inst|Bit1|inst|And1~combout\;
\inst|inst2|inst|Bit1|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst2|inst|Bit1|inst1|X1~combout\;
\inst5|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst2|inst|Bit1|inst|X1~combout\;
\inst4|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst2|inst|Bit1|inst|X1~combout\;
\inst2|inst2|inst1|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst2|inst1|inst|inst2~combout\;
\inst2|inst2|inst1|inst|inst1|ALT_INV_inst2~combout\ <= NOT \inst2|inst2|inst1|inst|inst1|inst2~combout\;
\inst5|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst2|inst1|Bit3|inst|X1~combout\;
\inst4|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst2|inst1|Bit3|inst|X1~combout\;
\inst2|inst2|inst1|inst|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst2|inst1|inst|inst|inst2~combout\;
\inst5|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst2|inst|Bit0|inst|X1~combout\;
\inst4|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst2|inst|Bit0|inst|X1~combout\;
\inst7|inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst2|inst1|Bit3|inst|And1~combout\;
\inst|inst2|inst1|Bit3|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst2|inst1|Bit3|inst1|X1~combout\;
\inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst2|inst1|Bit2|inst|And1~combout\;
\inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\ <= NOT \inst4|inst|inst2|inst1|Bit2|inst|And1~combout\;
\inst2|inst2|inst1|inst2|ALT_INV_inst2~combout\ <= NOT \inst2|inst2|inst1|inst2|inst2~combout\;
\inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst2|inst1|Bit2|inst|X1~combout\;
\inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst2|inst1|Bit2|inst|X1~combout\;
\inst2|inst2|inst1|inst3|ALT_INV_inst2~combout\ <= NOT \inst2|inst2|inst1|inst3|inst2~combout\;
\inst5|inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst2|inst1|Bit0|inst|X1~combout\;
\inst4|inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst2|inst1|Bit0|inst|X1~combout\;
\inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst2|inst1|Bit1|inst|X1~combout\;
\inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst2|inst1|Bit1|inst|X1~combout\;
\inst7|inst|inst2|inst1|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst2|inst1|Bit0|inst|And1~combout\;
\inst2|inst3|inst|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst3|inst|inst|inst2~combout\;
\inst2|inst3|inst|inst1|inst1|ALT_INV_inst2~combout\ <= NOT \inst2|inst3|inst|inst1|inst1|inst2~combout\;
\inst2|inst3|inst|inst1|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst3|inst|inst1|inst|inst2~combout\;
\inst|inst3|inst|Bit2|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst3|inst|Bit2|inst1|X1~combout\;
\inst|inst2|inst1|Bit0|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst2|inst1|Bit0|inst1|X1~combout\;
\inst5|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst3|inst|Bit3|inst|And1~combout\;
\inst4|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst4|inst|inst3|inst|Bit3|inst|And1~combout\;
\inst7|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst3|inst|Bit3|inst|And1~combout\;
\inst|inst3|inst|Bit3|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst3|inst|Bit3|inst1|X1~combout\;
\inst5|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst3|inst|Bit3|inst|X1~combout\;
\inst4|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst3|inst|Bit3|inst|X1~combout\;
\inst2|inst3|inst|inst2|ALT_INV_inst2~combout\ <= NOT \inst2|inst3|inst|inst2|inst2~combout\;
\inst2|inst3|inst|inst2|inst1|ALT_INV_inst2~combout\ <= NOT \inst2|inst3|inst|inst2|inst1|inst2~combout\;
\inst5|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst3|inst|Bit2|inst|X1~combout\;
\inst4|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst3|inst|Bit2|inst|X1~combout\;
\inst7|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst3|inst|Bit1|inst|And1~combout\;
\inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\ <= NOT \inst|inst3|inst|Bit1|inst1|X1~combout\;
\inst5|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst5|inst|inst3|inst|Bit0|inst|And1~combout\;
\inst4|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\ <= NOT \inst4|inst|inst3|inst|Bit0|inst|And1~combout\;
\inst2|inst3|inst1|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst3|inst1|inst|inst2~combout\;
\inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst3|inst|Bit0|inst|X1~combout\;
\inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst3|inst|Bit0|inst|X1~combout\;
\inst7|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst3|inst1|Bit3|inst|And1~combout\;
\inst5|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst3|inst1|Bit3|inst|X1~combout\;
\inst4|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst3|inst1|Bit3|inst|X1~combout\;
\inst2|inst3|inst1|inst2|ALT_INV_inst2~combout\ <= NOT \inst2|inst3|inst1|inst2|inst2~combout\;
\inst5|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst5|inst|inst3|inst1|Bit2|inst|X1~combout\;
\inst4|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\ <= NOT \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\;
\inst7|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\ <= NOT \inst7|inst|inst3|inst1|Bit1|inst|And1~combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~13_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~13_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~12_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~12_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~11_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~11_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~10_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~10_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~9_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~9_combout\;
\inst8|inst|inst|inst|inst|ALT_INV_inst5~combout\ <= NOT \inst8|inst|inst|inst|inst|inst5~combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~8_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~8_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~7_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~7_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~6_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~6_combout\;
\inst8|inst|inst|inst1|inst3|ALT_INV_inst4~combout\ <= NOT \inst8|inst|inst|inst1|inst3|inst4~combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~5_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~5_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~4_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~4_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~3_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~3_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~2_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~2_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~1_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~1_combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~0_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst6~0_combout\;
\inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~combout\ <= NOT \inst8|inst1|inst|inst1|inst1|inst4~combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst4~combout\;
\inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\ <= NOT \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\;
\inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\ <= NOT \inst8|inst1|inst1|inst1|inst|inst4~2_combout\;
\inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~1_combout\ <= NOT \inst8|inst1|inst1|inst1|inst|inst4~1_combout\;
\inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~0_combout\ <= NOT \inst8|inst1|inst1|inst1|inst|inst4~0_combout\;
\inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\ <= NOT \inst8|inst1|inst|inst1|inst1|inst4~2_combout\;
\inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~1_combout\ <= NOT \inst8|inst1|inst|inst1|inst1|inst4~1_combout\;
\inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~0_combout\ <= NOT \inst8|inst1|inst|inst1|inst1|inst4~0_combout\;
\inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\ <= NOT \inst8|inst|inst1|inst1|inst2|inst4~combout\;
\inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~1_combout\ <= NOT \inst8|inst|inst1|inst1|inst2|inst4~1_combout\;
\inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~0_combout\ <= NOT \inst8|inst|inst1|inst1|inst2|inst4~0_combout\;
\inst8|inst|inst|inst1|inst3|ALT_INV_inst4~2_combout\ <= NOT \inst8|inst|inst|inst1|inst3|inst4~2_combout\;
\inst8|inst|inst|inst1|inst3|ALT_INV_inst4~1_combout\ <= NOT \inst8|inst|inst|inst1|inst3|inst4~1_combout\;
\inst8|inst|inst|inst1|inst3|ALT_INV_inst4~0_combout\ <= NOT \inst8|inst|inst|inst1|inst3|inst4~0_combout\;
\inst8|inst|inst1|inst|inst|ALT_INV_inst5~combout\ <= NOT \inst8|inst|inst1|inst|inst|inst5~combout\;
\inst24|inst7|ALT_INV_O1[31]~179_combout\ <= NOT \inst24|inst7|O1[31]~179_combout\;
\inst24|inst7|ALT_INV_O1[30]~175_combout\ <= NOT \inst24|inst7|O1[30]~175_combout\;
\inst24|inst7|ALT_INV_O1[29]~171_combout\ <= NOT \inst24|inst7|O1[29]~171_combout\;
\inst24|inst7|ALT_INV_O1[28]~167_combout\ <= NOT \inst24|inst7|O1[28]~167_combout\;
\inst24|inst7|ALT_INV_O1[25]~163_combout\ <= NOT \inst24|inst7|O1[25]~163_combout\;
\inst24|inst7|ALT_INV_O1[24]~159_combout\ <= NOT \inst24|inst7|O1[24]~159_combout\;
\inst24|inst7|ALT_INV_O1[20]~155_combout\ <= NOT \inst24|inst7|O1[20]~155_combout\;
\inst24|inst7|ALT_INV_O1[16]~151_combout\ <= NOT \inst24|inst7|O1[16]~151_combout\;
\inst24|inst7|ALT_INV_O1[14]~147_combout\ <= NOT \inst24|inst7|O1[14]~147_combout\;
\inst24|inst7|ALT_INV_O1[13]~143_combout\ <= NOT \inst24|inst7|O1[13]~143_combout\;
\inst24|inst7|ALT_INV_O1[9]~139_combout\ <= NOT \inst24|inst7|O1[9]~139_combout\;
\inst24|inst7|ALT_INV_O1[4]~135_combout\ <= NOT \inst24|inst7|O1[4]~135_combout\;

-- Location: IOOBUF_X121_Y13_N96
\ZERO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ZERO);

-- Location: IOOBUF_X14_Y0_N53
\SIGN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[31]~35_combout\,
	devoe => ww_devoe,
	o => ww_SIGN);

-- Location: IOOBUF_X20_Y0_N19
\OUTPUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[31]~35_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(31));

-- Location: IOOBUF_X10_Y0_N19
\OUTPUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[30]~37_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(30));

-- Location: IOOBUF_X40_Y0_N42
\OUTPUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[29]~40_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(29));

-- Location: IOOBUF_X12_Y0_N53
\OUTPUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[28]~43_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(28));

-- Location: IOOBUF_X27_Y0_N19
\OUTPUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[27]~47_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(27));

-- Location: IOOBUF_X10_Y0_N36
\OUTPUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[26]~50_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(26));

-- Location: IOOBUF_X18_Y0_N53
\OUTPUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[25]~52_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(25));

-- Location: IOOBUF_X25_Y0_N93
\OUTPUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[24]~55_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(24));

-- Location: IOOBUF_X22_Y0_N2
\OUTPUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[23]~58_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(23));

-- Location: IOOBUF_X17_Y0_N93
\OUTPUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[22]~62_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(22));

-- Location: IOOBUF_X46_Y0_N2
\OUTPUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[21]~65_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(21));

-- Location: IOOBUF_X82_Y0_N76
\OUTPUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[20]~67_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(20));

-- Location: IOOBUF_X40_Y0_N59
\OUTPUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[19]~71_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(19));

-- Location: IOOBUF_X20_Y0_N36
\OUTPUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[18]~75_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(18));

-- Location: IOOBUF_X90_Y0_N59
\OUTPUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[17]~79_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(17));

-- Location: IOOBUF_X69_Y0_N53
\OUTPUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[16]~81_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(16));

-- Location: IOOBUF_X48_Y0_N76
\OUTPUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[15]~84_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(15));

-- Location: IOOBUF_X50_Y0_N53
\OUTPUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[14]~87_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(14));

-- Location: IOOBUF_X88_Y0_N53
\OUTPUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[13]~89_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(13));

-- Location: IOOBUF_X73_Y0_N59
\OUTPUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[12]~93_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(12));

-- Location: IOOBUF_X52_Y0_N53
\OUTPUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[11]~96_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(11));

-- Location: IOOBUF_X52_Y0_N2
\OUTPUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[10]~100_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(10));

-- Location: IOOBUF_X67_Y0_N19
\OUTPUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[9]~103_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(9));

-- Location: IOOBUF_X46_Y0_N53
\OUTPUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[8]~107_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(8));

-- Location: IOOBUF_X52_Y0_N36
\OUTPUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[7]~110_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(7));

-- Location: IOOBUF_X82_Y0_N59
\OUTPUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[6]~114_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(6));

-- Location: IOOBUF_X82_Y0_N42
\OUTPUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[5]~117_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(5));

-- Location: IOOBUF_X48_Y0_N93
\OUTPUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[4]~120_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(4));

-- Location: IOOBUF_X14_Y0_N19
\OUTPUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[3]~123_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(3));

-- Location: IOOBUF_X46_Y0_N19
\OUTPUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[2]~127_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(2));

-- Location: IOOBUF_X27_Y0_N36
\OUTPUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[1]~131_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(1));

-- Location: IOOBUF_X90_Y0_N93
\OUTPUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|inst7|O1[0]~134_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(0));

-- Location: IOOBUF_X33_Y115_N76
\OVERFLOW~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OVERFLOW);

-- Location: IOOBUF_X37_Y0_N2
\E~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~combout\,
	devoe => ww_devoe,
	o => ww_E);

-- Location: IOOBUF_X42_Y0_N19
\cmpout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\,
	devoe => ww_devoe,
	o => ww_cmpout);

-- Location: IOOBUF_X22_Y0_N36
\equals[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[31]~0_combout\,
	devoe => ww_devoe,
	o => ww_equals(31));

-- Location: IOOBUF_X37_Y0_N36
\equals[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[30]~1_combout\,
	devoe => ww_devoe,
	o => ww_equals(30));

-- Location: IOOBUF_X39_Y0_N53
\equals[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[29]~2_combout\,
	devoe => ww_devoe,
	o => ww_equals(29));

-- Location: IOOBUF_X39_Y0_N19
\equals[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[28]~3_combout\,
	devoe => ww_devoe,
	o => ww_equals(28));

-- Location: IOOBUF_X18_Y0_N19
\equals[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[27]~4_combout\,
	devoe => ww_devoe,
	o => ww_equals(27));

-- Location: IOOBUF_X25_Y0_N76
\equals[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[26]~5_combout\,
	devoe => ww_devoe,
	o => ww_equals(26));

-- Location: IOOBUF_X84_Y0_N53
\equals[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[25]~6_combout\,
	devoe => ww_devoe,
	o => ww_equals(25));

-- Location: IOOBUF_X27_Y0_N53
\equals[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[24]~7_combout\,
	devoe => ww_devoe,
	o => ww_equals(24));

-- Location: IOOBUF_X17_Y0_N42
\equals[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[23]~8_combout\,
	devoe => ww_devoe,
	o => ww_equals(23));

-- Location: IOOBUF_X25_Y0_N42
\equals[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[22]~9_combout\,
	devoe => ww_devoe,
	o => ww_equals(22));

-- Location: IOOBUF_X86_Y0_N53
\equals[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[21]~10_combout\,
	devoe => ww_devoe,
	o => ww_equals(21));

-- Location: IOOBUF_X50_Y0_N2
\equals[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[20]~11_combout\,
	devoe => ww_devoe,
	o => ww_equals(20));

-- Location: IOOBUF_X73_Y0_N76
\equals[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[19]~12_combout\,
	devoe => ww_devoe,
	o => ww_equals(19));

-- Location: IOOBUF_X50_Y0_N36
\equals[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[18]~13_combout\,
	devoe => ww_devoe,
	o => ww_equals(18));

-- Location: IOOBUF_X48_Y0_N59
\equals[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[17]~14_combout\,
	devoe => ww_devoe,
	o => ww_equals(17));

-- Location: IOOBUF_X54_Y0_N19
\equals[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[16]~15_combout\,
	devoe => ww_devoe,
	o => ww_equals(16));

-- Location: IOOBUF_X67_Y0_N36
\equals[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[15]~16_combout\,
	devoe => ww_devoe,
	o => ww_equals(15));

-- Location: IOOBUF_X84_Y0_N36
\equals[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[14]~17_combout\,
	devoe => ww_devoe,
	o => ww_equals(14));

-- Location: IOOBUF_X65_Y0_N59
\equals[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[13]~18_combout\,
	devoe => ww_devoe,
	o => ww_equals(13));

-- Location: IOOBUF_X79_Y0_N53
\equals[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[12]~19_combout\,
	devoe => ww_devoe,
	o => ww_equals(12));

-- Location: IOOBUF_X75_Y0_N19
\equals[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[11]~20_combout\,
	devoe => ww_devoe,
	o => ww_equals(11));

-- Location: IOOBUF_X65_Y0_N76
\equals[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[10]~21_combout\,
	devoe => ww_devoe,
	o => ww_equals(10));

-- Location: IOOBUF_X75_Y0_N2
\equals[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[9]~22_combout\,
	devoe => ww_devoe,
	o => ww_equals(9));

-- Location: IOOBUF_X73_Y0_N42
\equals[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[8]~23_combout\,
	devoe => ww_devoe,
	o => ww_equals(8));

-- Location: IOOBUF_X54_Y0_N53
\equals[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[7]~24_combout\,
	devoe => ww_devoe,
	o => ww_equals(7));

-- Location: IOOBUF_X79_Y0_N2
\equals[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[6]~25_combout\,
	devoe => ww_devoe,
	o => ww_equals(6));

-- Location: IOOBUF_X71_Y0_N2
\equals[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[5]~26_combout\,
	devoe => ww_devoe,
	o => ww_equals(5));

-- Location: IOOBUF_X79_Y0_N36
\equals[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[4]~27_combout\,
	devoe => ww_devoe,
	o => ww_equals(4));

-- Location: IOOBUF_X26_Y0_N36
\equals[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[3]~28_combout\,
	devoe => ww_devoe,
	o => ww_equals(3));

-- Location: IOOBUF_X67_Y0_N2
\equals[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[2]~29_combout\,
	devoe => ww_devoe,
	o => ww_equals(2));

-- Location: IOOBUF_X33_Y0_N42
\equals[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[1]~30_combout\,
	devoe => ww_devoe,
	o => ww_equals(1));

-- Location: IOOBUF_X44_Y0_N36
\equals[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|O1[0]~31_combout\,
	devoe => ww_devoe,
	o => ww_equals(0));

-- Location: IOIBUF_X26_Y0_N1
\DATA2[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(30),
	o => \DATA2[30]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\DATA2[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(24),
	o => \DATA2[24]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\DATA2[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(25),
	o => \DATA2[25]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\DATA2[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(23),
	o => \DATA2[23]~input_o\);

-- Location: IOIBUF_X35_Y0_N18
\DATA2[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(20),
	o => \DATA2[20]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\DATA2[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(18),
	o => \DATA2[18]~input_o\);

-- Location: IOIBUF_X71_Y0_N18
\DATA2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(15),
	o => \DATA2[15]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\DATA2[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(16),
	o => \DATA2[16]~input_o\);

-- Location: IOIBUF_X77_Y0_N52
\DATA2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(9),
	o => \DATA2[9]~input_o\);

-- Location: IOIBUF_X67_Y0_N52
\DATA2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(8),
	o => \DATA2[8]~input_o\);

-- Location: IOIBUF_X65_Y0_N92
\DATA2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(10),
	o => \DATA2[10]~input_o\);

-- Location: IOIBUF_X65_Y0_N41
\DATA2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(2),
	o => \DATA2[2]~input_o\);

-- Location: IOIBUF_X39_Y0_N35
\DATA2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(3),
	o => \DATA2[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N75
\DATA2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(0),
	o => \DATA2[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\DATA2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(1),
	o => \DATA2[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\DATA2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(4),
	o => \DATA2[4]~input_o\);

-- Location: LABCELL_X39_Y3_N36
\inst5|inst|inst3|inst|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst3|inst|Bit0|inst|And1~combout\ = ( !\DATA2[4]~input_o\ & ( (!\DATA2[2]~input_o\ & (!\DATA2[3]~input_o\ & (!\DATA2[0]~input_o\ & !\DATA2[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[2]~input_o\,
	datab => \ALT_INV_DATA2[3]~input_o\,
	datac => \ALT_INV_DATA2[0]~input_o\,
	datad => \ALT_INV_DATA2[1]~input_o\,
	dataf => \ALT_INV_DATA2[4]~input_o\,
	combout => \inst5|inst|inst3|inst|Bit0|inst|And1~combout\);

-- Location: IOIBUF_X42_Y0_N1
\DATA2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(6),
	o => \DATA2[6]~input_o\);

-- Location: IOIBUF_X77_Y0_N1
\DATA2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(7),
	o => \DATA2[7]~input_o\);

-- Location: IOIBUF_X42_Y0_N52
\DATA2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(5),
	o => \DATA2[5]~input_o\);

-- Location: LABCELL_X44_Y3_N15
\inst5|inst|inst3|inst|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst3|inst|Bit3|inst|And1~combout\ = ( !\DATA2[5]~input_o\ & ( (\inst5|inst|inst3|inst|Bit0|inst|And1~combout\ & (!\DATA2[6]~input_o\ & !\DATA2[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA2[6]~input_o\,
	datad => \ALT_INV_DATA2[7]~input_o\,
	dataf => \ALT_INV_DATA2[5]~input_o\,
	combout => \inst5|inst|inst3|inst|Bit3|inst|And1~combout\);

-- Location: MLABCELL_X46_Y3_N36
\inst5|inst|inst2|inst1|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst1|Bit2|inst|And1~combout\ = ( \inst5|inst|inst3|inst|Bit3|inst|And1~combout\ & ( (!\DATA2[9]~input_o\ & (!\DATA2[8]~input_o\ & !\DATA2[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[9]~input_o\,
	datab => \ALT_INV_DATA2[8]~input_o\,
	datac => \ALT_INV_DATA2[10]~input_o\,
	dataf => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst2|inst1|Bit2|inst|And1~combout\);

-- Location: IOIBUF_X50_Y0_N18
\DATA2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(11),
	o => \DATA2[11]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\DATA2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(13),
	o => \DATA2[13]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\DATA2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(12),
	o => \DATA2[12]~input_o\);

-- Location: LABCELL_X47_Y4_N39
\inst5|inst|inst2|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst|Bit1|inst|And1~combout\ = ( !\DATA2[12]~input_o\ & ( (\inst5|inst|inst2|inst1|Bit2|inst|And1~combout\ & (!\DATA2[11]~input_o\ & !\DATA2[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA2[11]~input_o\,
	datac => \ALT_INV_DATA2[13]~input_o\,
	dataf => \ALT_INV_DATA2[12]~input_o\,
	combout => \inst5|inst|inst2|inst|Bit1|inst|And1~combout\);

-- Location: IOIBUF_X73_Y0_N92
\DATA2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(14),
	o => \DATA2[14]~input_o\);

-- Location: LABCELL_X44_Y4_N33
\inst5|inst|inst1|inst1|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst1|Bit0|inst|And1~combout\ = ( !\DATA2[14]~input_o\ & ( (!\DATA2[15]~input_o\ & (!\DATA2[16]~input_o\ & \inst5|inst|inst2|inst|Bit1|inst|And1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[15]~input_o\,
	datac => \ALT_INV_DATA2[16]~input_o\,
	datad => \inst5|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA2[14]~input_o\,
	combout => \inst5|inst|inst1|inst1|Bit0|inst|And1~combout\);

-- Location: IOIBUF_X44_Y0_N52
\DATA2[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(17),
	o => \DATA2[17]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\DATA2[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(19),
	o => \DATA2[19]~input_o\);

-- Location: LABCELL_X42_Y4_N0
\inst5|inst|inst1|inst1|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst1|Bit3|inst|And1~combout\ = ( !\DATA2[19]~input_o\ & ( (!\DATA2[18]~input_o\ & (\inst5|inst|inst1|inst1|Bit0|inst|And1~combout\ & !\DATA2[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[18]~input_o\,
	datac => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	datad => \ALT_INV_DATA2[17]~input_o\,
	dataf => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst5|inst|inst1|inst1|Bit3|inst|And1~combout\);

-- Location: IOIBUF_X37_Y0_N18
\DATA2[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(21),
	o => \DATA2[21]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\DATA2[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(22),
	o => \DATA2[22]~input_o\);

-- Location: LABCELL_X38_Y4_N54
\inst5|inst|inst1|inst|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst|Bit2|inst|And1~combout\ = ( !\DATA2[22]~input_o\ & ( (!\DATA2[20]~input_o\ & (\inst5|inst|inst1|inst1|Bit3|inst|And1~combout\ & !\DATA2[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[20]~input_o\,
	datac => \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datad => \ALT_INV_DATA2[21]~input_o\,
	datae => \ALT_INV_DATA2[22]~input_o\,
	combout => \inst5|inst|inst1|inst|Bit2|inst|And1~combout\);

-- Location: LABCELL_X35_Y4_N42
\inst5|inst|inst|inst1|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst1|Bit1|inst|And1~combout\ = ( \inst5|inst|inst1|inst|Bit2|inst|And1~combout\ & ( (!\DATA2[24]~input_o\ & (!\DATA2[25]~input_o\ & !\DATA2[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[24]~input_o\,
	datac => \ALT_INV_DATA2[25]~input_o\,
	datad => \ALT_INV_DATA2[23]~input_o\,
	dataf => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst|inst1|Bit1|inst|And1~combout\);

-- Location: IOIBUF_X30_Y0_N1
\DATA2[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(26),
	o => \DATA2[26]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\DATA2[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(28),
	o => \DATA2[28]~input_o\);

-- Location: IOIBUF_X26_Y0_N52
\DATA2[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(27),
	o => \DATA2[27]~input_o\);

-- Location: LABCELL_X35_Y3_N6
\inst5|inst|inst|inst|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst|Bit0|inst|And1~combout\ = ( !\DATA2[27]~input_o\ & ( (\inst5|inst|inst|inst1|Bit1|inst|And1~combout\ & (!\DATA2[26]~input_o\ & !\DATA2[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA2[26]~input_o\,
	datad => \ALT_INV_DATA2[28]~input_o\,
	dataf => \ALT_INV_DATA2[27]~input_o\,
	combout => \inst5|inst|inst|inst|Bit0|inst|And1~combout\);

-- Location: IOIBUF_X33_Y0_N92
\DATA2[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(29),
	o => \DATA2[29]~input_o\);

-- Location: LABCELL_X34_Y3_N24
\inst5|inst|inst|inst|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst|Bit2|inst|X1~combout\ = ( \DATA2[29]~input_o\ & ( !\DATA2[30]~input_o\ ) ) # ( !\DATA2[29]~input_o\ & ( !\DATA2[30]~input_o\ $ (\inst5|inst|inst|inst|Bit0|inst|And1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA2[30]~input_o\,
	datad => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst5|inst|inst|inst|Bit2|inst|X1~combout\);

-- Location: LABCELL_X32_Y3_N39
\inst5|inst|inst|inst|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst|Bit2|inst|And1~combout\ = ( \inst5|inst|inst|inst|Bit0|inst|And1~combout\ & ( (!\DATA2[30]~input_o\ & !\DATA2[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[30]~input_o\,
	datad => \ALT_INV_DATA2[29]~input_o\,
	dataf => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst|inst|Bit2|inst|And1~combout\);

-- Location: IOIBUF_X22_Y0_N52
\DATA2[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(31),
	o => \DATA2[31]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\DATA1[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(29),
	o => \DATA1[29]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\DATA1[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(30),
	o => \DATA1[30]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\DATA1[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(31),
	o => \DATA1[31]~input_o\);

-- Location: IOIBUF_X35_Y0_N52
\DATA1[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(28),
	o => \DATA1[28]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\DATA1[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(26),
	o => \DATA1[26]~input_o\);

-- Location: IOIBUF_X26_Y0_N18
\DATA1[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(27),
	o => \DATA1[27]~input_o\);

-- Location: IOIBUF_X35_Y0_N35
\DATA1[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(23),
	o => \DATA1[23]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\DATA1[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(24),
	o => \DATA1[24]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\DATA1[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(25),
	o => \DATA1[25]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\DATA1[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(18),
	o => \DATA1[18]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\DATA1[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(17),
	o => \DATA1[17]~input_o\);

-- Location: IOIBUF_X42_Y0_N35
\DATA1[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(19),
	o => \DATA1[19]~input_o\);

-- Location: IOIBUF_X77_Y0_N18
\DATA1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(14),
	o => \DATA1[14]~input_o\);

-- Location: IOIBUF_X75_Y0_N52
\DATA1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(7),
	o => \DATA1[7]~input_o\);

-- Location: IOIBUF_X69_Y0_N18
\DATA1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(6),
	o => \DATA1[6]~input_o\);

-- Location: IOIBUF_X92_Y0_N52
\DATA1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(5),
	o => \DATA1[5]~input_o\);

-- Location: IOIBUF_X71_Y0_N52
\DATA1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(4),
	o => \DATA1[4]~input_o\);

-- Location: IOIBUF_X25_Y0_N58
\DATA1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(1),
	o => \DATA1[1]~input_o\);

-- Location: IOIBUF_X37_Y0_N52
\DATA1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(0),
	o => \DATA1[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\DATA1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(3),
	o => \DATA1[3]~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\DATA1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(2),
	o => \DATA1[2]~input_o\);

-- Location: LABCELL_X39_Y3_N15
\inst4|inst|inst3|inst|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst|Bit0|inst|And1~combout\ = ( !\DATA1[2]~input_o\ & ( (!\DATA1[4]~input_o\ & (!\DATA1[1]~input_o\ & (!\DATA1[0]~input_o\ & !\DATA1[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[4]~input_o\,
	datab => \ALT_INV_DATA1[1]~input_o\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_DATA1[3]~input_o\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	combout => \inst4|inst|inst3|inst|Bit0|inst|And1~combout\);

-- Location: LABCELL_X44_Y3_N42
\inst4|inst|inst3|inst|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst|Bit3|inst|And1~combout\ = ( \inst4|inst|inst3|inst|Bit0|inst|And1~combout\ & ( (!\DATA1[7]~input_o\ & (!\DATA1[6]~input_o\ & !\DATA1[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[7]~input_o\,
	datac => \ALT_INV_DATA1[6]~input_o\,
	datad => \ALT_INV_DATA1[5]~input_o\,
	dataf => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst3|inst|Bit3|inst|And1~combout\);

-- Location: IOIBUF_X52_Y0_N18
\DATA1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(8),
	o => \DATA1[8]~input_o\);

-- Location: IOIBUF_X75_Y0_N35
\DATA1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(9),
	o => \DATA1[9]~input_o\);

-- Location: IOIBUF_X71_Y0_N35
\DATA1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(10),
	o => \DATA1[10]~input_o\);

-- Location: MLABCELL_X46_Y3_N57
\inst4|inst|inst2|inst1|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst1|Bit2|inst|And1~combout\ = ( !\DATA1[10]~input_o\ & ( (\inst4|inst|inst3|inst|Bit3|inst|And1~combout\ & (!\DATA1[8]~input_o\ & !\DATA1[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA1[8]~input_o\,
	datad => \ALT_INV_DATA1[9]~input_o\,
	dataf => \ALT_INV_DATA1[10]~input_o\,
	combout => \inst4|inst|inst2|inst1|Bit2|inst|And1~combout\);

-- Location: IOIBUF_X48_Y0_N41
\DATA1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(11),
	o => \DATA1[11]~input_o\);

-- Location: IOIBUF_X82_Y0_N92
\DATA1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(12),
	o => \DATA1[12]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\DATA1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(13),
	o => \DATA1[13]~input_o\);

-- Location: LABCELL_X47_Y4_N45
\inst4|inst|inst2|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst|Bit1|inst|And1~combout\ = ( !\DATA1[13]~input_o\ & ( (\inst4|inst|inst2|inst1|Bit2|inst|And1~combout\ & (!\DATA1[11]~input_o\ & !\DATA1[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA1[11]~input_o\,
	datad => \ALT_INV_DATA1[12]~input_o\,
	dataf => \ALT_INV_DATA1[13]~input_o\,
	combout => \inst4|inst|inst2|inst|Bit1|inst|And1~combout\);

-- Location: IOIBUF_X69_Y0_N35
\DATA1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(15),
	o => \DATA1[15]~input_o\);

-- Location: IOIBUF_X77_Y0_N35
\DATA1[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(16),
	o => \DATA1[16]~input_o\);

-- Location: LABCELL_X44_Y4_N6
\inst4|inst|inst1|inst1|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst1|Bit0|inst|And1~combout\ = ( !\DATA1[16]~input_o\ & ( (!\DATA1[14]~input_o\ & (\inst4|inst|inst2|inst|Bit1|inst|And1~combout\ & !\DATA1[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[14]~input_o\,
	datab => \inst4|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	datad => \ALT_INV_DATA1[15]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst4|inst|inst1|inst1|Bit0|inst|And1~combout\);

-- Location: LABCELL_X42_Y4_N21
\inst4|inst|inst1|inst1|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst1|Bit3|inst|And1~combout\ = ( \inst4|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( (!\DATA1[18]~input_o\ & (!\DATA1[17]~input_o\ & !\DATA1[19]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[18]~input_o\,
	datab => \ALT_INV_DATA1[17]~input_o\,
	datac => \ALT_INV_DATA1[19]~input_o\,
	dataf => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst1|inst1|Bit3|inst|And1~combout\);

-- Location: IOIBUF_X44_Y0_N18
\DATA1[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(20),
	o => \DATA1[20]~input_o\);

-- Location: IOIBUF_X18_Y0_N35
\DATA1[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(22),
	o => \DATA1[22]~input_o\);

-- Location: IOIBUF_X79_Y0_N18
\DATA1[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(21),
	o => \DATA1[21]~input_o\);

-- Location: LABCELL_X38_Y4_N15
\inst4|inst|inst1|inst|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst|Bit2|inst|And1~combout\ = ( !\DATA1[21]~input_o\ & ( (\inst4|inst|inst1|inst1|Bit3|inst|And1~combout\ & (!\DATA1[20]~input_o\ & !\DATA1[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA1[20]~input_o\,
	datac => \ALT_INV_DATA1[22]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst4|inst|inst1|inst|Bit2|inst|And1~combout\);

-- Location: LABCELL_X35_Y4_N6
\inst4|inst|inst|inst1|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst1|Bit1|inst|And1~combout\ = ( \inst4|inst|inst1|inst|Bit2|inst|And1~combout\ & ( (!\DATA1[23]~input_o\ & (!\DATA1[24]~input_o\ & !\DATA1[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_DATA1[24]~input_o\,
	datac => \ALT_INV_DATA1[25]~input_o\,
	dataf => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst|inst1|Bit1|inst|And1~combout\);

-- Location: LABCELL_X35_Y3_N24
\inst4|inst|inst|inst|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst|Bit0|inst|And1~combout\ = ( \inst4|inst|inst|inst1|Bit1|inst|And1~combout\ & ( (!\DATA1[28]~input_o\ & (!\DATA1[26]~input_o\ & !\DATA1[27]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[28]~input_o\,
	datab => \ALT_INV_DATA1[26]~input_o\,
	datac => \ALT_INV_DATA1[27]~input_o\,
	dataf => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst|inst|Bit0|inst|And1~combout\);

-- Location: LABCELL_X34_Y3_N42
\inst7|inst|inst|inst|Bit3|inst|X1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst|inst|Bit3|inst|X1~0_combout\ = ( \DATA1[31]~input_o\ & ( \inst4|inst|inst|inst|Bit0|inst|And1~combout\ & ( !\inst5|inst|inst|inst|Bit2|inst|And1~combout\ $ (!\DATA2[31]~input_o\ $ (((\DATA1[30]~input_o\) # (\DATA1[29]~input_o\)))) ) ) ) # 
-- ( !\DATA1[31]~input_o\ & ( \inst4|inst|inst|inst|Bit0|inst|And1~combout\ & ( !\inst5|inst|inst|inst|Bit2|inst|And1~combout\ $ (!\DATA2[31]~input_o\ $ (((!\DATA1[29]~input_o\ & !\DATA1[30]~input_o\)))) ) ) ) # ( \DATA1[31]~input_o\ & ( 
-- !\inst4|inst|inst|inst|Bit0|inst|And1~combout\ & ( !\inst5|inst|inst|inst|Bit2|inst|And1~combout\ $ (\DATA2[31]~input_o\) ) ) ) # ( !\DATA1[31]~input_o\ & ( !\inst4|inst|inst|inst|Bit0|inst|And1~combout\ & ( !\inst5|inst|inst|inst|Bit2|inst|And1~combout\ 
-- $ (!\DATA2[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110100110011001100110010110011001100110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst|Bit2|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA2[31]~input_o\,
	datac => \ALT_INV_DATA1[29]~input_o\,
	datad => \ALT_INV_DATA1[30]~input_o\,
	datae => \ALT_INV_DATA1[31]~input_o\,
	dataf => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst7|inst|inst|inst|Bit3|inst|X1~0_combout\);

-- Location: LABCELL_X35_Y3_N45
\inst5|inst|inst|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst|Bit0|inst|X1~combout\ = ( \DATA2[27]~input_o\ & ( !\DATA2[28]~input_o\ ) ) # ( !\DATA2[27]~input_o\ & ( !\DATA2[28]~input_o\ $ (((!\DATA2[26]~input_o\ & \inst5|inst|inst|inst1|Bit1|inst|And1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000111100111100000011110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[26]~input_o\,
	datac => \ALT_INV_DATA2[28]~input_o\,
	datad => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA2[27]~input_o\,
	combout => \inst5|inst|inst|inst|Bit0|inst|X1~combout\);

-- Location: LABCELL_X35_Y4_N45
\inst4|inst|inst|inst1|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst1|Bit1|inst|X1~combout\ = ( \inst4|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA1[25]~input_o\ $ (((!\DATA1[23]~input_o\ & !\DATA1[24]~input_o\))) ) ) # ( !\inst4|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA1[25]~input_o\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datac => \ALT_INV_DATA1[24]~input_o\,
	datad => \ALT_INV_DATA1[25]~input_o\,
	dataf => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst|inst1|Bit1|inst|X1~combout\);

-- Location: LABCELL_X35_Y3_N48
\inst4|inst|inst|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst1|Bit2|inst|X1~combout\ = ( \inst4|inst|inst|inst1|Bit1|inst|And1~combout\ & ( \DATA1[26]~input_o\ ) ) # ( !\inst4|inst|inst|inst1|Bit1|inst|And1~combout\ & ( !\DATA1[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[26]~input_o\,
	dataf => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X35_Y3_N33
\inst4|inst|inst|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst1|Bit3|inst|X1~combout\ = ( \inst4|inst|inst|inst1|Bit1|inst|And1~combout\ & ( !\DATA1[27]~input_o\ $ (!\DATA1[26]~input_o\) ) ) # ( !\inst4|inst|inst|inst1|Bit1|inst|And1~combout\ & ( !\DATA1[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[27]~input_o\,
	datab => \ALT_INV_DATA1[26]~input_o\,
	dataf => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst|inst1|Bit3|inst|X1~combout\);

-- Location: LABCELL_X35_Y3_N9
\inst5|inst|inst|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst1|Bit3|inst|X1~combout\ = ( \DATA2[27]~input_o\ & ( (\inst5|inst|inst|inst1|Bit1|inst|And1~combout\ & !\DATA2[26]~input_o\) ) ) # ( !\DATA2[27]~input_o\ & ( (!\inst5|inst|inst|inst1|Bit1|inst|And1~combout\) # (\DATA2[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA2[26]~input_o\,
	dataf => \ALT_INV_DATA2[27]~input_o\,
	combout => \inst5|inst|inst|inst1|Bit3|inst|X1~combout\);

-- Location: MLABCELL_X36_Y3_N33
\inst|inst|inst1|Bit3|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|Bit3|inst1|X1~combout\ = !\inst4|inst|inst|inst1|Bit3|inst|X1~combout\ $ (!\inst5|inst|inst|inst1|Bit3|inst|X1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst|inst|inst1|Bit3|inst1|X1~combout\);

-- Location: LABCELL_X35_Y4_N15
\inst5|inst|inst|inst1|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst1|Bit1|inst|X1~combout\ = ( \inst5|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA2[25]~input_o\ $ (((!\DATA2[24]~input_o\ & !\DATA2[23]~input_o\))) ) ) # ( !\inst5|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA2[25]~input_o\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[25]~input_o\,
	datab => \ALT_INV_DATA2[24]~input_o\,
	datac => \ALT_INV_DATA2[23]~input_o\,
	dataf => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst|inst1|Bit1|inst|X1~combout\);

-- Location: LABCELL_X35_Y3_N27
\inst5|inst|inst|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst1|Bit2|inst|X1~combout\ = !\DATA2[26]~input_o\ $ (\inst5|inst|inst|inst1|Bit1|inst|And1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA2[26]~input_o\,
	datad => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X38_Y4_N33
\inst4|inst|inst1|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst|Bit1|inst|X1~combout\ = ( \inst4|inst|inst1|inst1|Bit3|inst|And1~combout\ & ( \DATA1[21]~input_o\ & ( !\DATA1[20]~input_o\ ) ) ) # ( \inst4|inst|inst1|inst1|Bit3|inst|And1~combout\ & ( !\DATA1[21]~input_o\ & ( \DATA1[20]~input_o\ ) 
-- ) ) # ( !\inst4|inst|inst1|inst1|Bit3|inst|And1~combout\ & ( !\DATA1[21]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[20]~input_o\,
	datae => \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst4|inst|inst1|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X38_Y4_N24
\inst5|inst|inst1|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst|Bit0|inst|X1~combout\ = ( \DATA2[20]~input_o\ & ( \inst5|inst|inst1|inst1|Bit3|inst|And1~combout\ ) ) # ( !\DATA2[20]~input_o\ & ( !\inst5|inst|inst1|inst1|Bit3|inst|And1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datae => \ALT_INV_DATA2[20]~input_o\,
	combout => \inst5|inst|inst1|inst|Bit0|inst|X1~combout\);

-- Location: LABCELL_X38_Y4_N18
\inst4|inst|inst1|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst|Bit0|inst|X1~combout\ = ( \inst4|inst|inst1|inst1|Bit3|inst|And1~combout\ & ( \DATA1[20]~input_o\ ) ) # ( !\inst4|inst|inst1|inst1|Bit3|inst|And1~combout\ & ( !\DATA1[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA1[20]~input_o\,
	combout => \inst4|inst|inst1|inst|Bit0|inst|X1~combout\);

-- Location: LABCELL_X42_Y4_N57
\inst5|inst|inst1|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ = ( \DATA2[19]~input_o\ & ( (\inst5|inst|inst1|inst1|Bit0|inst|And1~combout\ & (!\DATA2[18]~input_o\ & !\DATA2[17]~input_o\)) ) ) # ( !\DATA2[19]~input_o\ & ( (!\inst5|inst|inst1|inst1|Bit0|inst|And1~combout\) 
-- # ((\DATA2[17]~input_o\) # (\DATA2[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA2[18]~input_o\,
	datac => \ALT_INV_DATA2[17]~input_o\,
	dataf => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst5|inst|inst1|inst1|Bit3|inst|X1~combout\);

-- Location: LABCELL_X42_Y4_N3
\inst4|inst|inst1|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ = ( \inst4|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( !\DATA1[19]~input_o\ $ (((!\DATA1[18]~input_o\ & !\DATA1[17]~input_o\))) ) ) # ( !\inst4|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( 
-- !\DATA1[19]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[18]~input_o\,
	datac => \ALT_INV_DATA1[17]~input_o\,
	datad => \ALT_INV_DATA1[19]~input_o\,
	dataf => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst1|inst1|Bit3|inst|X1~combout\);

-- Location: LABCELL_X42_Y4_N54
\inst5|inst|inst1|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst1|Bit2|inst|X1~combout\ = !\DATA2[18]~input_o\ $ (((\inst5|inst|inst1|inst1|Bit0|inst|And1~combout\ & !\DATA2[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100111001100100110011100110010011001110011001001100111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA2[18]~input_o\,
	datad => \ALT_INV_DATA2[17]~input_o\,
	combout => \inst5|inst|inst1|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X42_Y4_N18
\inst4|inst|inst1|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst1|Bit2|inst|X1~combout\ = ( \inst4|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( !\DATA1[18]~input_o\ $ (!\DATA1[17]~input_o\) ) ) # ( !\inst4|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( !\DATA1[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[18]~input_o\,
	datab => \ALT_INV_DATA1[17]~input_o\,
	dataf => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst1|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X44_Y4_N30
\inst5|inst|inst1|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ = ( \DATA2[14]~input_o\ & ( !\DATA2[16]~input_o\ ) ) # ( !\DATA2[14]~input_o\ & ( !\DATA2[16]~input_o\ $ (((!\DATA2[15]~input_o\ & \inst5|inst|inst2|inst|Bit1|inst|And1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001100110110011000110011011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[15]~input_o\,
	datab => \ALT_INV_DATA2[16]~input_o\,
	datad => \inst5|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA2[14]~input_o\,
	combout => \inst5|inst|inst1|inst1|Bit0|inst|X1~combout\);

-- Location: LABCELL_X44_Y4_N57
\inst4|inst|inst1|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ = ( \DATA1[16]~input_o\ & ( (!\DATA1[14]~input_o\ & (\inst4|inst|inst2|inst|Bit1|inst|And1~combout\ & !\DATA1[15]~input_o\)) ) ) # ( !\DATA1[16]~input_o\ & ( ((!\inst4|inst|inst2|inst|Bit1|inst|And1~combout\) 
-- # (\DATA1[15]~input_o\)) # (\DATA1[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[14]~input_o\,
	datac => \inst4|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	datad => \ALT_INV_DATA1[15]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst4|inst|inst1|inst1|Bit0|inst|X1~combout\);

-- Location: LABCELL_X42_Y4_N39
\inst4|inst|inst1|inst1|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst1|Bit1|inst|X1~combout\ = ( \inst4|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( \DATA1[17]~input_o\ ) ) # ( !\inst4|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( !\DATA1[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[17]~input_o\,
	dataf => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst1|inst1|Bit1|inst|X1~combout\);

-- Location: LABCELL_X44_Y4_N15
\inst4|inst|inst2|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst|Bit3|inst|X1~combout\ = !\DATA1[15]~input_o\ $ (((!\DATA1[14]~input_o\ & \inst4|inst|inst2|inst|Bit1|inst|And1~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011010010110100101101001011010010110100101101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[14]~input_o\,
	datab => \inst4|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA1[15]~input_o\,
	combout => \inst4|inst|inst2|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X44_Y4_N18
\inst5|inst|inst2|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst|Bit3|inst|X1~combout\ = !\DATA2[15]~input_o\ $ (((!\DATA2[14]~input_o\ & \inst5|inst|inst2|inst|Bit1|inst|And1~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011010010110100101101001011010010110100101101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[14]~input_o\,
	datab => \inst5|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA2[15]~input_o\,
	combout => \inst5|inst|inst2|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X44_Y4_N21
\inst5|inst|inst2|inst|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst|Bit2|inst|X1~combout\ = !\DATA2[14]~input_o\ $ (\inst5|inst|inst2|inst|Bit1|inst|And1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[14]~input_o\,
	datab => \inst5|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst2|inst|Bit2|inst|X1~combout\);

-- Location: LABCELL_X47_Y4_N36
\inst5|inst|inst2|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst|Bit0|inst|X1~combout\ = ( \DATA2[12]~input_o\ & ( (\inst5|inst|inst2|inst1|Bit2|inst|And1~combout\ & !\DATA2[11]~input_o\) ) ) # ( !\DATA2[12]~input_o\ & ( (!\inst5|inst|inst2|inst1|Bit2|inst|And1~combout\) # (\DATA2[11]~input_o\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA2[11]~input_o\,
	dataf => \ALT_INV_DATA2[12]~input_o\,
	combout => \inst5|inst|inst2|inst|Bit0|inst|X1~combout\);

-- Location: MLABCELL_X46_Y3_N39
\inst5|inst|inst2|inst1|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ = ( \inst5|inst|inst3|inst|Bit3|inst|And1~combout\ & ( !\DATA2[9]~input_o\ $ (!\DATA2[8]~input_o\) ) ) # ( !\inst5|inst|inst3|inst|Bit3|inst|And1~combout\ & ( !\DATA2[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[9]~input_o\,
	datab => \ALT_INV_DATA2[8]~input_o\,
	dataf => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst2|inst1|Bit1|inst|X1~combout\);

-- Location: MLABCELL_X46_Y3_N0
\inst4|inst|inst2|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ = ( \DATA1[9]~input_o\ & ( !\DATA1[10]~input_o\ ) ) # ( !\DATA1[9]~input_o\ & ( !\DATA1[10]~input_o\ $ (((\inst4|inst|inst3|inst|Bit3|inst|And1~combout\ & !\DATA1[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010010110100101101001011010011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA1[8]~input_o\,
	datac => \ALT_INV_DATA1[10]~input_o\,
	dataf => \ALT_INV_DATA1[9]~input_o\,
	combout => \inst4|inst|inst2|inst1|Bit2|inst|X1~combout\);

-- Location: MLABCELL_X46_Y3_N45
\inst5|inst|inst2|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ = ( \DATA2[9]~input_o\ & ( !\DATA2[10]~input_o\ ) ) # ( !\DATA2[9]~input_o\ & ( !\DATA2[10]~input_o\ $ (((!\DATA2[8]~input_o\ & \inst5|inst|inst3|inst|Bit3|inst|And1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001011010101010100101101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[10]~input_o\,
	datac => \ALT_INV_DATA2[8]~input_o\,
	datad => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA2[9]~input_o\,
	combout => \inst5|inst|inst2|inst1|Bit2|inst|X1~combout\);

-- Location: MLABCELL_X46_Y3_N3
\inst4|inst|inst2|inst1|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ = ( \DATA1[9]~input_o\ & ( (\inst4|inst|inst3|inst|Bit3|inst|And1~combout\ & !\DATA1[8]~input_o\) ) ) # ( !\DATA1[9]~input_o\ & ( (!\inst4|inst|inst3|inst|Bit3|inst|And1~combout\) # (\DATA1[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA1[8]~input_o\,
	dataf => \ALT_INV_DATA1[9]~input_o\,
	combout => \inst4|inst|inst2|inst1|Bit1|inst|X1~combout\);

-- Location: LABCELL_X44_Y3_N6
\inst5|inst|inst3|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst3|inst|Bit3|inst|X1~combout\ = ( \DATA2[5]~input_o\ & ( !\DATA2[7]~input_o\ ) ) # ( !\DATA2[5]~input_o\ & ( !\DATA2[7]~input_o\ $ (((!\DATA2[6]~input_o\ & \inst5|inst|inst3|inst|Bit0|inst|And1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100001100111100110000110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[6]~input_o\,
	datac => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	datad => \ALT_INV_DATA2[7]~input_o\,
	dataf => \ALT_INV_DATA2[5]~input_o\,
	combout => \inst5|inst|inst3|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X42_Y3_N24
\inst|inst3|inst|Bit2|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|Bit2|inst1|X1~combout\ = ( \DATA1[5]~input_o\ & ( \inst5|inst|inst3|inst|Bit0|inst|And1~combout\ & ( !\DATA1[6]~input_o\ $ (!\DATA2[5]~input_o\ $ (!\DATA2[6]~input_o\)) ) ) ) # ( !\DATA1[5]~input_o\ & ( 
-- \inst5|inst|inst3|inst|Bit0|inst|And1~combout\ & ( !\DATA1[6]~input_o\ $ (!\inst4|inst|inst3|inst|Bit0|inst|And1~combout\ $ (!\DATA2[5]~input_o\ $ (\DATA2[6]~input_o\))) ) ) ) # ( \DATA1[5]~input_o\ & ( !\inst5|inst|inst3|inst|Bit0|inst|And1~combout\ & ( 
-- !\DATA1[6]~input_o\ $ (!\DATA2[6]~input_o\) ) ) ) # ( !\DATA1[5]~input_o\ & ( !\inst5|inst|inst3|inst|Bit0|inst|And1~combout\ & ( !\DATA1[6]~input_o\ $ (!\inst4|inst|inst3|inst|Bit0|inst|And1~combout\ $ (\DATA2[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001010101011010101010010110011010011010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[6]~input_o\,
	datab => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA2[5]~input_o\,
	datad => \ALT_INV_DATA2[6]~input_o\,
	datae => \ALT_INV_DATA1[5]~input_o\,
	dataf => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst|inst3|inst|Bit2|inst1|X1~combout\);

-- Location: LABCELL_X39_Y3_N39
\inst5|inst|inst3|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ = ( \DATA2[1]~input_o\ & ( !\DATA2[3]~input_o\ ) ) # ( !\DATA2[1]~input_o\ & ( !\DATA2[3]~input_o\ $ (((!\DATA2[2]~input_o\ & !\DATA2[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110001101100011011000110110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[2]~input_o\,
	datab => \ALT_INV_DATA2[3]~input_o\,
	datac => \ALT_INV_DATA2[0]~input_o\,
	dataf => \ALT_INV_DATA2[1]~input_o\,
	combout => \inst5|inst|inst3|inst1|Bit3|inst|X1~combout\);

-- Location: LABCELL_X39_Y3_N57
\inst5|inst|inst3|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst3|inst1|Bit2|inst|X1~combout\ = !\DATA2[2]~input_o\ $ (((!\DATA2[1]~input_o\ & !\DATA2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000001011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[1]~input_o\,
	datac => \ALT_INV_DATA2[0]~input_o\,
	datad => \ALT_INV_DATA2[2]~input_o\,
	combout => \inst5|inst|inst3|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X39_Y3_N54
\inst4|inst|inst3|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ = ( \DATA1[2]~input_o\ & ( !\DATA1[3]~input_o\ ) ) # ( !\DATA1[2]~input_o\ & ( !\DATA1[3]~input_o\ $ (((!\DATA1[1]~input_o\ & !\DATA1[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[1]~input_o\,
	datac => \ALT_INV_DATA1[3]~input_o\,
	datad => \ALT_INV_DATA1[0]~input_o\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	combout => \inst4|inst|inst3|inst1|Bit3|inst|X1~combout\);

-- Location: MLABCELL_X41_Y3_N36
\inst4|inst|inst3|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ = ( !\DATA1[1]~input_o\ & ( \DATA1[2]~input_o\ & ( !\DATA1[0]~input_o\ ) ) ) # ( \DATA1[1]~input_o\ & ( !\DATA1[2]~input_o\ ) ) # ( !\DATA1[1]~input_o\ & ( !\DATA1[2]~input_o\ & ( \DATA1[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[0]~input_o\,
	datae => \ALT_INV_DATA1[1]~input_o\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	combout => \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\);

-- Location: IOIBUF_X17_Y0_N58
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LABCELL_X39_Y3_N33
\inst2|inst3|inst1|inst2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst1|inst2|inst2~combout\ = ( \Cin~input_o\ & ( \DATA2[0]~input_o\ & ( (!\DATA2[1]~input_o\) # (!\DATA1[1]~input_o\ $ (\DATA1[0]~input_o\)) ) ) ) # ( !\Cin~input_o\ & ( \DATA2[0]~input_o\ & ( (!\DATA1[1]~input_o\ & ((!\DATA1[0]~input_o\))) # 
-- (\DATA1[1]~input_o\ & (!\DATA2[1]~input_o\)) ) ) ) # ( \Cin~input_o\ & ( !\DATA2[0]~input_o\ & ( (!\DATA1[1]~input_o\ & ((!\DATA1[0]~input_o\))) # (\DATA1[1]~input_o\ & (\DATA2[1]~input_o\)) ) ) ) # ( !\Cin~input_o\ & ( !\DATA2[0]~input_o\ & ( 
-- (\DATA2[1]~input_o\ & (!\DATA1[1]~input_o\ $ (\DATA1[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101111101010000010111111010000010101111101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[1]~input_o\,
	datac => \ALT_INV_DATA1[1]~input_o\,
	datad => \ALT_INV_DATA1[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_DATA2[0]~input_o\,
	combout => \inst2|inst3|inst1|inst2|inst2~combout\);

-- Location: MLABCELL_X41_Y3_N3
\inst2|inst3|inst1|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst1|inst|inst2~combout\ = ( \inst2|inst3|inst1|inst2|inst2~combout\ & ( (!\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & (!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ & ((!\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\) # 
-- (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)))) # (\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & (((!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\) # (!\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\)) # 
-- (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\))) ) ) # ( !\inst2|inst3|inst1|inst2|inst2~combout\ & ( (!\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\ & (!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ & 
-- !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\))) # (\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & ((!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\) # ((\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\ & !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101010000011100010101000011110101011100011111010101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst5|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst4|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst3|inst1|inst2|ALT_INV_inst2~combout\,
	combout => \inst2|inst3|inst1|inst|inst2~combout\);

-- Location: LABCELL_X39_Y3_N12
\inst4|inst|inst3|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst|Bit0|inst|X1~combout\ = ( \DATA1[2]~input_o\ & ( !\DATA1[4]~input_o\ ) ) # ( !\DATA1[2]~input_o\ & ( !\DATA1[4]~input_o\ $ (((!\DATA1[1]~input_o\ & (!\DATA1[0]~input_o\ & !\DATA1[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010101010011010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[4]~input_o\,
	datab => \ALT_INV_DATA1[1]~input_o\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_DATA1[3]~input_o\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	combout => \inst4|inst|inst3|inst|Bit0|inst|X1~combout\);

-- Location: LABCELL_X42_Y3_N9
\inst|inst3|inst|Bit1|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|Bit1|inst1|X1~combout\ = ( \inst5|inst|inst3|inst|Bit0|inst|And1~combout\ & ( !\DATA2[5]~input_o\ $ (!\inst4|inst|inst3|inst|Bit0|inst|And1~combout\ $ (!\DATA1[5]~input_o\)) ) ) # ( !\inst5|inst|inst3|inst|Bit0|inst|And1~combout\ & ( 
-- !\DATA2[5]~input_o\ $ (!\inst4|inst|inst3|inst|Bit0|inst|And1~combout\ $ (\DATA1[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[5]~input_o\,
	datab => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	datad => \ALT_INV_DATA1[5]~input_o\,
	dataf => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst|inst3|inst|Bit1|inst1|X1~combout\);

-- Location: LABCELL_X44_Y3_N30
\inst2|inst3|inst|inst2|inst1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst|inst2|inst1|inst2~combout\ = ( \inst4|inst|inst3|inst|Bit0|inst|And1~combout\ & ( (!\DATA1[5]~input_o\ & (!\inst5|inst|inst3|inst|Bit0|inst|And1~combout\ $ (\DATA2[5]~input_o\))) ) ) # ( !\inst4|inst|inst3|inst|Bit0|inst|And1~combout\ & 
-- ( (\DATA1[5]~input_o\ & (!\inst5|inst|inst3|inst|Bit0|inst|And1~combout\ $ (\DATA2[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010110100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA2[5]~input_o\,
	datad => \ALT_INV_DATA1[5]~input_o\,
	dataf => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst2|inst3|inst|inst2|inst1|inst2~combout\);

-- Location: LABCELL_X39_Y3_N45
\inst5|inst|inst3|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst3|inst|Bit0|inst|X1~combout\ = ( \DATA2[2]~input_o\ & ( !\DATA2[4]~input_o\ ) ) # ( !\DATA2[2]~input_o\ & ( !\DATA2[4]~input_o\ $ (((!\DATA2[3]~input_o\ & (!\DATA2[1]~input_o\ & !\DATA2[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010101010011010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[4]~input_o\,
	datab => \ALT_INV_DATA2[3]~input_o\,
	datac => \ALT_INV_DATA2[1]~input_o\,
	datad => \ALT_INV_DATA2[0]~input_o\,
	dataf => \ALT_INV_DATA2[2]~input_o\,
	combout => \inst5|inst|inst3|inst|Bit0|inst|X1~combout\);

-- Location: LABCELL_X42_Y3_N0
\inst2|inst3|inst|inst1|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst|inst1|inst|inst2~combout\ = ( \inst2|inst3|inst|inst2|inst1|inst2~combout\ & ( \inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & ( !\inst|inst3|inst|Bit2|inst1|X1~combout\ ) ) ) # ( !\inst2|inst3|inst|inst2|inst1|inst2~combout\ & ( 
-- \inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & ( (!\inst|inst3|inst|Bit2|inst1|X1~combout\ & (!\inst|inst3|inst|Bit1|inst1|X1~combout\ & ((!\inst4|inst|inst3|inst|Bit0|inst|X1~combout\) # (\inst2|inst3|inst1|inst|inst2~combout\)))) ) ) ) # ( 
-- \inst2|inst3|inst|inst2|inst1|inst2~combout\ & ( !\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & ( !\inst|inst3|inst|Bit2|inst1|X1~combout\ ) ) ) # ( !\inst2|inst3|inst|inst2|inst1|inst2~combout\ & ( !\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & ( 
-- (!\inst|inst3|inst|Bit2|inst1|X1~combout\ & (\inst2|inst3|inst1|inst|inst2~combout\ & (!\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & !\inst|inst3|inst|Bit1|inst1|X1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000101010101010101010100010000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|Bit2|inst1|ALT_INV_X1~combout\,
	datab => \inst2|inst3|inst1|inst|ALT_INV_inst2~combout\,
	datac => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datae => \inst2|inst3|inst|inst2|inst1|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst3|inst|inst1|inst|inst2~combout\);

-- Location: LABCELL_X44_Y3_N9
\inst4|inst|inst3|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst|Bit3|inst|X1~combout\ = ( \DATA1[7]~input_o\ & ( (!\DATA1[5]~input_o\ & (\inst4|inst|inst3|inst|Bit0|inst|And1~combout\ & !\DATA1[6]~input_o\)) ) ) # ( !\DATA1[7]~input_o\ & ( ((!\inst4|inst|inst3|inst|Bit0|inst|And1~combout\) # 
-- (\DATA1[6]~input_o\)) # (\DATA1[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[5]~input_o\,
	datac => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	datad => \ALT_INV_DATA1[6]~input_o\,
	dataf => \ALT_INV_DATA1[7]~input_o\,
	combout => \inst4|inst|inst3|inst|Bit3|inst|X1~combout\);

-- Location: MLABCELL_X46_Y3_N51
\inst5|inst|inst2|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst1|Bit0|inst|X1~combout\ = ( \DATA2[8]~input_o\ & ( \inst5|inst|inst3|inst|Bit3|inst|And1~combout\ ) ) # ( !\DATA2[8]~input_o\ & ( !\inst5|inst|inst3|inst|Bit3|inst|And1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA2[8]~input_o\,
	combout => \inst5|inst|inst2|inst1|Bit0|inst|X1~combout\);

-- Location: MLABCELL_X46_Y3_N12
\inst4|inst|inst2|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst1|Bit0|inst|X1~combout\ = !\DATA1[8]~input_o\ $ (\inst4|inst|inst3|inst|Bit3|inst|And1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[8]~input_o\,
	datac => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst2|inst1|Bit0|inst|X1~combout\);

-- Location: LABCELL_X44_Y3_N24
\inst4|inst|inst3|inst|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst|Bit2|inst|X1~combout\ = ( \inst4|inst|inst3|inst|Bit0|inst|And1~combout\ & ( !\DATA1[6]~input_o\ $ (!\DATA1[5]~input_o\) ) ) # ( !\inst4|inst|inst3|inst|Bit0|inst|And1~combout\ & ( !\DATA1[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[6]~input_o\,
	datac => \ALT_INV_DATA1[5]~input_o\,
	dataf => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst3|inst|Bit2|inst|X1~combout\);

-- Location: LABCELL_X44_Y3_N33
\inst5|inst|inst3|inst|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst3|inst|Bit2|inst|X1~combout\ = ( \DATA2[5]~input_o\ & ( !\DATA2[6]~input_o\ ) ) # ( !\DATA2[5]~input_o\ & ( !\inst5|inst|inst3|inst|Bit0|inst|And1~combout\ $ (\DATA2[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA2[6]~input_o\,
	dataf => \ALT_INV_DATA2[5]~input_o\,
	combout => \inst5|inst|inst3|inst|Bit2|inst|X1~combout\);

-- Location: LABCELL_X43_Y3_N15
\inst2|inst3|inst|inst1|inst1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst|inst1|inst1|inst2~combout\ = ( \inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & ( !\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst3|inst|inst1|inst1|inst2~combout\);

-- Location: LABCELL_X43_Y3_N18
\inst2|inst2|inst1|inst3|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst1|inst3|inst2~combout\ = ( \inst4|inst|inst2|inst1|Bit0|inst|X1~combout\ & ( \inst2|inst3|inst|inst1|inst1|inst2~combout\ & ( (\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\ & ((!\inst4|inst|inst3|inst|Bit3|inst|X1~combout\) # 
-- (\inst5|inst|inst3|inst|Bit3|inst|X1~combout\))) ) ) ) # ( !\inst4|inst|inst2|inst1|Bit0|inst|X1~combout\ & ( \inst2|inst3|inst|inst1|inst1|inst2~combout\ & ( ((!\inst4|inst|inst3|inst|Bit3|inst|X1~combout\) # 
-- (\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\)) # (\inst5|inst|inst3|inst|Bit3|inst|X1~combout\) ) ) ) # ( \inst4|inst|inst2|inst1|Bit0|inst|X1~combout\ & ( !\inst2|inst3|inst|inst1|inst1|inst2~combout\ & ( (\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\ 
-- & ((!\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & (\inst2|inst3|inst|inst1|inst|inst2~combout\ & !\inst4|inst|inst3|inst|Bit3|inst|X1~combout\)) # (\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & ((!\inst4|inst|inst3|inst|Bit3|inst|X1~combout\) # 
-- (\inst2|inst3|inst|inst1|inst|inst2~combout\))))) ) ) ) # ( !\inst4|inst|inst2|inst1|Bit0|inst|X1~combout\ & ( !\inst2|inst3|inst|inst1|inst1|inst2~combout\ & ( ((!\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & (\inst2|inst3|inst|inst1|inst|inst2~combout\ 
-- & !\inst4|inst|inst3|inst|Bit3|inst|X1~combout\)) # (\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & ((!\inst4|inst|inst3|inst|Bit3|inst|X1~combout\) # (\inst2|inst3|inst|inst1|inst|inst2~combout\)))) # (\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000111111111000000000111000111110101111111110000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst2|inst3|inst|inst1|inst|ALT_INV_inst2~combout\,
	datac => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst5|inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst3|inst|inst1|inst1|ALT_INV_inst2~combout\,
	combout => \inst2|inst2|inst1|inst3|inst2~combout\);

-- Location: LABCELL_X47_Y4_N24
\inst|inst2|inst1|Bit3|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|Bit3|inst1|X1~combout\ = ( \inst5|inst|inst2|inst1|Bit2|inst|And1~combout\ & ( !\DATA2[11]~input_o\ $ (!\inst4|inst|inst2|inst1|Bit2|inst|And1~combout\ $ (!\DATA1[11]~input_o\)) ) ) # ( !\inst5|inst|inst2|inst1|Bit2|inst|And1~combout\ & 
-- ( !\DATA2[11]~input_o\ $ (!\inst4|inst|inst2|inst1|Bit2|inst|And1~combout\ $ (\DATA1[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[11]~input_o\,
	datac => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datad => \ALT_INV_DATA1[11]~input_o\,
	dataf => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst|inst2|inst1|Bit3|inst1|X1~combout\);

-- Location: LABCELL_X47_Y3_N42
\inst2|inst2|inst1|inst|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst1|inst|inst|inst2~combout\ = ( \inst2|inst2|inst1|inst3|inst2~combout\ & ( !\inst|inst2|inst1|Bit3|inst1|X1~combout\ & ( (!\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & (((!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\) # 
-- (\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\)) # (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\))) # (\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & (\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & ((!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\) # 
-- (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\)))) ) ) ) # ( !\inst2|inst2|inst1|inst3|inst2~combout\ & ( !\inst|inst2|inst1|Bit3|inst1|X1~combout\ & ( (!\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & (((\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & 
-- !\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\)) # (\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\))) # (\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & (\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & 
-- !\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100001100110011110100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datae => \inst2|inst2|inst1|inst3|ALT_INV_inst2~combout\,
	dataf => \inst|inst2|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	combout => \inst2|inst2|inst1|inst|inst|inst2~combout\);

-- Location: LABCELL_X47_Y4_N33
\inst5|inst|inst2|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst|Bit1|inst|X1~combout\ = ( \DATA2[12]~input_o\ & ( !\DATA2[13]~input_o\ ) ) # ( !\DATA2[12]~input_o\ & ( !\DATA2[13]~input_o\ $ (((\inst5|inst|inst2|inst1|Bit2|inst|And1~combout\ & !\DATA2[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111101010000101011110101000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA2[11]~input_o\,
	datad => \ALT_INV_DATA2[13]~input_o\,
	dataf => \ALT_INV_DATA2[12]~input_o\,
	combout => \inst5|inst|inst2|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X47_Y4_N42
\inst4|inst|inst2|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst|Bit1|inst|X1~combout\ = ( \DATA1[13]~input_o\ & ( (\inst4|inst|inst2|inst1|Bit2|inst|And1~combout\ & (!\DATA1[11]~input_o\ & !\DATA1[12]~input_o\)) ) ) # ( !\DATA1[13]~input_o\ & ( (!\inst4|inst|inst2|inst1|Bit2|inst|And1~combout\) 
-- # ((\DATA1[12]~input_o\) # (\DATA1[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111101110111111111101000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA1[11]~input_o\,
	datad => \ALT_INV_DATA1[12]~input_o\,
	dataf => \ALT_INV_DATA1[13]~input_o\,
	combout => \inst4|inst|inst2|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X47_Y4_N30
\inst4|inst|inst2|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst|Bit0|inst|X1~combout\ = !\DATA1[12]~input_o\ $ (((!\DATA1[11]~input_o\ & \inst4|inst|inst2|inst1|Bit2|inst|And1~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100001100111100110000110011110011000011001111001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[11]~input_o\,
	datac => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datad => \ALT_INV_DATA1[12]~input_o\,
	combout => \inst4|inst|inst2|inst|Bit0|inst|X1~combout\);

-- Location: MLABCELL_X46_Y4_N36
\inst5|inst|inst2|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst1|Bit3|inst|X1~combout\ = ( \DATA2[11]~input_o\ & ( \inst5|inst|inst2|inst1|Bit2|inst|And1~combout\ ) ) # ( !\DATA2[11]~input_o\ & ( !\inst5|inst|inst2|inst1|Bit2|inst|And1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA2[11]~input_o\,
	combout => \inst5|inst|inst2|inst1|Bit3|inst|X1~combout\);

-- Location: MLABCELL_X46_Y4_N39
\inst4|inst|inst2|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst1|Bit3|inst|X1~combout\ = ( \DATA1[11]~input_o\ & ( \inst4|inst|inst2|inst1|Bit2|inst|And1~combout\ ) ) # ( !\DATA1[11]~input_o\ & ( !\inst4|inst|inst2|inst1|Bit2|inst|And1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_DATA1[11]~input_o\,
	combout => \inst4|inst|inst2|inst1|Bit3|inst|X1~combout\);

-- Location: MLABCELL_X46_Y4_N12
\inst2|inst2|inst1|inst|inst1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst1|inst|inst1|inst2~combout\ = ( !\inst4|inst|inst2|inst1|Bit3|inst|X1~combout\ & ( \inst5|inst|inst2|inst1|Bit3|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst2|inst1|inst|inst1|inst2~combout\);

-- Location: MLABCELL_X46_Y4_N54
\inst2|inst2|inst|inst2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst|inst2|inst2~combout\ = ( \inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ( \inst2|inst2|inst1|inst|inst1|inst2~combout\ & ( (!\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & (\inst5|inst|inst2|inst|Bit1|inst|X1~combout\ & 
-- !\inst4|inst|inst2|inst|Bit1|inst|X1~combout\)) # (\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ((!\inst4|inst|inst2|inst|Bit1|inst|X1~combout\) # (\inst5|inst|inst2|inst|Bit1|inst|X1~combout\))) ) ) ) # ( !\inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & 
-- ( \inst2|inst2|inst1|inst|inst1|inst2~combout\ & ( (!\inst4|inst|inst2|inst|Bit1|inst|X1~combout\) # (\inst5|inst|inst2|inst|Bit1|inst|X1~combout\) ) ) ) # ( \inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ( !\inst2|inst2|inst1|inst|inst1|inst2~combout\ & 
-- ( (!\inst5|inst|inst2|inst|Bit1|inst|X1~combout\ & (\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & (\inst2|inst2|inst1|inst|inst|inst2~combout\ & !\inst4|inst|inst2|inst|Bit1|inst|X1~combout\))) # (\inst5|inst|inst2|inst|Bit1|inst|X1~combout\ & 
-- ((!\inst4|inst|inst2|inst|Bit1|inst|X1~combout\) # ((\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & \inst2|inst2|inst1|inst|inst|inst2~combout\)))) ) ) ) # ( !\inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ( !\inst2|inst2|inst1|inst|inst1|inst2~combout\ & 
-- ( (!\inst5|inst|inst2|inst|Bit1|inst|X1~combout\ & (!\inst4|inst|inst2|inst|Bit1|inst|X1~combout\ & ((\inst2|inst2|inst1|inst|inst|inst2~combout\) # (\inst5|inst|inst2|inst|Bit0|inst|X1~combout\)))) # (\inst5|inst|inst2|inst|Bit1|inst|X1~combout\ & 
-- (((!\inst4|inst|inst2|inst|Bit1|inst|X1~combout\) # (\inst2|inst2|inst1|inst|inst|inst2~combout\)) # (\inst5|inst|inst2|inst|Bit0|inst|X1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111000111110000000111111111000011110101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst2|inst2|inst1|inst|inst|ALT_INV_inst2~combout\,
	datac => \inst5|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst2|inst1|inst|inst1|ALT_INV_inst2~combout\,
	combout => \inst2|inst2|inst|inst2|inst2~combout\);

-- Location: LABCELL_X44_Y4_N12
\inst4|inst|inst2|inst|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst|Bit2|inst|X1~combout\ = !\DATA1[14]~input_o\ $ (\inst4|inst|inst2|inst|Bit1|inst|And1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[14]~input_o\,
	datab => \inst4|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst2|inst|Bit2|inst|X1~combout\);

-- Location: LABCELL_X45_Y4_N54
\inst2|inst2|inst|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst|inst|inst2~combout\ = ( \inst4|inst|inst2|inst|Bit2|inst|X1~combout\ & ( (!\inst4|inst|inst2|inst|Bit3|inst|X1~combout\ & (((\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & \inst2|inst2|inst|inst2|inst2~combout\)) # 
-- (\inst5|inst|inst2|inst|Bit3|inst|X1~combout\))) # (\inst4|inst|inst2|inst|Bit3|inst|X1~combout\ & (\inst5|inst|inst2|inst|Bit3|inst|X1~combout\ & (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & \inst2|inst2|inst|inst2|inst2~combout\))) ) ) # ( 
-- !\inst4|inst|inst2|inst|Bit2|inst|X1~combout\ & ( (!\inst4|inst|inst2|inst|Bit3|inst|X1~combout\ & (((\inst2|inst2|inst|inst2|inst2~combout\) # (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\)) # (\inst5|inst|inst2|inst|Bit3|inst|X1~combout\))) # 
-- (\inst4|inst|inst2|inst|Bit3|inst|X1~combout\ & (\inst5|inst|inst2|inst|Bit3|inst|X1~combout\ & ((\inst2|inst2|inst|inst2|inst2~combout\) # (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101110111011001010111011101100100010001010110010001000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst5|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst2|inst2|inst|inst2|ALT_INV_inst2~combout\,
	dataf => \inst4|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst2|inst|inst|inst2~combout\);

-- Location: LABCELL_X42_Y4_N36
\inst5|inst|inst1|inst1|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst1|Bit1|inst|X1~combout\ = ( \inst5|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( \DATA2[17]~input_o\ ) ) # ( !\inst5|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( !\DATA2[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[17]~input_o\,
	dataf => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst1|inst1|Bit1|inst|X1~combout\);

-- Location: LABCELL_X43_Y4_N42
\inst2|inst1|inst1|inst2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst1|inst2|inst2~combout\ = ( \inst5|inst|inst1|inst1|Bit1|inst|X1~combout\ & ( (!\inst4|inst|inst1|inst1|Bit1|inst|X1~combout\) # ((!\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & (!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & 
-- \inst2|inst2|inst|inst|inst2~combout\)) # (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & ((!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\) # (\inst2|inst2|inst|inst|inst2~combout\)))) ) ) # ( !\inst5|inst|inst1|inst1|Bit1|inst|X1~combout\ & ( 
-- (!\inst4|inst|inst1|inst1|Bit1|inst|X1~combout\ & ((!\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & (!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & \inst2|inst2|inst|inst|inst2~combout\)) # (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & 
-- ((!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\) # (\inst2|inst2|inst|inst|inst2~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011010000010000001101000011110100111111011111010011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst4|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst2|inst2|inst|inst|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst1|inst1|inst2|inst2~combout\);

-- Location: LABCELL_X43_Y4_N6
\inst2|inst1|inst1|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst1|inst|inst2~combout\ = ( \inst2|inst1|inst1|inst2|inst2~combout\ & ( (!\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & (!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ & ((!\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\) # 
-- (\inst5|inst|inst1|inst1|Bit2|inst|X1~combout\)))) # (\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & ((!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\) # ((!\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\) # 
-- (\inst5|inst|inst1|inst1|Bit2|inst|X1~combout\)))) ) ) # ( !\inst2|inst1|inst1|inst2|inst2~combout\ & ( (!\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & (!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ & (\inst5|inst|inst1|inst1|Bit2|inst|X1~combout\ & 
-- !\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\))) # (\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & ((!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\) # ((\inst5|inst|inst1|inst1|Bit2|inst|X1~combout\ & !\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101000100010011010100010011011101010011011101110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst1|inst1|inst2|ALT_INV_inst2~combout\,
	combout => \inst2|inst1|inst1|inst|inst2~combout\);

-- Location: LABCELL_X38_Y4_N12
\inst4|inst|inst1|inst|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst|Bit2|inst|X1~combout\ = ( \DATA1[21]~input_o\ & ( !\DATA1[22]~input_o\ ) ) # ( !\DATA1[21]~input_o\ & ( !\DATA1[22]~input_o\ $ (((\inst4|inst|inst1|inst1|Bit3|inst|And1~combout\ & !\DATA1[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101101000100101110110100010011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA1[20]~input_o\,
	datad => \ALT_INV_DATA1[22]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst4|inst|inst1|inst|Bit2|inst|X1~combout\);

-- Location: LABCELL_X38_Y4_N51
\inst5|inst|inst1|inst|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst|Bit2|inst|X1~combout\ = ( \DATA2[22]~input_o\ & ( (\inst5|inst|inst1|inst1|Bit3|inst|And1~combout\ & (!\DATA2[21]~input_o\ & !\DATA2[20]~input_o\)) ) ) # ( !\DATA2[22]~input_o\ & ( (!\inst5|inst|inst1|inst1|Bit3|inst|And1~combout\) 
-- # ((\DATA2[20]~input_o\) # (\DATA2[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111010000000100000010111111101111110100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA2[21]~input_o\,
	datac => \ALT_INV_DATA2[20]~input_o\,
	datae => \ALT_INV_DATA2[22]~input_o\,
	combout => \inst5|inst|inst1|inst|Bit2|inst|X1~combout\);

-- Location: LABCELL_X37_Y4_N54
\inst|inst1|inst|Bit2|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit2|inst1|X1~combout\ = ( \inst5|inst|inst1|inst|Bit2|inst|X1~combout\ & ( !\inst4|inst|inst1|inst|Bit2|inst|X1~combout\ ) ) # ( !\inst5|inst|inst1|inst|Bit2|inst|X1~combout\ & ( \inst4|inst|inst1|inst|Bit2|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst|Bit2|inst1|X1~combout\);

-- Location: LABCELL_X38_Y4_N39
\inst5|inst|inst1|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst|Bit1|inst|X1~combout\ = ( \DATA2[20]~input_o\ & ( !\DATA2[21]~input_o\ ) ) # ( !\DATA2[20]~input_o\ & ( !\inst5|inst|inst1|inst1|Bit3|inst|And1~combout\ $ (\DATA2[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101111100001111000010100101101001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA2[21]~input_o\,
	datae => \ALT_INV_DATA2[20]~input_o\,
	combout => \inst5|inst|inst1|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X37_Y4_N30
\inst2|inst1|inst|inst1|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst|inst1|inst|inst2~combout\ = ( !\inst|inst1|inst|Bit2|inst1|X1~combout\ & ( \inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ( (!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\) # ((!\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & 
-- (!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\ & \inst2|inst1|inst1|inst|inst2~combout\)) # (\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & ((!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\) # (\inst2|inst1|inst1|inst|inst2~combout\)))) ) ) ) # ( 
-- !\inst|inst1|inst|Bit2|inst1|X1~combout\ & ( !\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ( (!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & ((!\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & (!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\ & 
-- \inst2|inst1|inst1|inst|inst2~combout\)) # (\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & ((!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\) # (\inst2|inst1|inst1|inst|inst2~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100010000000000000000010111010111110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst5|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst4|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst2|inst1|inst1|inst|ALT_INV_inst2~combout\,
	datae => \inst|inst1|inst|Bit2|inst1|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst1|inst|inst1|inst|inst2~combout\);

-- Location: LABCELL_X35_Y4_N9
\inst5|inst|inst|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst1|Bit0|inst|X1~combout\ = ( \inst5|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA2[24]~input_o\ $ (!\DATA2[23]~input_o\) ) ) # ( !\inst5|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA2[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA2[24]~input_o\,
	datad => \ALT_INV_DATA2[23]~input_o\,
	dataf => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst|inst1|Bit0|inst|X1~combout\);

-- Location: LABCELL_X37_Y4_N39
\inst2|inst1|inst|inst1|inst1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst|inst1|inst1|inst2~combout\ = ( \inst5|inst|inst1|inst|Bit2|inst|X1~combout\ & ( !\inst4|inst|inst1|inst|Bit2|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst1|inst|inst1|inst1|inst2~combout\);

-- Location: LABCELL_X35_Y4_N3
\inst5|inst|inst1|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1|inst|Bit3|inst|X1~combout\ = ( \inst5|inst|inst1|inst|Bit2|inst|And1~combout\ & ( \DATA2[23]~input_o\ ) ) # ( !\inst5|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA2[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA2[23]~input_o\,
	dataf => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst1|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X35_Y4_N24
\inst4|inst|inst1|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst|Bit3|inst|X1~combout\ = ( \inst4|inst|inst1|inst|Bit2|inst|And1~combout\ & ( \DATA1[23]~input_o\ ) ) # ( !\inst4|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA1[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[23]~input_o\,
	dataf => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst1|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X35_Y4_N0
\inst4|inst|inst|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst1|Bit0|inst|X1~combout\ = ( \inst4|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA1[24]~input_o\ $ (!\DATA1[23]~input_o\) ) ) # ( !\inst4|inst|inst1|inst|Bit2|inst|And1~combout\ & ( !\DATA1[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[24]~input_o\,
	datac => \ALT_INV_DATA1[23]~input_o\,
	dataf => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst|inst1|Bit0|inst|X1~combout\);

-- Location: MLABCELL_X36_Y4_N48
\inst2|inst|inst1|inst3|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1|inst3|inst2~combout\ = ( \inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ( \inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( (!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\) # ((!\inst5|inst|inst1|inst|Bit3|inst|X1~combout\) # 
-- ((!\inst2|inst1|inst|inst1|inst|inst2~combout\ & !\inst2|inst1|inst|inst1|inst1|inst2~combout\))) ) ) ) # ( !\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ( \inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( (!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\) 
-- # ((!\inst2|inst1|inst|inst1|inst|inst2~combout\ & (!\inst2|inst1|inst|inst1|inst1|inst2~combout\ & !\inst5|inst|inst1|inst|Bit3|inst|X1~combout\))) ) ) ) # ( \inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ( !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & 
-- ( (!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ & ((!\inst5|inst|inst1|inst|Bit3|inst|X1~combout\) # ((!\inst2|inst1|inst|inst1|inst|inst2~combout\ & !\inst2|inst1|inst|inst1|inst1|inst2~combout\)))) ) ) ) # ( 
-- !\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ( !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( (!\inst2|inst1|inst|inst1|inst|inst2~combout\ & (!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ & (!\inst2|inst1|inst|inst1|inst1|inst2~combout\ & 
-- !\inst5|inst|inst1|inst|Bit3|inst|X1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000110011001000000011101100110011001111111111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst|inst1|inst|ALT_INV_inst2~combout\,
	datab => \inst5|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst2|inst1|inst|inst1|inst1|ALT_INV_inst2~combout\,
	datad => \inst5|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst|inst1|inst3|inst2~combout\);

-- Location: MLABCELL_X36_Y3_N42
\inst2|inst|inst1|inst|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1|inst|inst|inst2~combout\ = ( \inst5|inst|inst|inst1|Bit2|inst|X1~combout\ & ( \inst2|inst|inst1|inst3|inst2~combout\ & ( (!\inst|inst|inst1|Bit3|inst1|X1~combout\ & ((!\inst4|inst|inst|inst1|Bit2|inst|X1~combout\) # 
-- ((!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & \inst5|inst|inst|inst1|Bit1|inst|X1~combout\)))) ) ) ) # ( !\inst5|inst|inst|inst1|Bit2|inst|X1~combout\ & ( \inst2|inst|inst1|inst3|inst2~combout\ & ( (!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & 
-- (!\inst4|inst|inst|inst1|Bit2|inst|X1~combout\ & (!\inst|inst|inst1|Bit3|inst1|X1~combout\ & \inst5|inst|inst|inst1|Bit1|inst|X1~combout\))) ) ) ) # ( \inst5|inst|inst|inst1|Bit2|inst|X1~combout\ & ( !\inst2|inst|inst1|inst3|inst2~combout\ & ( 
-- (!\inst|inst|inst1|Bit3|inst1|X1~combout\ & ((!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\) # ((!\inst4|inst|inst|inst1|Bit2|inst|X1~combout\) # (\inst5|inst|inst|inst1|Bit1|inst|X1~combout\)))) ) ) ) # ( !\inst5|inst|inst|inst1|Bit2|inst|X1~combout\ & ( 
-- !\inst2|inst|inst1|inst3|inst2~combout\ & ( (!\inst4|inst|inst|inst1|Bit2|inst|X1~combout\ & (!\inst|inst|inst1|Bit3|inst1|X1~combout\ & ((!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\) # (\inst5|inst|inst|inst1|Bit1|inst|X1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000111000001111000000000000100000001100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst|inst|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	datad => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datae => \inst5|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst|inst1|inst3|ALT_INV_inst2~combout\,
	combout => \inst2|inst|inst1|inst|inst|inst2~combout\);

-- Location: LABCELL_X35_Y3_N51
\inst5|inst|inst|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst|Bit1|inst|X1~combout\ = ( \inst5|inst|inst|inst|Bit0|inst|And1~combout\ & ( \DATA2[29]~input_o\ ) ) # ( !\inst5|inst|inst|inst|Bit0|inst|And1~combout\ & ( !\DATA2[29]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA2[29]~input_o\,
	dataf => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst5|inst|inst|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X35_Y3_N30
\inst4|inst|inst|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst|Bit0|inst|X1~combout\ = ( \inst4|inst|inst|inst1|Bit1|inst|And1~combout\ & ( !\DATA1[28]~input_o\ $ (((!\DATA1[27]~input_o\ & !\DATA1[26]~input_o\))) ) ) # ( !\inst4|inst|inst|inst1|Bit1|inst|And1~combout\ & ( !\DATA1[28]~input_o\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[27]~input_o\,
	datab => \ALT_INV_DATA1[26]~input_o\,
	datac => \ALT_INV_DATA1[28]~input_o\,
	dataf => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst|inst|Bit0|inst|X1~combout\);

-- Location: LABCELL_X32_Y3_N3
\inst4|inst|inst|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst|Bit1|inst|X1~combout\ = ( \inst4|inst|inst|inst|Bit0|inst|And1~combout\ & ( \DATA1[29]~input_o\ ) ) # ( !\inst4|inst|inst|inst|Bit0|inst|And1~combout\ & ( !\DATA1[29]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[29]~input_o\,
	dataf => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst|inst|Bit1|inst|X1~combout\);

-- Location: MLABCELL_X36_Y3_N18
\inst2|inst|inst1|inst|inst1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1|inst|inst1|inst2~combout\ = (\inst5|inst|inst|inst1|Bit3|inst|X1~combout\ & !\inst4|inst|inst|inst1|Bit3|inst|X1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst|inst1|inst|inst1|inst2~combout\);

-- Location: MLABCELL_X36_Y3_N0
\inst2|inst|inst|inst2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|inst2|inst2~combout\ = ( \inst4|inst|inst|inst|Bit1|inst|X1~combout\ & ( \inst2|inst|inst1|inst|inst1|inst2~combout\ & ( (!\inst5|inst|inst|inst|Bit1|inst|X1~combout\) # ((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & 
-- \inst4|inst|inst|inst|Bit0|inst|X1~combout\)) ) ) ) # ( !\inst4|inst|inst|inst|Bit1|inst|X1~combout\ & ( \inst2|inst|inst1|inst|inst1|inst2~combout\ & ( (!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (!\inst5|inst|inst|inst|Bit1|inst|X1~combout\ & 
-- \inst4|inst|inst|inst|Bit0|inst|X1~combout\)) ) ) ) # ( \inst4|inst|inst|inst|Bit1|inst|X1~combout\ & ( !\inst2|inst|inst1|inst|inst1|inst2~combout\ & ( (!\inst5|inst|inst|inst|Bit1|inst|X1~combout\) # ((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & 
-- ((!\inst2|inst|inst1|inst|inst|inst2~combout\) # (\inst4|inst|inst|inst|Bit0|inst|X1~combout\))) # (\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (!\inst2|inst|inst1|inst|inst|inst2~combout\ & \inst4|inst|inst|inst|Bit0|inst|X1~combout\))) ) ) ) # ( 
-- !\inst4|inst|inst|inst|Bit1|inst|X1~combout\ & ( !\inst2|inst|inst1|inst|inst1|inst2~combout\ & ( (!\inst5|inst|inst|inst|Bit1|inst|X1~combout\ & ((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & ((!\inst2|inst|inst1|inst|inst|inst2~combout\) # 
-- (\inst4|inst|inst|inst|Bit0|inst|X1~combout\))) # (\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (!\inst2|inst|inst1|inst|inst|inst2~combout\ & \inst4|inst|inst|inst|Bit0|inst|X1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011100000111110001111111000000000101000001111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst2|inst|inst1|inst|inst|ALT_INV_inst2~combout\,
	datac => \inst5|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst|inst1|inst|inst1|ALT_INV_inst2~combout\,
	combout => \inst2|inst|inst|inst2|inst2~combout\);

-- Location: LABCELL_X37_Y3_N21
\inst4|inst|inst|inst|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst|Bit2|inst|X1~combout\ = ( \inst4|inst|inst|inst|Bit0|inst|And1~combout\ & ( !\DATA1[30]~input_o\ $ (!\DATA1[29]~input_o\) ) ) # ( !\inst4|inst|inst|inst|Bit0|inst|And1~combout\ & ( !\DATA1[30]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[30]~input_o\,
	datad => \ALT_INV_DATA1[29]~input_o\,
	dataf => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst4|inst|inst|inst|Bit2|inst|X1~combout\);

-- Location: LABCELL_X34_Y3_N0
\inst7|inst|inst|inst|Bit3|inst|X1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst|inst|Bit3|inst|X1~1_combout\ = ( \inst4|inst|inst|inst|Bit2|inst|X1~combout\ & ( !\inst7|inst|inst|inst|Bit3|inst|X1~0_combout\ $ (((!\inst5|inst|inst|inst|Bit2|inst|X1~combout\) # (\inst2|inst|inst|inst2|inst2~combout\))) ) ) # ( 
-- !\inst4|inst|inst|inst|Bit2|inst|X1~combout\ & ( !\inst7|inst|inst|inst|Bit3|inst|X1~0_combout\ $ (((!\inst5|inst|inst|inst|Bit2|inst|X1~combout\ & \inst2|inst|inst|inst2|inst2~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011011000110110001101100011001100011011000110110001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst7|inst|inst|inst|Bit3|inst|ALT_INV_X1~0_combout\,
	datac => \inst2|inst|inst|inst2|ALT_INV_inst2~combout\,
	dataf => \inst4|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst|inst|Bit3|inst|X1~1_combout\);

-- Location: IOIBUF_X40_Y0_N92
\OP[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: LABCELL_X44_Y3_N18
\inst8|inst1|inst1|inst1|inst3|inst6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~9_combout\ = ( \DATA1[5]~input_o\ & ( \DATA1[6]~input_o\ & ( (!\DATA2[6]~input_o\) # ((!\DATA2[5]~input_o\) # ((\DATA1[7]~input_o\ & !\DATA2[7]~input_o\))) ) ) ) # ( !\DATA1[5]~input_o\ & ( \DATA1[6]~input_o\ & ( 
-- (!\DATA2[5]~input_o\ & ((!\DATA2[6]~input_o\) # ((\DATA1[7]~input_o\ & !\DATA2[7]~input_o\)))) ) ) ) # ( \DATA1[5]~input_o\ & ( !\DATA1[6]~input_o\ & ( (!\DATA2[5]~input_o\) # ((\DATA1[7]~input_o\ & (!\DATA2[6]~input_o\ & !\DATA2[7]~input_o\))) ) ) ) # ( 
-- !\DATA1[5]~input_o\ & ( !\DATA1[6]~input_o\ & ( (\DATA1[7]~input_o\ & (!\DATA2[6]~input_o\ & (!\DATA2[5]~input_o\ & !\DATA2[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000111101001111000011010000110000001111110111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[7]~input_o\,
	datab => \ALT_INV_DATA2[6]~input_o\,
	datac => \ALT_INV_DATA2[5]~input_o\,
	datad => \ALT_INV_DATA2[7]~input_o\,
	datae => \ALT_INV_DATA1[5]~input_o\,
	dataf => \ALT_INV_DATA1[6]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~9_combout\);

-- Location: LABCELL_X39_Y3_N42
\inst8|inst1|inst1|inst1|inst3|inst6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~10_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~9_combout\ & ( (!\DATA2[3]~input_o\ & ((!\DATA2[4]~input_o\) # ((\DATA1[3]~input_o\) # (\DATA1[4]~input_o\)))) # (\DATA2[3]~input_o\ & (\DATA1[3]~input_o\ & 
-- ((!\DATA2[4]~input_o\) # (\DATA1[4]~input_o\)))) ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~9_combout\ & ( (!\DATA2[3]~input_o\ & (((!\DATA2[4]~input_o\ & \DATA1[4]~input_o\)) # (\DATA1[3]~input_o\))) # (\DATA2[3]~input_o\ & (!\DATA2[4]~input_o\ & 
-- (\DATA1[4]~input_o\ & \DATA1[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011001110000010001100111010001100111011111000110011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[4]~input_o\,
	datab => \ALT_INV_DATA2[3]~input_o\,
	datac => \ALT_INV_DATA1[4]~input_o\,
	datad => \ALT_INV_DATA1[3]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~9_combout\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~10_combout\);

-- Location: MLABCELL_X41_Y3_N0
\inst8|inst|inst|inst|inst|inst5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst|inst|inst|inst5~combout\ = ( \DATA2[0]~input_o\ & ( !\DATA1[0]~input_o\ ) ) # ( !\DATA2[0]~input_o\ & ( \DATA1[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA1[0]~input_o\,
	dataf => \ALT_INV_DATA2[0]~input_o\,
	combout => \inst8|inst|inst|inst|inst|inst5~combout\);

-- Location: LABCELL_X39_Y3_N18
\inst8|inst1|inst1|inst1|inst3|inst6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~11_combout\ = ( !\inst8|inst|inst|inst|inst|inst5~combout\ & ( \DATA1[2]~input_o\ & ( (!\DATA1[1]~input_o\ & (!\DATA2[1]~input_o\ & ((!\DATA2[2]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~10_combout\)))) # 
-- (\DATA1[1]~input_o\ & ((!\DATA2[2]~input_o\) # ((!\DATA2[1]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~10_combout\)))) ) ) ) # ( !\inst8|inst|inst|inst|inst|inst5~combout\ & ( !\DATA1[2]~input_o\ & ( (!\DATA1[1]~input_o\ & (!\DATA2[2]~input_o\ & 
-- (!\DATA2[1]~input_o\ & \inst8|inst1|inst1|inst1|inst3|inst6~10_combout\))) # (\DATA1[1]~input_o\ & ((!\DATA2[1]~input_o\) # ((!\DATA2[2]~input_o\ & \inst8|inst1|inst1|inst1|inst3|inst6~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010110010000000000000000010110010111100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[2]~input_o\,
	datab => \ALT_INV_DATA1[1]~input_o\,
	datac => \ALT_INV_DATA2[1]~input_o\,
	datad => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~10_combout\,
	datae => \inst8|inst|inst|inst|inst|ALT_INV_inst5~combout\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~11_combout\);

-- Location: LABCELL_X44_Y3_N0
\inst8|inst|inst|inst1|inst3|inst4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst|inst1|inst3|inst4~1_combout\ = ( \DATA1[5]~input_o\ & ( \DATA1[6]~input_o\ & ( (\DATA2[6]~input_o\ & (\DATA2[5]~input_o\ & (!\DATA1[7]~input_o\ $ (\DATA2[7]~input_o\)))) ) ) ) # ( !\DATA1[5]~input_o\ & ( \DATA1[6]~input_o\ & ( 
-- (\DATA2[6]~input_o\ & (!\DATA2[5]~input_o\ & (!\DATA1[7]~input_o\ $ (\DATA2[7]~input_o\)))) ) ) ) # ( \DATA1[5]~input_o\ & ( !\DATA1[6]~input_o\ & ( (!\DATA2[6]~input_o\ & (\DATA2[5]~input_o\ & (!\DATA1[7]~input_o\ $ (\DATA2[7]~input_o\)))) ) ) ) # ( 
-- !\DATA1[5]~input_o\ & ( !\DATA1[6]~input_o\ & ( (!\DATA2[6]~input_o\ & (!\DATA2[5]~input_o\ & (!\DATA1[7]~input_o\ $ (\DATA2[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[7]~input_o\,
	datab => \ALT_INV_DATA2[6]~input_o\,
	datac => \ALT_INV_DATA2[5]~input_o\,
	datad => \ALT_INV_DATA2[7]~input_o\,
	datae => \ALT_INV_DATA1[5]~input_o\,
	dataf => \ALT_INV_DATA1[6]~input_o\,
	combout => \inst8|inst|inst|inst1|inst3|inst4~1_combout\);

-- Location: LABCELL_X39_Y3_N6
\inst8|inst|inst|inst1|inst3|inst4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst|inst1|inst3|inst4~2_combout\ = ( \DATA1[3]~input_o\ & ( \DATA1[2]~input_o\ & ( (\DATA2[3]~input_o\ & (\DATA2[2]~input_o\ & (!\DATA2[4]~input_o\ $ (\DATA1[4]~input_o\)))) ) ) ) # ( !\DATA1[3]~input_o\ & ( \DATA1[2]~input_o\ & ( 
-- (!\DATA2[3]~input_o\ & (\DATA2[2]~input_o\ & (!\DATA2[4]~input_o\ $ (\DATA1[4]~input_o\)))) ) ) ) # ( \DATA1[3]~input_o\ & ( !\DATA1[2]~input_o\ & ( (\DATA2[3]~input_o\ & (!\DATA2[2]~input_o\ & (!\DATA2[4]~input_o\ $ (\DATA1[4]~input_o\)))) ) ) ) # ( 
-- !\DATA1[3]~input_o\ & ( !\DATA1[2]~input_o\ & ( (!\DATA2[3]~input_o\ & (!\DATA2[2]~input_o\ & (!\DATA2[4]~input_o\ $ (\DATA1[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[4]~input_o\,
	datab => \ALT_INV_DATA2[3]~input_o\,
	datac => \ALT_INV_DATA1[4]~input_o\,
	datad => \ALT_INV_DATA2[2]~input_o\,
	datae => \ALT_INV_DATA1[3]~input_o\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	combout => \inst8|inst|inst|inst1|inst3|inst4~2_combout\);

-- Location: MLABCELL_X46_Y3_N30
\inst8|inst|inst1|inst|inst|inst5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst1|inst|inst|inst5~combout\ = ( \DATA2[8]~input_o\ & ( !\DATA1[8]~input_o\ ) ) # ( !\DATA2[8]~input_o\ & ( \DATA1[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA1[8]~input_o\,
	dataf => \ALT_INV_DATA2[8]~input_o\,
	combout => \inst8|inst|inst1|inst|inst|inst5~combout\);

-- Location: LABCELL_X39_Y3_N3
\inst8|inst|inst|inst1|inst3|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst|inst1|inst3|inst4~0_combout\ = ( \DATA2[0]~input_o\ & ( (\DATA1[0]~input_o\ & (!\DATA2[1]~input_o\ $ (\DATA1[1]~input_o\))) ) ) # ( !\DATA2[0]~input_o\ & ( (!\DATA1[0]~input_o\ & (!\DATA2[1]~input_o\ $ (\DATA1[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000000000000100110010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[1]~input_o\,
	datab => \ALT_INV_DATA1[1]~input_o\,
	datad => \ALT_INV_DATA1[0]~input_o\,
	dataf => \ALT_INV_DATA2[0]~input_o\,
	combout => \inst8|inst|inst|inst1|inst3|inst4~0_combout\);

-- Location: MLABCELL_X46_Y3_N6
\inst8|inst|inst1|inst1|inst2|inst4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst1|inst1|inst2|inst4~1_combout\ = ( \DATA2[10]~input_o\ & ( \DATA2[9]~input_o\ & ( (\DATA1[10]~input_o\ & (\DATA1[9]~input_o\ & (!\DATA1[11]~input_o\ $ (\DATA2[11]~input_o\)))) ) ) ) # ( !\DATA2[10]~input_o\ & ( \DATA2[9]~input_o\ & ( 
-- (!\DATA1[10]~input_o\ & (\DATA1[9]~input_o\ & (!\DATA1[11]~input_o\ $ (\DATA2[11]~input_o\)))) ) ) ) # ( \DATA2[10]~input_o\ & ( !\DATA2[9]~input_o\ & ( (\DATA1[10]~input_o\ & (!\DATA1[9]~input_o\ & (!\DATA1[11]~input_o\ $ (\DATA2[11]~input_o\)))) ) ) ) # 
-- ( !\DATA2[10]~input_o\ & ( !\DATA2[9]~input_o\ & ( (!\DATA1[10]~input_o\ & (!\DATA1[9]~input_o\ & (!\DATA1[11]~input_o\ $ (\DATA2[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[11]~input_o\,
	datab => \ALT_INV_DATA2[11]~input_o\,
	datac => \ALT_INV_DATA1[10]~input_o\,
	datad => \ALT_INV_DATA1[9]~input_o\,
	datae => \ALT_INV_DATA2[10]~input_o\,
	dataf => \ALT_INV_DATA2[9]~input_o\,
	combout => \inst8|inst|inst1|inst1|inst2|inst4~1_combout\);

-- Location: LABCELL_X47_Y4_N0
\inst8|inst|inst1|inst1|inst2|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst1|inst1|inst2|inst4~0_combout\ = ( \DATA1[12]~input_o\ & ( \DATA2[12]~input_o\ & ( (!\DATA1[13]~input_o\ & (!\DATA2[13]~input_o\ & (!\DATA1[14]~input_o\ $ (\DATA2[14]~input_o\)))) # (\DATA1[13]~input_o\ & (\DATA2[13]~input_o\ & 
-- (!\DATA1[14]~input_o\ $ (\DATA2[14]~input_o\)))) ) ) ) # ( !\DATA1[12]~input_o\ & ( !\DATA2[12]~input_o\ & ( (!\DATA1[13]~input_o\ & (!\DATA2[13]~input_o\ & (!\DATA1[14]~input_o\ $ (\DATA2[14]~input_o\)))) # (\DATA1[13]~input_o\ & (\DATA2[13]~input_o\ & 
-- (!\DATA1[14]~input_o\ $ (\DATA2[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[13]~input_o\,
	datab => \ALT_INV_DATA2[13]~input_o\,
	datac => \ALT_INV_DATA1[14]~input_o\,
	datad => \ALT_INV_DATA2[14]~input_o\,
	datae => \ALT_INV_DATA1[12]~input_o\,
	dataf => \ALT_INV_DATA2[12]~input_o\,
	combout => \inst8|inst|inst1|inst1|inst2|inst4~0_combout\);

-- Location: LABCELL_X44_Y3_N36
\inst8|inst|inst1|inst1|inst2|inst4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst1|inst1|inst2|inst4~combout\ = ( \inst8|inst|inst1|inst1|inst2|inst4~1_combout\ & ( \inst8|inst|inst1|inst1|inst2|inst4~0_combout\ & ( (\inst8|inst|inst|inst1|inst3|inst4~1_combout\ & (\inst8|inst|inst|inst1|inst3|inst4~2_combout\ & 
-- (!\inst8|inst|inst1|inst|inst|inst5~combout\ & \inst8|inst|inst|inst1|inst3|inst4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~1_combout\,
	datab => \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~2_combout\,
	datac => \inst8|inst|inst1|inst|inst|ALT_INV_inst5~combout\,
	datad => \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~0_combout\,
	datae => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~1_combout\,
	dataf => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~0_combout\,
	combout => \inst8|inst|inst1|inst1|inst2|inst4~combout\);

-- Location: LABCELL_X34_Y3_N48
\inst8|inst1|inst1|inst1|inst3|inst6~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~12_combout\ = ( \DATA1[31]~input_o\ & ( \DATA2[29]~input_o\ & ( (\DATA1[29]~input_o\ & ((!\DATA2[31]~input_o\ & ((!\DATA2[30]~input_o\) # (\DATA1[30]~input_o\))) # (\DATA2[31]~input_o\ & (!\DATA2[30]~input_o\ & 
-- \DATA1[30]~input_o\)))) ) ) ) # ( !\DATA1[31]~input_o\ & ( \DATA2[29]~input_o\ & ( (\DATA1[29]~input_o\ & (!\DATA2[30]~input_o\ & \DATA1[30]~input_o\)) ) ) ) # ( \DATA1[31]~input_o\ & ( !\DATA2[29]~input_o\ & ( ((!\DATA2[31]~input_o\ & 
-- ((!\DATA2[30]~input_o\) # (\DATA1[30]~input_o\))) # (\DATA2[31]~input_o\ & (!\DATA2[30]~input_o\ & \DATA1[30]~input_o\))) # (\DATA1[29]~input_o\) ) ) ) # ( !\DATA1[31]~input_o\ & ( !\DATA2[29]~input_o\ & ( ((!\DATA2[30]~input_o\ & \DATA1[30]~input_o\)) # 
-- (\DATA1[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101110101011111110100000000010100000100000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[29]~input_o\,
	datab => \ALT_INV_DATA2[31]~input_o\,
	datac => \ALT_INV_DATA2[30]~input_o\,
	datad => \ALT_INV_DATA1[30]~input_o\,
	datae => \ALT_INV_DATA1[31]~input_o\,
	dataf => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~12_combout\);

-- Location: LABCELL_X35_Y3_N0
\inst8|inst1|inst1|inst1|inst|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst|inst4~0_combout\ = ( \DATA2[26]~input_o\ & ( \DATA1[28]~input_o\ & ( (\DATA1[26]~input_o\ & (\DATA2[28]~input_o\ & (!\DATA1[27]~input_o\ $ (\DATA2[27]~input_o\)))) ) ) ) # ( !\DATA2[26]~input_o\ & ( \DATA1[28]~input_o\ & ( 
-- (!\DATA1[26]~input_o\ & (\DATA2[28]~input_o\ & (!\DATA1[27]~input_o\ $ (\DATA2[27]~input_o\)))) ) ) ) # ( \DATA2[26]~input_o\ & ( !\DATA1[28]~input_o\ & ( (\DATA1[26]~input_o\ & (!\DATA2[28]~input_o\ & (!\DATA1[27]~input_o\ $ (\DATA2[27]~input_o\)))) ) ) 
-- ) # ( !\DATA2[26]~input_o\ & ( !\DATA1[28]~input_o\ & ( (!\DATA1[26]~input_o\ & (!\DATA2[28]~input_o\ & (!\DATA1[27]~input_o\ $ (\DATA2[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[27]~input_o\,
	datab => \ALT_INV_DATA1[26]~input_o\,
	datac => \ALT_INV_DATA2[27]~input_o\,
	datad => \ALT_INV_DATA2[28]~input_o\,
	datae => \ALT_INV_DATA2[26]~input_o\,
	dataf => \ALT_INV_DATA1[28]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst|inst4~0_combout\);

-- Location: LABCELL_X35_Y4_N39
\inst8|inst1|inst1|inst1|inst|inst4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst|inst4~1_combout\ = ( \DATA2[25]~input_o\ & ( (\DATA1[25]~input_o\ & (!\DATA1[24]~input_o\ $ (\DATA2[24]~input_o\))) ) ) # ( !\DATA2[25]~input_o\ & ( (!\DATA1[25]~input_o\ & (!\DATA1[24]~input_o\ $ (\DATA2[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[25]~input_o\,
	datac => \ALT_INV_DATA1[24]~input_o\,
	datad => \ALT_INV_DATA2[24]~input_o\,
	dataf => \ALT_INV_DATA2[25]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst|inst4~1_combout\);

-- Location: LABCELL_X34_Y4_N0
\inst8|inst1|inst1|inst1|inst|inst4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst|inst4~2_combout\ = ( \DATA2[22]~input_o\ & ( \inst8|inst1|inst1|inst1|inst|inst4~1_combout\ & ( (\DATA1[22]~input_o\ & (\inst8|inst1|inst1|inst1|inst|inst4~0_combout\ & (!\DATA1[23]~input_o\ $ (\DATA2[23]~input_o\)))) ) ) ) # 
-- ( !\DATA2[22]~input_o\ & ( \inst8|inst1|inst1|inst1|inst|inst4~1_combout\ & ( (!\DATA1[22]~input_o\ & (\inst8|inst1|inst1|inst1|inst|inst4~0_combout\ & (!\DATA1[23]~input_o\ $ (\DATA2[23]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_DATA2[23]~input_o\,
	datac => \ALT_INV_DATA1[22]~input_o\,
	datad => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~0_combout\,
	datae => \ALT_INV_DATA2[22]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~1_combout\,
	combout => \inst8|inst1|inst1|inst1|inst|inst4~2_combout\);

-- Location: LABCELL_X42_Y4_N33
\inst8|inst1|inst|inst1|inst1|inst4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst|inst1|inst1|inst4~1_combout\ = ( \DATA2[18]~input_o\ & ( (\DATA1[18]~input_o\ & (!\DATA1[17]~input_o\ $ (\DATA2[17]~input_o\))) ) ) # ( !\DATA2[18]~input_o\ & ( (!\DATA1[18]~input_o\ & (!\DATA1[17]~input_o\ $ (\DATA2[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[18]~input_o\,
	datac => \ALT_INV_DATA1[17]~input_o\,
	datad => \ALT_INV_DATA2[17]~input_o\,
	dataf => \ALT_INV_DATA2[18]~input_o\,
	combout => \inst8|inst1|inst|inst1|inst1|inst4~1_combout\);

-- Location: MLABCELL_X41_Y4_N6
\inst8|inst1|inst|inst1|inst1|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst|inst1|inst1|inst4~0_combout\ = ( \DATA2[20]~input_o\ & ( \DATA2[19]~input_o\ & ( (\DATA1[20]~input_o\ & (\DATA1[19]~input_o\ & (!\DATA2[21]~input_o\ $ (\DATA1[21]~input_o\)))) ) ) ) # ( !\DATA2[20]~input_o\ & ( \DATA2[19]~input_o\ & ( 
-- (!\DATA1[20]~input_o\ & (\DATA1[19]~input_o\ & (!\DATA2[21]~input_o\ $ (\DATA1[21]~input_o\)))) ) ) ) # ( \DATA2[20]~input_o\ & ( !\DATA2[19]~input_o\ & ( (\DATA1[20]~input_o\ & (!\DATA1[19]~input_o\ & (!\DATA2[21]~input_o\ $ (\DATA1[21]~input_o\)))) ) ) 
-- ) # ( !\DATA2[20]~input_o\ & ( !\DATA2[19]~input_o\ & ( (!\DATA1[20]~input_o\ & (!\DATA1[19]~input_o\ & (!\DATA2[21]~input_o\ $ (\DATA1[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[20]~input_o\,
	datab => \ALT_INV_DATA2[21]~input_o\,
	datac => \ALT_INV_DATA1[19]~input_o\,
	datad => \ALT_INV_DATA1[21]~input_o\,
	datae => \ALT_INV_DATA2[20]~input_o\,
	dataf => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst8|inst1|inst|inst1|inst1|inst4~0_combout\);

-- Location: LABCELL_X44_Y4_N0
\inst8|inst1|inst|inst1|inst1|inst4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst|inst1|inst1|inst4~2_combout\ = ( \inst8|inst1|inst|inst1|inst1|inst4~0_combout\ & ( \DATA1[16]~input_o\ & ( (\DATA2[16]~input_o\ & (\inst8|inst1|inst|inst1|inst1|inst4~1_combout\ & (!\DATA2[15]~input_o\ $ (\DATA1[15]~input_o\)))) ) ) ) # 
-- ( \inst8|inst1|inst|inst1|inst1|inst4~0_combout\ & ( !\DATA1[16]~input_o\ & ( (!\DATA2[16]~input_o\ & (\inst8|inst1|inst|inst1|inst1|inst4~1_combout\ & (!\DATA2[15]~input_o\ $ (\DATA1[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000010000000000000000000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[15]~input_o\,
	datab => \ALT_INV_DATA2[16]~input_o\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~1_combout\,
	datad => \ALT_INV_DATA1[15]~input_o\,
	datae => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~0_combout\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst8|inst1|inst|inst1|inst1|inst4~2_combout\);

-- Location: LABCELL_X38_Y4_N6
\inst8|inst1|inst1|inst1|inst3|inst6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~13_combout\ = ( \inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( \inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (((\DATA1[0]~input_o\ & !\DATA2[0]~input_o\)))) # 
-- (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (((\DATA1[0]~input_o\ & !\DATA2[0]~input_o\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~12_combout\))) ) ) ) # ( !\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( 
-- \inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & ( (\DATA1[0]~input_o\ & !\DATA2[0]~input_o\) ) ) ) # ( \inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( !\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & ( (\DATA1[0]~input_o\ & !\DATA2[0]~input_o\) ) ) ) 
-- # ( !\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( !\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & ( (\DATA1[0]~input_o\ & !\DATA2[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~12_combout\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_DATA2[0]~input_o\,
	datae => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	dataf => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~13_combout\);

-- Location: LABCELL_X38_Y4_N0
\inst8|inst1|inst|inst1|inst1|inst4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst|inst1|inst1|inst4~combout\ = ( \inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & ( \inst8|inst|inst1|inst1|inst2|inst4~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	dataf => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	combout => \inst8|inst1|inst|inst1|inst1|inst4~combout\);

-- Location: LABCELL_X44_Y3_N12
\inst8|inst|inst|inst1|inst3|inst4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst|inst|inst1|inst3|inst4~combout\ = ( \inst8|inst|inst|inst1|inst3|inst4~2_combout\ & ( (\inst8|inst|inst|inst1|inst3|inst4~0_combout\ & \inst8|inst|inst|inst1|inst3|inst4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~1_combout\,
	dataf => \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~2_combout\,
	combout => \inst8|inst|inst|inst1|inst3|inst4~combout\);

-- Location: LABCELL_X47_Y4_N6
\inst8|inst1|inst1|inst1|inst3|inst6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~6_combout\ = ( \DATA1[12]~input_o\ & ( \DATA2[12]~input_o\ & ( (!\DATA1[13]~input_o\ & (!\DATA2[13]~input_o\ & (\DATA1[14]~input_o\ & !\DATA2[14]~input_o\))) # (\DATA1[13]~input_o\ & ((!\DATA2[13]~input_o\) # 
-- ((\DATA1[14]~input_o\ & !\DATA2[14]~input_o\)))) ) ) ) # ( \DATA1[12]~input_o\ & ( !\DATA2[12]~input_o\ ) ) # ( !\DATA1[12]~input_o\ & ( !\DATA2[12]~input_o\ & ( (!\DATA1[13]~input_o\ & (!\DATA2[13]~input_o\ & (\DATA1[14]~input_o\ & 
-- !\DATA2[14]~input_o\))) # (\DATA1[13]~input_o\ & ((!\DATA2[13]~input_o\) # ((\DATA1[14]~input_o\ & !\DATA2[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101000100111111111111111100000000000000000100110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[13]~input_o\,
	datab => \ALT_INV_DATA2[13]~input_o\,
	datac => \ALT_INV_DATA1[14]~input_o\,
	datad => \ALT_INV_DATA2[14]~input_o\,
	datae => \ALT_INV_DATA1[12]~input_o\,
	dataf => \ALT_INV_DATA2[12]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~6_combout\);

-- Location: MLABCELL_X46_Y3_N42
\inst8|inst1|inst1|inst1|inst3|inst6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~7_combout\ = ( \DATA1[10]~input_o\ & ( (!\DATA2[10]~input_o\) # ((!\inst8|inst1|inst1|inst1|inst3|inst6~6_combout\ & (\DATA1[11]~input_o\ & !\DATA2[11]~input_o\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~6_combout\ & 
-- ((!\DATA2[11]~input_o\) # (\DATA1[11]~input_o\)))) ) ) # ( !\DATA1[10]~input_o\ & ( (!\DATA2[10]~input_o\ & ((!\inst8|inst1|inst1|inst1|inst3|inst6~6_combout\ & (\DATA1[11]~input_o\ & !\DATA2[11]~input_o\)) # 
-- (\inst8|inst1|inst1|inst1|inst3|inst6~6_combout\ & ((!\DATA2[11]~input_o\) # (\DATA1[11]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000010001010100000001010111111101010111011111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[10]~input_o\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~6_combout\,
	datac => \ALT_INV_DATA1[11]~input_o\,
	datad => \ALT_INV_DATA2[11]~input_o\,
	dataf => \ALT_INV_DATA1[10]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~7_combout\);

-- Location: MLABCELL_X46_Y3_N18
\inst8|inst1|inst1|inst1|inst3|inst6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~8_combout\ = ( \inst8|inst|inst|inst1|inst3|inst4~combout\ & ( \inst8|inst1|inst1|inst1|inst3|inst6~7_combout\ & ( (!\DATA2[8]~input_o\ & ((!\DATA2[9]~input_o\) # ((\DATA1[8]~input_o\) # (\DATA1[9]~input_o\)))) # 
-- (\DATA2[8]~input_o\ & (\DATA1[8]~input_o\ & ((!\DATA2[9]~input_o\) # (\DATA1[9]~input_o\)))) ) ) ) # ( \inst8|inst|inst|inst1|inst3|inst4~combout\ & ( !\inst8|inst1|inst1|inst1|inst3|inst6~7_combout\ & ( (!\DATA2[8]~input_o\ & (((!\DATA2[9]~input_o\ & 
-- \DATA1[9]~input_o\)) # (\DATA1[8]~input_o\))) # (\DATA2[8]~input_o\ & (!\DATA2[9]~input_o\ & (\DATA1[9]~input_o\ & \DATA1[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001100111000000000000000001000110011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[9]~input_o\,
	datab => \ALT_INV_DATA2[8]~input_o\,
	datac => \ALT_INV_DATA1[9]~input_o\,
	datad => \ALT_INV_DATA1[8]~input_o\,
	datae => \inst8|inst|inst|inst1|inst3|ALT_INV_inst4~combout\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~7_combout\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~8_combout\);

-- Location: LABCELL_X35_Y3_N36
\inst8|inst1|inst1|inst1|inst3|inst6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~0_combout\ = ( \DATA2[26]~input_o\ & ( \DATA1[28]~input_o\ & ( (\DATA1[26]~input_o\ & ((!\DATA1[27]~input_o\ & (!\DATA2[27]~input_o\ & !\DATA2[28]~input_o\)) # (\DATA1[27]~input_o\ & ((!\DATA2[27]~input_o\) # 
-- (!\DATA2[28]~input_o\))))) ) ) ) # ( !\DATA2[26]~input_o\ & ( \DATA1[28]~input_o\ & ( ((!\DATA1[27]~input_o\ & (!\DATA2[27]~input_o\ & !\DATA2[28]~input_o\)) # (\DATA1[27]~input_o\ & ((!\DATA2[27]~input_o\) # (!\DATA2[28]~input_o\)))) # 
-- (\DATA1[26]~input_o\) ) ) ) # ( \DATA2[26]~input_o\ & ( !\DATA1[28]~input_o\ & ( (\DATA1[27]~input_o\ & (\DATA1[26]~input_o\ & !\DATA2[27]~input_o\)) ) ) ) # ( !\DATA2[26]~input_o\ & ( !\DATA1[28]~input_o\ & ( ((\DATA1[27]~input_o\ & 
-- !\DATA2[27]~input_o\)) # (\DATA1[26]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011000100000001000011110111011100110011000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[27]~input_o\,
	datab => \ALT_INV_DATA1[26]~input_o\,
	datac => \ALT_INV_DATA2[27]~input_o\,
	datad => \ALT_INV_DATA2[28]~input_o\,
	datae => \ALT_INV_DATA2[26]~input_o\,
	dataf => \ALT_INV_DATA1[28]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~0_combout\);

-- Location: LABCELL_X35_Y4_N12
\inst8|inst1|inst1|inst1|inst3|inst6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~1_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~0_combout\ & ( (!\DATA2[24]~input_o\ & ((!\DATA2[25]~input_o\) # ((\DATA1[24]~input_o\) # (\DATA1[25]~input_o\)))) # (\DATA2[24]~input_o\ & (\DATA1[24]~input_o\ & 
-- ((!\DATA2[25]~input_o\) # (\DATA1[25]~input_o\)))) ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~0_combout\ & ( (!\DATA2[24]~input_o\ & (((!\DATA2[25]~input_o\ & \DATA1[25]~input_o\)) # (\DATA1[24]~input_o\))) # (\DATA2[24]~input_o\ & 
-- (!\DATA2[25]~input_o\ & (\DATA1[25]~input_o\ & \DATA1[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011001110000010001100111010001100111011111000110011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[25]~input_o\,
	datab => \ALT_INV_DATA2[24]~input_o\,
	datac => \ALT_INV_DATA1[25]~input_o\,
	datad => \ALT_INV_DATA1[24]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~0_combout\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~1_combout\);

-- Location: LABCELL_X34_Y4_N39
\inst8|inst1|inst1|inst1|inst3|inst6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~2_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~1_combout\ & ( (!\DATA1[22]~input_o\ & (!\DATA2[22]~input_o\ & ((!\DATA2[23]~input_o\) # (\DATA1[23]~input_o\)))) # (\DATA1[22]~input_o\ & (((!\DATA2[23]~input_o\) # 
-- (!\DATA2[22]~input_o\)) # (\DATA1[23]~input_o\))) ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~1_combout\ & ( (!\DATA1[22]~input_o\ & (\DATA1[23]~input_o\ & (!\DATA2[23]~input_o\ & !\DATA2[22]~input_o\))) # (\DATA1[22]~input_o\ & ((!\DATA2[22]~input_o\) 
-- # ((\DATA1[23]~input_o\ & !\DATA2[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000100010011110000010011011111000011011101111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[23]~input_o\,
	datab => \ALT_INV_DATA2[23]~input_o\,
	datac => \ALT_INV_DATA1[22]~input_o\,
	datad => \ALT_INV_DATA2[22]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~1_combout\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~2_combout\);

-- Location: MLABCELL_X41_Y4_N12
\inst8|inst1|inst1|inst1|inst3|inst6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~3_combout\ = ( \DATA2[20]~input_o\ & ( \DATA2[19]~input_o\ & ( (\DATA1[20]~input_o\ & (!\DATA2[21]~input_o\ & (\DATA1[19]~input_o\ & \DATA1[21]~input_o\))) ) ) ) # ( !\DATA2[20]~input_o\ & ( \DATA2[19]~input_o\ & ( 
-- (\DATA1[19]~input_o\ & (((!\DATA2[21]~input_o\ & \DATA1[21]~input_o\)) # (\DATA1[20]~input_o\))) ) ) ) # ( \DATA2[20]~input_o\ & ( !\DATA2[19]~input_o\ & ( ((\DATA1[20]~input_o\ & (!\DATA2[21]~input_o\ & \DATA1[21]~input_o\))) # (\DATA1[19]~input_o\) ) ) 
-- ) # ( !\DATA2[20]~input_o\ & ( !\DATA2[19]~input_o\ & ( (((!\DATA2[21]~input_o\ & \DATA1[21]~input_o\)) # (\DATA1[19]~input_o\)) # (\DATA1[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111011111000011110100111100000101000011010000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[20]~input_o\,
	datab => \ALT_INV_DATA2[21]~input_o\,
	datac => \ALT_INV_DATA1[19]~input_o\,
	datad => \ALT_INV_DATA1[21]~input_o\,
	datae => \ALT_INV_DATA2[20]~input_o\,
	dataf => \ALT_INV_DATA2[19]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~3_combout\);

-- Location: LABCELL_X42_Y4_N30
\inst8|inst1|inst1|inst1|inst3|inst6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~4_combout\ = ( \DATA2[18]~input_o\ & ( (!\DATA1[17]~input_o\ & (\DATA1[18]~input_o\ & (\inst8|inst1|inst1|inst1|inst3|inst6~3_combout\ & !\DATA2[17]~input_o\))) # (\DATA1[17]~input_o\ & ((!\DATA2[17]~input_o\) # 
-- ((\DATA1[18]~input_o\ & \inst8|inst1|inst1|inst1|inst3|inst6~3_combout\)))) ) ) # ( !\DATA2[18]~input_o\ & ( (!\DATA1[17]~input_o\ & (!\DATA2[17]~input_o\ & ((\inst8|inst1|inst1|inst1|inst3|inst6~3_combout\) # (\DATA1[18]~input_o\)))) # 
-- (\DATA1[17]~input_o\ & (((!\DATA2[17]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~3_combout\)) # (\DATA1[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010011011111110001001100110111000000010011011100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[18]~input_o\,
	datab => \ALT_INV_DATA1[17]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~3_combout\,
	datad => \ALT_INV_DATA2[17]~input_o\,
	dataf => \ALT_INV_DATA2[18]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~4_combout\);

-- Location: LABCELL_X44_Y4_N36
\inst8|inst1|inst1|inst1|inst3|inst6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~5_combout\ = ( \inst8|inst|inst1|inst1|inst2|inst4~combout\ & ( \DATA1[16]~input_o\ & ( (!\DATA2[15]~input_o\ & ((!\DATA2[16]~input_o\) # ((\DATA1[15]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~4_combout\)))) # 
-- (\DATA2[15]~input_o\ & (\DATA1[15]~input_o\ & ((!\DATA2[16]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~4_combout\)))) ) ) ) # ( \inst8|inst|inst1|inst1|inst2|inst4~combout\ & ( !\DATA1[16]~input_o\ & ( (!\DATA2[15]~input_o\ & 
-- (((!\DATA2[16]~input_o\ & \inst8|inst1|inst1|inst1|inst3|inst6~4_combout\)) # (\DATA1[15]~input_o\))) # (\DATA2[15]~input_o\ & (!\DATA2[16]~input_o\ & (\inst8|inst1|inst1|inst1|inst3|inst6~4_combout\ & \DATA1[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001010111000000000000000001000101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[15]~input_o\,
	datab => \ALT_INV_DATA2[16]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~4_combout\,
	datad => \ALT_INV_DATA1[15]~input_o\,
	datae => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~5_combout\);

-- Location: LABCELL_X38_Y4_N42
\inst8|inst1|inst1|inst1|inst3|inst6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~2_combout\ & ( \inst8|inst1|inst1|inst1|inst3|inst6~5_combout\ ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~2_combout\ & ( 
-- \inst8|inst1|inst1|inst1|inst3|inst6~5_combout\ ) ) # ( \inst8|inst1|inst1|inst1|inst3|inst6~2_combout\ & ( !\inst8|inst1|inst1|inst1|inst3|inst6~5_combout\ & ( (((\inst8|inst1|inst1|inst1|inst3|inst6~8_combout\) # 
-- (\inst8|inst1|inst|inst1|inst1|inst4~combout\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~13_combout\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~11_combout\) ) ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~2_combout\ & ( 
-- !\inst8|inst1|inst1|inst1|inst3|inst6~5_combout\ & ( ((\inst8|inst1|inst1|inst1|inst3|inst6~8_combout\) # (\inst8|inst1|inst1|inst1|inst3|inst6~13_combout\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~11_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~13_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~combout\,
	datad => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~8_combout\,
	datae => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~2_combout\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~5_combout\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\);

-- Location: IOIBUF_X39_Y0_N1
\OP[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N35
\OP[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: LABCELL_X34_Y3_N6
\inst24|inst7|O1[31]~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[31]~179_combout\ = ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (((\OP[1]~input_o\ & ((!\DATA2[31]~input_o\) # (!\DATA1[31]~input_o\)))))) # (\OP[2]~input_o\ & ((((!\OP[1]~input_o\)) # (\inst24|inst7|O1[31]~35_combout\)))) ) ) # ( 
-- \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & ((((\OP[1]~input_o\ & \DATA1[31]~input_o\))))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & (\DATA2[31]~input_o\)) # 
-- (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ((\DATA1[31]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010110101111010101010001000001010101100011010101010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_DATA2[31]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_DATA1[31]~input_o\,
	datag => \inst24|inst7|ALT_INV_O1[31]~35_combout\,
	combout => \inst24|inst7|O1[31]~179_combout\);

-- Location: LABCELL_X42_Y4_N15
\inst|inst1|inst1|Bit2|inst1|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit2|inst1|And1~combout\ = ( \inst4|inst|inst1|inst1|Bit2|inst|X1~combout\ & ( \inst5|inst|inst1|inst1|Bit2|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst1|Bit2|inst1|And1~combout\);

-- Location: LABCELL_X43_Y3_N3
\inst|inst3|inst|Bit2|inst1|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|Bit2|inst1|And1~combout\ = ( \inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & ( \inst4|inst|inst3|inst|Bit2|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst3|inst|Bit2|inst1|And1~combout\);

-- Location: LABCELL_X39_Y3_N48
\inst|inst3|inst1|Bit1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Bit1|inst2~combout\ = ( \DATA1[1]~input_o\ & ( (!\DATA2[1]~input_o\ & (((\DATA2[0]~input_o\)))) # (\DATA2[1]~input_o\ & ((!\DATA1[0]~input_o\ & ((!\DATA2[0]~input_o\) # (\Cin~input_o\))) # (\DATA1[0]~input_o\ & (\Cin~input_o\ & 
-- !\DATA2[0]~input_o\)))) ) ) # ( !\DATA1[1]~input_o\ & ( (!\DATA1[0]~input_o\ & (\Cin~input_o\ & (!\DATA2[1]~input_o\ & \DATA2[0]~input_o\))) # (\DATA1[0]~input_o\ & (((\DATA2[0]~input_o\) # (\DATA2[1]~input_o\)) # (\Cin~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101110101000101010111010100001011111100100000101111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[0]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_DATA2[1]~input_o\,
	datad => \ALT_INV_DATA2[0]~input_o\,
	dataf => \ALT_INV_DATA1[1]~input_o\,
	combout => \inst|inst3|inst1|Bit1|inst2~combout\);

-- Location: MLABCELL_X41_Y3_N24
\inst|inst3|inst1|Bit3|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Bit3|inst2~combout\ = ( \inst5|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( (!\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & (\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ & ((\inst|inst3|inst1|Bit1|inst2~combout\) # 
-- (\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\)))) # (\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & (((\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\) # (\inst|inst3|inst1|Bit1|inst2~combout\)) # (\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\))) ) ) # ( 
-- !\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( (!\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & (\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & (\inst|inst3|inst1|Bit1|inst2~combout\ & \inst4|inst|inst3|inst1|Bit3|inst|X1~combout\))) # 
-- (\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & (((\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & \inst|inst3|inst1|Bit1|inst2~combout\)) # (\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst1|Bit1|ALT_INV_inst2~combout\,
	datac => \inst5|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst3|inst1|Bit3|inst2~combout\);

-- Location: LABCELL_X42_Y3_N6
\inst|inst3|inst|Bit1|inst1|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|Bit1|inst1|And1~combout\ = ( \inst5|inst|inst3|inst|Bit0|inst|And1~combout\ & ( (\DATA2[5]~input_o\ & (!\inst4|inst|inst3|inst|Bit0|inst|And1~combout\ $ (\DATA1[5]~input_o\))) ) ) # ( !\inst5|inst|inst3|inst|Bit0|inst|And1~combout\ & ( 
-- (!\DATA2[5]~input_o\ & (!\inst4|inst|inst3|inst|Bit0|inst|And1~combout\ $ (\DATA1[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[5]~input_o\,
	datab => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA1[5]~input_o\,
	dataf => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst|inst3|inst|Bit1|inst1|And1~combout\);

-- Location: LABCELL_X42_Y3_N36
\inst|inst3|inst|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|Bit2|inst|And1~combout\ = ( \inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ( \inst|inst3|inst|Bit1|inst1|X1~combout\ & ( (\inst|inst3|inst|Bit2|inst1|X1~combout\ & (((\inst|inst3|inst|Bit1|inst1|And1~combout\) # 
-- (\inst5|inst|inst3|inst|Bit0|inst|X1~combout\)) # (\inst|inst3|inst1|Bit3|inst2~combout\))) ) ) ) # ( !\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ( \inst|inst3|inst|Bit1|inst1|X1~combout\ & ( (\inst|inst3|inst|Bit2|inst1|X1~combout\ & 
-- (((\inst|inst3|inst1|Bit3|inst2~combout\ & \inst5|inst|inst3|inst|Bit0|inst|X1~combout\)) # (\inst|inst3|inst|Bit1|inst1|And1~combout\))) ) ) ) # ( \inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ( !\inst|inst3|inst|Bit1|inst1|X1~combout\ & ( 
-- (\inst|inst3|inst|Bit2|inst1|X1~combout\ & \inst|inst3|inst|Bit1|inst1|And1~combout\) ) ) ) # ( !\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ( !\inst|inst3|inst|Bit1|inst1|X1~combout\ & ( (\inst|inst3|inst|Bit2|inst1|X1~combout\ & 
-- \inst|inst3|inst|Bit1|inst1|And1~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000001010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|Bit2|inst1|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst1|Bit3|ALT_INV_inst2~combout\,
	datac => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst3|inst|Bit1|inst1|ALT_INV_And1~combout\,
	datae => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\,
	combout => \inst|inst3|inst|Bit2|inst|And1~combout\);

-- Location: LABCELL_X43_Y3_N36
\inst|inst2|inst1|Bit0|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|Bit0|inst2~combout\ = ( \inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & ( \inst|inst3|inst|Bit2|inst|And1~combout\ & ( (\inst4|inst|inst2|inst1|Bit0|inst|X1~combout\) # (\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\) ) ) ) # ( 
-- !\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & ( \inst|inst3|inst|Bit2|inst|And1~combout\ & ( (!\inst4|inst|inst3|inst|Bit3|inst|X1~combout\ & (\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\ & \inst4|inst|inst2|inst1|Bit0|inst|X1~combout\)) # 
-- (\inst4|inst|inst3|inst|Bit3|inst|X1~combout\ & ((\inst4|inst|inst2|inst1|Bit0|inst|X1~combout\) # (\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\))) ) ) ) # ( \inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & ( !\inst|inst3|inst|Bit2|inst|And1~combout\ & ( 
-- (!\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\ & (\inst4|inst|inst2|inst1|Bit0|inst|X1~combout\ & ((\inst|inst3|inst|Bit2|inst1|And1~combout\) # (\inst4|inst|inst3|inst|Bit3|inst|X1~combout\)))) # (\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\ & 
-- (((\inst4|inst|inst2|inst1|Bit0|inst|X1~combout\) # (\inst|inst3|inst|Bit2|inst1|And1~combout\)) # (\inst4|inst|inst3|inst|Bit3|inst|X1~combout\))) ) ) ) # ( !\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & ( !\inst|inst3|inst|Bit2|inst|And1~combout\ & ( 
-- (!\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\ & (\inst4|inst|inst3|inst|Bit3|inst|X1~combout\ & (\inst|inst3|inst|Bit2|inst1|And1~combout\ & \inst4|inst|inst2|inst1|Bit0|inst|X1~combout\))) # (\inst5|inst|inst2|inst1|Bit0|inst|X1~combout\ & 
-- (((\inst4|inst|inst3|inst|Bit3|inst|X1~combout\ & \inst|inst3|inst|Bit2|inst1|And1~combout\)) # (\inst4|inst|inst2|inst1|Bit0|inst|X1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000100110111111100010001011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst5|inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst|inst3|inst|Bit2|inst1|ALT_INV_And1~combout\,
	datad => \inst4|inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datae => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst3|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst|inst2|inst1|Bit0|inst2~combout\);

-- Location: LABCELL_X47_Y3_N36
\inst|inst2|inst1|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|Bit3|inst|And1~combout\ = ( \inst|inst2|inst1|Bit0|inst2~combout\ & ( \inst|inst2|inst1|Bit3|inst1|X1~combout\ & ( (!\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & (\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & 
-- ((\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\) # (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\)))) # (\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & (((\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\) # (\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\)) # 
-- (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\))) ) ) ) # ( !\inst|inst2|inst1|Bit0|inst2~combout\ & ( \inst|inst2|inst1|Bit3|inst1|X1~combout\ & ( (!\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & 
-- (\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & \inst4|inst|inst2|inst1|Bit1|inst|X1~combout\))) # (\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & (((\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & \inst4|inst|inst2|inst1|Bit1|inst|X1~combout\)) # 
-- (\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000101110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datae => \inst|inst2|inst1|Bit0|ALT_INV_inst2~combout\,
	dataf => \inst|inst2|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	combout => \inst|inst2|inst1|Bit3|inst|And1~combout\);

-- Location: MLABCELL_X46_Y4_N33
\inst|inst2|inst1|Bit3|inst1|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|Bit3|inst1|And1~combout\ = ( \inst4|inst|inst2|inst1|Bit3|inst|X1~combout\ & ( \inst5|inst|inst2|inst1|Bit3|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst|inst2|inst1|Bit3|inst1|And1~combout\);

-- Location: MLABCELL_X46_Y4_N42
\inst|inst2|inst|Bit1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst|Bit1|inst2~combout\ = ( \inst4|inst|inst2|inst|Bit1|inst|X1~combout\ & ( \inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ( (((\inst4|inst|inst2|inst|Bit0|inst|X1~combout\) # (\inst|inst2|inst1|Bit3|inst1|And1~combout\)) # 
-- (\inst|inst2|inst1|Bit3|inst|And1~combout\)) # (\inst5|inst|inst2|inst|Bit1|inst|X1~combout\) ) ) ) # ( !\inst4|inst|inst2|inst|Bit1|inst|X1~combout\ & ( \inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ( (\inst5|inst|inst2|inst|Bit1|inst|X1~combout\ & 
-- (((\inst4|inst|inst2|inst|Bit0|inst|X1~combout\) # (\inst|inst2|inst1|Bit3|inst1|And1~combout\)) # (\inst|inst2|inst1|Bit3|inst|And1~combout\))) ) ) ) # ( \inst4|inst|inst2|inst|Bit1|inst|X1~combout\ & ( !\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ( 
-- ((\inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ((\inst|inst2|inst1|Bit3|inst1|And1~combout\) # (\inst|inst2|inst1|Bit3|inst|And1~combout\)))) # (\inst5|inst|inst2|inst|Bit1|inst|X1~combout\) ) ) ) # ( !\inst4|inst|inst2|inst|Bit1|inst|X1~combout\ & ( 
-- !\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ( (\inst5|inst|inst2|inst|Bit1|inst|X1~combout\ & (\inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ((\inst|inst2|inst1|Bit3|inst1|And1~combout\) # (\inst|inst2|inst1|Bit3|inst|And1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101010101010111111100010101010101010111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datac => \inst|inst2|inst1|Bit3|inst1|ALT_INV_And1~combout\,
	datad => \inst4|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst|inst2|inst|Bit1|inst2~combout\);

-- Location: LABCELL_X45_Y4_N51
\inst|inst2|inst|Bit3|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst|Bit3|inst2~combout\ = ( \inst|inst2|inst|Bit1|inst2~combout\ & ( (!\inst5|inst|inst2|inst|Bit3|inst|X1~combout\ & (\inst4|inst|inst2|inst|Bit3|inst|X1~combout\ & ((\inst4|inst|inst2|inst|Bit2|inst|X1~combout\) # 
-- (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\)))) # (\inst5|inst|inst2|inst|Bit3|inst|X1~combout\ & (((\inst4|inst|inst2|inst|Bit3|inst|X1~combout\) # (\inst4|inst|inst2|inst|Bit2|inst|X1~combout\)) # (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\))) ) ) # 
-- ( !\inst|inst2|inst|Bit1|inst2~combout\ & ( (!\inst5|inst|inst2|inst|Bit3|inst|X1~combout\ & (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & (\inst4|inst|inst2|inst|Bit2|inst|X1~combout\ & \inst4|inst|inst2|inst|Bit3|inst|X1~combout\))) # 
-- (\inst5|inst|inst2|inst|Bit3|inst|X1~combout\ & (((\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & \inst4|inst|inst2|inst|Bit2|inst|X1~combout\)) # (\inst4|inst|inst2|inst|Bit3|inst|X1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst2|inst|Bit1|ALT_INV_inst2~combout\,
	combout => \inst|inst2|inst|Bit3|inst2~combout\);

-- Location: LABCELL_X43_Y4_N36
\inst|inst1|inst1|Bit2|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit2|inst1|X1~combout\ = ( \inst4|inst|inst1|inst1|Bit2|inst|X1~combout\ & ( !\inst5|inst|inst1|inst1|Bit2|inst|X1~combout\ ) ) # ( !\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\ & ( \inst5|inst|inst1|inst1|Bit2|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst1|Bit2|inst1|X1~combout\);

-- Location: LABCELL_X43_Y4_N24
\inst|inst1|inst1|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit2|inst|And1~combout\ = ( \inst|inst1|inst1|Bit2|inst1|X1~combout\ & ( \inst5|inst|inst1|inst1|Bit1|inst|X1~combout\ & ( ((!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & 
-- \inst|inst2|inst|Bit3|inst2~combout\)) # (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & ((\inst|inst2|inst|Bit3|inst2~combout\) # (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\)))) # (\inst4|inst|inst1|inst1|Bit1|inst|X1~combout\) ) ) ) # ( 
-- \inst|inst1|inst1|Bit2|inst1|X1~combout\ & ( !\inst5|inst|inst1|inst1|Bit1|inst|X1~combout\ & ( (\inst4|inst|inst1|inst1|Bit1|inst|X1~combout\ & ((!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & 
-- \inst|inst2|inst|Bit3|inst2~combout\)) # (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & ((\inst|inst2|inst|Bit3|inst2~combout\) # (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001010100000000000000000101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst2|inst|Bit3|ALT_INV_inst2~combout\,
	datae => \inst|inst1|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst1|Bit2|inst|And1~combout\);

-- Location: LABCELL_X42_Y4_N6
\inst|inst1|inst|Bit0|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit0|inst2~combout\ = ( \inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & ( \inst|inst1|inst1|Bit2|inst|And1~combout\ & ( (!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\ & !\inst5|inst|inst1|inst|Bit0|inst|X1~combout\) ) ) ) # ( 
-- !\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & ( \inst|inst1|inst1|Bit2|inst|And1~combout\ & ( (!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ & ((!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\) # (!\inst5|inst|inst1|inst|Bit0|inst|X1~combout\))) # 
-- (\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ & (!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\ & !\inst5|inst|inst1|inst|Bit0|inst|X1~combout\)) ) ) ) # ( \inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & ( !\inst|inst1|inst1|Bit2|inst|And1~combout\ & ( 
-- (!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\ & ((!\inst5|inst|inst1|inst|Bit0|inst|X1~combout\) # ((!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ & !\inst|inst1|inst1|Bit2|inst1|And1~combout\)))) # (\inst4|inst|inst1|inst|Bit0|inst|X1~combout\ & 
-- (!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ & (!\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & !\inst|inst1|inst1|Bit2|inst1|And1~combout\))) ) ) ) # ( !\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & ( !\inst|inst1|inst1|Bit2|inst|And1~combout\ & ( 
-- (!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\ & ((!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\) # ((!\inst5|inst|inst1|inst|Bit0|inst|X1~combout\) # (!\inst|inst1|inst1|Bit2|inst1|And1~combout\)))) # (\inst4|inst|inst1|inst|Bit0|inst|X1~combout\ & 
-- (!\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & ((!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\) # (!\inst|inst1|inst1|Bit2|inst1|And1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011101000111010001100000011101000111010001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst1|inst1|Bit2|inst1|ALT_INV_And1~combout\,
	datae => \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst|inst1|inst|Bit0|inst2~combout\);

-- Location: MLABCELL_X36_Y4_N39
\inst|inst1|inst|Bit3|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit3|inst1|X1~combout\ = !\inst5|inst|inst1|inst|Bit3|inst|X1~combout\ $ (!\inst4|inst|inst1|inst|Bit3|inst|X1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst|Bit3|inst1|X1~combout\);

-- Location: LABCELL_X37_Y4_N18
\inst|inst1|inst|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit3|inst|And1~combout\ = ( \inst|inst1|inst|Bit0|inst2~combout\ & ( \inst|inst1|inst|Bit3|inst1|X1~combout\ & ( (!\inst4|inst|inst1|inst|Bit2|inst|X1~combout\ & (\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & 
-- (\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & \inst5|inst|inst1|inst|Bit2|inst|X1~combout\))) # (\inst4|inst|inst1|inst|Bit2|inst|X1~combout\ & (((\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & \inst5|inst|inst1|inst|Bit1|inst|X1~combout\)) # 
-- (\inst5|inst|inst1|inst|Bit2|inst|X1~combout\))) ) ) ) # ( !\inst|inst1|inst|Bit0|inst2~combout\ & ( \inst|inst1|inst|Bit3|inst1|X1~combout\ & ( (!\inst4|inst|inst1|inst|Bit2|inst|X1~combout\ & (\inst5|inst|inst1|inst|Bit2|inst|X1~combout\ & 
-- ((\inst5|inst|inst1|inst|Bit1|inst|X1~combout\) # (\inst4|inst|inst1|inst|Bit1|inst|X1~combout\)))) # (\inst4|inst|inst1|inst|Bit2|inst|X1~combout\ & (((\inst5|inst|inst1|inst|Bit2|inst|X1~combout\) # (\inst5|inst|inst1|inst|Bit1|inst|X1~combout\)) # 
-- (\inst4|inst|inst1|inst|Bit1|inst|X1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010011011111110000000100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	datae => \inst|inst1|inst|Bit0|ALT_INV_inst2~combout\,
	dataf => \inst|inst1|inst|Bit3|inst1|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst|Bit3|inst|And1~combout\);

-- Location: LABCELL_X35_Y4_N27
\inst|inst1|inst|Bit3|inst1|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit3|inst1|And1~combout\ = ( \inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ( \inst5|inst|inst1|inst|Bit3|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst|Bit3|inst1|And1~combout\);

-- Location: MLABCELL_X36_Y4_N12
\inst|inst|inst1|Bit1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|Bit1|inst2~combout\ = ( \inst|inst1|inst|Bit3|inst1|And1~combout\ & ( \inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( (!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ & (!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & 
-- !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\)) ) ) ) # ( !\inst|inst1|inst|Bit3|inst1|And1~combout\ & ( \inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( (!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & ((!\inst|inst1|inst|Bit3|inst|And1~combout\ & 
-- ((!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\) # (!\inst4|inst|inst|inst1|Bit0|inst|X1~combout\))) # (\inst|inst1|inst|Bit3|inst|And1~combout\ & (!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ & !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\)))) ) ) ) # ( 
-- \inst|inst1|inst|Bit3|inst1|And1~combout\ & ( !\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( (!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\) # ((!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ & !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\)) ) ) ) # ( 
-- !\inst|inst1|inst|Bit3|inst1|And1~combout\ & ( !\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( (!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\) # ((!\inst|inst1|inst|Bit3|inst|And1~combout\ & ((!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\) # 
-- (!\inst4|inst|inst|inst1|Bit0|inst|X1~combout\))) # (\inst|inst1|inst|Bit3|inst|And1~combout\ & (!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ & !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111000111111001111000011100000100000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\,
	datab => \inst5|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datae => \inst|inst1|inst|Bit3|inst1|ALT_INV_And1~combout\,
	dataf => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst|inst|inst1|Bit1|inst2~combout\);

-- Location: MLABCELL_X36_Y3_N9
\inst|inst|inst1|Bit3|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|Bit3|inst2~combout\ = ( \inst|inst|inst1|Bit1|inst2~combout\ & ( (!\inst5|inst|inst|inst1|Bit3|inst|X1~combout\ & (\inst5|inst|inst|inst1|Bit2|inst|X1~combout\ & (\inst4|inst|inst|inst1|Bit2|inst|X1~combout\ & 
-- \inst4|inst|inst|inst1|Bit3|inst|X1~combout\))) # (\inst5|inst|inst|inst1|Bit3|inst|X1~combout\ & (((\inst5|inst|inst|inst1|Bit2|inst|X1~combout\ & \inst4|inst|inst|inst1|Bit2|inst|X1~combout\)) # (\inst4|inst|inst|inst1|Bit3|inst|X1~combout\))) ) ) # ( 
-- !\inst|inst|inst1|Bit1|inst2~combout\ & ( (!\inst5|inst|inst|inst1|Bit3|inst|X1~combout\ & (\inst4|inst|inst|inst1|Bit3|inst|X1~combout\ & ((\inst4|inst|inst|inst1|Bit2|inst|X1~combout\) # (\inst5|inst|inst|inst1|Bit2|inst|X1~combout\)))) # 
-- (\inst5|inst|inst|inst1|Bit3|inst|X1~combout\ & (((\inst4|inst|inst|inst1|Bit3|inst|X1~combout\) # (\inst4|inst|inst|inst1|Bit2|inst|X1~combout\)) # (\inst5|inst|inst|inst1|Bit2|inst|X1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000001110111111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst|inst1|Bit1|ALT_INV_inst2~combout\,
	combout => \inst|inst|inst1|Bit3|inst2~combout\);

-- Location: MLABCELL_X36_Y3_N57
\inst|inst|inst|Bit1|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst|Bit1|inst1|X1~combout\ = ( \inst5|inst|inst|inst|Bit1|inst|X1~combout\ & ( !\inst4|inst|inst|inst|Bit1|inst|X1~combout\ ) ) # ( !\inst5|inst|inst|inst|Bit1|inst|X1~combout\ & ( \inst4|inst|inst|inst|Bit1|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst|inst|inst|Bit1|inst1|X1~combout\);

-- Location: MLABCELL_X36_Y3_N30
\inst|inst|inst1|Bit2|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|Bit2|inst1|X1~combout\ = !\inst5|inst|inst|inst1|Bit2|inst|X1~combout\ $ (!\inst4|inst|inst|inst1|Bit2|inst|X1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst|inst1|Bit2|inst1|X1~combout\);

-- Location: LABCELL_X37_Y4_N0
\inst|inst1|inst|Bit0|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit0|inst1|X1~combout\ = ( \inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & ( !\inst4|inst|inst1|inst|Bit0|inst|X1~combout\ ) ) # ( !\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & ( \inst4|inst|inst1|inst|Bit0|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst|Bit0|inst1|X1~combout\);

-- Location: LABCELL_X43_Y4_N9
\inst|inst1|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit0|inst|X1~combout\ = ( \inst|inst1|inst1|Bit2|inst|And1~combout\ & ( !\inst|inst1|inst|Bit0|inst1|X1~combout\ $ (((!\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & !\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\))) ) ) # ( 
-- !\inst|inst1|inst1|Bit2|inst|And1~combout\ & ( !\inst|inst1|inst|Bit0|inst1|X1~combout\ $ (((!\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & ((!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\) # (!\inst|inst1|inst1|Bit2|inst1|And1~combout\))) # 
-- (\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ & (!\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ & !\inst|inst1|inst1|Bit2|inst1|And1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100001110111100010000111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datac => \inst|inst1|inst1|Bit2|inst1|ALT_INV_And1~combout\,
	datad => \inst|inst1|inst|Bit0|inst1|ALT_INV_X1~combout\,
	dataf => \inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst|inst1|inst|Bit0|inst|X1~combout\);

-- Location: LABCELL_X43_Y4_N45
\inst|inst1|inst1|Bit1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit1|inst2~combout\ = ( \inst4|inst|inst1|inst1|Bit1|inst|X1~combout\ & ( ((!\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & \inst|inst2|inst|Bit3|inst2~combout\)) # 
-- (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & ((\inst|inst2|inst|Bit3|inst2~combout\) # (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\)))) # (\inst5|inst|inst1|inst1|Bit1|inst|X1~combout\) ) ) # ( !\inst4|inst|inst1|inst1|Bit1|inst|X1~combout\ & ( 
-- (\inst5|inst|inst1|inst1|Bit1|inst|X1~combout\ & ((!\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & \inst|inst2|inst|Bit3|inst2~combout\)) # (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & 
-- ((\inst|inst2|inst|Bit3|inst2~combout\) # (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst|inst2|inst|Bit3|ALT_INV_inst2~combout\,
	datad => \inst5|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst1|Bit1|inst2~combout\);

-- Location: LABCELL_X43_Y4_N54
\inst|inst1|inst1|Bit3|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit3|inst1|X1~combout\ = ( \inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ & ( !\inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ ) ) # ( !\inst4|inst|inst1|inst1|Bit3|inst|X1~combout\ & ( \inst5|inst|inst1|inst1|Bit3|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst1|Bit3|inst1|X1~combout\);

-- Location: LABCELL_X42_Y4_N12
\inst|inst1|inst1|Bit1|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit1|inst1|X1~combout\ = ( \inst4|inst|inst1|inst1|Bit1|inst|X1~combout\ & ( !\inst5|inst|inst1|inst1|Bit1|inst|X1~combout\ ) ) # ( !\inst4|inst|inst1|inst1|Bit1|inst|X1~combout\ & ( \inst5|inst|inst1|inst1|Bit1|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst1|Bit1|inst1|X1~combout\);

-- Location: LABCELL_X45_Y4_N57
\inst|inst2|inst|Bit3|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst|Bit3|inst1|X1~combout\ = !\inst4|inst|inst2|inst|Bit3|inst|X1~combout\ $ (!\inst5|inst|inst2|inst|Bit3|inst|X1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst5|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst|inst2|inst|Bit3|inst1|X1~combout\);

-- Location: MLABCELL_X46_Y4_N18
\inst|inst2|inst|Bit1|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst|Bit1|inst1|X1~combout\ = ( \inst5|inst|inst2|inst|Bit1|inst|X1~combout\ & ( !\inst4|inst|inst2|inst|Bit1|inst|X1~combout\ ) ) # ( !\inst5|inst|inst2|inst|Bit1|inst|X1~combout\ & ( \inst4|inst|inst2|inst|Bit1|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst|inst2|inst|Bit1|inst1|X1~combout\);

-- Location: LABCELL_X45_Y4_N15
\inst|inst2|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst|Bit1|inst|X1~combout\ = ( \inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ( !\inst|inst2|inst|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & (!\inst|inst2|inst1|Bit3|inst1|And1~combout\ & 
-- !\inst|inst2|inst1|Bit3|inst|And1~combout\)))) ) ) # ( !\inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ( !\inst|inst2|inst|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst2|inst|Bit0|inst|X1~combout\) # ((!\inst|inst2|inst1|Bit3|inst1|And1~combout\ & 
-- !\inst|inst2|inst1|Bit3|inst|And1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001100110001101100110011001101100110011000110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst2|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datac => \inst|inst2|inst1|Bit3|inst1|ALT_INV_And1~combout\,
	datad => \inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \inst4|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst|inst2|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X43_Y3_N30
\inst|inst3|inst|Bit3|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|Bit3|inst1|X1~combout\ = !\inst4|inst|inst3|inst|Bit3|inst|X1~combout\ $ (!\inst5|inst|inst3|inst|Bit3|inst|X1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst|inst3|inst|Bit3|inst1|X1~combout\);

-- Location: LABCELL_X42_Y3_N18
\inst|inst3|inst|Bit1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|Bit1|inst2~combout\ = ( !\inst|inst3|inst|Bit1|inst1|And1~combout\ & ( (!\inst|inst3|inst|Bit1|inst1|X1~combout\) # ((!\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ((!\inst5|inst|inst3|inst|Bit0|inst|X1~combout\) # 
-- (!\inst|inst3|inst1|Bit3|inst2~combout\))) # (\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & (!\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & !\inst|inst3|inst1|Bit3|inst2~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100111111101110110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst3|inst1|Bit3|ALT_INV_inst2~combout\,
	dataf => \inst|inst3|inst|Bit1|inst1|ALT_INV_And1~combout\,
	combout => \inst|inst3|inst|Bit1|inst2~combout\);

-- Location: LABCELL_X39_Y3_N51
\inst6|inst|inst3|inst1|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst3|inst1|Bit1|inst|And1~combout\ = ( \DATA2[1]~input_o\ & ( (!\DATA1[0]~input_o\ & (\DATA1[1]~input_o\ & (!\Cin~input_o\ $ (\DATA2[0]~input_o\)))) # (\DATA1[0]~input_o\ & ((!\Cin~input_o\ & (!\DATA1[1]~input_o\ & \DATA2[0]~input_o\)) # 
-- (\Cin~input_o\ & (\DATA1[1]~input_o\ & !\DATA2[0]~input_o\)))) ) ) # ( !\DATA2[1]~input_o\ & ( (!\DATA1[0]~input_o\ & (!\DATA1[1]~input_o\ & (!\Cin~input_o\ $ (\DATA2[0]~input_o\)))) # (\DATA1[0]~input_o\ & ((!\Cin~input_o\ & (\DATA1[1]~input_o\ & 
-- \DATA2[0]~input_o\)) # (\Cin~input_o\ & (!\DATA1[1]~input_o\ & !\DATA2[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000100100100100000010010000001001010000100000100101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[0]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_DATA1[1]~input_o\,
	datad => \ALT_INV_DATA2[0]~input_o\,
	dataf => \ALT_INV_DATA2[1]~input_o\,
	combout => \inst6|inst|inst3|inst1|Bit1|inst|And1~combout\);

-- Location: MLABCELL_X41_Y3_N48
\inst6|inst|inst3|inst1|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst3|inst1|Bit3|inst|And1~combout\ = ( \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( \inst|inst3|inst1|Bit1|inst2~combout\ & ( (!\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\) # ((!\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ $ 
-- (\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\)) # (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)) ) ) ) # ( !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( \inst|inst3|inst1|Bit1|inst2~combout\ & ( (!\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\) # 
-- ((!\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\) # (!\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\))) ) ) ) # ( \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( !\inst|inst3|inst1|Bit1|inst2~combout\ & ( 
-- (!\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\) # ((!\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\) # (!\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\))) ) ) ) # ( 
-- !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( !\inst|inst3|inst1|Bit1|inst2~combout\ & ( (!\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\) # ((!\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\)) # 
-- (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111101111111111101111110111111110111111011110111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst6|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst5|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst3|inst1|Bit1|ALT_INV_inst2~combout\,
	combout => \inst6|inst|inst3|inst1|Bit3|inst|And1~combout\);

-- Location: LABCELL_X42_Y3_N15
\inst6|inst|inst3|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst3|inst|Bit1|inst|And1~combout\ = ( \inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ( (\inst|inst3|inst|Bit1|inst1|X1~combout\ & (!\inst6|inst|inst3|inst1|Bit3|inst|And1~combout\ & (!\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ $ 
-- (!\inst|inst3|inst1|Bit3|inst2~combout\)))) ) ) # ( !\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ( (!\inst6|inst|inst3|inst1|Bit3|inst|And1~combout\ & ((!\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & (!\inst|inst3|inst|Bit1|inst1|X1~combout\ & 
-- !\inst|inst3|inst1|Bit3|inst2~combout\)) # (\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & (\inst|inst3|inst|Bit1|inst1|X1~combout\ & \inst|inst3|inst1|Bit3|inst2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100000000100000010000000000010010000000000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datac => \inst|inst3|inst1|Bit3|ALT_INV_inst2~combout\,
	datad => \inst6|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst3|inst|Bit1|inst|And1~combout\);

-- Location: LABCELL_X43_Y3_N27
\inst6|inst|inst3|inst|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst3|inst|Bit3|inst|And1~combout\ = ( \inst6|inst|inst3|inst|Bit1|inst|And1~combout\ & ( (!\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & ((!\inst|inst3|inst|Bit3|inst1|X1~combout\ & (\inst|inst3|inst|Bit1|inst2~combout\ & 
-- !\inst4|inst|inst3|inst|Bit2|inst|X1~combout\)) # (\inst|inst3|inst|Bit3|inst1|X1~combout\ & (!\inst|inst3|inst|Bit1|inst2~combout\ & \inst4|inst|inst3|inst|Bit2|inst|X1~combout\)))) # (\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & 
-- (\inst|inst3|inst|Bit3|inst1|X1~combout\ & (!\inst|inst3|inst|Bit1|inst2~combout\ $ (\inst4|inst|inst3|inst|Bit2|inst|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000001000010001100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datac => \inst|inst3|inst|Bit1|ALT_INV_inst2~combout\,
	datad => \inst4|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst6|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst6|inst|inst3|inst|Bit3|inst|And1~combout\);

-- Location: MLABCELL_X46_Y3_N54
\inst|inst2|inst1|Bit0|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|Bit0|inst1|X1~combout\ = ( \inst5|inst|inst3|inst|Bit3|inst|And1~combout\ & ( !\inst4|inst|inst3|inst|Bit3|inst|And1~combout\ $ (!\DATA1[8]~input_o\ $ (!\DATA2[8]~input_o\)) ) ) # ( !\inst5|inst|inst3|inst|Bit3|inst|And1~combout\ & ( 
-- !\inst4|inst|inst3|inst|Bit3|inst|And1~combout\ $ (!\DATA1[8]~input_o\ $ (\DATA2[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	datab => \ALT_INV_DATA1[8]~input_o\,
	datac => \ALT_INV_DATA2[8]~input_o\,
	dataf => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst|inst2|inst1|Bit0|inst1|X1~combout\);

-- Location: LABCELL_X43_Y3_N0
\inst|inst2|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|Bit0|inst|X1~combout\ = ( \inst|inst3|inst|Bit2|inst|And1~combout\ & ( !\inst|inst2|inst1|Bit0|inst1|X1~combout\ $ (((!\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & !\inst4|inst|inst3|inst|Bit3|inst|X1~combout\))) ) ) # ( 
-- !\inst|inst3|inst|Bit2|inst|And1~combout\ & ( !\inst|inst2|inst1|Bit0|inst1|X1~combout\ $ (((!\inst|inst3|inst|Bit2|inst1|And1~combout\ & ((!\inst5|inst|inst3|inst|Bit3|inst|X1~combout\) # (!\inst4|inst|inst3|inst|Bit3|inst|X1~combout\))) # 
-- (\inst|inst3|inst|Bit2|inst1|And1~combout\ & (!\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & !\inst4|inst|inst3|inst|Bit3|inst|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100001101100110110000111100110011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|Bit2|inst1|ALT_INV_And1~combout\,
	datab => \inst|inst2|inst1|Bit0|inst1|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst3|inst|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst|inst2|inst1|Bit0|inst|X1~combout\);

-- Location: LABCELL_X47_Y3_N51
\inst|inst2|inst1|Bit2|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|Bit2|inst1|X1~combout\ = ( \inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & ( !\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ ) ) # ( !\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & ( \inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst2|inst1|Bit2|inst1|X1~combout\);

-- Location: LABCELL_X47_Y3_N54
\inst6|inst|inst2|inst1|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst1|Bit2|inst|And1~combout\ = ( !\inst|inst2|inst1|Bit0|inst|X1~combout\ & ( \inst|inst2|inst1|Bit2|inst1|X1~combout\ & ( (\inst6|inst|inst3|inst|Bit3|inst|And1~combout\ & ((!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & 
-- (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & \inst|inst2|inst1|Bit0|inst2~combout\)) # (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & (!\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ $ (!\inst|inst2|inst1|Bit0|inst2~combout\))))) ) ) ) # ( 
-- !\inst|inst2|inst1|Bit0|inst|X1~combout\ & ( !\inst|inst2|inst1|Bit2|inst1|X1~combout\ & ( (\inst6|inst|inst3|inst|Bit3|inst|And1~combout\ & (!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & (!\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & 
-- !\inst|inst2|inst1|Bit0|inst2~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000001000101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	datab => \inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst|inst2|inst1|Bit0|ALT_INV_inst2~combout\,
	datae => \inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst2|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst2|inst1|Bit2|inst|And1~combout\);

-- Location: LABCELL_X47_Y3_N33
\inst|inst2|inst1|Bit2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|Bit2|inst2~combout\ = ( \inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & ( ((!\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & \inst|inst2|inst1|Bit0|inst2~combout\)) # 
-- (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & ((\inst|inst2|inst1|Bit0|inst2~combout\) # (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\)))) # (\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\) ) ) # ( !\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & ( 
-- (\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & ((!\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & \inst|inst2|inst1|Bit0|inst2~combout\)) # (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & 
-- ((\inst|inst2|inst1|Bit0|inst2~combout\) # (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst|inst2|inst1|Bit0|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst2|inst1|Bit2|inst2~combout\);

-- Location: MLABCELL_X46_Y4_N3
\inst|inst2|inst|Bit0|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst|Bit0|inst1|X1~combout\ = ( \inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ( !\inst4|inst|inst2|inst|Bit0|inst|X1~combout\ ) ) # ( !\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ( \inst4|inst|inst2|inst|Bit0|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst|inst2|inst|Bit0|inst1|X1~combout\);

-- Location: MLABCELL_X46_Y4_N9
\inst6|inst|inst2|inst|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst|Bit0|inst|And1~combout\ = ( \inst5|inst|inst2|inst1|Bit3|inst|X1~combout\ & ( (!\inst6|inst|inst2|inst1|Bit2|inst|And1~combout\) # ((!\inst|inst2|inst|Bit0|inst1|X1~combout\) # (!\inst|inst2|inst1|Bit2|inst2~combout\ $ 
-- (\inst4|inst|inst2|inst1|Bit3|inst|X1~combout\))) ) ) # ( !\inst5|inst|inst2|inst1|Bit3|inst|X1~combout\ & ( (!\inst6|inst|inst2|inst1|Bit2|inst|And1~combout\) # ((!\inst|inst2|inst1|Bit2|inst2~combout\ & ((\inst|inst2|inst|Bit0|inst1|X1~combout\) # 
-- (\inst4|inst|inst2|inst1|Bit3|inst|X1~combout\))) # (\inst|inst2|inst1|Bit2|inst2~combout\ & ((!\inst4|inst|inst2|inst1|Bit3|inst|X1~combout\) # (!\inst|inst2|inst|Bit0|inst1|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111110101111111111111011111111111010111111111111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datab => \inst|inst2|inst1|Bit2|ALT_INV_inst2~combout\,
	datac => \inst4|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst|inst2|inst|Bit0|inst1|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst2|inst|Bit0|inst|And1~combout\);

-- Location: LABCELL_X45_Y4_N18
\inst6|inst|inst2|inst|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst|Bit3|inst|And1~combout\ = ( \inst6|inst|inst2|inst|Bit0|inst|And1~combout\ & ( \inst|inst2|inst|Bit1|inst2~combout\ ) ) # ( !\inst6|inst|inst2|inst|Bit0|inst|And1~combout\ & ( \inst|inst2|inst|Bit1|inst2~combout\ & ( 
-- (!\inst|inst2|inst|Bit3|inst1|X1~combout\) # ((!\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ $ (\inst4|inst|inst2|inst|Bit2|inst|X1~combout\)) # (\inst|inst2|inst|Bit1|inst|X1~combout\)) ) ) ) # ( \inst6|inst|inst2|inst|Bit0|inst|And1~combout\ & ( 
-- !\inst|inst2|inst|Bit1|inst2~combout\ ) ) # ( !\inst6|inst|inst2|inst|Bit0|inst|And1~combout\ & ( !\inst|inst2|inst|Bit1|inst2~combout\ & ( ((!\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & ((\inst4|inst|inst2|inst|Bit2|inst|X1~combout\) # 
-- (\inst|inst2|inst|Bit3|inst1|X1~combout\))) # (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & ((!\inst|inst2|inst|Bit3|inst1|X1~combout\) # (!\inst4|inst|inst2|inst|Bit2|inst|X1~combout\)))) # (\inst|inst2|inst|Bit1|inst|X1~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111011111111111111111111111111101101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst|inst2|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datac => \inst4|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	datae => \inst6|inst|inst2|inst|Bit0|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst2|inst|Bit1|ALT_INV_inst2~combout\,
	combout => \inst6|inst|inst2|inst|Bit3|inst|And1~combout\);

-- Location: LABCELL_X43_Y4_N21
\inst6|inst|inst1|inst1|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst1|inst1|Bit1|inst|And1~combout\ = ( \inst|inst2|inst|Bit3|inst2~combout\ & ( (\inst|inst1|inst1|Bit1|inst1|X1~combout\ & (!\inst6|inst|inst2|inst|Bit3|inst|And1~combout\ & (!\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ $ 
-- (!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\)))) ) ) # ( !\inst|inst2|inst|Bit3|inst2~combout\ & ( (!\inst6|inst|inst2|inst|Bit3|inst|And1~combout\ & ((!\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & (!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & 
-- !\inst|inst1|inst1|Bit1|inst1|X1~combout\)) # (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & \inst|inst1|inst1|Bit1|inst1|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100000000100000010000000000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst|inst1|inst1|Bit1|inst1|ALT_INV_X1~combout\,
	datad => \inst6|inst|inst2|inst|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst2|inst|Bit3|ALT_INV_inst2~combout\,
	combout => \inst6|inst|inst1|inst1|Bit1|inst|And1~combout\);

-- Location: LABCELL_X43_Y4_N57
\inst6|inst|inst1|inst1|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst1|inst1|Bit3|inst|And1~combout\ = ( \inst6|inst|inst1|inst1|Bit1|inst|And1~combout\ & ( (!\inst5|inst|inst1|inst1|Bit2|inst|X1~combout\ & ((!\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\ & ((\inst|inst1|inst1|Bit3|inst1|X1~combout\) # 
-- (\inst|inst1|inst1|Bit1|inst2~combout\))) # (\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\ & ((!\inst|inst1|inst1|Bit1|inst2~combout\) # (!\inst|inst1|inst1|Bit3|inst1|X1~combout\))))) # (\inst5|inst|inst1|inst1|Bit2|inst|X1~combout\ & 
-- ((!\inst|inst1|inst1|Bit3|inst1|X1~combout\) # (!\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\ $ (\inst|inst1|inst1|Bit1|inst2~combout\)))) ) ) # ( !\inst6|inst|inst1|inst1|Bit1|inst|And1~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111010010111111111101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst|inst1|inst1|Bit1|ALT_INV_inst2~combout\,
	datad => \inst|inst1|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	dataf => \inst6|inst|inst1|inst1|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst6|inst|inst1|inst1|Bit3|inst|And1~combout\);

-- Location: LABCELL_X37_Y4_N6
\inst6|inst|inst1|inst|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst1|inst|Bit2|inst|And1~combout\ = ( \inst|inst1|inst|Bit0|inst2~combout\ & ( \inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ( ((!\inst|inst1|inst|Bit2|inst1|X1~combout\) # ((!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\) # 
-- (\inst6|inst|inst1|inst1|Bit3|inst|And1~combout\))) # (\inst|inst1|inst|Bit0|inst|X1~combout\) ) ) ) # ( !\inst|inst1|inst|Bit0|inst2~combout\ & ( \inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ( ((!\inst|inst1|inst|Bit2|inst1|X1~combout\) # 
-- ((\inst4|inst|inst1|inst|Bit1|inst|X1~combout\) # (\inst6|inst|inst1|inst1|Bit3|inst|And1~combout\))) # (\inst|inst1|inst|Bit0|inst|X1~combout\) ) ) ) # ( \inst|inst1|inst|Bit0|inst2~combout\ & ( !\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ( 
-- (((\inst4|inst|inst1|inst|Bit1|inst|X1~combout\) # (\inst6|inst|inst1|inst1|Bit3|inst|And1~combout\)) # (\inst|inst1|inst|Bit2|inst1|X1~combout\)) # (\inst|inst1|inst|Bit0|inst|X1~combout\) ) ) ) # ( !\inst|inst1|inst|Bit0|inst2~combout\ & ( 
-- !\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ( ((!\inst|inst1|inst|Bit2|inst1|X1~combout\) # ((!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\) # (\inst6|inst|inst1|inst1|Bit3|inst|And1~combout\))) # (\inst|inst1|inst|Bit0|inst|X1~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111011111111111111111011111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst1|inst|Bit2|inst1|ALT_INV_X1~combout\,
	datac => \inst6|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datad => \inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datae => \inst|inst1|inst|Bit0|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst1|inst|Bit2|inst|And1~combout\);

-- Location: LABCELL_X37_Y4_N12
\inst|inst1|inst|Bit2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit2|inst2~combout\ = ( \inst5|inst|inst1|inst|Bit2|inst|X1~combout\ & ( ((!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & (\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & !\inst|inst1|inst|Bit0|inst2~combout\)) # 
-- (\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & ((!\inst|inst1|inst|Bit0|inst2~combout\) # (\inst5|inst|inst1|inst|Bit1|inst|X1~combout\)))) # (\inst4|inst|inst1|inst|Bit2|inst|X1~combout\) ) ) # ( !\inst5|inst|inst1|inst|Bit2|inst|X1~combout\ & ( 
-- (\inst4|inst|inst1|inst|Bit2|inst|X1~combout\ & ((!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & (\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & !\inst|inst1|inst|Bit0|inst2~combout\)) # (\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & 
-- ((!\inst|inst1|inst|Bit0|inst2~combout\) # (\inst5|inst|inst1|inst|Bit1|inst|X1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000001000100110000000101111111001101110111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst|inst1|inst|Bit0|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst|Bit2|inst2~combout\);

-- Location: MLABCELL_X36_Y4_N0
\inst6|inst|inst|inst1|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst1|Bit0|inst|And1~combout\ = ( \inst|inst1|inst|Bit2|inst2~combout\ & ( \inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( ((!\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ $ (\inst5|inst|inst1|inst|Bit3|inst|X1~combout\)) # 
-- (\inst6|inst|inst1|inst|Bit2|inst|And1~combout\)) # (\inst5|inst|inst|inst1|Bit0|inst|X1~combout\) ) ) ) # ( !\inst|inst1|inst|Bit2|inst2~combout\ & ( \inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( ((!\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & 
-- ((!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\) # (\inst5|inst|inst1|inst|Bit3|inst|X1~combout\))) # (\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ((!\inst5|inst|inst1|inst|Bit3|inst|X1~combout\) # (\inst5|inst|inst|inst1|Bit0|inst|X1~combout\)))) # 
-- (\inst6|inst|inst1|inst|Bit2|inst|And1~combout\) ) ) ) # ( \inst|inst1|inst|Bit2|inst2~combout\ & ( !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( (!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\) # ((!\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ $ 
-- (\inst5|inst|inst1|inst|Bit3|inst|X1~combout\)) # (\inst6|inst|inst1|inst|Bit2|inst|And1~combout\)) ) ) ) # ( !\inst|inst1|inst|Bit2|inst2~combout\ & ( !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( ((!\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & 
-- ((\inst5|inst|inst1|inst|Bit3|inst|X1~combout\) # (\inst5|inst|inst|inst1|Bit0|inst|X1~combout\))) # (\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ((!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\) # (!\inst5|inst|inst1|inst|Bit3|inst|X1~combout\)))) # 
-- (\inst6|inst|inst1|inst|Bit2|inst|And1~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111101111111011111101111111011111101111111011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst5|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst6|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	datad => \inst5|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	datae => \inst|inst1|inst|Bit2|ALT_INV_inst2~combout\,
	dataf => \inst4|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst|inst1|Bit0|inst|And1~combout\);

-- Location: MLABCELL_X36_Y4_N6
\inst|inst|inst1|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|Bit1|inst|X1~combout\ = ( \inst|inst1|inst|Bit3|inst1|And1~combout\ & ( \inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ $ (((\inst4|inst|inst|inst1|Bit0|inst|X1~combout\) # 
-- (\inst5|inst|inst|inst1|Bit0|inst|X1~combout\))) ) ) ) # ( !\inst|inst1|inst|Bit3|inst1|And1~combout\ & ( \inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ $ (((!\inst|inst1|inst|Bit3|inst|And1~combout\ & 
-- (\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ & \inst4|inst|inst|inst1|Bit0|inst|X1~combout\)) # (\inst|inst1|inst|Bit3|inst|And1~combout\ & ((\inst4|inst|inst|inst1|Bit0|inst|X1~combout\) # (\inst5|inst|inst|inst1|Bit0|inst|X1~combout\))))) ) ) ) # ( 
-- \inst|inst1|inst|Bit3|inst1|And1~combout\ & ( !\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ $ (((!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ & !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\))) ) ) ) # ( 
-- !\inst|inst1|inst|Bit3|inst1|And1~combout\ & ( !\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ $ (((!\inst|inst1|inst|Bit3|inst|And1~combout\ & ((!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\) # 
-- (!\inst4|inst|inst|inst1|Bit0|inst|X1~combout\))) # (\inst|inst1|inst|Bit3|inst|And1~combout\ & (!\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ & !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000001111001111000011100001100001111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\,
	datab => \inst5|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datae => \inst|inst1|inst|Bit3|inst1|ALT_INV_And1~combout\,
	dataf => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst|inst|inst1|Bit1|inst|X1~combout\);

-- Location: LABCELL_X35_Y4_N21
\inst6|inst|inst|inst1|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst1|Bit2|inst|And1~combout\ = ( !\inst|inst|inst1|Bit1|inst|X1~combout\ & ( (!\inst6|inst|inst|inst1|Bit0|inst|And1~combout\ & (!\inst|inst|inst1|Bit2|inst1|X1~combout\ $ (!\inst|inst|inst1|Bit1|inst2~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	datac => \inst|inst|inst1|Bit1|ALT_INV_inst2~combout\,
	datad => \inst6|inst|inst|inst1|Bit0|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst|inst1|Bit2|inst|And1~combout\);

-- Location: MLABCELL_X36_Y3_N6
\inst|inst|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|Bit3|inst|X1~combout\ = ( \inst|inst|inst1|Bit1|inst2~combout\ & ( !\inst|inst|inst1|Bit3|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst1|Bit2|inst|X1~combout\) # (!\inst4|inst|inst|inst1|Bit2|inst|X1~combout\))) ) ) # ( 
-- !\inst|inst|inst1|Bit1|inst2~combout\ & ( !\inst|inst|inst1|Bit3|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst1|Bit2|inst|X1~combout\ & !\inst4|inst|inst|inst1|Bit2|inst|X1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst|inst|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	dataf => \inst|inst|inst1|Bit1|ALT_INV_inst2~combout\,
	combout => \inst|inst|inst1|Bit3|inst|X1~combout\);

-- Location: MLABCELL_X36_Y3_N12
\inst6|inst|inst|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst|Bit1|inst|And1~combout\ = ( \inst6|inst|inst|inst1|Bit2|inst|And1~combout\ & ( !\inst|inst|inst1|Bit3|inst|X1~combout\ & ( (!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & ((!\inst|inst|inst1|Bit3|inst2~combout\ & 
-- (!\inst4|inst|inst|inst|Bit0|inst|X1~combout\ & !\inst|inst|inst|Bit1|inst1|X1~combout\)) # (\inst|inst|inst1|Bit3|inst2~combout\ & (\inst4|inst|inst|inst|Bit0|inst|X1~combout\ & \inst|inst|inst|Bit1|inst1|X1~combout\)))) # 
-- (\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (\inst|inst|inst|Bit1|inst1|X1~combout\ & (!\inst|inst|inst1|Bit3|inst2~combout\ $ (!\inst4|inst|inst|inst|Bit0|inst|X1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000001011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst|inst1|Bit3|ALT_INV_inst2~combout\,
	datac => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datae => \inst6|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst|inst|Bit1|inst|And1~combout\);

-- Location: MLABCELL_X36_Y3_N48
\inst|inst|inst|Bit1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst|Bit1|inst2~combout\ = ( \inst5|inst|inst|inst|Bit1|inst|X1~combout\ & ( ((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (\inst|inst|inst1|Bit3|inst2~combout\ & \inst4|inst|inst|inst|Bit0|inst|X1~combout\)) # 
-- (\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & ((\inst4|inst|inst|inst|Bit0|inst|X1~combout\) # (\inst|inst|inst1|Bit3|inst2~combout\)))) # (\inst4|inst|inst|inst|Bit1|inst|X1~combout\) ) ) # ( !\inst5|inst|inst|inst|Bit1|inst|X1~combout\ & ( 
-- (\inst4|inst|inst|inst|Bit1|inst|X1~combout\ & ((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (\inst|inst|inst1|Bit3|inst2~combout\ & \inst4|inst|inst|inst|Bit0|inst|X1~combout\)) # (\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & 
-- ((\inst4|inst|inst|inst|Bit0|inst|X1~combout\) # (\inst|inst|inst1|Bit3|inst2~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst|inst1|Bit3|ALT_INV_inst2~combout\,
	datac => \inst4|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst|inst|inst|Bit1|inst2~combout\);

-- Location: LABCELL_X37_Y3_N30
\inst24|inst7|O1[31]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[31]~33_combout\ = ( !\OP[2]~input_o\ & ( (!\OP[0]~input_o\ & !\OP[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst24|inst7|O1[31]~33_combout\);

-- Location: LABCELL_X34_Y3_N18
\inst24|inst7|O1[31]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[31]~34_combout\ = ( \inst|inst|inst|Bit1|inst2~combout\ & ( \inst24|inst7|O1[31]~33_combout\ & ( !\inst7|inst|inst|inst|Bit3|inst|X1~0_combout\ $ (((!\inst6|inst|inst|inst|Bit1|inst|And1~combout\ & 
-- ((\inst4|inst|inst|inst|Bit2|inst|X1~combout\) # (\inst5|inst|inst|inst|Bit2|inst|X1~combout\))) # (\inst6|inst|inst|inst|Bit1|inst|And1~combout\ & (\inst5|inst|inst|inst|Bit2|inst|X1~combout\ & \inst4|inst|inst|inst|Bit2|inst|X1~combout\)))) ) ) ) # ( 
-- !\inst|inst|inst|Bit1|inst2~combout\ & ( \inst24|inst7|O1[31]~33_combout\ & ( !\inst7|inst|inst|inst|Bit3|inst|X1~0_combout\ $ (((!\inst6|inst|inst|inst|Bit1|inst|And1~combout\ & (\inst5|inst|inst|inst|Bit2|inst|X1~combout\ & 
-- \inst4|inst|inst|inst|Bit2|inst|X1~combout\)) # (\inst6|inst|inst|inst|Bit1|inst|And1~combout\ & (!\inst5|inst|inst|inst|Bit2|inst|X1~combout\ & !\inst4|inst|inst|inst|Bit2|inst|X1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010011100110001101100011001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst|inst|Bit1|inst|ALT_INV_And1~combout\,
	datab => \inst7|inst|inst|inst|Bit3|inst|ALT_INV_X1~0_combout\,
	datac => \inst5|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\,
	datae => \inst|inst|inst|Bit1|ALT_INV_inst2~combout\,
	dataf => \inst24|inst7|ALT_INV_O1[31]~33_combout\,
	combout => \inst24|inst7|O1[31]~34_combout\);

-- Location: LABCELL_X37_Y3_N27
\inst24|inst7|O1[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[31]~32_combout\ = ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & !\OP[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[31]~32_combout\);

-- Location: LABCELL_X34_Y3_N3
\inst|inst|inst|Bit2|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst|Bit2|inst1|X1~combout\ = ( \inst4|inst|inst|inst|Bit2|inst|X1~combout\ & ( !\inst5|inst|inst|inst|Bit2|inst|X1~combout\ ) ) # ( !\inst4|inst|inst|inst|Bit2|inst|X1~combout\ & ( \inst5|inst|inst|inst|Bit2|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst|inst|Bit2|inst1|X1~combout\);

-- Location: LABCELL_X34_Y3_N36
\inst2|inst|inst|inst1|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|inst1|inst|inst~combout\ = !\inst|inst|inst|Bit2|inst1|X1~combout\ $ (\inst2|inst|inst|inst2|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|Bit2|inst1|ALT_INV_X1~combout\,
	datad => \inst2|inst|inst|inst2|ALT_INV_inst2~combout\,
	combout => \inst2|inst|inst|inst1|inst|inst~combout\);

-- Location: MLABCELL_X36_Y4_N42
\inst2|inst|inst1|inst3|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1|inst3|inst|inst~combout\ = ( \inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ( \inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( !\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ $ (((\inst5|inst|inst1|inst|Bit3|inst|X1~combout\ & 
-- ((\inst2|inst1|inst|inst1|inst1|inst2~combout\) # (\inst2|inst1|inst|inst1|inst|inst2~combout\))))) ) ) ) # ( !\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ( \inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( !\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ 
-- $ ((((\inst5|inst|inst1|inst|Bit3|inst|X1~combout\) # (\inst2|inst1|inst|inst1|inst1|inst2~combout\)) # (\inst2|inst1|inst|inst1|inst|inst2~combout\))) ) ) ) # ( \inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ( 
-- !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( !\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ $ (((!\inst5|inst|inst1|inst|Bit3|inst|X1~combout\) # ((!\inst2|inst1|inst|inst1|inst|inst2~combout\ & !\inst2|inst1|inst|inst1|inst1|inst2~combout\)))) ) ) ) 
-- # ( !\inst4|inst|inst1|inst|Bit3|inst|X1~combout\ & ( !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( !\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ $ (((!\inst2|inst1|inst|inst1|inst|inst2~combout\ & (!\inst2|inst1|inst|inst1|inst1|inst2~combout\ & 
-- !\inst5|inst|inst1|inst|Bit3|inst|X1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110011001100001100110110110010010011001100111100110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst|inst1|inst|ALT_INV_inst2~combout\,
	datab => \inst5|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst2|inst1|inst|inst1|inst1|ALT_INV_inst2~combout\,
	datad => \inst5|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst|inst1|inst3|inst|inst~combout\);

-- Location: LABCELL_X43_Y4_N51
\inst2|inst1|inst1|inst1|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst1|inst1|inst|inst~combout\ = ( \inst2|inst1|inst1|inst2|inst2~combout\ & ( !\inst|inst1|inst1|Bit2|inst1|X1~combout\ ) ) # ( !\inst2|inst1|inst1|inst2|inst2~combout\ & ( \inst|inst1|inst1|Bit2|inst1|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	dataf => \inst2|inst1|inst1|inst2|ALT_INV_inst2~combout\,
	combout => \inst2|inst1|inst1|inst1|inst|inst~combout\);

-- Location: LABCELL_X45_Y4_N48
\inst2|inst2|inst|inst1|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst|inst1|inst|inst~combout\ = !\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ $ (!\inst4|inst|inst2|inst|Bit2|inst|X1~combout\ $ (\inst2|inst2|inst|inst2|inst2~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst2|inst2|inst|inst2|ALT_INV_inst2~combout\,
	combout => \inst2|inst2|inst|inst1|inst|inst~combout\);

-- Location: LABCELL_X45_Y4_N45
\inst2|inst1|inst1|inst3|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst1|inst3|inst|inst~combout\ = ( \inst2|inst2|inst|inst|inst2~combout\ & ( !\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ $ (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\) ) ) # ( !\inst2|inst2|inst|inst|inst2~combout\ & ( 
-- !\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ $ (!\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst2|inst|inst|ALT_INV_inst2~combout\,
	combout => \inst2|inst1|inst1|inst3|inst|inst~combout\);

-- Location: LABCELL_X47_Y3_N6
\inst2|inst2|inst1|inst2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst1|inst2|inst2~combout\ = ( \inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & ( (!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\) # (\inst2|inst2|inst1|inst3|inst2~combout\) ) ) # ( !\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & ( 
-- (!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & \inst2|inst2|inst1|inst3|inst2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst2|inst2|inst1|inst3|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst2|inst1|inst2|inst2~combout\);

-- Location: LABCELL_X43_Y3_N12
\inst2|inst3|inst|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst|inst|inst2~combout\ = ( \inst2|inst3|inst|inst1|inst1|inst2~combout\ & ( (!\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & \inst4|inst|inst3|inst|Bit3|inst|X1~combout\) ) ) # ( !\inst2|inst3|inst|inst1|inst1|inst2~combout\ & ( 
-- (!\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & ((!\inst2|inst3|inst|inst1|inst|inst2~combout\) # (\inst4|inst|inst3|inst|Bit3|inst|X1~combout\))) # (\inst5|inst|inst3|inst|Bit3|inst|X1~combout\ & (!\inst2|inst3|inst|inst1|inst|inst2~combout\ & 
-- \inst4|inst|inst3|inst|Bit3|inst|X1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111010001110100011101000111000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst2|inst3|inst|inst1|inst|ALT_INV_inst2~combout\,
	datac => \inst4|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst3|inst|inst1|inst1|ALT_INV_inst2~combout\,
	combout => \inst2|inst3|inst|inst|inst2~combout\);

-- Location: LABCELL_X39_Y3_N0
\inst7|inst|inst3|inst1|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst3|inst1|Bit1|inst|And1~combout\ = ( \DATA2[0]~input_o\ & ( (!\DATA2[1]~input_o\ & (!\DATA1[1]~input_o\ & (!\DATA1[0]~input_o\ $ (!\Cin~input_o\)))) # (\DATA2[1]~input_o\ & (\DATA1[1]~input_o\ & (!\DATA1[0]~input_o\ $ (!\Cin~input_o\)))) ) 
-- ) # ( !\DATA2[0]~input_o\ & ( (!\DATA1[0]~input_o\ & (!\Cin~input_o\ & (!\DATA2[1]~input_o\ $ (\DATA1[1]~input_o\)))) # (\DATA1[0]~input_o\ & (\Cin~input_o\ & (!\DATA2[1]~input_o\ $ (!\DATA1[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000110100100000000011000001001100100000000100110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[1]~input_o\,
	datab => \ALT_INV_DATA1[1]~input_o\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_DATA2[0]~input_o\,
	combout => \inst7|inst|inst3|inst1|Bit1|inst|And1~combout\);

-- Location: MLABCELL_X41_Y3_N12
\inst7|inst|inst3|inst1|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst3|inst1|Bit3|inst|And1~combout\ = ( \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( \inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & ( (!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\) # ((!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\) 
-- # (!\inst2|inst3|inst1|inst2|inst2~combout\ $ (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\))) ) ) ) # ( !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( \inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & ( 
-- (!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\) # ((!\inst2|inst3|inst1|inst2|inst2~combout\ & ((!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\) # (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\))) # (\inst2|inst3|inst1|inst2|inst2~combout\ & 
-- ((!\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\) # (\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\)))) ) ) ) # ( \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( !\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & ( 
-- (!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\) # ((!\inst2|inst3|inst1|inst2|inst2~combout\ $ (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)) # (\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\)) ) ) ) # ( !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ 
-- & ( !\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & ( (!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\) # ((!\inst2|inst3|inst1|inst2|inst2~combout\ & ((\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\) # (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\))) # 
-- (\inst2|inst3|inst1|inst2|inst2~combout\ & ((!\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\) # (!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111110111011011111111111111110110111111111111111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|inst1|inst2|ALT_INV_inst2~combout\,
	datab => \inst7|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst5|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst3|inst1|Bit3|inst|And1~combout\);

-- Location: LABCELL_X42_Y3_N12
\inst7|inst|inst3|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst3|inst|Bit1|inst|And1~combout\ = ( \inst2|inst3|inst1|inst|inst2~combout\ & ( (!\inst7|inst|inst3|inst1|Bit3|inst|And1~combout\ & ((!\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & (!\inst|inst3|inst|Bit1|inst1|X1~combout\ & 
-- \inst4|inst|inst3|inst|Bit0|inst|X1~combout\)) # (\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & (\inst|inst3|inst|Bit1|inst1|X1~combout\ & !\inst4|inst|inst3|inst|Bit0|inst|X1~combout\)))) ) ) # ( !\inst2|inst3|inst1|inst|inst2~combout\ & ( 
-- (!\inst|inst3|inst|Bit1|inst1|X1~combout\ & (!\inst7|inst|inst3|inst1|Bit3|inst|And1~combout\ & (!\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ $ (\inst4|inst|inst3|inst|Bit0|inst|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000100000000100000000010000100000000001000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datac => \inst7|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datad => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst3|inst1|inst|ALT_INV_inst2~combout\,
	combout => \inst7|inst|inst3|inst|Bit1|inst|And1~combout\);

-- Location: LABCELL_X42_Y3_N21
\inst2|inst3|inst|inst2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst|inst2|inst2~combout\ = ( \inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & ( (!\inst2|inst3|inst|inst2|inst1|inst2~combout\ & (((\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & !\inst2|inst3|inst1|inst|inst2~combout\)) # 
-- (\inst|inst3|inst|Bit1|inst1|X1~combout\))) ) ) # ( !\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & ( (!\inst2|inst3|inst|inst2|inst1|inst2~combout\ & (((!\inst2|inst3|inst1|inst|inst2~combout\) # (\inst|inst3|inst|Bit1|inst1|X1~combout\)) # 
-- (\inst4|inst|inst3|inst|Bit0|inst|X1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101110000000001110011000000000111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datac => \inst2|inst3|inst1|inst|ALT_INV_inst2~combout\,
	datad => \inst2|inst3|inst|inst2|inst1|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst3|inst|inst2|inst2~combout\);

-- Location: LABCELL_X43_Y3_N9
\inst7|inst|inst3|inst|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst3|inst|Bit3|inst|And1~combout\ = ( \inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & ( (\inst7|inst|inst3|inst|Bit1|inst|And1~combout\ & ((!\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & (\inst|inst3|inst|Bit3|inst1|X1~combout\ & 
-- !\inst2|inst3|inst|inst2|inst2~combout\)) # (\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & (!\inst|inst3|inst|Bit3|inst1|X1~combout\ & \inst2|inst3|inst|inst2|inst2~combout\)))) ) ) # ( !\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & ( 
-- (\inst7|inst|inst3|inst|Bit1|inst|And1~combout\ & (!\inst|inst3|inst|Bit3|inst1|X1~combout\ & (!\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ $ (!\inst2|inst3|inst|inst2|inst2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000000100000100000000000100000100000000010000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\,
	datab => \inst4|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst|inst3|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datad => \inst2|inst3|inst|inst2|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst3|inst|Bit3|inst|And1~combout\);

-- Location: LABCELL_X47_Y3_N24
\inst7|inst|inst2|inst1|Bit1|inst|And1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\ = ( \inst2|inst2|inst1|inst3|inst2~combout\ & ( \inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & ( (\inst7|inst|inst3|inst|Bit3|inst|And1~combout\ & (!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & 
-- (!\inst|inst2|inst1|Bit0|inst1|X1~combout\ $ (!\inst2|inst3|inst|inst|inst2~combout\)))) ) ) ) # ( !\inst2|inst2|inst1|inst3|inst2~combout\ & ( \inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & ( (\inst7|inst|inst3|inst|Bit3|inst|And1~combout\ & 
-- (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & (!\inst|inst2|inst1|Bit0|inst1|X1~combout\ $ (!\inst2|inst3|inst|inst|inst2~combout\)))) ) ) ) # ( \inst2|inst2|inst1|inst3|inst2~combout\ & ( !\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & ( 
-- (\inst7|inst|inst3|inst|Bit3|inst|And1~combout\ & (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & (!\inst|inst2|inst1|Bit0|inst1|X1~combout\ $ (!\inst2|inst3|inst|inst|inst2~combout\)))) ) ) ) # ( !\inst2|inst2|inst1|inst3|inst2~combout\ & ( 
-- !\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & ( (\inst7|inst|inst3|inst|Bit3|inst|And1~combout\ & (!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & (!\inst|inst2|inst1|Bit0|inst1|X1~combout\ $ (!\inst2|inst3|inst|inst|inst2~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000000000000011000000000000001100000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst1|Bit0|inst1|ALT_INV_X1~combout\,
	datab => \inst2|inst3|inst|inst|ALT_INV_inst2~combout\,
	datac => \inst7|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	datad => \inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datae => \inst2|inst2|inst1|inst3|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\);

-- Location: MLABCELL_X46_Y4_N30
\inst7|inst|inst2|inst1|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst2|inst1|Bit3|inst|And1~combout\ = ( \inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\ & ( (!\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & ((!\inst2|inst2|inst1|inst2|inst2~combout\ & (!\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & 
-- !\inst|inst2|inst1|Bit3|inst1|X1~combout\)) # (\inst2|inst2|inst1|inst2|inst2~combout\ & (\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & \inst|inst2|inst1|Bit3|inst1|X1~combout\)))) # (\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & 
-- (!\inst|inst2|inst1|Bit3|inst1|X1~combout\ & (!\inst2|inst2|inst1|inst2|inst2~combout\ $ (!\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010100000000101001010000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst2|inst2|inst1|inst2|ALT_INV_inst2~combout\,
	datac => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst|inst2|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	dataf => \inst7|inst|inst2|inst1|Bit1|inst|ALT_INV_And1~0_combout\,
	combout => \inst7|inst|inst2|inst1|Bit3|inst|And1~combout\);

-- Location: MLABCELL_X46_Y4_N21
\inst2|inst2|inst1|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst1|inst|inst2~combout\ = (!\inst2|inst2|inst1|inst|inst|inst2~combout\ & !\inst2|inst2|inst1|inst|inst1|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|inst1|inst|inst|ALT_INV_inst2~combout\,
	datac => \inst2|inst2|inst1|inst|inst1|ALT_INV_inst2~combout\,
	combout => \inst2|inst2|inst1|inst|inst2~combout\);

-- Location: LABCELL_X45_Y4_N42
\inst7|inst|inst2|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst2|inst|Bit1|inst|And1~combout\ = ( \inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ( ((!\inst7|inst|inst2|inst1|Bit3|inst|And1~combout\) # (!\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ $ (!\inst2|inst2|inst1|inst|inst2~combout\))) # 
-- (\inst|inst2|inst|Bit1|inst1|X1~combout\) ) ) # ( !\inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ( (!\inst7|inst|inst2|inst1|Bit3|inst|And1~combout\) # ((!\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ((!\inst2|inst2|inst1|inst|inst2~combout\) # 
-- (\inst|inst2|inst|Bit1|inst1|X1~combout\))) # (\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ((!\inst|inst2|inst|Bit1|inst1|X1~combout\) # (\inst2|inst2|inst1|inst|inst2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011110111111111101111011111110111111110111111011111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst2|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datac => \inst7|inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datad => \inst2|inst2|inst1|inst|ALT_INV_inst2~combout\,
	dataf => \inst4|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst2|inst|Bit1|inst|And1~combout\);

-- Location: LABCELL_X45_Y4_N33
\inst2|inst2|inst|inst|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst|inst|inst|inst~combout\ = !\inst|inst2|inst|Bit3|inst1|X1~combout\ $ (((!\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & ((!\inst2|inst2|inst|inst2|inst2~combout\) # (\inst4|inst|inst2|inst|Bit2|inst|X1~combout\))) # 
-- (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & (!\inst2|inst2|inst|inst2|inst2~combout\ & \inst4|inst|inst2|inst|Bit2|inst|X1~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110000110110011011000011011001101100001101100110110000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst|inst2|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datac => \inst2|inst2|inst|inst2|ALT_INV_inst2~combout\,
	datad => \inst4|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst2|inst|inst|inst|inst~combout\);

-- Location: LABCELL_X45_Y4_N9
\inst7|inst|inst1|inst1|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ = ( !\inst2|inst2|inst|inst|inst|inst~combout\ & ( (!\inst2|inst2|inst|inst1|inst|inst~combout\ & (!\inst2|inst1|inst1|inst3|inst|inst~combout\ & !\inst7|inst|inst2|inst|Bit1|inst|And1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst|inst1|inst|ALT_INV_inst~combout\,
	datab => \inst2|inst1|inst1|inst3|inst|ALT_INV_inst~combout\,
	datac => \inst7|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	dataf => \inst2|inst2|inst|inst|inst|ALT_INV_inst~combout\,
	combout => \inst7|inst|inst1|inst1|Bit0|inst|And1~combout\);

-- Location: LABCELL_X43_Y4_N0
\inst2|inst1|inst1|inst2|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst1|inst2|inst|inst~combout\ = !\inst|inst1|inst1|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & ((!\inst2|inst2|inst|inst|inst2~combout\) # (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\))) # 
-- (\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ & (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & !\inst2|inst2|inst|inst|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101111010010010010111101001001001011110100100100101111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst|inst1|inst1|Bit1|inst1|ALT_INV_X1~combout\,
	datad => \inst2|inst2|inst|inst|ALT_INV_inst2~combout\,
	combout => \inst2|inst1|inst1|inst2|inst|inst~combout\);

-- Location: LABCELL_X43_Y3_N33
\inst7|inst|inst1|inst1|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst1|Bit2|inst|And1~combout\ = ( !\inst2|inst1|inst1|inst2|inst|inst~combout\ & ( (!\inst2|inst1|inst1|inst1|inst|inst~combout\ & \inst7|inst|inst1|inst1|Bit0|inst|And1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst1|inst1|inst|ALT_INV_inst~combout\,
	datad => \inst7|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	dataf => \inst2|inst1|inst1|inst2|inst|ALT_INV_inst~combout\,
	combout => \inst7|inst|inst1|inst1|Bit2|inst|And1~combout\);

-- Location: LABCELL_X37_Y4_N36
\inst2|inst1|inst|inst2|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst|inst2|inst|inst~combout\ = ( \inst2|inst1|inst1|inst|inst2~combout\ & ( !\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ $ (!\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ $ (((!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\) # 
-- (\inst5|inst|inst1|inst|Bit0|inst|X1~combout\)))) ) ) # ( !\inst2|inst1|inst1|inst|inst2~combout\ & ( !\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ $ (!\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ $ (((\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & 
-- !\inst4|inst|inst1|inst|Bit0|inst|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101011010011010010101101010100101011010011010010101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst5|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst1|inst1|inst|ALT_INV_inst2~combout\,
	combout => \inst2|inst1|inst|inst2|inst|inst~combout\);

-- Location: LABCELL_X43_Y4_N30
\inst2|inst1|inst1|inst|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst1|inst|inst|inst~combout\ = ( \inst2|inst1|inst1|inst2|inst2~combout\ & ( !\inst|inst1|inst1|Bit3|inst1|X1~combout\ $ (((\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\ & !\inst5|inst|inst1|inst1|Bit2|inst|X1~combout\))) ) ) # ( 
-- !\inst2|inst1|inst1|inst2|inst2~combout\ & ( !\inst|inst1|inst1|Bit3|inst1|X1~combout\ $ (((!\inst5|inst|inst1|inst1|Bit2|inst|X1~combout\) # (\inst4|inst|inst1|inst1|Bit2|inst|X1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100110011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst1|inst1|inst2|ALT_INV_inst2~combout\,
	combout => \inst2|inst1|inst1|inst|inst|inst~combout\);

-- Location: LABCELL_X43_Y4_N15
\inst7|inst|inst1|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst|Bit1|inst|And1~combout\ = ( !\inst2|inst1|inst1|inst|inst|inst~combout\ & ( (\inst7|inst|inst1|inst1|Bit2|inst|And1~combout\ & (!\inst2|inst1|inst|inst2|inst|inst~combout\ & (!\inst|inst1|inst|Bit0|inst1|X1~combout\ $ 
-- (\inst2|inst1|inst1|inst|inst2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000001000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|Bit0|inst1|ALT_INV_X1~combout\,
	datab => \inst7|inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datac => \inst2|inst1|inst1|inst|ALT_INV_inst2~combout\,
	datad => \inst2|inst1|inst|inst2|inst|ALT_INV_inst~combout\,
	dataf => \inst2|inst1|inst1|inst|inst|ALT_INV_inst~combout\,
	combout => \inst7|inst|inst1|inst|Bit1|inst|And1~combout\);

-- Location: LABCELL_X37_Y4_N45
\inst2|inst1|inst|inst2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst|inst2|inst2~combout\ = ( \inst2|inst1|inst1|inst|inst2~combout\ & ( (!\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & (!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & ((!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\) # 
-- (\inst5|inst|inst1|inst|Bit0|inst|X1~combout\)))) # (\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ((!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\) # ((!\inst4|inst|inst1|inst|Bit0|inst|X1~combout\) # (\inst5|inst|inst1|inst|Bit0|inst|X1~combout\)))) ) ) 
-- # ( !\inst2|inst1|inst1|inst|inst2~combout\ & ( (!\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & (!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & (\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & !\inst4|inst|inst1|inst|Bit0|inst|X1~combout\))) # 
-- (\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ((!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\) # ((\inst5|inst|inst1|inst|Bit0|inst|X1~combout\ & !\inst4|inst|inst1|inst|Bit0|inst|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101000100010011010100010011011101010011011101110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst1|inst1|inst|ALT_INV_inst2~combout\,
	combout => \inst2|inst1|inst|inst2|inst2~combout\);

-- Location: LABCELL_X37_Y4_N51
\inst7|inst|inst1|inst|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst|Bit3|inst|And1~combout\ = ( \inst5|inst|inst1|inst|Bit2|inst|X1~combout\ & ( (!\inst7|inst|inst1|inst|Bit1|inst|And1~combout\) # ((!\inst|inst1|inst|Bit3|inst1|X1~combout\ & ((!\inst4|inst|inst1|inst|Bit2|inst|X1~combout\) # 
-- (\inst2|inst1|inst|inst2|inst2~combout\))) # (\inst|inst1|inst|Bit3|inst1|X1~combout\ & ((!\inst2|inst1|inst|inst2|inst2~combout\) # (\inst4|inst|inst1|inst|Bit2|inst|X1~combout\)))) ) ) # ( !\inst5|inst|inst1|inst|Bit2|inst|X1~combout\ & ( 
-- ((!\inst7|inst|inst1|inst|Bit1|inst|And1~combout\) # (!\inst4|inst|inst1|inst|Bit2|inst|X1~combout\ $ (!\inst2|inst1|inst|inst2|inst2~combout\))) # (\inst|inst1|inst|Bit3|inst1|X1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111101110111111111110111111101111011111111110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datab => \inst7|inst|inst1|inst|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst2|inst1|inst|inst2|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst1|inst|Bit3|inst|And1~combout\);

-- Location: MLABCELL_X36_Y4_N24
\inst7|inst|inst|inst1|Bit2|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst|inst1|Bit2|inst|And1~combout\ = ( \inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst7|inst|inst1|inst|Bit3|inst|And1~combout\ & ( (!\inst|inst|inst1|Bit2|inst1|X1~combout\ & (!\inst2|inst|inst1|inst3|inst|inst~combout\ & 
-- (!\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ $ (\inst2|inst|inst1|inst3|inst2~combout\)))) ) ) ) # ( !\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst7|inst|inst1|inst|Bit3|inst|And1~combout\ & ( (!\inst2|inst|inst1|inst3|inst|inst~combout\ & 
-- ((!\inst|inst|inst1|Bit2|inst1|X1~combout\ & (!\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & \inst2|inst|inst1|inst3|inst2~combout\)) # (\inst|inst|inst1|Bit2|inst1|X1~combout\ & (\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & 
-- !\inst2|inst|inst1|inst3|inst2~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000000000100000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	datab => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst2|inst|inst1|inst3|ALT_INV_inst2~combout\,
	datad => \inst2|inst|inst1|inst3|inst|ALT_INV_inst~combout\,
	datae => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst7|inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst7|inst|inst|inst1|Bit2|inst|And1~combout\);

-- Location: MLABCELL_X36_Y3_N54
\inst2|inst|inst|inst2|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|inst2|inst|inst~combout\ = ( \inst4|inst|inst|inst|Bit0|inst|X1~combout\ & ( !\inst|inst|inst|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\) # ((!\inst2|inst|inst1|inst|inst1|inst2~combout\ & 
-- !\inst2|inst|inst1|inst|inst|inst2~combout\)))) ) ) # ( !\inst4|inst|inst|inst|Bit0|inst|X1~combout\ & ( !\inst|inst|inst|Bit1|inst1|X1~combout\ $ (((!\inst2|inst|inst1|inst|inst1|inst2~combout\ & (!\inst2|inst|inst1|inst|inst|inst2~combout\ & 
-- !\inst5|inst|inst|inst|Bit0|inst|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111110000000011111111000000000000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst1|inst|inst1|ALT_INV_inst2~combout\,
	datab => \inst2|inst|inst1|inst|inst|ALT_INV_inst2~combout\,
	datac => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst|inst|Bit1|inst1|ALT_INV_X1~combout\,
	dataf => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst|inst|inst2|inst|inst~combout\);

-- Location: MLABCELL_X36_Y3_N21
\inst2|inst|inst|inst3|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|inst3|inst|inst~combout\ = ( \inst4|inst|inst|inst|Bit0|inst|X1~combout\ & ( !\inst5|inst|inst|inst|Bit0|inst|X1~combout\ $ (((\inst2|inst|inst1|inst|inst1|inst2~combout\) # (\inst2|inst|inst1|inst|inst|inst2~combout\))) ) ) # ( 
-- !\inst4|inst|inst|inst|Bit0|inst|X1~combout\ & ( !\inst5|inst|inst|inst|Bit0|inst|X1~combout\ $ (((!\inst2|inst|inst1|inst|inst|inst2~combout\ & !\inst2|inst|inst1|inst|inst1|inst2~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst2|inst|inst1|inst|inst|ALT_INV_inst2~combout\,
	datad => \inst2|inst|inst1|inst|inst1|ALT_INV_inst2~combout\,
	dataf => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst2|inst|inst|inst3|inst|inst~combout\);

-- Location: MLABCELL_X36_Y3_N36
\inst2|inst|inst1|inst|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1|inst|inst|inst~combout\ = ( \inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( \inst2|inst|inst1|inst3|inst2~combout\ & ( !\inst|inst|inst1|Bit3|inst1|X1~combout\ $ (((!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & 
-- (\inst4|inst|inst|inst1|Bit2|inst|X1~combout\ & !\inst5|inst|inst|inst1|Bit2|inst|X1~combout\)) # (\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & ((!\inst5|inst|inst|inst1|Bit2|inst|X1~combout\) # (\inst4|inst|inst|inst1|Bit2|inst|X1~combout\))))) ) ) ) # 
-- ( !\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( \inst2|inst|inst1|inst3|inst2~combout\ & ( !\inst|inst|inst1|Bit3|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst1|Bit2|inst|X1~combout\) # (\inst4|inst|inst|inst1|Bit2|inst|X1~combout\))) ) ) ) # ( 
-- \inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst2|inst|inst1|inst3|inst2~combout\ & ( !\inst|inst|inst1|Bit3|inst1|X1~combout\ $ (((\inst4|inst|inst|inst1|Bit2|inst|X1~combout\ & !\inst5|inst|inst|inst1|Bit2|inst|X1~combout\))) ) ) ) # ( 
-- !\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst2|inst|inst1|inst3|inst2~combout\ & ( !\inst|inst|inst1|Bit3|inst1|X1~combout\ $ (((!\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & (\inst4|inst|inst|inst1|Bit2|inst|X1~combout\ & 
-- !\inst5|inst|inst|inst1|Bit2|inst|X1~combout\)) # (\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & ((!\inst5|inst|inst|inst1|Bit2|inst|X1~combout\) # (\inst4|inst|inst|inst1|Bit2|inst|X1~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011111100001110000111111000000001111110000111000011111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst|inst|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	datad => \inst5|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datae => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst2|inst|inst1|inst3|ALT_INV_inst2~combout\,
	combout => \inst2|inst|inst1|inst|inst|inst~combout\);

-- Location: LABCELL_X37_Y3_N12
\inst7|inst|inst|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst|inst|Bit1|inst|And1~combout\ = ( !\inst2|inst|inst1|inst|inst|inst~combout\ & ( (\inst7|inst|inst|inst1|Bit2|inst|And1~combout\ & (!\inst2|inst|inst|inst2|inst|inst~combout\ & !\inst2|inst|inst|inst3|inst|inst~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datac => \inst2|inst|inst|inst2|inst|ALT_INV_inst~combout\,
	datad => \inst2|inst|inst|inst3|inst|ALT_INV_inst~combout\,
	dataf => \inst2|inst|inst1|inst|inst|ALT_INV_inst~combout\,
	combout => \inst7|inst|inst|inst|Bit1|inst|And1~combout\);

-- Location: LABCELL_X34_Y3_N54
\inst24|inst7|O1[31]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[31]~35_combout\ = ( \inst2|inst|inst|inst1|inst|inst~combout\ & ( \inst7|inst|inst|inst|Bit1|inst|And1~combout\ & ( (((!\inst7|inst|inst|inst|Bit3|inst|X1~1_combout\ & \inst24|inst7|O1[31]~32_combout\)) # 
-- (\inst24|inst7|O1[31]~34_combout\)) # (\inst24|inst7|O1[31]~179_combout\) ) ) ) # ( !\inst2|inst|inst|inst1|inst|inst~combout\ & ( \inst7|inst|inst|inst|Bit1|inst|And1~combout\ & ( (((\inst7|inst|inst|inst|Bit3|inst|X1~1_combout\ & 
-- \inst24|inst7|O1[31]~32_combout\)) # (\inst24|inst7|O1[31]~34_combout\)) # (\inst24|inst7|O1[31]~179_combout\) ) ) ) # ( \inst2|inst|inst|inst1|inst|inst~combout\ & ( !\inst7|inst|inst|inst|Bit1|inst|And1~combout\ & ( 
-- (((!\inst7|inst|inst|inst|Bit3|inst|X1~1_combout\ & \inst24|inst7|O1[31]~32_combout\)) # (\inst24|inst7|O1[31]~34_combout\)) # (\inst24|inst7|O1[31]~179_combout\) ) ) ) # ( !\inst2|inst|inst|inst1|inst|inst~combout\ & ( 
-- !\inst7|inst|inst|inst|Bit1|inst|And1~combout\ & ( (((!\inst7|inst|inst|inst|Bit3|inst|X1~1_combout\ & \inst24|inst7|O1[31]~32_combout\)) # (\inst24|inst7|O1[31]~34_combout\)) # (\inst24|inst7|O1[31]~179_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111111001111111011111100111111011111110011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst|inst|Bit3|inst|ALT_INV_X1~1_combout\,
	datab => \inst24|inst7|ALT_INV_O1[31]~179_combout\,
	datac => \inst24|inst7|ALT_INV_O1[31]~34_combout\,
	datad => \inst24|inst7|ALT_INV_O1[31]~32_combout\,
	datae => \inst2|inst|inst|inst1|inst|ALT_INV_inst~combout\,
	dataf => \inst7|inst|inst|inst|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst24|inst7|O1[31]~35_combout\);

-- Location: LABCELL_X34_Y3_N30
\inst24|inst7|O1[30]~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[30]~175_combout\ = ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (((\OP[1]~input_o\ & ((!\DATA1[30]~input_o\) # (!\DATA2[30]~input_o\)))))) # (\OP[2]~input_o\ & ((((!\OP[1]~input_o\)) # (\inst24|inst7|O1[30]~37_combout\)))) ) ) # ( 
-- \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (\DATA1[30]~input_o\ & (((\OP[1]~input_o\))))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ((\DATA2[30]~input_o\))) # 
-- (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & (\DATA1[30]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010110101111010101010010001101010101100011010101010101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_DATA1[30]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_DATA2[30]~input_o\,
	datag => \inst24|inst7|ALT_INV_O1[30]~37_combout\,
	combout => \inst24|inst7|O1[30]~175_combout\);

-- Location: LABCELL_X34_Y3_N27
\inst24|inst7|O1[30]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[30]~36_combout\ = ( \inst24|inst7|O1[31]~33_combout\ & ( !\inst|inst|inst|Bit2|inst1|X1~combout\ $ (!\inst|inst|inst|Bit1|inst2~combout\ $ (!\inst6|inst|inst|inst|Bit1|inst|And1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|Bit2|inst1|ALT_INV_X1~combout\,
	datac => \inst|inst|inst|Bit1|ALT_INV_inst2~combout\,
	datad => \inst6|inst|inst|inst|Bit1|inst|ALT_INV_And1~combout\,
	dataf => \inst24|inst7|ALT_INV_O1[31]~33_combout\,
	combout => \inst24|inst7|O1[30]~36_combout\);

-- Location: LABCELL_X34_Y3_N39
\inst24|inst7|O1[30]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[30]~37_combout\ = ( \inst7|inst|inst|inst|Bit1|inst|And1~combout\ & ( (((\inst2|inst|inst|inst1|inst|inst~combout\ & \inst24|inst7|O1[31]~32_combout\)) # (\inst24|inst7|O1[30]~36_combout\)) # (\inst24|inst7|O1[30]~175_combout\) ) ) # ( 
-- !\inst7|inst|inst|inst|Bit1|inst|And1~combout\ & ( (((!\inst2|inst|inst|inst1|inst|inst~combout\ & \inst24|inst7|O1[31]~32_combout\)) # (\inst24|inst7|O1[30]~36_combout\)) # (\inst24|inst7|O1[30]~175_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111111111001011111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst|inst1|inst|ALT_INV_inst~combout\,
	datab => \inst24|inst7|ALT_INV_O1[31]~32_combout\,
	datac => \inst24|inst7|ALT_INV_O1[30]~175_combout\,
	datad => \inst24|inst7|ALT_INV_O1[30]~36_combout\,
	dataf => \inst7|inst|inst|inst|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst24|inst7|O1[30]~37_combout\);

-- Location: LABCELL_X37_Y3_N36
\inst24|inst7|O1[29]~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[29]~171_combout\ = ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & (\inst24|inst7|O1[29]~40_combout\)) # (\OP[0]~input_o\ & ((\DATA2[29]~input_o\)))))) ) ) # ( 
-- \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & (\inst24|inst7|O1[29]~40_combout\)) # (\OP[0]~input_o\ & ((\DATA1[29]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011011101000000001101110100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[29]~40_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_DATA1[29]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	datae => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	datag => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst24|inst7|O1[29]~171_combout\);

-- Location: LABCELL_X37_Y3_N6
\inst24|inst7|O1[29]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[29]~38_combout\ = ( \inst2|inst|inst1|inst|inst|inst~combout\ & ( (!\inst2|inst|inst|inst2|inst|inst~combout\ & \inst24|inst7|O1[31]~32_combout\) ) ) # ( !\inst2|inst|inst1|inst|inst|inst~combout\ & ( (\inst24|inst7|O1[31]~32_combout\ & 
-- (!\inst2|inst|inst|inst2|inst|inst~combout\ $ (((!\inst2|inst|inst|inst3|inst|inst~combout\ & \inst7|inst|inst|inst1|Bit2|inst|And1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010010000000001101001000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst|inst3|inst|ALT_INV_inst~combout\,
	datab => \inst7|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datac => \inst2|inst|inst|inst2|inst|ALT_INV_inst~combout\,
	datad => \inst24|inst7|ALT_INV_O1[31]~32_combout\,
	dataf => \inst2|inst|inst1|inst|inst|ALT_INV_inst~combout\,
	combout => \inst24|inst7|O1[29]~38_combout\);

-- Location: LABCELL_X37_Y3_N33
\inst24|inst7|O1[29]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[29]~39_combout\ = ( \DATA2[29]~input_o\ & ( (\OP[1]~input_o\ & (!\OP[2]~input_o\ & (!\OP[0]~input_o\ $ (\DATA1[29]~input_o\)))) ) ) # ( !\DATA2[29]~input_o\ & ( (\OP[1]~input_o\ & (!\OP[2]~input_o\ & ((!\OP[0]~input_o\) # 
-- (\DATA1[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110000001000000011000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_DATA1[29]~input_o\,
	dataf => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst24|inst7|O1[29]~39_combout\);

-- Location: MLABCELL_X36_Y3_N24
\inst6|inst|inst|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst|Bit1|inst|X1~combout\ = ( \inst6|inst|inst|inst1|Bit2|inst|And1~combout\ & ( \inst|inst|inst1|Bit3|inst|X1~combout\ & ( !\inst|inst|inst|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & 
-- (\inst|inst|inst1|Bit3|inst2~combout\ & \inst4|inst|inst|inst|Bit0|inst|X1~combout\)) # (\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & ((\inst4|inst|inst|inst|Bit0|inst|X1~combout\) # (\inst|inst|inst1|Bit3|inst2~combout\))))) ) ) ) # ( 
-- !\inst6|inst|inst|inst1|Bit2|inst|And1~combout\ & ( \inst|inst|inst1|Bit3|inst|X1~combout\ & ( !\inst|inst|inst|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (\inst|inst|inst1|Bit3|inst2~combout\ & 
-- \inst4|inst|inst|inst|Bit0|inst|X1~combout\)) # (\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & ((\inst4|inst|inst|inst|Bit0|inst|X1~combout\) # (\inst|inst|inst1|Bit3|inst2~combout\))))) ) ) ) # ( \inst6|inst|inst|inst1|Bit2|inst|And1~combout\ & ( 
-- !\inst|inst|inst1|Bit3|inst|X1~combout\ & ( !\inst|inst|inst|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (!\inst|inst|inst1|Bit3|inst2~combout\ & !\inst4|inst|inst|inst|Bit0|inst|X1~combout\)) # 
-- (\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (\inst|inst|inst1|Bit3|inst2~combout\ & \inst4|inst|inst|inst|Bit0|inst|X1~combout\)))) ) ) ) # ( !\inst6|inst|inst|inst1|Bit2|inst|And1~combout\ & ( !\inst|inst|inst1|Bit3|inst|X1~combout\ & ( 
-- !\inst|inst|inst|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & (\inst|inst|inst1|Bit3|inst2~combout\ & \inst4|inst|inst|inst|Bit0|inst|X1~combout\)) # (\inst5|inst|inst|inst|Bit0|inst|X1~combout\ & 
-- ((\inst4|inst|inst|inst|Bit0|inst|X1~combout\) # (\inst|inst|inst1|Bit3|inst2~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100000010111011111101000000111101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst|inst1|Bit3|ALT_INV_inst2~combout\,
	datac => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datae => \inst6|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X37_Y3_N24
\inst24|inst7|O1[29]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[29]~40_combout\ = ( \inst24|inst7|O1[31]~33_combout\ & ( (((\inst6|inst|inst|inst|Bit1|inst|X1~combout\) # (\inst24|inst7|O1[29]~39_combout\)) # (\inst24|inst7|O1[29]~38_combout\)) # (\inst24|inst7|O1[29]~171_combout\) ) ) # ( 
-- !\inst24|inst7|O1[31]~33_combout\ & ( ((\inst24|inst7|O1[29]~39_combout\) # (\inst24|inst7|O1[29]~38_combout\)) # (\inst24|inst7|O1[29]~171_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[29]~171_combout\,
	datab => \inst24|inst7|ALT_INV_O1[29]~38_combout\,
	datac => \inst24|inst7|ALT_INV_O1[29]~39_combout\,
	datad => \inst6|inst|inst|inst|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst24|inst7|ALT_INV_O1[31]~33_combout\,
	combout => \inst24|inst7|O1[29]~40_combout\);

-- Location: MLABCELL_X36_Y3_N51
\inst6|inst|inst|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst|Bit0|inst|X1~combout\ = ( \inst|inst|inst1|Bit3|inst|X1~combout\ & ( !\inst5|inst|inst|inst|Bit0|inst|X1~combout\ $ (!\inst|inst|inst1|Bit3|inst2~combout\ $ (!\inst4|inst|inst|inst|Bit0|inst|X1~combout\)) ) ) # ( 
-- !\inst|inst|inst1|Bit3|inst|X1~combout\ & ( !\inst5|inst|inst|inst|Bit0|inst|X1~combout\ $ (!\inst|inst|inst1|Bit3|inst2~combout\ $ (!\inst6|inst|inst|inst1|Bit2|inst|And1~combout\ $ (\inst4|inst|inst|inst|Bit0|inst|X1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001101001100101100110100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst|inst1|Bit3|ALT_INV_inst2~combout\,
	datac => \inst6|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datad => \inst4|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst|inst|Bit0|inst|X1~combout\);

-- Location: LABCELL_X37_Y3_N9
\inst24|inst7|O1[28]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[28]~41_combout\ = ( \inst2|inst|inst1|inst|inst|inst~combout\ & ( (!\inst2|inst|inst|inst3|inst|inst~combout\ & \inst24|inst7|O1[31]~32_combout\) ) ) # ( !\inst2|inst|inst1|inst|inst|inst~combout\ & ( (\inst24|inst7|O1[31]~32_combout\ & 
-- (!\inst2|inst|inst|inst3|inst|inst~combout\ $ (\inst7|inst|inst|inst1|Bit2|inst|And1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst|inst3|inst|ALT_INV_inst~combout\,
	datab => \inst7|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datad => \inst24|inst7|ALT_INV_O1[31]~32_combout\,
	dataf => \inst2|inst|inst1|inst|inst|ALT_INV_inst~combout\,
	combout => \inst24|inst7|O1[28]~41_combout\);

-- Location: LABCELL_X37_Y3_N42
\inst24|inst7|O1[28]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[28]~42_combout\ = ( \DATA1[28]~input_o\ & ( (\OP[1]~input_o\ & (!\OP[2]~input_o\ & ((!\DATA2[28]~input_o\) # (\OP[0]~input_o\)))) ) ) # ( !\DATA1[28]~input_o\ & ( (!\OP[0]~input_o\ & (\OP[1]~input_o\ & !\OP[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000110000000100000011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_DATA2[28]~input_o\,
	dataf => \ALT_INV_DATA1[28]~input_o\,
	combout => \inst24|inst7|O1[28]~42_combout\);

-- Location: LABCELL_X37_Y3_N0
\inst24|inst7|O1[28]~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[28]~167_combout\ = ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & (\inst24|inst7|O1[28]~43_combout\)) # (\OP[0]~input_o\ & ((\DATA2[28]~input_o\)))))) ) ) # ( 
-- \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & (\inst24|inst7|O1[28]~43_combout\)) # (\OP[0]~input_o\ & ((\DATA1[28]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011011101000000001101110100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[28]~43_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_DATA1[28]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	datae => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	datag => \ALT_INV_DATA2[28]~input_o\,
	combout => \inst24|inst7|O1[28]~167_combout\);

-- Location: LABCELL_X37_Y3_N18
\inst24|inst7|O1[28]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[28]~43_combout\ = ( \inst24|inst7|O1[31]~33_combout\ & ( (((\inst24|inst7|O1[28]~167_combout\) # (\inst24|inst7|O1[28]~42_combout\)) # (\inst24|inst7|O1[28]~41_combout\)) # (\inst6|inst|inst|inst|Bit0|inst|X1~combout\) ) ) # ( 
-- !\inst24|inst7|O1[31]~33_combout\ & ( ((\inst24|inst7|O1[28]~167_combout\) # (\inst24|inst7|O1[28]~42_combout\)) # (\inst24|inst7|O1[28]~41_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst24|inst7|ALT_INV_O1[28]~41_combout\,
	datac => \inst24|inst7|ALT_INV_O1[28]~42_combout\,
	datad => \inst24|inst7|ALT_INV_O1[28]~167_combout\,
	dataf => \inst24|inst7|ALT_INV_O1[31]~33_combout\,
	combout => \inst24|inst7|O1[28]~43_combout\);

-- Location: LABCELL_X37_Y3_N48
\inst24|inst7|O1[27]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[27]~45_combout\ = ( \DATA2[27]~input_o\ & ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst2|inst|inst1|inst|inst|inst~combout\ $ ((\inst7|inst|inst|inst1|Bit2|inst|And1~combout\)))) # (\OP[1]~input_o\ & (((\DATA1[27]~input_o\)))) ) ) ) # 
-- ( !\DATA2[27]~input_o\ & ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst2|inst|inst1|inst|inst|inst~combout\ $ ((\inst7|inst|inst|inst1|Bit2|inst|And1~combout\)))) # (\OP[1]~input_o\ & (((\DATA1[27]~input_o\)))) ) ) ) # ( \DATA2[27]~input_o\ & ( 
-- !\OP[0]~input_o\ & ( (!\DATA1[27]~input_o\ & \OP[1]~input_o\) ) ) ) # ( !\DATA2[27]~input_o\ & ( !\OP[0]~input_o\ & ( \OP[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111000010011001000011111001100100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst1|inst|inst|ALT_INV_inst~combout\,
	datab => \inst7|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datac => \ALT_INV_DATA1[27]~input_o\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \ALT_INV_DATA2[27]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[27]~45_combout\);

-- Location: LABCELL_X37_Y3_N45
\inst24|inst7|O1[27]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[27]~44_combout\ = (!\OP[0]~input_o\ & (!\OP[1]~input_o\ & (!\inst6|inst|inst|inst1|Bit2|inst|And1~combout\ $ (\inst|inst|inst1|Bit3|inst|X1~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000100000000000100010000000000010001000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst6|inst|inst|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datad => \inst|inst|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst24|inst7|O1[27]~44_combout\);

-- Location: LABCELL_X37_Y3_N54
\inst24|inst7|O1[27]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[27]~46_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA2[27]~input_o\ & ( (\OP[1]~input_o\ & ((!\OP[0]~input_o\ & ((!\inst24|inst7|O1[27]~47_combout\))) # (\OP[0]~input_o\ & (!\DATA1[27]~input_o\)))) ) ) ) # ( 
-- !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA2[27]~input_o\ & ( (!\OP[0]~input_o\ & (\OP[1]~input_o\ & !\inst24|inst7|O1[27]~47_combout\)) ) ) ) # ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( !\DATA2[27]~input_o\ & ( 
-- (\OP[1]~input_o\ & ((!\OP[0]~input_o\ & ((!\inst24|inst7|O1[27]~47_combout\))) # (\OP[0]~input_o\ & (!\DATA1[27]~input_o\)))) ) ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( !\DATA2[27]~input_o\ & ( (\OP[1]~input_o\ & 
-- ((!\inst24|inst7|O1[27]~47_combout\) # (\OP[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010001001100100001000000100010000000000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_DATA1[27]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[27]~47_combout\,
	datae => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_DATA2[27]~input_o\,
	combout => \inst24|inst7|O1[27]~46_combout\);

-- Location: LABCELL_X37_Y3_N15
\inst24|inst7|O1[27]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[27]~47_combout\ = ( \OP[2]~input_o\ & ( !\inst24|inst7|O1[27]~46_combout\ ) ) # ( !\OP[2]~input_o\ & ( (\inst24|inst7|O1[27]~44_combout\) # (\inst24|inst7|O1[27]~45_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[27]~45_combout\,
	datac => \inst24|inst7|ALT_INV_O1[27]~44_combout\,
	datad => \inst24|inst7|ALT_INV_O1[27]~46_combout\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst24|inst7|O1[27]~47_combout\);

-- Location: LABCELL_X35_Y3_N42
\inst24|inst7|O1[26]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[26]~49_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA1[26]~input_o\ ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA2[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[26]~input_o\,
	datad => \ALT_INV_DATA1[26]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[26]~49_combout\);

-- Location: MLABCELL_X36_Y4_N18
\inst7|inst|inst|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst|inst1|Bit2|inst|X1~combout\ = ( \inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & ( \inst7|inst|inst1|inst|Bit3|inst|And1~combout\ & ( !\inst|inst|inst1|Bit2|inst1|X1~combout\ $ (((\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & 
-- !\inst2|inst|inst1|inst3|inst2~combout\))) ) ) ) # ( !\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & ( \inst7|inst|inst1|inst|Bit3|inst|And1~combout\ & ( !\inst|inst|inst1|Bit2|inst1|X1~combout\ $ (((!\inst2|inst|inst1|inst3|inst2~combout\) # 
-- (\inst5|inst|inst|inst1|Bit1|inst|X1~combout\))) ) ) ) # ( \inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst7|inst|inst1|inst|Bit3|inst|And1~combout\ & ( !\inst|inst|inst1|Bit2|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & 
-- (!\inst2|inst|inst1|inst3|inst2~combout\ & !\inst2|inst|inst1|inst3|inst|inst~combout\)) # (\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ((!\inst2|inst|inst1|inst3|inst2~combout\) # (!\inst2|inst|inst1|inst3|inst|inst~combout\))))) ) ) ) # ( 
-- !\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst7|inst|inst1|inst|Bit3|inst|And1~combout\ & ( !\inst|inst|inst1|Bit2|inst1|X1~combout\ $ (((!\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ((!\inst2|inst|inst1|inst3|inst2~combout\) # 
-- (!\inst2|inst|inst1|inst3|inst|inst~combout\))) # (\inst5|inst|inst|inst1|Bit1|inst|X1~combout\ & ((\inst2|inst|inst1|inst3|inst|inst~combout\) # (\inst2|inst|inst1|inst3|inst2~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101011001010110011001101001011001010110011001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	datab => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst2|inst|inst1|inst3|ALT_INV_inst2~combout\,
	datad => \inst2|inst|inst1|inst3|inst|ALT_INV_inst~combout\,
	datae => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst7|inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst7|inst|inst|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X35_Y4_N36
\inst6|inst|inst|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst1|Bit2|inst|X1~combout\ = ( \inst|inst|inst1|Bit1|inst|X1~combout\ & ( !\inst|inst|inst1|Bit1|inst2~combout\ $ (!\inst|inst|inst1|Bit2|inst1|X1~combout\) ) ) # ( !\inst|inst|inst1|Bit1|inst|X1~combout\ & ( 
-- !\inst|inst|inst1|Bit1|inst2~combout\ $ (!\inst|inst|inst1|Bit2|inst1|X1~combout\ $ (!\inst6|inst|inst|inst1|Bit0|inst|And1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst1|Bit1|ALT_INV_inst2~combout\,
	datac => \inst|inst|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	datad => \inst6|inst|inst|inst1|Bit0|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X35_Y3_N18
\inst24|inst7|O1[26]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[26]~48_combout\ = ( \OP[1]~input_o\ & ( \DATA1[26]~input_o\ & ( (\DATA2[26]~input_o\ & !\OP[0]~input_o\) ) ) ) # ( !\OP[1]~input_o\ & ( \DATA1[26]~input_o\ & ( (!\OP[0]~input_o\ & ((!\inst6|inst|inst|inst1|Bit2|inst|X1~combout\))) # 
-- (\OP[0]~input_o\ & (!\inst7|inst|inst|inst1|Bit2|inst|X1~combout\)) ) ) ) # ( \OP[1]~input_o\ & ( !\DATA1[26]~input_o\ & ( \OP[0]~input_o\ ) ) ) # ( !\OP[1]~input_o\ & ( !\DATA1[26]~input_o\ & ( (!\OP[0]~input_o\ & 
-- ((!\inst6|inst|inst|inst1|Bit2|inst|X1~combout\))) # (\OP[0]~input_o\ & (!\inst7|inst|inst|inst1|Bit2|inst|X1~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010101010000000001111111111110000101010100011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datab => \ALT_INV_DATA2[26]~input_o\,
	datac => \inst6|inst|inst|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_DATA1[26]~input_o\,
	combout => \inst24|inst7|O1[26]~48_combout\);

-- Location: LABCELL_X35_Y3_N54
\inst24|inst7|O1[26]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[26]~50_combout\ = ( \OP[2]~input_o\ & ( \inst24|inst7|O1[26]~48_combout\ & ( (!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & ((\inst24|inst7|O1[26]~50_combout\))) # (\OP[0]~input_o\ & (\inst24|inst7|O1[26]~49_combout\))) ) ) ) # ( 
-- \OP[2]~input_o\ & ( !\inst24|inst7|O1[26]~48_combout\ & ( (!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & ((\inst24|inst7|O1[26]~50_combout\))) # (\OP[0]~input_o\ & (\inst24|inst7|O1[26]~49_combout\))) ) ) ) # ( !\OP[2]~input_o\ & ( 
-- !\inst24|inst7|O1[26]~48_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101011111011101100000000000000001010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[26]~49_combout\,
	datac => \inst24|inst7|ALT_INV_O1[26]~50_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[26]~48_combout\,
	combout => \inst24|inst7|O1[26]~50_combout\);

-- Location: MLABCELL_X36_Y4_N36
\inst7|inst|inst|inst1|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst|inst1|Bit1|inst|X1~combout\ = ( \inst7|inst|inst1|inst|Bit3|inst|And1~combout\ & ( !\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ $ (!\inst2|inst|inst1|inst3|inst2~combout\ $ (\inst5|inst|inst|inst1|Bit1|inst|X1~combout\)) ) ) # ( 
-- !\inst7|inst|inst1|inst|Bit3|inst|And1~combout\ & ( !\inst4|inst|inst|inst1|Bit1|inst|X1~combout\ $ (!\inst2|inst|inst1|inst3|inst|inst~combout\ $ (!\inst2|inst|inst1|inst3|inst2~combout\ $ (\inst5|inst|inst|inst1|Bit1|inst|X1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001101001100101100110100101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst2|inst|inst1|inst3|inst|ALT_INV_inst~combout\,
	datac => \inst2|inst|inst1|inst3|ALT_INV_inst2~combout\,
	datad => \inst5|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	dataf => \inst7|inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst7|inst|inst|inst1|Bit1|inst|X1~combout\);

-- Location: LABCELL_X35_Y4_N30
\inst24|inst7|O1[25]~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[25]~163_combout\ = ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & ((!\inst|inst|inst1|Bit1|inst|X1~combout\ $ ((!\inst6|inst|inst|inst1|Bit0|inst|And1~combout\))))) # (\OP[1]~input_o\ & ((!\DATA1[25]~input_o\) # (((!\DATA2[25]~input_o\))))) ) 
-- ) # ( \OP[0]~input_o\ & ( ((!\OP[1]~input_o\ & (((\inst7|inst|inst|inst1|Bit1|inst|X1~combout\)))) # (\OP[1]~input_o\ & (\DATA1[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011110011111111000011110101010100111100101010100000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[25]~input_o\,
	datab => \inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst7|inst|inst|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_DATA2[25]~input_o\,
	datag => \inst6|inst|inst|inst1|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst24|inst7|O1[25]~163_combout\);

-- Location: LABCELL_X35_Y4_N18
\inst24|inst7|O1[25]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[25]~51_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA1[25]~input_o\ ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA2[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA1[25]~input_o\,
	datac => \ALT_INV_DATA2[25]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[25]~51_combout\);

-- Location: LABCELL_X35_Y4_N54
\inst24|inst7|O1[25]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[25]~52_combout\ = ( \inst24|inst7|O1[25]~52_combout\ & ( \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (\inst24|inst7|O1[25]~163_combout\)) # (\OP[2]~input_o\ & (((!\OP[1]~input_o\) # (\inst24|inst7|O1[25]~51_combout\)))) ) ) ) # ( 
-- !\inst24|inst7|O1[25]~52_combout\ & ( \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (\inst24|inst7|O1[25]~163_combout\)) # (\OP[2]~input_o\ & (((!\OP[1]~input_o\) # (\inst24|inst7|O1[25]~51_combout\)))) ) ) ) # ( \inst24|inst7|O1[25]~52_combout\ & ( 
-- !\OP[0]~input_o\ & ( (\inst24|inst7|O1[25]~163_combout\) # (\OP[2]~input_o\) ) ) ) # ( !\inst24|inst7|O1[25]~52_combout\ & ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (\inst24|inst7|O1[25]~163_combout\)) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110111011101110111001001110111011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[25]~163_combout\,
	datac => \inst24|inst7|ALT_INV_O1[25]~51_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \inst24|inst7|ALT_INV_O1[25]~52_combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[25]~52_combout\);

-- Location: MLABCELL_X36_Y4_N54
\inst|inst|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|Bit0|inst|X1~combout\ = ( \inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( !\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ $ (((\inst|inst1|inst|Bit3|inst|And1~combout\) # (\inst|inst1|inst|Bit3|inst1|And1~combout\))) ) ) # ( 
-- !\inst4|inst|inst|inst1|Bit0|inst|X1~combout\ & ( !\inst5|inst|inst|inst1|Bit0|inst|X1~combout\ $ (((!\inst|inst1|inst|Bit3|inst1|And1~combout\ & !\inst|inst1|inst|Bit3|inst|And1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011000011001100111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst|inst1|inst|Bit3|inst1|ALT_INV_And1~combout\,
	datad => \inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \inst4|inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst|inst|inst1|Bit0|inst|X1~combout\);

-- Location: MLABCELL_X36_Y4_N30
\inst24|inst7|O1[24]~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[24]~159_combout\ = ( !\OP[0]~input_o\ & ( !\inst|inst|inst1|Bit0|inst|X1~combout\ $ (((!\inst6|inst|inst1|inst|Bit2|inst|And1~combout\ & (!\inst|inst1|inst|Bit3|inst1|X1~combout\ $ ((\inst|inst1|inst|Bit2|inst2~combout\)))))) ) ) # ( 
-- \OP[0]~input_o\ & ( ((!\inst2|inst|inst1|inst3|inst|inst~combout\ $ (((!\inst7|inst|inst1|inst|Bit3|inst|And1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111110110000010000011110000111101111101100000101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	datab => \inst|inst1|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datac => \inst2|inst|inst1|inst3|inst|ALT_INV_inst~combout\,
	datad => \inst|inst|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst7|inst|inst1|inst|Bit3|inst|ALT_INV_And1~combout\,
	datag => \inst|inst1|inst|Bit2|ALT_INV_inst2~combout\,
	combout => \inst24|inst7|O1[24]~159_combout\);

-- Location: LABCELL_X34_Y4_N24
\inst24|inst7|O1[24]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[24]~53_combout\ = ( \OP[1]~input_o\ & ( (!\DATA1[24]~input_o\ & ((\OP[0]~input_o\))) # (\DATA1[24]~input_o\ & (\DATA2[24]~input_o\ & !\OP[0]~input_o\)) ) ) # ( !\OP[1]~input_o\ & ( !\inst24|inst7|O1[24]~159_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000010001110011000001000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[24]~input_o\,
	datab => \ALT_INV_DATA1[24]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[24]~159_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[24]~53_combout\);

-- Location: LABCELL_X34_Y4_N27
\inst24|inst7|O1[24]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[24]~54_combout\ = (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & (\DATA2[24]~input_o\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ((\DATA1[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[24]~input_o\,
	datab => \ALT_INV_DATA1[24]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[24]~54_combout\);

-- Location: LABCELL_X34_Y4_N30
\inst24|inst7|O1[24]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[24]~55_combout\ = ( \inst24|inst7|O1[24]~54_combout\ & ( \OP[2]~input_o\ & ( (!\OP[1]~input_o\) # ((\OP[0]~input_o\) # (\inst24|inst7|O1[24]~55_combout\)) ) ) ) # ( !\inst24|inst7|O1[24]~54_combout\ & ( \OP[2]~input_o\ & ( 
-- (!\OP[1]~input_o\) # ((\inst24|inst7|O1[24]~55_combout\ & !\OP[0]~input_o\)) ) ) ) # ( \inst24|inst7|O1[24]~54_combout\ & ( !\OP[2]~input_o\ & ( !\inst24|inst7|O1[24]~53_combout\ ) ) ) # ( !\inst24|inst7|O1[24]~54_combout\ & ( !\OP[2]~input_o\ & ( 
-- !\inst24|inst7|O1[24]~53_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010111011101010101011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[24]~55_combout\,
	datac => \inst24|inst7|ALT_INV_O1[24]~53_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \inst24|inst7|ALT_INV_O1[24]~54_combout\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst24|inst7|O1[24]~55_combout\);

-- Location: LABCELL_X37_Y4_N48
\inst7|inst|inst1|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst|Bit3|inst|X1~combout\ = ( \inst4|inst|inst1|inst|Bit2|inst|X1~combout\ & ( !\inst|inst1|inst|Bit3|inst1|X1~combout\ $ (((!\inst7|inst|inst1|inst|Bit1|inst|And1~combout\ & (\inst5|inst|inst1|inst|Bit2|inst|X1~combout\ & 
-- \inst2|inst1|inst|inst2|inst2~combout\)) # (\inst7|inst|inst1|inst|Bit1|inst|And1~combout\ & ((\inst2|inst1|inst|inst2|inst2~combout\) # (\inst5|inst|inst1|inst|Bit2|inst|X1~combout\))))) ) ) # ( !\inst4|inst|inst1|inst|Bit2|inst|X1~combout\ & ( 
-- !\inst|inst1|inst|Bit3|inst1|X1~combout\ $ (((!\inst7|inst|inst1|inst|Bit1|inst|And1~combout\ & ((\inst2|inst1|inst|inst2|inst2~combout\) # (\inst5|inst|inst1|inst|Bit2|inst|X1~combout\))) # (\inst7|inst|inst1|inst|Bit1|inst|And1~combout\ & 
-- ((!\inst5|inst|inst1|inst|Bit2|inst|X1~combout\) # (!\inst2|inst1|inst|inst2|inst2~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010101010110100101010101011010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datab => \inst7|inst|inst1|inst|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst5|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst2|inst1|inst|inst2|ALT_INV_inst2~combout\,
	dataf => \inst4|inst|inst1|inst|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst1|inst|Bit3|inst|X1~combout\);

-- Location: MLABCELL_X36_Y4_N57
\inst6|inst|inst1|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst1|inst|Bit3|inst|X1~combout\ = !\inst6|inst|inst1|inst|Bit2|inst|And1~combout\ $ (!\inst|inst1|inst|Bit3|inst1|X1~combout\ $ (\inst|inst1|inst|Bit2|inst2~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst1|inst|Bit2|inst|ALT_INV_And1~combout\,
	datac => \inst|inst1|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datad => \inst|inst1|inst|Bit2|ALT_INV_inst2~combout\,
	combout => \inst6|inst|inst1|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X34_Y4_N6
\inst24|inst7|O1[23]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[23]~56_combout\ = ( \DATA2[23]~input_o\ & ( \OP[1]~input_o\ & ( !\DATA1[23]~input_o\ $ (!\OP[0]~input_o\) ) ) ) # ( !\DATA2[23]~input_o\ & ( \OP[1]~input_o\ & ( (!\DATA1[23]~input_o\ & \OP[0]~input_o\) ) ) ) # ( \DATA2[23]~input_o\ & ( 
-- !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & ((!\inst6|inst|inst1|inst|Bit3|inst|X1~combout\))) # (\OP[0]~input_o\ & (!\inst7|inst|inst1|inst|Bit3|inst|X1~combout\)) ) ) ) # ( !\DATA2[23]~input_o\ & ( !\OP[1]~input_o\ & ( (!\OP[0]~input_o\ & 
-- ((!\inst6|inst|inst1|inst|Bit3|inst|X1~combout\))) # (\OP[0]~input_o\ & (!\inst7|inst|inst1|inst|Bit3|inst|X1~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010101010110011001010101000000000111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst6|inst|inst1|inst|Bit3|inst|ALT_INV_X1~combout\,
	datac => \ALT_INV_DATA1[23]~input_o\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \ALT_INV_DATA2[23]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[23]~56_combout\);

-- Location: LABCELL_X34_Y4_N36
\inst24|inst7|O1[23]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[23]~57_combout\ = (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & (\DATA2[23]~input_o\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ((\DATA1[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[23]~input_o\,
	datac => \ALT_INV_DATA1[23]~input_o\,
	datad => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[23]~57_combout\);

-- Location: LABCELL_X34_Y4_N12
\inst24|inst7|O1[23]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[23]~58_combout\ = ( \OP[0]~input_o\ & ( \OP[1]~input_o\ & ( (!\OP[2]~input_o\ & (!\inst24|inst7|O1[23]~56_combout\)) # (\OP[2]~input_o\ & ((\inst24|inst7|O1[23]~57_combout\))) ) ) ) # ( !\OP[0]~input_o\ & ( \OP[1]~input_o\ & ( 
-- (!\OP[2]~input_o\ & (!\inst24|inst7|O1[23]~56_combout\)) # (\OP[2]~input_o\ & ((\inst24|inst7|O1[23]~58_combout\))) ) ) ) # ( \OP[0]~input_o\ & ( !\OP[1]~input_o\ & ( (!\inst24|inst7|O1[23]~56_combout\) # (\OP[2]~input_o\) ) ) ) # ( !\OP[0]~input_o\ & ( 
-- !\OP[1]~input_o\ & ( (!\inst24|inst7|O1[23]~56_combout\) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110110001000110111011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[23]~56_combout\,
	datac => \inst24|inst7|ALT_INV_O1[23]~57_combout\,
	datad => \inst24|inst7|ALT_INV_O1[23]~58_combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[23]~58_combout\);

-- Location: LABCELL_X37_Y4_N15
\inst|inst1|inst|Bit1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit1|inst2~combout\ = ( \inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ( (!\inst|inst1|inst|Bit0|inst2~combout\) # (\inst4|inst|inst1|inst|Bit1|inst|X1~combout\) ) ) # ( !\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ & ( 
-- (\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ & !\inst|inst1|inst|Bit0|inst2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst|inst1|inst|Bit0|ALT_INV_inst2~combout\,
	dataf => \inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst|inst1|inst|Bit1|inst2~combout\);

-- Location: LABCELL_X37_Y4_N42
\inst|inst1|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|Bit1|inst|X1~combout\ = !\inst5|inst|inst1|inst|Bit1|inst|X1~combout\ $ (!\inst4|inst|inst1|inst|Bit1|inst|X1~combout\ $ (!\inst|inst1|inst|Bit0|inst2~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst|inst1|inst|Bit0|ALT_INV_inst2~combout\,
	combout => \inst|inst1|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X37_Y4_N57
\inst6|inst|inst1|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst1|inst|Bit1|inst|And1~combout\ = ( !\inst|inst1|inst|Bit1|inst|X1~combout\ & ( (!\inst6|inst|inst1|inst1|Bit3|inst|And1~combout\ & !\inst|inst1|inst|Bit0|inst|X1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datad => \inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst1|inst|Bit1|inst|And1~combout\);

-- Location: LABCELL_X37_Y4_N24
\inst24|inst7|O1[22]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[22]~59_combout\ = ( \inst6|inst|inst1|inst|Bit1|inst|And1~combout\ & ( \inst7|inst|inst1|inst|Bit1|inst|And1~combout\ & ( !\inst|inst1|inst|Bit2|inst1|X1~combout\ $ (((!\OP[0]~input_o\ & ((!\inst|inst1|inst|Bit1|inst2~combout\))) # 
-- (\OP[0]~input_o\ & (!\inst2|inst1|inst|inst2|inst2~combout\)))) ) ) ) # ( !\inst6|inst|inst1|inst|Bit1|inst|And1~combout\ & ( \inst7|inst|inst1|inst|Bit1|inst|And1~combout\ & ( !\inst|inst1|inst|Bit2|inst1|X1~combout\ $ (((!\OP[0]~input_o\ & 
-- ((\inst|inst1|inst|Bit1|inst2~combout\))) # (\OP[0]~input_o\ & (!\inst2|inst1|inst|inst2|inst2~combout\)))) ) ) ) # ( \inst6|inst|inst1|inst|Bit1|inst|And1~combout\ & ( !\inst7|inst|inst1|inst|Bit1|inst|And1~combout\ & ( 
-- !\inst|inst1|inst|Bit2|inst1|X1~combout\ $ (((!\OP[0]~input_o\ & ((!\inst|inst1|inst|Bit1|inst2~combout\))) # (\OP[0]~input_o\ & (\inst2|inst1|inst|inst2|inst2~combout\)))) ) ) ) # ( !\inst6|inst|inst1|inst|Bit1|inst|And1~combout\ & ( 
-- !\inst7|inst|inst1|inst|Bit1|inst|And1~combout\ & ( !\inst|inst1|inst|Bit2|inst1|X1~combout\ $ (((!\OP[0]~input_o\ & ((\inst|inst1|inst|Bit1|inst2~combout\))) # (\OP[0]~input_o\ & (\inst2|inst1|inst|inst2|inst2~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000101001011010010111110000110110100000111100001111010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \inst2|inst1|inst|inst2|ALT_INV_inst2~combout\,
	datac => \inst|inst1|inst|Bit2|inst1|ALT_INV_X1~combout\,
	datad => \inst|inst1|inst|Bit1|ALT_INV_inst2~combout\,
	datae => \inst6|inst|inst1|inst|Bit1|inst|ALT_INV_And1~combout\,
	dataf => \inst7|inst|inst1|inst|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst24|inst7|O1[22]~59_combout\);

-- Location: LABCELL_X34_Y4_N48
\inst24|inst7|O1[22]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[22]~60_combout\ = ( \OP[1]~input_o\ & ( (!\DATA1[22]~input_o\ & ((\OP[0]~input_o\))) # (\DATA1[22]~input_o\ & (\DATA2[22]~input_o\ & !\OP[0]~input_o\)) ) ) # ( !\OP[1]~input_o\ & ( !\inst24|inst7|O1[22]~59_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000010001110011000001000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[22]~input_o\,
	datab => \ALT_INV_DATA1[22]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[22]~59_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[22]~60_combout\);

-- Location: LABCELL_X34_Y4_N51
\inst24|inst7|O1[22]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[22]~61_combout\ = (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & (\DATA2[22]~input_o\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ((\DATA1[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[22]~input_o\,
	datab => \ALT_INV_DATA1[22]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[22]~61_combout\);

-- Location: LABCELL_X34_Y4_N54
\inst24|inst7|O1[22]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[22]~62_combout\ = ( \inst24|inst7|O1[22]~62_combout\ & ( \OP[2]~input_o\ & ( (!\OP[0]~input_o\) # ((!\OP[1]~input_o\) # (\inst24|inst7|O1[22]~61_combout\)) ) ) ) # ( !\inst24|inst7|O1[22]~62_combout\ & ( \OP[2]~input_o\ & ( 
-- (!\OP[1]~input_o\) # ((\OP[0]~input_o\ & \inst24|inst7|O1[22]~61_combout\)) ) ) ) # ( \inst24|inst7|O1[22]~62_combout\ & ( !\OP[2]~input_o\ & ( !\inst24|inst7|O1[22]~60_combout\ ) ) ) # ( !\inst24|inst7|O1[22]~62_combout\ & ( !\OP[2]~input_o\ & ( 
-- !\inst24|inst7|O1[22]~60_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011110000111100111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[22]~60_combout\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[22]~61_combout\,
	datae => \inst24|inst7|ALT_INV_O1[22]~62_combout\,
	dataf => \ALT_INV_OP[2]~input_o\,
	combout => \inst24|inst7|O1[22]~62_combout\);

-- Location: LABCELL_X43_Y4_N12
\inst7|inst|inst1|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst|Bit1|inst|X1~combout\ = ( \inst2|inst1|inst1|inst|inst|inst~combout\ & ( !\inst2|inst1|inst|inst2|inst|inst~combout\ ) ) # ( !\inst2|inst1|inst1|inst|inst|inst~combout\ & ( !\inst2|inst1|inst|inst2|inst|inst~combout\ $ 
-- (((\inst7|inst|inst1|inst1|Bit2|inst|And1~combout\ & (!\inst|inst1|inst|Bit0|inst1|X1~combout\ $ (\inst2|inst1|inst1|inst|inst2~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111000100001110111100010000111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|Bit0|inst1|ALT_INV_X1~combout\,
	datab => \inst7|inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datac => \inst2|inst1|inst1|inst|ALT_INV_inst2~combout\,
	datad => \inst2|inst1|inst|inst2|inst|ALT_INV_inst~combout\,
	dataf => \inst2|inst1|inst1|inst|inst|ALT_INV_inst~combout\,
	combout => \inst7|inst|inst1|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X37_Y4_N3
\inst6|inst|inst1|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst1|inst|Bit1|inst|X1~combout\ = ( \inst|inst1|inst|Bit1|inst|X1~combout\ & ( (!\inst6|inst|inst1|inst1|Bit3|inst|And1~combout\ & !\inst|inst1|inst|Bit0|inst|X1~combout\) ) ) # ( !\inst|inst1|inst|Bit1|inst|X1~combout\ & ( 
-- (\inst|inst1|inst|Bit0|inst|X1~combout\) # (\inst6|inst|inst1|inst1|Bit3|inst|And1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datad => \inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst1|inst|Bit1|inst|X1~combout\);

-- Location: MLABCELL_X41_Y4_N54
\inst24|inst7|O1[21]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[21]~63_combout\ = ( \DATA2[21]~input_o\ & ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst7|inst|inst1|inst|Bit1|inst|X1~combout\)) # (\OP[1]~input_o\ & ((!\DATA1[21]~input_o\))) ) ) ) # ( !\DATA2[21]~input_o\ & ( \OP[0]~input_o\ & ( 
-- (!\OP[1]~input_o\ & (!\inst7|inst|inst1|inst|Bit1|inst|X1~combout\)) # (\OP[1]~input_o\ & ((!\DATA1[21]~input_o\))) ) ) ) # ( \DATA2[21]~input_o\ & ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst6|inst|inst1|inst|Bit1|inst|X1~combout\)) # 
-- (\OP[1]~input_o\ & ((\DATA1[21]~input_o\))) ) ) ) # ( !\DATA2[21]~input_o\ & ( !\OP[0]~input_o\ & ( (!\inst6|inst|inst1|inst|Bit1|inst|X1~combout\ & !\OP[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100111110101111101000001010111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst6|inst|inst1|inst|Bit1|inst|ALT_INV_X1~combout\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \ALT_INV_DATA1[21]~input_o\,
	datae => \ALT_INV_DATA2[21]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[21]~63_combout\);

-- Location: MLABCELL_X41_Y4_N0
\inst24|inst7|O1[21]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[21]~64_combout\ = ( \DATA1[21]~input_o\ & ( (\DATA2[21]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) ) # ( !\DATA1[21]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & \DATA2[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datad => \ALT_INV_DATA2[21]~input_o\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst24|inst7|O1[21]~64_combout\);

-- Location: MLABCELL_X41_Y4_N36
\inst24|inst7|O1[21]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[21]~65_combout\ = ( \OP[0]~input_o\ & ( \OP[1]~input_o\ & ( (!\OP[2]~input_o\ & (!\inst24|inst7|O1[21]~63_combout\)) # (\OP[2]~input_o\ & ((\inst24|inst7|O1[21]~64_combout\))) ) ) ) # ( !\OP[0]~input_o\ & ( \OP[1]~input_o\ & ( 
-- (!\OP[2]~input_o\ & (!\inst24|inst7|O1[21]~63_combout\)) # (\OP[2]~input_o\ & ((\inst24|inst7|O1[21]~65_combout\))) ) ) ) # ( \OP[0]~input_o\ & ( !\OP[1]~input_o\ & ( (!\inst24|inst7|O1[21]~63_combout\) # (\OP[2]~input_o\) ) ) ) # ( !\OP[0]~input_o\ & ( 
-- !\OP[1]~input_o\ & ( (!\inst24|inst7|O1[21]~63_combout\) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110110001000110111011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[21]~63_combout\,
	datac => \inst24|inst7|ALT_INV_O1[21]~64_combout\,
	datad => \inst24|inst7|ALT_INV_O1[21]~65_combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[21]~65_combout\);

-- Location: LABCELL_X43_Y4_N39
\inst7|inst|inst1|inst|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst|Bit0|inst|X1~combout\ = ( \inst2|inst1|inst1|inst|inst|inst~combout\ & ( !\inst|inst1|inst|Bit0|inst1|X1~combout\ $ (\inst2|inst1|inst1|inst|inst2~combout\) ) ) # ( !\inst2|inst1|inst1|inst|inst|inst~combout\ & ( 
-- !\inst|inst1|inst|Bit0|inst1|X1~combout\ $ (!\inst2|inst1|inst1|inst|inst2~combout\ $ (!\inst7|inst|inst1|inst1|Bit2|inst|And1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|Bit0|inst1|ALT_INV_X1~combout\,
	datab => \inst2|inst1|inst1|inst|ALT_INV_inst2~combout\,
	datac => \inst7|inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\,
	dataf => \inst2|inst1|inst1|inst|inst|ALT_INV_inst~combout\,
	combout => \inst7|inst|inst1|inst|Bit0|inst|X1~combout\);

-- Location: MLABCELL_X41_Y4_N30
\inst24|inst7|O1[20]~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[20]~155_combout\ = ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst6|inst|inst1|inst1|Bit3|inst|And1~combout\ $ (!\inst|inst1|inst|Bit0|inst|X1~combout\))))) # (\OP[1]~input_o\ & ((!\DATA1[20]~input_o\) # ((!\DATA2[20]~input_o\)))) ) 
-- ) # ( \OP[0]~input_o\ & ( (((!\OP[1]~input_o\ & ((\inst7|inst|inst1|inst|Bit0|inst|X1~combout\))) # (\OP[1]~input_o\ & (\DATA1[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111110000000011110000111111101110111011100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[20]~input_o\,
	datab => \ALT_INV_DATA2[20]~input_o\,
	datac => \inst7|inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst1|inst|Bit0|inst|ALT_INV_X1~combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	datag => \inst6|inst|inst1|inst1|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst24|inst7|O1[20]~155_combout\);

-- Location: MLABCELL_X41_Y4_N3
\inst24|inst7|O1[20]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[20]~66_combout\ = (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & (\DATA2[20]~input_o\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ((\DATA1[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datac => \ALT_INV_DATA2[20]~input_o\,
	datad => \ALT_INV_DATA1[20]~input_o\,
	combout => \inst24|inst7|O1[20]~66_combout\);

-- Location: MLABCELL_X41_Y4_N42
\inst24|inst7|O1[20]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[20]~67_combout\ = ( \OP[1]~input_o\ & ( \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (\inst24|inst7|O1[20]~155_combout\)) # (\OP[2]~input_o\ & ((\inst24|inst7|O1[20]~66_combout\))) ) ) ) # ( !\OP[1]~input_o\ & ( \OP[0]~input_o\ & ( 
-- (\inst24|inst7|O1[20]~155_combout\) # (\OP[2]~input_o\) ) ) ) # ( \OP[1]~input_o\ & ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (\inst24|inst7|O1[20]~155_combout\)) # (\OP[2]~input_o\ & ((\inst24|inst7|O1[20]~67_combout\))) ) ) ) # ( !\OP[1]~input_o\ & ( 
-- !\OP[0]~input_o\ & ( (\inst24|inst7|O1[20]~155_combout\) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001000100111011101110111011101110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[20]~155_combout\,
	datac => \inst24|inst7|ALT_INV_O1[20]~66_combout\,
	datad => \inst24|inst7|ALT_INV_O1[20]~67_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[20]~67_combout\);

-- Location: LABCELL_X43_Y4_N48
\inst|inst1|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit2|inst|X1~combout\ = !\inst|inst1|inst1|Bit2|inst1|X1~combout\ $ (!\inst|inst1|inst1|Bit1|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	datad => \inst|inst1|inst1|Bit1|ALT_INV_inst2~combout\,
	combout => \inst|inst1|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X43_Y4_N33
\inst|inst1|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit3|inst|X1~combout\ = ( \inst|inst1|inst1|Bit2|inst|And1~combout\ & ( !\inst|inst1|inst1|Bit3|inst1|X1~combout\ ) ) # ( !\inst|inst1|inst1|Bit2|inst|And1~combout\ & ( !\inst|inst1|inst1|Bit3|inst1|X1~combout\ $ 
-- (!\inst|inst1|inst1|Bit2|inst1|And1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	datac => \inst|inst1|inst1|Bit2|inst1|ALT_INV_And1~combout\,
	dataf => \inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst|inst1|inst1|Bit3|inst|X1~combout\);

-- Location: LABCELL_X43_Y3_N42
\inst24|inst7|O1[19]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[19]~68_combout\ = ( \OP[0]~input_o\ & ( \inst7|inst|inst1|inst1|Bit2|inst|And1~combout\ & ( \inst2|inst1|inst1|inst|inst|inst~combout\ ) ) ) # ( !\OP[0]~input_o\ & ( \inst7|inst|inst1|inst1|Bit2|inst|And1~combout\ & ( 
-- !\inst|inst1|inst1|Bit3|inst|X1~combout\ $ (((!\inst|inst1|inst1|Bit2|inst|X1~combout\ & \inst6|inst|inst1|inst1|Bit1|inst|And1~combout\))) ) ) ) # ( \OP[0]~input_o\ & ( !\inst7|inst|inst1|inst1|Bit2|inst|And1~combout\ & ( 
-- !\inst2|inst1|inst1|inst|inst|inst~combout\ ) ) ) # ( !\OP[0]~input_o\ & ( !\inst7|inst|inst1|inst1|Bit2|inst|And1~combout\ & ( !\inst|inst1|inst1|Bit3|inst|X1~combout\ $ (((!\inst|inst1|inst1|Bit2|inst|X1~combout\ & 
-- \inst6|inst|inst1|inst1|Bit1|inst|And1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011010010111111110000000011010010110100100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst6|inst|inst1|inst1|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst|inst1|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datad => \inst2|inst1|inst1|inst|inst|ALT_INV_inst~combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst7|inst|inst1|inst1|Bit2|inst|ALT_INV_And1~combout\,
	combout => \inst24|inst7|O1[19]~68_combout\);

-- Location: MLABCELL_X41_Y4_N18
\inst24|inst7|O1[19]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[19]~69_combout\ = ( \DATA1[19]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst24|inst7|O1[19]~68_combout\)))) # (\OP[1]~input_o\ & (\DATA2[19]~input_o\ & (!\OP[0]~input_o\))) ) ) # ( !\DATA1[19]~input_o\ & ( (!\OP[1]~input_o\ & 
-- ((!\inst24|inst7|O1[19]~68_combout\))) # (\OP[1]~input_o\ & (\OP[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011111100110000001111110100000001001111010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[19]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[19]~68_combout\,
	dataf => \ALT_INV_DATA1[19]~input_o\,
	combout => \inst24|inst7|O1[19]~69_combout\);

-- Location: MLABCELL_X41_Y4_N21
\inst24|inst7|O1[19]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[19]~70_combout\ = ( \DATA1[19]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) # (\DATA2[19]~input_o\) ) ) # ( !\DATA1[19]~input_o\ & ( (\DATA2[19]~input_o\ & !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[19]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_DATA1[19]~input_o\,
	combout => \inst24|inst7|O1[19]~70_combout\);

-- Location: MLABCELL_X41_Y4_N24
\inst24|inst7|O1[19]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[19]~71_combout\ = ( \inst24|inst7|O1[19]~70_combout\ & ( \OP[0]~input_o\ & ( (!\inst24|inst7|O1[19]~69_combout\) # (\OP[2]~input_o\) ) ) ) # ( !\inst24|inst7|O1[19]~70_combout\ & ( \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & 
-- ((!\inst24|inst7|O1[19]~69_combout\))) # (\OP[2]~input_o\ & (!\OP[1]~input_o\)) ) ) ) # ( \inst24|inst7|O1[19]~70_combout\ & ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[19]~69_combout\)))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # 
-- ((\inst24|inst7|O1[19]~71_combout\)))) ) ) ) # ( !\inst24|inst7|O1[19]~70_combout\ & ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[19]~69_combout\)))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((\inst24|inst7|O1[19]~71_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011110101111001001111010111100100111001001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[19]~69_combout\,
	datad => \inst24|inst7|ALT_INV_O1[19]~71_combout\,
	datae => \inst24|inst7|ALT_INV_O1[19]~70_combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[19]~71_combout\);

-- Location: LABCELL_X43_Y3_N48
\inst24|inst7|O1[18]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[18]~72_combout\ = ( \inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( \inst|inst1|inst1|Bit2|inst|X1~combout\ & ( (!\OP[0]~input_o\ & (((\inst6|inst|inst1|inst1|Bit1|inst|And1~combout\)))) # (\OP[0]~input_o\ & 
-- (!\inst2|inst1|inst1|inst2|inst|inst~combout\ $ (((!\inst2|inst1|inst1|inst1|inst|inst~combout\))))) ) ) ) # ( !\inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( \inst|inst1|inst1|Bit2|inst|X1~combout\ & ( (!\OP[0]~input_o\ & 
-- (\inst6|inst|inst1|inst1|Bit1|inst|And1~combout\)) # (\OP[0]~input_o\ & ((!\inst2|inst1|inst1|inst1|inst|inst~combout\))) ) ) ) # ( \inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( !\inst|inst1|inst1|Bit2|inst|X1~combout\ & ( (!\OP[0]~input_o\ & 
-- (((!\inst6|inst|inst1|inst1|Bit1|inst|And1~combout\)))) # (\OP[0]~input_o\ & (!\inst2|inst1|inst1|inst2|inst|inst~combout\ $ (((!\inst2|inst1|inst1|inst1|inst|inst~combout\))))) ) ) ) # ( !\inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( 
-- !\inst|inst1|inst1|Bit2|inst|X1~combout\ & ( (!\OP[0]~input_o\ & (!\inst6|inst|inst1|inst1|Bit1|inst|And1~combout\)) # (\OP[0]~input_o\ & ((!\inst2|inst1|inst1|inst1|inst|inst~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011110000110011000101101000110011111100000011001101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst1|inst2|inst|ALT_INV_inst~combout\,
	datab => \inst6|inst|inst1|inst1|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst2|inst1|inst1|inst1|inst|ALT_INV_inst~combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \inst7|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst1|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst24|inst7|O1[18]~72_combout\);

-- Location: LABCELL_X42_Y4_N42
\inst24|inst7|O1[18]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[18]~73_combout\ = ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & ((!\inst24|inst7|O1[18]~72_combout\))) # (\OP[1]~input_o\ & (!\DATA1[18]~input_o\)) ) ) # ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst24|inst7|O1[18]~72_combout\)))) # 
-- (\OP[1]~input_o\ & (\DATA1[18]~input_o\ & (\DATA2[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000100000001111100010000000111111010000010101111101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[18]~input_o\,
	datab => \ALT_INV_DATA2[18]~input_o\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[18]~72_combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[18]~73_combout\);

-- Location: LABCELL_X42_Y4_N45
\inst24|inst7|O1[18]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[18]~74_combout\ = (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ((\DATA2[18]~input_o\))) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & (\DATA1[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[18]~input_o\,
	datab => \ALT_INV_DATA2[18]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[18]~74_combout\);

-- Location: LABCELL_X42_Y4_N48
\inst24|inst7|O1[18]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[18]~75_combout\ = ( \inst24|inst7|O1[18]~74_combout\ & ( \OP[0]~input_o\ & ( (!\inst24|inst7|O1[18]~73_combout\) # (\OP[2]~input_o\) ) ) ) # ( !\inst24|inst7|O1[18]~74_combout\ & ( \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & 
-- ((!\inst24|inst7|O1[18]~73_combout\))) # (\OP[2]~input_o\ & (!\OP[1]~input_o\)) ) ) ) # ( \inst24|inst7|O1[18]~74_combout\ & ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[18]~73_combout\)))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # 
-- ((\inst24|inst7|O1[18]~75_combout\)))) ) ) ) # ( !\inst24|inst7|O1[18]~74_combout\ & ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[18]~73_combout\)))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((\inst24|inst7|O1[18]~75_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010101111110011001010111111001100101010101100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[18]~73_combout\,
	datac => \inst24|inst7|ALT_INV_O1[18]~75_combout\,
	datad => \ALT_INV_OP[2]~input_o\,
	datae => \inst24|inst7|ALT_INV_O1[18]~74_combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[18]~75_combout\);

-- Location: LABCELL_X42_Y4_N27
\inst24|inst7|O1[17]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[17]~78_combout\ = ( \DATA1[17]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) # (\DATA2[17]~input_o\) ) ) # ( !\DATA1[17]~input_o\ & ( (\DATA2[17]~input_o\ & !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[17]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_DATA1[17]~input_o\,
	combout => \inst24|inst7|O1[17]~78_combout\);

-- Location: LABCELL_X43_Y4_N18
\inst|inst1|inst1|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit1|inst|X1~combout\ = ( \inst|inst2|inst|Bit3|inst2~combout\ & ( !\inst|inst1|inst1|Bit1|inst1|X1~combout\ $ (((!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\ & !\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\))) ) ) # ( 
-- !\inst|inst2|inst|Bit3|inst2~combout\ & ( !\inst|inst1|inst1|Bit1|inst1|X1~combout\ $ (((!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\) # (!\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst|inst1|inst1|Bit1|inst1|ALT_INV_X1~combout\,
	dataf => \inst|inst2|inst|Bit3|ALT_INV_inst2~combout\,
	combout => \inst|inst1|inst1|Bit1|inst|X1~combout\);

-- Location: LABCELL_X43_Y4_N3
\inst|inst1|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|Bit0|inst|X1~combout\ = ( \inst|inst2|inst|Bit3|inst2~combout\ & ( !\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ $ (\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\) ) ) # ( !\inst|inst2|inst|Bit3|inst2~combout\ & ( 
-- !\inst5|inst|inst1|inst1|Bit0|inst|X1~combout\ $ (!\inst4|inst|inst1|inst1|Bit0|inst|X1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst2|inst|Bit3|ALT_INV_inst2~combout\,
	combout => \inst|inst1|inst1|Bit0|inst|X1~combout\);

-- Location: LABCELL_X43_Y3_N54
\inst24|inst7|O1[17]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[17]~76_combout\ = ( \inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( \inst|inst1|inst1|Bit0|inst|X1~combout\ & ( (!\OP[0]~input_o\ & (!\inst|inst1|inst1|Bit1|inst|X1~combout\)) # (\OP[0]~input_o\ & 
-- ((\inst2|inst1|inst1|inst2|inst|inst~combout\))) ) ) ) # ( !\inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( \inst|inst1|inst1|Bit0|inst|X1~combout\ & ( (!\OP[0]~input_o\ & (!\inst|inst1|inst1|Bit1|inst|X1~combout\)) # (\OP[0]~input_o\ & 
-- ((!\inst2|inst1|inst1|inst2|inst|inst~combout\))) ) ) ) # ( \inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( !\inst|inst1|inst1|Bit0|inst|X1~combout\ & ( (!\OP[0]~input_o\ & (!\inst6|inst|inst2|inst|Bit3|inst|And1~combout\ $ 
-- ((!\inst|inst1|inst1|Bit1|inst|X1~combout\)))) # (\OP[0]~input_o\ & (((\inst2|inst1|inst1|inst2|inst|inst~combout\)))) ) ) ) # ( !\inst7|inst|inst1|inst1|Bit0|inst|And1~combout\ & ( !\inst|inst1|inst1|Bit0|inst|X1~combout\ & ( (!\OP[0]~input_o\ & 
-- (!\inst6|inst|inst2|inst|Bit3|inst|And1~combout\ $ ((!\inst|inst1|inst1|Bit1|inst|X1~combout\)))) # (\OP[0]~input_o\ & (((!\inst2|inst1|inst1|inst2|inst|inst~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011110000011001100000111111001100111100001100110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst2|inst|Bit3|inst|ALT_INV_And1~combout\,
	datab => \inst|inst1|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst2|inst1|inst1|inst2|inst|ALT_INV_inst~combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \inst7|inst|inst1|inst1|Bit0|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst24|inst7|O1[17]~76_combout\);

-- Location: LABCELL_X42_Y4_N24
\inst24|inst7|O1[17]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[17]~77_combout\ = ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & ((!\inst24|inst7|O1[17]~76_combout\))) # (\OP[1]~input_o\ & (!\DATA1[17]~input_o\)) ) ) # ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst24|inst7|O1[17]~76_combout\)))) # 
-- (\OP[1]~input_o\ & (\DATA1[17]~input_o\ & (\DATA2[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000100000001111100010000000111111010000010101111101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[17]~input_o\,
	datab => \ALT_INV_DATA2[17]~input_o\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[17]~76_combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[17]~77_combout\);

-- Location: LABCELL_X45_Y2_N0
\inst24|inst7|O1[17]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[17]~79_combout\ = ( \inst24|inst7|O1[17]~79_combout\ & ( \OP[1]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[17]~77_combout\)))) # (\OP[2]~input_o\ & (((!\OP[0]~input_o\)) # (\inst24|inst7|O1[17]~78_combout\))) ) ) ) # ( 
-- !\inst24|inst7|O1[17]~79_combout\ & ( \OP[1]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[17]~77_combout\)))) # (\OP[2]~input_o\ & (\inst24|inst7|O1[17]~78_combout\ & ((\OP[0]~input_o\)))) ) ) ) # ( \inst24|inst7|O1[17]~79_combout\ & ( 
-- !\OP[1]~input_o\ & ( (!\inst24|inst7|O1[17]~77_combout\) # (\OP[2]~input_o\) ) ) ) # ( !\inst24|inst7|O1[17]~79_combout\ & ( !\OP[1]~input_o\ & ( (!\inst24|inst7|O1[17]~77_combout\) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111000000110001011100111111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[17]~78_combout\,
	datab => \inst24|inst7|ALT_INV_O1[17]~77_combout\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \inst24|inst7|ALT_INV_O1[17]~79_combout\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[17]~79_combout\);

-- Location: LABCELL_X45_Y4_N6
\inst7|inst|inst1|inst1|Bit0|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst1|inst1|Bit0|inst|X1~combout\ = ( \inst7|inst|inst2|inst|Bit1|inst|And1~combout\ & ( !\inst2|inst1|inst1|inst3|inst|inst~combout\ ) ) # ( !\inst7|inst|inst2|inst|Bit1|inst|And1~combout\ & ( !\inst2|inst1|inst1|inst3|inst|inst~combout\ $ 
-- (((!\inst2|inst2|inst|inst1|inst|inst~combout\ & !\inst2|inst2|inst|inst|inst|inst~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110001101100011011000110110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst|inst1|inst|ALT_INV_inst~combout\,
	datab => \inst2|inst1|inst1|inst3|inst|ALT_INV_inst~combout\,
	datac => \inst2|inst2|inst|inst|inst|ALT_INV_inst~combout\,
	dataf => \inst7|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	combout => \inst7|inst|inst1|inst1|Bit0|inst|X1~combout\);

-- Location: LABCELL_X45_Y3_N33
\inst24|inst7|O1[16]~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[16]~151_combout\ = ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst|inst1|inst1|Bit0|inst|X1~combout\ $ ((!\inst6|inst|inst2|inst|Bit3|inst|And1~combout\)))) # (\OP[1]~input_o\ & ((((!\DATA2[16]~input_o\) # (!\DATA1[16]~input_o\))))) ) 
-- ) # ( \OP[0]~input_o\ & ( ((!\OP[1]~input_o\ & (\inst7|inst|inst1|inst1|Bit0|inst|X1~combout\)) # (\OP[1]~input_o\ & (((\DATA1[16]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111101101111011000011000000110001111011010010000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst7|inst|inst1|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datad => \ALT_INV_DATA2[16]~input_o\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	datag => \inst6|inst|inst2|inst|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst24|inst7|O1[16]~151_combout\);

-- Location: LABCELL_X44_Y4_N45
\inst24|inst7|O1[16]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[16]~80_combout\ = ( \DATA1[16]~input_o\ & ( (\DATA2[16]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) ) # ( !\DATA1[16]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & \DATA2[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datac => \ALT_INV_DATA2[16]~input_o\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst24|inst7|O1[16]~80_combout\);

-- Location: LABCELL_X45_Y3_N6
\inst24|inst7|O1[16]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[16]~81_combout\ = ( \OP[0]~input_o\ & ( \inst24|inst7|O1[16]~81_combout\ & ( (!\OP[2]~input_o\ & (\inst24|inst7|O1[16]~151_combout\)) # (\OP[2]~input_o\ & (((!\OP[1]~input_o\) # (\inst24|inst7|O1[16]~80_combout\)))) ) ) ) # ( 
-- !\OP[0]~input_o\ & ( \inst24|inst7|O1[16]~81_combout\ & ( (\OP[2]~input_o\) # (\inst24|inst7|O1[16]~151_combout\) ) ) ) # ( \OP[0]~input_o\ & ( !\inst24|inst7|O1[16]~81_combout\ & ( (!\OP[2]~input_o\ & (\inst24|inst7|O1[16]~151_combout\)) # 
-- (\OP[2]~input_o\ & (((!\OP[1]~input_o\) # (\inst24|inst7|O1[16]~80_combout\)))) ) ) ) # ( !\OP[0]~input_o\ & ( !\inst24|inst7|O1[16]~81_combout\ & ( (!\OP[2]~input_o\ & (\inst24|inst7|O1[16]~151_combout\)) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111001100010101011100111101010101111111110101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[16]~151_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[16]~80_combout\,
	datad => \ALT_INV_OP[2]~input_o\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[16]~81_combout\,
	combout => \inst24|inst7|O1[16]~81_combout\);

-- Location: LABCELL_X44_Y4_N42
\inst24|inst7|O1[15]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[15]~83_combout\ = (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & (\DATA2[15]~input_o\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ((\DATA1[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datac => \ALT_INV_DATA2[15]~input_o\,
	datad => \ALT_INV_DATA1[15]~input_o\,
	combout => \inst24|inst7|O1[15]~83_combout\);

-- Location: LABCELL_X45_Y4_N24
\inst6|inst|inst2|inst|Bit1|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst|Bit1|inst|And1~combout\ = ( \inst|inst2|inst|Bit1|inst|X1~combout\ ) # ( !\inst|inst2|inst|Bit1|inst|X1~combout\ & ( \inst6|inst|inst2|inst|Bit0|inst|And1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst|inst2|inst|Bit0|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst2|inst|Bit1|inst|And1~combout\);

-- Location: LABCELL_X45_Y4_N30
\inst6|inst|inst2|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst|Bit3|inst|X1~combout\ = ( \inst|inst2|inst|Bit1|inst2~combout\ & ( !\inst|inst2|inst|Bit3|inst1|X1~combout\ $ (((!\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & (\inst6|inst|inst2|inst|Bit1|inst|And1~combout\ & 
-- \inst4|inst|inst2|inst|Bit2|inst|X1~combout\)) # (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & ((\inst4|inst|inst2|inst|Bit2|inst|X1~combout\) # (\inst6|inst|inst2|inst|Bit1|inst|And1~combout\))))) ) ) # ( !\inst|inst2|inst|Bit1|inst2~combout\ & ( 
-- !\inst|inst2|inst|Bit3|inst1|X1~combout\ $ (((!\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & (!\inst6|inst|inst2|inst|Bit1|inst|And1~combout\ & !\inst4|inst|inst2|inst|Bit2|inst|X1~combout\)) # (\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ & 
-- (\inst6|inst|inst2|inst|Bit1|inst|And1~combout\ & \inst4|inst|inst2|inst|Bit2|inst|X1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110011001001011011001100100111001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst|inst2|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datac => \inst6|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	datad => \inst4|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst2|inst|Bit1|ALT_INV_inst2~combout\,
	combout => \inst6|inst|inst2|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X45_Y4_N27
\inst7|inst|inst2|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst2|inst|Bit3|inst|X1~combout\ = ( \inst2|inst2|inst|inst1|inst|inst~combout\ & ( !\inst2|inst2|inst|inst|inst|inst~combout\ ) ) # ( !\inst2|inst2|inst|inst1|inst|inst~combout\ & ( !\inst2|inst2|inst|inst|inst|inst~combout\ $ 
-- (!\inst7|inst|inst2|inst|Bit1|inst|And1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst|inst|inst|ALT_INV_inst~combout\,
	datac => \inst7|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	dataf => \inst2|inst2|inst|inst1|inst|ALT_INV_inst~combout\,
	combout => \inst7|inst|inst2|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X44_Y4_N48
\inst24|inst7|O1[15]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[15]~82_combout\ = ( \OP[1]~input_o\ & ( \inst7|inst|inst2|inst|Bit3|inst|X1~combout\ & ( (!\DATA1[15]~input_o\ & (\OP[0]~input_o\)) # (\DATA1[15]~input_o\ & (!\OP[0]~input_o\ & \DATA2[15]~input_o\)) ) ) ) # ( !\OP[1]~input_o\ & ( 
-- \inst7|inst|inst2|inst|Bit3|inst|X1~combout\ & ( (!\inst6|inst|inst2|inst|Bit3|inst|X1~combout\ & !\OP[0]~input_o\) ) ) ) # ( \OP[1]~input_o\ & ( !\inst7|inst|inst2|inst|Bit3|inst|X1~combout\ & ( (!\DATA1[15]~input_o\ & (\OP[0]~input_o\)) # 
-- (\DATA1[15]~input_o\ & (!\OP[0]~input_o\ & \DATA2[15]~input_o\)) ) ) ) # ( !\OP[1]~input_o\ & ( !\inst7|inst|inst2|inst|Bit3|inst|X1~combout\ & ( (!\inst6|inst|inst2|inst|Bit3|inst|X1~combout\) # (\OP[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111000011000011110010100000101000000000110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\,
	datab => \ALT_INV_DATA1[15]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_DATA2[15]~input_o\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst7|inst|inst2|inst|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst24|inst7|O1[15]~82_combout\);

-- Location: LABCELL_X45_Y2_N36
\inst24|inst7|O1[15]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[15]~84_combout\ = ( \inst24|inst7|O1[15]~84_combout\ & ( \inst24|inst7|O1[15]~82_combout\ & ( (\OP[2]~input_o\ & ((!\OP[0]~input_o\) # ((!\OP[1]~input_o\) # (\inst24|inst7|O1[15]~83_combout\)))) ) ) ) # ( !\inst24|inst7|O1[15]~84_combout\ 
-- & ( \inst24|inst7|O1[15]~82_combout\ & ( (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((\OP[0]~input_o\ & \inst24|inst7|O1[15]~83_combout\)))) ) ) ) # ( \inst24|inst7|O1[15]~84_combout\ & ( !\inst24|inst7|O1[15]~82_combout\ & ( (!\OP[2]~input_o\) # 
-- ((!\OP[0]~input_o\) # ((!\OP[1]~input_o\) # (\inst24|inst7|O1[15]~83_combout\))) ) ) ) # ( !\inst24|inst7|O1[15]~84_combout\ & ( !\inst24|inst7|O1[15]~82_combout\ & ( (!\OP[2]~input_o\) # ((!\OP[1]~input_o\) # ((\OP[0]~input_o\ & 
-- \inst24|inst7|O1[15]~83_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101011111111111110111101010101000000010101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[15]~83_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \inst24|inst7|ALT_INV_O1[15]~84_combout\,
	dataf => \inst24|inst7|ALT_INV_O1[15]~82_combout\,
	combout => \inst24|inst7|O1[15]~84_combout\);

-- Location: LABCELL_X45_Y4_N36
\inst24|inst7|O1[14]~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[14]~147_combout\ = ( !\OP[0]~input_o\ & ( !\inst6|inst|inst2|inst|Bit1|inst|And1~combout\ $ (!\inst4|inst|inst2|inst|Bit2|inst|X1~combout\ $ (!\inst|inst2|inst|Bit1|inst2~combout\ $ ((!\inst5|inst|inst2|inst|Bit2|inst|X1~combout\)))) ) ) 
-- # ( \OP[0]~input_o\ & ( (!\inst4|inst|inst2|inst|Bit2|inst|X1~combout\ $ (!\inst2|inst2|inst|inst2|inst2~combout\ $ (!\inst5|inst|inst2|inst|Bit2|inst|X1~combout\ $ (!\inst7|inst|inst2|inst|Bit1|inst|And1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100110010110001111001100001101101001100101101100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	datab => \inst4|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst2|inst2|inst|inst2|ALT_INV_inst2~combout\,
	datad => \inst5|inst|inst2|inst|Bit2|inst|ALT_INV_X1~combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst7|inst|inst2|inst|Bit1|inst|ALT_INV_And1~combout\,
	datag => \inst|inst2|inst|Bit1|ALT_INV_inst2~combout\,
	combout => \inst24|inst7|O1[14]~147_combout\);

-- Location: LABCELL_X44_Y4_N54
\inst24|inst7|O1[14]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[14]~85_combout\ = ( \DATA2[14]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst24|inst7|O1[14]~147_combout\)))) # (\OP[1]~input_o\ & (!\DATA1[14]~input_o\ $ (((!\OP[0]~input_o\))))) ) ) # ( !\DATA2[14]~input_o\ & ( (!\OP[1]~input_o\ & 
-- (((!\inst24|inst7|O1[14]~147_combout\)))) # (\OP[1]~input_o\ & (!\DATA1[14]~input_o\ & ((\OP[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001010110011000000101011001100010110101100110001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[14]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[14]~147_combout\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_DATA2[14]~input_o\,
	combout => \inst24|inst7|O1[14]~85_combout\);

-- Location: LABCELL_X44_Y4_N9
\inst24|inst7|O1[14]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[14]~86_combout\ = ( \DATA2[14]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) # (\DATA1[14]~input_o\) ) ) # ( !\DATA2[14]~input_o\ & ( (\DATA1[14]~input_o\ & \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[14]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_DATA2[14]~input_o\,
	combout => \inst24|inst7|O1[14]~86_combout\);

-- Location: LABCELL_X44_Y4_N24
\inst24|inst7|O1[14]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[14]~87_combout\ = ( \OP[1]~input_o\ & ( \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & (!\inst24|inst7|O1[14]~85_combout\)) # (\OP[2]~input_o\ & ((\inst24|inst7|O1[14]~86_combout\))) ) ) ) # ( !\OP[1]~input_o\ & ( \OP[0]~input_o\ & ( 
-- (!\inst24|inst7|O1[14]~85_combout\) # (\OP[2]~input_o\) ) ) ) # ( \OP[1]~input_o\ & ( !\OP[0]~input_o\ & ( (!\OP[2]~input_o\ & ((!\inst24|inst7|O1[14]~85_combout\))) # (\OP[2]~input_o\ & (\inst24|inst7|O1[14]~87_combout\)) ) ) ) # ( !\OP[1]~input_o\ & ( 
-- !\OP[0]~input_o\ & ( (!\inst24|inst7|O1[14]~85_combout\) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011110100011101000111110011111100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[14]~87_combout\,
	datab => \ALT_INV_OP[2]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[14]~85_combout\,
	datad => \inst24|inst7|ALT_INV_O1[14]~86_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[14]~87_combout\);

-- Location: LABCELL_X45_Y4_N12
\inst7|inst|inst2|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst2|inst|Bit1|inst|X1~combout\ = ( \inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ( !\inst|inst2|inst|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & (\inst7|inst|inst2|inst1|Bit3|inst|And1~combout\ & 
-- !\inst2|inst2|inst1|inst|inst2~combout\)) # (\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ((!\inst2|inst2|inst1|inst|inst2~combout\) # (\inst7|inst|inst2|inst1|Bit3|inst|And1~combout\))))) ) ) # ( !\inst4|inst|inst2|inst|Bit0|inst|X1~combout\ & ( 
-- !\inst|inst2|inst|Bit1|inst1|X1~combout\ $ (((!\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & ((!\inst2|inst2|inst1|inst|inst2~combout\) # (\inst7|inst|inst2|inst1|Bit3|inst|And1~combout\))) # (\inst5|inst|inst2|inst|Bit0|inst|X1~combout\ & 
-- ((!\inst7|inst|inst2|inst1|Bit3|inst|And1~combout\) # (\inst2|inst2|inst1|inst|inst2~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011010010011001101101001001110010011110010011001001111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst2|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datac => \inst7|inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datad => \inst2|inst2|inst1|inst|ALT_INV_inst2~combout\,
	dataf => \inst4|inst|inst2|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst2|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X45_Y4_N0
\inst24|inst7|O1[13]~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[13]~143_combout\ = ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst6|inst|inst2|inst|Bit0|inst|And1~combout\ $ (!\inst|inst2|inst|Bit1|inst|X1~combout\))))) # (\OP[1]~input_o\ & ((!\DATA1[13]~input_o\) # ((!\DATA2[13]~input_o\)))) ) ) 
-- # ( \OP[0]~input_o\ & ( (((!\OP[1]~input_o\ & ((\inst7|inst|inst2|inst|Bit1|inst|X1~combout\))) # (\OP[1]~input_o\ & (\DATA1[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111110000000011110000111111101110111011100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[13]~input_o\,
	datab => \ALT_INV_DATA2[13]~input_o\,
	datac => \inst7|inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \inst|inst2|inst|Bit1|inst|ALT_INV_X1~combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	datag => \inst6|inst|inst2|inst|Bit0|inst|ALT_INV_And1~combout\,
	combout => \inst24|inst7|O1[13]~143_combout\);

-- Location: LABCELL_X47_Y4_N27
\inst24|inst7|O1[13]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[13]~88_combout\ = ( \DATA1[13]~input_o\ & ( (\DATA2[13]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) ) # ( !\DATA1[13]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & \DATA2[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datac => \ALT_INV_DATA2[13]~input_o\,
	dataf => \ALT_INV_DATA1[13]~input_o\,
	combout => \inst24|inst7|O1[13]~88_combout\);

-- Location: LABCELL_X45_Y2_N42
\inst24|inst7|O1[13]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[13]~89_combout\ = ( \OP[2]~input_o\ & ( \inst24|inst7|O1[13]~88_combout\ & ( ((!\OP[1]~input_o\) # (\inst24|inst7|O1[13]~89_combout\)) # (\OP[0]~input_o\) ) ) ) # ( !\OP[2]~input_o\ & ( \inst24|inst7|O1[13]~88_combout\ & ( 
-- \inst24|inst7|O1[13]~143_combout\ ) ) ) # ( \OP[2]~input_o\ & ( !\inst24|inst7|O1[13]~88_combout\ & ( (!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & \inst24|inst7|O1[13]~89_combout\)) ) ) ) # ( !\OP[2]~input_o\ & ( !\inst24|inst7|O1[13]~88_combout\ & ( 
-- \inst24|inst7|O1[13]~143_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111100101111001000000000111111111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[13]~89_combout\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[13]~143_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[13]~88_combout\,
	combout => \inst24|inst7|O1[13]~89_combout\);

-- Location: LABCELL_X47_Y4_N51
\inst24|inst7|O1[12]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[12]~92_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA1[12]~input_o\ ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA2[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[12]~input_o\,
	datad => \ALT_INV_DATA1[12]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[12]~92_combout\);

-- Location: MLABCELL_X46_Y4_N6
\inst6|inst|inst2|inst1|Bit3|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst1|Bit3|inst|And1~combout\ = (\inst6|inst|inst2|inst1|Bit2|inst|And1~combout\ & (!\inst|inst2|inst1|Bit2|inst2~combout\ $ (\inst|inst2|inst1|Bit3|inst1|X1~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000101000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datab => \inst|inst2|inst1|Bit2|ALT_INV_inst2~combout\,
	datad => \inst|inst2|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst2|inst1|Bit3|inst|And1~combout\);

-- Location: MLABCELL_X46_Y4_N0
\inst|inst2|inst1|Bit3|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|Bit3|inst2~combout\ = ( !\inst|inst2|inst1|Bit3|inst|And1~combout\ & ( !\inst|inst2|inst1|Bit3|inst1|And1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|inst1|Bit3|inst1|ALT_INV_And1~combout\,
	dataf => \inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst|inst2|inst1|Bit3|inst2~combout\);

-- Location: MLABCELL_X46_Y4_N48
\inst24|inst7|O1[12]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[12]~90_combout\ = ( \inst|inst2|inst|Bit0|inst1|X1~combout\ & ( \OP[0]~input_o\ & ( !\inst7|inst|inst2|inst1|Bit3|inst|And1~combout\ $ (\inst2|inst2|inst1|inst|inst2~combout\) ) ) ) # ( !\inst|inst2|inst|Bit0|inst1|X1~combout\ & ( 
-- \OP[0]~input_o\ & ( !\inst7|inst|inst2|inst1|Bit3|inst|And1~combout\ $ (!\inst2|inst2|inst1|inst|inst2~combout\) ) ) ) # ( \inst|inst2|inst|Bit0|inst1|X1~combout\ & ( !\OP[0]~input_o\ & ( !\inst6|inst|inst2|inst1|Bit3|inst|And1~combout\ $ 
-- (\inst|inst2|inst1|Bit3|inst2~combout\) ) ) ) # ( !\inst|inst2|inst|Bit0|inst1|X1~combout\ & ( !\OP[0]~input_o\ & ( !\inst6|inst|inst2|inst1|Bit3|inst|And1~combout\ $ (!\inst|inst2|inst1|Bit3|inst2~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010100110011110011001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datab => \inst7|inst|inst2|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datac => \inst|inst2|inst1|Bit3|ALT_INV_inst2~combout\,
	datad => \inst2|inst2|inst1|inst|ALT_INV_inst2~combout\,
	datae => \inst|inst2|inst|Bit0|inst1|ALT_INV_X1~combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[12]~90_combout\);

-- Location: LABCELL_X47_Y4_N48
\inst24|inst7|O1[12]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[12]~91_combout\ = ( \OP[1]~input_o\ & ( (!\DATA1[12]~input_o\ & ((\OP[0]~input_o\))) # (\DATA1[12]~input_o\ & (\DATA2[12]~input_o\ & !\OP[0]~input_o\)) ) ) # ( !\OP[1]~input_o\ & ( !\inst24|inst7|O1[12]~90_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000011100000111000001110000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[12]~input_o\,
	datab => \ALT_INV_DATA1[12]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[12]~90_combout\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[12]~91_combout\);

-- Location: LABCELL_X47_Y4_N54
\inst24|inst7|O1[12]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[12]~93_combout\ = ( \inst24|inst7|O1[12]~93_combout\ & ( \OP[1]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[12]~91_combout\)))) # (\OP[2]~input_o\ & (((!\OP[0]~input_o\)) # (\inst24|inst7|O1[12]~92_combout\))) ) ) ) # ( 
-- !\inst24|inst7|O1[12]~93_combout\ & ( \OP[1]~input_o\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[12]~91_combout\)))) # (\OP[2]~input_o\ & (\inst24|inst7|O1[12]~92_combout\ & (\OP[0]~input_o\))) ) ) ) # ( \inst24|inst7|O1[12]~93_combout\ & ( 
-- !\OP[1]~input_o\ & ( (!\inst24|inst7|O1[12]~91_combout\) # (\OP[2]~input_o\) ) ) ) # ( !\inst24|inst7|O1[12]~93_combout\ & ( !\OP[1]~input_o\ & ( (!\inst24|inst7|O1[12]~91_combout\) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111001101000000011111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[12]~92_combout\,
	datab => \ALT_INV_OP[2]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[12]~91_combout\,
	datae => \inst24|inst7|ALT_INV_O1[12]~93_combout\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[12]~93_combout\);

-- Location: MLABCELL_X46_Y2_N57
\inst24|inst7|O1[11]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[11]~95_combout\ = ( \DATA1[11]~input_o\ & ( (\DATA2[11]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) ) # ( !\DATA1[11]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & \DATA2[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datac => \ALT_INV_DATA2[11]~input_o\,
	dataf => \ALT_INV_DATA1[11]~input_o\,
	combout => \inst24|inst7|O1[11]~95_combout\);

-- Location: MLABCELL_X46_Y4_N15
\inst7|inst|inst2|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst2|inst1|Bit3|inst|X1~combout\ = ( \inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & ( !\inst|inst2|inst1|Bit3|inst1|X1~combout\ $ (((!\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & ((!\inst2|inst2|inst1|inst2|inst2~combout\) # 
-- (!\inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\))) # (\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & ((\inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\) # (\inst2|inst2|inst1|inst2|inst2~combout\))))) ) ) # ( 
-- !\inst5|inst|inst2|inst1|Bit2|inst|X1~combout\ & ( !\inst|inst2|inst1|Bit3|inst1|X1~combout\ $ (((!\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & ((\inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\) # (\inst2|inst2|inst1|inst2|inst2~combout\))) # 
-- (\inst4|inst|inst2|inst1|Bit2|inst|X1~combout\ & (\inst2|inst2|inst1|inst2|inst2~combout\ & \inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010000101011110101000010101101000010101111010100001010111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst2|inst2|inst1|inst2|ALT_INV_inst2~combout\,
	datac => \inst7|inst|inst2|inst1|Bit1|inst|ALT_INV_And1~0_combout\,
	datad => \inst|inst2|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst2|inst1|Bit3|inst|X1~combout\);

-- Location: LABCELL_X47_Y3_N15
\inst6|inst|inst2|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst1|Bit3|inst|X1~combout\ = ( \inst|inst2|inst1|Bit3|inst1|X1~combout\ & ( !\inst6|inst|inst2|inst1|Bit2|inst|And1~combout\ $ (!\inst|inst2|inst1|Bit2|inst2~combout\) ) ) # ( !\inst|inst2|inst1|Bit3|inst1|X1~combout\ & ( 
-- !\inst6|inst|inst2|inst1|Bit2|inst|And1~combout\ $ (\inst|inst2|inst1|Bit2|inst2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst|inst2|inst1|Bit2|inst|ALT_INV_And1~combout\,
	datad => \inst|inst2|inst1|Bit2|ALT_INV_inst2~combout\,
	dataf => \inst|inst2|inst1|Bit3|inst1|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst2|inst1|Bit3|inst|X1~combout\);

-- Location: MLABCELL_X46_Y4_N24
\inst24|inst7|O1[11]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[11]~94_combout\ = ( \inst6|inst|inst2|inst1|Bit3|inst|X1~combout\ & ( \DATA2[11]~input_o\ & ( (!\OP[1]~input_o\ & (\OP[0]~input_o\ & (!\inst7|inst|inst2|inst1|Bit3|inst|X1~combout\))) # (\OP[1]~input_o\ & (!\OP[0]~input_o\ $ 
-- (((!\DATA1[11]~input_o\))))) ) ) ) # ( !\inst6|inst|inst2|inst1|Bit3|inst|X1~combout\ & ( \DATA2[11]~input_o\ & ( (!\OP[1]~input_o\ & ((!\OP[0]~input_o\) # ((!\inst7|inst|inst2|inst1|Bit3|inst|X1~combout\)))) # (\OP[1]~input_o\ & (!\OP[0]~input_o\ $ 
-- (((!\DATA1[11]~input_o\))))) ) ) ) # ( \inst6|inst|inst2|inst1|Bit3|inst|X1~combout\ & ( !\DATA2[11]~input_o\ & ( (\OP[0]~input_o\ & ((!\OP[1]~input_o\ & (!\inst7|inst|inst2|inst1|Bit3|inst|X1~combout\)) # (\OP[1]~input_o\ & ((!\DATA1[11]~input_o\))))) ) 
-- ) ) # ( !\inst6|inst|inst2|inst1|Bit3|inst|X1~combout\ & ( !\DATA2[11]~input_o\ & ( (!\OP[0]~input_o\ & (((!\OP[1]~input_o\)))) # (\OP[0]~input_o\ & ((!\OP[1]~input_o\ & (!\inst7|inst|inst2|inst1|Bit3|inst|X1~combout\)) # (\OP[1]~input_o\ & 
-- ((!\DATA1[11]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001010000010001000101000011101110010110100100010001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \inst7|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datac => \ALT_INV_DATA1[11]~input_o\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \inst6|inst|inst2|inst1|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \ALT_INV_DATA2[11]~input_o\,
	combout => \inst24|inst7|O1[11]~94_combout\);

-- Location: MLABCELL_X46_Y2_N0
\inst24|inst7|O1[11]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[11]~96_combout\ = ( \OP[2]~input_o\ & ( \inst24|inst7|O1[11]~94_combout\ & ( (!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & (\inst24|inst7|O1[11]~96_combout\)) # (\OP[0]~input_o\ & ((\inst24|inst7|O1[11]~95_combout\)))) ) ) ) # ( 
-- \OP[2]~input_o\ & ( !\inst24|inst7|O1[11]~94_combout\ & ( (!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & (\inst24|inst7|O1[11]~96_combout\)) # (\OP[0]~input_o\ & ((\inst24|inst7|O1[11]~95_combout\)))) ) ) ) # ( !\OP[2]~input_o\ & ( 
-- !\inst24|inst7|O1[11]~94_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110111001101111100000000000000001101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[11]~96_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[11]~95_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[11]~94_combout\,
	combout => \inst24|inst7|O1[11]~96_combout\);

-- Location: LABCELL_X47_Y3_N48
\inst6|inst|inst2|inst1|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst1|Bit0|inst|And1~combout\ = (!\inst6|inst|inst3|inst|Bit3|inst|And1~combout\) # (\inst|inst2|inst1|Bit0|inst|X1~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	datac => \inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst2|inst1|Bit0|inst|And1~combout\);

-- Location: LABCELL_X47_Y3_N30
\inst6|inst|inst2|inst1|Bit2|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst1|Bit2|inst|X1~combout\ = ( \inst|inst2|inst1|Bit2|inst1|X1~combout\ & ( (!\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & ((!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & (!\inst6|inst|inst2|inst1|Bit0|inst|And1~combout\ & 
-- !\inst|inst2|inst1|Bit0|inst2~combout\)) # (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & (\inst6|inst|inst2|inst1|Bit0|inst|And1~combout\ & \inst|inst2|inst1|Bit0|inst2~combout\)))) # (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & 
-- ((!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & (\inst6|inst|inst2|inst1|Bit0|inst|And1~combout\ & \inst|inst2|inst1|Bit0|inst2~combout\)) # (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & ((\inst|inst2|inst1|Bit0|inst2~combout\) # 
-- (\inst6|inst|inst2|inst1|Bit0|inst|And1~combout\))))) ) ) # ( !\inst|inst2|inst1|Bit2|inst1|X1~combout\ & ( (!\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & ((!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & ((\inst|inst2|inst1|Bit0|inst2~combout\) # 
-- (\inst6|inst|inst2|inst1|Bit0|inst|And1~combout\))) # (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & ((!\inst6|inst|inst2|inst1|Bit0|inst|And1~combout\) # (!\inst|inst2|inst1|Bit0|inst2~combout\))))) # (\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ & 
-- ((!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & ((!\inst6|inst|inst2|inst1|Bit0|inst|And1~combout\) # (!\inst|inst2|inst1|Bit0|inst2~combout\))) # (\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ & (!\inst6|inst|inst2|inst1|Bit0|inst|And1~combout\ & 
-- !\inst|inst2|inst1|Bit0|inst2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111011101000011111101110100010000001000101111000000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst6|inst|inst2|inst1|Bit0|inst|ALT_INV_And1~combout\,
	datad => \inst|inst2|inst1|Bit0|ALT_INV_inst2~combout\,
	dataf => \inst|inst2|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	combout => \inst6|inst|inst2|inst1|Bit2|inst|X1~combout\);

-- Location: LABCELL_X47_Y3_N12
\inst24|inst7|O1[10]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[10]~97_combout\ = ( \inst2|inst2|inst1|inst2|inst2~combout\ & ( (!\OP[0]~input_o\ & (((\inst6|inst|inst2|inst1|Bit2|inst|X1~combout\)))) # (\OP[0]~input_o\ & (!\inst|inst2|inst1|Bit2|inst1|X1~combout\ $ 
-- (((!\inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\))))) ) ) # ( !\inst2|inst2|inst1|inst2|inst2~combout\ & ( (!\OP[0]~input_o\ & (((\inst6|inst|inst2|inst1|Bit2|inst|X1~combout\)))) # (\OP[0]~input_o\ & (!\inst|inst2|inst1|Bit2|inst1|X1~combout\ $ 
-- (((\inst7|inst|inst2|inst1|Bit1|inst|And1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110100101001100111010010100110011010110100011001101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	datab => \inst6|inst|inst2|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst7|inst|inst2|inst1|Bit1|inst|ALT_INV_And1~0_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \inst2|inst2|inst1|inst2|ALT_INV_inst2~combout\,
	combout => \inst24|inst7|O1[10]~97_combout\);

-- Location: MLABCELL_X46_Y3_N33
\inst24|inst7|O1[10]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[10]~98_combout\ = ( \DATA1[10]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst24|inst7|O1[10]~97_combout\)) # (\OP[1]~input_o\ & (((!\OP[0]~input_o\ & \DATA2[10]~input_o\)))) ) ) # ( !\DATA1[10]~input_o\ & ( (!\OP[1]~input_o\ & 
-- (!\inst24|inst7|O1[10]~97_combout\)) # (\OP[1]~input_o\ & ((\OP[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001000110110001000100011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[10]~97_combout\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_DATA2[10]~input_o\,
	dataf => \ALT_INV_DATA1[10]~input_o\,
	combout => \inst24|inst7|O1[10]~98_combout\);

-- Location: MLABCELL_X46_Y3_N48
\inst24|inst7|O1[10]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[10]~99_combout\ = ( \DATA1[10]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) # (\DATA2[10]~input_o\) ) ) # ( !\DATA1[10]~input_o\ & ( (\DATA2[10]~input_o\ & !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[10]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_DATA1[10]~input_o\,
	combout => \inst24|inst7|O1[10]~99_combout\);

-- Location: MLABCELL_X46_Y3_N24
\inst24|inst7|O1[10]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[10]~100_combout\ = ( \inst24|inst7|O1[10]~99_combout\ & ( \inst24|inst7|O1[10]~100_combout\ & ( (!\inst24|inst7|O1[10]~98_combout\) # (\OP[2]~input_o\) ) ) ) # ( !\inst24|inst7|O1[10]~99_combout\ & ( \inst24|inst7|O1[10]~100_combout\ & ( 
-- (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[10]~98_combout\)))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((!\OP[0]~input_o\)))) ) ) ) # ( \inst24|inst7|O1[10]~99_combout\ & ( !\inst24|inst7|O1[10]~100_combout\ & ( (!\OP[2]~input_o\ & 
-- (((!\inst24|inst7|O1[10]~98_combout\)))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((\OP[0]~input_o\)))) ) ) ) # ( !\inst24|inst7|O1[10]~99_combout\ & ( !\inst24|inst7|O1[10]~100_combout\ & ( (!\OP[2]~input_o\ & ((!\inst24|inst7|O1[10]~98_combout\))) # 
-- (\OP[2]~input_o\ & (!\OP[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001011100010111000101111001111110011111000101111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[2]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[10]~98_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \inst24|inst7|ALT_INV_O1[10]~99_combout\,
	dataf => \inst24|inst7|ALT_INV_O1[10]~100_combout\,
	combout => \inst24|inst7|O1[10]~100_combout\);

-- Location: LABCELL_X47_Y3_N9
\inst7|inst|inst2|inst1|Bit0|inst|And1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst2|inst1|Bit0|inst|And1~combout\ = ( \inst|inst2|inst1|Bit0|inst1|X1~combout\ & ( (!\inst7|inst|inst3|inst|Bit3|inst|And1~combout\) # (\inst2|inst3|inst|inst|inst2~combout\) ) ) # ( !\inst|inst2|inst1|Bit0|inst1|X1~combout\ & ( 
-- (!\inst7|inst|inst3|inst|Bit3|inst|And1~combout\) # (!\inst2|inst3|inst|inst|inst2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	datac => \inst2|inst3|inst|inst|ALT_INV_inst2~combout\,
	dataf => \inst|inst2|inst1|Bit0|inst1|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst2|inst1|Bit0|inst|And1~combout\);

-- Location: LABCELL_X47_Y3_N0
\inst24|inst7|O1[9]~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[9]~139_combout\ = ( !\OP[0]~input_o\ & ( !\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ $ (!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ $ (!\inst|inst2|inst1|Bit0|inst2~combout\ $ (((!\inst6|inst|inst2|inst1|Bit0|inst|And1~combout\))))) 
-- ) ) # ( \OP[0]~input_o\ & ( !\inst5|inst|inst2|inst1|Bit1|inst|X1~combout\ $ (!\inst4|inst|inst2|inst1|Bit1|inst|X1~combout\ $ (!\inst2|inst2|inst1|inst3|inst2~combout\ $ ((!\inst7|inst|inst2|inst1|Bit0|inst|And1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100101101001011010011001011010010110100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datab => \inst4|inst|inst2|inst1|Bit1|inst|ALT_INV_X1~combout\,
	datac => \inst2|inst2|inst1|inst3|ALT_INV_inst2~combout\,
	datad => \inst7|inst|inst2|inst1|Bit0|inst|ALT_INV_And1~combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst6|inst|inst2|inst1|Bit0|inst|ALT_INV_And1~combout\,
	datag => \inst|inst2|inst1|Bit0|ALT_INV_inst2~combout\,
	combout => \inst24|inst7|O1[9]~139_combout\);

-- Location: MLABCELL_X46_Y2_N36
\inst24|inst7|O1[9]~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[9]~101_combout\ = ( \DATA2[9]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst24|inst7|O1[9]~139_combout\)))) # (\OP[1]~input_o\ & (!\DATA1[9]~input_o\ $ (((!\OP[0]~input_o\))))) ) ) # ( !\DATA2[9]~input_o\ & ( (!\OP[1]~input_o\ & 
-- (((!\inst24|inst7|O1[9]~139_combout\)))) # (\OP[1]~input_o\ & (!\DATA1[9]~input_o\ & ((\OP[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001010110011000000101011001100010110101100110001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[9]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[9]~139_combout\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_DATA2[9]~input_o\,
	combout => \inst24|inst7|O1[9]~101_combout\);

-- Location: MLABCELL_X46_Y2_N39
\inst24|inst7|O1[9]~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[9]~102_combout\ = ( \DATA2[9]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) # (\DATA1[9]~input_o\) ) ) # ( !\DATA2[9]~input_o\ & ( (\DATA1[9]~input_o\ & \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[9]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_DATA2[9]~input_o\,
	combout => \inst24|inst7|O1[9]~102_combout\);

-- Location: MLABCELL_X46_Y2_N42
\inst24|inst7|O1[9]~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[9]~103_combout\ = ( \OP[2]~input_o\ & ( \inst24|inst7|O1[9]~103_combout\ & ( (!\OP[1]~input_o\) # ((!\OP[0]~input_o\) # (\inst24|inst7|O1[9]~102_combout\)) ) ) ) # ( !\OP[2]~input_o\ & ( \inst24|inst7|O1[9]~103_combout\ & ( 
-- !\inst24|inst7|O1[9]~101_combout\ ) ) ) # ( \OP[2]~input_o\ & ( !\inst24|inst7|O1[9]~103_combout\ & ( (!\OP[1]~input_o\) # ((\OP[0]~input_o\ & \inst24|inst7|O1[9]~102_combout\)) ) ) ) # ( !\OP[2]~input_o\ & ( !\inst24|inst7|O1[9]~103_combout\ & ( 
-- !\inst24|inst7|O1[9]~101_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100111110101010101010101111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[9]~101_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[9]~102_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[9]~103_combout\,
	combout => \inst24|inst7|O1[9]~103_combout\);

-- Location: MLABCELL_X46_Y2_N54
\inst24|inst7|O1[8]~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[8]~106_combout\ = ( \DATA2[8]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) # (\DATA1[8]~input_o\) ) ) # ( !\DATA2[8]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & \DATA1[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datac => \ALT_INV_DATA1[8]~input_o\,
	dataf => \ALT_INV_DATA2[8]~input_o\,
	combout => \inst24|inst7|O1[8]~106_combout\);

-- Location: LABCELL_X47_Y3_N18
\inst24|inst7|O1[8]~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[8]~104_combout\ = ( \inst7|inst|inst3|inst|Bit3|inst|And1~combout\ & ( \inst|inst2|inst1|Bit0|inst1|X1~combout\ & ( (!\OP[0]~input_o\ & (!\inst6|inst|inst3|inst|Bit3|inst|And1~combout\ $ (((\inst|inst2|inst1|Bit0|inst|X1~combout\))))) # 
-- (\OP[0]~input_o\ & (((\inst2|inst3|inst|inst|inst2~combout\)))) ) ) ) # ( !\inst7|inst|inst3|inst|Bit3|inst|And1~combout\ & ( \inst|inst2|inst1|Bit0|inst1|X1~combout\ & ( (!\OP[0]~input_o\ & (!\inst6|inst|inst3|inst|Bit3|inst|And1~combout\ $ 
-- (((\inst|inst2|inst1|Bit0|inst|X1~combout\))))) # (\OP[0]~input_o\ & (((!\inst2|inst3|inst|inst|inst2~combout\)))) ) ) ) # ( \inst7|inst|inst3|inst|Bit3|inst|And1~combout\ & ( !\inst|inst2|inst1|Bit0|inst1|X1~combout\ & ( (!\OP[0]~input_o\ & 
-- (!\inst6|inst|inst3|inst|Bit3|inst|And1~combout\ $ (((\inst|inst2|inst1|Bit0|inst|X1~combout\))))) # (\OP[0]~input_o\ & (((!\inst2|inst3|inst|inst|inst2~combout\)))) ) ) ) # ( !\inst7|inst|inst3|inst|Bit3|inst|And1~combout\ & ( 
-- !\inst|inst2|inst1|Bit0|inst1|X1~combout\ & ( (!\OP[0]~input_o\ & (!\inst6|inst|inst3|inst|Bit3|inst|And1~combout\ $ (((\inst|inst2|inst1|Bit0|inst|X1~combout\))))) # (\OP[0]~input_o\ & (((\inst2|inst3|inst|inst|inst2~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100110011101001011100110010100101110011001010010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	datab => \inst2|inst3|inst|inst|ALT_INV_inst2~combout\,
	datac => \inst|inst2|inst1|Bit0|inst|ALT_INV_X1~combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \inst7|inst|inst3|inst|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst2|inst1|Bit0|inst1|ALT_INV_X1~combout\,
	combout => \inst24|inst7|O1[8]~104_combout\);

-- Location: MLABCELL_X46_Y3_N15
\inst24|inst7|O1[8]~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[8]~105_combout\ = ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & ((!\inst24|inst7|O1[8]~104_combout\))) # (\OP[1]~input_o\ & (!\DATA1[8]~input_o\)) ) ) # ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst24|inst7|O1[8]~104_combout\)))) # 
-- (\OP[1]~input_o\ & (\DATA1[8]~input_o\ & ((\DATA2[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010110001101000001011000111100100111001001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_DATA1[8]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[8]~104_combout\,
	datad => \ALT_INV_DATA2[8]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[8]~105_combout\);

-- Location: MLABCELL_X46_Y2_N48
\inst24|inst7|O1[8]~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[8]~107_combout\ = ( \OP[2]~input_o\ & ( \inst24|inst7|O1[8]~105_combout\ & ( (!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & ((\inst24|inst7|O1[8]~107_combout\))) # (\OP[0]~input_o\ & (\inst24|inst7|O1[8]~106_combout\))) ) ) ) # ( 
-- \OP[2]~input_o\ & ( !\inst24|inst7|O1[8]~105_combout\ & ( (!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & ((\inst24|inst7|O1[8]~107_combout\))) # (\OP[0]~input_o\ & (\inst24|inst7|O1[8]~106_combout\))) ) ) ) # ( !\OP[2]~input_o\ & ( 
-- !\inst24|inst7|O1[8]~105_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011011111110100000000000000001100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[8]~106_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[8]~107_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[8]~105_combout\,
	combout => \inst24|inst7|O1[8]~107_combout\);

-- Location: LABCELL_X44_Y3_N45
\inst24|inst7|O1[7]~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[7]~109_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA1[7]~input_o\ ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA2[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[7]~input_o\,
	datad => \ALT_INV_DATA2[7]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[7]~109_combout\);

-- Location: LABCELL_X43_Y3_N24
\inst6|inst|inst3|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst3|inst|Bit3|inst|X1~combout\ = ( \inst|inst3|inst|Bit1|inst2~combout\ & ( !\inst|inst3|inst|Bit3|inst1|X1~combout\ $ (((!\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & (\inst6|inst|inst3|inst|Bit1|inst|And1~combout\ & 
-- !\inst4|inst|inst3|inst|Bit2|inst|X1~combout\)) # (\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & (!\inst6|inst|inst3|inst|Bit1|inst|And1~combout\ & \inst4|inst|inst3|inst|Bit2|inst|X1~combout\)))) ) ) # ( !\inst|inst3|inst|Bit1|inst2~combout\ & ( 
-- !\inst|inst3|inst|Bit3|inst1|X1~combout\ $ (((!\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & (!\inst6|inst|inst3|inst|Bit1|inst|And1~combout\ & \inst4|inst|inst3|inst|Bit2|inst|X1~combout\)) # (\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & 
-- ((!\inst6|inst|inst3|inst|Bit1|inst|And1~combout\) # (\inst4|inst|inst3|inst|Bit2|inst|X1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110000111001100111000011100111000110100111001100011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst|Bit3|inst1|ALT_INV_X1~combout\,
	datac => \inst6|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\,
	datad => \inst4|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst3|inst|Bit1|ALT_INV_inst2~combout\,
	combout => \inst6|inst|inst3|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X43_Y3_N6
\inst7|inst|inst3|inst|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst3|inst|Bit3|inst|X1~combout\ = ( \inst|inst3|inst|Bit3|inst1|X1~combout\ & ( (!\inst7|inst|inst3|inst|Bit1|inst|And1~combout\ & ((!\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & ((!\inst2|inst3|inst|inst2|inst2~combout\) # 
-- (\inst5|inst|inst3|inst|Bit2|inst|X1~combout\))) # (\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & (\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & !\inst2|inst3|inst|inst2|inst2~combout\)))) # (\inst7|inst|inst3|inst|Bit1|inst|And1~combout\ & 
-- ((!\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & ((!\inst5|inst|inst3|inst|Bit2|inst|X1~combout\) # (\inst2|inst3|inst|inst2|inst2~combout\))) # (\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & ((!\inst2|inst3|inst|inst2|inst2~combout\) # 
-- (\inst5|inst|inst3|inst|Bit2|inst|X1~combout\))))) ) ) # ( !\inst|inst3|inst|Bit3|inst1|X1~combout\ & ( (!\inst7|inst|inst3|inst|Bit1|inst|And1~combout\ & ((!\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & (!\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & 
-- \inst2|inst3|inst|inst2|inst2~combout\)) # (\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & ((!\inst5|inst|inst3|inst|Bit2|inst|X1~combout\) # (\inst2|inst3|inst|inst2|inst2~combout\))))) # (\inst7|inst|inst3|inst|Bit1|inst|And1~combout\ & 
-- ((!\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & (\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & !\inst2|inst3|inst|inst2|inst2~combout\)) # (\inst4|inst|inst3|inst|Bit2|inst|X1~combout\ & (!\inst5|inst|inst3|inst|Bit2|inst|X1~combout\ & 
-- \inst2|inst3|inst|inst2|inst2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010110010001001001011001011011011010011011101101101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\,
	datab => \inst4|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst3|inst|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst2|inst3|inst|inst2|ALT_INV_inst2~combout\,
	dataf => \inst|inst3|inst|Bit3|inst1|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst3|inst|Bit3|inst|X1~combout\);

-- Location: LABCELL_X45_Y2_N48
\inst24|inst7|O1[7]~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[7]~108_combout\ = ( \inst7|inst|inst3|inst|Bit3|inst|X1~combout\ & ( \DATA2[7]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst6|inst|inst3|inst|Bit3|inst|X1~combout\ & !\OP[0]~input_o\)))) # (\OP[1]~input_o\ & (!\DATA1[7]~input_o\ $ 
-- (((!\OP[0]~input_o\))))) ) ) ) # ( !\inst7|inst|inst3|inst|Bit3|inst|X1~combout\ & ( \DATA2[7]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst6|inst|inst3|inst|Bit3|inst|X1~combout\) # (\OP[0]~input_o\)))) # (\OP[1]~input_o\ & (!\DATA1[7]~input_o\ $ 
-- (((!\OP[0]~input_o\))))) ) ) ) # ( \inst7|inst|inst3|inst|Bit3|inst|X1~combout\ & ( !\DATA2[7]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst6|inst|inst3|inst|Bit3|inst|X1~combout\ & !\OP[0]~input_o\)))) # (\OP[1]~input_o\ & (!\DATA1[7]~input_o\ & 
-- ((\OP[0]~input_o\)))) ) ) ) # ( !\inst7|inst|inst3|inst|Bit3|inst|X1~combout\ & ( !\DATA2[7]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst6|inst|inst3|inst|Bit3|inst|X1~combout\) # (\OP[0]~input_o\)))) # (\OP[1]~input_o\ & (!\DATA1[7]~input_o\ & 
-- ((\OP[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111010110000000000101011000101111110101100010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[7]~input_o\,
	datab => \inst6|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \inst7|inst|inst3|inst|Bit3|inst|ALT_INV_X1~combout\,
	dataf => \ALT_INV_DATA2[7]~input_o\,
	combout => \inst24|inst7|O1[7]~108_combout\);

-- Location: LABCELL_X45_Y2_N54
\inst24|inst7|O1[7]~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[7]~110_combout\ = ( \OP[2]~input_o\ & ( \OP[1]~input_o\ & ( (!\OP[0]~input_o\ & ((\inst24|inst7|O1[7]~110_combout\))) # (\OP[0]~input_o\ & (\inst24|inst7|O1[7]~109_combout\)) ) ) ) # ( !\OP[2]~input_o\ & ( \OP[1]~input_o\ & ( 
-- !\inst24|inst7|O1[7]~108_combout\ ) ) ) # ( \OP[2]~input_o\ & ( !\OP[1]~input_o\ ) ) # ( !\OP[2]~input_o\ & ( !\OP[1]~input_o\ & ( !\inst24|inst7|O1[7]~108_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110000111100000011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[7]~109_combout\,
	datab => \inst24|inst7|ALT_INV_O1[7]~110_combout\,
	datac => \inst24|inst7|ALT_INV_O1[7]~108_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[7]~110_combout\);

-- Location: LABCELL_X42_Y3_N42
\inst24|inst7|O1[6]~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[6]~111_combout\ = ( \OP[0]~input_o\ & ( \inst2|inst3|inst|inst2|inst2~combout\ & ( !\inst|inst3|inst|Bit2|inst1|X1~combout\ $ (\inst7|inst|inst3|inst|Bit1|inst|And1~combout\) ) ) ) # ( !\OP[0]~input_o\ & ( 
-- \inst2|inst3|inst|inst2|inst2~combout\ & ( !\inst|inst3|inst|Bit1|inst2~combout\ $ (!\inst6|inst|inst3|inst|Bit1|inst|And1~combout\ $ (\inst|inst3|inst|Bit2|inst1|X1~combout\)) ) ) ) # ( \OP[0]~input_o\ & ( !\inst2|inst3|inst|inst2|inst2~combout\ & ( 
-- !\inst|inst3|inst|Bit2|inst1|X1~combout\ $ (!\inst7|inst|inst3|inst|Bit1|inst|And1~combout\) ) ) ) # ( !\OP[0]~input_o\ & ( !\inst2|inst3|inst|inst2|inst2~combout\ & ( !\inst|inst3|inst|Bit1|inst2~combout\ $ 
-- (!\inst6|inst|inst3|inst|Bit1|inst|And1~combout\ $ (\inst|inst3|inst|Bit2|inst1|X1~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001000011111111000001101001011010011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|Bit1|ALT_INV_inst2~combout\,
	datab => \inst6|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst|inst3|inst|Bit2|inst1|ALT_INV_X1~combout\,
	datad => \inst7|inst|inst3|inst|Bit1|inst|ALT_INV_And1~combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst2|inst3|inst|inst2|ALT_INV_inst2~combout\,
	combout => \inst24|inst7|O1[6]~111_combout\);

-- Location: LABCELL_X44_Y3_N27
\inst24|inst7|O1[6]~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[6]~112_combout\ = ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst24|inst7|O1[6]~111_combout\)) # (\OP[1]~input_o\ & ((!\DATA1[6]~input_o\))) ) ) # ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst24|inst7|O1[6]~111_combout\)) # 
-- (\OP[1]~input_o\ & (((\DATA1[6]~input_o\ & \DATA2[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100011101000001010001110101100101011001010110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[6]~111_combout\,
	datab => \ALT_INV_DATA1[6]~input_o\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \ALT_INV_DATA2[6]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[6]~112_combout\);

-- Location: LABCELL_X44_Y3_N51
\inst24|inst7|O1[6]~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[6]~113_combout\ = ( \DATA1[6]~input_o\ & ( (\DATA2[6]~input_o\) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) ) # ( !\DATA1[6]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & \DATA2[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datac => \ALT_INV_DATA2[6]~input_o\,
	dataf => \ALT_INV_DATA1[6]~input_o\,
	combout => \inst24|inst7|O1[6]~113_combout\);

-- Location: LABCELL_X44_Y3_N54
\inst24|inst7|O1[6]~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[6]~114_combout\ = ( \OP[2]~input_o\ & ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\) # (\inst24|inst7|O1[6]~113_combout\) ) ) ) # ( !\OP[2]~input_o\ & ( \OP[0]~input_o\ & ( !\inst24|inst7|O1[6]~112_combout\ ) ) ) # ( \OP[2]~input_o\ & ( 
-- !\OP[0]~input_o\ & ( (!\OP[1]~input_o\) # (\inst24|inst7|O1[6]~114_combout\) ) ) ) # ( !\OP[2]~input_o\ & ( !\OP[0]~input_o\ & ( !\inst24|inst7|O1[6]~112_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001111111110101010101010101100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[6]~112_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[6]~113_combout\,
	datad => \inst24|inst7|ALT_INV_O1[6]~114_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[6]~114_combout\);

-- Location: LABCELL_X42_Y3_N51
\inst7|inst|inst3|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst3|inst|Bit1|inst|X1~combout\ = ( \inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & ( !\inst|inst3|inst|Bit1|inst1|X1~combout\ $ (((!\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ((!\inst2|inst3|inst1|inst|inst2~combout\) # 
-- (\inst7|inst|inst3|inst1|Bit3|inst|And1~combout\))) # (\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ((!\inst7|inst|inst3|inst1|Bit3|inst|And1~combout\) # (\inst2|inst3|inst1|inst|inst2~combout\))))) ) ) # ( !\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ 
-- & ( !\inst|inst3|inst|Bit1|inst1|X1~combout\ $ (((!\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ((!\inst7|inst|inst3|inst1|Bit3|inst|And1~combout\) # (\inst2|inst3|inst1|inst|inst2~combout\))) # (\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & 
-- (\inst2|inst3|inst1|inst|inst2~combout\ & !\inst7|inst|inst3|inst1|Bit3|inst|And1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001111000110011000111100011000111001011000110011100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datac => \inst2|inst3|inst1|inst|ALT_INV_inst2~combout\,
	datad => \inst7|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst3|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X42_Y3_N48
\inst6|inst|inst3|inst|Bit1|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst3|inst|Bit1|inst|X1~combout\ = ( \inst|inst3|inst1|Bit3|inst2~combout\ & ( !\inst|inst3|inst|Bit1|inst1|X1~combout\ $ (((!\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & (\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & 
-- \inst6|inst|inst3|inst1|Bit3|inst|And1~combout\)) # (\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & ((\inst6|inst|inst3|inst1|Bit3|inst|And1~combout\) # (\inst5|inst|inst3|inst|Bit0|inst|X1~combout\))))) ) ) # ( !\inst|inst3|inst1|Bit3|inst2~combout\ & ( 
-- !\inst|inst3|inst|Bit1|inst1|X1~combout\ $ (((!\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & (!\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & !\inst6|inst|inst3|inst1|Bit3|inst|And1~combout\)) # (\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ & 
-- (\inst5|inst|inst3|inst|Bit0|inst|X1~combout\ & \inst6|inst|inst3|inst1|Bit3|inst|And1~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110011001001011011001100100111001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst|inst3|inst|Bit1|inst1|ALT_INV_X1~combout\,
	datac => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datad => \inst6|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\,
	dataf => \inst|inst3|inst1|Bit3|ALT_INV_inst2~combout\,
	combout => \inst6|inst|inst3|inst|Bit1|inst|X1~combout\);

-- Location: LABCELL_X42_Y3_N54
\inst24|inst7|O1[5]~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[5]~115_combout\ = ( \DATA1[5]~input_o\ & ( \DATA2[5]~input_o\ & ( (!\OP[0]~input_o\ & (((!\inst6|inst|inst3|inst|Bit1|inst|X1~combout\) # (\OP[1]~input_o\)))) # (\OP[0]~input_o\ & (!\inst7|inst|inst3|inst|Bit1|inst|X1~combout\ & 
-- ((!\OP[1]~input_o\)))) ) ) ) # ( !\DATA1[5]~input_o\ & ( \DATA2[5]~input_o\ & ( (!\OP[0]~input_o\ & (((!\inst6|inst|inst3|inst|Bit1|inst|X1~combout\ & !\OP[1]~input_o\)))) # (\OP[0]~input_o\ & ((!\inst7|inst|inst3|inst|Bit1|inst|X1~combout\) # 
-- ((\OP[1]~input_o\)))) ) ) ) # ( \DATA1[5]~input_o\ & ( !\DATA2[5]~input_o\ & ( (!\OP[1]~input_o\ & ((!\OP[0]~input_o\ & ((!\inst6|inst|inst3|inst|Bit1|inst|X1~combout\))) # (\OP[0]~input_o\ & (!\inst7|inst|inst3|inst|Bit1|inst|X1~combout\)))) ) ) ) # ( 
-- !\DATA1[5]~input_o\ & ( !\DATA2[5]~input_o\ & ( (!\OP[0]~input_o\ & (((!\inst6|inst|inst3|inst|Bit1|inst|X1~combout\ & !\OP[1]~input_o\)))) # (\OP[0]~input_o\ & ((!\inst7|inst|inst3|inst|Bit1|inst|X1~combout\) # ((\OP[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001000110011111000100000000011100010001100111110001011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst3|inst|Bit1|inst|ALT_INV_X1~combout\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \inst6|inst|inst3|inst|Bit1|inst|ALT_INV_X1~combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \ALT_INV_DATA1[5]~input_o\,
	dataf => \ALT_INV_DATA2[5]~input_o\,
	combout => \inst24|inst7|O1[5]~115_combout\);

-- Location: LABCELL_X44_Y3_N48
\inst24|inst7|O1[5]~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[5]~116_combout\ = (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & (\DATA2[5]~input_o\)) # (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ((\DATA1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	datac => \ALT_INV_DATA2[5]~input_o\,
	datad => \ALT_INV_DATA1[5]~input_o\,
	combout => \inst24|inst7|O1[5]~116_combout\);

-- Location: MLABCELL_X46_Y2_N24
\inst24|inst7|O1[5]~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[5]~117_combout\ = ( \OP[2]~input_o\ & ( \inst24|inst7|O1[5]~117_combout\ & ( (!\OP[0]~input_o\) # ((!\OP[1]~input_o\) # (\inst24|inst7|O1[5]~116_combout\)) ) ) ) # ( !\OP[2]~input_o\ & ( \inst24|inst7|O1[5]~117_combout\ & ( 
-- !\inst24|inst7|O1[5]~115_combout\ ) ) ) # ( \OP[2]~input_o\ & ( !\inst24|inst7|O1[5]~117_combout\ & ( (!\OP[1]~input_o\) # ((\OP[0]~input_o\ & \inst24|inst7|O1[5]~116_combout\)) ) ) ) # ( !\OP[2]~input_o\ & ( !\inst24|inst7|O1[5]~117_combout\ & ( 
-- !\inst24|inst7|O1[5]~115_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110011001101110111110000111100001110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[5]~115_combout\,
	datad => \inst24|inst7|ALT_INV_O1[5]~116_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[5]~117_combout\,
	combout => \inst24|inst7|O1[5]~117_combout\);

-- Location: LABCELL_X42_Y2_N39
\inst24|inst7|O1[4]~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[4]~119_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA1[4]~input_o\ ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA1[4]~input_o\ & ( \DATA2[4]~input_o\ ) ) ) # ( 
-- !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( !\DATA1[4]~input_o\ & ( \DATA2[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[4]~input_o\,
	datae => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_DATA1[4]~input_o\,
	combout => \inst24|inst7|O1[4]~119_combout\);

-- Location: LABCELL_X42_Y3_N30
\inst24|inst7|O1[4]~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[4]~135_combout\ = ( !\OP[0]~input_o\ & ( !\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ $ (((!\inst6|inst|inst3|inst1|Bit3|inst|And1~combout\ $ (!\inst|inst3|inst1|Bit3|inst2~combout\ $ (!\inst5|inst|inst3|inst|Bit0|inst|X1~combout\))))) ) 
-- ) # ( \OP[0]~input_o\ & ( !\inst4|inst|inst3|inst|Bit0|inst|X1~combout\ $ (!\inst2|inst3|inst1|inst|inst2~combout\ $ (!\inst7|inst|inst3|inst1|Bit3|inst|And1~combout\ $ (((!\inst5|inst|inst3|inst|Bit0|inst|X1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101101010100101011010010110100110100101010110101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datab => \inst2|inst3|inst1|inst|ALT_INV_inst2~combout\,
	datac => \inst7|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\,
	datad => \inst|inst3|inst1|Bit3|ALT_INV_inst2~combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst5|inst|inst3|inst|Bit0|inst|ALT_INV_X1~combout\,
	datag => \inst6|inst|inst3|inst1|Bit3|inst|ALT_INV_And1~combout\,
	combout => \inst24|inst7|O1[4]~135_combout\);

-- Location: LABCELL_X42_Y2_N33
\inst24|inst7|O1[4]~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[4]~118_combout\ = ( \inst24|inst7|O1[4]~135_combout\ & ( \DATA1[4]~input_o\ & ( (\DATA2[4]~input_o\ & (!\OP[0]~input_o\ & \OP[1]~input_o\)) ) ) ) # ( !\inst24|inst7|O1[4]~135_combout\ & ( \DATA1[4]~input_o\ & ( (!\OP[1]~input_o\) # 
-- ((\DATA2[4]~input_o\ & !\OP[0]~input_o\)) ) ) ) # ( \inst24|inst7|O1[4]~135_combout\ & ( !\DATA1[4]~input_o\ & ( (\OP[0]~input_o\ & \OP[1]~input_o\) ) ) ) # ( !\inst24|inst7|O1[4]~135_combout\ & ( !\DATA1[4]~input_o\ & ( (!\OP[1]~input_o\) # 
-- (\OP[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111000000000000111111111111010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA2[4]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_OP[1]~input_o\,
	datae => \inst24|inst7|ALT_INV_O1[4]~135_combout\,
	dataf => \ALT_INV_DATA1[4]~input_o\,
	combout => \inst24|inst7|O1[4]~118_combout\);

-- Location: LABCELL_X42_Y2_N15
\inst24|inst7|O1[4]~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[4]~120_combout\ = ( \OP[0]~input_o\ & ( \inst24|inst7|O1[4]~120_combout\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[4]~118_combout\)))) # (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((\inst24|inst7|O1[4]~119_combout\)))) ) ) ) # ( 
-- !\OP[0]~input_o\ & ( \inst24|inst7|O1[4]~120_combout\ & ( (!\inst24|inst7|O1[4]~118_combout\) # (\OP[2]~input_o\) ) ) ) # ( \OP[0]~input_o\ & ( !\inst24|inst7|O1[4]~120_combout\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[4]~118_combout\)))) # 
-- (\OP[2]~input_o\ & ((!\OP[1]~input_o\) # ((\inst24|inst7|O1[4]~119_combout\)))) ) ) ) # ( !\OP[0]~input_o\ & ( !\inst24|inst7|O1[4]~120_combout\ & ( (!\OP[2]~input_o\ & ((!\inst24|inst7|O1[4]~118_combout\))) # (\OP[2]~input_o\ & (!\OP[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000001010111110110000101111111111000011111111101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[4]~119_combout\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[4]~118_combout\,
	datae => \ALT_INV_OP[0]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[4]~120_combout\,
	combout => \inst24|inst7|O1[4]~120_combout\);

-- Location: MLABCELL_X41_Y3_N6
\inst6|inst|inst3|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst|inst3|inst1|Bit3|inst|X1~combout\ = ( \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( \inst|inst3|inst1|Bit1|inst2~combout\ & ( !\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ $ 
-- (((\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\ & !\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)))) ) ) ) # ( !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( \inst|inst3|inst1|Bit1|inst2~combout\ & ( !\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ $ 
-- (!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (((!\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\) # (\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\)))) ) ) ) # ( \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( !\inst|inst3|inst1|Bit1|inst2~combout\ 
-- & ( !\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (((!\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\) # (\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\)))) ) ) ) # ( 
-- !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( !\inst|inst3|inst1|Bit1|inst2~combout\ & ( !\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (!\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (((!\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\) # 
-- (\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101001100101101001100101100110100110010110010110010110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datab => \inst6|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst5|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst|inst3|inst1|Bit1|ALT_INV_inst2~combout\,
	combout => \inst6|inst|inst3|inst1|Bit3|inst|X1~combout\);

-- Location: MLABCELL_X41_Y3_N30
\inst7|inst|inst3|inst1|Bit3|inst|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst|inst3|inst1|Bit3|inst|X1~combout\ = ( \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( \inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & ( !\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (((!\inst2|inst3|inst1|inst2|inst2~combout\ & 
-- ((!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\) # (!\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\))) # (\inst2|inst3|inst1|inst2|inst2~combout\ & (!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\ & !\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)))) ) 
-- ) ) # ( !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( \inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & ( !\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (((!\inst2|inst3|inst1|inst2|inst2~combout\ & (!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\ & 
-- !\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)) # (\inst2|inst3|inst1|inst2|inst2~combout\ & (\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\ & \inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)))) ) ) ) # ( \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( 
-- !\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ & ( !\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (((!\inst2|inst3|inst1|inst2|inst2~combout\ & (\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\ & \inst5|inst|inst3|inst1|Bit2|inst|X1~combout\)) # 
-- (\inst2|inst3|inst1|inst2|inst2~combout\ & ((\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\) # (\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\))))) ) ) ) # ( !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( !\inst5|inst|inst3|inst1|Bit3|inst|X1~combout\ 
-- & ( !\inst4|inst|inst3|inst1|Bit3|inst|X1~combout\ $ (((!\inst2|inst3|inst1|inst2|inst2~combout\ & ((\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\) # (\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\))) # (\inst2|inst3|inst1|inst2|inst2~combout\ & 
-- ((!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\) # (!\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000101111110111010000001011101111110100000010001011111101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|inst1|inst2|ALT_INV_inst2~combout\,
	datab => \inst7|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst5|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	datad => \inst4|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datae => \inst4|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	combout => \inst7|inst|inst3|inst1|Bit3|inst|X1~combout\);

-- Location: LABCELL_X39_Y3_N24
\inst24|inst7|O1[3]~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[3]~121_combout\ = ( \DATA1[3]~input_o\ & ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & !\inst7|inst|inst3|inst1|Bit3|inst|X1~combout\) ) ) ) # ( !\DATA1[3]~input_o\ & ( \OP[0]~input_o\ & ( (!\inst7|inst|inst3|inst1|Bit3|inst|X1~combout\) # 
-- (\OP[1]~input_o\) ) ) ) # ( \DATA1[3]~input_o\ & ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (!\inst6|inst|inst3|inst1|Bit3|inst|X1~combout\)) # (\OP[1]~input_o\ & ((\DATA2[3]~input_o\))) ) ) ) # ( !\DATA1[3]~input_o\ & ( !\OP[0]~input_o\ & ( 
-- (!\inst6|inst|inst3|inst1|Bit3|inst|X1~combout\ & !\OP[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000111010001111111111000011111111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datab => \ALT_INV_DATA2[3]~input_o\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \inst7|inst|inst3|inst1|Bit3|inst|ALT_INV_X1~combout\,
	datae => \ALT_INV_DATA1[3]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[3]~121_combout\);

-- Location: LABCELL_X38_Y2_N48
\inst24|inst7|O1[3]~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[3]~122_combout\ = ( \DATA2[3]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) # (\DATA1[3]~input_o\) ) ) # ( !\DATA2[3]~input_o\ & ( (\DATA1[3]~input_o\ & \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[3]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_DATA2[3]~input_o\,
	combout => \inst24|inst7|O1[3]~122_combout\);

-- Location: LABCELL_X38_Y2_N24
\inst24|inst7|O1[3]~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[3]~123_combout\ = ( \OP[2]~input_o\ & ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\) # (\inst24|inst7|O1[3]~122_combout\) ) ) ) # ( !\OP[2]~input_o\ & ( \OP[0]~input_o\ & ( !\inst24|inst7|O1[3]~121_combout\ ) ) ) # ( \OP[2]~input_o\ & ( 
-- !\OP[0]~input_o\ & ( (!\OP[1]~input_o\) # (\inst24|inst7|O1[3]~123_combout\) ) ) ) # ( !\OP[2]~input_o\ & ( !\OP[0]~input_o\ & ( !\inst24|inst7|O1[3]~121_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111100111111001110101010101010101111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[3]~121_combout\,
	datab => \inst24|inst7|ALT_INV_O1[3]~123_combout\,
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[3]~122_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[3]~123_combout\);

-- Location: MLABCELL_X41_Y3_N27
\inst|inst3|inst1|Bit2|inst1|X1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Bit2|inst1|X1~combout\ = ( \inst5|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( !\inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ ) ) # ( !\inst5|inst|inst3|inst1|Bit2|inst|X1~combout\ & ( \inst4|inst|inst3|inst1|Bit2|inst|X1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	dataf => \inst5|inst|inst3|inst1|Bit2|inst|ALT_INV_X1~combout\,
	combout => \inst|inst3|inst1|Bit2|inst1|X1~combout\);

-- Location: MLABCELL_X41_Y3_N42
\inst24|inst7|O1[2]~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[2]~124_combout\ = ( \inst6|inst|inst3|inst1|Bit1|inst|And1~combout\ & ( \OP[0]~input_o\ & ( !\inst2|inst3|inst1|inst2|inst2~combout\ $ (!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\ $ (!\inst|inst3|inst1|Bit2|inst1|X1~combout\)) ) ) ) 
-- # ( !\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\ & ( \OP[0]~input_o\ & ( !\inst2|inst3|inst1|inst2|inst2~combout\ $ (!\inst7|inst|inst3|inst1|Bit1|inst|And1~combout\ $ (!\inst|inst3|inst1|Bit2|inst1|X1~combout\)) ) ) ) # ( 
-- \inst6|inst|inst3|inst1|Bit1|inst|And1~combout\ & ( !\OP[0]~input_o\ & ( !\inst|inst3|inst1|Bit2|inst1|X1~combout\ $ (!\inst|inst3|inst1|Bit1|inst2~combout\) ) ) ) # ( !\inst6|inst|inst3|inst1|Bit1|inst|And1~combout\ & ( !\OP[0]~input_o\ & ( 
-- !\inst|inst3|inst1|Bit2|inst1|X1~combout\ $ (\inst|inst3|inst1|Bit1|inst2~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000011111111000010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|inst1|inst2|ALT_INV_inst2~combout\,
	datab => \inst7|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\,
	datac => \inst|inst3|inst1|Bit2|inst1|ALT_INV_X1~combout\,
	datad => \inst|inst3|inst1|Bit1|ALT_INV_inst2~combout\,
	datae => \inst6|inst|inst3|inst1|Bit1|inst|ALT_INV_And1~combout\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[2]~124_combout\);

-- Location: MLABCELL_X41_Y3_N21
\inst24|inst7|O1[2]~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[2]~125_combout\ = ( \OP[1]~input_o\ & ( (!\DATA1[2]~input_o\ & ((\OP[0]~input_o\))) # (\DATA1[2]~input_o\ & (\DATA2[2]~input_o\ & !\OP[0]~input_o\)) ) ) # ( !\OP[1]~input_o\ & ( !\inst24|inst7|O1[2]~124_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000010001101010100001000110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[2]~input_o\,
	datab => \ALT_INV_DATA2[2]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[2]~124_combout\,
	datad => \ALT_INV_OP[0]~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \inst24|inst7|O1[2]~125_combout\);

-- Location: MLABCELL_X41_Y3_N18
\inst24|inst7|O1[2]~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[2]~126_combout\ = ( \DATA1[2]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) # (\DATA2[2]~input_o\) ) ) # ( !\DATA1[2]~input_o\ & ( (\DATA2[2]~input_o\ & !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA2[2]~input_o\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	combout => \inst24|inst7|O1[2]~126_combout\);

-- Location: MLABCELL_X41_Y3_N54
\inst24|inst7|O1[2]~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[2]~127_combout\ = ( \OP[2]~input_o\ & ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\) # (\inst24|inst7|O1[2]~126_combout\) ) ) ) # ( !\OP[2]~input_o\ & ( \OP[0]~input_o\ & ( !\inst24|inst7|O1[2]~125_combout\ ) ) ) # ( \OP[2]~input_o\ & ( 
-- !\OP[0]~input_o\ & ( (!\OP[1]~input_o\) # (\inst24|inst7|O1[2]~127_combout\) ) ) ) # ( !\OP[2]~input_o\ & ( !\OP[0]~input_o\ & ( !\inst24|inst7|O1[2]~125_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001111111110101010101010101100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[2]~125_combout\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[2]~126_combout\,
	datad => \inst24|inst7|ALT_INV_O1[2]~127_combout\,
	datae => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[2]~127_combout\);

-- Location: LABCELL_X38_Y2_N30
\inst24|inst7|O1[1]~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[1]~128_combout\ = ( \Cin~input_o\ & ( \OP[0]~input_o\ & ( !\DATA2[1]~input_o\ $ (!\DATA1[1]~input_o\ $ (((\DATA1[0]~input_o\ & !\DATA2[0]~input_o\)))) ) ) ) # ( !\Cin~input_o\ & ( \OP[0]~input_o\ & ( !\DATA2[1]~input_o\ $ 
-- (!\DATA1[1]~input_o\ $ (((!\DATA1[0]~input_o\ & \DATA2[0]~input_o\)))) ) ) ) # ( \Cin~input_o\ & ( !\OP[0]~input_o\ & ( !\DATA2[1]~input_o\ $ (!\DATA1[1]~input_o\ $ (((!\DATA1[0]~input_o\ & !\DATA2[0]~input_o\)))) ) ) ) # ( !\Cin~input_o\ & ( 
-- !\OP[0]~input_o\ & ( !\DATA2[1]~input_o\ $ (!\DATA1[1]~input_o\ $ (((\DATA1[0]~input_o\ & \DATA2[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001100101100011110000111100100101100110100100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[0]~input_o\,
	datab => \ALT_INV_DATA2[1]~input_o\,
	datac => \ALT_INV_DATA1[1]~input_o\,
	datad => \ALT_INV_DATA2[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[1]~128_combout\);

-- Location: LABCELL_X38_Y2_N6
\inst24|inst7|O1[1]~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[1]~129_combout\ = ( \OP[0]~input_o\ & ( (!\OP[1]~input_o\ & ((!\inst24|inst7|O1[1]~128_combout\))) # (\OP[1]~input_o\ & (!\DATA1[1]~input_o\)) ) ) # ( !\OP[0]~input_o\ & ( (!\OP[1]~input_o\ & (((!\inst24|inst7|O1[1]~128_combout\)))) # 
-- (\OP[1]~input_o\ & (\DATA1[1]~input_o\ & (\DATA2[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000010001111100000001000111110000101010101111000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[1]~input_o\,
	datab => \ALT_INV_DATA2[1]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[1]~128_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \inst24|inst7|O1[1]~129_combout\);

-- Location: LABCELL_X38_Y2_N9
\inst24|inst7|O1[1]~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[1]~130_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA1[1]~input_o\ ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( \DATA2[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[1]~input_o\,
	datab => \ALT_INV_DATA2[1]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[1]~130_combout\);

-- Location: LABCELL_X38_Y2_N12
\inst24|inst7|O1[1]~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[1]~131_combout\ = ( \OP[1]~input_o\ & ( \inst24|inst7|O1[1]~130_combout\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[1]~129_combout\)))) # (\OP[2]~input_o\ & (((\inst24|inst7|O1[1]~131_combout\)) # (\OP[0]~input_o\))) ) ) ) # ( 
-- !\OP[1]~input_o\ & ( \inst24|inst7|O1[1]~130_combout\ & ( (!\inst24|inst7|O1[1]~129_combout\) # (\OP[2]~input_o\) ) ) ) # ( \OP[1]~input_o\ & ( !\inst24|inst7|O1[1]~130_combout\ & ( (!\OP[2]~input_o\ & (((!\inst24|inst7|O1[1]~129_combout\)))) # 
-- (\OP[2]~input_o\ & (!\OP[0]~input_o\ & (\inst24|inst7|O1[1]~131_combout\))) ) ) ) # ( !\OP[1]~input_o\ & ( !\inst24|inst7|O1[1]~130_combout\ & ( (!\inst24|inst7|O1[1]~129_combout\) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111100100000001011111111000011111111011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[1]~131_combout\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[1]~129_combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[1]~130_combout\,
	combout => \inst24|inst7|O1[1]~131_combout\);

-- Location: LABCELL_X38_Y2_N21
\inst24|inst7|O1[0]~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[0]~133_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( (!\OP[0]~input_o\ & (!\OP[2]~input_o\ & ((!\DATA2[0]~input_o\) # (!\DATA1[0]~input_o\)))) # (\OP[0]~input_o\ & (((\DATA1[0]~input_o\)))) ) ) # ( 
-- !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( (!\OP[2]~input_o\ & ((!\OP[0]~input_o\ & ((!\DATA2[0]~input_o\) # (!\DATA1[0]~input_o\))) # (\OP[0]~input_o\ & ((\DATA1[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110100000000101011010000000010101101000001011010110100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_DATA2[0]~input_o\,
	datac => \ALT_INV_DATA1[0]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[0]~133_combout\);

-- Location: LABCELL_X38_Y2_N18
\inst24|inst7|O1[0]~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[0]~132_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( (\OP[1]~input_o\ & ((!\inst24|inst7|O1[0]~134_combout\) # (\OP[0]~input_o\))) ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst6~14_combout\ & ( (\OP[1]~input_o\ & 
-- ((!\OP[0]~input_o\ & ((!\inst24|inst7|O1[0]~134_combout\))) # (\OP[0]~input_o\ & (!\DATA2[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000001110010000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_DATA2[0]~input_o\,
	datac => \inst24|inst7|ALT_INV_O1[0]~134_combout\,
	datad => \ALT_INV_OP[1]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst6~14_combout\,
	combout => \inst24|inst7|O1[0]~132_combout\);

-- Location: LABCELL_X38_Y2_N54
\inst24|inst7|O1[0]~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|inst7|O1[0]~134_combout\ = ( \OP[1]~input_o\ & ( \inst24|inst7|O1[0]~132_combout\ & ( \inst24|inst7|O1[0]~133_combout\ ) ) ) # ( !\OP[1]~input_o\ & ( \inst24|inst7|O1[0]~132_combout\ & ( !\Cin~input_o\ $ 
-- (!\inst8|inst|inst|inst|inst|inst5~combout\) ) ) ) # ( \OP[1]~input_o\ & ( !\inst24|inst7|O1[0]~132_combout\ & ( (\OP[2]~input_o\) # (\inst24|inst7|O1[0]~133_combout\) ) ) ) # ( !\OP[1]~input_o\ & ( !\inst24|inst7|O1[0]~132_combout\ & ( (!\Cin~input_o\ $ 
-- (!\inst8|inst|inst|inst|inst|inst5~combout\)) # (\OP[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111001111010111110101111100110011110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[0]~133_combout\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \inst8|inst|inst|inst|inst|ALT_INV_inst5~combout\,
	datae => \ALT_INV_OP[1]~input_o\,
	dataf => \inst24|inst7|ALT_INV_O1[0]~132_combout\,
	combout => \inst24|inst7|O1[0]~134_combout\);

-- Location: LABCELL_X34_Y3_N12
\inst8|inst1|inst1|inst1|inst3|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ = ( \DATA1[31]~input_o\ & ( \DATA2[29]~input_o\ & ( (\DATA1[29]~input_o\ & (\DATA2[31]~input_o\ & (!\DATA2[30]~input_o\ $ (\DATA1[30]~input_o\)))) ) ) ) # ( !\DATA1[31]~input_o\ & ( \DATA2[29]~input_o\ & ( 
-- (\DATA1[29]~input_o\ & (!\DATA2[31]~input_o\ & (!\DATA2[30]~input_o\ $ (\DATA1[30]~input_o\)))) ) ) ) # ( \DATA1[31]~input_o\ & ( !\DATA2[29]~input_o\ & ( (!\DATA1[29]~input_o\ & (\DATA2[31]~input_o\ & (!\DATA2[30]~input_o\ $ (\DATA1[30]~input_o\)))) ) ) 
-- ) # ( !\DATA1[31]~input_o\ & ( !\DATA2[29]~input_o\ & ( (!\DATA1[29]~input_o\ & (!\DATA2[31]~input_o\ & (!\DATA2[30]~input_o\ $ (\DATA1[30]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[29]~input_o\,
	datab => \ALT_INV_DATA2[31]~input_o\,
	datac => \ALT_INV_DATA2[30]~input_o\,
	datad => \ALT_INV_DATA1[30]~input_o\,
	datae => \ALT_INV_DATA1[31]~input_o\,
	dataf => \ALT_INV_DATA2[29]~input_o\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\);

-- Location: LABCELL_X38_Y2_N3
\inst8|inst1|inst1|inst1|inst3|inst4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst1|inst1|inst3|inst4~combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\)) 
-- ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111101011111111111111111111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datac => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	combout => \inst8|inst1|inst1|inst1|inst3|inst4~combout\);

-- Location: LABCELL_X34_Y4_N45
\inst21|O1[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[31]~0_combout\ = ( \inst24|inst7|O1[31]~35_combout\ & ( \DATA1[31]~input_o\ ) ) # ( !\inst24|inst7|O1[31]~35_combout\ & ( \DATA1[31]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[31]~35_combout\ & ( !\DATA1[31]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[31]~35_combout\,
	dataf => \ALT_INV_DATA1[31]~input_o\,
	combout => \inst21|O1[31]~0_combout\);

-- Location: LABCELL_X38_Y2_N36
\inst21|O1[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[30]~1_combout\ = ( \inst24|inst7|O1[30]~37_combout\ & ( \DATA1[30]~input_o\ ) ) # ( !\inst24|inst7|O1[30]~37_combout\ & ( \DATA1[30]~input_o\ & ( (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & \inst8|inst1|inst1|inst1|inst|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[30]~37_combout\ & ( !\DATA1[30]~input_o\ & ( (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datad => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[30]~37_combout\,
	dataf => \ALT_INV_DATA1[30]~input_o\,
	combout => \inst21|O1[30]~1_combout\);

-- Location: LABCELL_X38_Y2_N45
\inst21|O1[29]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[29]~2_combout\ = ( \inst24|inst7|O1[29]~40_combout\ & ( \DATA1[29]~input_o\ ) ) # ( !\inst24|inst7|O1[29]~40_combout\ & ( \DATA1[29]~input_o\ & ( (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & \inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) ) # ( \inst24|inst7|O1[29]~40_combout\ & ( !\DATA1[29]~input_o\ & ( (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # (!\inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst24|inst7|ALT_INV_O1[29]~40_combout\,
	dataf => \ALT_INV_DATA1[29]~input_o\,
	combout => \inst21|O1[29]~2_combout\);

-- Location: LABCELL_X38_Y2_N39
\inst21|O1[28]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[28]~3_combout\ = ( \inst24|inst7|O1[28]~43_combout\ & ( \DATA1[28]~input_o\ ) ) # ( !\inst24|inst7|O1[28]~43_combout\ & ( \DATA1[28]~input_o\ & ( (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & \inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) ) # ( \inst24|inst7|O1[28]~43_combout\ & ( !\DATA1[28]~input_o\ & ( (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # (!\inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst24|inst7|ALT_INV_O1[28]~43_combout\,
	dataf => \ALT_INV_DATA1[28]~input_o\,
	combout => \inst21|O1[28]~3_combout\);

-- Location: LABCELL_X35_Y3_N15
\inst21|O1[27]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[27]~4_combout\ = ( \inst24|inst7|O1[27]~47_combout\ & ( \DATA1[27]~input_o\ ) ) # ( !\inst24|inst7|O1[27]~47_combout\ & ( \DATA1[27]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[27]~47_combout\ & ( !\DATA1[27]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[27]~47_combout\,
	dataf => \ALT_INV_DATA1[27]~input_o\,
	combout => \inst21|O1[27]~4_combout\);

-- Location: LABCELL_X35_Y3_N12
\inst21|O1[26]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[26]~5_combout\ = ( \inst24|inst7|O1[26]~50_combout\ & ( \DATA1[26]~input_o\ ) ) # ( !\inst24|inst7|O1[26]~50_combout\ & ( \DATA1[26]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) ) # ( \inst24|inst7|O1[26]~50_combout\ & ( !\DATA1[26]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst24|inst7|ALT_INV_O1[26]~50_combout\,
	dataf => \ALT_INV_DATA1[26]~input_o\,
	combout => \inst21|O1[26]~5_combout\);

-- Location: LABCELL_X35_Y4_N48
\inst21|O1[25]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[25]~6_combout\ = ( \inst24|inst7|O1[25]~52_combout\ & ( \DATA1[25]~input_o\ ) ) # ( !\inst24|inst7|O1[25]~52_combout\ & ( \DATA1[25]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[25]~52_combout\ & ( !\DATA1[25]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[25]~52_combout\,
	dataf => \ALT_INV_DATA1[25]~input_o\,
	combout => \inst21|O1[25]~6_combout\);

-- Location: LABCELL_X34_Y4_N18
\inst21|O1[24]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[24]~7_combout\ = ( \inst24|inst7|O1[24]~55_combout\ & ( \DATA1[24]~input_o\ ) ) # ( !\inst24|inst7|O1[24]~55_combout\ & ( \DATA1[24]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) ) # ( \inst24|inst7|O1[24]~55_combout\ & ( !\DATA1[24]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst24|inst7|ALT_INV_O1[24]~55_combout\,
	dataf => \ALT_INV_DATA1[24]~input_o\,
	combout => \inst21|O1[24]~7_combout\);

-- Location: LABCELL_X34_Y4_N21
\inst21|O1[23]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[23]~8_combout\ = ( \inst24|inst7|O1[23]~58_combout\ & ( \DATA1[23]~input_o\ ) ) # ( !\inst24|inst7|O1[23]~58_combout\ & ( \DATA1[23]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[23]~58_combout\ & ( !\DATA1[23]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[23]~58_combout\,
	dataf => \ALT_INV_DATA1[23]~input_o\,
	combout => \inst21|O1[23]~8_combout\);

-- Location: LABCELL_X34_Y4_N42
\inst21|O1[22]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[22]~9_combout\ = ( \inst24|inst7|O1[22]~62_combout\ & ( \DATA1[22]~input_o\ ) ) # ( !\inst24|inst7|O1[22]~62_combout\ & ( \DATA1[22]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) ) # ( \inst24|inst7|O1[22]~62_combout\ & ( !\DATA1[22]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst24|inst7|ALT_INV_O1[22]~62_combout\,
	dataf => \ALT_INV_DATA1[22]~input_o\,
	combout => \inst21|O1[22]~9_combout\);

-- Location: MLABCELL_X41_Y4_N51
\inst21|O1[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[21]~10_combout\ = ( \inst24|inst7|O1[21]~65_combout\ & ( \DATA1[21]~input_o\ ) ) # ( !\inst24|inst7|O1[21]~65_combout\ & ( \DATA1[21]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & 
-- (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) ) # ( \inst24|inst7|O1[21]~65_combout\ & ( !\DATA1[21]~input_o\ & ( 
-- (!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datab => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst24|inst7|ALT_INV_O1[21]~65_combout\,
	dataf => \ALT_INV_DATA1[21]~input_o\,
	combout => \inst21|O1[21]~10_combout\);

-- Location: LABCELL_X45_Y2_N33
\inst21|O1[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[20]~11_combout\ = ( \inst24|inst7|O1[20]~67_combout\ & ( \DATA1[20]~input_o\ ) ) # ( !\inst24|inst7|O1[20]~67_combout\ & ( \DATA1[20]~input_o\ & ( (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[20]~67_combout\ & ( !\DATA1[20]~input_o\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[20]~67_combout\,
	dataf => \ALT_INV_DATA1[20]~input_o\,
	combout => \inst21|O1[20]~11_combout\);

-- Location: MLABCELL_X41_Y4_N48
\inst21|O1[19]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[19]~12_combout\ = ( \inst24|inst7|O1[19]~71_combout\ & ( \DATA1[19]~input_o\ ) ) # ( !\inst24|inst7|O1[19]~71_combout\ & ( \DATA1[19]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & 
-- (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[19]~71_combout\ & ( !\DATA1[19]~input_o\ & ( 
-- (!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datab => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datac => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[19]~71_combout\,
	dataf => \ALT_INV_DATA1[19]~input_o\,
	combout => \inst21|O1[19]~12_combout\);

-- Location: LABCELL_X45_Y2_N9
\inst21|O1[18]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[18]~13_combout\ = ( \inst24|inst7|O1[18]~75_combout\ & ( \DATA1[18]~input_o\ ) ) # ( !\inst24|inst7|O1[18]~75_combout\ & ( \DATA1[18]~input_o\ & ( (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[18]~75_combout\ & ( !\DATA1[18]~input_o\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[18]~75_combout\,
	dataf => \ALT_INV_DATA1[18]~input_o\,
	combout => \inst21|O1[18]~13_combout\);

-- Location: LABCELL_X45_Y2_N6
\inst21|O1[17]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[17]~14_combout\ = ( \inst24|inst7|O1[17]~79_combout\ & ( \DATA1[17]~input_o\ ) ) # ( !\inst24|inst7|O1[17]~79_combout\ & ( \DATA1[17]~input_o\ & ( (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ 
-- & (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst1|inst1|inst1|inst|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[17]~79_combout\ & ( !\DATA1[17]~input_o\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[17]~79_combout\,
	dataf => \ALT_INV_DATA1[17]~input_o\,
	combout => \inst21|O1[17]~14_combout\);

-- Location: MLABCELL_X46_Y2_N30
\inst21|O1[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[16]~15_combout\ = ( \inst24|inst7|O1[16]~81_combout\ & ( \DATA1[16]~input_o\ ) ) # ( !\inst24|inst7|O1[16]~81_combout\ & ( \DATA1[16]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & 
-- (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[16]~81_combout\ & ( !\DATA1[16]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[16]~81_combout\,
	dataf => \ALT_INV_DATA1[16]~input_o\,
	combout => \inst21|O1[16]~15_combout\);

-- Location: LABCELL_X45_Y2_N15
\inst21|O1[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[15]~16_combout\ = ( \inst24|inst7|O1[15]~84_combout\ & ( \DATA1[15]~input_o\ ) ) # ( !\inst24|inst7|O1[15]~84_combout\ & ( \DATA1[15]~input_o\ & ( (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & 
-- (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[15]~84_combout\ & ( !\DATA1[15]~input_o\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datab => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[15]~84_combout\,
	dataf => \ALT_INV_DATA1[15]~input_o\,
	combout => \inst21|O1[15]~16_combout\);

-- Location: LABCELL_X47_Y4_N12
\inst21|O1[14]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[14]~17_combout\ = ( \inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & (((\inst24|inst7|O1[14]~87_combout\)))) # 
-- (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\ & ((\inst24|inst7|O1[14]~87_combout\))) # (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (\DATA1[14]~input_o\)))) ) ) ) # ( 
-- !\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( \inst24|inst7|O1[14]~87_combout\ ) ) ) # ( \inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( !\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( 
-- \inst24|inst7|O1[14]~87_combout\ ) ) ) # ( !\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( !\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( \inst24|inst7|O1[14]~87_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA1[14]~input_o\,
	datab => \inst24|inst7|ALT_INV_O1[14]~87_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	dataf => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	combout => \inst21|O1[14]~17_combout\);

-- Location: LABCELL_X45_Y2_N12
\inst21|O1[13]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[13]~18_combout\ = ( \inst24|inst7|O1[13]~89_combout\ & ( \DATA1[13]~input_o\ ) ) # ( !\inst24|inst7|O1[13]~89_combout\ & ( \DATA1[13]~input_o\ & ( (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & 
-- (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\))) ) ) ) # ( \inst24|inst7|O1[13]~89_combout\ & ( !\DATA1[13]~input_o\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datab => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datae => \inst24|inst7|ALT_INV_O1[13]~89_combout\,
	dataf => \ALT_INV_DATA1[13]~input_o\,
	combout => \inst21|O1[13]~18_combout\);

-- Location: LABCELL_X47_Y4_N21
\inst21|O1[12]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[12]~19_combout\ = ( \DATA1[12]~input_o\ & ( \inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( ((\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\))) 
-- # (\inst24|inst7|O1[12]~93_combout\) ) ) ) # ( !\DATA1[12]~input_o\ & ( \inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( (\inst24|inst7|O1[12]~93_combout\ & ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # 
-- ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # (!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\)))) ) ) ) # ( \DATA1[12]~input_o\ & ( !\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( \inst24|inst7|O1[12]~93_combout\ ) ) ) # ( !\DATA1[12]~input_o\ 
-- & ( !\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ( \inst24|inst7|O1[12]~93_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst24|inst7|ALT_INV_O1[12]~93_combout\,
	datae => \ALT_INV_DATA1[12]~input_o\,
	dataf => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	combout => \inst21|O1[12]~19_combout\);

-- Location: MLABCELL_X46_Y2_N6
\inst21|O1[11]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[11]~20_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( \DATA1[11]~input_o\ & ( ((\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & \inst8|inst|inst1|inst1|inst2|inst4~combout\))) 
-- # (\inst24|inst7|O1[11]~96_combout\) ) ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( \DATA1[11]~input_o\ & ( \inst24|inst7|O1[11]~96_combout\ ) ) ) # ( \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( !\DATA1[11]~input_o\ & ( 
-- (\inst24|inst7|O1[11]~96_combout\ & ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # (!\inst8|inst|inst1|inst1|inst2|inst4~combout\)))) ) ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( 
-- !\DATA1[11]~input_o\ & ( \inst24|inst7|O1[11]~96_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010001010101010101010101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst7|ALT_INV_O1[11]~96_combout\,
	datab => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datac => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	dataf => \ALT_INV_DATA1[11]~input_o\,
	combout => \inst21|O1[11]~20_combout\);

-- Location: MLABCELL_X46_Y2_N33
\inst21|O1[10]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[10]~21_combout\ = ( \inst24|inst7|O1[10]~100_combout\ & ( \DATA1[10]~input_o\ ) ) # ( !\inst24|inst7|O1[10]~100_combout\ & ( \DATA1[10]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ 
-- & (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\))) ) ) ) # ( \inst24|inst7|O1[10]~100_combout\ & ( !\DATA1[10]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datae => \inst24|inst7|ALT_INV_O1[10]~100_combout\,
	dataf => \ALT_INV_DATA1[10]~input_o\,
	combout => \inst21|O1[10]~21_combout\);

-- Location: MLABCELL_X46_Y2_N12
\inst21|O1[9]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[9]~22_combout\ = ( \inst24|inst7|O1[9]~103_combout\ & ( \DATA1[9]~input_o\ ) ) # ( !\inst24|inst7|O1[9]~103_combout\ & ( \DATA1[9]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & 
-- (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[9]~103_combout\ & ( !\DATA1[9]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[9]~103_combout\,
	dataf => \ALT_INV_DATA1[9]~input_o\,
	combout => \inst21|O1[9]~22_combout\);

-- Location: MLABCELL_X46_Y2_N15
\inst21|O1[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[8]~23_combout\ = ( \inst24|inst7|O1[8]~107_combout\ & ( \DATA1[8]~input_o\ ) ) # ( !\inst24|inst7|O1[8]~107_combout\ & ( \DATA1[8]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & 
-- (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) ) # ( \inst24|inst7|O1[8]~107_combout\ & ( !\DATA1[8]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst24|inst7|ALT_INV_O1[8]~107_combout\,
	dataf => \ALT_INV_DATA1[8]~input_o\,
	combout => \inst21|O1[8]~23_combout\);

-- Location: LABCELL_X45_Y2_N18
\inst21|O1[7]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[7]~24_combout\ = ( \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( \inst8|inst|inst1|inst1|inst2|inst4~combout\ & ( (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & (((\inst24|inst7|O1[7]~110_combout\)))) # 
-- (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & ((\inst24|inst7|O1[7]~110_combout\))) # (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\DATA1[7]~input_o\)))) ) ) ) # ( 
-- !\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( \inst8|inst|inst1|inst1|inst2|inst4~combout\ & ( \inst24|inst7|O1[7]~110_combout\ ) ) ) # ( \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( !\inst8|inst|inst1|inst1|inst2|inst4~combout\ & ( 
-- \inst24|inst7|O1[7]~110_combout\ ) ) ) # ( !\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & ( !\inst8|inst|inst1|inst1|inst2|inst4~combout\ & ( \inst24|inst7|O1[7]~110_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datac => \ALT_INV_DATA1[7]~input_o\,
	datad => \inst24|inst7|ALT_INV_O1[7]~110_combout\,
	datae => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	dataf => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	combout => \inst21|O1[7]~24_combout\);

-- Location: MLABCELL_X46_Y2_N18
\inst21|O1[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[6]~25_combout\ = ( \inst24|inst7|O1[6]~114_combout\ & ( \DATA1[6]~input_o\ ) ) # ( !\inst24|inst7|O1[6]~114_combout\ & ( \DATA1[6]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & 
-- (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[6]~114_combout\ & ( !\DATA1[6]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[6]~114_combout\,
	dataf => \ALT_INV_DATA1[6]~input_o\,
	combout => \inst21|O1[6]~25_combout\);

-- Location: MLABCELL_X46_Y2_N21
\inst21|O1[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[5]~26_combout\ = ( \inst24|inst7|O1[5]~117_combout\ & ( \DATA1[5]~input_o\ ) ) # ( !\inst24|inst7|O1[5]~117_combout\ & ( \DATA1[5]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & 
-- (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\))) ) ) ) # ( \inst24|inst7|O1[5]~117_combout\ & ( !\DATA1[5]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datae => \inst24|inst7|ALT_INV_O1[5]~117_combout\,
	dataf => \ALT_INV_DATA1[5]~input_o\,
	combout => \inst21|O1[5]~26_combout\);

-- Location: LABCELL_X45_Y2_N27
\inst21|O1[4]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[4]~27_combout\ = ( \inst24|inst7|O1[4]~120_combout\ & ( \DATA1[4]~input_o\ ) ) # ( !\inst24|inst7|O1[4]~120_combout\ & ( \DATA1[4]~input_o\ & ( (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & 
-- (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & \inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[4]~120_combout\ & ( !\DATA1[4]~input_o\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datab => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datac => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[4]~120_combout\,
	dataf => \ALT_INV_DATA1[4]~input_o\,
	combout => \inst21|O1[4]~27_combout\);

-- Location: LABCELL_X35_Y4_N51
\inst21|O1[3]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[3]~28_combout\ = ( \inst24|inst7|O1[3]~123_combout\ & ( \DATA1[3]~input_o\ ) ) # ( !\inst24|inst7|O1[3]~123_combout\ & ( \DATA1[3]~input_o\ & ( (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & 
-- (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) ) # ( \inst24|inst7|O1[3]~123_combout\ & ( !\DATA1[3]~input_o\ & ( (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst|inst1|inst1|inst2|inst4~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datae => \inst24|inst7|ALT_INV_O1[3]~123_combout\,
	dataf => \ALT_INV_DATA1[3]~input_o\,
	combout => \inst21|O1[3]~28_combout\);

-- Location: LABCELL_X45_Y2_N30
\inst21|O1[2]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[2]~29_combout\ = ( \inst24|inst7|O1[2]~127_combout\ & ( \DATA1[2]~input_o\ ) ) # ( !\inst24|inst7|O1[2]~127_combout\ & ( \DATA1[2]~input_o\ & ( (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & 
-- (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst1|inst1|inst1|inst|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[2]~127_combout\ & ( !\DATA1[2]~input_o\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[2]~127_combout\,
	dataf => \ALT_INV_DATA1[2]~input_o\,
	combout => \inst21|O1[2]~29_combout\);

-- Location: LABCELL_X38_Y2_N42
\inst21|O1[1]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[1]~30_combout\ = ( \inst24|inst7|O1[1]~131_combout\ & ( \DATA1[1]~input_o\ ) ) # ( !\inst24|inst7|O1[1]~131_combout\ & ( \DATA1[1]~input_o\ & ( (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & (\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\ & 
-- (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & \inst8|inst1|inst1|inst1|inst|inst4~2_combout\))) ) ) ) # ( \inst24|inst7|O1[1]~131_combout\ & ( !\DATA1[1]~input_o\ & ( (!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\) # ((!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # (!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datab => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datad => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datae => \inst24|inst7|ALT_INV_O1[1]~131_combout\,
	dataf => \ALT_INV_DATA1[1]~input_o\,
	combout => \inst21|O1[1]~30_combout\);

-- Location: LABCELL_X45_Y2_N24
\inst21|O1[0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|O1[0]~31_combout\ = ( \inst24|inst7|O1[0]~134_combout\ & ( \DATA1[0]~input_o\ ) ) # ( !\inst24|inst7|O1[0]~134_combout\ & ( \DATA1[0]~input_o\ & ( (\inst8|inst|inst1|inst1|inst2|inst4~combout\ & (\inst8|inst1|inst1|inst1|inst|inst4~2_combout\ & 
-- (\inst8|inst1|inst|inst1|inst1|inst4~2_combout\ & \inst8|inst1|inst1|inst1|inst3|inst4~0_combout\))) ) ) ) # ( \inst24|inst7|O1[0]~134_combout\ & ( !\DATA1[0]~input_o\ & ( (!\inst8|inst|inst1|inst1|inst2|inst4~combout\) # 
-- ((!\inst8|inst1|inst1|inst1|inst|inst4~2_combout\) # ((!\inst8|inst1|inst|inst1|inst1|inst4~2_combout\) # (!\inst8|inst1|inst1|inst1|inst3|inst4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst1|inst2|ALT_INV_inst4~combout\,
	datab => \inst8|inst1|inst1|inst1|inst|ALT_INV_inst4~2_combout\,
	datac => \inst8|inst1|inst|inst1|inst1|ALT_INV_inst4~2_combout\,
	datad => \inst8|inst1|inst1|inst1|inst3|ALT_INV_inst4~0_combout\,
	datae => \inst24|inst7|ALT_INV_O1[0]~134_combout\,
	dataf => \ALT_INV_DATA1[0]~input_o\,
	combout => \inst21|O1[0]~31_combout\);

-- Location: IOIBUF_X111_Y0_N35
\SHAMT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(4),
	o => \SHAMT[4]~input_o\);

-- Location: IOIBUF_X104_Y0_N1
\SHAMT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(3),
	o => \SHAMT[3]~input_o\);

-- Location: IOIBUF_X26_Y115_N35
\SHAMT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(2),
	o => \SHAMT[2]~input_o\);

-- Location: IOIBUF_X121_Y31_N38
\SHAMT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(1),
	o => \SHAMT[1]~input_o\);

-- Location: IOIBUF_X121_Y61_N38
\SHAMT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHAMT(0),
	o => \SHAMT[0]~input_o\);

-- Location: LABCELL_X21_Y8_N0
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


