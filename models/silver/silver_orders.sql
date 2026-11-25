
-- This model represents the orders table in the silver layer which has the bronze_orders model as ref and it only select 
-- records where "is_active" is equal to "Y"
select *
from {{ ref('bronze_orders') }}
where is_active = 'Y'