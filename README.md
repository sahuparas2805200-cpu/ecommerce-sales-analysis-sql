🛒 E-Commerce Sales Analysis — MySQL
SQL-based analysis of customer behavior, sales performance, product performance, category revenue, and monthly sales trends using MySQL.

📌 Project Overview
This project uses SQL to analyze an e-commerce database and answer practical business questions around customers, orders, products, categories, and sales performance.

The analysis focuses on transforming transactional data into business insights using filtering, aggregation, joins, subqueries, CTEs, and window functions.

🎯 Business Objectives
The analysis aims to:

Identify key customer markets by location
Understand customer order-frequency patterns
Identify products with high revenue potential
Measure customer reach across product categories
Analyze month-over-month sales growth
Identify products with high purchase frequency
Identify the months with the highest sales volume
🗂️ Database Structure
The analysis uses the following core tables:

Table	Purpose
customers	Customer information and location
orders	Order-level transaction data
orderdetails	Product quantity and price information
products	Product and category information
🧹 Data Preparation
The SQL workflow begins with database setup and column-name standardization before the analytical queries are executed.

Key preparation steps include:

Creating and selecting the e-commerce database
Standardizing column names
Preparing customer, order, order-detail, and product tables for analysis
📊 Analysis Performed
1. Top Customer Markets
Identified the top 3 cities by customer count to understand important geographic markets for targeted marketing and logistics planning.

2. Customer Order Frequency
Grouped customers based on the number of orders placed to understand purchasing-frequency patterns.

3. Product Revenue Analysis
Identified products with an average purchase quantity of 2 while comparing their total revenue to highlight potentially higher-value products.

4. Category-Level Customer Reach
Calculated the unique number of customers purchasing from each product category.

5. Month-over-Month Sales Analysis
Calculated monthly total sales and month-over-month percentage change using LAG() to identify sales growth and decline trends.

6. Product Purchase Frequency
Identified products with the highest sales frequency based on order-detail records.

7. Top Sales Months
Identified the months with the highest total sales volume.

🧠 SQL Concepts Demonstrated
SELECT
WHERE
GROUP BY
HAVING
ORDER BY
Aggregate Functions
COUNT()
COUNT(DISTINCT ...)
SUM()
AVG()
JOIN
INNER JOIN
Subqueries
Common Table Expressions (CTEs)
Window Functions
LAG()
Date Functions
Percentage Calculations
Business-oriented SQL Problem Solving
🔍 Key Business Questions
The project addresses questions such as:

Which cities have the highest concentration of customers?
How frequently do customers place orders?
Which products combine purchase frequency with strong revenue?
Which categories attract the largest number of unique customers?
How is sales performance changing month over month?
Which products have the highest purchase frequency?
Which months generate the highest sales?
💡 Business Insights
The analysis can support decisions related to:

Geographic marketing prioritization
Customer retention and engagement
Product performance monitoring
Category strategy
Sales trend monitoring
Inventory and promotional planning
📸 SQL Analysis Results
1. Top Customer Markets
Top Customer Cities

<img width="1412" height="552" alt="top-customer-cities" src="https://github.com/user-attachments/assets/4ff35888-0944-4d48-900c-cd269a7619f6" />


2. Month-over-Month Sales Growth
   <img width="1408" height="635" alt="monthly-sales-growth" src="https://github.com/user-attachments/assets/344e8744-5699-4b92-87ae-e201901e7325" />


Using a CTE and the LAG() window function, monthly sales were compared with the previous month to identify growth and decline trends.

3. Category-Level Customer Reach
<img width="1316" height="680" alt="category-customer-reach" src="https://github.com/user-attachments/assets/650a05ac-5d49-4751-b6e2-42277aabff17" />


Multiple joins and COUNT(DISTINCT) were used to measure unique customers purchasing from each product category.

📂 Project Files
ecommerce-sales-analysis-sql/
│
├── Ecommerce_Sales_Analysis.sql
├── README.md
│
└── screenshots/
    ├── top-customer-cities.png
    ├── monthly-sales-growth.png
    └── category-customer-reach.png
