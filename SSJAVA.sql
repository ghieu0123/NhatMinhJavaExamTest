CREATE DATABASE SSJAVA4;

USE SSJAVA4;

-- T?o b?ng Catalogs
CREATE TABLE Catalogs (
    Id BIGINT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(150) NOT NULL,
    status BIT NOT NULL
);
GO

-- T?o b?ng Products
CREATE TABLE Products (
    Id BIGINT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(150) NOT NULL,
    picture NVARCHAR(200),
    price BIGINT NOT NULL,
    catalog_Id BIGINT,
    FOREIGN KEY (catalog_Id) REFERENCES Catalogs(Id)
);
GO

-- T?o b?ng Users
CREATE TABLE Users (
    Id BIGINT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    fullname NVARCHAR(150),
    status BIT NOT NULL
);
GO

-- T?o b?ng Orders
CREATE TABLE Orders (
    Id BIGINT IDENTITY(1,1) PRIMARY KEY,
    user_id BIGINT NOT NULL,
    total_qty INT,
    total_amount BIGINT,
    status BIT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(Id)
);
GO

-- T?o b?ng OrderDetails
CREATE TABLE OrderDetails (
    Id BIGINT IDENTITY(1,1) PRIMARY KEY,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    unit_price BIGINT,
    qty INT,
    FOREIGN KEY (order_id) REFERENCES Orders(Id),
    FOREIGN KEY (product_id) REFERENCES Products(Id)
);
GO

INSERT INTO Catalogs (name, status) VALUES ('Adidas', 1);
INSERT INTO Catalogs (name, status) VALUES ('Nike', 1);

INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Giày Nike Dunk Disrupt 2 Tr?ng Xanh Lá', 'https://giayxshop.vn/wp-content/uploads/2022/12/z4775083268092_78c5bfdaa29be6bb9f40296ea0f2ed52-600x600.jpg', 5000000, 1);
INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Nike Air Force 1 Shadow Full Tr?ng REP', 'https://giayxshop.vn/wp-content/uploads/2021/12/24-8-300x300.jpg', 15000000, 1);
INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Nike Air Force 1 Shadow Xanh Xám REP', 'https://giayxshop.vn/wp-content/uploads/2023/08/z5452248093192_1d46bd482a682eca3e17d2bfac91b472-600x600.jpg', 200000, 2);
INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Nike Air Force 1 Full Tr?ng REP 1:1', 'https://giayxshop.vn/wp-content/uploads/2024/05/1-1-300x300.jpg', 300000, 1);
INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Nike Jordan 1 High ?en Tr?ng REP 1:1', 'https://giayxshop.vn/wp-content/uploads/2020/12/z5485014596906_1b83c2fd7c991b88515bcd8aa1520276-300x300.jpg', 2500000, 2);

INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Giày Nike Dunk Disrupt 2 Tr?ng Xanh Lá', 'https://giayxshop.vn/wp-content/uploads/2022/12/z4775083268092_78c5bfdaa29be6bb9f40296ea0f2ed52-600x600.jpg', 5000000, 1);
INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Nike Air Force 1 Shadow Full Tr?ng REP', 'https://giayxshop.vn/wp-content/uploads/2021/12/24-8-300x300.jpg', 15000000, 1);
INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Nike Air Force 1 Shadow Xanh Xám REP', 'https://giayxshop.vn/wp-content/uploads/2023/08/z5452248093192_1d46bd482a682eca3e17d2bfac91b472-600x600.jpg', 200000, 2);
INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Nike Air Force 1 Full Tr?ng REP 1:1', 'https://giayxshop.vn/wp-content/uploads/2024/05/1-1-300x300.jpg', 300000, 1);
INSERT INTO Products (name, picture, price, catalog_Id) VALUES ('Nike Jordan 1 High ?en Tr?ng REP 1:1', 'https://giayxshop.vn/wp-content/uploads/2020/12/z5485014596906_1b83c2fd7c991b88515bcd8aa1520276-300x300.jpg', 2500000, 2);

UPDATE Products
SET name='Áo thun Racquet Sport Graphic Blue Pattern'
WHERE name='Giày Nike Dunk Disrupt 2 Tr?ng Xanh Lá';

UPDATE Products
SET picture='https://media3.coolmate.me/cdn-cgi/image/quality=80,format=auto/uploads/August2024/24CMAW.AT035.14.jpg'
WHERE name='Áo thun Racquet Sport Graphic Blue Pattern';

UPDATE Products
SET name='Áo thun Racquet Sport Graphic Red Line'
WHERE name='Nike Air Force 1 Full Tr?ng REP 1:1';

UPDATE Products
SET picture='https://media3.coolmate.me/cdn-cgi/image/quality=80,format=auto/uploads/August2024/24CMAW.AT034.13.jpg'
WHERE name='Áo thun Racquet Sport Graphic Red Line';

SELECT * FROM Products