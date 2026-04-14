SELECT
    id,
    product,
    quantity,
    price,
    region,
    CASE
        WHEN quantity >=50 and price>=100 then 'Top'
    when quantity >=50 or price>=100 then 'Average'
    else 'Low'
    END AS performance
FROM sales;