
-- This model represents the products table in the bronze layer which has the products_snapshot.yml as ref
select 
product_id,
product_name,
category,
brand,
price,
is_active
from {{ ref('products_snapshot') }} 
where dbt_valid_to is null