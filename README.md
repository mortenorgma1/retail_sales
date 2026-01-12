# Retail Sales Performance Analysis (PostgreSQL)

## Project Overview
This project analyzes retail sales data using **PostgreSQL** to answer common business questions around revenue performance, product success, and customer value.

The goal of the analysis is to provide **clear, reliable metrics** that can support decision-making in sales, marketing, and inventory planning.

---

## Dataset Description

The database follows a classic retail schema:

- **customers** – customer details (name, city)
- **products** – product information (category, price)
- **orders** – customer orders with order dates
- **order_items** – line-level sales data (product, quantity)

Revenue is calculated as:

revenue = quantity × price


---

## Analysis Performed

### 1️ Monthly Revenue Trend
- Calculates total revenue per month
- Used to identify sales growth or seasonality

**File:** `01_monthly_revenue.sql`

---

### 2️ Top Products by Revenue
- Ranks products based on total revenue generated
- Identifies best-performing products

**File:** `02_top_products_by_revenue.sql`

---

### 3️ Revenue by Product Category
- Aggregates revenue at the category level
- Helps evaluate category-level performance

**File:** `03_revenue_by_category.sql`

---

### 4️ Top Customers by Spend
- Calculates total spend per customer
- Identifies high-value customers

**File:** `04_top_customers_by_spend.sql`

---

## Tools & Skills Used
- PostgreSQL
- SQL joins
- Aggregations (`SUM`, `COUNT`)
- Date functions (`DATE_TRUNC`)
- Grouping and ordering
- Business-oriented query design


---

## Key Takeaways
- Order items act as the core **fact table**
- Revenue metrics were aggregated at the correct business grain
- Queries were designed to be readable, reusable, and scalable
- Results directly support real-world business questions





