from pathlib import Path
import csv
p=Path(__file__).parents[1]/'sample_tn_power_demand_outage_data.csv'
req={'date','region','peak_demand_mw','available_capacity_mw','outage_incidents','field_staff_vacancy_rate'}
with p.open(newline='',encoding='utf-8') as f: rows=list(csv.DictReader(f))
missing=sorted(req-set(rows[0])) if rows else sorted(req)
invalid=sum(1 for r in rows if float(r['peak_demand_mw'])<0 or float(r['available_capacity_mw'])<0 or float(r['outage_incidents'])<0 or not 0<=float(r['field_staff_vacancy_rate'])<=1)
print({'rows':len(rows),'missing_columns':missing,'invalid_rows':invalid})
