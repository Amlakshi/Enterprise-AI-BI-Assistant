Procedure 1 : Get All Customers

/*
==================================================
11_Stored_Procedures.sql
Enterprise AI BI Assistant
==================================================
*/

CREATE PROCEDURE usp_GetAllCustomers
AS
BEGIN

SELECT *

FROM dbo.Customers;

END;

Procedure 2 : Get All Products

CREATE PROCEDURE usp_GetAllProducts
AS
BEGIN

SELECT *

FROM dbo.Products;

END;

Procedure 3 : Get Products By Brand

CREATE PROCEDURE usp_GetProductsByBrand

@Brand VARCHAR(50)

AS
BEGIN

SELECT *

FROM dbo.Products

WHERE Brand=@Brand;

END;


Procedure 4 : Paid Orders

CREATE PROCEDURE usp_GetPaidOrders
AS
BEGIN

SELECT *

FROM dbo.Payments

WHERE PaymentStatus='Paid';

END;

Procedure 5 : Revenue

CREATE PROCEDURE usp_TotalRevenue
AS
BEGIN

SELECT

SUM(Amount)

AS Revenue

FROM dbo.Payments

WHERE PaymentStatus='Paid';

END;

Procedure 6 : Customer Order History

CREATE PROCEDURE usp_CustomerOrders

@CustomerID INT

AS
BEGIN

SELECT

c.FirstName,

c.LastName,

o.OrderID,

o.OrderDate,

o.TotalAmount

FROM dbo.Customers c

INNER JOIN dbo.Orders o

ON c.CustomerID=o.CustomerID

WHERE c.CustomerID=@CustomerID;

END;

Procedure 7 : Insert New Customer

CREATE PROCEDURE usp_InsertCustomer

@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@Gender VARCHAR(10),
@Email VARCHAR(100),
@Phone VARCHAR(20),
@City VARCHAR(50),
@State VARCHAR(50)

AS
BEGIN

INSERT INTO dbo.Customers
(
FirstName,
LastName,
Gender,
Email,
Phone,
City,
State
)

VALUES
(
@FirstName,
@LastName,
@Gender,
@Email,
@Phone,
@City,
@State
);

END;

