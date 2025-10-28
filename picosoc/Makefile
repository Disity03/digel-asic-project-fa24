
CROSS=riscv64-unknown-elf-
CFLAGS=

# ---- iCE40 HX8K Breakout Board ----

hx8ksim: hx8kdemo_tb.vvp hx8kdemo_fw.hex
	vvp -N $< +firmware=hx8kdemo_fw.hex

hx8ksynsim: hx8kdemo_syn_tb.vvp hx8kdemo_fw.hex
	vvp -N $< +firmware=hx8kdemo_fw.hex

hx8kdemo.json: hx8kdemo.v spimemio.v simpleuart.v picosoc.v ../picorv32.v
	yosys -ql hx8kdemo.log -p 'synth_ice40 -top hx8kdemo -json hx8kdemo.json' $^

hx8kdemo_tb.vvp: hx8kdemo_tb.v hx8kdemo.v spimemio.v simpleuart.v picosoc.v ../picorv32.v spiflash.v
	iverilog -s testbench -o $@ $^ `yosys-config --datdir/ice40/cells_sim.v` -DNO_ICE40_DEFAULT_ASSIGNMENTS

hx8kdemo_syn_tb.vvp: hx8kdemo_tb.v hx8kdemo_syn.v spiflash.v
	iverilog -s testbench -o $@ $^ `yosys-config --datdir/ice40/cells_sim.v` -DNO_ICE40_DEFAULT_ASSIGNMENTS

hx8kdemo_syn.v: hx8kdemo.json
	yosys -p 'read_json hx8kdemo.json; write_verilog hx8kdemo_syn.v'

hx8kdemo.asc: hx8kdemo.pcf hx8kdemo.json
	nextpnr-ice40 --hx8k --package ct256 --asc hx8kdemo.asc --json hx8kdemo.json --pcf hx8kdemo.pcf

hx8kdemo.bin: hx8kdemo.asc
	icetime -d hx8k -c 12 -mtr hx8kdemo.rpt hx8kdemo.asc
	icepack hx8kdemo.asc hx8kdemo.bin

hx8kprog: hx8kdemo.bin hx8kdemo_fw.bin
	iceprog hx8kdemo.bin
	iceprog -o 1M hx8kdemo_fw.bin

hx8kprog_fw: hx8kdemo_fw.bin
	iceprog -o 1M hx8kdemo_fw.bin

hx8kdemo_sections.lds: sections.lds
	$(CROSS)cpp -P -DHX8KDEMO -o $@ $^

hx8kdemo_fw.elf: hx8kdemo_sections.lds start.s firmware.c
	$(CROSS)gcc $(CFLAGS) -DHX8KDEMO -mabi=ilp32 -march=rv32imc -Wl,--build-id=none,-Bstatic,-T,hx8kdemo_sections.lds,--strip-debug -ffreestanding -nostdlib -o hx8kdemo_fw.elf start.s firmware.c

hx8kdemo_fw.hex: hx8kdemo_fw.elf
	$(CROSS)objcopy -O verilog hx8kdemo_fw.elf hx8kdemo_fw.hex

hx8kdemo_fw.bin: hx8kdemo_fw.elf
	$(CROSS)objcopy -O binary hx8kdemo_fw.elf hx8kdemo_fw.bin

# ---- iCE40 IceBreaker Board ----

icebsim: icebreaker_tb.vvp icebreaker_fw.hex
	vvp -N $< +firmware=icebreaker_fw.hex

icebsynsim: icebreaker_syn_tb.vvp icebreaker_fw.hex
	vvp -N $< +firmware=icebreaker_fw.hex

icebreaker.json: icebreaker.v ice40up5k_spram.v spimemio.v simpleuart.v picosoc.v ../picorv32.v
	yosys -ql icebreaker.log -p 'synth_ice40 -dsp -top icebreaker -json icebreaker.json' $^

icebreaker_tb.vvp: icebreaker_tb.v icebreaker.v ice40up5k_spram.v spimemio.v simpleuart.v picosoc.v ../picorv32.v spiflash.v
	iverilog -s testbench -o $@ $^ `yosys-config --datdir/ice40/cells_sim.v` -DNO_ICE40_DEFAULT_ASSIGNMENTS

icebreaker_syn_tb.vvp: icebreaker_tb.v icebreaker_syn.v spiflash.v
	iverilog -s testbench -o $@ $^ `yosys-config --datdir/ice40/cells_sim.v` -DNO_ICE40_DEFAULT_ASSIGNMENTS

