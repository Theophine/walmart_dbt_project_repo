
-- This model represents the products table in the silver layer which has the bronze_products model as ref and it only select   
-- records where "is_active" is equal to "Y"
select *
from {{ ref('bronze_products') }}
where is_active = 'Y'