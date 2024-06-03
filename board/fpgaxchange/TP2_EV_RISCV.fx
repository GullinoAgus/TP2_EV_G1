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

hsync,F8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
vsync,D6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_needed,J14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_buff,C11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat2,C15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full1,E11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
full2,R12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat1,A15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
need_pixel,J13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[1],D15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[0],J16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[9],J15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[8],F9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[7],D9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[6],A3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[5],C9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[4],E9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[3],C8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[2],G16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[1],B5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contX[0],E8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[9],A10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[8],D8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[7],K15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[6],C6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[5],B4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[4],D3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[3],A7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[2],B7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[1],B10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
contY[0],D5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[7],C16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[6],E6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[5],F14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[4],E10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[3],A12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[2],K16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[1],D16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[0],T12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[2],T13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[1],B16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[0],G15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[2],D12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[1],D11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[0],F15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
rst,E1,input,2.5 V,,Off,--,swap_1,--
load,R9,input,2.5 V,,Off,--,swap_1,--
clk50Mhz,T9,input,2.5 V,,Off,--,swap_1,--
en,N9,input,2.5 V,,Off,--,swap_1,--
read_pixel[1],A14,input,2.5 V,,Off,--,swap_1,--
read_pixel[0],B13,input,2.5 V,,Off,--,swap_1,--
read_pixel[7],C14,input,2.5 V,,Off,--,swap_1,--
read_pixel[6],R13,input,2.5 V,,Off,--,swap_1,--
read_pixel[5],B6,input,2.5 V,,Off,--,swap_1,--
read_pixel[4],A6,input,2.5 V,,Off,--,swap_1,--
read_pixel[3],B12,input,2.5 V,,Off,--,swap_1,--
read_pixel[2],A13,input,2.5 V,,Off,--,swap_1,--
read_pixel[9],A4,input,2.5 V,,Off,--,swap_1,--
read_pixel[8],B11,input,2.5 V,,Off,--,swap_1,--
read_pixel[15],B14,input,2.5 V,,Off,--,swap_1,--
read_pixel[14],E7,input,2.5 V,,Off,--,swap_1,--
read_pixel[13],A5,input,2.5 V,,Off,--,swap_1,--
read_pixel[12],F13,input,2.5 V,,Off,--,swap_1,--
read_pixel[11],A11,input,2.5 V,,Off,--,swap_1,--
read_pixel[10],D14,input,2.5 V,,Off,--,swap_1,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
