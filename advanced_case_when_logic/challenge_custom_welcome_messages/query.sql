SELECT
    id,
    name,
    department,
    salary,
    years_at_company,
    CASE
        WHEN years_at_company > 1 THEN
            'Welcome back, ' || COALESCE(name, 'there') || '!'
        ELSE
            'Welcome, ' || COALESCE(name, 'there') || '!'
    END AS welcome_message
FROM employees;