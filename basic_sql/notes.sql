
-- BASIC SQL PRACTICE


-- 1. View all customers
SELECT * FROM customers;

-- 2. View all products
SELECT * FROM products;

-- 3. View all orders
SELECT * FROM orders;

-- 4. Select specific columns
SELECT CustomerName, Region
FROM customers;

-- 5. Filter data (WHERE)
SELECT *
FROM customers
WHERE Region = 'West';

-- 6. Sort data (ORDER BY)
SELECT *
FROM products
ORDER BY Price DESC;
