yosys -import
setundef -zero
read_verilog -sv /home/urosdeljanin/digel-asic-project-fa24/picosoc/wave_gen.v
read_verilog -sv /home/urosdeljanin/digel-asic-project-fa24/picosoc/digel_soc.v
read_verilog -sv /home/urosdeljanin/digel-asic-project-fa24/picosoc/simpleuart.v
read_verilog -sv /home/urosdeljanin/digel-asic-project-fa24/picosoc/spimemio.v
read_verilog -sv /home/urosdeljanin/digel-asic-project-fa24/picosoc/picosoc.v
read_verilog -sv /home/urosdeljanin/digel-asic-project-fa24/picosoc/../picorv32.v
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v65.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v95.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v56.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v65.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v76.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95_ccsnoise.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v40.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v28.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v35.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v40.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v44.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v60_ccsnoise.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v76.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_100C_1v80.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_tt_tt_025C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ff_ff_100C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ff_ff_n40C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ss_ss_100C_1v60_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_tt_tt_025C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ff_100C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ff_n40C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ss_100C_1v60_3v00_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_tt_025C_1v80_3v30_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ff_100C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ff_n40C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ss_100C_1v60_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_tt_025C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_tt_100C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_100C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_n40C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ss_100C_1v60_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_tt_025C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_tt_100C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ff_ff_100C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ff_ff_n40C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ss_ss_100C_1v60_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_tt_tt_025C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ff_100C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ss_100C_1v60_3v00_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_tt_025C_1v80_3v30_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ff_100C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ff_n40C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ss_100C_1v60_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_tt_025C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_tt_100C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ff_100C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ss_100C_1v60_3v00_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_tt_025C_1v80_3v30_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ff_100C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ff_n40C_1v95_5v50_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ss_100C_1v60_3v00_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_tt_025C_1v80_3v30_3v30.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ff_ff_100C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ff_ff_n40C_1v95_5v50.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ss_ss_100C_1v60_3v00.lib
read_liberty -lib /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_tt_tt_025C_1v80_3v30.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib
read_liberty -lib /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib
# TODO: verify this command, it was in yosys manual but not in OpenLANE script
puts "(hammer) yosys proc"
yosys proc
puts "(hammer) hierarchy -check -top digel_soc"
hierarchy -check -top digel_soc

puts "(hammer) synth -top digel_soc"
synth -top digel_soc

# Optimize the design
puts "(hammer) opt -purge"
opt -purge

# Technology mapping of latches
puts "(hammer) techmap -map /home/urosdeljanin/open_pdks/sky130/sky130A//libs.tech/openlane/sky130_fd_sc_hd/latch_map.v"
techmap -map /home/urosdeljanin/open_pdks/sky130/sky130A//libs.tech/openlane/sky130_fd_sc_hd/latch_map.v

