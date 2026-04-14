SELECT
    id,
    name,
    department,
    salary,
    years_at_company,
    case
    when salary >=90000 then 'Senior'
    when salary between 60000 and 90000 then 'Mid'
    when salary < 60000 then 'Junior'
    end as salary_band
FROM employees;