# Write your MySQL query statement below
select * ,
    case
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
           ELSE 'No'
    end as triangle
from Triangle
