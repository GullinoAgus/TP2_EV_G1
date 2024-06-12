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

toVGA,D8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
toCPU,E9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
loadVGA,A10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
CPU_addr[23],D6,input,2.5 V,,Off,--,swap_1,--
CPU_addr[22],P15,input,2.5 V,,Off,--,swap_1,--
CPU_addr[21],N16,input,2.5 V,,Off,--,swap_1,--
CPU_addr[20],T13,input,2.5 V,,Off,--,swap_1,--
CPU_addr[19],T3,input,2.5 V,,Off,--,swap_1,--
CPU_addr[18],P9,input,2.5 V,,Off,--,swap_1,--
CPU_addr[17],B5,input,2.5 V,,Off,--,swap_1,--
CPU_addr[16],L7,input,2.5 V,,Off,--,swap_1,--
CPU_addr[15],F8,input,2.5 V,,Off,--,swap_1,--
CPU_addr[14],B6,input,2.5 V,,Off,--,swap_1,--
CPU_addr[13],B1,input,2.5 V,,Off,--,swap_1,--
CPU_addr[12],J2,input,2.5 V,,Off,--,swap_1,--
CPU_addr[11],T4,input,2.5 V,,Off,--,swap_1,--
CPU_addr[10],A6,input,2.5 V,,Off,--,swap_1,--
CPU_addr[9],N8,input,2.5 V,,Off,--,swap_1,--
CPU_addr[8],T11,input,2.5 V,,Off,--,swap_1,--
CPU_addr[7],M10,input,2.5 V,,Off,--,swap_1,--
CPU_addr[6],R6,input,2.5 V,,Off,--,swap_1,--
CPU_addr[5],T6,input,2.5 V,,Off,--,swap_1,--
CPU_addr[4],P11,input,2.5 V,,Off,--,swap_1,--
CPU_addr[3],A3,input,2.5 V,,Off,--,swap_1,--
CPU_addr[2],A9,input,2.5 V,,Off,--,swap_1,--
CPU_addr[1],B9,input,2.5 V,,Off,--,swap_1,--
CPU_addr[0],T14,input,2.5 V,,Off,--,swap_1,--
VGA_counter_rst,A8,input,2.5 V,,Off,--,swap_1,--
busy,A11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[15],K15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[14],A13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[13],D11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[12],F9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[11],D12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[10],E11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[9],F13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[8],D16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[7],B13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[6],C11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[5],G15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[4],B14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[3],C8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[2],C14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[1],J13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
data_read[0],C9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_0,--
VGA_data_needed,B8,input,2.5 V,,Off,--,swap_1,--
clk,E1,input,2.5 V,,Off,--,swap_1,--
rst,D14,input,2.5 V,,Off,--,swap_1,--
CPU_R,A14,input,2.5 V,,Off,--,swap_1,--
CPU_W,B11,input,2.5 V,,Off,--,swap_1,--
CPU_data[15],G16,input,2.5 V,,Off,--,swap_1,--
CPU_data[14],A15,input,2.5 V,,Off,--,swap_1,--
CPU_data[13],D15,input,2.5 V,,Off,--,swap_1,--
CPU_data[12],D9,input,2.5 V,,Off,--,swap_1,--
CPU_data[11],J14,input,2.5 V,,Off,--,swap_1,--
CPU_data[10],F14,input,2.5 V,,Off,--,swap_1,--
CPU_data[9],B12,input,2.5 V,,Off,--,swap_1,--
CPU_data[8],E10,input,2.5 V,,Off,--,swap_1,--
CPU_data[7],C16,input,2.5 V,,Off,--,swap_1,--
CPU_data[6],F15,input,2.5 V,,Off,--,swap_1,--
CPU_data[5],B16,input,2.5 V,,Off,--,swap_1,--
CPU_data[4],B10,input,2.5 V,,Off,--,swap_1,--
CPU_data[3],A12,input,2.5 V,,Off,--,swap_1,--
CPU_data[2],J16,input,2.5 V,,Off,--,swap_1,--
CPU_data[1],C15,input,2.5 V,,Off,--,swap_1,--
CPU_data[0],J15,input,2.5 V,,Off,--,swap_1,--
~ALTERA_ASDO_DATA1~,C1,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_FLASH_nCE_nCSO~,D2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_DCLK~,H1,output,2.5 V,Default,Off,FAST,NOSWAP,--
~ALTERA_DATA0~,H2,input,2.5 V,,Off,--,NOSWAP,--
~ALTERA_nCEO~,F16,output,2.5 V,8,Off,FAST,NOSWAP,--
