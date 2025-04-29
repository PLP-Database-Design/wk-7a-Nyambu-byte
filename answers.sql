-- Answer Question 1
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE OrderProducts (
    OrderProductID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    Product VARCHAR(100),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Answer Question 2
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);