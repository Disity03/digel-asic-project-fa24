set db_name $::env(db_name)
set timing $::env(timing)

if {$timing} {
    define_corners setup hold
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ss_ss_100C_1v60_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ss_100C_1v60_3v00_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ss_100C_1v60_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ss_100C_1v60_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ss_ss_100C_1v60_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ss_100C_1v60_3v00_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ss_100C_1v60_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ss_100C_1v60_3v00_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ss_100C_1v60_3v00_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ss_ss_100C_1v60_3v00.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib
    read_liberty -corner setup /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95_ccsnoise.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_wrapped_ff_ff_n40C_1v95_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_ff_n40C_1v95_5v50_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_ff_n40C_1v95_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_n40C_1v95_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_ff_ff_n40C_1v95_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_ff_n40C_1v95_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_hvc_wpad_ff_n40C_1v95_5v50_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_ff_n40C_1v95_5v50_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_ff_ff_n40C_1v95_5v50.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib
    read_liberty -corner hold /home/urosdeljanin/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib
}
puts "Reading $db_name database..."
read_db $db_name
# Determine step & index
set steps { init_design floorplan_design place_bumps macro_placement place_tapcells power_straps global_placement io_placement resize detailed_placement clock_tree clock_tree_resize add_fillers global_route global_route_resize detailed_route extraction write_design }
set step [string map {pre_ ""} $db_name]
set step [string map {post_ ""} $step]
set step_idx [lsearch $steps $step]
if { [string range $db_name 0 3] == "pre_" } {
    set step_idx [expr $step_idx - 1]
}
set step [lindex $steps $step_idx]
if {$timing} {
    # TODO: need to read a later SDC with updated clock constraints?
    read_sdc -echo /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/clock_constraints_fragment.sdc
    read_sdc -echo /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/pin_constraints_fragment.sdc
    source /home/urosdeljanin/DigEl/digel/lab/hammer/hammer/technology/sky130/extra/setRC.tcl
    if { $step_idx >= [lsearch $steps "clock_tree"] } {
        puts "Post-CTS, propagate clocks..."
        set_propagated_clock [all_clocks]
    }

    if { ($step_idx >= [lsearch $steps "extraction"]) && ([file exists /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.spef] == 1) } {
        puts "Post-extraction, reading SPEF..."
        # Read Spef for OpenSTA
        read_spef -corner setup /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.spef
        read_spef -corner hold /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/digel_soc.par.spef
    } elseif { $step_idx >= [lsearch $steps "global_route"] } {
        puts "Post-global_route & pre-extraction, estimating parasitics from global route..."
        estimate_parasitics -global_routing
    } elseif { $step_idx >= [lsearch $steps "global_placement"] } {
        puts "Post-global_placement & pre-global_route, estimating parasitics from placement..."
        estimate_parasitics -placement
    }
}
if {$timing} {
    puts "Timing information loaded."
} else {
    puts "Timing information not loaded."
    puts "  To load database with timing information, run: "
    puts "  ./generated_scripts/open_chip \[db_name\] timing"
}
puts "Loaded Step $step_idx: $step ($db_name)."