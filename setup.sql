-- Active: 1715846854933@@127.0.0.1@3306@stocks
-- Create the Customer table if it doesn't exist
CREATE TABLE IF NOT EXISTS Customer (
    Customer_id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_name VARCHAR(20) NOT NULL,
    Customer_tel BIGINT
);

-- Debugging statement
SELECT * FROM Customer;

-- Create the Product table if it doesn't exist
CREATE TABLE IF NOT EXISTS Product (
    Product_id INT AUTO_INCREMENT PRIMARY KEY,
    Product_name VARCHAR(20) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price >= 0) -- Assuming price is in decimal format
);

-- Debugging statement
SELECT * FROM Product;

-- Create the Orders table if it doesn't exist
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(Product_id)
);

-- Debugging statement
SELECT * FROM Orders;

ALTER TABLE product ADD Category VARCHAR(20);

ALTER TABLE orders ADD Order_date DATE DEFAULT SYSDATE
