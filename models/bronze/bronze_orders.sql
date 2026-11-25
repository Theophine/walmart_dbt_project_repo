-- i want to configure the bronze layer to incrementally load from the dbo.orders table 

{{ 
    config(
        materialized='incremental',
        schema='bronze',
        incremental_strategy='merge',
        unique_key=['order_id', 'created_timestamp']
    )
}}

select 
order_id, 
customer_id, 
store_id, 
order_timestamp, 
payment_method, 
order_status, 
total_amount, 
is_active,
created_timestamp,
updated_timestamp
from {{ source('dbo', 'orders') }} 

