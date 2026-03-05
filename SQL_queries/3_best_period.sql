-- How does revenue evolve over time, and what seasonal patterns can be observed?


-- Top months 
SELECT
    month,
    SUM(revenue_usd) as total_revenue_usd,
    ROUND(SUM(revenue_usd) / (SELECT SUM(revenue_usd) FROM sales) * 100, 2) AS pct_of_total
FROM sales
GROUP BY month
ORDER BY total_revenue_usd DESC
;
-- Insight: October, December, and March generate the highest revenue.
-- Recommendation: Concentrate marketing campaigns and product launches during these peak months to maximize revenue.

-- Top seasons
SELECT
    season,
    SUM(revenue_usd) as total_revenue_usd,
    ROUND(SUM(revenue_usd) / (SELECT SUM(revenue_usd) FROM sales) * 100, 2) AS pct_of_total
FROM sales
GROUP BY season
ORDER BY total_revenue_usd DESC
;
-- Insight: Revenue is relatively evenly distributed across seasons, with Winter slightly leading.
-- Recommendation: Maintain consistent marketing efforts throughout the year while slightly increasing focus during Winter.


-- Evolution across the years
SELECT
    year,
    SUM(revenue_usd) as total_revenue_usd,
    ROUND(SUM(revenue_usd) / (SELECT SUM(revenue_usd) FROM sales) * 100, 2) AS pct_of_total
FROM sales
GROUP BY year
ORDER BY total_revenue_usd DESC
;
-- Insight: Revenue shows a gradual increase from 2022 to 2024, with 2024 leading overall.
-- Recommendation: Identify and replicate the key drivers behind 2024 performance to sustain future growth.