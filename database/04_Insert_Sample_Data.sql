INSERT INTO dbo.Customers
VALUES
(1,'Amlakshi','Barik','Female','amlakshi@email.com','7978306628','Bhubaneswar','Odisha','2026-07-13');

INSERT INTO dbo.Categories
VALUES
(1,'Electronics','Electronic Devices'),
(2,'Furniture','Home & Office Furniture'),
(3,'Clothing','Men and Women Clothing'),
(4,'Groceries','Daily Essentials'),
(5,'Sports','Sports Equipment');

INSERT INTO dbo.Products
VALUES
(101,'Dell Laptop',1,65000,50,'Dell'),
(102,'iPhone 15',1,85000,40,'Apple'),
(103,'Office Chair',2,7000,80,'IKEA'),
(104,'Men T-Shirt',3,999,150,'Nike'),
(105,'Football',5,1200,60,'Puma');



-- =====================================
-- Insert Order Details
-- =====================================

INSERT INTO dbo.OrderDetails
(OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1001,101,1,65000.00),
(1002,104,1,999.00),
(1003,105,2,1200.00);