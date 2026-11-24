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
*
from {{ source('dbo', 'orders') }} 