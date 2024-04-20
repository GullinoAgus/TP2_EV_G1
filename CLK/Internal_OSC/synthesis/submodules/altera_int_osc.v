//altint_osc CBX_AUTO_BLACKBOX="ALL" CBX_SINGLE_OUTPUT_FILE="ON" DEVICE_FAMILY="Cyclone IV E" clkout oscena
//VERSION_BEGIN 23.1 cbx_altint_osc 2023:11:29:19:33:06:SC cbx_arriav 2023:11:29:19:33:05:SC cbx_cycloneii 2023:11:29:19:33:06:SC cbx_lpm_add_sub 2023:11:29:19:33:06:SC cbx_lpm_compare 2023:11:29:19:33:06:SC cbx_lpm_counter 2023:11:29:19:33:06:SC cbx_lpm_decode 2023:11:29:19:33:06:SC cbx_mgl 2023:11:29:19:43:53:SC cbx_nadder 2023:11:29:19:33:06:SC cbx_nightfury 2023:11:29:19:33:05:SC cbx_stratix 2023:11:29:19:33:06:SC cbx_stratixii 2023:11:29:19:33:05:SC cbx_stratixiii 2023:11:29:19:33:06:SC cbx_stratixv 2023:11:29:19:33:05:SC cbx_tgx 2023:11:29:19:33:05:SC cbx_zippleback 2023:11:29:19:33:06:SC  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2023  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and any partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details, at
//  https://fpgasoftware.intel.com/eula.



//synthesis_resources = cycloneive_oscillator 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altera_int_osc
	( 
	clkout,
	oscena) /* synthesis synthesis_clearbox=1 */;
	output   clkout;
	input   oscena;

	wire  wire_sd1_clkout;

	cycloneive_oscillator   sd1
	( 
	.clkout(wire_sd1_clkout),
	.oscena(oscena));
	assign
		clkout = wire_sd1_clkout;
endmodule //altera_int_osc
//VALID FILE
