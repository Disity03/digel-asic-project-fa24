# Create the working library
rm -rf /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/sim-rundir/work_testbench
vlib /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/sim-rundir/work_testbench
vmap work_testbench /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/sim-rundir/work_testbench
# Compile the design units
# Suppressing the vlog-2892 error in Verilog models of library cells
# - (vlog-2892) Net type of 'NET_NAME' was not explicitly declared.
vlog -suppress 2892 -work work_testbench +define+CLOCK_PERIOD=50.00 -timescale 1ns/10ps /home/urosdeljanin/digel-asic-project-fa24/picosoc/digel_soc_tb.v /home/urosdeljanin/digel-asic-project-fa24/picosoc/spiflash.v /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.v /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.sim.v /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/tech-sky130-cache/primitives.v /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/tech-sky130-cache/sky130_fd_sc_hd.v /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/verilog/sky130_ef_io.v /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/verilog/sky130_fd_io.v /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.v /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.v /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.v /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.v /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.v /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.v /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.v /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.v /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.v /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.v /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.v
# Optimize the design
# +acc provides visibility for debugging purposes
# -o provides the name of the optimized design file name
vopt -debugdb -work work_testbench -timescale 1ns/10ps  +sdf_verbose -sdfmax /testbench/uut=/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.sdf.gz +acc testbench -o opt_testbench
# Load the design
vsim -debugDB -sdfnoerror -work work_testbench opt_testbench
# Add waves
add wave -group TB -color cyan -internal testbench/*
add wave -ports uut/*
add wave -group INT -color orange -r -internal uut/*
# Log simulation data
log -r *
# Run simulation
run -all
