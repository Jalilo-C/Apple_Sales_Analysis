-- Which customers drives the most revenue?


-- Top countries
SELECT
    C.country AS country_name,
    SUM(S.revenue_usd) as total_revenue_usd,
    ROUND(SUM(S.revenue_usd) / (SELECT SUM(revenue_usd) FROM sales) * 100, 2) AS pct_of_total
FROM customers C 
JOIN sales S 
  ON C.customer_id = S.customer_id
GROUP BY C.country
ORDER BY total_revenue_usd DESC
;
-- Insight: Hong Kong generates the highest revenue, followed by Netherlands and Mexico.
-- Recommendation: Focus marketing and promotions on these high-revenue countries to maximize sales.


-- Top regions
SELECT
    C.region AS region_name,
    SUM(S.revenue_usd) as total_revenue_usd,
    ROUND(SUM(S.revenue_usd) / (SELECT SUM(revenue_usd) FROM sales) * 100, 2) AS pct_of_total
FROM customers C 
JOIN sales S 
  ON C.customer_id = S.customer_id
GROUP BY C.region
ORDER BY total_revenue_usd DESC
;
-- Insight: Europe contributes 35% of total revenue, followed by Asia with 30%.
-- Recommendation: Allocate resources and sales campaigns strategically in these regions to capture more revenue.


-- Top age groups
SELECT
    C.customer_age_group as age_group,
    SUM(S.revenue_usd) as total_revenue_usd,
    ROUND(SUM(S.revenue_usd) / (SELECT SUM(revenue_usd) FROM sales) * 100, 2) AS pct_of_total
FROM customers C 
JOIN sales S 
  ON C.customer_id = S.customer_id
GROUP BY C.customer_age_group
ORDER BY total_revenue_usd DESC
;
-- Insight: Customers aged 25–34 generate the highest revenue, followed by 55+.
-- Recommendation: Target these age groups with tailored marketing campaigns and product offerings.


-- Top segments
SELECT
    C.customer_segment as segment,
    SUM(S.revenue_usd) as total_revenue_usd,
    ROUND(SUM(S.revenue_usd) / (SELECT SUM(revenue_usd) FROM sales) * 100, 2) AS pct_of_total
FROM customers C 
JOIN sales S 
  ON C.customer_id = S.customer_id
GROUP BY C.customer_segment
ORDER BY total_revenue_usd DESC
;
-- Insight: Revenue is relatively evenly distributed across segments, with Education slightly leading.
-- Recommendation: Maintain consistent marketing efforts across all customer segments.