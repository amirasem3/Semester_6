-- megafunction wizard: %LPM_MUX%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_MUX 

-- ============================================================
-- File Name: MUX2_3_7BIT.vhd
-- Megafunction Name(s):
-- 			LPM_MUX
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 15.1.1 Build 189 12/02/2015 SJ Lite Edition
-- ************************************************************


--Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, the Altera Quartus Prime License Agreement,
--the Altera MegaCore Function License Agreement, or other 
--applicable license agreement, including, without limitation, 
--that your use is for the sole purpose of programming logic 
--devices manufactured by Altera and sold by Altera or its 
--authorized distributors.  Please refer to the applicable 
--agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.lpm_components.all;

ENTITY MUX2_3_7BIT IS
	PORT
	(
		data0x		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		data2x		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		sel		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
END MUX2_3_7BIT;


ARCHITECTURE SYN OF mux2_3_7bit IS

--	type STD_LOGIC_2D is array (NATURAL RANGE <>, NATURAL RANGE <>) of STD_LOGIC;

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (6 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_2D (2 DOWNTO 0, 6 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC_VECTOR (6 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (6 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC_VECTOR (6 DOWNTO 0);

BEGIN
	sub_wire3    <= data0x(6 DOWNTO 0);
	sub_wire2    <= data1x(6 DOWNTO 0);
	sub_wire0    <= data2x(6 DOWNTO 0);
	sub_wire1(2, 0)    <= sub_wire0(0);
	sub_wire1(2, 1)    <= sub_wire0(1);
	sub_wire1(2, 2)    <= sub_wire0(2);
	sub_wire1(2, 3)    <= sub_wire0(3);
	sub_wire1(2, 4)    <= sub_wire0(4);
	sub_wire1(2, 5)    <= sub_wire0(5);
	sub_wire1(2, 6)    <= sub_wire0(6);
	sub_wire1(1, 0)    <= sub_wire2(0);
	sub_wire1(1, 1)    <= sub_wire2(1);
	sub_wire1(1, 2)    <= sub_wire2(2);
	sub_wire1(1, 3)    <= sub_wire2(3);
	sub_wire1(1, 4)    <= sub_wire2(4);
	sub_wire1(1, 5)    <= sub_wire2(5);
	sub_wire1(1, 6)    <= sub_wire2(6);
	sub_wire1(0, 0)    <= sub_wire3(0);
	sub_wire1(0, 1)    <= sub_wire3(1);
	sub_wire1(0, 2)    <= sub_wire3(2);
	sub_wire1(0, 3)    <= sub_wire3(3);
	sub_wire1(0, 4)    <= sub_wire3(4);
	sub_wire1(0, 5)    <= sub_wire3(5);
	sub_wire1(0, 6)    <= sub_wire3(6);
	result    <= sub_wire4(6 DOWNTO 0);

	LPM_MUX_component : LPM_MUX
	GENERIC MAP (
		lpm_size => 3,
		lpm_type => "LPM_MUX",
		lpm_width => 7,
		lpm_widths => 2
	)
	PORT MAP (
		data => sub_wire1,
		sel => sel,
		result => sub_wire4
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "3"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "7"
-- Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "2"
-- Retrieval info: USED_PORT: data0x 0 0 7 0 INPUT NODEFVAL "data0x[6..0]"
-- Retrieval info: USED_PORT: data1x 0 0 7 0 INPUT NODEFVAL "data1x[6..0]"
-- Retrieval info: USED_PORT: data2x 0 0 7 0 INPUT NODEFVAL "data2x[6..0]"
-- Retrieval info: USED_PORT: result 0 0 7 0 OUTPUT NODEFVAL "result[6..0]"
-- Retrieval info: USED_PORT: sel 0 0 2 0 INPUT NODEFVAL "sel[1..0]"
-- Retrieval info: CONNECT: @data 1 0 7 0 data0x 0 0 7 0
-- Retrieval info: CONNECT: @data 1 1 7 0 data1x 0 0 7 0
-- Retrieval info: CONNECT: @data 1 2 7 0 data2x 0 0 7 0
-- Retrieval info: CONNECT: @sel 0 0 2 0 sel 0 0 2 0
-- Retrieval info: CONNECT: result 0 0 7 0 @result 0 0 7 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX2_3_7BIT.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX2_3_7BIT.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX2_3_7BIT.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX2_3_7BIT.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX2_3_7BIT_inst.vhd TRUE
-- Retrieval info: LIB_FILE: lpm