icebreaker_syn.v: icebreaker.json
	yosys -p 'read_json icebreaker.json; write_verilog icebreaker_syn.v'

icebreaker.asc: icebreaker.pcf icebreaker.json
	nextpnr-ice40 --freq 13 --up5k --package sg48 --asc icebreaker.asc --pcf icebreaker.pcf --json icebreaker.json

icebreaker.bin: icebreaker.asc
	icetime -d up5k -c 12 -mtr icebreaker.rpt icebreaker.asc
	icepack icebreaker.asc icebreaker.bin

icebprog: icebreaker.bin icebreaker_fw.bin
	iceprog icebreaker.bin
	iceprog -o 1M icebreaker_fw.bin

icebprog_fw: icebreaker_fw.bin
	iceprog -o 1M icebreaker_fw.bin

digel_soc.lds: sections.lds
	$(CROSS)cpp -P -DICEBREAKER -o $@ $^

digel_soc.elf: digel_soc.lds start.s digel_soc.c
	$(CROSS)gcc $(CFLAGS) -DICEBREAKER -mabi=ilp32 -march=rv32ic -Wl,-Bstatic,-T,digel_soc.lds,--strip-debug -ffreestanding -nostdlib -o digel_soc.elf start.s digel_soc.c

digel_soc.hex: digel_soc.elf
	$(CROSS)objcopy -O verilog digel_soc.elf digel_soc.hex

digel_soc.bin: digel_soc.elf
	$(CROSS)objcopy -O binary digel_soc.elf digel_soc.bin
	
digel_soc_sim:  digel_soc.hex
	vsim -do "vlog ~/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.v wave_gen.v digel_soc.v digel_soc_tb.v simpleuart.v spimemio.v picosoc.v ../picorv32.v; vsim testbench -voptargs=+acc +firmware=digel_soc.hex; add wave *; run -all;"

# ---- Testbench for SPI Flash Model ----

spiflash_tb: spiflash_tb.vvp digel_soc.hex
	vvp -N $< +firmware=digel_soc.hex

spiflash_tb.vvp: spiflash.v spiflash_tb.v
	iverilog -s testbench -o $@ $^

# ---- ASIC Synthesis Tests ----

cmos.log: spimemio.v simpleuart.v picosoc.v ../picorv32.v
	yosys -l cmos.log -p 'synth -top picosoc; abc -g cmos2; opt -fast; stat' $^

# ---- Clean ----

