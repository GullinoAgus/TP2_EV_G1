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

hsync,T11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
vsync,P11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_needed,T10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
select_buff,N8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat1,P3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
wat2,N6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
emp1,E8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
emp2,T6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
clk_div,L4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[1],R13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
b[0],T13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[7],P14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[6],N5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[5],R10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[4],R5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[3],P9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[2],R11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[1],T2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
curr_color[0],R4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[2],G1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[1],M10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
g[0],R12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[2],C9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[1],N11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
r[0],T12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
rst,T8,input,2.5 V,,Off,--,swap_1,--
en,R9,input,2.5 V,,Off,--,swap_1,--
clk50Mhz,E1,input,2.5 V,,Off,--,swap_1,--
read_pixel[3],T9,input,2.5 V,,Off,--,swap_1,--
read_pixel[2],N9,input,2.5 V,,Off,--,swap_1,--
read_pixel[7],T4,input,2.5 V,,Off,--,swap_1,--
read_pixel[6],R7,input,2.5 V,,Off,--,swap_1,--
read_pixel[5],R3,input,2.5 V,,Off,--,swap_1,--
read_pixel[4],L8,input,2.5 V,,Off,--,swap_1,--
read_pixel[1],T7,input,2.5 V,,Off,--,swap_1,--
read_pixel[0],M6,input,2.5 V,,Off,--,swap_1,--
load,P8,input,2.5 V,,Off,--,swap_1,--
read_pixel[11],M8,input,2.5 V,,Off,--,swap_1,--
read_pixel[10],M7,input,2.5 V,,Off,--,swap_1,--
read_pixel[15],T5,input,2.5 V,,Off,--,swap_1,--
read_pixel[14],P6,input,2.5 V,,Off,--,swap_1,--
read_pixel[13],C8,input,2.5 V,,Off,--,swap_1,--
read_pixel[12],D8,input,2.5 V,,Off,--,swap_1,--
read_pixel[9],R6,input,2.5 V,,Off,--,swap_1,--
read_pixel[8],L7,input,2.5 V,,Off,--,swap_1,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
