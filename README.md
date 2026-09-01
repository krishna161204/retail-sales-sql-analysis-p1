# retail-sales-sql-analysis-p1
# Retail Sales SQL Analysis

## 📌 Project Overview

This project focuses on analyzing a **retail sales dataset using SQL**. The objective is to clean the data, explore the dataset, and answer important business questions using SQL queries.

The project covers database and table creation, data cleaning, exploratory data analysis, aggregation, filtering, grouping, ranking, and time-based analysis.

## 🛠️ Tools & Technologies

* **SQL**
* **PostgreSQL**
* GitHub

## 📂 Dataset

The project uses a retail sales dataset containing information about:

* Transaction ID
* Sale Date
* Sale Time
* Customer ID
* Gender
* Age
* Product Category
* Quantity
* Price Per Unit
* Cost of Goods Sold (COGS)
* Total Sale

The main table created for the analysis is:

```sql
retail_sales
```

## 🔧 Data Cleaning

Before performing the analysis, the dataset was checked and cleaned.

The following steps were performed:

* Checked for missing/null values.
* Removed records containing null values in important columns.
* Corrected the column name `quantiy` to `quantity`.
* Verified the structure and contents of the retail sales table.

## 🔍 Exploratory Data Analysis

Initial exploration was performed to understand the dataset, including:

* Total number of records
* Total number of customers
* Number of distinct customers
* Available product categories

## 📊 Business Questions & Analysis

The project answers the following business questions:

### 1. Sales on a Specific Date

Retrieve all sales transactions made on **November 5, 2022**.

### 2. Clothing Sales Analysis

Find Clothing transactions where the quantity sold is at least 3 during November 2022.

### 3. Sales by Category

Calculate the total sales and number of orders for each product category.

### 4. Average Customer Age – Beauty Category

Calculate the average age of customers who purchased products from the Beauty category.

### 5. High-Value Transactions

Identify transactions where the total sale amount is greater than 1000.

### 6. Transactions by Gender and Category

Calculate the number of transactions made by each gender within each product category.

### 7. Best-Selling Month

Calculate the average sale for each month and identify the best-performing month for each year using a SQL window function.

### 8. Top 5 Customers

Identify the top 5 customers based on their total spending.

### 9. Unique Customers by Category

Calculate the number of unique customers who purchased products from each category.

### 10. Sales by Time Shift

Classify sales into:

* **Morning** – before 12 PM
* **Afternoon** – 12 PM to 5 PM
* **Evening** – after 5 PM

Then calculate the number of orders in each shift.

## 🧠 SQL Concepts Used

This project demonstrates practical usage of:

* `CREATE DATABASE`
* `CREATE TABLE`
* `ALTER TABLE`
* `SELECT`
* `WHERE`
* `IS NULL`
* `DELETE`
* `DISTINCT`
* `COUNT()`
* `SUM()`
* `AVG()`
* `ROUND()`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`
* `CASE`
* Common Table Expressions (`WITH`)
* `EXTRACT()`
* Window Functions
* `RANK()`

## 📈 Key Learning Outcomes

Through this project, I practiced using SQL to:

* Clean and prepare raw sales data.
* Explore datasets and identify important dimensions.
* Analyze sales performance by category, customer, gender, and time.
* Write aggregation queries for business analysis.
* Use window functions to compare monthly performance.
* Convert business questions into SQL queries.

## 📁 Project Structure

```text
Retail-Sales-SQL-Analysis/
│
├── retail_sales_sql.sql
└── README.md
```

## 🚀 How to Run

1. Install PostgreSQL.
2. Open PostgreSQL using pgAdmin, DBeaver, or the PostgreSQL command line.
3. Open `retail_sales_sql.sql`.
4. Run the database and table creation queries.
5. Load the retail sales data into the `retail_sales` table.
6. Execute the remaining queries to perform the analysis.

## 👨‍💻 Project Purpose

This project was created to strengthen my practical SQL skills and demonstrate how SQL can be used for **data cleaning, exploratory analysis, and solving real-world business problems**.
