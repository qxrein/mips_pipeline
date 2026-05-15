# Physical Design (LibreLane + sky130A)

## Tool chain

| Tool | Role |
|------|------|
| **LibreLane** | RTL → GDSII orchestration (Classic flow) |
| **Yosys** | Synthesis |
| **OpenROAD** | Floorplan, placement, CTS, routing, STA |
| **Magic / KLayout** | DRC, LVS, GDS stream-out, layout render |

**PDK**: sky130A (sky130_fd_sc_hd standard cells)  
**LibreLane install**: `~/projects/librelane` (nix develop shell)

## Configuration (`config.json`)

| Parameter | Value | Meaning |
|-----------|-------|---------|
| `DESIGN_NAME` | `mips_top` | Top module |
| `CLOCK_PORT` | `clk` | Clock net |
| `CLOCK_PERIOD` | `20` | Target period (ns) → 50 MHz |
| `PDN_MULTILAYER` | `true` | Core power grid |
| `MAX_FANOUT_CONSTRAINT` | `10` | Max fanout |
| `FP_CORE_UTIL` | `40` | Floorplan core utilization (%) |
| `PL_TARGET_DENSITY_PCT` | `45` | Placement density target (%) |

`VERILOG_FILES` uses the `dir::` prefix so paths resolve relative to the project directory.

## Running the flow

```bash
cd ~/projects/librelane
nix develop

cd ~/mips_pipeline
librelane --pdk sky130A \
  --pdk-root ~/projects/librelane/pdks/ciel \
  ./config.json
```

First run downloads PDK tarballs via volare (~several hundred MB). Later runs reuse the cache.

Each invocation creates `runs/RUN_<date>_<time>/`. The latest successful run referenced in this doc: **`RUN_2026-05-15_12-29-19`**.

## Flow stages (summary)

1. Verilator lint  
2. Yosys JSON header + synthesis  
3. Floorplan / PDN / placement / CTS  
4. Global & detailed route  
5. STA (pre- and post-PnR)  
6. Fill, RCX, signoff checks  
7. Magic + KLayout GDS export  
8. DRC, LVS, antenna, manufacturability report  

~80 steps in the Classic flow; full run ~1–2 minutes on a typical machine for this design size.

## Results (RUN_2026-05-15_12-29-19)

### Signoff

| Check | Result |
|-------|--------|
| DRC | Passed |
| LVS | Passed |
| Antenna | Passed |

Source: `runs/RUN_2026-05-15_12-29-19/76-misc-reportmanufacturability/manufacturability.rpt`

### Implementation metrics

| Metric | Value |
|--------|-------|
| Stdcell instances | 309 (+ fill/tap/buffers → 747 total) |
| Core area | 3942.5 µm² |
| Die size | 74.1 × 84.8 µm |
| Core utilization (stdcell) | ~63.7% |
| Route wirelength | 3633 µm |
| Setup slack (typical, 20 ns clock) | **12.86 ns** |
| Hold slack | **0.10 ns** |
| Setup / hold violations | 0 |

Full metrics: `runs/RUN_2026-05-15_12-29-19/final/metrics.json`

### Deliverables (`final/`)

| Path | Description |
|------|-------------|
| `final/gds/mips_top.gds` | Primary GDSII layout |
| `final/klayout_gds/mips_top.klayout.gds` | KLayout merged GDS |
| `final/mag_gds/mips_top.magic.gds` | Magic stream-out |
| `final/render/mips_top.png` | Layout screenshot |
| `final/def/mips_top.def` | Placed/routed DEF |
| `final/lef/mips_top.lef` | Abstract LEF |
| `final/spef/nom/mips_top.nom.spef` | Parasitics (nominal) |
| `final/sdf/` | SDF timing back-annotation (corners) |
| `final/lib/` | Liberty timing libraries |
| `final/nl/mips_top.nl.v` | Post-PnR netlist |
| `final/spice/mips_top.spice` | Extracted SPICE |

## Viewing the layout

**PNG (quick):**

```bash
open ~/mips_pipeline/runs/RUN_2026-05-15_12-29-19/final/render/mips_top.png
```

**KLayout (interactive):**

```bash
# inside nix develop shell
klayout ~/mips_pipeline/runs/RUN_2026-05-15_12-29-19/final/gds/mips_top.gds
```

## Troubleshooting

### Empty netlist / “No rows created” (IFP-0065)

Yosys optimized away all logic. Causes fixed in this project:

1. **No output ports** — add observability outputs (`pc_out`, etc.).
2. **Async reset on pipeline regs** — use synchronous reset only.
3. **macOS `sed -i`** — does not work like GNU sed; edit `always` blocks manually.

### `Multiple edge sensitive events` on PC

Mixed async reset (`posedge rst` in sensitivity list) with sync reset style. Use only `always @(posedge clk)` + `if (rst)`.

### PDK download / `volare`

Run inside `nix develop` from LibreLane; PDK root:

`~/projects/librelane/pdks/ciel`

### Deprecated config warnings

LibreLane may warn about old names (`SYNTH_MAX_FANOUT`, etc.). Current keys in `config.json` use the new names (`MAX_FANOUT_CONSTRAINT`, `PL_TARGET_DENSITY_PCT`, `PDN_MULTILAYER`).

## Known implementation gaps

- **SDC**: Generic fallback SDC used (`PNR_SDC_FILE` / `SIGNOFF_SDC_FILE` not customized).
- **Pads**: Core-only block; no IO pad ring (98 logical pins from probe buses).
- **IR drop**: `VSRC_LOC_FILES` not set — acceptable for standalone core analysis.
- **Floating nets**: 2 floating nets reported post-GPL (repair buffers added where needed).

## Regenerating after RTL changes

1. Edit files under `src/`.
2. Re-run `librelane` from `~/mips_pipeline`.
3. Compare new `runs/<tag>/final/metrics.json` and `manufacturability.rpt`.
4. Update this document’s run tag if you keep a “golden” reference run.
