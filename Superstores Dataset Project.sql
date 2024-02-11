create database superstores;
use superstores;

# Task 1:- Understanding the Data
# 1. Describe the data in hand in your own words. 

-- I am working on database "superstores".--
-- It contains 5 tables cust_dimen,market_fact,orders_dimen,prod_dimen,shipping_dimen Respectively.-- 
-- *In cust_dimen we have 5 columns.*
-- 1. Customer_Name : It includes name of customer.
-- 2. Province :  specifies the specific province or state where each customer resides.
-- 3. Region : The 'Region' column categorizes provinces or states into larger geographical areas.
-- 4. Customer_Segment : It cantains market segments of each customer.
-- 5. Cust_id :  unique identifier for each customer.

-- *In market_fact we have 10 columns.*
-- 1. Ord_id: Unique identifier for each order.
-- 2. Prod_id: Unique identifier for each product.
-- 3. Ship_id: Unique identifier for each shipment.
-- 4. Cust_id: Unique identifier for each customer.
-- 5. Sales: Total sales amount for the order.
-- 6. Discount: Discount applied to the order.
-- 7. Order_Quantity: Quantity of products ordered.
-- 8. Profit: Profit generated from the order.
-- 9. Shipping_Cost: Cost incurred for shipping the order.
-- 10. Product_Base_Margin: Profit margin for the product.

-- *In orders_dimen we have 4 columns.*
-- 1. Order_ID: Unique identifier for each order.
-- 2. Order_Date: Date when the order was placed.
-- 3. Order_Priority: Priority level assigned to the order.
-- 4. Ord_id: Unique identifier for each order, likely related to the primary key or foreign key in another table.

-- *In prod_dimen we have 3 columns.*
-- 1. Product_Category: The broad category to which a product belongs.
-- 2. Product_Sub_Category: A more specific sub-category within the broader product category.
-- 3. Prod_id: Unique identifier for each product.

-- *In shipping_dimen we have 4 columns.*
-- 1. Order_ID: Unique identifier for each order.
-- 2. Ship_Mode: Method or mode of shipment for the order.
-- 3. Ship_Date: Date when the order was shipped.
-- 4. Ship_id: Unique identifier for each shipment, likely related to the primary key or foreign key in another table.

/* Identify and list the Primary Keys and Foreign Keys for this dataset provided to 
you(In case you don’t find either primary or foreign key, then specially mention 
this in your answer) */ 

/* 1. *cust_dimen*:
   - Primary Key: Cust_id
   - Foreign Keys: None mentioned.

2. *market_fact*:
   - Primary Key: Ord_id
   - Foreign Keys:
     - Cust_id (references cust_dimen.Cust_id)
     - Prod_id (references prod_dimen.Prod_id)
     - Ship_id (references shipping_dimen.Ship_id)

3. *orders_dimen*:
   - Primary Key: Order_ID
   - Foreign Keys: None mentioned.

4. *prod_dimen*:
   - Primary Key: Prod_id
   - Foreign Keys: None mentioned.

5. *shipping_dimen*:
   - Primary Key: Ship_id
   - Foreign Keys: None mentioned. */


/* 1. Write a query to display the Customer_Name and Customer Segment using alias 
name “Customer Name", "Customer Segment" from table Cust_dimen. */

SELECT Customer_Name AS 'Customer Name', Customer_Segment AS 'Customer Segment'
FROM Cust_dimen;

/* 2. Write a query to find all the details of the customer from the table cust_dimen 
order by desc */

SELECT * FROM cust_dimen
ORDER BY Customer_Name DESC;

/* 3. Write a query to get the Order ID, Order date from table orders_dimen where 
‘Order Priority’ is high. */

SELECT Order_ID, Order_Date
FROM orders_dimen
WHERE Order_Priority = 'high';

/* 4. Find the total and the average sales (display total_sales and avg_sales) */

SELECT SUM(Sales) AS total_sales, AVG(Sales) AS avg_sales
FROM market_fact;

/* 5. Write a query to get the maximum and minimum sales from maket_fact table. */

SELECT MAX(Sales), MIN(Sales)
FROM market_fact;

/* 6. Display the number of customers in each region in decreasing order of 
no_of_customers. The result should contain columns Region, no_of_customers. */

SELECT  Region, COUNT(Cust_id)
FROM cust_dimen 
GROUP BY Region
ORDER BY COUNT(Cust_id) DESC; 

/* 7. Find the region having maximum customers (display the region name and 
max(no_of_customers) */

select Region AS 'region name', count(Cust_id) as 'No_of_customer'
from cust_dimen
group by Region
limit 1;

/* 8. Find all the customers from Atlantic region who have ever purchased ‘TABLES’ 
and the number of tables purchased (display the customer name, no_of_tables 
purchased) */

SELECT a.Customer_Name, COUNT(c.Product_Sub_Category)
FROM cust_dimen AS a
JOIN market_fact AS b
ON a.Cust_id = b.Cust_id
JOIN prod_dimen AS c
ON c.Prod_id = b.Prod_id
WHERE a.Region = 'Atlantic' AND c.Product_Sub_Category = 'Tables'
GROUP BY a.Customer_Name;

/* 9. Find all the customers from Ontario province who own Small Business. (display 
the customer name, no of small business owners) */

SELECT Province, Customer_Name
FROM cust_dimen
WHERE Province = 'Ontario';

/* 10. Find the number and id of products sold in decreasing order of products sold 
(display product id, no_of_products sold) */

SELECT Prod_id, SUM(Prod_id) AS 'No. of product sold'
FROM prod_dimen
GROUP BY Custom



































