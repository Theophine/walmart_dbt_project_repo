
-- This model represents the customers table in the silver layer which has the bronze_customers model as ref and it only select 
-- records where "is_active" is equal to "Y"
select *
from {{ ref('bronze_customers') }}
where is_active = 'Y'
