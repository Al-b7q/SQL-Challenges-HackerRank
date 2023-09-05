SELECT c.company_code, c.founder, count(DISTINCT l.lead_manager_code),
count(DISTINCT s.senior_manager_code), count(DISTINCT m.manager_code),
count(DISTINCT e.employee_code)

from Company as c
join Lead_Manager as l
on c.company_code = l.company_code
join Senior_Manager as s
on l.lead_manager_code = s.lead_manager_code
join Manager as m 
on s.senior_manager_code = m.senior_manager_code
join Employee as e
on m.manager_code = e.manager_code

group by 1,2
order by 1;