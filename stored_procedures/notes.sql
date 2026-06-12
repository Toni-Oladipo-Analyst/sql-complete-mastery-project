DELIMITER $$

CREATE PROCEDURE GetAllProducts()
BEGIN
    SELECT * FROM products;
END $$

DELIMITER ;
CALL GetAllProducts();

DELIMITER $$

CREATE PROCEDURE GetProductsByCategory(IN cat VARCHAR(50))
BEGIN
    SELECT *
    FROM products
    WHERE Category = cat;
END $$

DELIMITER ;
CALL GetProductsByCategory('Electronics');



DELIMITER $$

CREATE PROCEDURE TotalRevenue()
BEGIN
    SELECT SUM(Quantity * UnitPrice) AS revenue
    FROM sales_data;
END $$

DELIMITER ;



