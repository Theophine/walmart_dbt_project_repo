-- This model represents the employees table in the bronze layer which has the employess_snapshot.yml as ref

select 
employee_id, 
store_id, 
first_name, 
last_name, 
email, 
job_title, 
salary, 
is_active
from {{ ref('employees_snapshot') }} 
where dbt_valid_to is null
