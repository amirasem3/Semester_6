//lpm_mult CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" DSP_BLOCK_BALANCING="Auto" LPM_WIDTHA=32 LPM_WIDTHB=32 LPM_WIDTHP=64 LPM_WIDTHS=32 clock dataa datab result CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
//VERSION_BEGIN 15.1 cbx_cycloneii 2015:12:02:18:05:58:SJ cbx_lpm_add_sub 2015:12:02:18:05:58:SJ cbx_lpm_mult 2015:12:02:18:05:58:SJ cbx_mgl 2015:12:02:18:07:01:SJ cbx_nadder 2015:12:02:18:05:58:SJ cbx_padd 2015:12:02:18:05:58:SJ cbx_stratix 2015:12:02:18:05:58:SJ cbx_stratixii 2015:12:02:18:05:58:SJ cbx_util_mgl 2015:12:02:18:05:58:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, the Altera Quartus Prime License Agreement,
//  the Altera MegaCore Function License Agreement, or other 
//  applicable license agreement, including, without limitation, 
//  that your use is for the sole purpose of programming logic 
//  devices manufactured by Altera and sold by Altera or its 
//  authorized distributors.  Please refer to the applicable 
//  agreement for further details.



//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_lhk
	( 
	clock,
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   dataa;
	input   datab;
	output   result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif


	initial/*synthesis enable_verilog_initial_construct*/
 	begin
		$display("Error: Parameter error: In lpm_mult megafunction, value of LPM_PIPELINE parameter is 0, but must be greater than 0 if clock input port is used");
	end
endmodule //mult_lhk
//ERROR FILE
