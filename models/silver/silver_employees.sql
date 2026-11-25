
-- This model represents the employees table in the silver layer which has the bronze_employees model as ref and it only select 
-- records where "is_active" is equal to "Y"
select *
from {{ ref('bronze_employees') }}
where is_active = 'Y'