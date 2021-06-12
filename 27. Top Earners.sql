select
    max_earnings,
    sum(case when total_salary = max_earnings then 1 else 0 end)
    
from (
    
    select
        employee_id,
        months*salary as total_salary,
        max(months*salary) over() as max_earnings
    
    from Employee e
    
    group by
        employee_id,
        months*salary
) ia

group by max_earnings
