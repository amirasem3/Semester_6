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

-- DATE "06/17/2019 15:35:28"

-- 
-- Device: Altera 5CGXFC9E7F35C8 Package FBGA1152
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

ENTITY 	reg_32bit IS
    PORT (
	\OUT\ : OUT std_logic_vector(31 DOWNTO 0);
	CLK : IN std_logic;
	Clear : IN std_logic;
	Write : IN std_logic;
	Data : IN std_logic_vector(31 DOWNTO 0)
	);
END reg_32bit;

-- Design Ports Information
-- OUT[31]	=>  Location: PIN_AP24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[30]	=>  Location: PIN_AP26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[29]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[28]	=>  Location: PIN_AM21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[27]	=>  Location: PIN_AL25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[26]	=>  Location: PIN_AN27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[25]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[24]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[23]	=>  Location: PIN_AL27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[22]	=>  Location: PIN_AN19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[21]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[20]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[19]	=>  Location: PIN_AP21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[18]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[17]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[16]	=>  Location: PIN_AP25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[15]	=>  Location: PIN_AM19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[14]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[12]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[11]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[10]	=>  Location: PIN_AP32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[9]	=>  Location: PIN_AL21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[8]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[7]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[6]	=>  Location: PIN_AN28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[5]	=>  Location: PIN_AP29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[3]	=>  Location: PIN_AN32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[2]	=>  Location: PIN_AN31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[1]	=>  Location: PIN_AL28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[0]	=>  Location: PIN_AN24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[31]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AL22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_AP27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write	=>  Location: PIN_AM24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[30]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[29]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[28]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[27]	=>  Location: PIN_AL26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[26]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[25]	=>  Location: PIN_AL23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[24]	=>  Location: PIN_AP31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[23]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[22]	=>  Location: PIN_AN23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[21]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[20]	=>  Location: PIN_AP19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[19]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[18]	=>  Location: PIN_AP30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[17]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[16]	=>  Location: PIN_AM20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[15]	=>  Location: PIN_AM23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[14]	=>  Location: PIN_AN26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[13]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[12]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[11]	=>  Location: PIN_AM28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[10]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[9]	=>  Location: PIN_AP22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[8]	=>  Location: PIN_AN21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[7]	=>  Location: PIN_AL20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[6]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[4]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[3]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[2]	=>  Location: PIN_AM26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_AM25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[0]	=>  Location: PIN_AN22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg_32bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_OUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Write : std_logic;
SIGNAL ww_Data : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Write~input_o\ : std_logic;
SIGNAL \Data[31]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst1|inst8|inst2~1_combout\ : std_logic;
SIGNAL \Data[30]~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst1|inst7|inst2~1_combout\ : std_logic;
SIGNAL \Data[29]~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst1|inst6|inst2~1_combout\ : std_logic;
SIGNAL \Data[28]~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst1|inst5|inst2~1_combout\ : std_logic;
SIGNAL \Data[27]~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst|inst8|inst2~1_combout\ : std_logic;
SIGNAL \Data[26]~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst|inst7|inst2~1_combout\ : std_logic;
SIGNAL \Data[25]~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst|inst6|inst2~1_combout\ : std_logic;
SIGNAL \Data[24]~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst|inst5|inst2~1_combout\ : std_logic;
SIGNAL \Data[23]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst1|inst8|inst2~1_combout\ : std_logic;
SIGNAL \Data[22]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst1|inst7|inst2~1_combout\ : std_logic;
SIGNAL \Data[21]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst1|inst6|inst2~1_combout\ : std_logic;
SIGNAL \Data[20]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst1|inst5|inst2~1_combout\ : std_logic;
SIGNAL \Data[19]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst|inst8|inst2~1_combout\ : std_logic;
SIGNAL \Data[18]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst|inst7|inst2~1_combout\ : std_logic;
SIGNAL \Data[17]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst|inst6|inst2~1_combout\ : std_logic;
SIGNAL \Data[16]~input_o\ : std_logic;
SIGNAL \inst1|inst|inst|inst5|inst2~1_combout\ : std_logic;
SIGNAL \Data[15]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst1|inst8|inst2~1_combout\ : std_logic;
SIGNAL \Data[14]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst1|inst7|inst2~1_combout\ : std_logic;
SIGNAL \Data[13]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst1|inst6|inst2~1_combout\ : std_logic;
SIGNAL \Data[12]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst1|inst5|inst2~1_combout\ : std_logic;
SIGNAL \Data[11]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst|inst8|inst2~1_combout\ : std_logic;
SIGNAL \Data[10]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst|inst7|inst2~1_combout\ : std_logic;
SIGNAL \Data[9]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst|inst6|inst2~1_combout\ : std_logic;
SIGNAL \Data[8]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst|inst5|inst2~1_combout\ : std_logic;
SIGNAL \Data[7]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|inst8|inst2~1_combout\ : std_logic;
SIGNAL \Data[6]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|inst7|inst2~1_combout\ : std_logic;
SIGNAL \Data[5]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|inst6|inst2~1_combout\ : std_logic;
SIGNAL \Data[4]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|inst5|inst2~1_combout\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \inst|inst|inst|inst8|inst2~1_combout\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \inst|inst|inst|inst7|inst2~1_combout\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \inst|inst|inst|inst6|inst2~1_combout\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \inst|inst|inst|inst5|inst2~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|inst8|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst|inst5|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst|inst6|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst|inst7|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst|inst8|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst1|inst5|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst1|inst6|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst1|inst7|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst1|inst8|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|inst5|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|inst6|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|inst7|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|inst8|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|inst5|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|inst6|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|inst7|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|inst8|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write~input_o\ : std_logic;
SIGNAL \ALT_INV_Clear~input_o\ : std_logic;
SIGNAL \ALT_INV_CLK~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[31]~input_o\ : std_logic;
SIGNAL \inst|inst|inst|inst5|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst6|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst7|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst8|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst|inst1|inst5|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst|inst1|inst6|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst|inst1|inst7|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst|inst1|inst8|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst5|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst6|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst7|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst8|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|inst5|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|inst6|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst1|inst7|ALT_INV_inst2~1_combout\ : std_logic;

