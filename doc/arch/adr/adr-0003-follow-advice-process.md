# Adr 0003: Follow "advice process" to evolve architecture

## Status

- [ ] New
- [x] Proposed
- [ ] Accepted
- [ ] Rejected
- [ ] Deprecated

## Context

It is hard to get get everyone (whole team, all stakeholders, 100% consensus) 
to agree on decisions before it is "accepted" and can be used.

Often it is so, that decision can be made only after experimenting or eventually using 
technologies, tools or practices.

Developers are ones that are able to invest time on intimately knowing requirements,
tradeoffs/forces, and options.

Developers are key persons to refine and test if decisions are stable and not in conflict with aspects 
possibly not known at the time of decision making.

Developers should have power to do any decision needed, but they should be also accountable 
and able to share their decisions as well as follow simple deterministic decision making process.

## Decision

We follow "Advice process" which allows needed flexibility without losing clarity.

The Advice Processes greatest quality is it’s remarkably simplicity. It comprises one rule, and one qualifier:

- The Rule: anyone can make an architectural decision.
- The Qualifier: before making the decision, the decision-taker must consult two groups: The first is everyone who will be meaningfully affected by the decision. The second is people with expertise in the area the decision is being taken.

Process is discussed at: https://martinfowler.com/articles/scaling-architecture-conversationally.html#footnote-jad-arb

## Consequences

Together with usage of architectural decision records and adr template advice process allows
development without wait states and blocking because of decision makers (architect, team as whole)
availability or any other reason.

Key to success is visibility of decisions, and that they can be clarified or rolled back 
as needed (reason for doing decision is recorded, reason for rolling decision back or 
modifying them will be recorded also, in complex decisions it is recorded which persons were giving advices).

It is important to know that in case of "Failure", here as undesired outcome of decision,
we can just revisit decision made, deprecate decision completely or partially, and 
record new decision(s). 

Advice process should be seen as a strategy of creating psychologically safe environment
where there's possibility to take risk, fail, and correct - to me this sounds like iterative development process.

More of psychological safety: https://amycedmondson.com/psychological-safety/