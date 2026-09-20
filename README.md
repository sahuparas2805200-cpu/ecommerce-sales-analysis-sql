🛒 E-Commerce Sales Analysis — MySQL

A SQL-based analysis of e-commerce sales data using MySQL to uncover customer behavior, sales performance, product performance, category reach, and monthly sales trends.

The project focuses on transforming transactional data into meaningful business insights using SQL queries, joins, aggregations, subqueries, CTEs, date functions, and window functions.

📌 Project Overview

This project analyzes an e-commerce database containing information about:

Customers and their locations

Orders and transaction dates

Products and product categories

Order quantities and prices

The analysis answers practical business questions related to customer purchasing behavior, geographic markets, product performance, category reach, and sales trends.

🎯 Business Objectives

The main objectives of this analysis are to:

Identify key customer markets by location

Understand customer order-frequency patterns

Analyze product revenue and purchase behavior

Measure customer reach across product categories

Track month-over-month sales performance

Identify products with high purchase frequency

Determine the months generating the highest sales

🗂️ Database Structure

The analysis uses four core tables:

Table	Description
customers	Contains customer information and location
orders	Contains order-level transaction data
orderdetails	Contains product quantity and pricing information
products	Contains product and category information
🔗 Table Relationships
customers
    │
    └── orders
          │
          └── orderdetails
                    │
                    └── products

🧹 Data Preparation

Before performing the analysis, the SQL workflow includes basic database preparation:

Creating the e-commerce database

Selecting the appropriate database

Standardizing column names

Preparing customer, order, order-detail, and product tables

Ensuring the data is structured appropriately for analysis

📊 Analysis Performed
1. 🌍 Top Customer Markets

Identified the top 3 cities by customer count to understand the major geographic markets represented in the dataset.

Business Use:

Geographic marketing prioritization

Logistics planning

Customer acquisition strategies

Result:

The top customer cities identified in the analysis are:

Delhi

Chennai

Jaipur

2. 👥 Customer Order Frequency

Grouped customers according to the number of orders they placed to understand purchasing-frequency patterns.

This helps identify:

One-time customers

Repeat customers

Frequent buyers

Customer engagement patterns

3. 💰 Product Revenue Analysis

Analyzed products based on their average purchase quantity and total revenue.

Products with an average purchase quantity of approximately 2 units were evaluated to understand how purchase volume relates to revenue generation.

Business Use:

Product performance monitoring

Revenue optimization

Identifying potentially valuable products

4. 🏷️ Category-Level Customer Reach

Calculated the number of unique customers purchasing from each product category using COUNT(DISTINCT ...).

This analysis helps understand which categories have broader customer reach.

Business Use:

Category strategy

Customer segmentation

Cross-selling opportunities

5. 📈 Month-over-Month Sales Analysis

Calculated monthly total sales and compared each month with the previous month using the LAG() window function.

The analysis calculates month-over-month percentage change to identify:

Sales growth

Sales decline

Changing monthly performance

Potential seasonal patterns

SQL Techniques Used
LAG()
CTE
SUM()
GROUP BY
Date Functions
Percentage Calculations

6. 🛍️ Product Purchase Frequency

Identified products with the highest purchase frequency based on the number of order-detail records.

This provides insight into products that are purchased frequently across transactions.

Business Use:

Inventory planning

Product monitoring

Promotional planning

7. 📅 Top Sales Months

Analyzed monthly sales totals to identify the months generating the highest sales volume.

This can help businesses understand periods of higher demand and support:

Inventory planning

Promotional campaigns

Sales forecasting

Resource allocation

🧠 SQL Concepts Demonstrated

This project demonstrates practical use of the following MySQL concepts:

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

The analysis answers questions such as:

Which cities have the highest concentration of customers?

How frequently do customers place orders?

Which products combine purchase frequency with strong revenue?

Which categories attract the largest number of unique customers?

How is sales performance changing month over month?

Which products have the highest purchase frequency?

Which months generate the highest sales?

💡 Business Insights

The analysis can support business decisions related to:

📍 Geographic Marketing — Prioritize major customer markets.

👥 Customer Retention — Understand repeat-purchase behavior.

🛍️ Product Strategy — Identify frequently purchased and higher-revenue products.

🏷️ Category Strategy — Understand customer reach across categories.

📈 Sales Monitoring — Track monthly sales growth and decline.

📦 Inventory Planning — Identify products and periods with higher demand.

🎯 Promotional Planning — Use sales trends to support campaign planning.

📸 SQL Analysis Results
1. Top Customer Cities
<img width="1412" height="552" alt="top-customer-cities" src="https://github.com/user-attachments/assets/9ed5353c-47f6-4550-894b-1c6796052d97" />

The analysis identified Delhi, Chennai, and Jaipur as the top customer cities based on customer count.

2. Month-over-Month Sales Growth
<img width="1408" height="635" alt="monthly-sales-growth" src="https://github.com/user-attachments/assets/71942c88-27e1-491f-98a9-b58bc0976a4d" />

Monthly sales were analyzed using a CTE and the LAG() window function to compare each month's sales with the previous month.

3. Category Customer Reach
<img width="1316" height="680" alt="category-customer-reach" src="https://github.com/user-attachments/assets/b3033850-3747-4d86-924f-9d3dc100af11" />

Multiple joins and COUNT(DISTINCT) were used to calculate the number of unique customers purchasing from each product category.

📂 Project Structure
ecommerce-sales-analysis-sql/
│
├── Ecommerce_Sales_Analysis.sql
├── README.md
│
└── screenshots/
    ├── top-customer-cities.png
    ├── monthly-sales-growth.png
    └── category-customer-reach.png

🛠️ Tools & Technologies

MySQL

SQL

GitHub

Data Analysis

Business Intelligence

🚀 How to Use

Clone or download this repository.

Open Ecommerce_Sales_Analysis.sql in MySQL Workbench or another MySQL-compatible SQL environment.

Create/select the required database.

Execute the data preparation queries.

Run the analytical queries to reproduce the results.

Review the output and screenshots in the screenshots folder.

📌 Conclusion

This project demonstrates how MySQL and SQL can be used to transform raw e-commerce transaction data into actionable business insights.

By combining aggregation, joins, subqueries, CTEs, date functions, and window functions, the analysis provides a practical view of customer behavior, product performance, category reach, and sales trends.

⭐ If you found this project useful, feel free to explore the SQL queries and give the repository a star!
