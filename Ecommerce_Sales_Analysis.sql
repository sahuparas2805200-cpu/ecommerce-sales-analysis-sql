create database e_commerce_company;
use e_commerce_company;

#---------------------------------------------------------------------------------

#cleaning column names 

alter table customers
rename column ï»¿customer_id to customer_id;

alter table orderdetails
rename column ï»¿order_id to order_id;

alter table orders
rename column ï»¿order_id to order_id;

alter table products
rename column _roduct_id to product_id;

#----------------------------------------------------------------------------------

#Identify the top 3 cities with the highest number of customers to determine key markets for targeted marketing and logistic optimization.

select location,
count(customer_id) as number_of_customers
from customers
group by location
order by number_of_customers desc
limit 3;


#----------------------------------------------------------------------------------
#Determine how many customers fall into each order frequency category based on the number of orders they have placed.

#Using the Orders table, calculate the number of customers who placed 1 order, 2 orders, 3 orders, etc.

select NumberOfOrders,count(customer_id) as CustomerCount from 
(select customer_id, count(order_id) as NumberOfOrders
from orders
group by customer_id) t 
group by NumberOfOrders 
order by NumberOfOrders;

#----------------------------------------------------------------------------------
#Identify products where the average purchase quantity per order is 2 but with a high total revenue, suggesting premium product trends.

select Product_Id,
avg(quantity) as AvgQuantity,
sum(quantity*PRICE_PER_UNIT) as TotalRevenue
from orderdetails
group by Product_Id
having AvgQuantity =2
order by TotalRevenue desc;

#----------------------------------------------------------------------------------
#For each product category, calculate the unique number of customers purchasing from it.

select p.category,
count(distinct o.customer_id) as unique_customers
from  products as p
join orderdetails as od 
on p.product_id=od.product_id
join orders as o 
on od.order_id=o.order_id
group by category
order by unique_customers desc;

#----------------------------------------------------------------------------------
#Analyze the month-on-month percentage change in total sales to identify growth trends.

with monthlysales as (
    select Date_Format(order_date,"%Y-%m") as Month,
    sum(total_amount) as TotalSales
    from orders
    group by 1
)
select Month,
TotalSales,
round(
    ((TotalSales-lag(TotalSales)over (order by Month))/
lag(TotalSales)over (order by month))*100,2)as PercentChange
from monthlysales
order by Month;

#----------------------------------------------------------------------------------
#Based on sales data, identify products with the fastest turnover rates.
select product_id,
count(quantity) as SalesFrequency
from orderDetails
group by product_id
order by SalesFrequency desc
limit 5;


#----------------------------------------------------------------------------------
#identify the months with the highest sales volume
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS Month, 
    SUM(total_amount) AS TotalSales
FROM Orders
GROUP BY Month
ORDER BY TotalSales DESC
LIMIT 3;

select * from products limit 10;
