SELECT 
    ProductName,
    Price,
    RANK() OVER (ORDER BY Price DESC) AS price_rank
FROM products;


SELECT 
    ProductName,
    Category,
    ROW_NUMBER() OVER (ORDER BY ProductName) AS row_num
FROM products;



SELECT 
    ProductName,
    Category,
    Price,
    RANK() OVER (PARTITION BY Category ORDER BY Price DESC) AS category_rank
FROM products;
