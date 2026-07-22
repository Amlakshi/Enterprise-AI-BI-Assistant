CREATE TABLE dbo.Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    OrderStatus VARCHAR(30),
    TotalAmount DECIMAL(10,2),

    CONSTRAINT FK_Order_Customer
    FOREIGN KEY(CustomerID)
    REFERENCES dbo.Customers(CustomerID)
);