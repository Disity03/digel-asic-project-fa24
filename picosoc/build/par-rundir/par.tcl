# OpenROAD TCL Script
puts "(hammer) read_lef /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/tech-sky130-cache/sky130_fd_sc_hd__nom.tlef"
read_lef /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/tech-sky130-cache/sky130_fd_sc_hd__nom.tlef
puts "(hammer) read_lef /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef"
read_lef /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef
puts "(hammer) read_lef /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/tech-sky130-cache/sky130_ef_io.lef"
read_lef /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/tech-sky130-cache/sky130_ef_io.lef
puts "(hammer) read_lef /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lef/sky130_fd_io.lef"
read_lef /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lef/sky130_fd_io.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.lef
puts "(hammer) read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.lef"
read_lef /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.lef
puts "(hammer) define_corners setup hold"
define_corners setup hold
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ss_ss_100C_1v60_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ss_ss_100C_1v60_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ss_100C_1v60_3v00_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ss_100C_1v60_3v00_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ss_100C_1v60_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ss_100C_1v60_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ss_100C_1v60_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ss_100C_1v60_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ss_ss_100C_1v60_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ss_ss_100C_1v60_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ss_100C_1v60_3v00_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ss_100C_1v60_3v00_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ss_100C_1v60_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ss_100C_1v60_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ss_100C_1v60_3v00_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ss_100C_1v60_3v00_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ss_100C_1v60_3v00_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ss_100C_1v60_3v00_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ss_ss_100C_1v60_3v00.lib"
read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ss_ss_100C_1v60_3v00.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib"
read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95_ccsnoise.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95_ccsnoise.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ff_ff_n40C_1v95_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ff_ff_n40C_1v95_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ff_n40C_1v95_5v50_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ff_n40C_1v95_5v50_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ff_n40C_1v95_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ff_n40C_1v95_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_n40C_1v95_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_n40C_1v95_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ff_ff_n40C_1v95_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ff_ff_n40C_1v95_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ff_n40C_1v95_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ff_n40C_1v95_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ff_n40C_1v95_5v50_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ff_n40C_1v95_5v50_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ff_ff_n40C_1v95_5v50.lib"
read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ff_ff_n40C_1v95_5v50.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib
puts "(hammer) read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib"
read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib
puts "(hammer) read_db pre_extraction"
read_db pre_extraction
puts "(hammer) read_sdc -echo /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/clock_constraints_fragment.sdc"
read_sdc -echo /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/clock_constraints_fragment.sdc
puts "(hammer) read_sdc -echo /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/pin_constraints_fragment.sdc"
read_sdc -echo /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/pin_constraints_fragment.sdc
puts "(hammer) source /home/urosdeljanin/DigEl/digel/lab/hammer/hammer/technology/sky130/extra/setRC.tcl"
source /home/urosdeljanin/DigEl/digel/lab/hammer/hammer/technology/sky130/extra/setRC.tcl
puts "(hammer) set_dont_use {*sdf* sky130_fd_sc_hd__probe_p_* sky130_fd_sc_hd__probec_p_*}"
set_dont_use {*sdf* sky130_fd_sc_hd__probe_p_* sky130_fd_sc_hd__probec_p_*}
puts "(hammer) set_propagated_clock \[all_clocks\]"
set_propagated_clock [all_clocks]
puts "(hammer) estimate_parasitics -global_routing"
estimate_parasitics -global_routing
puts "(hammer) source /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/write_reports.tcl"
source /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/write_reports.tcl
proc find_macros {} {
    set macros ""
    set block [[[ord::get_db] getChip] getBlock]
    foreach inst [$block getInsts] {
        set inst_master [$inst getMaster]
        if { [string match [$inst_master getType] "BLOCK"] } {
            append macros [$inst getName] " "
        }
    }
    return $macros
}
################################################################
# Extraction
puts "(hammer) define_process_corner -ext_model_index 0 X"
define_process_corner -ext_model_index 0 X
puts "(hammer) extract_parasitics -ext_model_file /home/urosdeljanin/open_pdks/sky130/sky130A//libs.tech/openlane/rules.openrcx.sky130A.max.spef_extractor -corner_cnt 2"
extract_parasitics -ext_model_file /home/urosdeljanin/open_pdks/sky130/sky130A//libs.tech/openlane/rules.openrcx.sky130A.max.spef_extractor -corner_cnt 2
puts "(hammer) extract_parasitics -ext_model_file /home/urosdeljanin/open_pdks/sky130/sky130A//libs.tech/openlane/rules.openrcx.sky130A.min.spef_extractor -corner_cnt 2"
extract_parasitics -ext_model_file /home/urosdeljanin/open_pdks/sky130/sky130A//libs.tech/openlane/rules.openrcx.sky130A.min.spef_extractor -corner_cnt 2
puts "(hammer) extract_parasitics -ext_model_file /home/urosdeljanin/open_pdks/sky130/sky130A//libs.tech/openlane/rules.openrcx.sky130A.nom.spef_extractor -corner_cnt 2"
extract_parasitics -ext_model_file /home/urosdeljanin/open_pdks/sky130/sky130A//libs.tech/openlane/rules.openrcx.sky130A.nom.spef_extractor -corner_cnt 2
puts "(hammer) write_spef /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.spef"
write_spef /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.spef

