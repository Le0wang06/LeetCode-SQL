# Write your MySQL query statement below
select max(m1.num) as num
from MyNumbers as m1
join (
    select *
    from MyNumbers
    group by num
    having count(*) < 2
) m2 
on m1.num = m2.num;
