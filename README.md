# mumax2 — Legacy Micromagnetics Simulator (Archived)

> **This repository is a static archive. It is not used for new simulations.**
> All active simulation work uses [mumax3](../mumax3) or [mumaxplus](../mumaxplus).

---

## What is mumax2?

MuMax2 is the first-generation GPU-accelerated micromagnetic simulation framework developed at
Ghent University. It uses CUDA for GPU compute and a C-based scripting interface (`.mx2` files).
Project-Penrose retains this repository for:

1. **Historical reference** — reproducing results from pre-Wave-55 Penrose characterization
   campaigns conducted before the mumax3 migration.
2. **Archived certification artifacts** — the `certification/` directory contains
   pre-Wave-55 material parameter validation outputs referenced in SPEC-PENROSE-001..004.

---

## Status

| Status | Note |
|--------|------|
| Active development | NO |
| CI pipeline | None (no `.github/workflows/`) |
| New simulations | Prohibited (see §Invariants) |
| Use in tape-out evidence chain | Prohibited |

---

## Repository Layout

| Path | Purpose |
|------|---------|
| `src/` | Original MuMax2 C source code |
| `doc/` | Original documentation |
| `examples/` | Legacy `.mx2` example scripts |
| `bin/` | Pre-compiled reference binaries (do not run on production hardware) |
| `certification/` | Pre-Wave-55 certification artifacts (Tier 4 archived assets in Mouseion) |
| `tests/` | Legacy test suite |
| `Makefile` | Build system (reference only) |
| `manual.pdf` | Original MuMax2 manual |

---

## Migration Guide

| Capability | mumax2 (old) | mumax3 (current) | mumaxplus (current) |
|------------|-------------|-----------------|---------------------|
| Script format | `.mx2` | `.mx3` | Python `mumaxplus` API |
| GPU backend | NVIDIA CUDA (older) | NVIDIA CUDA | NVIDIA CUDA |
| Python interface | None | `mumax3-convert` CLI | Full Python interface |
| Provenance tracking | None | Mouseion integration | Mouseion integration |
| Core spec fingerprint | Not produced | `penrose-core-spec/v1` | `penrose-core-spec/v1` |
| Mouseion asset registration | No | Yes (automatic) | Yes (automatic) |

For migrating `.mx2` scripts, consult the [mumax3 documentation](../mumax3/doc/) and the
mumaxplus Python API reference in [mumaxplus](../mumaxplus/).

---

## Invariants

- **Do not use mumax2 for any new Penrose simulation campaign.** The
  `SimulationResultValidator` agent (port 9252) rejects results that do not carry a
  `penrose-core-spec/v1` fingerprint, which mumax2 does not produce.
- Historical mumax2 results referenced in pre-Wave-55 specs (SPEC-PENROSE-001..004) are
  locked in Mouseion as **Tier 4 archived assets**. Do not attempt to re-run them with
  mumax2; use mumax3 or mumaxplus to reproduce if needed.
- Do not add CI workflows to this repository.
- Do not add mumax2 results to the Gen1 tape-out evidence chain; only mumax3/mumaxplus
  results with valid Mouseion asset IDs are admissible.

---

## Related Repositories

- [mumax3](../mumax3) — GPU-accelerated micromagnetics simulator (Go + CUDA); active
- [mumaxplus](../mumaxplus) — Next-generation simulation pipeline (C++/CUDA + Python); active
- [research](../research) — Magnonic simulation research (parameter sweeps, quasicrystal
  design-space exploration, MESO switching dynamics)

---

*Wave 55+ simulation work uses mumax3 and mumaxplus exclusively.*
*Source: `Project-Aethra/source-map/repos/mumax2.md`.*
