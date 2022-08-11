## Generated SDC file "DE1_Basic_Computer.out.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

## DATE    "Mon Sep 07 00:07:13 2015"

##
## DEVICE  "EP2C20F484C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 10.000 -waveform { 0.000 5.000 } [get_ports {altera_reserved_tck}]
create_clock -name {CLOCK_50} -period 10.000 -waveform { 0.000 5.000 } [get_ports {CLOCK_50}]
create_clock -name {DRAM_CLK} -period 10.000 -waveform { 0.000 5.000 } [get_ports {DRAM_CLK}]
create_clock -name {system_clock} -period 10.000 -waveform { 0.000 5.000 } [get_ports {system_clock}]

#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_registers {*|alt_jtag_atlantic:*|jupdate}] -to [get_registers {*|alt_jtag_atlantic:*|jupdate1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rdata[*]}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read}] -to [get_registers {*|alt_jtag_atlantic:*|read1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read_req}] 
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rvalid}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|t_dav}] -to [get_registers {*|alt_jtag_atlantic:*|tck_t_dav}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|user_saw_rvalid}] -to [get_registers {*|alt_jtag_atlantic:*|rvalid0*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|wdata[*]}] -to [get_registers *]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write}] -to [get_registers {*|alt_jtag_atlantic:*|write1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_ena*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_pause*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_valid}] 
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|aclr}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_break:the_nios_system_cpu_nios2_oci_break|break_readreg*}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_debug:the_nios_system_cpu_nios2_oci_debug|*resetlatch}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr[33]}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_debug:the_nios_system_cpu_nios2_oci_debug|monitor_ready}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr[0]}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_debug:the_nios_system_cpu_nios2_oci_debug|monitor_error}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr[34]}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_ocimem:the_nios_system_cpu_nios2_ocimem|*MonDReg*}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_sysclk:the_nios_system_cpu_jtag_debug_module_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_sysclk:the_nios_system_cpu_jtag_debug_module_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_debug:the_nios_system_cpu_nios2_oci_debug|monitor_go}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_break:the_nios_system_cpu_nios2_oci_break|dbrk_hit?_latch}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_break:the_nios_system_cpu_nios2_oci_break|trigbrktype}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_break:the_nios_system_cpu_nios2_oci_break|trigger_state}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_im:the_nios_system_cpu_nios2_oci_im|nios_system_cpu_traceram_lpm_dram_bdp_component_module:nios_system_cpu_traceram_lpm_dram_bdp_component*address*}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_im:the_nios_system_cpu_nios2_oci_im|nios_system_cpu_traceram_lpm_dram_bdp_component_module:nios_system_cpu_traceram_lpm_dram_bdp_component*we_reg*}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_im:the_nios_system_cpu_nios2_oci_im|*trc_im_addr*}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_im:the_nios_system_cpu_nios2_oci_im|*trc_wrap}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_itrace:the_nios_system_cpu_nios2_oci_itrace|trc_ctrl_reg*}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_nios2_oci_itrace:the_nios_system_cpu_nios2_oci_itrace|d1_debugack}] -to [get_keepers {*nios_system_cpu:*|nios_system_cpu_nios2_oci:the_nios_system_cpu_nios2_oci|nios_system_cpu_jtag_debug_module_wrapper:the_nios_system_cpu_jtag_debug_module_wrapper|nios_system_cpu_jtag_debug_module_tck:the_nios_system_cpu_jtag_debug_module_tck|*sr*}]


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************
