SELECT customer_id, COUNT(*) AS total_orders
FROM customer_orders
GROUP BY customer_id
HAVING total_orders > 1;

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(DISTINCT customer_id) AS new_customers
FROM customer_orders
GROUP BY month
ORDER BY month;