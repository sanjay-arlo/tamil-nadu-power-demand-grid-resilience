# Tamil Nadu Power Demand & Grid Resilience

> **Business Analyst / Data Analyst portfolio case study** analysing regional peak-demand pressure, supply headroom, outage burden and workforce capacity to identify grid-resilience priorities.

## 🚀 Live Dashboard

**[Open the interactive dashboard](https://sanjay-arlo.github.io/tamil-nadu-power-demand-grid-resilience/)**

## Executive summary

The case converts regional utility data into a resilience-management workflow: validate demand and capacity measures, quantify headroom and outage pressure, segment regional risk, visualise operational constraints, and prioritise capacity and reliability interventions.

## Business problem

**Where do demand, available capacity, outages and workforce pressure combine into the highest resilience risk?**

## Analyst workflow

**Excel → Python / Pandas / NumPy (optional) → SQL / MySQL → Power BI → Decision**

### 1. Excel — first-pass control

Clean daily regional data, reconcile peak demand and available capacity, calculate headroom/utilisation, build pivots and identify operational exceptions.

### 2. Python — optional analytical layer

Use **Pandas + NumPy** for demand-distribution analysis, anomaly detection, repeatable transformations, stress testing or sensitivity analysis when useful.

### 3. SQL / MySQL — mandatory analytical layer

Use joins, CTEs, aggregations, window functions, regional segmentation, rankings and exception queues for demand, capacity, outage and workforce KPIs.

### 4. Power BI — mandatory executive layer

Build a governed data model and DAX measures, then deliver **Grid Executive → Demand & Headroom → Regional Risk → Resilience Scenario** with operational slicers and drill-through.

### 5. Decision — mandatory outcome

Prioritise capacity, reliability and workforce interventions with **priority, owner, action, expected impact, threshold and escalation logic**.

## Technical stack

- **Excel** — cleaning, reconciliation, formulas, pivots, exception analysis and scenario planning
- **SQL / MySQL** — utility KPIs, segmentation, ranking and exception queues
- **Python / Pandas / NumPy** — optional EDA, anomaly detection, transformations and stress testing
- **HTML / CSS / JavaScript** — interactive live dashboard
- **Chart.js** — browser-based visualisation
- **GitHub Pages** — live dashboard hosting
- **Power BI** — compatible dashboard design direction, data model, DAX and executive reporting specification
- **GitHub** — version control and documentation

## Dashboard story

1. **Grid Executive** — demand, capacity and headline resilience indicators
2. **Demand & Headroom** — demand pressure versus available capacity
3. **Regional Risk** — outage and staffing-risk segmentation
4. **Reliability View** — operational exception patterns
5. **Resilience Scenario** — illustrative capacity/reliability levers
6. **Decision Queue** — priority actions for management review

## KPI framework

- **Peak demand** = maximum observed peak demand within selected scope
- **Average headroom** = available capacity − peak demand
- **Outage burden** = total outage incidents within selected scope
- **Staff vacancy rate** = average field-staff vacancy rate
- **Resilience priority** = low headroom + high outage burden + workforce pressure

## Business Analyst deliverables

Business case, stakeholder framing, KPI dictionary, Excel workflow, optional Python analysis, SQL/MySQL analysis, Power BI/DAX specification, interactive dashboard, risk-priority framework and production-upgrade plan.

## Data quality & governance

Validate required fields, demand/capacity relationships, numeric ranges, duplicate records, date completeness and dashboard-to-source reconciliation. Scenario assumptions remain clearly labelled as illustrative.

## Production upgrade path

Integrate governed demand forecasts, generation availability, transmission/import capacity, outage systems, weather variables, workforce records and master geography. Add refresh SLAs, source lineage, anomaly monitoring and approved operational thresholds.

## Important limitation

This is a **portfolio case study using synthetic / illustrative data**. It is not an official TANGEDCO/CEA operational planning or dispatch tool.

## Author

**Sanjay Arlo**  
Business Analyst / Data Analyst Portfolio  
[GitHub](https://github.com/sanjay-arlo)
