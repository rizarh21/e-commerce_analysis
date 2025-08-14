CREATE TABLE customers (
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
city VARCHAR(50),
state VARCHAR(50),
registration_date DATE
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2),
stock_quantity INT
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
total_amount DECIMAL(10,2),
status VARCHAR(20),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
order_item_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
unit_price DECIMAL(10,2),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (customer_id, first_name, last_name, email, city, state, registration_date)
VALUES 
(0001, 'Anna', 'Jeane', 'annajeane1@gmail.com', 'Seattle', 'WA', '2021-02-10'),
(0002, 'Peter', 'Charles', 'charles.peter@gmail.com', 'Phoenix', 'AZ', '2021-02-10'),
(0003, 'Alex', 'Robert', 'robert.charles2@gmail.com', 'Tucson', 'AZ', '2021-02-11'),
(0004, 'David', 'Matthew', 'matthewdavid@gmail.com', 'Dallas', 'TX', '2021-02-11'),
(0005, 'John', 'William', 'william.john@gmail.com', 'Houston', 'TX', '2021-02-11'),
(0006, 'Amanda', 'Olivia', 'oliviamanda@gmail.com', 'Laurel', 'MS', '2021-02-12'),
(0007, 'Elizabeth', 'Ann', 'ann.elizabeth@gmail.com', 'Atlanta', 'GA', '2021-02-12'),
(0008, 'Jennifer', 'Lynn', 'lynnjennifer8@gmail.com', 'Memphis', 'TN', '2021-02-13'),
(0009, 'Joseph', 'Christopher', 'christopher32@gmail.com', 'Atlanta', 'GA', '2021-02-13'),
(0010, 'Emily', 'Davis', 'emily.davis@outlook.com', 'Houston', 'TX', '2021-02-13'),
(0011, 'Jennifer', 'Taylor', 'jennifer.taylor@email.com', 'San Diego', 'CA', '2021-02-14'),
(0012, 'Christopher', 'Moore', 'cmoore@gmail.com', 'Dallas', 'TX', '2021-02-14'),
(0013, 'Amanda', 'Jackson', 'amanda.j@yahoo.com', 'San Jose', 'CA', '2021-02-14'),
(0014, 'Matthew', 'White', 'mwhite@outlook.com', 'Austin', 'TX', '2021-02-15'),
(0015, 'Ashley', 'Harris', 'ashley.harris@email.com', 'Jacksonville', 'FL', '2021-02-15'),
(0016, 'Joshua', 'Martin', 'joshua.martin@gmail.com', 'Fort Worth', 'TX', '2021-02-16'),
(0017, 'Melissa', 'Thompson', 'mthompson@yahoo.com', 'Columbus', 'OH', '2021-02-16'),
(0018, 'Andrew', 'Garcia', 'agarcia@email.com', 'Charlotte', 'NC', '2021-02-16'),
(0019, 'Stephanie', 'Rodriguez', 'stephanie.r@gmail.com', 'San Francisco', 'CA', '2021-08-16'),
(0020, 'Daniel', 'Lewis', 'dlewis@outlook.com', 'Indianapolis', 'IN', '2021-02-17'),
(0021, 'Nicole', 'Lee', 'nicole.lee@email.com', 'Seattle', 'WA', '2021-02-17'),
(0022, 'Ryan', 'Walker', 'rwalker@gmail.com', 'Denver', 'CO', '2021-02-17'),
(0023, 'Brittany', 'Hall', 'brittany.h@yahoo.com', 'Washington', 'DC', '2021-02-18'),
(0024, 'Kevin', 'Allen', 'kevin.allen@email.com', 'Boston', 'MA', '2021-02-18'),
(0025, 'Rachel', 'Young', 'rachel.young@gmail.com', 'El Paso', 'TX', '2021-02-19'),
(0026, 'Brandon', 'King', 'bking@outlook.com', 'Nashville', 'TN', '2021-02-20'),
(0027, 'Lauren', 'Wright', 'lauren.w@email.com', 'Baltimore', 'MD', '2021-02-20'),
(0028, 'Jason', 'Lopez', 'jlopez@gmail.com', 'Louisville', 'KY', '2021-02-20'),
(0029, 'Samantha', 'Hill', 'samantha.hill@yahoo.com', 'Portland', 'OR', '2021-02-20'),
(0030, 'Timothy', 'Scott', 'tscott@email.com', 'Oklahoma City', 'OK', '2021-02-20');

INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES 
(1, 'Wireless Bluetooth Headphones', 'Electronics', 79.99, 145),
(2, 'Organic Cotton T-Shirt', 'Clothing', 24.99, 230),
(3, 'Stainless Steel Water Bottle', 'Home & Kitchen', 18.50, 89),
(4, 'Gaming Mechanical Keyboard', 'Electronics', 129.99, 67),
(5, 'Yoga Mat Premium', 'Sports & Fitness', 45.00, 112),
(6, 'Coffee Bean Grinder', 'Home & Kitchen', 55.75, 43),
(7, 'Running Shoes', 'Sports & Fitness', 89.99, 78),
(8, 'Smartphone Case', 'Electronics', 15.99, 324),
(9, 'Denim Jeans', 'Clothing', 49.99, 156),
(10, 'LED Desk Lamp', 'Home & Kitchen', 32.99, 91),
(11, 'Protein Powder Vanilla', 'Health & Beauty', 39.95, 203),
(12, 'Wireless Mouse', 'Electronics', 25.99, 187),
(13, 'Hooded Sweatshirt', 'Clothing', 39.99, 134),
(14, 'Cast Iron Skillet', 'Home & Kitchen', 42.50, 56),
(15, 'Resistance Bands Set', 'Sports & Fitness', 22.99, 298),
(16, 'Face Moisturizer SPF 30', 'Health & Beauty', 28.99, 167),
(17, 'Portable Charger 10000mAh', 'Electronics', 34.99, 223),
(18, 'Flannel Button Shirt', 'Clothing', 35.99, 98),
(19, 'Ceramic Coffee Mug Set', 'Home & Kitchen', 19.99, 145),
(20, 'Adjustable Dumbbells', 'Sports & Fitness', 199.99, 34),
(21, 'Vitamin D3 Supplements', 'Health & Beauty', 16.50, 278),
(22, 'USB-C Cable 6ft', 'Electronics', 12.99, 412),
(23, 'Wool Winter Scarf', 'Clothing', 29.99, 87),
(24, 'Non-Stick Baking Sheet', 'Home & Kitchen', 24.99, 156),
(25, 'Tennis Racket', 'Sports & Fitness', 119.99, 47),
(26, 'Shampoo & Conditioner Set', 'Health & Beauty', 22.50, 189),
(27, 'Bluetooth Speaker', 'Electronics', 64.99, 103),
(28, 'Casual Sneakers', 'Clothing', 59.99, 124),
(29, 'Kitchen Knife Set', 'Home & Kitchen', 85.99, 72),
(30, 'Multivitamin Gummies', 'Health & Beauty', 19.99, 245);

INSERT INTO orders (order_id, customer_id, order_date, total_amount, status)
VALUES 
(1621, 0001, '2021-01-16', 159.98, 'Delivered'),
(2822, 0002, '2021-02-28', 89.99, 'Delivered'),
(2223, 0003, '2021-02-22', 234.50, 'Delivered'),
(2324, 0004, '2021-02-23', 67.48, 'Delivered'),
(1135, 0005, '2022-03-11', 129.99, 'Shipped'),
(1926, 0006, '2021-02-19', 45.00, 'Delivered'),
(2027, 0007, '2021-02-20', 199.99, 'Delivered'),
(2528, 0008, '2021-02-25', 74.98, 'Delivered'),
(2729, 0009, '2021-02-27', 112.50, 'Delivered'),
(6310, 0010, '2021-03-06', 39.99, 'Shipped'),
(2721, 0011, '2021-02-27', 185.47, 'Processing'),
(3132, 0012, '2021-03-31', 55.75, 'Delivered'),
(2323, 0013, '2021-02-23', 92.48, 'Delivered'),
(2124, 0014, '2021-02-21', 149.99, 'Delivered'),
(2625, 0015, '2021-02-26', 28.99, 'Delivered'),
(0236, 0016, '2021-03-02', 214.95, 'Shipped'),
(1837, 0017, '2021-03-18', 64.99, 'Processing'),
(1238, 0018, '2021-03-12', 139.98, 'Processing'),
(2339, 0019, '2021-03-23', 89.50, 'Pending'),
(0130, 0020, '2021-03-01', 175.25, 'Shipped'),
(0931, 0021, '2021-03-09', 42.50, 'Processing'),
(1432, 0022, '2021-03-14', 267.48, 'Pending'),
(0833, 0023, '2021-03-08', 119.99, 'Delivered'),
(0934, 0024, '2021-03-09', 78.97, 'Delivered'),
(1725, 0025, '2021-02-17', 156.99, 'Delivered'),
(2026, 0026, '2021-02-20', 95.48, 'Delivered'),
(2427, 0027, '2021-02-24', 229.97, 'Shipped'),
(1538, 0028, '2021-03-15', 32.99, 'Processing'),
(2039, 0029, '2021-03-20', 124.50, 'Pending'),
(2533, 0030, '2021-03-25', 187.99, 'Pending');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1621, 1, 2, 79.99),
(2, 2822, 7, 1, 89.99),
(3, 2223, 4, 1, 129.99),
(4, 2324, 10, 2, 32.99),
(5, 1135, 19, 3, 19.99),
(6, 1926, 2, 1, 24.99),
(7, 2027, 15, 1, 22.99),
(8, 2528, 8, 1, 15.99),
(9, 2729, 4, 1, 129.99),
(10, 6310, 5, 1, 45.00),
(11, 2721, 20, 1, 199.99),
(12, 3132, 2, 2, 24.99),
(13, 2323, 3, 1, 18.50),
(14, 2124, 21, 2, 16.50),
(15, 2625, 11, 1, 39.95),
(16, 0236, 16, 2, 28.99),
(17, 1837, 22, 1, 12.99),
(18, 1238, 13, 1, 39.99),
(19, 2339, 1, 1, 79.99),
(20, 0130, 27, 1, 64.99),
(21, 0931, 12, 1, 25.99),
(22, 1432, 22, 1, 12.99),
(23, 0833, 6, 1, 55.75),
(24, 0934, 9, 1, 49.99),
(25, 1725, 14, 1, 42.50),
(26, 2026, 1, 1, 79.99),
(27, 2427, 17, 2, 34.99),
(28, 1538, 16, 1, 28.99),
(29, 2039, 25, 1, 119.99),
(30, 2533, 26, 4, 22.50);

