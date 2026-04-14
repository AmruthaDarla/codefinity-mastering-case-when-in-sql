SELECT
    *,
    CASE
        WHEN quantity >= 100 THEN 'Bulk'
        WHEN quantity >= 20  THEN 'Standard'
        ELSE 'Small'
    END AS volume_category
FROM sales;