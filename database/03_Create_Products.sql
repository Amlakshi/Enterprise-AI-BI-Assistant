CREATE TABLE dbo.Products
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(150) NOT NULL,
    CategoryID INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    StockQuantity INT,
    Brand VARCHAR(100),

    CONSTRAINT FK_Product_Category
    FOREIGN KEY(CategoryID)
    REFERENCES dbo.Categories(CategoryID)
);