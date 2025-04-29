SELECT order_ status, COUNT(*) AS order_ count
FROM customer_ orders
GROUP BY order_ status;


SELECT SUM(order_ amount) AS total_ revenue
FROM customer_ orders
WHERE order_ status = 'delivered';


SELECT DATE_FORMAT(order_ date, '%Y-%m') AS month, SUM(order_ amount) AS monthly_ revenue
FROM customer_ orders
WHERE order_ status = 'delivered'
GROUP BY month
ORDER BY month;