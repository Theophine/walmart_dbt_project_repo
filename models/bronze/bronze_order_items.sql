
-- below is the incremental model configuration for the bronze_order_items table
{{ config(
    materialized='incremental',
    schema='bronze',
    incremental_strategy='merge', 
    unique_key=['order_item_id', 'created_timestamp']
) }}


select 
order_item_id, 
order_id, 
product_id, 
quantity, 
unit_price, 
line_amount,
is_active,
created_timestamp,
updated_timestamp
from {{ source('dbo', 'order_items') }}