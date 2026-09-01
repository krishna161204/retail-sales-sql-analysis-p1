--create database
create database sql_retail

--create table 
create table retail_sales(
		transactions_id	int primary key ,
		sale_date date,
		sale_time time,	
		customer_id	int,
		gender varchar(10),	
		age	int,
		category varchar(20),	
		quantiy	int,
		price_per_unit float,	
		cogs float,
		total_sale float

);

--select everything from the table
select * from retail_sales
limit 10;

--rename quantiy to quantity
alter table retail_sales 
rename quantiy to quantity;

--get rows where null values exist , DATA CLEANING 
select * from retail_sales
where 
	transactions_id is null
	or
	sale_date is null
	or
	sale_time is null 
	or 
	customer_id is null
	or 
	gender is null
	or 
	category is null
	or
	quantity is null
	or
	cogs is null
	or
	total_sale is null;

--delete all the rows which has null values 
delete from retail_sales 
where 
	transactions_id is null
	or
	sale_date is null
	or
	sale_time is null 
	or 
	customer_id is null
	or 
	gender is null
	or 
	category is null
	or
	quantity is null
	or
	cogs is null
	or
	total_sale is null;



--data exploration 

--count all the rows
select count(*) from retail_sales;

--total number of customers
select count(customer_id) as customers from retail_sales;

--total number of distinct customers
select count(distinct customer_id) as distinct_customers from retail_sales;

--categories
select distinct category as distinct_customers from retail_sales;

--Data analysis and business key problems

--q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'
select * from retail_sales
where sale_date='2022-11-05';

--Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 3 in the month of Nov-2022

select * from retail_sales
where 
	category='Clothing'
	and
	sale_date :: text like '2022-11%'
	and
	quantity>=3;

--Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

select 
	category , 
	sum(total_sale) as net_sale,
	count(*) as total_orders
from retail_sales
group by category;

--Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select
	round(avg(age),2 )as avg_age
from retail_sales
where category='Beauty';


--Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

select * from retail_sales
where
	total_sale>1000;

--Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select 
	category,
	gender,
	count(transactions_id) as total_transactions
from retail_sales 
group by 
	category,
	gender
order by 
	category;

--Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year


SELECT year1,month1,total_avg
FROM(
	SELECT EXTRACT(YEAR FROM sale_date) as year1,
	EXTRACT(MONTH FROM sale_date) as month1,
	AVG(total_sale) AS total_avg,
	RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) AS kum
	FROM retail_sales
	GROUP BY 
		EXTRACT(YEAR FROM sale_date),EXTRACT(MONTH FROM sale_date)
) as krishu
WHERE kum = 1
ORDER BY year1 ASC;

--Q.8 Write a SQL query to find the top 5 customers based on the highest total sale
SELECT 
	customer_id,
	sum(total_sale) as cost_spent
	from retail_sales
	GROUP BY
		customer_id
	order by cost_spent desc
	LIMIT 5;

--Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

select 
	category,
	count(distinct customer_id) as unique_customers
from retail_sales
group by category


--Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

with shift_col as(
select *,
	case
		when extract(hour from sale_time)<12 then 'Morning' 
		when extract(hour from sale_time) between 12 and 17 then 'Afternoon'
		else 'Evening'
	end as shift
from retail_sales
)
select 
	shift,
	count(customer_id)
from shift_col
group by shift