# Technology mapping of flip-flops
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v65.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v65.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v95.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v95.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v56.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v56.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v65.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v65.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v76.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v76.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95_ccsnoise.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95_ccsnoise.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v40.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v40.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v28.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v28.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v35.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v35.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v40.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v40.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v44.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v44.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v60_ccsnoise.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v60_ccsnoise.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v76.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v76.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_100C_1v80.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_100C_1v80.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_tt_tt_025C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_tt_tt_025C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ff_ff_100C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ff_ff_100C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ff_ff_n40C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ff_ff_n40C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ss_ss_100C_1v60_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ss_ss_100C_1v60_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_tt_tt_025C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_tt_tt_025C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ff_100C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ff_100C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ff_n40C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ff_n40C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ss_100C_1v60_3v00_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ss_100C_1v60_3v00_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_tt_025C_1v80_3v30_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_tt_025C_1v80_3v30_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ff_100C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ff_100C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ff_n40C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ff_n40C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ss_100C_1v60_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ss_100C_1v60_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_tt_025C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_tt_025C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_tt_100C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_tt_100C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_100C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_100C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_n40C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_n40C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ss_100C_1v60_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ss_100C_1v60_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_tt_025C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_tt_025C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_tt_100C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_tt_100C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_100C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ff_ff_100C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ff_ff_100C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ff_ff_n40C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ff_ff_n40C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ss_ss_100C_1v60_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ss_ss_100C_1v60_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_tt_tt_025C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_tt_tt_025C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ff_100C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ff_100C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ss_100C_1v60_3v00_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ss_100C_1v60_3v00_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_tt_025C_1v80_3v30_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_tt_025C_1v80_3v30_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ff_100C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ff_100C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ff_n40C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ff_n40C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ss_100C_1v60_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ss_100C_1v60_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_tt_025C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_tt_025C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_tt_100C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_tt_100C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ff_100C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ff_100C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ss_100C_1v60_3v00_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ss_100C_1v60_3v00_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_tt_025C_1v80_3v30_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_tt_025C_1v80_3v30_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ff_100C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ff_100C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ff_n40C_1v95_5v50_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ff_n40C_1v95_5v50_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ss_100C_1v60_3v00_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ss_100C_1v60_3v00_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_tt_025C_1v80_3v30_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_tt_025C_1v80_3v30_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ff_ff_100C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ff_ff_100C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ff_ff_n40C_1v95_5v50.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ff_ff_n40C_1v95_5v50.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ss_ss_100C_1v60_3v00.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ss_ss_100C_1v60_3v00.lib
puts "dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_tt_tt_025C_1v80_3v30.lib" 
dfflibmap -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_tt_tt_025C_1v80_3v30.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib
puts "dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib" 
dfflibmap -liberty /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib
puts "opt" 
opt
# Technology mapping for cells
# ABC supports multiple liberty files, but the hook from Yosys to ABC doesn't
# TODO: this is a bad way of getting one liberty file, need a way to merge all std cell lib files
# NOTE: this breaks for any PDK that has multiple LIB files for std cell library
puts "(hammer) abc -D 50000"
abc -D 50000 \
    -constr "/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/syn-rundir/digel_soc.mapped.sdc" \
    -liberty "/home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v65.lib" \
    -showtmp

# Replace undef values with defined constants
# TODO: do we need this??
puts "(hammer) setundef -zero"
setundef -zero

# Split multi-bit nets into single-bit nets.
# Splitting nets resolves unwanted compound assign statements in netlist (assign [..] = [..])
puts "(hammer) splitnets"
splitnets

# Remove unused cells and wires
puts "(hammer) opt_clean -purge"
opt_clean -purge
# Technology mapping of constant hi- and/or lo-drivers
puts "(hammer) hilomap -singleton"
hilomap -singleton \
        -hicell {*}sky130_fd_sc_hd__conb_1 HI \
        -locell {*}sky130_fd_sc_hd__conb_1 LO
# Insert driver cells for pass through wires
puts "(hammer) insbuf -buf {*}sky130_fd_sc_hd__buf_4 A X"
insbuf -buf {*}sky130_fd_sc_hd__buf_4 A X
puts "(hammer) tee -o /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/syn-rundir/digel_soc.synth_check.rpt check"
tee -o /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/syn-rundir/digel_soc.synth_check.rpt check

puts "(hammer) tee -o /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/syn-rundir/digel_soc.synth_stat.txt stat -top digel_soc -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v65.lib"
tee -o /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/syn-rundir/digel_soc.synth_stat.txt stat -top digel_soc -liberty /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_100C_1v65.lib
puts "(hammer) write_verilog -noattr -noexpr -nohex -nodec -defparam \"/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/syn-rundir/digel_soc.mapped.v\""
write_verilog -noattr -noexpr -nohex -nodec -defparam "/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/syn-rundir/digel_soc.mapped.v"

# flatten

# # OpenROAD will throw an error if the verilog from Yosys is not flattened
# # UPDATE ON THIS: nvm, it somehow works now...
# write_verilog -noattr -noexpr -nohex -nodec -defparam "/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/syn-rundir/digel_soc.mapped.v"

# BLIF file seems to be easier to parse than mapped verilog for find_regs functions so leave for now
# write_blif -top digel_soc "/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/syn-rundir/digel_soc.mapped.blif"
exit