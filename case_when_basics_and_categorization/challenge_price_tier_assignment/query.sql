SELECT
    id,
    product,
    quantity,
    price,
    region,
    case
    when price>700 then 'Premium'
    when price between 300 and 700 then 'Standard'
    else 'Budget'
    end as price_tier
FROM
    sales;