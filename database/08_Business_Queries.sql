Query 1: View All Customers

SELECT *
FROM dbo.Customers;

Query 2: View All Products

SELECT *
FROM dbo.Products;

Query 3: View All Orders

SELECT *
FROM dbo.Orders;

Query 4: View All Payments

SELECT *
FROM dbo.Payments;

Query 5: Customers from Odisha

SELECT *
FROM dbo.Customers
WHERE State='Odisha';

Query 6: Products Costing More Than ₹5000

SELECT
ProductName,
UnitPrice
FROM dbo.Products
WHERE UnitPrice>5000;

Query 7: Products Between ₹1000 and ₹70000

SELECT
ProductName,
UnitPrice
FROM dbo.Products
WHERE UnitPrice
BETWEEN 1000 AND 70000;

Query 8: Products by Brand

SELECT *
FROM dbo.Products
WHERE Brand='Dell';

Query 9: Most Expensive Product

SELECT TOP 1
ProductName,
UnitPrice
FROM dbo.Products
ORDER BY UnitPrice DESC;


Query 10: Cheapest Product

SELECT TOP 1
ProductName,
UnitPrice
FROM dbo.Products
ORDER BY UnitPrice ASC;

Query 11: Customer Orders

SELECT

c.FirstName,
c.LastName,
o.OrderID,
o.OrderDate,
o.TotalAmount

FROM dbo.Customers c

INNER JOIN dbo.Orders o

ON c.CustomerID=o.CustomerID;

Query 12: Customer Purchased Products

SELECT

c.FirstName,
c.LastName,
p.ProductName,
od.Quantity,
od.UnitPrice

FROM dbo.Customers c

INNER JOIN dbo.Orders o

ON c.CustomerID=o.CustomerID

INNER JOIN dbo.OrderDetails od

ON o.OrderID=od.OrderID

INNER JOIN dbo.Products p

ON od.ProductID=p.ProductID;



Query 13: Total Revenue

SELECT

SUM(od.Quantity*od.UnitPrice)

AS TotalRevenue

FROM dbo.OrderDetails od;

Query 14: Revenue by Product

SELECT

p.ProductName,

SUM(od.Quantity*od.UnitPrice)

AS Revenue

FROM dbo.Products p

INNER JOIN dbo.OrderDetails od

ON p.ProductID=od.ProductID

GROUP BY p.ProductName;


Query 15: Best Selling Product

SELECT

p.ProductName,

SUM(od.Quantity)

AS TotalSold

FROM dbo.Products p

INNER JOIN dbo.OrderDetails od

ON p.ProductID=od.ProductID

GROUP BY p.ProductName

ORDER BY TotalSold DESC;

Query 16: Payment Summary

SELECT

PaymentStatus,

COUNT(*) AS TotalOrders,

SUM(Amount) AS Revenue

FROM dbo.Payments

GROUP BY PaymentStatus;

Query 17: Revenue by Payment Method

SELECT

PaymentMethod,

SUM(Amount)

AS Revenue

FROM dbo.Payments

GROUP BY PaymentMethod;

Query 18: Premium vs Budget Products

SELECT

ProductName,

UnitPrice,

CASE

WHEN UnitPrice>=50000 THEN 'Premium'

WHEN UnitPrice>=10000 THEN 'Mid Range'

ELSE 'Budget'

END AS ProductCategory

FROM dbo.Products;


Query 19: Highest Order Value

SELECT TOP 1

OrderID,

TotalAmount

FROM dbo.Orders

ORDER BY TotalAmount DESC;

Query 20: Average Product Price

SELECT

AVG(UnitPrice)

AS AveragePrice

FROM dbo.Products;

