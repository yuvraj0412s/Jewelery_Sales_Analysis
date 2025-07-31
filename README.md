# 💍 Jewelry Sales Data Analysis Using Python & SQL

![Python](https://img.shields.io/badge/Python-3.8%2B-blue?logo=python&logoColor=white&style=flat-square)
![SQL](https://img.shields.io/badge/SQL-MySQL-lightblue?logo=mysql&logoColor=white&style=flat-square)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-brightgreen?logo=pandas&logoColor=white&style=flat-square)
![SQLite](https://img.shields.io/badge/SQLite-Embedded-lightgrey?logo=sqlite&logoColor=003B57&style=flat-square)
![Data Cleaning](https://img.shields.io/badge/Data--Cleaning-Done-brightgreen?style=flat-square)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-orange?logo=matplotlib&logoColor=white&style=flat-square)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat-square)

---

## 🧠 Project Objective

This project focuses on analyzing a jewelry e-commerce dataset to extract meaningful insights about user purchases, product categories, and sales performance.  
Python (Pandas) is used for data cleaning and preprocessing, while SQL queries handle complex data retrieval, aggregation, joining, and optimization.  

---

## 🚀 What I Did

- Cleaned and preprocessed raw sales data with Python to prepare it for database import  
- Designed and created relational database tables (`users`, `products`, and `jewelry_sales`)  
- Performed advanced SQL queries including filtering, grouping, aggregation, and multiple types of JOINs  
- Used subqueries and created SQL views to simplify and speed up analysis  
- Optimized query performance by adding indexes on key columns  
- Extracted key business insights such as total revenue, popular categories, and material-wise sales  

---

## 🗂️ Dataset Overview

| Field Name    | Description                                |
|---------------|--------------------------------------------|
| event_time    | Timestamp of the event                      |
| user_id       | Unique user identifier                      |
| item_id       | Unique item identifier                      |
| quantity      | Quantity of items in the event              |
| product_id    | Product identifier                          |
| category      | Product category (e.g., Ring, Necklace)    |
| is_purchase   | Flag indicating purchase (1 = purchase)    |
| price         | Price per item                             |
| session_id    | User session identifier                     |
| unknown_flag  | Unknown data flag                           |
| color         | Item color                                 |
| material      | Item material (e.g., Gold, Silver)          |
| gem           | Gemstone type                              |

---

## 🧹 Data Cleaning (Python)

The dataset was cleaned using Pandas to ensure consistent column names and prepare for further SQL analysis.

```python
import pandas as pd

df = pd.read_csv("jewelry.csv")

df.columns = [
    "event_time", "user_id", "item_id", "quantity", "product_id", 
    "category", "is_purchase", "price", "session_id", 
    "unknown_flag", "color", "material", "gem"
]

df.to_csv("jewelry_cleaned.csv", index=False)
```
---

## 🎯 Skills & Tools Demonstrated
Python: Data cleaning and CSV manipulation using Pandas
SQL: Complex query writing including JOINs, subqueries, grouping, aggregation
Database Design: Creating normalized tables and views for modular querying
Query Optimization: Using indexes to speed up database performance
Data Analysis: Extracting actionable business insights from sales data
Data Visualization: (Optional) Plotting charts with Matplotlib if applicable
