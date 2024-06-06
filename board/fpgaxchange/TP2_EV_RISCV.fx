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

hsync,R16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
vsync,R11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_needed,M10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_buff,T7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat1,R12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat2,T10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
emp1,T6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
emp2,M7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
clk_div,K5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[1],N12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[0],N9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[7],M6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[6],T11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[5],N11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[4],A7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[3],N6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[2],P11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[1],R10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[0],T13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[2],F8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[1],T15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[0],R13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[2],N5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[1],T12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[0],T14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
rst,T8,input,2.5 V,,Off,--,swap_1,--
en,R9,input,2.5 V,,Off,--,swap_1,--
clk50Mhz,E1,input,2.5 V,,Off,--,swap_1,--
read_pixel[1],T9,input,2.5 V,,Off,--,swap_1,--
read_pixel[0],T4,input,2.5 V,,Off,--,swap_1,--
read_pixel[7],E8,input,2.5 V,,Off,--,swap_1,--
read_pixel[6],L7,input,2.5 V,,Off,--,swap_1,--
read_pixel[5],D8,input,2.5 V,,Off,--,swap_1,--
read_pixel[4],L8,input,2.5 V,,Off,--,swap_1,--
read_pixel[3],R7,input,2.5 V,,Off,--,swap_1,--
read_pixel[2],P9,input,2.5 V,,Off,--,swap_1,--
load,P8,input,2.5 V,,Off,--,swap_1,--
read_pixel[9],M8,input,2.5 V,,Off,--,swap_1,--
read_pixel[8],N8,input,2.5 V,,Off,--,swap_1,--
read_pixel[15],R4,input,2.5 V,,Off,--,swap_1,--
read_pixel[14],T5,input,2.5 V,,Off,--,swap_1,--
read_pixel[13],C8,input,2.5 V,,Off,--,swap_1,--
read_pixel[12],R6,input,2.5 V,,Off,--,swap_1,--
read_pixel[11],R5,input,2.5 V,,Off,--,swap_1,--
read_pixel[10],P6,input,2.5 V,,Off,--,swap_1,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
