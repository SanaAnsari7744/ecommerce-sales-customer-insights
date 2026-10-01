# E-Commerce Sales & Customer Insights Analysis

## 📌 Project Overview

This project analyzes e-commerce sales and customer data using **MySQL** to identify revenue trends, customer spending patterns, product performance, and city-wise customer insights.

The project demonstrates practical SQL skills such as **Joins, Aggregations, CTEs, Window Functions, DENSE_RANK(), CASE statements, and Date Functions**.

## 🛠️ Tools & Technologies

- MySQL
- MySQL Workbench
- SQL

## 🗂️ Database Structure

The database contains 5 main tables:

- **Customers** — Customer information and city details
- **Products** — Product names, categories, and prices
- **Orders** — Customer orders and order dates
- **Order_Items** — Products included in each order
- **Payments** — Payment methods and payment status

## 🔗 Table Relationships

- Customers → Orders
- Orders → Order_Items
- Products → Order_Items
- Orders → Payments

## 📊 Business Questions Analyzed

- What is the monthly revenue?
- How many orders are placed each month?
- What is the Average Order Value (AOV)?
- Which products sell the most?
- What are the top 3 products in each category?
- What is the Customer Lifetime Value (CLV)?
- Which customers are repeat customers?
- Which customers spend the most in each city?
- Which cities generate the highest revenue?
- Which payment methods are used most frequently?

## 🧠 SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- JOIN
- LEFT JOIN
- Aggregate Functions
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- DENSE_RANK()
- PARTITION BY
- DATE_FORMAT()
- COALESCE()
- Subqueries

## 📈 Key Analysis Areas
## 📸 Project Screenshots

### Database Schema
![Database Schema](screenshots/database-schema.png)

### Monthly Revenue Analysis
![Monthly Revenue](screenshots/monthly-revenue.png)

### Top 3 Products per Category
![Top Products](screenshots/top-products.png)

### Customer Lifetime Value (CLV)
![Customer CLV](screenshots/customer-clv.png)

### City-wise Top Spenders
![City-wise Analysis](screenshots/city-top-spenders.png)

### Monthly Revenue
Analyzed monthly revenue and order trends to understand sales performance over time.

### Product Performance
Identified top-selling products and ranked products within each category.

### Customer Analysis
Calculated customer lifetime value, total spending, order frequency, and repeat customer behavior.

### City-wise Analysis
Used `DENSE_RANK()` with `PARTITION BY` to identify top-spending customers within each city.

## 📁 Project Files

- `ecommerce_sales_customer_insights.sql` — Complete SQL database, sample data, and analysis queries.

## 🎯 Project Objective

The goal of this project is to demonstrate practical SQL and data-analysis skills through a realistic e-commerce business case.

---

**Created by Sana Ansari**  
B.Sc. Computer Science.
