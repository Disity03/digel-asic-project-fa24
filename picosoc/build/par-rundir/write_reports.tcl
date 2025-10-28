
################################################################
# Write Reports Function
proc write_reports { prefix } {
puts "(hammer: begin_report > /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/reports/${prefix}_sta.check_types.slew_cap_fanout.rpt)"
puts "(hammer) report_check_types -max_slew -max_capacitance -max_fanout -violators -digits 3"
report_check_types -max_slew -max_capacitance -max_fanout -violators -digits 3
puts "(hammer: end_report)"

puts "(hammer: begin_report > /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/reports/${prefix}_sta.check_types.delay_skew.rpt)"
puts "(hammer) report_check_types -max_delay -max_skew -digits 3"
report_check_types -max_delay -max_skew -digits 3
puts "(hammer: end_report)"

puts "(hammer: begin_report > /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/reports/${prefix}_sta.checks.max.setup.rpt)"
puts "(hammer) report_checks -sort_by_slack -path_delay max -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 200 -corner setup"
report_checks -sort_by_slack -path_delay max -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 200 -corner setup
puts "(hammer: end_report)"

puts "(hammer: begin_report > /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/reports/${prefix}_sta.checks.min.hold.rpt)"
puts "(hammer) report_checks -sort_by_slack -path_delay min -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 200 -corner hold"
report_checks -sort_by_slack -path_delay min -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 200 -corner hold
puts "(hammer: end_report)"

puts "(hammer: begin_report > /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/reports/${prefix}_sta.checks.unconstrained.rpt)"
puts "(hammer) report_checks -sort_by_slack -unconstrained -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 200"
report_checks -sort_by_slack -unconstrained -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 200
puts "(hammer: end_report)"

puts "(hammer: begin_report > /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/reports/${prefix}_sta.summary.rpt)"
puts "(hammer) report_units"
report_units
puts "(hammer) report_units_metric"
report_units_metric
puts "(hammer) report_tns -digits 3"
report_tns -digits 3
puts "(hammer) report_tns_metric -setup"
report_tns_metric -setup
puts "(hammer) report_tns_metric -hold"
report_tns_metric -hold
puts "(hammer) report_wns -digits 3"
report_wns -digits 3
puts "(hammer) report_worst_negative_slack_metric -setup"
report_worst_negative_slack_metric -setup
puts "(hammer) report_worst_negative_slack_metric -hold"
report_worst_negative_slack_metric -hold
puts "(hammer) report_worst_slack -max -digits 3"
report_worst_slack -max -digits 3
puts "(hammer) report_worst_slack -min -digits 3"
report_worst_slack -min -digits 3
puts "(hammer) report_worst_slack_metric -setup"
report_worst_slack_metric -setup
puts "(hammer) report_worst_slack_metric -hold"
report_worst_slack_metric -hold
puts "(hammer) report_clock_skew -digits 3"
report_clock_skew -digits 3
puts "(hammer) report_clock_skew_metric"
report_clock_skew_metric
puts "(hammer: end_report)"

puts "(hammer: begin_report > /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/reports/${prefix}_sta.floating_nets.rpt)"
puts "(hammer) report_floating_nets -verbose"
report_floating_nets -verbose
puts "(hammer: end_report)"

puts "(hammer: begin_report > /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/reports/${prefix}_sta.util.rpt)"
puts "(hammer) report_design_area"
report_design_area
puts "(hammer) report_design_area_metrics"
report_design_area_metrics
puts "(hammer) puts \"Design has \[llength \[get_cells *\]\] instances.\""
puts "Design has [llength [get_cells *]] instances." 
puts "(hammer: end_report)"

puts "(hammer: begin_report > /home/urosdeljanin/digel-asic-project-fa24/picosoc/build/par-rundir/reports/${prefix}_sta.power.rpt)"
puts "(hammer) report_power -corner setup -digits 3"
report_power -corner setup -digits 3
puts "(hammer) report_power_metric -corner setup"
report_power_metric -corner setup

puts "(hammer) report_power -corner hold -digits 3"
report_power -corner hold -digits 3
puts "(hammer) report_power_metric -corner hold"
report_power_metric -corner hold
puts "(hammer: end_report)"

}
