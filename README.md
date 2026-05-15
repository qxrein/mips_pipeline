Verilog RTL of a classic five-stage MIPS pipeline (IF, ID, EX, MEM, WB), synthesized and implemented on the **sky130A** PDK using [LibreLane](https://github.com/librelane/librelane).

```bash
cd ~/projects/librelane && nix develop

cd ~/mips_pipeline
librelane --pdk sky130A --pdk-root ~/projects/librelane/pdks/ciel ./config.json
```

Successful run artifacts: `runs/<RUN_TAG>/final/` (GDS, DEF, SPEF, layout PNG).

## Documentation

- [Architecture & pipeline](docs/architecture.md)
- [RTL module reference](docs/rtl-reference.md)
- [Physical design & LibreLane](docs/physical-design.md)

## License
This project is under MIT [LICENSE](./LICENSE).
