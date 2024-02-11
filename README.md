# Superstores Dataset Analysis

This repository contains SQL scripts and data files for analyzing the Superstores dataset. The dataset includes information on customers, orders, sales, and product categories. The SQL queries provided perform basic and advanced analysis on the dataset, including identifying primary and foreign keys, extracting specific information about customers, orders, sales, and products, and deriving insights from the data.

# SQL ASSIGNMENT

# Instructions:-

1.Download the data files for this Assignment. Your first task is to create tables from 
the data files. In order to do so, please follow the steps given below: 

i. Open MySQL Workbench 

ii. Connect to your database using the connection you have created

iii. Create a database named Superstores

iv. In the “Navigator” pane on the left-hand side, you will find the created 
database 

v. Right click on the superstores

vi. You will see the option called “Table Data Import Wizard”. Click on it.

vii. Follow the wizard to create tables by providing the .csv data files that you 
have downloaded.

viii. You need to follow the “Table Data Import Wizard” for each data file given 
for this assignment.

# Task 1:- Understanding the Data

1. Describe the data in hand in your own words.

3. Identify and list the Primary Keys and Foreign Keys for this dataset provided to 
you(In case you don’t find either primary or foreign key, then specially mention 
this in your answer)

# Task 2:- Basic & Advanced Analysis

1. Write a query to display the Customer_Name and Customer Segment using alias 
name “Customer Name", "Customer Segment" from table Cust_dimen. 

2. Write a query to find all the details of the customer from the table cust_dimen 
order by desc.

3. Write a query to get the Order ID, Order date from table orders_dimen where 
‘Order Priority’ is high.

4. Find the total and the average sales (display total_sales and avg_sales) 

5. Write a query to get the maximum and minimum sales from maket_fact table.

6. Display the number of customers in each region in decreasing order of 
no_of_customers. The result should contain columns Region, no_of_customers.

7. Find the region having maximum customers (display the region name and 
max(no_of_customers)

8. Find all the customers from Atlantic region who have ever purchased ‘TABLES’ 
and the number of tables purchased (display the customer name, no_of_tables 
purchased) 

9. Find all the customers from Ontario province who own Small Business. (display 
the customer name, no of small business owners)

10. Find the number and id of products sold in decreasing order of products sold 
(display product id, no_of_products sold) 

11. Display product Id and product sub category whose produt category belongs to 
Furniture and Technlogy. The result should contain columns product id, product 
sub category.

12. Display the product categories in descending order of profits (display the product 
category wise profits i.e. product_category, profits)?

13. Display the product category, product sub-category and the profit within each 
subcategory in three columns. 

14. Display the order date, order quantity and the sales for the order.

15. Display the names of the customers whose name contains the 
 
 i) Second letter as ‘R’
 
 ii) Fourth letter as ‘D’

16. Write a SQL query to to make a list with Cust_Id, Sales, Customer Name and 
their region where sales are between 1000 and 5000.

17. Write a SQL query to find the 3rd highest sales.

18. Where is the least profitable product subcategory shipped the most? For the least 
profitable product sub-category, display the region-wise no_of_shipments and the 
profit made in each region in decreasing order of profits (i.e. region, 
no_of_shipments, profit_in_each_region)

 → Note: You can hardcode the name of the least profitable product subcategory

# Conclusion:

Through the analysis of the Superstores dataset, we were able to gain insights into customer behavior, sales trends, and product profitability. The SQL queries helped in extracting valuable information from the dataset, enabling better decision-making for the Superstores business.
