-- Write your code here
select *
from movies
order by 
case
when genre='Sci-Fi' and release_year >2010 then 1
else 2
end,
release_year desc;