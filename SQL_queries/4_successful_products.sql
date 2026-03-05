-- What are the most successful products?


-- Top product names
SELECT
    P.product_name,
    SUM(S.units_sold) AS total_units,
    SUM(S.revenue_usd) as total_revenue_usd
FROM products P 
JOIN sales S 
  ON P.product_id = S.product_id
GROUP BY P.product_name
ORDER BY total_revenue_usd DESC
;
-- Insight: The Mac Pro (M2 Ultra) generates the highest revenue among all products.
-- Recommendation: Further analysis is needed to determine whether this is driven by high pricing or strong demand before making investment decisions.


-- Top product categories
SELECT
    P.category,
    SUM(S.units_sold) AS total_units,
    SUM(S.revenue_usd) as total_revenue_usd,
    ROUND(SUM(S.revenue_usd) / (SELECT SUM(revenue_usd) FROM sales) * 100, 2) AS pct_of_total
FROM products P 
JOIN sales S 
  ON P.product_id = S.product_id
GROUP BY P.category
ORDER BY total_revenue_usd DESC
;
-- Insight: The Mac category contributes nearly 50% of total revenue, followed by iPhone at around 30%.
-- Recommendation: Macs are a major revenue driver; however, further analysis on sales volume and margins is required to confirm profitability.


-- Top storage
SELECT
    P.storage,
    SUM(S.units_sold) AS total_units,
    SUM(S.revenue_usd) as total_revenue_usd
FROM products P
JOIN sales S 
  ON P.product_id = S.product_id
WHERE P.storage != 'Unknown'
GROUP BY P.storage
ORDER BY total_revenue_usd DESC
;
-- Insight: Storage with SSD generates the highest revenue, with 512GB quantity slightly leading.
-- Recommendation: Invest more on storage with SSD in order to maximize profit.


-- Top product colors
SELECT
    P.color,
    SUM(S.units_sold) AS total_units,
    SUM(S.revenue_usd) as total_revenue_usd
FROM products P
JOIN sales S 
  ON P.product_id = S.product_id
WHERE P.color != 'Unknown'
GROUP BY P.color
ORDER BY total_revenue_usd DESC
;
-- Insight: Neutral and premium colors such as Silver, Starlight, Midnight, and Space Gray generate the highest revenue.
-- Recommendation: These colors likely reflect customer preferences for classic designs; maintaining availability of these options is important for sales performance.