# 5-Stage Pipelined MIPS Processor

Verilog RTL of a classic five-stage MIPS pipeline (IF, ID, EX, MEM, WB), validated with directed simulation and implemented on **sky130A** via [LibreLane](https://github.com/librelane/librelane).

## Status

| Area | Status |
|------|--------|
| RTL + pipeline integration | Done |
| Directed simulation (subsystem + system) | Done — `make -C sim test` |
| LibreLane → GDSII (DRC / LVS / timing) | Done |

## Simulation

```bash
cd sim
make test          # all testbenches
make test-system   # full processor only
make waves         # generates mips_top.vcd
```

Requires [Icarus Verilog](https://steveicarus.github.io/iverilog/). Details: [docs/simulation.md](docs/simulation.md).

## Physical design

```bash
cd ~/projects/librelane && nix develop

cd ~/mips_pipeline
librelane --pdk sky130A --pdk-root ~/projects/librelane/pdks/ciel ./config.json
```

Artifacts: `runs/<RUN_TAG>/final/` (GDS, DEF, layout PNG). See [docs/physical-design.md](docs/physical-design.md).

## Documentation

- [Architecture & pipeline](docs/architecture.md)
- [RTL module reference](docs/rtl-reference.md)
- [Simulation](docs/simulation.md)
- [Physical design & LibreLane](docs/physical-design.md)

## Layout

```
mips_pipeline/
├── src/           Verilog RTL
├── sim/           Testbenches + Makefile
├── docs/
├── config.json    LibreLane config
└── runs/          Generated PnR outputs
```

## License

MIT — see [LICENSE](./LICENSE).