BEGIN

\OUT\ <= \ww_OUT\;
ww_CLK <= CLK;
ww_Clear <= Clear;
ww_Write <= Write;
ww_Data <= Data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|inst1|inst1|inst8|ALT_INV_inst2~1_combout\ <= NOT \inst|inst1|inst1|inst8|inst2~1_combout\;
\inst1|inst|inst|inst5|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst|inst|inst5|inst2~1_combout\;
\inst1|inst|inst|inst6|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst|inst|inst6|inst2~1_combout\;
\inst1|inst|inst|inst7|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst|inst|inst7|inst2~1_combout\;
\inst1|inst|inst|inst8|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst|inst|inst8|inst2~1_combout\;
\inst1|inst|inst1|inst5|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst|inst1|inst5|inst2~1_combout\;
\inst1|inst|inst1|inst6|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst|inst1|inst6|inst2~1_combout\;
\inst1|inst|inst1|inst7|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst|inst1|inst7|inst2~1_combout\;
\inst1|inst|inst1|inst8|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst|inst1|inst8|inst2~1_combout\;
\inst1|inst1|inst|inst5|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst1|inst|inst5|inst2~1_combout\;
\inst1|inst1|inst|inst6|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst1|inst|inst6|inst2~1_combout\;
\inst1|inst1|inst|inst7|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst1|inst|inst7|inst2~1_combout\;
\inst1|inst1|inst|inst8|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst1|inst|inst8|inst2~1_combout\;
\inst1|inst1|inst1|inst5|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst1|inst1|inst5|inst2~1_combout\;
\inst1|inst1|inst1|inst6|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst1|inst1|inst6|inst2~1_combout\;
\inst1|inst1|inst1|inst7|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst1|inst1|inst7|inst2~1_combout\;
\inst1|inst1|inst1|inst8|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst1|inst1|inst8|inst2~1_combout\;
\ALT_INV_Data[0]~input_o\ <= NOT \Data[0]~input_o\;
\ALT_INV_Data[1]~input_o\ <= NOT \Data[1]~input_o\;
\ALT_INV_Data[2]~input_o\ <= NOT \Data[2]~input_o\;
\ALT_INV_Data[3]~input_o\ <= NOT \Data[3]~input_o\;
\ALT_INV_Data[4]~input_o\ <= NOT \Data[4]~input_o\;
\ALT_INV_Data[5]~input_o\ <= NOT \Data[5]~input_o\;
\ALT_INV_Data[6]~input_o\ <= NOT \Data[6]~input_o\;
\ALT_INV_Data[7]~input_o\ <= NOT \Data[7]~input_o\;
\ALT_INV_Data[8]~input_o\ <= NOT \Data[8]~input_o\;
\ALT_INV_Data[9]~input_o\ <= NOT \Data[9]~input_o\;
\ALT_INV_Data[10]~input_o\ <= NOT \Data[10]~input_o\;
\ALT_INV_Data[11]~input_o\ <= NOT \Data[11]~input_o\;
\ALT_INV_Data[12]~input_o\ <= NOT \Data[12]~input_o\;
\ALT_INV_Data[13]~input_o\ <= NOT \Data[13]~input_o\;
\ALT_INV_Data[14]~input_o\ <= NOT \Data[14]~input_o\;
\ALT_INV_Data[15]~input_o\ <= NOT \Data[15]~input_o\;
\ALT_INV_Data[16]~input_o\ <= NOT \Data[16]~input_o\;
\ALT_INV_Data[17]~input_o\ <= NOT \Data[17]~input_o\;
\ALT_INV_Data[18]~input_o\ <= NOT \Data[18]~input_o\;
\ALT_INV_Data[19]~input_o\ <= NOT \Data[19]~input_o\;
\ALT_INV_Data[20]~input_o\ <= NOT \Data[20]~input_o\;
\ALT_INV_Data[21]~input_o\ <= NOT \Data[21]~input_o\;
\ALT_INV_Data[22]~input_o\ <= NOT \Data[22]~input_o\;
\ALT_INV_Data[23]~input_o\ <= NOT \Data[23]~input_o\;
\ALT_INV_Data[24]~input_o\ <= NOT \Data[24]~input_o\;
\ALT_INV_Data[25]~input_o\ <= NOT \Data[25]~input_o\;
\ALT_INV_Data[26]~input_o\ <= NOT \Data[26]~input_o\;
\ALT_INV_Data[27]~input_o\ <= NOT \Data[27]~input_o\;
\ALT_INV_Data[28]~input_o\ <= NOT \Data[28]~input_o\;
\ALT_INV_Data[29]~input_o\ <= NOT \Data[29]~input_o\;
\ALT_INV_Data[30]~input_o\ <= NOT \Data[30]~input_o\;
\ALT_INV_Write~input_o\ <= NOT \Write~input_o\;
\ALT_INV_Clear~input_o\ <= NOT \Clear~input_o\;
\ALT_INV_CLK~input_o\ <= NOT \CLK~input_o\;
\ALT_INV_Data[31]~input_o\ <= NOT \Data[31]~input_o\;
\inst|inst|inst|inst5|ALT_INV_inst2~1_combout\ <= NOT \inst|inst|inst|inst5|inst2~1_combout\;
\inst|inst|inst|inst6|ALT_INV_inst2~1_combout\ <= NOT \inst|inst|inst|inst6|inst2~1_combout\;
\inst|inst|inst|inst7|ALT_INV_inst2~1_combout\ <= NOT \inst|inst|inst|inst7|inst2~1_combout\;
\inst|inst|inst|inst8|ALT_INV_inst2~1_combout\ <= NOT \inst|inst|inst|inst8|inst2~1_combout\;
\inst|inst|inst1|inst5|ALT_INV_inst2~1_combout\ <= NOT \inst|inst|inst1|inst5|inst2~1_combout\;
\inst|inst|inst1|inst6|ALT_INV_inst2~1_combout\ <= NOT \inst|inst|inst1|inst6|inst2~1_combout\;
\inst|inst|inst1|inst7|ALT_INV_inst2~1_combout\ <= NOT \inst|inst|inst1|inst7|inst2~1_combout\;
\inst|inst|inst1|inst8|ALT_INV_inst2~1_combout\ <= NOT \inst|inst|inst1|inst8|inst2~1_combout\;
\inst|inst1|inst|inst5|ALT_INV_inst2~1_combout\ <= NOT \inst|inst1|inst|inst5|inst2~1_combout\;
\inst|inst1|inst|inst6|ALT_INV_inst2~1_combout\ <= NOT \inst|inst1|inst|inst6|inst2~1_combout\;
\inst|inst1|inst|inst7|ALT_INV_inst2~1_combout\ <= NOT \inst|inst1|inst|inst7|inst2~1_combout\;
\inst|inst1|inst|inst8|ALT_INV_inst2~1_combout\ <= NOT \inst|inst1|inst|inst8|inst2~1_combout\;
\inst|inst1|inst1|inst5|ALT_INV_inst2~1_combout\ <= NOT \inst|inst1|inst1|inst5|inst2~1_combout\;
\inst|inst1|inst1|inst6|ALT_INV_inst2~1_combout\ <= NOT \inst|inst1|inst1|inst6|inst2~1_combout\;
\inst|inst1|inst1|inst7|ALT_INV_inst2~1_combout\ <= NOT \inst|inst1|inst1|inst7|inst2~1_combout\;

