# Simulation

Directed testbenches for subsystem and system-level verification using **Icarus Verilog** (`iverilog` + `vvp`).

## Prerequisites

```bash
# macOS (Homebrew)
brew install icarus-verilog

# Debian/Ubuntu
sudo apt install iverilog
```

GTKWave (optional, for waveforms): `brew install gtkwave`

## Run all tests

```bash
cd ~/mips_pipeline/sim
make test
```

## Individual targets

| Target | Module under test |
|--------|-------------------|
| `make test-alu` | `alu` — ADD, SUB, AND, OR, SLT, zero flag |
| `make test-rf` | `register_file` — write/read, $0 not writable |
| `make test-cu` | `control_unit` — opcode → control vector |
| `make test-dmem` | `data_memory` — word store/load |
| `make test-ifid` | `if_id_reg` — pipeline register + sync reset |
| `make test-system` | `mips_top` — LW + NOPs + ADD program |

## System test program

The full-processor test (`tb_mips_top.v`) loads `instr_mem` and `dmem` via hierarchical references (simulation only; RTL unchanged).

| PC (word) | Instruction | Effect |
|-----------|-------------|--------|
| 0 | `lw $1, 0($0)` | `$1 ← mem[0]` (42) |
| 1–4 | `nop` | Avoid RAW hazard (no forwarding) |
| 5 | `add $2, $1, $1` | `$2 ← 84` |

After ~24 clock cycles the test checks `$1 == 42`, `$2 == 84`, `$0 == 0`.

Waveform (system test only): `sim/waves/mips_top.vcd`

```bash
make waves
gtkwave sim/waves/mips_top.vcd
```

## Expected output

Each bench prints `PASS` lines then `ALL PASS: <name>`. `make test` ends with:

```
============================================
  ALL SIMULATION TESTS PASSED
============================================
```

## Notes

- No hazard unit: dependent instructions need explicit NOPs in software.
- Branch (BEQ) is not wired to PC; not covered by system test.
- `instr_mem` is not preloaded in silicon; simulation loads it in the testbench only.
