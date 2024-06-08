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

hsync,T2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
read_pixel[15],R9,input,2.5 V,,Off,--,swap_1,--
vsync,R6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_needed,F13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_buff,G16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat2,F14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full1,E10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full2,B11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat1,D16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
need_pixel,M10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[1],D11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[0],C9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[9],N5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[8],R4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[7],N3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[6],T4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[5],M6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[4],R1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[3],N6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[2],P3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[1],R3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[0],T3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[9],P6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[8],M7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[7],T7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[6],R5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[5],L7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[4],L8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[3],T6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[2],M8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[1],T5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[0],R7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[7],F9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[6],B12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[5],A12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[4],F8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[3],D8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[2],B7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[1],B10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[0],A15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[2],E9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[1],A11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[0],C11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[2],D9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[1],E8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[0],A10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
rst,E1,input,2.5 V,,Off,--,swap_1,--
load,T9,input,2.5 V,,Off,--,swap_1,--
clk50Mhz,N9,input,2.5 V,,Off,--,swap_1,--
en,T10,input,2.5 V,,Off,--,swap_1,--
read_pixel[8],D12,input,2.5 V,,Off,--,swap_1,--
read_pixel[7],D15,input,2.5 V,,Off,--,swap_1,--
read_pixel[14],B13,input,2.5 V,,Off,--,swap_1,--
read_pixel[13],G15,input,2.5 V,,Off,--,swap_1,--
read_pixel[12],A14,input,2.5 V,,Off,--,swap_1,--
read_pixel[11],C8,input,2.5 V,,Off,--,swap_1,--
read_pixel[10],E11,input,2.5 V,,Off,--,swap_1,--
read_pixel[9],B14,input,2.5 V,,Off,--,swap_1,--
read_pixel[0],A13,input,2.5 V,,Off,--,swap_1,--
read_pixel[6],B16,input,2.5 V,,Off,--,swap_1,--
read_pixel[5],C16,input,2.5 V,,Off,--,swap_1,--
read_pixel[4],D14,input,2.5 V,,Off,--,swap_1,--
read_pixel[3],F15,input,2.5 V,,Off,--,swap_1,--
read_pixel[2],C14,input,2.5 V,,Off,--,swap_1,--
read_pixel[1],C15,input,2.5 V,,Off,--,swap_1,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
