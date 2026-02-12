-- Day 3: SQL Coding Challenge – Clauses & Operators 
-- 1️.Create Database
CREATE DATABASE ECommerceDB;
USE ECommerceDB;

-- 2️.Create Product Table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0)
);

-- 3️.Create Sales Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT CHECK (quantity > 0),
    sale_amount DECIMAL(10,2) CHECK (sale_amount > 0),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- 4️.Insert Sample Data into Product Table
INSERT INTO Product (product_id, product_name, price) VALUES
(1, 'Laptop', 85000.00),
(2, 'Smartphone', 45000.00),
(3, 'Headphones', 5000.00),
(4, 'Keyboard', 1200.00),
(5, 'Mouse', 800.00),
(6, 'Monitor', 15000.00),
(7, 'Webcam', 3500.00);

-- 5️.Insert Sample Data into Sales Table
INSERT INTO Sales (sale_id, product_id, quantity, sale_amount) VALUES
(1, 1, 2, 170000.00),
(2, 2, 3, 135000.00),
(3, 3, 5, 25000.00),
(4, 4, 10, 12000.00),
(5, 5, 15, 12000.00),
(6, 6, 2, 30000.00),
(7, 7, 4, 14000.00);


-- Management wants to see the top 3 highest-priced products in the e-commerce system.
select product_id,product_name,max(price) as max_price from product group by product_id,product_name order by max_price desc limit 3; 

-- Management wants summary statistics of the sales data.
select count(*) as total_sales_records,sum(sale_amount) as total_sales,avg(sale_amount) as average_sale_amount,
max(sale_amount) as highest_sale_amount,min(sale_amount) as lowest_sale_amount from sales;

-- Management wants to know which products have total sales amount greater than ₹100.
select product_id,product_name,sum(price) as total_sales_above_100 from product 
group by product_id,product_name having total_sales_above_100>100;

-- Management wants a ranking of products based on their prices.
select product_id, product_name, price, 
dense_rank() over(order by price desc) 
as product_ranking from product;

-- DAY 4: SQL CODING CHALLENGE – SORTING & AGGREGATES 
-- List all products sorted by price descending.
select * from product order by price desc;

-- Show the top 3 most expensive products.
select * from product order by price desc limit 3;

-- Find the total sales amount across all sales.
select sum(sale_amount) as total_sales from sales;

-- Find the average sale amount from the Sales table.
select avg(sale_amount) as avg_sales from sales;

-- Count total number of sales.Find highest and lowest sale amounts.
select count(*) as total_no_of_sales, max(sale_amount) as highest_sales_amount,
min(sale_amount) as lowest_sales_amount from sales;

-- Find total sales amount per product.
select product_id,SUM(sale_amount) as total_sales from sales group by product_id;

-- List products whose total sales exceed ₹50,000.
select p.product_id, p.product_name, sum(s.sale_amount) as total_sales_amount from product p join sales s 
on p.product_id=s.product_id group by p.product_id, p.product_name having total_sales_amount>50000; 

-- Show total sales per product, sorted descending by total sales.
select p.product_id, p.product_name, sum(s.sale_amount) as total_sales_amount from product p join sales s 
on p.product_id=s.product_id group by p.product_id, p.product_name order by total_sales_amount desc; 

-- Find the top 3 products by total sales amount.
select p.product_id, p.product_name, sum(s.sale_amount) as total_sales_amount from product p join sales s 
on p.product_id=s.product_id group by p.product_id, p.product_name order by total_sales_amount desc limit 3;

-- Show products with total sales > ₹30,000 AND average sale amount > ₹10,000.
select p.product_id, p.product_name, sum(s.sale_amount) as total_sales_amount, avg(s.sale_amount) as average_sales
from product p join sales s 
on p.product_id=s.product_id 
group by p.product_id, p.product_name having total_sales_amount>30000 and average_sales>10000; 
















