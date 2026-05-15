# RTL Module Reference

All sources live in `src/`. Hierarchy top: **`mips_top`**.

## `mips_top.v`

Integrates the full pipeline.

- **PC**: increments by 4 each cycle unless `rst`.
- **`instr_mem`**: `(* ram_style = "distributed" *) reg [31:0] instr_mem [0:255]` — synthesized as distributed SRAM/logic on sky130.
- **ALU decode**: `alu_ctrl = (idex_ctrl[1:0] == 2'b10) ? ADD : SUB` for current instruction set.

## `control_unit.v`

Combinational decoder from 6-bit `opcode`.

Control vector order (9 bits):  
`{reg_dst, alu_src, mem_to_reg, reg_write, mem_read, mem_write, branch, alu_op[1:0]}`

| Opcode | Instruction | Encoding (9'b) |
|--------|-------------|----------------|
| `000000` | R-type | `100100010` |
| `100011` | LW | `011110000` |
| `101011` | SW | `000010000` |
| `000100` | BEQ | `000000101` |
| default | — | `000000000` |

## `alu.v`

| `alu_ctrl` | Operation |
|------------|-----------|
| `3'b000` | AND |
| `3'b001` | OR |
| `3'b010` | ADD |
| `3'b110` | SUB |
| `3'b111` | SLT (unsigned-style: `a < b ? 1 : 0`) |

`zero` is combinational: `result == 0`.

## `register_file.v`

- 32 registers × 32 bits; **async read**, **sync write**.
- `initial` clears all registers (simulation).
- Write when `we && rd != 0`.

## `data_memory.v`

- 256 words; sync write on posedge `clk`.
- Read is combinational when `mem_read`; index `addr[9:2]`.

## Pipeline registers (`if_id_reg`, `id_ex_reg`, `ex_mem_reg`, `mem_wb_reg`)

Common pattern:

```verilog
always @(posedge clk)
    if (rst)
        /* clear outputs */;
    else
        /* load from inputs */;
```

No asynchronous reset — required for sky130 `dff` mapping.

## Synthesis conventions

1. **Synchronous reset only** — `always @(posedge clk)` with `if (rst)` inside.
2. **Top-level outputs** — required so Yosys does not optimize away the core.
3. **`ram_style = "distributed"`** on `instr_mem` — avoids unsupported macro inference errors in this flow.

## Lint notes (Verilator)

Expected warnings (non-fatal in LibreLane):

- `instr_mem` undriven (ASIC ROM placeholder)
- Unused `idex_pc`, `exmem_zero`, `exmem_branch` (branch path incomplete)
- Partial `addr` bits unused in `data_memory`
