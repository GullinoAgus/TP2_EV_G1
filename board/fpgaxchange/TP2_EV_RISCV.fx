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

hsync,B6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
vsync,T13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_needed,B14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_buff,E10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
need_pixel,D15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat0,A12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat1,C11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full1,D11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full0,J15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_load,J16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[1],R13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[0],L16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[9],C8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[8],B7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[7],L13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[6],E6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[5],A15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[4],T12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[3],B10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[2],D16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[1],E9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[0],A10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[9],D9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[8],C9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[7],E8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[6],A6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[5],A7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[4],F9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[3],E7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[2],F8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[1],P11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[0],L14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[7],J14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[6],G15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[5],C15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[4],C16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[3],J13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[2],T14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[1],L15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[0],A11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[2],N16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[1],G16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[0],B11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[2],N15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[1],K16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[0],F14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
load,R9,input,2.5 V,,Off,--,swap_1,--
rst,M2,input,2.5 V,,Off,--,swap_1,--
read_pixel[9],T9,input,2.5 V,,Off,--,swap_1,--
read_pixel[8],A13,input,2.5 V,,Off,--,swap_1,--
read_pixel[15],B13,input,2.5 V,,Off,--,swap_1,--
read_pixel[14],D14,input,2.5 V,,Off,--,swap_1,--
read_pixel[13],E11,input,2.5 V,,Off,--,swap_1,--
read_pixel[12],D12,input,2.5 V,,Off,--,swap_1,--
read_pixel[11],C6,input,2.5 V,,Off,--,swap_1,--
read_pixel[10],A14,input,2.5 V,,Off,--,swap_1,--
en,D8,input,2.5 V,,Off,--,swap_1,--
clk50Mhz,E1,input,2.5 V,,Off,--,swap_1,--
read_pixel[1],K15,input,2.5 V,,Off,--,swap_1,--
read_pixel[0],F13,input,2.5 V,,Off,--,swap_1,--
read_pixel[7],N14,input,2.5 V,,Off,--,swap_1,--
read_pixel[6],B16,input,2.5 V,,Off,--,swap_1,--
read_pixel[5],F15,input,2.5 V,,Off,--,swap_1,--
read_pixel[4],C14,input,2.5 V,,Off,--,swap_1,--
read_pixel[3],B12,input,2.5 V,,Off,--,swap_1,--
read_pixel[2],M10,input,2.5 V,,Off,--,swap_1,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
