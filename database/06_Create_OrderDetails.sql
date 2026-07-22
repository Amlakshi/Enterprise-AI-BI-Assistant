CREATE TABLE dbo.OrderDetails
(
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,

    CONSTRAINT PK_OrderDetails
    PRIMARY KEY (OrderID, ProductID),

    CONSTRAINT FK_OrderDetails_Order
    FOREIGN KEY (OrderID)
    REFERENCES dbo.Orders(OrderID),

    CONSTRAINT FK_OrderDetails_Product
    FOREIGN KEY (ProductID)
    REFERENCES dbo.Products(ProductID)
);