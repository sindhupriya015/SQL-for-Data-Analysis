-- SQL for Data Analysis Internship Task

-- 1. SELECT
SELECT * FROM orders;


-- 2. WHERE
SELECT * FROM orders
WHERE quantity > 1;


-- 3. ORDER BY
SELECT * FROM orders
ORDER BY price DESC;


-- 4. GROUP BY
SELECT category, COUNT(*) AS total_orders
FROM orders
GROUP BY category;


-- 5. INNER JOIN
SELECT orders.order_id,
       customers.customer_name,
       customers.city,
       orders.product,
       orders.price
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;


-- 6. LEFT JOIN
SELECT orders.order_id,
       customers.customer_name,
       customers.city,
       orders.product,
       orders.price
FROM orders
LEFT JOIN customers
ON orders.customer_id = customers.customer_id;


-- 7. RIGHT JOIN
SELECT orders.order_id,
       customers.customer_name,
       customers.city,
       orders.product,
       orders.price
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id;


-- 8. SUBQUERY
SELECT *
FROM orders
WHERE price > (
    SELECT AVG(price)
    FROM orders
);


-- 9. SUM
SELECT SUM(price) AS total_sales
FROM orders;


-- 10. AVG
SELECT AVG(price) AS average_price
FROM orders;


-- 11. CREATE VIEW
CREATE VIEW order_analysis AS
SELECT order_id,
       product,
       category,
       quantity,
       price,
       quantity * price AS total_amount
FROM orders;


-- Display the view
SELECT * FROM order_analysis;


-- 12. INDEX
CREATE INDEX idx_orders_customer_id
ON orders(customer_id);


-- Test the index
SELECT * FROM orders
WHERE customer_id = 101;
