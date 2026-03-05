CREATE DATABASE ecommerce_db;
 use ecommerce_db;

 show tables;
  describe E_Commerce_Dataset;

-- KPI SESSION---
SELECT SUM(`total sales`) as Total_sales
 FROM e_commerce_dataset;            

select count(Order_ID) as Total_Orders
 from e_commerce_dataset;  

SELECT avg(`total sales`) as avg_order_value
 FROM e_commerce_dataset;

 SELECT AVG(Customer_Rating) AS Avg_Rating
FROM e_commerce_dataset;

select avg(Session_Duration_Minutes) as avg_duration
 from e_commerce_dataset;                    


-- ANALYSIS QUERIES---
 SELECT Product_Category,
SUM(`Total sales`) AS total_sales
 FROM e_commerce_dataset
 GROUP BY Product_Category
 ORDER BY total_sales DESC;

 select City, sum(`Total sales`) as total_sales
 from e_commerce_dataset 
 group by City
 order by total_sales desc;

 select Payment_Method, count(Order_ID) as Orders
  from e_commerce_dataset
  group by Payment_Method
  order by Orders desc;

 select Device_Type, sum(`Total sales`) as Total_sales
 from e_commerce_dataset
 group by Device_type
 order by total_sales desc;

 select Date, sum(`Total sales`),sum(Unit_Price) as Total_sales
 from e_commerce_dataset
  group by date
  order by Total_sales desc;

 select Product_Category, avg(`Total sales`), avg(Session_Duration_Minutes) as product
 from e_commerce_dataset
 group by Product_Category
 order by product desc;                

