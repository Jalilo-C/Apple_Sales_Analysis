# 📊 Apple Sales Data Analysis Dashboard

## Overview
This project is a **comprehensive data analysis and visualization of Apple’s global sales**, built with **Python, PostgreSQL, and Power BI**. The dashboard explores key business questions including:  

- Who are the most valuable customers?  
- How does revenue evolve over time, and what seasonal patterns exist?  
- Which products drive the highest revenue?  
- How do discounts affect sales volume and revenue?  
- Are customers satisfied, and what drives returns or dissatisfaction?  

The goal is to demonstrate **end-to-end data analytics skills**: data cleaning, SQL analysis, and interactive business intelligence dashboards.

---

## Dataset
The analysis uses a **synthetic Apple sales dataset**, containing transaction-level data with the following fields:  

- Customer information: Country, Region, City, Segment, Age group, Previous device OS  
- Product information: Name, Category, Storage, Color  
- Sales information: Sale ID, Date, Units Sold, Revenue, Discounts, Customer Rating, Return Status  

**Note:** The dataset is pre-cleaned and includes additional columns for analysis such as `season` and `year_month`.

---

## Tools & Technologies
- **Python (pandas)**: Data cleaning, preparation, and table creation  
- **PostgreSQL**: Data modeling, primary/foreign keys, analytical SQL queries  
- **Power BI**: Interactive dashboard creation and visualization  

---

## Dashboard Features
1. **Main Dashboard**: KPIs including Total Revenue, Units Sold, Best Product, Average Rating.  
2. **Customer Insights**: Revenue by country, region, age group, and segment.  
3. **Revenue Trends**: Evolution over time (year/month) and seasonal patterns.  
4. **Product Performance**: Best product categories, storage options, and colors.  
5. **Discount & Customer Satisfaction**: Impact of discounts on revenue, returns analysis, and average ratings.

---

## Key Insights
- **Top Customers**: Countries like Hong Kong, Netherlands, and Mexico contribute most revenue.  
- **Revenue Trends**: Winter and certain months like October generate higher revenue.  
- **Product Success**: Mac products lead revenue, followed by iPhones; storage and color options influence sales.  
- **Discount Impact**: Higher discounts do not always increase sales volume; revenue per unit decreases with discount level.  
- **Customer Satisfaction**: Average rating is high (~4.0); returns are low and evenly distributed.

---

## How to Use
1. Load the dataset into PostgreSQL or Power BI.  
2. Run SQL queries to validate insights or create additional analyses.  
3. Open the `.pbix` file in Power BI to explore interactive dashboards.  
4. Apply slicers for Year, Region, Product Category, or Discount Level to filter data.

---

## Author
[CHAREF ABDELDJALIL] – Aspiring Data Analyst / Data Science Student  

---

## License
This project is open-source for educational purposes.
