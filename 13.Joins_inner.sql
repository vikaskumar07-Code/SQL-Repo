CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Rahul', 'Delhi'),
(2, 'Neha', 'Mumbai'),
(3, 'Amit', 'Pune'),
(4, 'Priya', 'Delhi'),
(5, 'Karan', 'Bangalore');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount NUMERIC(10,2)
);

INSERT INTO orders VALUES
(101, 1, '2025-01-10', 500),
(102, 1, '2025-01-15', 1200),
(103, 2, '2025-01-20', 700),
(104, 4, '2025-02-01', 900),
(105, 4, '2025-02-05', 300);


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price NUMERIC(10,2)
);

INSERT INTO products VALUES
(1, 'Laptop', 50000),
(2, 'Mouse', 800),
(3, 'Keyboard', 1500),
(4, 'Monitor', 12000);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);

INSERT INTO order_items VALUES
(1, 101, 2, 2),
(2, 101, 3, 1),
(3, 102, 1, 1),
(4, 103, 4, 1),
(5, 104, 2, 3),
(6, 105, 3, 2);

SELECT * FROM customers
SELECT * FROM orders
SELECT * FROM products
SELECT * FROM order_items

-- Display the customer_name,amount 
SELECT
	c.customer_name,
	o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- display order_id, customer_name, order_date
SELECT
	o.order_id,
	o.order_date,
	c.customer_name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
	
--Display customer_name, city, order_id, amount
SELECT 
	o.order_id,
	c.customer_name,
	c.city,
	o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- Display order_id, product_name, quantity
SELECT
	oi.order_id,
	p.product_name,
	oi.quantity
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id;

-- display customer_name, product_name, quantity



SELECT
	c.customer_name,
	oi.quantity,
	p.product_name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN order_items oi
ON o.order_id = oi.order_id  
INNER JOIN products p
ON oi.product_id = p.product_id;

-- Display all products purchased by customer:rahul output :- [product_name, quantity]

SELECT
	p.product_name,
	oi.quantity
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN order_items oi
ON o.order_id = oi.order_id  
INNER JOIN products p
ON oi.product_id = p.product_id
WHERE c.customer_name ='Rahul';

-- display customer_name, total_orders (Only for customers who have placed orders.)
SELECT
	c.customer_name,
	COUNT(o.order_id) as total_orders
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- Display customer_name, total_amount_spent (using joins and aggregation.)
SELECT
	c.customer_name,
	SUM(o.amount) as total_amount_spend
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY customer_name;

-- Find the customer who placed the highest-value order :customer_name, order_id, amount
SELECT
	c.customer_name,
	o.order_id,
	SUM(o.amount) as amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY customer_name
ORDER BY amount 
LIMIT 1 ;

-- Display:- customer_name, product_name, quantity, order_date, amount
SELECT
	c.customer_name,
	p.product_name,
	oi.quantity,
	o.order_date,
	o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN order_items oi
ON o.order_id = oi.order_id
INNER JOIN products p
ON oi.product_id = p.product_id;



	
	