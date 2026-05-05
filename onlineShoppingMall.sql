use OnlineShoppingMall; 



create table Customer_Account (
CustomerId int NOT NULL,
FirstName varchar(25),
LastName varchar(25),
CustomerNumber int NOT NULL,
CustomerEmail varchar(50),
primary key(CustomerId)
 );
 
 create table Payment (
 PaymentId int NOT NULL,
 Payment_Amount DECIMAL(10, 2),
 Payment_date date,
 Payment_method varchar(50), 
 primary key(PaymentId)
 );
 
 create table Products (
 ProductId int NOT NULL,
 ProductName varchar(100),
 ProductPrice DECIMAL(10, 2) NOT NULL,
 ProductCategory varchar(25),
 Stock_Quantity INT DEFAULT 0, 
 primary key(ProductId)
 );
 
 create table Orders (
 OrderId int NOT NULL,
 OrderDate date,
 OrderStatus ENUM('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',
 CustomerId int,
 ProductId int,
 primary key(OrderId),
 FOREIGN KEY (CustomerId) REFERENCES Customer_Account(CustomerId),
 FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
 );
 
 create table Shipping (
 ShippingID int NOT NULL,
 OrderID int,
 ShipmentDate date,
 shippingCity varchar(25),
 ShippingState varchar(25),
 shippingCountry varchar(25),
 ShippingZip_Code varchar(50),
 primary key(ShippingID),
 FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
 );
 
 
 
 

 
 
