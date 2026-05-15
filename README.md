# 5-Stage Pipelined MIPS Processor

Verilog RTL of a classic five-stage MIPS pipeline (IF, ID, EX, MEM, WB), synthesized and implemented on the **sky130A** PDK using [LibreLane](https://github.com/librelane/librelane).

## Project status

| Area | Status |
|------|--------|
| RTL (control, ALU, regfile, memories, pipeline regs) | Complete |
| 5-stage integration (`mips_top`) | Complete |
| LibreLane flow → GDSII (DRC / LVS / timing) | Complete — see [Physical design](docs/physical-design.md) |
| Directed simulation testbenches | Not yet in repo (`sim/` empty) |

## Quick start

```bash
# 1. Enter LibreLane environment
cd ~/projects/librelane && nix develop

# 2. Run the flow
cd ~/mips_pipeline
librelane --pdk sky130A --pdk-root ~/projects/librelane/pdks/ciel ./config.json
```

Successful run artifacts: `runs/<RUN_TAG>/final/` (GDS, DEF, SPEF, layout PNG).

## Documentation

- [Architecture & pipeline](docs/architecture.md)
- [RTL module reference](docs/rtl-reference.md)
- [Physical design & LibreLane](docs/physical-design.md)

## Repository layout

```
mips_pipeline/
├── config.json          # LibreLane configuration
├── src/                 # Verilog RTL
├── sim/                 # Simulation testbenches (placeholder)
├── docs/                # Project documentation
└── runs/                # LibreLane run outputs (generated)
```

## License
./LICENSE this project is under MIT LICENSE
