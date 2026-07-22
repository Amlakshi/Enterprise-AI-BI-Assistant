/*
=====================================================
10_Views.sql
Enterprise AI BI Assistant
=====================================================
*/

-- ===========================================
-- View 1 : Customer Orders
-- ===========================================

CREATE VIEW vw_CustomerOrders
AS

SELECT

c.CustomerID,

c.FirstName,

c.LastName,

o.OrderID,

o.OrderDate,

o.OrderStatus,

o.TotalAmount

FROM dbo.Customers c

INNER JOIN dbo.Orders o

ON c.CustomerID=o.CustomerID;



useful View

CREATE VIEW vw_OrderSummary
AS

SELECT

c.FirstName,

c.LastName,

p.ProductName,

od.Quantity,

od.UnitPrice,

(od.Quantity*od.UnitPrice) AS TotalPrice,

o.OrderDate,

pay.PaymentStatus

FROM dbo.Customers c

INNER JOIN dbo.Orders o

ON c.CustomerID=o.CustomerID

INNER JOIN dbo.OrderDetails od

ON o.OrderID=od.OrderID

INNER JOIN dbo.Products p

ON od.ProductID=p.ProductID

INNER JOIN dbo.Payments pay

ON o.OrderID=pay.OrderID;

ALTER VIEW


ALTER VIEW vw_CustomerOrders
AS

SELECT

c.CustomerID,

c.FirstName,

c.LastName,

c.Email,

o.OrderID,

o.OrderDate,

o.OrderStatus,

o.TotalAmount

FROM dbo.Customers c

INNER JOIN dbo.Orders o

ON c.CustomerID=o.CustomerID;