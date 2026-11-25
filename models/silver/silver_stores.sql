
-- This model represents the stores table in the silver layer which has the bronze_stores model as ref and it only select 
-- records where "is_active" is equal to "Y"
select *
from {{ ref('bronze_stores') }}
where is_active = 'Y'