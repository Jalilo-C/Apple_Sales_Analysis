-- How do discounts impact sales volume and overall revenue?


SELECT
    discount_level,
    SUM(units_sold) AS total_units,
    SUM(revenue_usd) AS total_revenue_usd,
    ROUND(SUM(revenue_usd)/SUM(units_sold), 2) AS revenue_by_unit
FROM sales
GROUP BY discount_level
ORDER BY revenue_by_unit DESC
;
-- Insight: Higher discount levels are associated with lower revenue per unit,
-- which is expected due to reduced pricing. However, total units sold do not
-- significantly increase with higher discounts.
-- Recommendation: Discounts do not appear to significantly boost sales volume,
-- while they reduce revenue per unit. The company should use discounts strategically
-- (e.g., for promotions or inventory clearance) rather than relying on them as a primary growth driver.