-- Location: IOOBUF_X77_Y0_N19
\OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst1|inst8|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(31));

-- Location: IOOBUF_X77_Y0_N53
\OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst1|inst7|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(30));

-- Location: IOOBUF_X84_Y0_N19
\OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst1|inst6|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(29));

-- Location: IOOBUF_X71_Y0_N53
\OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst1|inst5|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(28));

-- Location: IOOBUF_X90_Y0_N76
\OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst|inst8|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(27));

-- Location: IOOBUF_X82_Y0_N42
\OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst|inst7|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(26));

-- Location: IOOBUF_X84_Y0_N36
\OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst|inst6|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(25));

-- Location: IOOBUF_X98_Y0_N42
\OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst|inst5|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(24));

-- Location: IOOBUF_X96_Y0_N36
\OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst1|inst8|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(23));

-- Location: IOOBUF_X65_Y0_N59
\OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst1|inst7|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(22));

-- Location: IOOBUF_X98_Y0_N59
\OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst1|inst6|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(21));

-- Location: IOOBUF_X69_Y0_N19
\OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst1|inst5|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(20));

-- Location: IOOBUF_X67_Y0_N53
\OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst|inst8|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(19));

-- Location: IOOBUF_X94_Y0_N2
\OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst|inst7|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(18));

-- Location: IOOBUF_X69_Y0_N53
\OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst|inst6|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(17));

-- Location: IOOBUF_X77_Y0_N2
\OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst|inst5|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(16));

-- Location: IOOBUF_X65_Y0_N42
\OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst1|inst8|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(15));

-- Location: IOOBUF_X71_Y0_N2
\OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst1|inst7|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(14));

-- Location: IOOBUF_X75_Y0_N19
\OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst1|inst6|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(13));

-- Location: IOOBUF_X94_Y0_N19
\OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst1|inst5|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(12));

-- Location: IOOBUF_X88_Y0_N19
\OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst|inst8|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(11));

-- Location: IOOBUF_X98_Y0_N93
\OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst|inst7|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(10));

-- Location: IOOBUF_X71_Y0_N36
\OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst|inst6|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(9));

-- Location: IOOBUF_X79_Y0_N2
\OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst|inst5|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(8));

-- Location: IOOBUF_X79_Y0_N19
\OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst1|inst8|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(7));

-- Location: IOOBUF_X88_Y0_N53
\OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst1|inst7|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(6));

-- Location: IOOBUF_X86_Y0_N53
\OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst1|inst6|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(5));

-- Location: IOOBUF_X96_Y0_N19
\OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst1|inst5|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(4));

-- Location: IOOBUF_X98_Y0_N76
\OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst|inst8|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(3));

-- Location: IOOBUF_X94_Y0_N36
\OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst|inst7|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(2));

-- Location: IOOBUF_X96_Y0_N53
\OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst|inst6|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(1));

-- Location: IOOBUF_X79_Y0_N53
\OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst|inst5|ALT_INV_inst2~1_combout\,
	devoe => ww_devoe,
	o => \ww_OUT\(0));

-- Location: IOIBUF_X82_Y0_N58
\Clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: IOIBUF_X79_Y0_N35
\Write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write,
	o => \Write~input_o\);

-- Location: IOIBUF_X71_Y0_N18
\Data[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(31),
	o => \Data[31]~input_o\);

-- Location: IOIBUF_X82_Y0_N92
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: MLABCELL_X73_Y1_N30
\inst1|inst1|inst1|inst8|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst1|inst8|inst2~1_combout\ = ( \Data[31]~input_o\ & ( \CLK~input_o\ & ( (\inst1|inst1|inst1|inst8|inst2~1_combout\ & (!\Clear~input_o\ & !\Write~input_o\)) ) ) ) # ( !\Data[31]~input_o\ & ( \CLK~input_o\ & ( ((\Write~input_o\) # 
-- (\Clear~input_o\)) # (\inst1|inst1|inst1|inst8|inst2~1_combout\) ) ) ) # ( \Data[31]~input_o\ & ( !\CLK~input_o\ & ( \inst1|inst1|inst1|inst8|inst2~1_combout\ ) ) ) # ( !\Data[31]~input_o\ & ( !\CLK~input_o\ & ( \inst1|inst1|inst1|inst8|inst2~1_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111111111111110011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst1|inst8|ALT_INV_inst2~1_combout\,
	datac => \ALT_INV_Clear~input_o\,
	datad => \ALT_INV_Write~input_o\,
	datae => \ALT_INV_Data[31]~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst1|inst1|inst8|inst2~1_combout\);

-- Location: IOIBUF_X67_Y0_N1
\Data[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(30),
	o => \Data[30]~input_o\);

