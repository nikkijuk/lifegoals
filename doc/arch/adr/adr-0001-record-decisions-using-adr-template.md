# ADR 0001: Record decisions using Architectural Decision Record (ADR)

## Status

- [ ] New
- [x] Proposed
- [ ] Accepted
- [ ] Rejected
- [ ] Deprecated

## Context

"The single biggest problem in communication is the illusion that it has taken place." – George Bernard Shaw

Often decisions done during development are not easy to remember, and they might not be 
well communicated within team to current or future team members.

Recording decisions makes it possible to later recall motivation why something was decided,
so that decisions can be easier to accept or change.

## Decision

We record decisions when they happen, documentation is written using same tools as code, 
and records are stored within project close to code using git.

- file naming: /doc/arch/adr/adr-NNNN-<short name>.md
- format: simple markdown, 1-2 pages
- style: using full sentences written to future developer

We record decisions around the time they start to have effect to related persons / stakeholders.

We ask ourselves constantly "does somebody now or in future need to know this", and act accordingly.

Recording is done using practices described here: https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions

## Consequences

Decisions are known.

Decisionmaking process needs to contain documenting decisions when relevant or process loses it's value.