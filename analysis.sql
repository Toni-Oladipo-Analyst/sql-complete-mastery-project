SELECT * FROM sales_data;

SELECT * FROM sales_data
WHERE Region = 'West';

SELECT SUM(Quantity * UnitPrice) AS total_revenue
FROM sales_data;
