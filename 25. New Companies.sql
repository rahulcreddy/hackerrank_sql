select distinct
    c.company_code,
    c.founder,
    count(distinct l.lead_manager_code) as lm,
    count(distinct s.senior_manager_code) as sm,
    count(distinct m.manager_code) as m,
    count(distinct e.employee_code) as e
    
from Company c
left join Lead_Manager l on c.company_code = l.company_code
left join Senior_Manager s on c.company_code = s.company_code
left join Manager m on c.company_code = m.company_code
left join Employee e on c.company_code = e.company_code

group by
    c.company_code,
    c.founder

order by company_code
