
-- This model represents the customers table in the bronze layer which has the customers_snapshot.yml as ref
select 
customer_id,
first_name, 
last_name, 
email,
phone, 
city, 
province, 
country, 
is_active
from {{ ref('customers_snapshot') }} 
where dbt_valid_to is null
