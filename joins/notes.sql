
-- BASIC JOIN
-- Customers + Orders


SELECT 
    customers.CustomerName,
    orders.OrderID,
    orders.OrderDate
FROM customers
INNER JOIN orders
ON customers.CustomerID = orders.CustomerID;



-- JOIN ORDERS + PRODUCTS


SELECT 
    orders.OrderID,
    products.ProductName,
    order_details.Quantity
FROM orders
INNER JOIN order_details
ON orders.OrderID = order_details.OrderID
INNER JOIN products
ON order_details.ProductID = products.ProductID;


-- FULL SALES BREAKDOWN


SELECT 
    customers.CustomerName,
    products.ProductName,
    order_details.Quantity,
    products.Price,
    (order_details.Quantity * products.Price) AS TotalRevenue
FROM customers
INNER JOIN orders
ON customers.CustomerID = orders.CustomerID
INNER JOIN order_details
ON orders.OrderID = order_details.OrderID
INNER JOIN products
ON order_details.ProductID = products.ProductID;

