SELECT
    *,
    CASE
        when region ='East' then 'Yes'
    when region ='West' then 'Yes'
    Else 
    'No'-- Write your code here
    END AS discount_eligible
FROM sales;