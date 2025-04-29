SELECT payment_status, COUNT(*) AS payment_count
FROM payments
GROUP BY payment_status;

SELECT DATE_FORMAT(payment_date, '%Y-%m') AS month,
       SUM(CASE WHEN payment_status = 'failed' THEN 1 ELSE 0 END) AS failed_payments
FROM payments
GROUP BY month
ORDER BY month;