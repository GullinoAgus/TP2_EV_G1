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

hsync,B4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
vsync,B5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_needed,A2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[1],F8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[0],E9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[2],C6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[1],E6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[0],D8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[2],D5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[1],A6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[0],D6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
load,R9,input,2.5 V,,Off,--,swap_1,--
rst,T8,input,2.5 V,,Off,--,swap_1,--
read_pixel[9],T9,input,2.5 V,,Off,--,swap_1,--
read_pixel[8],B10,input,2.5 V,,Off,--,swap_1,--
read_pixel[12],A4,input,2.5 V,,Off,--,swap_1,--
read_pixel[11],F9,input,2.5 V,,Off,--,swap_1,--
read_pixel[10],B6,input,2.5 V,,Off,--,swap_1,--
read_pixel[15],B7,input,2.5 V,,Off,--,swap_1,--
read_pixel[14],A7,input,2.5 V,,Off,--,swap_1,--
read_pixel[13],C9,input,2.5 V,,Off,--,swap_1,--
en,C8,input,2.5 V,,Off,--,swap_1,--
read_pixel[1],E7,input,2.5 V,,Off,--,swap_1,--
clk50Mhz,R8,input,2.5 V,,Off,--,swap_1,--
read_pixel[0],A10,input,2.5 V,,Off,--,swap_1,--
read_pixel[4],E8,input,2.5 V,,Off,--,swap_1,--
read_pixel[3],A5,input,2.5 V,,Off,--,swap_1,--
read_pixel[2],A15,input,2.5 V,,Off,--,swap_1,--
read_pixel[7],B3,input,2.5 V,,Off,--,swap_1,--
read_pixel[6],A3,input,2.5 V,,Off,--,swap_1,--
read_pixel[5],D9,input,2.5 V,,Off,--,swap_1,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
