# create_and_run_cpu_batch.tcl
# cpu sample design 
#    A Vivado script that demonstrates an RTL-to-bitstream non-project batch flow
#
# NOTE:  typical usage would be "vivado -mode batch -source fpga.tcl" 
#
# STEP#0: define output directory area.
#

set_param general.maxThreads 8
set outputDir ./fpga_output             
file mkdir $outputDir
#
# STEP#1: setup design sources and constraints
#

read_verilog  [ glob ../src/rotational_encoder/rotational_encoder.v ]
read_verilog  [ glob ../src/seven_seg/seven_seg.v ]
read_verilog  [ glob ../src/fsm/fsm.v ]
read_verilog  [ glob ../src/spi_flash/spi_flash.v ]
read_verilog  [ glob ../src/spi_sensor/spi_sensor.v ]
read_verilog  [ glob ../src/tt_um_csit_luks.v ]
read_verilog  [ glob ../src/fpga/fpga_top_lvl.v ]

read_xdc ./fpga.xdc

#
# STEP#2: run synthesis, report utilization and timing estimates, write checkpoint design
#
synth_design -top fpga_top_lvl -part xc7a35tcpg236-1 -flatten rebuilt -verilog_define DEBUG
write_checkpoint -force $outputDir/post_synth
report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
report_power -file $outputDir/post_synth_power.rpt
#
# STEP#3: run placement and logic optimzation, report utilization and timing estimates, write checkpoint design
#
opt_design
place_design
phys_opt_design
write_checkpoint -force $outputDir/post_place
report_timing_summary -file $outputDir/post_place_timing_summary.rpt
#
# STEP#4: run router, report actual utilization and timing, write checkpoint design, run drc, write verilog and xdc out
#
route_design
write_checkpoint -force $outputDir/post_route
report_timing_summary -file $outputDir/post_route_timing_summary.rpt
report_timing -sort_by group -max_paths 100 -path_type summary -file $outputDir/post_route_timing.rpt
report_clock_utilization -file $outputDir/clock_util.rpt
report_utilization -file $outputDir/post_route_util.rpt
report_power -file $outputDir/post_route_power.rpt
report_drc -file $outputDir/post_imp_drc.rpt
write_verilog -force $outputDir/fpga_netlist.v
write_xdc -no_fixed_only -force $outputDir/fpga_impl.xdc
#
# STEP#5: generate a bitstream
# 
write_bitstream -force $outputDir/fpga.bit
