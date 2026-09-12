-- Tamil Nadu Power: resilience analysis
SELECT region,
       COUNT(*) AS days,
       ROUND(MAX(peak_demand_mw),0) AS peak_demand_mw,
       ROUND(AVG(peak_demand_mw),0) AS avg_demand_mw,
       ROUND(AVG(available_capacity_mw-peak_demand_mw),0) AS avg_headroom_mw,
       SUM(outage_incidents) AS outage_incidents,
       ROUND(AVG(field_staff_vacancy_rate),3) AS avg_staff_vacancy_rate
FROM sample_tn_power_demand_outage_data
GROUP BY region
ORDER BY avg_headroom_mw ASC, outage_incidents DESC;

SELECT date, region, peak_demand_mw, available_capacity_mw,
       (available_capacity_mw-peak_demand_mw) AS headroom_mw,
       outage_incidents, field_staff_vacancy_rate
FROM sample_tn_power_demand_outage_data
ORDER BY headroom_mw ASC
LIMIT 20;
