Query 1: Most Expensive Product

-- Find the most expensive product

SELECT
    ProductName,
    UnitPrice
FROM dbo.Products
WHERE UnitPrice =
(
    SELECT MAX(UnitPrice)
    FROM dbo.Products
);


Query 2: Products Above Average Price

-- Products priced above average

SELECT
    ProductName,
    UnitPrice
FROM dbo.Products
WHERE UnitPrice >
(
    SELECT AVG(UnitPrice)
    FROM dbo.Products
);


Query 3: Cheapest Product

SELECT
    ProductName,
    UnitPrice
FROM dbo.Products
WHERE UnitPrice =
(
    SELECT MIN(UnitPrice)
    FROM dbo.Products
);

Query 4: Orders Above Average Amount


SELECT
    OrderID,
    TotalAmount
FROM dbo.Orders
WHERE TotalAmount >
(
    SELECT AVG(TotalAmount)
    FROM dbo.Orders
);


Query 5: Customers Who Placed Orders


SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName
FROM dbo.Customers c
WHERE EXISTS
(
    SELECT 1
    FROM dbo.Orders o
    WHERE o.CustomerID = c.CustomerID
);


Query 6: Products That Have Been Ordered

SELECT
    p.ProductID,
    p.ProductName
FROM dbo.Products p
WHERE EXISTS
(
    SELECT 1
    FROM dbo.OrderDetails od
    WHERE od.ProductID = p.ProductID
);

Query 7: Basic CTE

WITH ProductCTE AS
(
    SELECT
        ProductID,
        ProductName,
        UnitPrice
    FROM dbo.Products
)

SELECT *
FROM ProductCTE;


Query 8: Products Above ₹1000 Using CTE


WITH ProductCTE AS
(
    SELECT
        ProductID,
        ProductName,
        UnitPrice
    FROM dbo.Products
)

SELECT *
FROM ProductCTE
WHERE UnitPrice > 1000;


Query 9: Average Price Using CTE

WITH ProductCTE AS
(
    SELECT
        ProductName,
        UnitPrice
    FROM dbo.Products
)

SELECT *
FROM ProductCTE
WHERE UnitPrice >
(
    SELECT AVG(UnitPrice)
    FROM ProductCTE
);

