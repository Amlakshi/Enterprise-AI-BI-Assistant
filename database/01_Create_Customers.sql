CREATE TABLE dbo.Customers
(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    City VARCHAR(50),
    State VARCHAR(50),
    JoinDate DATE
);