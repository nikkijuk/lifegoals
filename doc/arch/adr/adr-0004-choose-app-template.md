# Adr-0004: Use Very Good Ventures Vgv Core as App Template for Saha project

## Status

- [ ] New
- [x] Proposed
- [ ] Accepted
- [ ] Rejected
- [ ] Deprecated

## Context

Flutter project can be started as "vanilla" with limited non opinionated set of features.

There's opinionated templates available for Flutter applications that include 
many needed dependencies (localization, state management, etc.) and 
follow selected architectural idioms.

Selecting opinionated template for project start means faster startup time, 
but is problematic if template is not completely suitable and needs to be heavily adapted to fit project needs.

## Decision

We will use VGV Core as startup template.

We will use VGV Cli as command line tool to create app which uses VGV Core.

We adapt our practices to conventions that template follows.

We are ready to drop this decision if it is found problematic.

https://verygood.ventures/blog/flutter-starter-app-very-good-core-cli

## Consequences

We need to document which opinionated decisions we accept and follow,
and see if we want to modify some aspects that VGV Core is offering.

We need to obey and study principles behind VGV core, as we believe that they
add value to us and help to create disciplined shared approach to flutter development.

We need to accept most of decisions or revisit this decision if we 
don't see added value of vgv core template greater than restrictions it sets to us.
