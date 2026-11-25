
-- This model represents the employees table in the gold layer which has the silver_employees as ref
-- and is a left join with the silver_stores as ref to get the store details
select 
e.employee_id,
e.store_id,
e.first_name,
e.last_name,
e.email,
e.job_title,
e.salary,
s.store_name,
s.city,
s.province,
s.country
from {{ ref('silver_employees') }} e
left join {{ ref('silver_stores') }} s
on e.store_id = s.store_id
