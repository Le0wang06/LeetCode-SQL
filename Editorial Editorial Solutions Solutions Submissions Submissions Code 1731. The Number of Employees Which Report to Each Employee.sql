# Write your MySQL query statement below
select Employees.employee_id , name , M.reports_count, M.average_age
from Employees
join (
    select reports_to , round(avg(age)) as average_age, count(age) as reports_count
    from Employees
    group by reports_to
) M
on
    Employees.employee_id = M.reports_to
order by employee_id;