# Read Spef for OpenSTA
# Read Spef for OpenSTA
puts "(hammer) read_spef -corner setup /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.spef"
read_spef -corner setup /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.spef
puts "(hammer) read_spef -corner hold /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.spef"
read_spef -corner hold /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.spef
puts "(hammer) write_db pre_write_design"
write_db pre_write_design
puts "(hammer) exec ln -sfn pre_write_design latest"
exec ln -sfn pre_write_design latest
################################################################
# Write Design

puts "(hammer) write_reports rcx"
write_reports rcx

# Ensure all OR created (rsz/cts) instances are connected
puts "(hammer) global_connect"
global_connect

# write netlist
puts "(hammer) write_verilog -remove_cells { sky130_fd_sc_hd__tap_1 sky130_fd_sc_hd__tap_2 sky130_fd_sc_hd__tapvgnd_1 sky130_fd_sc_hd__tapvgnd2_1 sky130_fd_sc_hd__tapvgnd_1 sky130_fd_sc_hd__tapvpwrvgnd_1 sky130_fd_sc_hd__fill_1 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_4 sky130_fd_sc_hd__fill_8 sky130_fd_sc_hd__diode_2 sky130_ef_io__corner_pad } -include_pwr_gnd /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.lvs.v"
write_verilog -remove_cells { sky130_fd_sc_hd__tap_1 sky130_fd_sc_hd__tap_2 sky130_fd_sc_hd__tapvgnd_1 sky130_fd_sc_hd__tapvgnd2_1 sky130_fd_sc_hd__tapvgnd_1 sky130_fd_sc_hd__tapvpwrvgnd_1 sky130_fd_sc_hd__fill_1 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_4 sky130_fd_sc_hd__fill_8 sky130_fd_sc_hd__diode_2 sky130_ef_io__corner_pad } -include_pwr_gnd /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.lvs.v

# write sim netlist
puts "(hammer) write_verilog -remove_cells { sky130_fd_sc_hd__tap_1 sky130_fd_sc_hd__tap_2 sky130_fd_sc_hd__tapvgnd_1 sky130_fd_sc_hd__tapvgnd2_1 sky130_fd_sc_hd__tapvgnd_1 sky130_fd_sc_hd__tapvpwrvgnd_1 sky130_fd_sc_hd__fill_1 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_4 sky130_fd_sc_hd__fill_8 sky130_fd_sc_hd__diode_2 sky130_ef_io__corner_pad } /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.sim.v"
write_verilog -remove_cells { sky130_fd_sc_hd__tap_1 sky130_fd_sc_hd__tap_2 sky130_fd_sc_hd__tapvgnd_1 sky130_fd_sc_hd__tapvgnd2_1 sky130_fd_sc_hd__tapvgnd_1 sky130_fd_sc_hd__tapvpwrvgnd_1 sky130_fd_sc_hd__fill_1 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_4 sky130_fd_sc_hd__fill_8 sky130_fd_sc_hd__diode_2 sky130_ef_io__corner_pad } /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.sim.v

# GDS streamout.
# write DEF (need this to write GDS)
puts "(hammer) write_def /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.def"
write_def /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.def

# write gds
# klayout args explained: https://www.klayout.de/command_args.html
puts "(hammer) set in_files { /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/gds/sky130_ef_io.gds /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/gds/sky130_ef_io__gpiov2_pad_wrapped.gds /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/gds/sky130_fd_io.gds /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.gds /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.gds /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.gds /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.gds /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.gds /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.gds }"
set in_files { /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/gds/sky130_ef_io.gds /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/gds/sky130_ef_io__gpiov2_pad_wrapped.gds /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/gds/sky130_fd_io.gds /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.gds /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.gds /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.gds /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.gds /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.gds /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.gds /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.gds }
puts "(hammer) exec /home/urosdeljanin/.conda-klayout/bin/klayout -rd out_file=/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.gds"
exec /home/urosdeljanin/.conda-klayout/bin/klayout -rd out_file=/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.gds \
        -zz -d 40 \
        -rd design_name=digel_soc \
        -rd in_def=/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.def \
        -rd in_files=$in_files \
        -rd config_file= \
        -rd seal_file= \
        -rd tech_file=/home/urosdeljanin/digel-asic-project-fa24/picosoc/build/tech-sky130-cache/sky130A.lyt \
        -rd layer_map=/home/urosdeljanin/DigEl/digel/lab/hammer/hammer/technology/sky130/extra/sky130_lefpin.map \
        -rm /home/urosdeljanin/DigEl/digel/lab/hammer/hammer/par/openroad/../../vlsi/vendor/def2stream.py

# Write SDF
puts "(hammer) write_sdf -corner setup -gzip /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.sdf.gz"
write_sdf -corner setup -gzip /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.sdf.gz
puts "(hammer) write_db post_write_design"
write_db post_write_design
puts "(hammer) exec ln -sfn post_write_design latest"
exec ln -sfn post_write_design latest
puts "(hammer) exit"
exit