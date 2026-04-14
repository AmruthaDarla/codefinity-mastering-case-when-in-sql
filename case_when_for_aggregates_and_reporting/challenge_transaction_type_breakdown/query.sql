SELECT
  TO_CHAR(transaction_date, 'YYYY-MM') AS month,
  COUNT(CASE WHEN transaction_type = 'purchase' THEN 1 END)      AS purchase_count,
  COUNT(CASE WHEN transaction_type = 'refund'   THEN 1 END)      AS refund_count,
  COUNT(CASE WHEN transaction_type = 'fee'      THEN 1 END)      AS fee_count
FROM transactions
GROUP BY TO_CHAR(transaction_date, 'YYYY-MM')
ORDER BY month;
