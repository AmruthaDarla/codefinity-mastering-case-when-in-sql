SELECT
    title,
    genre,
    rating,
    box_office,
    CASE
        WHEN box_office >= 100000000 OR rating >= 8.5 THEN 'Blockbuster'
        ELSE 'Standard'
    END AS blockbuster_status
FROM
    movies
WHERE
    case 
when box_office >= 100000000 or rating >=8.5 then 1
else  0
end =1