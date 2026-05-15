# Architecture

## Overview

This design implements a **single-issue, in-order, five-stage MIPS pipeline**. Instructions flow through fetch, decode, execute, memory, and write-back. Pipeline registers isolate stage outputs on each clock edge. Reset is **synchronous** everywhere (required for Yosys + sky130 synthesis).

## Block diagram

```
                    ┌─────────────┐
   clk,rst ────────►│  mips_top   │──── pc_out, instr_out, alu_result_out
                    └──────┬──────┘
                           │
    ┌──────────────────────┼──────────────────────────────────────────┐
    │                      │                                          │
    ▼                      ▼                                          │
 ┌──────┐   instr_mem   ┌────────┐   ctrl   ┌──────────────┐          │
 │  PC  │──────────────►│ IF/ID  │─────────►│ control_unit │          │
 └──┬───┘               └───┬────┘          └──────────────┘          │
    │                       │ decode                                 │
    │                       ├──► register_file ◄── WB                 │
    │                       │         │ rd1, rd2                       │
    │                       ▼         │                                │
    │                   ┌────────┐    │                                │
    │                   │ ID/EX  │────┘                                │
    │                   └───┬────┘                                     │
    │                       ▼                                          │
    │                   ┌────────┐                                     │
    │                   │  ALU   │                                     │
    │                   └───┬────┘                                     │
    │                       ▼                                          │
    │                   ┌────────┐                                     │
    │                   │ EX/MEM │                                     │
    │                   └───┬────┘                                     │
    │                       ▼                                          │
    │                   ┌─────────────┐                                │
    │                   │ data_memory │                                │
    │                   └──────┬──────┘                                │
    │                          ▼                                       │
    │                   ┌────────┐                                     │
    └──────────────────►│ MEM/WB │─────────────────────────────────────┘
                        └────────┘
```

## Pipeline stages

| Stage | Module(s) | Function |
|-------|-----------|----------|
| **IF** | `mips_top` (PC, `instr_mem`) | PC holds address; instruction read from word-indexed ROM array |
| **ID** | `control_unit`, `register_file` | Opcode decode; read `rs`/`rt`; sign-extend immediate |
| **EX** | `alu` | ALU on `rd1` and immediate or `rd2`; destination `rd` or `rt` |
| **MEM** | `data_memory` | Word load/store using ALU result as address |
| **WB** | `mem_wb_reg` → regfile | Mux ALU vs memory data; write register file |

## Pipeline registers

| Register | Width (approx.) | Contents |
|----------|-----------------|----------|
| `if_id_reg` | 64 | `pc+4`, instruction |
| `id_ex_reg` | 148 | operands, imm, `rt`/`rd`, 9-bit control bundle |
| `ex_mem_reg` | 80 | ALU result, store data, flags, control, dest reg |
| `mem_wb_reg` | 71 | read data, ALU result, control, dest reg |

Control bundle in `id_ex_reg` (MSB → LSB):  
`{reg_dst, alu_src, mem_to_reg, reg_write, mem_read, mem_write, branch, alu_op[1:0]}`

## Supported instructions (partial ISA)

| Opcode | Mnemonic | Notes |
|--------|----------|-------|
| `6'b000000` | R-type | ALU uses add (`alu_op=10`) or sub (`alu_op≠10` → subtract in top) |
| `6'b100011` | LW | Load word; write-back from memory |
| `6'b101011` | SW | Store word |
| `6'b000100` | BEQ | Control asserts `branch`; **PC branch logic not connected** |

See [RTL reference](rtl-reference.md) for ALU opcodes and control encoding.

## Hazards and limitations

- **No hazard unit** — no forwarding, stalling, or flushing. Correct operation assumes software/scheduling that avoids RAW hazards, or single effective instruction in flight for demos.
- **No branch target** — `exmem_branch` and `exmem_zero` are registered but do not update PC.
- **Instruction memory** — 256×32-bit array inside `mips_top`; undriven for ASIC (zeros / tool default). Load programs in simulation via `initial` or testbench backdoor.
- **Data memory** — 256 words; byte address bits `[1:0]` and upper bits above `[9:2]` unused.
- **Register $0** — writes to register 0 are suppressed in `register_file`.

## Top-level ports

| Port | Direction | Description |
|------|-----------|-------------|
| `clk` | input | System clock |
| `rst` | input | Synchronous reset (active high) |
| `pc_out` | output | Current PC (observability / synthesis anchor) |
| `instr_out` | output | Instruction in ID stage (`ifid_instr`) |
| `alu_result_out` | output | ALU result at WB stage |

Probe outputs prevent Yosys from stripping the entire design during optimization.

## Clocking

Target period in `config.json`: **20 ns** (50 MHz nominal). Post-layout STA reports ~12.9 ns setup slack at typical corner (see [Physical design](physical-design.md)).
