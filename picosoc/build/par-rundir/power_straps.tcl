
####################################
# global connections
####################################

add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VDD$} -power
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VPWR$} -power
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VPB$} -power
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^vdd$} -power
add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VSS$} -ground
add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VGND$} -ground
add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VNB$} -ground
add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^vss$} -ground
global_connect
####################################
# voltage domains
####################################
# AO is hard-coded in cpf generation too
#   but OpenROAD errors when using AO instead of CORE
set_voltage_domain -name {CORE} -power {VDD} -ground {VSS}
####################################
# standard cell grid
####################################
define_pdn_grid -name {grid} -voltage_domains {CORE}
add_pdn_stripe -grid {grid} -layer {met1} -width 0.28 -offset 0 -followpins
add_pdn_stripe -grid {grid} -layer {met2} -width 2.80 -pitch 119.60 -offset 5.04 -spacing 0.42
add_pdn_stripe -grid {grid} -layer {met3} -width 3.66 -pitch 44.20 -offset 7.69 -spacing 1.10
add_pdn_stripe -grid {grid} -layer {met4} -width 5.34 -pitch 80.04 -offset 10.21 -spacing 1.10
add_pdn_stripe -grid {grid} -layer {met5} -width 5.4 -pitch 34.0 -offset 7.5 -spacing 4.8 -extend_to_boundary

add_pdn_connect -grid grid -layers {met1 met2}
add_pdn_connect -grid grid -layers {met2 met3}
add_pdn_connect -grid grid -layers {met3 met4}
add_pdn_connect -grid grid -layers {met4 met5}


####################################
# grid for: CORE_macro_grid_1
####################################
define_pdn_grid -name {CORE_macro_grid_1} -voltage_domains {CORE} -macro -orient {R0 R180 MX MY} -halo { 2.0 2.0 2.0 2.0 } -default -grid_over_boundary
add_pdn_connect -grid {CORE_macro_grid_1} -layers {met3 met4}

####################################
# grid for: CORE_macro_grid_2
####################################
define_pdn_grid -name {CORE_macro_grid_2} -voltage_domains {CORE} -macro -orient {R90 R270 MXR90 MYR90} -halo { 2.0 2.0 2.0 2.0 } -default -grid_over_boundary
add_pdn_connect -grid {CORE_macro_grid_2} -layers {met3 met4}


