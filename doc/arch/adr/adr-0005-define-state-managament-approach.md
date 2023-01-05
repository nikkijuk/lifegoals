# Adr-0005: Use Bloc Library for State Management

## Status

- [ ] New
- [x] Proposed
- [ ] Accepted
- [ ] Rejected
- [ ] Deprecated

## Context

Application architecture is generally speaking an attempt to create structure:
name parts of application and define ways how these parts are able to interact. 

Applications are hard to modularize and test without separation of concerns, 
for which reason we are often creating horizontal (by technology) or vertical (by feature) layers.

Good application architecture allows application to evolve based on volatility,
which simply put means that thighs related to each other change together.

One of most tricky part of structuring applications is how to separate presentation
layer from all data manipulation aspects.

https://www.informit.com/articles/article.aspx?p=2995357&seqNum=2

## Decision

We use Bloc library to separate presentation layer from business rules / logic / data access.

Further, we use Bloc library to separate initiation of event (how user interacts with system) 
from consumption of state (how application renders current state to user)

We model events, i.e. facts describing what has happened, 
and states, i.e. information at point of time, as classes.

We use Blocs to keep track of data, react to events, control if state changes are allowed 
and to modify current state.

We document Blocks as finite state machines when there's need to visualize what they do. 

## Consequences

Presentation and business logic are separated and Widgets never access data directly.

Presentation layer components initiating events (typically event handlers of widgets) 
and consuming state changes (typically widgets rendering lists or values) are separated, 
but depend on Bloc which is provided to them.

Ui, interaction logic, business rules and data access to be developed and tested in isolation.

As Blocks are async and their output is stream they can be tricky to mock and test.

Bloc library has dependency management mechanism, but we might need to expand it.