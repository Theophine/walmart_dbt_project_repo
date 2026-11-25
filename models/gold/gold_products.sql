
-- This model represents the products table in the gold layer which has the silver_products as ref
select 
p.product_id,
p.product_name,
p.category,
p.price,
p.brand
from {{ ref('silver_products') }} p