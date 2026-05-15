# Simulation Makefile (Icarus Verilog)
ROOT   := ..
SRC    := $(ROOT)/src
SIM    := .
BUILD  := $(SIM)/build
WAVES  := $(SIM)/waves

IVERILOG := iverilog
VVP      := vvp

IVERILOG_FLAGS := -g2012 -Wall

.PHONY: all test clean waves dirs

all: test

dirs:
	@mkdir -p $(BUILD) $(WAVES)

# --- Subsystem tests ---
test-alu: dirs
	$(IVERILOG) $(IVERILOG_FLAGS) -o $(BUILD)/alu.out $(SRC)/alu.v $(SIM)/tb_alu.v
	$(VVP) $(BUILD)/alu.out

test-rf: dirs
	$(IVERILOG) $(IVERILOG_FLAGS) -o $(BUILD)/rf.out $(SRC)/register_file.v $(SIM)/tb_register_file.v
	$(VVP) $(BUILD)/rf.out

test-cu: dirs
	$(IVERILOG) $(IVERILOG_FLAGS) -o $(BUILD)/cu.out $(SRC)/control_unit.v $(SIM)/tb_control_unit.v
	$(VVP) $(BUILD)/cu.out

test-dmem: dirs
	$(IVERILOG) $(IVERILOG_FLAGS) -o $(BUILD)/dmem.out $(SRC)/data_memory.v $(SIM)/tb_data_memory.v
	$(VVP) $(BUILD)/dmem.out

test-ifid: dirs
	$(IVERILOG) $(IVERILOG_FLAGS) -o $(BUILD)/ifid.out $(SRC)/if_id_reg.v $(SIM)/tb_if_id_reg.v
	$(VVP) $(BUILD)/ifid.out

# --- System test ---
test-system: dirs
	$(IVERILOG) $(IVERILOG_FLAGS) -o $(BUILD)/mips.out \
		$(SRC)/mips_top.v $(SRC)/control_unit.v $(SRC)/alu.v \
		$(SRC)/register_file.v $(SRC)/data_memory.v \
		$(SRC)/if_id_reg.v $(SRC)/id_ex_reg.v $(SRC)/ex_mem_reg.v \
		$(SRC)/mem_wb_reg.v $(SIM)/tb_mips_top.v
	(cd $(SIM) && $(VVP) build/mips.out)

test: test-alu test-rf test-cu test-dmem test-ifid test-system
	@echo ""
	@echo "============================================"
	@echo "  ALL SIMULATION TESTS PASSED"
	@echo "============================================"

waves: test-system
	@echo "Open $(WAVES)/mips_top.vcd with GTKWave or Surfer"

clean:
	rm -rf $(BUILD) $(WAVES)
