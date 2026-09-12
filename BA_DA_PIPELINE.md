# BA / DA Delivery Pipeline

## Business question
Where do demand, capacity, outages and workforce pressure combine into grid-resilience risk?

## 01 — Excel — mandatory first pass
Clean regional day-level records, reconcile demand/capacity, use formulas and pivots to derive headroom/utilisation, investigate exceptions and create an operational control view.

## 02 — Python (Pandas + NumPy) — optional
Use Python for EDA, demand-distribution analysis, anomaly detection, peak-event profiling and repeatable transformations when the analysis benefits from automation.

## 03 — SQL — mandatory analytical layer
Use joins, CTEs, aggregations and window functions for headroom KPIs, regional rankings, peak-demand trends, outage burden and exception queues.

## 04 — Power BI — mandatory decision interface
Build the model, DAX measures, slicers and drill-through: Grid Executive → Demand & Headroom → Regional Risk → Resilience Scenario.

## 05 — Decision — mandatory outcome
Prioritise capacity, reliability and workforce interventions with owner, urgency, expected service impact, assumptions and escalation trigger.

## Acceptance criteria
Demand/headroom calculations reconcile across stages; thresholds are documented; all sample data is clearly labelled synthetic; decisions are traceable to governed KPIs.
