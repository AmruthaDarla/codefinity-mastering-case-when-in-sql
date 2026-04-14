SELECT
    customer_id,
    SUM(CASE WHEN amount >= 1000 THEN 1 ELSE 0 END) AS high_value_transaction_count
FROM
    transactions
GROUP BY
    customer_id;