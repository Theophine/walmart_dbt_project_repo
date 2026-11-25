
-- This model represents the stores table in the bronze layer which has the stores_snapshot.yml as ref
select 
store_id,
store_name,
city,
province,
country,
is_active
from {{ ref('stores_snapshot') }} 
where dbt_valid_to is null