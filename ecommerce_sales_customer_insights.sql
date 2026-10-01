CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    item_price DECIMAL(10,2),

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
);

INSERT INTO customers
(customer_id, name, city, signup_date)
VALUES
(1, 'Aarav Sharma', 'Nagpur', '2025-01-10'),
(2, 'Priya Patel', 'Mumbai', '2025-01-15'),
(3, 'Rahul Verma', 'Delhi', '2025-02-01'),
(4, 'Sneha Khan', 'Pune', '2025-02-10'),
(5, 'Aditya Singh', 'Nagpur', '2025-02-18'),
(6, 'Neha Gupta', 'Bangalore', '2025-03-05'),
(7, 'Rohan Mehta', 'Mumbai', '2025-03-12'),
(8, 'Anjali Joshi', 'Delhi', '2025-03-20'),
(9, 'Vikram Yadav', 'Pune', '2025-04-02'),
(10, 'Simran Ali', 'Nagpur', '2025-04-15'),
(11, 'Karan Malhotra', 'Bangalore', '2025-05-01'),
(12, 'Isha Kapoor', 'Mumbai', '2025-05-10');

INSERT INTO products
(product_id, product_name, category, price)
VALUES
(101, 'Wireless Headphones', 'Electronics', 2499.00),
(102, 'Bluetooth Speaker', 'Electronics', 1799.00),
(103, 'Smart Watch', 'Electronics', 3999.00),
(104, 'USB-C Cable', 'Accessories', 499.00),
(105, 'Laptop Stand', 'Accessories', 1299.00),
(106, 'Running Shoes', 'Fashion', 2999.00),
(107, 'Backpack', 'Fashion', 1599.00),
(108, 'T-Shirt', 'Fashion', 799.00),
(109, 'Coffee Maker', 'Home & Kitchen', 3499.00),
(110, 'Water Bottle', 'Home & Kitchen', 699.00),
(111, 'Desk Lamp', 'Home & Kitchen', 1199.00),
(112, 'Notebook Set', 'Stationery', 399.00);

INSERT INTO orders
(order_id, customer_id, order_date, total_amount)
VALUES
(1001, 1, '2025-01-20', 2499.00),
(1002, 2, '2025-01-25', 1799.00),
(1003, 3, '2025-02-05', 3999.00),
(1004, 4, '2025-02-15', 2999.00),
(1005, 5, '2025-02-20', 2098.00),
(1006, 1, '2025-03-01', 3499.00),
(1007, 6, '2025-03-10', 1599.00),
(1008, 7, '2025-03-18', 3999.00),
(1009, 8, '2025-03-25', 1698.00);

INSERT INTO order_items
(item_id, order_id, product_id, quantity, item_price)
VALUES
(1, 1001, 101, 1, 2499.00),
(2, 1002, 102, 1, 1799.00),
(3, 1003, 103, 1, 3999.00),
(4, 1004, 106, 1, 2999.00),
(5, 1005, 107, 1, 1599.00),
(6, 1005, 108, 1, 499.00),
(7, 1006, 109, 1, 3499.00),
(8, 1007, 107, 1, 1599.00),
(9, 1008, 103, 1, 3999.00),
(10, 1009, 108, 1, 799.00),
(11, 1009, 112, 1, 899.00),
(12, 1010, 109, 1, 3499.00),
(13, 1010, 110, 1, 699.00),
(14, 1011, 106, 1, 2999.00),
(15, 1012, 103, 1, 3999.00),
(16, 1012, 111, 1, 1199.00),
(17, 1013, 101, 1, 2499.00),
(18, 1014, 103, 1, 3999.00),
(19, 1014, 110, 1, 699.00),
(20, 1015, 110, 1, 699.00),
(21, 1015, 112, 1, 499.00),
(22, 1016, 103, 1, 3999.00),
(23, 1017, 109, 1, 3499.00),
(24, 1018, 101, 1, 2499.00),
(25, 1018, 111, 1, 1199.00),
(26, 1018, 112, 1, 1, 600.00);

DELETE FROM order_items
WHERE item_id = 26;

INSERT INTO order_items
(item_id, order_id, product_id, quantity, item_price)
VALUES
(26, 1018, 112, 1, 600.00);

INSERT INTO payments
(payment_id, order_id, payment_method, payment_status)
VALUES
(1, 1001, 'UPI', 'Completed'),
(2, 1002, 'Credit Card', 'Completed'),
(3, 1003, 'UPI', 'Completed'),
(4, 1004, 'Debit Card', 'Completed'),
(5, 1005, 'Cash on Delivery', 'Completed'),
(6, 1006, 'Credit Card', 'Completed'),
(7, 1007, 'UPI', 'Completed'),
(8, 1008, 'UPI', 'Completed'),
(9, 1009, 'Debit Card', 'Completed'),
(10, 1010, 'Credit Card', 'Completed'),
(11, 1011, 'UPI', 'Completed'),
(12, 1012, 'Credit Card', 'Completed'),
(13, 1013, 'UPI', 'Completed'),
(14, 1014, 'Debit Card', 'Completed'),
(15, 1015, 'Cash on Delivery', 'Completed'),
(16, 1016, 'UPI', 'Completed'),
(17, 1017, 'Credit Card', 'Completed'),
(18, 1018, 'UPI', 'Completed');

SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;

SELECT * FROM order_items;

SELECT * FROM payments;

SELECT 'Customers' AS table_name, COUNT(*) AS records
FROM customers

UNION ALL

SELECT 'Products', COUNT(*)
FROM products

UNION ALL

SELECT 'Orders', COUNT(*)
FROM orders

UNION ALL

SELECT 'Order Items', COUNT(*)
FROM order_items

UNION ALL

SELECT 'Payments', COUNT(*)
FROM payments;

SELECT
    SUM(total_amount) AS total_revenue
FROM orders;

SELECT
    COUNT(*) AS total_orders
FROM orders;

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

SELECT
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM orders;

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    ROUND(AVG(total_amount), 2) AS monthly_aov
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

SELECT
    p.category,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.item_price) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.item_price) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY total_units_sold DESC, revenue DESC;

WITH product_sales AS (
    SELECT
        p.product_id,
        p.product_name,
        p.category,
        SUM(oi.quantity) AS units_sold,
        SUM(oi.quantity * oi.item_price) AS revenue
    FROM order_items oi
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY
        p.product_id,
        p.product_name,
        p.category
),

ranked_products AS (
    SELECT
        *,
        DENSE_RANK() OVER (
            PARTITION BY category
            ORDER BY units_sold DESC
        ) AS product_rank
    FROM product_sales
)

SELECT
    category,
    product_name,
    units_sold,
    revenue,
    product_rank
FROM ranked_products
WHERE product_rank <= 3
ORDER BY category, product_rank;

SELECT
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS lifetime_value
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY lifetime_value DESC;

SELECT
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS lifetime_value
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY lifetime_value DESC
LIMIT 5;

SELECT
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
HAVING COUNT(o.order_id) > 1
ORDER BY order_count DESC;

SELECT
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
HAVING COUNT(o.order_id) > 1
ORDER BY total_spent DESC;

SELECT
    c.city,
    COUNT(DISTINCT c.customer_id) AS customers,
    COUNT(o.order_id) AS orders,
    SUM(o.total_amount) AS revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY revenue DESC;

WITH customer_spending AS (
    SELECT
        c.customer_id,
        c.name,
        c.city,
        SUM(o.total_amount) AS total_spent
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id,
        c.name,
        c.city
),

ranked_customers AS (
    SELECT
        *,
        DENSE_RANK() OVER (
            PARTITION BY city
            ORDER BY total_spent DESC
        ) AS city_rank
    FROM customer_spending
)

SELECT
    city,
    name,
    total_spent,
    city_rank
FROM ranked_customers
WHERE city_rank <= 3
ORDER BY city, city_rank;

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(
        CASE
            WHEN payment_status = 'Completed'
            THEN 1
            ELSE 0
        END
    ) AS completed_payments
FROM payments
GROUP BY payment_method
ORDER BY total_transactions DESC;

SELECT
    payment_status,
    COUNT(*) AS transaction_count
FROM payments
GROUP BY payment_status
ORDER BY transaction_count DESC;

SELECT
    c.customer_id,
    c.name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    COALESCE(SUM(o.total_amount), 0) AS total_spent,
    COALESCE(AVG(o.total_amount), 0) AS average_order_value
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name,
    c.city
ORDER BY total_spent DESC;

SELECT
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name
HAVING SUM(o.total_amount) > 5000
ORDER BY total_spent DESC;

SELECT
    p.category,
    SUM(oi.quantity) AS units_sold
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY units_sold DESC
LIMIT 1;

SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity * oi.item_price) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY revenue DESC
LIMIT 1;

WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(total_amount) AS revenue
    FROM orders
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)

SELECT
    month,
    revenue,
    DENSE_RANK() OVER (
        ORDER BY revenue DESC
    ) AS revenue_rank
FROM monthly_sales
ORDER BY revenue_rank;

SELECT
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent,

    CASE
        WHEN SUM(o.total_amount) >= 7000 THEN 'High Value'
        WHEN SUM(o.total_amount) >= 4000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment

FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id

GROUP BY
    c.customer_id,
    c.name

ORDER BY total_spent DESC;

SELECT
    c.customer_id,
    c.name,
    c.city
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT
    o.order_id,
    o.order_date,
    c.name AS customer_name,
    c.city,
    p.product_name,
    p.category,
    oi.quantity,
    oi.item_price,
    (oi.quantity * oi.item_price) AS item_total,
    pay.payment_method,
    pay.payment_status
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
LEFT JOIN payments pay
    ON o.order_id = pay.order_id
ORDER BY o.order_date;


