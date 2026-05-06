# watch-ui-table-line

`watch-ui-table-line` is a Lua project for Frontend apps. It turns develop a Lua command-oriented project for table scenarios with log and snapshot fixtures, replay consistency checks, and offline replay mode into a small local model with readable fixtures and a direct verification command.

## Reading Watch UI Table Line

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Purpose

This project keeps the domain idea close to the tests. That makes it useful as a reference implementation, a small experiment, or a starting point for a more specialized tool.

## Fixture Notes

`examples/extended_cases.csv` adds six named cases. I kept the names plain so failures are easy to read in a terminal: baseline, pressure, surge, degraded, recovery, and boundary.

## Design Sketch

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying frontend apps behavior without needing a service or database unless the language project itself is SQL. The Lua project keeps the module shape simple and validates behavior through a direct script.

## What It Does

- Models view models with deterministic scoring and explicit review decisions.
- Uses fixture data to keep interaction state changes visible in code review.
- Includes extended examples for layout checks, including `recovery` and `degraded`.
- Documents fixture data tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Files Worth Reading

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Next Directions

- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Add one more frontend apps fixture that focuses on a malformed or borderline input.

## Limits

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.

## Setup

The only required setup is the local Lua toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.