--Data Quality Check

SELECT
email,
COUNT(*) as duplicate_count,
STRING_AGG(CAST(customer_id AS VARCHAR), ', ') as customer_ids
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;

SELECT
order_id,
customer_id,
order_date,
total_amount,
status,
CASE
WHEN customer_id IS NULL THEN 'Missing Customer ID'
WHEN total_amount <= 0 THEN 'Invalid Amount'
ELSE 'Valid'
END as data_issue
FROM orders
WHERE customer_id IS NULL
OR total_amount <= 0;

SELECT
oi.order_id,
oi.product_id,
p.product_name,
p.price as current_price,
oi.unit_price as order_price,
ABS(p.price - oi.unit_price) as price_difference
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
WHERE ABS(p.price - oi.unit_price) > 0.01
ORDER BY price_difference DESC;

-- Find all customers from California

SELECT first_name, last_name, email, city
FROM customers
WHERE state = 'CA'
ORDER BY last_name;

-- Product with low stock

SELECT product_name, category, stock_quantity, price
FROM products
WHERE stock_quantity < 10
ORDER BY stock_quantity;

-- Total Revenue by Product Category

SELECT
p.category,
COUNT(*) as orders_count,
SUM(oi.quantity * oi.unit_price) as total_revenue,
AVG(oi.unit_price) as avg_price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- Top 5 customers by total spending

SELECT
c.first_name,
c.last_name,
c.email,
COUNT(o.order_id) as total_orders,
SUM(o.total_amount) as total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
ORDER BY total_spent DESC
LIMIT 5;

-- Customers who haven't orders

SELECT first_name, last_name, email, registration_date
FROM customers
WHERE customer_id NOT IN (
SELECT DISTINCT customer_id
FROM orders
WHERE customer_id IS NOT NULL
);

-- Rank customers by spending within each state

SELECT
c.state,
c.first_name,
c.last_name,
SUM(o.total_amount) as total_spent,
RANK() OVER (
PARTITION BY c.state
ORDER BY SUM(o.total_amount) DESC
) as state_rank
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.state, c.customer_id, c.first_name, c.last_name
ORDER BY c.state, state_rank;

-- Customer retention analysis

WITH customer_months AS (
SELECT
c.customer_id,
DATE_TRUNC('month', o.order_date) as order_month,
COUNT(*) as orders_in_month
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, DATE_TRUNC('month', o.order_date)
)
SELECT
order_month,
COUNT(DISTINCT customer_id) as active_customers,
COUNT(DISTINCT customer_id) - LAG(COUNT(DISTINCT customer_id)) OVER (ORDER BY order_month) as customer_
FROM customer_months
GROUP BY order_month
ORDER BY order_month;

-- Product performance analysis

SELECT
p.product_name,
p.category,
p.price,
COALESCE(SUM(oi.quantity), 0) as total_sold,
COALESCE(SUM(oi.quantity * oi.unit_price), 0) as total_revenue,
CASE
WHEN COALESCE(SUM(oi.quantity), 0) = 0 THEN 'No Sales'
WHEN COALESCE(SUM(oi.quantity), 0) < 10 THEN 'Low Sales'
WHEN COALESCE(SUM(oi.quantity), 0) < 50 THEN 'Medium Sales'
ELSE 'High Sales'
END as sales_category
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name, p.category, p.price
ORDER BY total_revenue DESC;