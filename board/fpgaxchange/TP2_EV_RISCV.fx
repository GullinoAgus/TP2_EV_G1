###############################################################################
# Copyright (C) 1991-2024 Altera Corporation. All rights reserved.
# Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
# support information,  device programming or simulation file,  and any other
# associated  documentation or information  provided by  Intel  or a partner
# under  Intel's   Megafunction   Partnership   Program  may  be  used  only
# to program  PLD  devices (but not masked  PLD  devices) from  Intel.   Any
# other  use  of such  megafunction  design,  netlist,  support  information,
# device programming or simulation file,  or any other  related documentation
# or information  is prohibited  for  any  other purpose,  including, but not
# limited to  modification,  reverse engineering,  de-compiling, or use  with
# any other  silicon devices,  unless such use is  explicitly  licensed under
# a separate agreement with  Intel  or a megafunction partner.  Title to the
# intellectual property,  including patents,  copyrights,  trademarks,  trade
# secrets,  or maskworks,  embodied in any such megafunction design, netlist,
# support  information,  device programming or simulation file,  or any other
# related documentation or information provided by  Intel  or a megafunction
# partner, remains with Intel, the megafunction partner, or their respective
# licensors. No other licenses, including any licenses needed under any third
# party's intellectual property, are provided herein.
#
###############################################################################


# FPGA Xchange file generated using Quartus Prime Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition

# DESIGN=TP2_EV
# REVISION=TP2_EV_RISCV
# DEVICE=EP4CE22
# PACKAGE=FBGA
# SPEEDGRADE=6

Signal Name,Pin Number,Direction,IO Standard,Drive (mA),Termination,Slew Rate,Swap Group,Diff Type

hsync,N8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
vsync,D9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_needed,M6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_buff,M8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
need_pixel,N9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat0,T14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat1,T13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full1,N5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full0,M10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_load,N11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[1],N12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[0],L7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[9],L8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[8],C9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[7],L14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[6],R3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[5],E8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[4],A10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[3],R5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[2],T11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[1],P8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[0],T7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[9],N16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[8],R10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[7],P15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[6],T15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[5],T10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[4],R12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[3],R13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[2],R11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[1],T12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[0],E9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[7],P1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[6],R16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[5],T2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[4],R7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[3],A7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[2],R4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[1],B7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[0],R1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[2],T6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[1],C6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[0],J1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[2],P2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[1],R6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[0],P16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
load,R9,input,2.5 V,,Off,--,swap_1,--
rst,E1,input,2.5 V,,Off,--,swap_1,--
clk50Mhz,T9,input,2.5 V,,Off,--,swap_1,--
read_pixel[9],P14,input,2.5 V,,Off,--,swap_1,--
read_pixel[8],M7,input,2.5 V,,Off,--,swap_1,--
read_pixel[15],T5,input,2.5 V,,Off,--,swap_1,--
read_pixel[14],L13,input,2.5 V,,Off,--,swap_1,--
read_pixel[13],F8,input,2.5 V,,Off,--,swap_1,--
read_pixel[12],R14,input,2.5 V,,Off,--,swap_1,--
read_pixel[11],P9,input,2.5 V,,Off,--,swap_1,--
read_pixel[10],P6,input,2.5 V,,Off,--,swap_1,--
en,N6,input,2.5 V,,Off,--,swap_1,--
read_pixel[1],P11,input,2.5 V,,Off,--,swap_1,--
read_pixel[0],L4,input,2.5 V,,Off,--,swap_1,--
read_pixel[7],C8,input,2.5 V,,Off,--,swap_1,--
read_pixel[6],N14,input,2.5 V,,Off,--,swap_1,--
read_pixel[5],D8,input,2.5 V,,Off,--,swap_1,--
read_pixel[4],T4,input,2.5 V,,Off,--,swap_1,--
read_pixel[3],P3,input,2.5 V,,Off,--,swap_1,--
read_pixel[2],N3,input,2.5 V,,Off,--,swap_1,--
sdram_dqmLOW_pad_o,R4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_dqmHIGH_pad_o,P16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_cas_n_pad_o,C9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_we_n_pad_o,T3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_ras_n_pad_o,P8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_cs_n_pad_o,T2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_cke_pad_o,A2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[12],D9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[11],A7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[10],F2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[9],P1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[8],P2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[7],A15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[6],E11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[5],N15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[4],D5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[3],B6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[2],R11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[1],T15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_addr_pad_o1[0],T10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_bank_pad_o[1],F9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_bank_pad_o[0],R10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
sdram_dq_pad_io[15],C16,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[14],T6,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[13],F3,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[12],C2,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[11],D14,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[10],R14,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[9],B11,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[8],E10,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[7],A13,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[6],R13,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[5],D6,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[4],C14,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[3],N12,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[2],T14,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[1],N9,bidir,2.5 V,,Off,--,swap_1,--
sdram_dq_pad_io[0],L7,bidir,2.5 V,,Off,--,swap_1,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
