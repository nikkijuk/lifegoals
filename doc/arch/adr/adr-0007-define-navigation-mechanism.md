# Adr-0007: Use go router for navigation

## Status

- [ ] New
- [x] Proposed
- [ ] Accepted
- [ ] Rejected
- [ ] Deprecated

## Context

Flutter has several navigation approaches within it 
and there's additionally many 3rd party approaches.

We need to have one uniform navigation mechanism used in every part of app.

## Decision

We use Go Router for navigation.

Go Router is developed by Flutter team and it's widely used.

## Consequences

As Go Router doesn't have direct support for testing navigation
we need to develop and document process how we are doing testing.