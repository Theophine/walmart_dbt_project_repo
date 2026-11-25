
-- This model represents the customers table in the gold layer which has the silver_customers as ref
select 
c.customer_id,
c.first_name,
c.last_name,
c.email,
c.phone,
c.city, 
c.province, 
c.country
from {{ ref('silver_customers') }} c