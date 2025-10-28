# Floorplan automatically generated from HAMMER
puts "(hammer) initialize_floorplan -site unithd -die_area { 0 0 1200 1200} -core_area {2 2 1196 1196}"
initialize_floorplan -site unithd -die_area { 0 0 1200 1200} -core_area {2 2 1196 1196}
set inst [[ord::get_db_block] findInst soc/memory]
# only place macro if it is present in design
if {$inst == "NULL"} {
    puts "(WARNING) Cell/macro soc/memory not found!"
} else {
    set inst_master [$inst getMaster]
    # TODO: can we not hard-code 1000? get units somehow?
    set width [expr [$inst_master getWidth] / 1000]
    set height [expr [$inst_master getHeight] / 1000]
    set origin [$inst_master getOrigin]
    set origin_x [expr [lindex $origin 0] / 1000]
    set origin_y [expr [lindex $origin 1] / 1000]
    set x [expr 25.0 + $height - $origin_y]
    set y [expr 25.0 + $origin_x]
    set origin "$x $y"
    puts "(hammer) place_cell -inst_name soc/memory -orient R90 -origin $origin -status FIRM"
    place_cell -inst_name soc/memory -orient R90 -origin $origin -status FIRM
}