-- Location: MLABCELL_X73_Y1_N36
\inst1|inst1|inst1|inst7|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst1|inst7|inst2~1_combout\ = ( \Data[30]~input_o\ & ( \CLK~input_o\ & ( (!\Clear~input_o\ & (!\Write~input_o\ & \inst1|inst1|inst1|inst7|inst2~1_combout\)) ) ) ) # ( !\Data[30]~input_o\ & ( \CLK~input_o\ & ( 
-- ((\inst1|inst1|inst1|inst7|inst2~1_combout\) # (\Write~input_o\)) # (\Clear~input_o\) ) ) ) # ( \Data[30]~input_o\ & ( !\CLK~input_o\ & ( \inst1|inst1|inst1|inst7|inst2~1_combout\ ) ) ) # ( !\Data[30]~input_o\ & ( !\CLK~input_o\ & ( 
-- \inst1|inst1|inst1|inst7|inst2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111111011111110000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \inst1|inst1|inst1|inst7|ALT_INV_inst2~1_combout\,
	datae => \ALT_INV_Data[30]~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst1|inst1|inst7|inst2~1_combout\);

-- Location: IOIBUF_X84_Y0_N52
\Data[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(29),
	o => \Data[29]~input_o\);

-- Location: LABCELL_X90_Y1_N33
\inst1|inst1|inst1|inst6|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst1|inst6|inst2~1_combout\ = ( \Write~input_o\ & ( \inst1|inst1|inst1|inst6|inst2~1_combout\ & ( (!\CLK~input_o\) # (!\Data[29]~input_o\) ) ) ) # ( !\Write~input_o\ & ( \inst1|inst1|inst1|inst6|inst2~1_combout\ & ( (!\CLK~input_o\) # 
-- ((!\Data[29]~input_o\) # (!\Clear~input_o\)) ) ) ) # ( \Write~input_o\ & ( !\inst1|inst1|inst1|inst6|inst2~1_combout\ & ( (\CLK~input_o\ & !\Data[29]~input_o\) ) ) ) # ( !\Write~input_o\ & ( !\inst1|inst1|inst1|inst6|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[29]~input_o\ & \Clear~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100010001000100010011111110111111101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Data[29]~input_o\,
	datac => \ALT_INV_Clear~input_o\,
	datae => \ALT_INV_Write~input_o\,
	dataf => \inst1|inst1|inst1|inst6|ALT_INV_inst2~1_combout\,
	combout => \inst1|inst1|inst1|inst6|inst2~1_combout\);

-- Location: IOIBUF_X69_Y0_N1
\Data[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(28),
	o => \Data[28]~input_o\);

-- Location: MLABCELL_X73_Y1_N12
\inst1|inst1|inst1|inst5|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst1|inst5|inst2~1_combout\ = ( \inst1|inst1|inst1|inst5|inst2~1_combout\ & ( (!\CLK~input_o\) # ((!\Data[28]~input_o\) # ((!\Write~input_o\ & !\Clear~input_o\))) ) ) # ( !\inst1|inst1|inst1|inst5|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[28]~input_o\ & ((\Clear~input_o\) # (\Write~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000011111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \ALT_INV_Data[28]~input_o\,
	datad => \ALT_INV_Clear~input_o\,
	dataf => \inst1|inst1|inst1|inst5|ALT_INV_inst2~1_combout\,
	combout => \inst1|inst1|inst1|inst5|inst2~1_combout\);

-- Location: IOIBUF_X92_Y0_N35
\Data[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(27),
	o => \Data[27]~input_o\);

-- Location: LABCELL_X90_Y1_N9
\inst1|inst1|inst|inst8|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|inst8|inst2~1_combout\ = ( \Data[27]~input_o\ & ( (\inst1|inst1|inst|inst8|inst2~1_combout\ & ((!\CLK~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\)))) ) ) # ( !\Data[27]~input_o\ & ( ((\CLK~input_o\ & ((\Write~input_o\) # 
-- (\Clear~input_o\)))) # (\inst1|inst1|inst|inst8|inst2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100001110000010100000111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \inst1|inst1|inst|inst8|ALT_INV_inst2~1_combout\,
	datad => \ALT_INV_Write~input_o\,
	dataf => \ALT_INV_Data[27]~input_o\,
	combout => \inst1|inst1|inst|inst8|inst2~1_combout\);

-- Location: IOIBUF_X92_Y0_N1
\Data[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(26),
	o => \Data[26]~input_o\);

