CREATE TABLE dbo.Payments
(
    PaymentID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    PaymentMethod VARCHAR(30),
    PaymentStatus VARCHAR(20),
    Amount DECIMAL(10,2),

    CONSTRAINT FK_Payment_Order
    FOREIGN KEY(OrderID)
    REFERENCES dbo.Orders(OrderID)
);