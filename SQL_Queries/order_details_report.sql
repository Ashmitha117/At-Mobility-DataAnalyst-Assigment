SELECT 
    o.order_id,
    o.customer_id,
    o.order_status,
    p.payment_id,
    p.payment_status,
    p.payment_method,
    p.payment_amount
FROM customer_orders o
LEFT JOIN payments p ON o.order_id = p.order_id;