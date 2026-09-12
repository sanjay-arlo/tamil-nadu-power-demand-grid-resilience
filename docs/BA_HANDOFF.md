# BA Handoff — Tamil Nadu Power Demand & Grid Resilience

## Objective
Identify regional peak-demand pressure and resilience risk using demand, available capacity, outages and staffing signals.

## Stakeholders
Grid leadership; regional operations; distribution divisions; workforce planning; procurement; finance; generation/import planning teams.

## Core requirements
- Track peak demand by region and period.
- Estimate demand-supply headroom.
- Rank outage and staffing pressure.
- Support scenario analysis for peak events.
- Keep illustrative data separate from operational records.

## Decision rule
Prioritise regions with low headroom, high outage frequency and material field-capacity pressure. Scenario values are decision-support estimates, not dispatch instructions.

## Acceptance criteria
KPIs reconcile to source; regional filters work; risk ranking exposes drivers; dashboard is client-side; synthetic-data disclosure remains visible.

## Production controls
Verified generation/import availability, outage logs, workforce master, weather scenarios, refresh SLA, QA rules and operational approval thresholds.
