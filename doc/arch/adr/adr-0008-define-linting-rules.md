# Adr-0006: Use go router for navigation

## Status

- [ ] New
- [x] Proposed
- [ ] Accepted
- [ ] Rejected
- [ ] Deprecated

## Context

“Indeed, the ratio of time spent reading versus writing is well over 10 to 1. 
We are constantly reading old code as part of the effort to write new code. ...
[Therefore,] making it easy to read makes it easier to write.”
― Robert C. Martin, Clean Code: A Handbook of Agile Software Craftsmanship

It is possibly to use set of linting rules taken known source, this get code easier to new developers.

Coding rules are set of restrictions, which should make code look and feel uniform.

Easy to read and understand code is maintainable.

Maintenance cost are major factor to software development, and quality of code influences it heavily.

It's hard to agree and enforce coding rules, so tools are needed to guard development process.

## Decision

We prepare code to be "clean" before it's merged to shared repository.

We run set of lints locally so that linter rules do not prevent merges at ci/cd pipeline.

We use github ci/cd pipeline which forces

- 100% code coverage
- dart format
- vgv analyze lints

This process adds overhead and creates lot of broken ci/cd build before conventions are learned by hearth,
but clarity of code should have so much value that following pretty rigid rules makes sense.

## Consequences

Code is easier to read to compare to situation where code wouldn't follow shared rules.

It's easier to work with code, as there's codified rules.