use OnlineShoppingMall; 


create table Customer_Account (
CustomerId int NOT NULL,
FirstName varchar(25),
LastName varchar(25),
CustomerNumber BIGINT NOT NULL,
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
 FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
 );


INSERT INTO Customer_Account (CustomerId, FirstName, LastName, CustomerNumber, CustomerEmail) VALUES
(001504,  'Sarah',   'Ahmed',   966-572335859, 'Sarah.Ahmed@email.com'),
(000178,  'Dema',     'Alotaibi',     966-576478427, 'Dema.Alotaibi@email.com'),
(047516,  'Khalid',   'Al-ghamdi',  966-585980628, 'Khalid.Al-ghamdi@email.com'),
(030059,  'David',   'Brown',     33-781683961, 'david.brown@email.com'),
(048677,  'Renad',     'Salman',  966-504723407, 'Renad.Salman@email.com'),
(042705,  'Frank',   'Garcia',    33-760163311, 'frank.garcia@email.com'),
(037667,  'Grace',   'Lee',       44-7855061909, 'grace.lee@email.com'),
(031165,  'Henry',   'Wilson',    44-7472267712, 'henry.wilson@email.com');

INSERT INTO Payment (PaymentId, Payment_Amount, Payment_date, Payment_method) VALUES
(182917, 129.99, '2026-01-05', 'Credit Card'),
(191865, 249.50, '2026-01-10', 'PayPal'),
(156243,  89.00, '2026-01-15', 'Debit Card'),
(135428, 399.99, '2026-02-01', 'Cash on Delivery'),
(161024,  59.95, '2026-02-14', 'Bank Transfer'),
(147392, 179.00, '2026-03-03', 'PayPal'),
(154801, 319.49, '2026-03-20', 'Cash on Delivery'),
(191340,  45.00, '2026-04-01', 'Debit Card');
 
 INSERT INTO Products (ProductId, ProductName, ProductPrice, ProductCategory, Stock_Quantity) VALUES
(00014, 'Wireless Headphones',    129.99, 'Electronics',  80),
(00040, 'Running Shoes',           89.99, 'Footwear',    150),
(00044, 'Coffee Maker',           249.50, 'Appliances',   45),
(00029, 'T-Shirt',                29.99, 'Clothing',      200),
(00023, 'Smartwatch',              19.99, 'Accessories',  300),
(00030, 'Laptop Backpack',         79.00, 'Bags',         160),
(00028, '4K Monitor',             399.99, 'Electronics',  125),
(00046, 'Smartphone Case',       119.49, 'Electronics',  90);

INSERT INTO Orders (OrderId, OrderDate, OrderStatus, CustomerId, ProductId) VALUES
(2847291, '2026-01-05', 'Delivered',  001504, 00014),
(2523846, '2026-01-10', 'Delivered',  000178, 00044),
(2719463, '2026-01-15', 'Shipped',    047516, 00040),
(2385702, '2026-02-01', 'Delivered',  030059, 00028),
(2961527, '2026-02-14', 'Cancelled',  048677, 00029),
(2634891, '2026-03-03', 'Processing', 042705, 00030),
(2478265, '2026-03-20', 'Pending',    037667, 00046),
(2365189, '2026-04-01', 'Shipped',    031165, 00023);

INSERT INTO Shipping (ShippingID, OrderID, ShipmentDate, ShippingCity, ShippingState, ShippingCountry, ShippingZip_Code) VALUES
(31967, 2847291, '2026-01-06', 'Saudi Arabia',     'Jeddah',     'KSA', '10001'),
(31298, 2523846, '2026-01-11', 'Saudi Arabia',      'Taif',   'KSA', '90001'),
(300908, 2719463, '2026-01-17', 'saudi Arabia',     'Riyadh',     'KSA', '60601'),
(301164, 2385702, '2026-02-03', 'Houston',         'Texas',        'USA', '77001'),
(301411, 2961527,  NULL ,        'Saudi Arbia',    'Jeddah',      'KSA', '85001'),  
(301494, 2634891, '2026-03-05', 'Philadelphia',  'Pennsylvania', 'USA', '19101'),
(301676, 2478265,  '2026-08-20' ,  'San Antonio' ,  'Texas',        'USA', '78201'),  
(301217, 2365189, '2026-04-02',  'San Diego',    ' California',   'USA', '92101');

 
 
 

 
 
