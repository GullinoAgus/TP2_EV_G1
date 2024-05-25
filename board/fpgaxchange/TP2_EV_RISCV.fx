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

colors[4],M2,input,2.5 V,,Off,--,swap_0,--
hsync,R4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
vsync,T2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
red[0],T4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
red[1],N3,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
red[2],N2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
green[0],P2,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
green[1],P1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
green[2],L1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
blue[0],L4,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
blue[1],R1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
colors[5],M1,input,2.5 V,,Off,--,swap_0,--
colors[6],K5,input,2.5 V,,Off,--,swap_0,--
colors[7],N1,input,2.5 V,,Off,--,swap_0,--
colors[0],R3,input,2.5 V,,Off,--,swap_0,--
colors[1],P3,input,2.5 V,,Off,--,swap_0,--
colors[2],T3,input,2.5 V,,Off,--,swap_0,--
colors[3],N6,input,2.5 V,,Off,--,swap_0,--
rst,E1,input,2.5 V,,Off,--,swap_0,--
clk25MHz,N9,input,2.5 V,,Off,--,swap_0,--
en,P8,input,2.5 V,,Off,--,swap_0,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
