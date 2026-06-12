
-- AGGREGATION SQL PRACTICE


-- 1. Total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Total number of products
SELECT COUNT(*) AS total_products
FROM products;

-- 3. Total revenue (all sales)
SELECT SUM(Quantity * UnitPrice) AS total_revenue
FROM sales_data;

-- 4. Average product price
SELECT AVG(Price) AS average_price
FROM products;

-- 5. Max and min price
SELECT 
    MAX(Price) AS highest_price,
    MIN(Price) AS lowest_price
FROM products;
