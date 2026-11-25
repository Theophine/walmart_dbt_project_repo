
-- This model represents the orders table in the gold layer which has the silver_orders as ref and is a left join with the 
-- silver_order_items as ref to get the order line details
select 
o.order_id,
o.customer_id,
o.store_id,
o.order_timestamp,
o.payment_method,
o.order_status,
o.total_amount,
oi.order_item_id,
oi.product_id,
oi.quantity,
oi.unit_price,
oi.line_amount
from {{ ref('silver_orders') }} o
left join {{ ref('silver_order_items') }} oi
on o.order_id = oi.order_id