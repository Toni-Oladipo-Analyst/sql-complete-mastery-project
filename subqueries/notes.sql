-- Customers who exist in orders table

SELECT CustomerName
FROM customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM orders
);

SELECT ProductName
FROM products
WHERE ProductID IN (
    SELECT ProductID
    FROM order_details
);

SELECT ProductName, Price
FROM products
WHERE Price = (
    SELECT MAX(Price)
    FROM products
);
