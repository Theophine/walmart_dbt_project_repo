
-- This model represents the order_items table in the silver layer which has the bronze_order_items model as ref and it only select 
-- records where "is_active" is equal to "Y"
select *
from {{ ref('bronze_order_items') }}
where is_active = 'Y'