# 🛒 E-Commerce Sales Analysis — MySQL

> SQL-based analysis of customer behavior, sales performance, product performance, category revenue, and monthly sales trends using MySQL.

---

## 📌 Project Overview

This project uses SQL to analyze an e-commerce database and answer practical business questions around **customers, orders, products, categories, and sales performance**.

The analysis focuses on transforming transactional data into meaningful business insights using:

- Filtering
- Aggregation
- Joins
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- Date Functions

---

## 🎯 Business Objectives

The analysis aims to:

- Identify key customer markets by location
- Understand customer order-frequency patterns
- Identify products with high revenue potential
- Measure customer reach across product categories
- Analyze month-over-month sales growth
- Identify products with high purchase frequency
- Identify the months with the highest sales volume

---

## 🗂️ Database Structure

The analysis uses the following core tables:

| Table | Purpose |
|---|---|
| `customers` | Customer information and location |
| `orders` | Order-level transaction data |
| `orderdetails` | Product quantity and price information |
| `products` | Product and category information |

### 🔗 Table Relationships

```text
Customers
    │
    └── Orders
          │
          └── OrderDetails
                    │
                    └── Products
🧹 Data Preparation
Before performing the analysis, the SQL workflow includes basic data preparation steps.

Preparation Steps
Create the e-commerce database

Select the required database

Standardize column names

Prepare customer, order, order-detail, and product tables

Ensure tables are ready for analytical queries

📊 Analysis Performed
1. 🌍 Top Customer Markets
Business Question
Which cities have the highest concentration of customers?

The analysis identifies the top 3 cities by customer count to understand the most important geographic markets.

Key Result
The top customer cities identified are:

Delhi

Chennai

Jaipur

Business Use
This analysis can support:

Geographic marketing

Customer acquisition

Logistics planning

Regional business strategies

📸 Result
2. 👥 Customer Order Frequency
Business Question
How frequently do customers place orders?

Customers are grouped according to the number of orders they have placed.

This helps understand different purchasing-frequency patterns, such as:

One-time customers

Occasional customers

Repeat customers

Frequent buyers

Business Use
The results can support:

Customer retention strategies

Customer segmentation

Loyalty programs

Engagement analysis

3. 💰 Product Revenue Analysis
Business Question
Which products combine purchase frequency with strong revenue?

Products are analyzed using:

Average purchase quantity

Total revenue

Product-level sales information

Products with an average purchase quantity of 2 units are compared based on their total revenue.

Business Use
This analysis helps with:

Product performance monitoring

Revenue analysis

Product strategy

Identifying potentially valuable products

4. 🏷️ Category-Level Customer Reach
Business Question
Which product categories attract the largest number of unique customers?

The analysis calculates the number of unique customers purchasing from each product category using:

COUNT(DISTINCT customer_id)

Business Use
This can help understand:

Category popularity

Customer reach

Cross-selling opportunities

Category-level strategy

📸 Result
5. 📈 Month-over-Month Sales Analysis
Business Question
How is sales performance changing month over month?

Monthly sales are calculated and compared with the previous month using the LAG() window function.

Analysis Includes
Monthly total sales

Previous month's sales

Month-over-month sales change

Percentage growth or decline

SQL Techniques Used
WITH monthly_sales AS (...)

LAG(total_sales) OVER (
    ORDER BY sales_month
)

Business Use
This analysis can support:

Sales performance monitoring

Trend analysis

Seasonal analysis

Business planning

📸 Result
6. 🛍️ Product Purchase Frequency
Business Question
Which products have the highest purchase frequency?

Products are analyzed based on the number of times they appear in order-detail records.

This identifies products that are frequently purchased across transactions.

Business Use
The results can support:

Inventory planning

Product monitoring

Stock management

Promotional planning

7. 📅 Top Sales Months
Business Question
Which months generate the highest sales?

Monthly sales totals are calculated and ranked to identify the months with the highest sales volume.

Business Use
This analysis can support:

Inventory planning

Promotional campaigns

Sales planning

Resource allocation

Demand analysis

🧠 SQL Concepts Demonstrated
This project demonstrates practical use of the following MySQL concepts:

Basic SQL
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

Data Combination
JOIN

INNER JOIN

Multiple-table joins

Advanced SQL
Subqueries

Common Table Expressions (CTEs)

Window Functions

LAG()

Date & Calculation Functions
Date extraction

Monthly aggregation

Percentage calculations

Month-over-month analysis

🔍 Key Business Questions
The project answers the following business questions:

#	Business Question
1	Which cities have the highest concentration of customers?
2	How frequently do customers place orders?
3	Which products combine purchase frequency with strong revenue?
4	Which categories attract the largest number of unique customers?
5	How is sales performance changing month over month?
6	Which products have the highest purchase frequency?
7	Which months generate the highest sales?

💡 Business Insights
The analysis provides insights that can support several business areas:

📍 Geographic Marketing
Identify major customer markets for targeted marketing and regional planning.

👥 Customer Retention
Understand customer purchasing frequency and identify repeat-purchase patterns.

🛍️ Product Strategy
Monitor product purchase frequency and revenue performance.

🏷️ Category Strategy
Measure customer reach across different product categories.

📈 Sales Monitoring
Track monthly sales performance and identify growth or decline periods.

📦 Inventory Planning
Use product purchase frequency and monthly sales trends to support inventory decisions.

🎯 Promotional Planning
Identify high-sales periods that may be useful for promotional and campaign planning.

📸 Analysis Results
🌍 Top Customer Cities
<img width="1412" height="552" alt="top-customer-cities" src="https://github.com/user-attachments/assets/e2242190-7efa-4a37-b36e-43aa49c607ae" />

Delhi, Chennai, and Jaipur were identified as the top customer cities based on customer count.

📈 Monthly Sales Growth
<img width="1408" height="635" alt="monthly-sales-growth" src="https://github.com/user-attachments/assets/a9f6e22f-8414-43fb-94b9-c3a14f75dd97" />

A CTE combined with the LAG() window function was used to compare monthly sales with the previous month.

🏷️ Category Customer Reach
<img width="1316" height="680" alt="category-customer-reach" src="https://github.com/user-attachments/assets/6e8dae0b-112a-4aeb-b9b5-ae14e425d07a" />

Multiple joins and COUNT(DISTINCT) were used to calculate the number of unique customers purchasing from each category.

📂 Project Structure
ecommerce-sales-analysis-sql/
│
├── 📄 Ecommerce_Sales_Analysis.sql
├── 📄 README.md
│
└── 📁 screenshots/
    ├── 🖼️ top-customer-cities.png
    ├── 🖼️ monthly-sales-growth.png
    └── 🖼️ category-customer-reach.png

🛠️ Tools & Technologies
Technology	Usage
🐬 MySQL	SQL analysis and querying
📊 SQL	Data analysis
🗃️ Relational Database	Transactional data analysis
🐙 GitHub	Project documentation and version control

🚀 How to Run the Project
1. Clone the Repository
git clone <your-repository-url>

2. Open the SQL File
Open:

Ecommerce_Sales_Analysis.sql

using MySQL Workbench or another MySQL-compatible SQL environment.

3. Create the Database
Run the database creation and table preparation queries.

4. Execute the Analysis
Run the analytical queries section by section to reproduce the results.

5. Review the Results
The screenshots inside the screenshots/ folder provide examples of the analysis output.

📌 Project Highlights
✅ Practical e-commerce business analysis

✅ Customer behavior analysis

✅ Product performance analysis

✅ Category-level analysis

✅ Monthly sales trend analysis

✅ Month-over-month growth calculation

✅ Advanced SQL using CTEs and window functions

✅ Business-focused SQL problem solving

👨‍💻 Author
Your Name

📌 Data Analytics | SQL | MySQL | Business Intelligence

⭐ If you found this project useful, consider giving the repository a star!


### Small improvement I recommend

For the GitHub README, I would **not repeat the same screenshots twice**. Your screenshot section can be cleaner if you use the analysis sections themselves to show the output:

```text
📊 Analysis Performed
    │
    ├── 🌍 Top Customer Markets
    │      └── Screenshot
    │
    ├── 👥 Customer Order Frequency
    │
    ├── 💰 Product Revenue Analysis
    │
    ├── 🏷️ Category Customer Reach
    │      └── Screenshot
    │
    ├── 📈 Month-over-Month Sales
    │      └── Screenshot
    │
    ├── 🛍️ Product Purchase Frequency
    │
    └── 📅 Top Sales Months
