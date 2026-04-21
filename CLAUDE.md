# mumax2 — CLAUDE.md

Legacy micromagnetics simulator. **Superseded by mumax3 and mumaxplus.** Retained in Project-Penrose for historical reference and for reproducing results from pre-Wave-55 characterization campaigns that predate the mumax3 migration.

## Status

MuMax2 is **not used for new simulations.** All active simulation work uses mumax3 (GPU-accelerated Go/CUDA) or mumaxplus (C++/CUDA + Python). MuMax2 is archived in this repository for reference only.

## Repository Layout

| Path | Purpose |
|------|---------|
| `src/` | C source code — original MuMax2 implementation |
| `doc/` | Original documentation |
| `examples/` | Legacy example scripts |
| `bin/` | Pre-compiled binaries (reference only) |
| `certification/` | Pre-Wave-55 certification artifacts |
| `tests/` | Legacy test suite |
| `Makefile` | Build system |
| `manual.pdf` | Original MuMax2 manual |

## Migration Path

| Old (mumax2) | New (mumax3) | New (mumaxplus) |
|-------------|-------------|----------------|
| `.mx2` scripts | `.mx3` scripts | Python `mumaxplus` API |
| CPU-only | NVIDIA GPU (CUDA) | NVIDIA GPU (CUDA) |
| No Python interface | `mumax3-convert` CLI | Full Python interface |
| No provenance tracking | Mouseion integration | Mouseion integration |

## Key Invariants

- Do **not** use mumax2 for any new MagnonOS simulation campaign. The `SimulationResultValidator` agent (port 9252) will reject results that do not carry a penrose-core-spec/v1 fingerprint, which mumax2 does not produce.
- Historical mumax2 results used in pre-Wave-55 specs (SPEC-PENROSE-001..004) are locked in Mouseion as Tier 4 archived assets. Do not attempt to re-run them with mumax2 — use mumax3 or mumaxplus to reproduce if needed.
- No active CI pipeline for mumax2. The `.github/workflows/` directory is absent. Do not add CI for this repo.

## Integration Points

This repository does not integrate with the active Project-Penrose agent stack. It is a static archive. For active simulation orchestration, see `mumax3/` and `mumaxplus/`.

