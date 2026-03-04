SELECT * FROM customers LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM order_items LIMIT 5;

SELECT name, city, signup_date
FROM customers
ORDER BY signup_date;

SELECT order_id, customer_id, total_amount, order_date
FROM orders
WHERE status = 'delivered'
ORDER BY order_date DESC;

-- Method A: BETWEEN
SELECT product_name, category, price
FROM products
WHERE price BETWEEN 1000 AND 5000
ORDER BY price;

SELECT order_id, customer_id, total_amount, status
FROM orders
ORDER BY total_amount DESC
LIMIT 10;

SELECT order_id, customer_id, total_amount, order_date
FROM orders
WHERE status = 'delivered'
AND order_date >= '2025-01-01'
AND total_amount > 10000
ORDER BY total_amount DESC;

SELECT name, email, city
FROM customers
WHERE email LIKE '%@gmail.com'
ORDER BY name;

SELECT order_id, customer_id, order_date, status, total_amount
FROM orders
WHERE shipped_date IS NULL
ORDER BY order_date;

SELECT product_name,
category,
price AS original_price,
ROUND(price * 0.80, 2) AS discounted_price,
ROUND(price * 0.20, 2) AS you_save
FROM products
ORDER BY discounted_price DESC;

SELECT order_id,
customer_id,
total_amount,
order_date,
status,
CASE
WHEN total_amount > 10000 THEN 'URGENT'
ELSE 'NORMAL'
END AS priority
FROM orders
WHERE shipped_date IS NULL
AND order_date >= '2025-01-01'
ORDER BY total_amount DESC
LIMIT 5;
