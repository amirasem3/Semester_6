// megafunction wizard: %LPM_MUX%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mux 

// ============================================================
// File Name: lpm_mux1.v
// Megafunction Name(s):
// 			lpm_mux
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.1 Build 350 03/24/2010 SP 2 SJ Web Edition
// ************************************************************

//Copyright (C) 1991-2010 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.

module lpm_mux1 (
	data0x,
	data10x,
	data11x,
	data12x,
	data13x,
	data14x,
	data15x,
	data16x,
	data17x,
	data18x,
	data19x,
	data1x,
	data20x,
	data21x,
	data22x,
	data23x,
	data24x,
	data25x,
	data26x,
	data27x,
	data28x,
	data29x,
	data2x,
	data30x,
	data31x,
	data3x,
	data4x,
	data5x,
	data6x,
	data7x,
	data8x,
	data9x,
	sel,
	result);

	input	[31:0]  data0x;
	input	[31:0]  data10x;
	input	[31:0]  data11x;
	input	[31:0]  data12x;
	input	[31:0]  data13x;
	input	[31:0]  data14x;
	input	[31:0]  data15x;
	input	[31:0]  data16x;
	input	[31:0]  data17x;
	input	[31:0]  data18x;
	input	[31:0]  data19x;
	input	[31:0]  data1x;
	input	[31:0]  data20x;
	input	[31:0]  data21x;
	input	[31:0]  data22x;
	input	[31:0]  data23x;
	input	[31:0]  data24x;
	input	[31:0]  data25x;
	input	[31:0]  data26x;
	input	[31:0]  data27x;
	input	[31:0]  data28x;
	input	[31:0]  data29x;
	input	[31:0]  data2x;
	input	[31:0]  data30x;
	input	[31:0]  data31x;
	input	[31:0]  data3x;
	input	[31:0]  data4x;
	input	[31:0]  data5x;
	input	[31:0]  data6x;
	input	[31:0]  data7x;
	input	[31:0]  data8x;
	input	[31:0]  data9x;
	input	[4:0]  sel;
	output	[31:0]  result;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "32"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "5"
// Retrieval info: USED_PORT: data0x 0 0 32 0 INPUT NODEFVAL data0x[31..0]
// Retrieval info: USED_PORT: data10x 0 0 32 0 INPUT NODEFVAL data10x[31..0]
// Retrieval info: USED_PORT: data11x 0 0 32 0 INPUT NODEFVAL data11x[31..0]
// Retrieval info: USED_PORT: data12x 0 0 32 0 INPUT NODEFVAL data12x[31..0]
// Retrieval info: USED_PORT: data13x 0 0 32 0 INPUT NODEFVAL data13x[31..0]
// Retrieval info: USED_PORT: data14x 0 0 32 0 INPUT NODEFVAL data14x[31..0]
// Retrieval info: USED_PORT: data15x 0 0 32 0 INPUT NODEFVAL data15x[31..0]
// Retrieval info: USED_PORT: data16x 0 0 32 0 INPUT NODEFVAL data16x[31..0]
// Retrieval info: USED_PORT: data17x 0 0 32 0 INPUT NODEFVAL data17x[31..0]
// Retrieval info: USED_PORT: data18x 0 0 32 0 INPUT NODEFVAL data18x[31..0]
// Retrieval info: USED_PORT: data19x 0 0 32 0 INPUT NODEFVAL data19x[31..0]
// Retrieval info: USED_PORT: data1x 0 0 32 0 INPUT NODEFVAL data1x[31..0]
// Retrieval info: USED_PORT: data20x 0 0 32 0 INPUT NODEFVAL data20x[31..0]
// Retrieval info: USED_PORT: data21x 0 0 32 0 INPUT NODEFVAL data21x[31..0]
// Retrieval info: USED_PORT: data22x 0 0 32 0 INPUT NODEFVAL data22x[31..0]
// Retrieval info: USED_PORT: data23x 0 0 32 0 INPUT NODEFVAL data23x[31..0]
// Retrieval info: USED_PORT: data24x 0 0 32 0 INPUT NODEFVAL data24x[31..0]
// Retrieval info: USED_PORT: data25x 0 0 32 0 INPUT NODEFVAL data25x[31..0]
// Retrieval info: USED_PORT: data26x 0 0 32 0 INPUT NODEFVAL data26x[31..0]
// Retrieval info: USED_PORT: data27x 0 0 32 0 INPUT NODEFVAL data27x[31..0]
// Retrieval info: USED_PORT: data28x 0 0 32 0 INPUT NODEFVAL data28x[31..0]
// Retrieval info: USED_PORT: data29x 0 0 32 0 INPUT NODEFVAL data29x[31..0]
// Retrieval info: USED_PORT: data2x 0 0 32 0 INPUT NODEFVAL data2x[31..0]
// Retrieval info: USED_PORT: data30x 0 0 32 0 INPUT NODEFVAL data30x[31..0]
// Retrieval info: USED_PORT: data31x 0 0 32 0 INPUT NODEFVAL data31x[31..0]
// Retrieval info: USED_PORT: data3x 0 0 32 0 INPUT NODEFVAL data3x[31..0]
// Retrieval info: USED_PORT: data4x 0 0 32 0 INPUT NODEFVAL data4x[31..0]
// Retrieval info: USED_PORT: data5x 0 0 32 0 INPUT NODEFVAL data5x[31..0]
// Retrieval info: USED_PORT: data6x 0 0 32 0 INPUT NODEFVAL data6x[31..0]
// Retrieval info: USED_PORT: data7x 0 0 32 0 INPUT NODEFVAL data7x[31..0]
// Retrieval info: USED_PORT: data8x 0 0 32 0 INPUT NODEFVAL data8x[31..0]
// Retrieval info: USED_PORT: data9x 0 0 32 0 INPUT NODEFVAL data9x[31..0]
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL result[31..0]
// Retrieval info: USED_PORT: sel 0 0 5 0 INPUT NODEFVAL sel[4..0]
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 992 data31x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 960 data30x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 928 data29x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 896 data28x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 864 data27x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 832 data26x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 800 data25x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 768 data24x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 736 data23x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 704 data22x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 672 data21x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 640 data20x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 608 data19x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 576 data18x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 544 data17x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 512 data16x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 480 data15x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 448 data14x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 416 data13x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 384 data12x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 352 data11x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 320 data10x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 288 data9x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 256 data8x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 224 data7x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 192 data6x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 160 data5x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 128 data4x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 96 data3x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 64 data2x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 32 data1x 0 0 32 0
// Retrieval info: CONNECT: @data 0 0 32 0 data0x 0 0 32 0
// Retrieval info: CONNECT: @sel 0 0 5 0 sel 0 0 5 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
