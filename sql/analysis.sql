-- Tamil Nadu Power Grid Resilience: reproducible SQL
-- MySQL 8+; portfolio data is synthetic/illustrative.

-- 1) Regional KPI layer
WITH region_kpi AS (
    SELECT region,
           COUNT(*) AS days,
           MAX(peak_demand_mw) AS peak_demand_mw,
           AVG(peak_demand_mw) AS avg_demand_mw,
           AVG(available_capacity_mw - peak_demand_mw) AS avg_headroom_mw,
           SUM(outage_incidents) AS outage_incidents,
           AVG(field_staff_vacancy_rate) AS avg_staff_vacancy_rate
    FROM sample_tn_power_demand_outage_data
    GROUP BY region
)
SELECT region, days,
       ROUND(peak_demand_mw,0) AS peak_demand_mw,
       ROUND(avg_demand_mw,0) AS avg_demand_mw,
       ROUND(avg_headroom_mw,0) AS avg_headroom_mw,
       outage_incidents,
       ROUND(avg_staff_vacancy_rate,3) AS avg_staff_vacancy_rate
FROM region_kpi
ORDER BY avg_headroom_mw ASC, outage_incidents DESC;

-- 2) Window function: daily headroom and regional pressure rank
SELECT date, region,
       peak_demand_mw, available_capacity_mw,
       (available_capacity_mw - peak_demand_mw) AS headroom_mw,
       outage_incidents, field_staff_vacancy_rate,
       DENSE_RANK() OVER (
           PARTITION BY region ORDER BY (available_capacity_mw - peak_demand_mw) ASC
       ) AS tightest_headroom_rank
FROM sample_tn_power_demand_outage_data
ORDER BY region, tightest_headroom_rank;

-- 3) CTE + join: regional headroom versus portfolio benchmark
WITH region_avg AS (
    SELECT region, AVG(available_capacity_mw - peak_demand_mw) AS avg_headroom
    FROM sample_tn_power_demand_outage_data
    GROUP BY region
), portfolio_avg AS (
    SELECT AVG(available_capacity_mw - peak_demand_mw) AS portfolio_headroom
    FROM sample_tn_power_demand_outage_data
)
SELECT r.region,
       ROUND(r.avg_headroom,0) AS avg_headroom_mw,
       ROUND(p.portfolio_headroom,0) AS portfolio_headroom_mw,
       ROUND(r.avg_headroom - p.portfolio_headroom,0) AS gap_vs_portfolio
FROM region_avg r
CROSS JOIN portfolio_avg p
ORDER BY gap_vs_portfolio ASC;

-- 4) Operational exception queue
SELECT date, region, peak_demand_mw, available_capacity_mw,
       (available_capacity_mw - peak_demand_mw) AS headroom_mw,
       outage_incidents, field_staff_vacancy_rate
FROM sample_tn_power_demand_outage_data
WHERE available_capacity_mw - peak_demand_mw < 0
   OR outage_incidents >= 3
ORDER BY headroom_mw ASC, outage_incidents DESC
LIMIT 25;

-- 5) Data-quality control
SELECT COUNT(*) AS invalid_rows
FROM sample_tn_power_demand_outage_data
WHERE date IS NULL OR region IS NULL OR peak_demand_mw IS NULL
   OR available_capacity_mw IS NULL OR outage_incidents IS NULL;
