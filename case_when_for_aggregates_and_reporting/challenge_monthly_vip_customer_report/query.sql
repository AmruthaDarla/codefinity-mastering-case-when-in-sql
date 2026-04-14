SELECT
    TO_CHAR(transaction_date, 'YYYY-MM') AS month,
    customer_id,
    SUM(amount) AS total_amount,
    COUNT(*) AS transaction_count,
    CASE
        WHEN SUM(amount) >= 500
         AND COUNT(*) >= 2
        THEN 'VIP'
        ELSE NULL
    END AS vip_status
FROM
    transactions
GROUP BY
    TO_CHAR(transaction_date, 'YYYY-MM'),
    customer_id
HAVING
    SUM(amount) >= 500
    AND COUNT(*) >= 2;