# watch-ui-table-line

`watch-ui-table-line` explores frontend apps with a small Lua codebase and local fixtures. The technical goal is to develop a Lua command-oriented project for table scenarios with log and snapshot fixtures, replay consistency checks, and offline replay mode.

## Reason For The Project

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Watch UI Table Line Review Notes

Start with `interaction cost` and `layout risk`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What It Does

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/watch-ui-table-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `interaction cost` and `layout risk`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Lua implementation avoids hidden state so fixture changes are easy to reason about.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Boundaries

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
