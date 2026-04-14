SELECT
    id,
    name,
    department,
    salary,
    years_at_company,
    case
    when salary>=80000 and years_at_company>=5 then 'High'
    when salary>=80000 or years_at_company>=5 then'Medium'
    else 'None'
    end as bonus
FROM employees;