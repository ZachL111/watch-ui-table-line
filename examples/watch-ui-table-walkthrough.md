# Watch UI Table Line Walkthrough

This note is the quickest way to read the extra review model in `watch-ui-table-line`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | view drift | 152 | ship |
| stress | state pressure | 195 | ship |
| edge | layout risk | 147 | ship |
| recovery | interaction cost | 251 | ship |
| stale | view drift | 201 | ship |

Start with `recovery` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around state pressure and interaction cost.