-- Location: LABCELL_X90_Y1_N12
\inst1|inst1|inst|inst7|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|inst7|inst2~1_combout\ = ( \inst1|inst1|inst|inst7|inst2~1_combout\ & ( (!\CLK~input_o\) # ((!\Data[26]~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\))) ) ) # ( !\inst1|inst1|inst|inst7|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[26]~input_o\ & ((\Write~input_o\) # (\Clear~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000011111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Data[26]~input_o\,
	datad => \ALT_INV_Write~input_o\,
	dataf => \inst1|inst1|inst|inst7|ALT_INV_inst2~1_combout\,
	combout => \inst1|inst1|inst|inst7|inst2~1_combout\);

-- Location: IOIBUF_X90_Y0_N58
\Data[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(25),
	o => \Data[25]~input_o\);

-- Location: LABCELL_X90_Y1_N51
\inst1|inst1|inst|inst6|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|inst6|inst2~1_combout\ = ( \inst1|inst1|inst|inst6|inst2~1_combout\ & ( (!\CLK~input_o\) # ((!\Data[25]~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\))) ) ) # ( !\inst1|inst1|inst|inst6|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[25]~input_o\ & ((\Write~input_o\) # (\Clear~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000011111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Data[25]~input_o\,
	datad => \ALT_INV_Write~input_o\,
	dataf => \inst1|inst1|inst|inst6|ALT_INV_inst2~1_combout\,
	combout => \inst1|inst1|inst|inst6|inst2~1_combout\);

-- Location: IOIBUF_X94_Y0_N52
\Data[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(24),
	o => \Data[24]~input_o\);

-- Location: LABCELL_X90_Y1_N54
\inst1|inst1|inst|inst5|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|inst5|inst2~1_combout\ = ( \Data[24]~input_o\ & ( (\inst1|inst1|inst|inst5|inst2~1_combout\ & ((!\CLK~input_o\) # ((!\Write~input_o\ & !\Clear~input_o\)))) ) ) # ( !\Data[24]~input_o\ & ( ((\CLK~input_o\ & ((\Clear~input_o\) # 
-- (\Write~input_o\)))) # (\inst1|inst1|inst|inst5|inst2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111111000011110111111100001111000010000000111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \inst1|inst1|inst|inst5|ALT_INV_inst2~1_combout\,
	datad => \ALT_INV_CLK~input_o\,
	dataf => \ALT_INV_Data[24]~input_o\,
	combout => \inst1|inst1|inst|inst5|inst2~1_combout\);

-- Location: IOIBUF_X88_Y0_N1
\Data[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(23),
	o => \Data[23]~input_o\);

-- Location: LABCELL_X90_Y1_N57
\inst1|inst|inst1|inst8|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1|inst8|inst2~1_combout\ = ( \CLK~input_o\ & ( (!\Write~input_o\ & ((!\Clear~input_o\ & ((\inst1|inst|inst1|inst8|inst2~1_combout\))) # (\Clear~input_o\ & (!\Data[23]~input_o\)))) # (\Write~input_o\ & (((!\Data[23]~input_o\)))) ) ) # ( 
-- !\CLK~input_o\ & ( \inst1|inst|inst1|inst8|inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101110000111110000111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Data[23]~input_o\,
	datad => \inst1|inst|inst1|inst8|ALT_INV_inst2~1_combout\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst|inst1|inst8|inst2~1_combout\);

-- Location: IOIBUF_X75_Y0_N52
\Data[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(22),
	o => \Data[22]~input_o\);

-- Location: MLABCELL_X73_Y1_N15
\inst1|inst|inst1|inst7|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1|inst7|inst2~1_combout\ = ( \Clear~input_o\ & ( (!\CLK~input_o\ & (\inst1|inst|inst1|inst7|inst2~1_combout\)) # (\CLK~input_o\ & ((!\Data[22]~input_o\))) ) ) # ( !\Clear~input_o\ & ( (!\CLK~input_o\ & 
-- (((\inst1|inst|inst1|inst7|inst2~1_combout\)))) # (\CLK~input_o\ & ((!\Write~input_o\ & (\inst1|inst|inst1|inst7|inst2~1_combout\)) # (\Write~input_o\ & ((!\Data[22]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001110000111110000111001011111000010100101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \inst1|inst|inst1|inst7|ALT_INV_inst2~1_combout\,
	datad => \ALT_INV_Data[22]~input_o\,
	dataf => \ALT_INV_Clear~input_o\,
	combout => \inst1|inst|inst1|inst7|inst2~1_combout\);

-- Location: IOIBUF_X82_Y0_N75
\Data[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(21),
	o => \Data[21]~input_o\);

-- Location: LABCELL_X90_Y1_N6
\inst1|inst|inst1|inst6|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1|inst6|inst2~1_combout\ = ( \inst1|inst|inst1|inst6|inst2~1_combout\ & ( (!\CLK~input_o\) # ((!\Data[21]~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\))) ) ) # ( !\inst1|inst|inst1|inst6|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[21]~input_o\ & ((\Write~input_o\) # (\Clear~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000011111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Data[21]~input_o\,
	datad => \ALT_INV_Write~input_o\,
	dataf => \inst1|inst|inst1|inst6|ALT_INV_inst2~1_combout\,
	combout => \inst1|inst|inst1|inst6|inst2~1_combout\);

-- Location: IOIBUF_X65_Y0_N92
\Data[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(20),
	o => \Data[20]~input_o\);

-- Location: MLABCELL_X73_Y1_N51
\inst1|inst|inst1|inst5|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1|inst5|inst2~1_combout\ = ( \Data[20]~input_o\ & ( \CLK~input_o\ & ( (!\Clear~input_o\ & (!\Write~input_o\ & \inst1|inst|inst1|inst5|inst2~1_combout\)) ) ) ) # ( !\Data[20]~input_o\ & ( \CLK~input_o\ & ( 
-- ((\inst1|inst|inst1|inst5|inst2~1_combout\) # (\Write~input_o\)) # (\Clear~input_o\) ) ) ) # ( \Data[20]~input_o\ & ( !\CLK~input_o\ & ( \inst1|inst|inst1|inst5|inst2~1_combout\ ) ) ) # ( !\Data[20]~input_o\ & ( !\CLK~input_o\ & ( 
-- \inst1|inst|inst1|inst5|inst2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111111111110000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Write~input_o\,
	datad => \inst1|inst|inst1|inst5|ALT_INV_inst2~1_combout\,
	datae => \ALT_INV_Data[20]~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst|inst1|inst5|inst2~1_combout\);

-- Location: IOIBUF_X67_Y0_N18
\Data[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(19),
	o => \Data[19]~input_o\);

-- Location: MLABCELL_X73_Y1_N54
\inst1|inst|inst|inst8|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|inst|inst8|inst2~1_combout\ = ( \CLK~input_o\ & ( (!\Clear~input_o\ & ((!\Write~input_o\ & (\inst1|inst|inst|inst8|inst2~1_combout\)) # (\Write~input_o\ & ((!\Data[19]~input_o\))))) # (\Clear~input_o\ & (((!\Data[19]~input_o\)))) ) ) # ( 
-- !\CLK~input_o\ & ( \inst1|inst|inst|inst8|inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111111000010000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \inst1|inst|inst|inst8|ALT_INV_inst2~1_combout\,
	datad => \ALT_INV_Data[19]~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst|inst|inst8|inst2~1_combout\);

-- Location: IOIBUF_X86_Y0_N35
\Data[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(18),
	o => \Data[18]~input_o\);

-- Location: LABCELL_X90_Y1_N15
\inst1|inst|inst|inst7|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|inst|inst7|inst2~1_combout\ = ( \inst1|inst|inst|inst7|inst2~1_combout\ & ( (!\CLK~input_o\) # ((!\Data[18]~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\))) ) ) # ( !\inst1|inst|inst|inst7|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[18]~input_o\ & ((\Write~input_o\) # (\Clear~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000011111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Data[18]~input_o\,
	datad => \ALT_INV_Write~input_o\,
	dataf => \inst1|inst|inst|inst7|ALT_INV_inst2~1_combout\,
	combout => \inst1|inst|inst|inst7|inst2~1_combout\);

-- Location: IOIBUF_X69_Y0_N35
\Data[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(17),
	o => \Data[17]~input_o\);

-- Location: MLABCELL_X73_Y1_N57
\inst1|inst|inst|inst6|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|inst|inst6|inst2~1_combout\ = ( \CLK~input_o\ & ( (!\Clear~input_o\ & ((!\Write~input_o\ & ((\inst1|inst|inst|inst6|inst2~1_combout\))) # (\Write~input_o\ & (!\Data[17]~input_o\)))) # (\Clear~input_o\ & (((!\Data[17]~input_o\)))) ) ) # ( 
-- !\CLK~input_o\ & ( \inst1|inst|inst|inst6|inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101110000111110000111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \ALT_INV_Data[17]~input_o\,
	datad => \inst1|inst|inst|inst6|ALT_INV_inst2~1_combout\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst|inst|inst6|inst2~1_combout\);

-- Location: IOIBUF_X73_Y0_N58
\Data[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(16),
	o => \Data[16]~input_o\);

-- Location: MLABCELL_X73_Y1_N3
\inst1|inst|inst|inst5|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|inst|inst5|inst2~1_combout\ = ( \Data[16]~input_o\ & ( \CLK~input_o\ & ( (\inst1|inst|inst|inst5|inst2~1_combout\ & (!\Write~input_o\ & !\Clear~input_o\)) ) ) ) # ( !\Data[16]~input_o\ & ( \CLK~input_o\ & ( ((\Clear~input_o\) # 
-- (\Write~input_o\)) # (\inst1|inst|inst|inst5|inst2~1_combout\) ) ) ) # ( \Data[16]~input_o\ & ( !\CLK~input_o\ & ( \inst1|inst|inst|inst5|inst2~1_combout\ ) ) ) # ( !\Data[16]~input_o\ & ( !\CLK~input_o\ & ( \inst1|inst|inst|inst5|inst2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011111111111110101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst|inst5|ALT_INV_inst2~1_combout\,
	datac => \ALT_INV_Write~input_o\,
	datad => \ALT_INV_Clear~input_o\,
	datae => \ALT_INV_Data[16]~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst|inst|inst5|inst2~1_combout\);

-- Location: IOIBUF_X75_Y0_N35
\Data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(15),
	o => \Data[15]~input_o\);

-- Location: MLABCELL_X73_Y1_N6
\inst|inst1|inst1|inst8|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|inst8|inst2~1_combout\ = ( \inst|inst1|inst1|inst8|inst2~1_combout\ & ( (!\CLK~input_o\) # ((!\Data[15]~input_o\) # ((!\Write~input_o\ & !\Clear~input_o\))) ) ) # ( !\inst|inst1|inst1|inst8|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[15]~input_o\ & ((\Clear~input_o\) # (\Write~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000011111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \ALT_INV_Data[15]~input_o\,
	datad => \ALT_INV_Clear~input_o\,
	dataf => \inst|inst1|inst1|inst8|ALT_INV_inst2~1_combout\,
	combout => \inst|inst1|inst1|inst8|inst2~1_combout\);

-- Location: IOIBUF_X77_Y0_N35
\Data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(14),
	o => \Data[14]~input_o\);

-- Location: MLABCELL_X73_Y1_N45
\inst|inst1|inst1|inst7|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|inst7|inst2~1_combout\ = ( \CLK~input_o\ & ( (!\Clear~input_o\ & ((!\Write~input_o\ & (\inst|inst1|inst1|inst7|inst2~1_combout\)) # (\Write~input_o\ & ((!\Data[14]~input_o\))))) # (\Clear~input_o\ & (((!\Data[14]~input_o\)))) ) ) # ( 
-- !\CLK~input_o\ & ( \inst|inst1|inst1|inst7|inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111111000010000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \inst|inst1|inst1|inst7|ALT_INV_inst2~1_combout\,
	datad => \ALT_INV_Data[14]~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst|inst1|inst1|inst7|inst2~1_combout\);

-- Location: IOIBUF_X75_Y0_N1
\Data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(13),
	o => \Data[13]~input_o\);

-- Location: MLABCELL_X73_Y1_N9
\inst|inst1|inst1|inst6|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|inst6|inst2~1_combout\ = ( \Clear~input_o\ & ( (!\CLK~input_o\ & (\inst|inst1|inst1|inst6|inst2~1_combout\)) # (\CLK~input_o\ & ((!\Data[13]~input_o\))) ) ) # ( !\Clear~input_o\ & ( (!\CLK~input_o\ & 
-- (((\inst|inst1|inst1|inst6|inst2~1_combout\)))) # (\CLK~input_o\ & ((!\Write~input_o\ & (\inst|inst1|inst1|inst6|inst2~1_combout\)) # (\Write~input_o\ & ((!\Data[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001110000111110000111001011111000010100101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \inst|inst1|inst1|inst6|ALT_INV_inst2~1_combout\,
	datad => \ALT_INV_Data[13]~input_o\,
	dataf => \ALT_INV_Clear~input_o\,
	combout => \inst|inst1|inst1|inst6|inst2~1_combout\);

-- Location: IOIBUF_X86_Y0_N18
\Data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(12),
	o => \Data[12]~input_o\);

-- Location: LABCELL_X90_Y1_N0
\inst|inst1|inst1|inst5|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1|inst5|inst2~1_combout\ = ( \CLK~input_o\ & ( (!\Write~input_o\ & ((!\Clear~input_o\ & (\inst|inst1|inst1|inst5|inst2~1_combout\)) # (\Clear~input_o\ & ((!\Data[12]~input_o\))))) # (\Write~input_o\ & (((!\Data[12]~input_o\)))) ) ) # ( 
-- !\CLK~input_o\ & ( \inst|inst1|inst1|inst5|inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111111000010000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \inst|inst1|inst1|inst5|ALT_INV_inst2~1_combout\,
	datad => \ALT_INV_Data[12]~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst|inst1|inst1|inst5|inst2~1_combout\);

-- Location: IOIBUF_X88_Y0_N35
\Data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(11),
	o => \Data[11]~input_o\);

-- Location: LABCELL_X90_Y1_N36
\inst|inst1|inst|inst8|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst8|inst2~1_combout\ = ( \Data[11]~input_o\ & ( (\inst|inst1|inst|inst8|inst2~1_combout\ & ((!\CLK~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\)))) ) ) # ( !\Data[11]~input_o\ & ( ((\CLK~input_o\ & ((\Write~input_o\) # 
-- (\Clear~input_o\)))) # (\inst|inst1|inst|inst8|inst2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101011111111100000000111010100000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Write~input_o\,
	datad => \inst|inst1|inst|inst8|ALT_INV_inst2~1_combout\,
	dataf => \ALT_INV_Data[11]~input_o\,
	combout => \inst|inst1|inst|inst8|inst2~1_combout\);

-- Location: IOIBUF_X90_Y0_N41
\Data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(10),
	o => \Data[10]~input_o\);

-- Location: LABCELL_X90_Y1_N42
\inst|inst1|inst|inst7|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst7|inst2~1_combout\ = ( \inst|inst1|inst|inst7|inst2~1_combout\ & ( (!\CLK~input_o\) # ((!\Data[10]~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\))) ) ) # ( !\inst|inst1|inst|inst7|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[10]~input_o\ & ((\Write~input_o\) # (\Clear~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000011111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Data[10]~input_o\,
	datad => \ALT_INV_Write~input_o\,
	dataf => \inst|inst1|inst|inst7|ALT_INV_inst2~1_combout\,
	combout => \inst|inst1|inst|inst7|inst2~1_combout\);

-- Location: IOIBUF_X73_Y0_N92
\Data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(9),
	o => \Data[9]~input_o\);

-- Location: MLABCELL_X73_Y1_N18
\inst|inst1|inst|inst6|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst6|inst2~1_combout\ = ( \CLK~input_o\ & ( (!\Clear~input_o\ & ((!\Write~input_o\ & (\inst|inst1|inst|inst6|inst2~1_combout\)) # (\Write~input_o\ & ((!\Data[9]~input_o\))))) # (\Clear~input_o\ & (((!\Data[9]~input_o\)))) ) ) # ( 
-- !\CLK~input_o\ & ( \inst|inst1|inst|inst6|inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111111000010000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \inst|inst1|inst|inst6|ALT_INV_inst2~1_combout\,
	datad => \ALT_INV_Data[9]~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst|inst1|inst|inst6|inst2~1_combout\);

-- Location: IOIBUF_X67_Y0_N35
\Data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(8),
	o => \Data[8]~input_o\);

-- Location: MLABCELL_X73_Y1_N42
\inst|inst1|inst|inst5|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst5|inst2~1_combout\ = ( \CLK~input_o\ & ( (!\Clear~input_o\ & ((!\Write~input_o\ & ((\inst|inst1|inst|inst5|inst2~1_combout\))) # (\Write~input_o\ & (!\Data[8]~input_o\)))) # (\Clear~input_o\ & (((!\Data[8]~input_o\)))) ) ) # ( 
-- !\CLK~input_o\ & ( \inst|inst1|inst|inst5|inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101110000111110000111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \ALT_INV_Data[8]~input_o\,
	datad => \inst|inst1|inst|inst5|ALT_INV_inst2~1_combout\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst|inst1|inst|inst5|inst2~1_combout\);

-- Location: IOIBUF_X73_Y0_N41
\Data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(7),
	o => \Data[7]~input_o\);

-- Location: MLABCELL_X73_Y1_N21
\inst|inst|inst1|inst8|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst8|inst2~1_combout\ = ( \CLK~input_o\ & ( (!\Clear~input_o\ & ((!\Write~input_o\ & ((\inst|inst|inst1|inst8|inst2~1_combout\))) # (\Write~input_o\ & (!\Data[7]~input_o\)))) # (\Clear~input_o\ & (((!\Data[7]~input_o\)))) ) ) # ( 
-- !\CLK~input_o\ & ( \inst|inst|inst1|inst8|inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101110000111110000111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \ALT_INV_Data[7]~input_o\,
	datad => \inst|inst|inst1|inst8|ALT_INV_inst2~1_combout\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst|inst|inst1|inst8|inst2~1_combout\);

-- Location: IOIBUF_X96_Y0_N1
\Data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(6),
	o => \Data[6]~input_o\);

-- Location: LABCELL_X90_Y1_N45
\inst|inst|inst1|inst7|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst7|inst2~1_combout\ = ( \Data[6]~input_o\ & ( (\inst|inst|inst1|inst7|inst2~1_combout\ & ((!\CLK~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\)))) ) ) # ( !\Data[6]~input_o\ & ( ((\CLK~input_o\ & ((\Write~input_o\) # 
-- (\Clear~input_o\)))) # (\inst|inst|inst1|inst7|inst2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100001110000010100000111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \inst|inst|inst1|inst7|ALT_INV_inst2~1_combout\,
	datad => \ALT_INV_Write~input_o\,
	dataf => \ALT_INV_Data[6]~input_o\,
	combout => \inst|inst|inst1|inst7|inst2~1_combout\);

-- Location: IOIBUF_X92_Y0_N18
\Data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(5),
	o => \Data[5]~input_o\);

-- Location: LABCELL_X90_Y1_N48
\inst|inst|inst1|inst6|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst6|inst2~1_combout\ = ( \inst|inst|inst1|inst6|inst2~1_combout\ & ( (!\CLK~input_o\) # ((!\Data[5]~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\))) ) ) # ( !\inst|inst|inst1|inst6|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[5]~input_o\ & ((\Write~input_o\) # (\Clear~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000000101010000000011111111111010101111111111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Write~input_o\,
	datad => \ALT_INV_Data[5]~input_o\,
	dataf => \inst|inst|inst1|inst6|ALT_INV_inst2~1_combout\,
	combout => \inst|inst|inst1|inst6|inst2~1_combout\);

-- Location: IOIBUF_X86_Y0_N1
\Data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(4),
	o => \Data[4]~input_o\);

-- Location: LABCELL_X90_Y1_N18
\inst|inst|inst1|inst5|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst5|inst2~1_combout\ = ( \Write~input_o\ & ( \inst|inst|inst1|inst5|inst2~1_combout\ & ( (!\Data[4]~input_o\) # (!\CLK~input_o\) ) ) ) # ( !\Write~input_o\ & ( \inst|inst|inst1|inst5|inst2~1_combout\ & ( (!\Data[4]~input_o\) # 
-- ((!\Clear~input_o\) # (!\CLK~input_o\)) ) ) ) # ( \Write~input_o\ & ( !\inst|inst|inst1|inst5|inst2~1_combout\ & ( (!\Data[4]~input_o\ & \CLK~input_o\) ) ) ) # ( !\Write~input_o\ & ( !\inst|inst|inst1|inst5|inst2~1_combout\ & ( (!\Data[4]~input_o\ & 
-- (\Clear~input_o\ & \CLK~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000010100000101011111110111111101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[4]~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_CLK~input_o\,
	datae => \ALT_INV_Write~input_o\,
	dataf => \inst|inst|inst1|inst5|ALT_INV_inst2~1_combout\,
	combout => \inst|inst|inst1|inst5|inst2~1_combout\);

-- Location: IOIBUF_X84_Y0_N1
\Data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(3),
	o => \Data[3]~input_o\);

-- Location: LABCELL_X90_Y1_N39
\inst|inst|inst|inst8|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst8|inst2~1_combout\ = ( \inst|inst|inst|inst8|inst2~1_combout\ & ( (!\CLK~input_o\) # ((!\Data[3]~input_o\) # ((!\Clear~input_o\ & !\Write~input_o\))) ) ) # ( !\inst|inst|inst|inst8|inst2~1_combout\ & ( (\CLK~input_o\ & 
-- (!\Data[3]~input_o\ & ((\Write~input_o\) # (\Clear~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000011111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_Data[3]~input_o\,
	datad => \ALT_INV_Write~input_o\,
	dataf => \inst|inst|inst|inst8|ALT_INV_inst2~1_combout\,
	combout => \inst|inst|inst|inst8|inst2~1_combout\);

-- Location: IOIBUF_X92_Y0_N52
\Data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(2),
	o => \Data[2]~input_o\);

-- Location: LABCELL_X90_Y1_N24
\inst|inst|inst|inst7|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst7|inst2~1_combout\ = ( \Write~input_o\ & ( \Data[2]~input_o\ & ( (\inst|inst|inst|inst7|inst2~1_combout\ & !\CLK~input_o\) ) ) ) # ( !\Write~input_o\ & ( \Data[2]~input_o\ & ( (\inst|inst|inst|inst7|inst2~1_combout\ & 
-- ((!\Clear~input_o\) # (!\CLK~input_o\))) ) ) ) # ( \Write~input_o\ & ( !\Data[2]~input_o\ & ( (\CLK~input_o\) # (\inst|inst|inst|inst7|inst2~1_combout\) ) ) ) # ( !\Write~input_o\ & ( !\Data[2]~input_o\ & ( ((\Clear~input_o\ & \CLK~input_o\)) # 
-- (\inst|inst|inst|inst7|inst2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010111110101111101010100010101000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst7|ALT_INV_inst2~1_combout\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_CLK~input_o\,
	datae => \ALT_INV_Write~input_o\,
	dataf => \ALT_INV_Data[2]~input_o\,
	combout => \inst|inst|inst|inst7|inst2~1_combout\);

-- Location: IOIBUF_X90_Y0_N92
\Data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(1),
	o => \Data[1]~input_o\);

-- Location: LABCELL_X90_Y1_N3
\inst|inst|inst|inst6|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst6|inst2~1_combout\ = ( \Data[1]~input_o\ & ( (\inst|inst|inst|inst6|inst2~1_combout\ & ((!\CLK~input_o\) # ((!\Write~input_o\ & !\Clear~input_o\)))) ) ) # ( !\Data[1]~input_o\ & ( ((\CLK~input_o\ & ((\Clear~input_o\) # 
-- (\Write~input_o\)))) # (\inst|inst|inst|inst6|inst2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111111000001111111111100000000111110000000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write~input_o\,
	datab => \ALT_INV_Clear~input_o\,
	datac => \ALT_INV_CLK~input_o\,
	datad => \inst|inst|inst|inst6|ALT_INV_inst2~1_combout\,
	dataf => \ALT_INV_Data[1]~input_o\,
	combout => \inst|inst|inst|inst6|inst2~1_combout\);

-- Location: IOIBUF_X73_Y0_N75
\Data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(0),
	o => \Data[0]~input_o\);

-- Location: MLABCELL_X73_Y1_N24
\inst|inst|inst|inst5|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst5|inst2~1_combout\ = ( \Data[0]~input_o\ & ( \CLK~input_o\ & ( (!\Clear~input_o\ & (!\Write~input_o\ & \inst|inst|inst|inst5|inst2~1_combout\)) ) ) ) # ( !\Data[0]~input_o\ & ( \CLK~input_o\ & ( 
-- ((\inst|inst|inst|inst5|inst2~1_combout\) # (\Write~input_o\)) # (\Clear~input_o\) ) ) ) # ( \Data[0]~input_o\ & ( !\CLK~input_o\ & ( \inst|inst|inst|inst5|inst2~1_combout\ ) ) ) # ( !\Data[0]~input_o\ & ( !\CLK~input_o\ & ( 
-- \inst|inst|inst|inst5|inst2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111111011111110000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Write~input_o\,
	datac => \inst|inst|inst|inst5|ALT_INV_inst2~1_combout\,
	datae => \ALT_INV_Data[0]~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst|inst|inst|inst5|inst2~1_combout\);

-- Location: LABCELL_X10_Y58_N0
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


