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

hsync,L7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
vsync,P8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_needed,P15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_buff,T15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
need_pixel,E8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat0,R4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat1,R1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full1,T14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full0,M10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_load,N11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[1],B10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[0],T11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[9],T6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[8],T5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[7],N6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[6],M8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[5],A7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[4],A6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[3],L14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[2],M6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[1],N8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[0],R7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[9],T7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[8],B7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[7],R6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[6],C6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[5],N5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[4],R5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[3],M7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[2],P6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[1],R14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[0],L8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[7],R11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[6],R16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[5],R12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[4],E9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[3],T2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[2],R3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[1],N16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[0],P16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[2],N3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[1],T4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[0],B6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[2],R13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[1],C9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[0],N12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
rst,E1,input,2.5 V,,Off,--,swap_1,--
load,R9,input,2.5 V,,Off,--,swap_1,--
clk50Mhz,T9,input,2.5 V,,Off,--,swap_1,--
en,N9,input,2.5 V,,Off,--,swap_1,--
read_pixel[9],P11,input,2.5 V,,Off,--,swap_1,--
read_pixel[8],P14,input,2.5 V,,Off,--,swap_1,--
read_pixel[15],P9,input,2.5 V,,Off,--,swap_1,--
read_pixel[14],R10,input,2.5 V,,Off,--,swap_1,--
read_pixel[13],P1,input,2.5 V,,Off,--,swap_1,--
read_pixel[12],N15,input,2.5 V,,Off,--,swap_1,--
read_pixel[11],N14,input,2.5 V,,Off,--,swap_1,--
read_pixel[10],D9,input,2.5 V,,Off,--,swap_1,--
read_pixel[1],A10,input,2.5 V,,Off,--,swap_1,--
read_pixel[0],T12,input,2.5 V,,Off,--,swap_1,--
read_pixel[7],T13,input,2.5 V,,Off,--,swap_1,--
read_pixel[6],T10,input,2.5 V,,Off,--,swap_1,--
read_pixel[5],P3,input,2.5 V,,Off,--,swap_1,--
read_pixel[4],D8,input,2.5 V,,Off,--,swap_1,--
read_pixel[3],C8,input,2.5 V,,Off,--,swap_1,--
read_pixel[2],F8,input,2.5 V,,Off,--,swap_1,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
