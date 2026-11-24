
-- below is the incremental model configuration for the bronze_order_items table
{{ config(
    materialized='incremental',
    schema='bronze',
    incremental_strategy='merge', 
    unique_key=['order_item_id', 'created_timestamp']
) }}


select 
*
from {{ source('dbo', 'order_items') }}