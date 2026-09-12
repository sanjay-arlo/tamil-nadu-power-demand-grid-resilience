# Industry BA Delivery Pack — Tamil Nadu Power Demand & Grid Resilience

## Executive decision
Identify regions where peak demand pressure, limited headroom, outage frequency and workforce constraints justify resilience action.

## Stakeholders
Grid planning, operations/control rooms, field divisions, workforce planning, finance and asset-management teams.

## Requirements
- Track peak demand and available capacity.
- Calculate headroom and outage pressure.
- Compare regional resilience risk.
- Test demand/capacity/outage scenarios.
- Export decision-ready slices.

## KPI dictionary
Peak demand MW, available capacity MW, headroom MW, outage incidents and field-staff vacancy rate.

## Analytical model
`dim_date` + `dim_region` → `fact_power_demand` + `fact_outage` + `fact_workforce` → resilience KPI layer.

## Scenario model
Test demand growth, capacity uplift and outage-reduction assumptions under transparent stress cases.

## Acceptance criteria
Headroom reconciles to demand/capacity, scenario assumptions are visible, filters update all views, and the dashboard does not present illustrative data as grid dispatch data.

## Production controls
Verified generation availability, outage taxonomy, weather inputs, workforce records, master geography, refresh SLAs and approved scenario assumptions.

## Portfolio note
Synthetic illustrative data only; not an operational dispatch or grid-planning tool.
