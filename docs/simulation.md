# Simulation

Directed Verilog testbenches verify each RTL block and a small full-processor program. Tool: **Icarus Verilog** (`iverilog` / `vvp`).

## Quick start

```bash
cd ~/mips_pipeline/sim
make test
```

See [`sim/README.md`](../sim/README.md) for per-target details and waveform viewing.

## Test coverage

| Testbench | DUT | What is checked |
|-----------|-----|-----------------|
| `tb_alu.v` | `alu` | ADD, SUB, AND, OR, SLT, zero flag |
| `tb_register_file.v` | `register_file` | Sync write, async read, `$0` write ignore |
| `tb_control_unit.v` | `control_unit` | R-type, LW, SW, BEQ, default opcodes |
| `tb_data_memory.v` | `data_memory` | Word store/load, read mux |
| `tb_if_id_reg.v` | `if_id_reg` | Pipeline capture, synchronous reset |
| `tb_mips_top.v` | `mips_top` | LW → 4× NOP → ADD (pipeline program) |

## System test program

Without forwarding, a load-use gap is required between `lw` and `add`:

```
mem[0] = 42
PC 0: lw  $1, 0($0)
PC 1-4: nop
PC 5: add $2, $1, $1
```

Expected register file: `$1 = 42`, `$2 = 84`, `$0 = 0`.

The testbench preloads `instr_mem` and `dmem` using hierarchical paths (simulation only).

## Waveforms

```bash
make test-system
gtkwave sim/waves/mips_top.vcd
```

## RTL fix from verification

Simulation caught an incorrect **SW** control word (`mem_read` asserted instead of `mem_write`). Corrected in `control_unit.v` to `9'b010001000`.

## Re-running after RTL edits

```bash
cd sim && make clean && make test
```

LibreLane lint uses Verilator separately; run `make test` after any functional RTL change.