clean:
	rm -f testbench.vvp testbench.vcd spiflash_tb.vvp spiflash_tb.vcd
	rm -f hx8kdemo_fw.elf hx8kdemo_fw.hex hx8kdemo_fw.bin cmos.log
	rm -f digel_soc.elf digel_soc.hex digel_soc.bin
	rm -f hx8kdemo.json hx8kdemo.log hx8kdemo.asc hx8kdemo.rpt hx8kdemo.bin
	rm -f hx8kdemo_syn.v hx8kdemo_syn_tb.vvp hx8kdemo_tb.vvp
	rm -f icebreaker.json icebreaker.log icebreaker.asc icebreaker.rpt icebreaker.bin
	rm -f icebreaker_syn.v icebreaker_syn_tb.vvp icebreaker_tb.vvp
	rm -rf $(HAMMER_D_MK) $(OBJ_DIR)/*rundir $(OBJ_DIR)/*.json hammer-vlsi*.log __pycache__ output.json

.PHONY: spiflash_tb clean
.PHONY: hx8kprog hx8kprog_fw hx8ksim hx8ksynsim
.PHONY: icebprog icebprog_fw icebsim icebsynsim

#########################################################################################
# vlsi makefile
#########################################################################################

#########################################################################################
# general path variables
#########################################################################################
base_dir=$(abspath ..)
vlsi_dir=$(abspath .)
sim_dir=$(abspath .)
hammer_dir=HAMMER_PATH
pdk_dir=$(HOME)/share/pdk

#########################################################################################
# vlsi types and rules
#########################################################################################
sim_name            ?= questa
tech_name           ?= sky130
tech_dir            ?= $(if $(filter $(tech_name), asap7 saed32), $(hammer_dir)/src/hammer-vlsi/technology/$(tech_name))

SMEMS_COMP         ?= $(tech_dir)/sram-compiler.json
SMEMS_CACHE        ?= $(tech_dir)/sram-cache.json
SMEMS_HAMMER       ?= $(hammer_dir)/src/hammer-vlsi/technology/$(tech_name)sram-cache.json
ifeq ($(tech_name),asap7)
	MACROCOMPILER_MODE ?= --mode synflops
else
	MACROCOMPILER_MODE ?= -l $(SMEMS_CACHE) -hir $(SMEMS_HAMMER)
endif

TOP                 ?= digel_soc

OBJ_DIR             ?= $(vlsi_dir)/build
ENV_YML             ?= "" #$(vlsi_dir)/cfg/inst-env.yml""
TECH_CONF           ?= $(vlsi_dir)/cfg/sky130.yml

DESIGN_CONF         ?= $(vlsi_dir)/cfg/design.yml
SIM_RTL_CONF        ?= $(vlsi_dir)/cfg/sim-rtl.yml
SIM_GL_SYN_CONF     ?= $(vlsi_dir)/cfg/sim-gl-syn.yml
SIM_GL_PAR_CONF     ?= $(vlsi_dir)/cfg/sim-gl-par.yml

SRAM_CONF           ?= $(OBJ_DIR)/sram_generator-output.json
OUTPUT_SYN_DB       ?= $(OBJ_DIR)/syn-rundir/syn-output-full.json
INPUT_PAR_DB        ?= $(OBJ_DIR)/par-input.json
OUTPUT_PAR_DB       ?= $(OBJ_DIR)/par-rundir/par-output-full.json
INPUT_DRC_DB        ?= $(OBJ_DIR)/drc-input.json
INPUT_LVS_DB        ?= $(OBJ_DIR)/lvs-input.json
INPUT_SIM_GL_SYN_DB ?= $(OBJ_DIR)/syn-to-sim_input.json
INPUT_SIM_GL_PAR_DB ?= $(OBJ_DIR)/par-to-sim_input.json
OUTPUT_SIM_DB       ?= $(OBJ_DIR)/sim-rundir/sim-output-full.json
INPUT_PWR_SIM_GL_DB ?= $(OBJ_DIR)/sim-to-power_input.json
INPUT_PWR_PAR_DB    ?= $(OBJ_DIR)/par-to-power_input.json
INPUT_STA_SYN_DB    ?= $(OBJ_DIR)/timing-syn-input.json
OUTPUT_STA_SYN_DB   ?= $(OBJ_DIR)/timing-syn-rundir/timing-output-full.json
INPUT_STA_PAR_DB    ?= $(OBJ_DIR)/timing-par-input.json
OUTPUT_STA_PAR_DB   ?= $(OBJ_DIR)/timing-par-rundir/timing-output-full.json
HAMMER_EXEC         ?= hammer-vlsi

#########################################################################################
# general rules
#########################################################################################
.PHONY: default
default: all

all: drc lvs

#########################################################################################
# AUTO BUILD FLOW
#########################################################################################

HAMMER_D_MK = $(OBJ_DIR)/hammer.d

.PHONY: buildfile
buildfile: $(HAMMER_D_MK)

$(HAMMER_D_MK): $(SRAM_CONF)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(DESIGN_CONF) --obj_dir $(OBJ_DIR) build

MAKE = make

#########################################################################################
# RTL Sim
#########################################################################################

.PHONY: sim-rtl
sim-rtl: $(HAMMER_D_MK) digel_soc.hex
	cp --update $(pdk_dir)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v $(OBJ_DIR)/tech-sky130-cache/primitives.v
	cp --update $(hammer_dir)/e2e/tech-sky130-cache/sky130_fd_sc_hd.v $(OBJ_DIR)/tech-sky130-cache/sky130_fd_sc_hd.v
	mkdir -p $(OBJ_DIR)/sim-rundir
	cp $(vlsi_dir)/digel_soc.hex $(OBJ_DIR)/sim-rundir/firmware.hex
	cp $(vlsi_dir)/python_graphs.py $(OBJ_DIR)/sim-rundir/python_graphs.py
	mkdir -p $(OBJ_DIR)/sim-rundir/waves
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(SIM_RTL_CONF) --obj_dir $(OBJ_DIR) sim

#########################################################################################
# Post-Synthesis Gate-level Sim
#########################################################################################

.PHONY: sim-gl-syn
sim-gl-syn: $(HAMMER_D_MK) $(INPUT_SIM_GL_SYN_DB) digel_soc.hex
	cp --update $(pdk_dir)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v $(OBJ_DIR)/tech-sky130-cache/primitives.v
	cp --update $(hammer_dir)/e2e/tech-sky130-cache/sky130_fd_sc_hd.v $(OBJ_DIR)/tech-sky130-cache/sky130_fd_sc_hd.v
	mkdir -p $(OBJ_DIR)/sim-rundir
	cp $(vlsi_dir)/digel_soc.hex $(OBJ_DIR)/sim-rundir/firmware.hex
	cp $(vlsi_dir)/python_graphs.py $(OBJ_DIR)/sim-rundir/python_graphs.py
	mkdir -p $(OBJ_DIR)/sim-rundir/waves
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(SIM_GL_SYN_CONF) -p $(INPUT_SIM_GL_SYN_DB) --obj_dir $(OBJ_DIR) sim

#########################################################################################e
# Post-PAR Gate-level Sim
#########################################################################################

.PHONY: sim-gl-par
sim-gl-par: $(HAMMER_D_MK) $(INPUT_SIM_GL_PAR_DB) digel_soc.hex
	cp --update $(pdk_dir)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v $(OBJ_DIR)/tech-sky130-cache/primitives.v
	cp --update $(hammer_dir)/e2e/tech-sky130-cache/sky130_fd_sc_hd.v $(OBJ_DIR)/tech-sky130-cache/sky130_fd_sc_hd.v
	mkdir -p $(OBJ_DIR)/sim-rundir
	cp $(vlsi_dir)/digel_soc.hex $(OBJ_DIR)/sim-rundir/firmware.hex
	cp $(vlsi_dir)/python_graphs.py $(OBJ_DIR)/sim-rundir/python_graphs.py
	mkdir -p $(OBJ_DIR)/sim-rundir/waves
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(SIM_GL_PAR_CONF) -p $(INPUT_SIM_GL_PAR_DB) --obj_dir $(OBJ_DIR) sim

#########################################################################################
# Standalone Power Estimation
#########################################################################################

.PHONY: power
power: $(HAMMER_D_MK)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(SIM_GL_PAR_CONF) --obj_dir $(OBJ_DIR) power

#########################################################################################
# Post-PAR Power Estimation
#########################################################################################

.PHONY: power-par
power-par: $(HAMMER_D_MK) $(INPUT_PWR_SIM_GL_DB) $(INPUT_PWR_PAR_DB)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(INPUT_PWR_SIM_GL_DB) -p $(INPUT_PWR_PAR_DB) --obj_dir $(OBJ_DIR) power

#########################################################################################
# Synthesis
#########################################################################################

.PHONY: syn
$(OUTPUT_SYN_DB) syn: $(HAMMER_D_MK)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(DESIGN_CONF) -o $(OUTPUT_SYN_DB) --obj_dir $(OBJ_DIR) syn
	cp --update $(OBJ_DIR)/syn-rundir/$(TOP).mapped.v $(OBJ_DIR)/syn-rundir/$(TOP).yosys.v

#########################################################################################
# Synthesis to PAR
#########################################################################################

.PHONY: syn-to-par
$(INPUT_PAR_DB) syn-to-par: $(HAMMER_D_MK) $(OUTPUT_SYN_DB)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(OUTPUT_SYN_DB) -p $(DESIGN_CONF) -o $(INPUT_PAR_DB) --obj_dir $(OBJ_DIR) syn_to_par

#########################################################################################
# Synthesis to Sim
#########################################################################################

.PHONY: syn-to-sim
$(INPUT_SIM_GL_SYN_DB) syn-to-sim: $(HAMMER_D_MK) $(OUTPUT_SYN_DB)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(OUTPUT_SYN_DB) -o $(INPUT_SIM_GL_SYN_DB) --obj_dir $(OBJ_DIR) syn_to_sim

#########################################################################################
# PAR
#########################################################################################

.PHONY: par
$(OUTPUT_PAR_DB) par: $(HAMMER_D_MK) $(INPUT_PAR_DB)
	cp --update $(pdk_dir)/sky130A/libs.ref/sky130_fd_io/lef/sky130_ef_io.lef $(OBJ_DIR)/tech-sky130-cache/sky130_ef_io.lef
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(INPUT_PAR_DB) -o $(OUTPUT_PAR_DB) --obj_dir $(OBJ_DIR) par

#########################################################################################
# Synthesis to Timing (STA)
#########################################################################################

.PHONY: syn-to-timing
$(INPUT_STA_SYN_DB) syn-to-timing: $(HAMMER_D_MK) $(OUTPUT_SYN_DB)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(OUTPUT_SYN_DB) $(HAMMER_EXTRA_ARGS) -o $(INPUT_STA_SYN_DB) --obj_dir $(OBJ_DIR) syn-to-timing

#########################################################################################
# Post-Synthesis Timing (STA)
#########################################################################################

.PHONY: timing-syn
$(OUTPUT_STA_SYN_DB) timing-syn: $(HAMMER_D_MK) $(INPUT_STA_SYN_DB) $(HAMMER_TIMING_SYN_DEPENDENCIES)
	cp --update $(pdk_dir)/sky130A/libs.ref/sky130_fd_io/lef/sky130_ef_io.lef $(OBJ_DIR)/tech-sky130-cache/sky130_ef_io.lef
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(INPUT_STA_SYN_DB) -p $(DESIGN_CONF) $(HAMMER_EXTRA_ARGS) --timing_rundir $(OBJ_DIR)/timing-syn-rundir --obj_dir $(OBJ_DIR) timing
	cp --update $(OBJ_DIR)/timing-syn-rundir/$(TOP).sim.v $(OBJ_DIR)/syn-rundir/$(TOP).mapped.v
	gzip -cd $(OBJ_DIR)/timing-syn-rundir/$(TOP).par.sdf.gz > $(OBJ_DIR)/syn-rundir/$(TOP).mapped.sdf

#########################################################################################
# PAR to Timing (STA)
#########################################################################################

.PHONY:  par-to-timing
par-to-timing: $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) $(HAMMER_EXTRA_ARGS) -o $(INPUT_STA_PAR_DB) --obj_dir $(OBJ_DIR) par-to-timing

#########################################################################################
# Post-PAR Timing (STA)
#########################################################################################

.PHONY: timing-par
timing-par: $(INPUT_STA_PAR_DB) $(HAMMER_TIMING_PAR_DEPENDENCIES)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(INPUT_STA_PAR_DB) $(HAMMER_EXTRA_ARGS) --timing_rundir $(OBJ_DIR)/timing-par-rundir --obj_dir $(OBJ_DIR) timing

#########################################################################################
# PAR to DRC
#########################################################################################

.PHONY: par-to-drc
par-to-drc: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_DRC_DB) --obj_dir $(OBJ_DIR) par_to_drc

#########################################################################################
# PAR to LVS
#########################################################################################

.PHONY: par-to-lvs
par-to-lvs: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_LVS_DB) --obj_dir $(OBJ_DIR) par_to_lvs

#########################################################################################
# PAR to Sim
#########################################################################################

.PHONY: par-to-sim
$(INPUT_SIM_GL_PAR_DB) par-to-sim: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_SIM_GL_PAR_DB) --obj_dir $(OBJ_DIR) par_to_sim

#########################################################################################
# Sim to Power
#########################################################################################

.PHONY: sim-to-power
$(INPUT_PWR_SIM_GL_DB) sim-to-power: $(HAMMER_D_MK) sim-gl-par
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(OUTPUT_SIM_DB) -o $(INPUT_PWR_SIM_GL_DB) --obj_dir $(OBJ_DIR) sim_to_power

#########################################################################################
# PAR to Power
#########################################################################################

.PHONY: par-to-power
$(INPUT_PWR_PAR_DB) par-to-power: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_PWR_PAR_DB) --obj_dir $(OBJ_DIR) par_to_power

#########################################################################################
# DRC
#########################################################################################

.PHONY: drc
drc: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) drc

#########################################################################################
# LVS
#########################################################################################

.PHONY: lvs
lvs: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) lvs

#########################################################################################
# Redo Synthesis
#########################################################################################

# Quick hack. Might not be ideal, but it works
redo-syn: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) redo-syn

#########################################################################################
# Redo PAR
#########################################################################################

# Quick hack. Might not be ideal, but it works
redo-par: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) redo-par

#########################################################################################
# SRAM Compiler
#########################################################################################

.PHONY: srams
$(SRAM_CONF) srams:
	$(HAMMER_EXEC) -p $(TECH_CONF) -p $(DESIGN_CONF) --obj_dir $(OBJ_DIR) sram_generator
	cp output.json $(SRAM_CONF)


