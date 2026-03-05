-- Are customers satisfied, whats the impact on returns?


-- Average rating
SELECT ROUND(AVG(customer_rating), 1) AS avg_rating
FROM sales
;
-- Insight: Customer ratings are consistently high across all product categories, with only minor variations.
-- Recommendation: Maintain current product quality and customer experience standards.


-- Average rating by product category
SELECT
    P.category AS category,
    ROUND(AVG(S.customer_rating), 1) AS avg_rating
FROM products P
JOIN sales S
  ON P.product_id = S.product_id
GROUP BY P.category
ORDER BY avg_rating DESC
;
-- Insight: The average rating is high (4.0) for each product, indicating customer satisfaction for each product.
-- Recommendation: Maintain current product quality and customer experience standards.


-- Returns analysis
SELECT
    return_status,
    COUNT(*) AS orders_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM sales), 2) AS pct
FROM sales
GROUP BY return_status
;
-- Insight: The majority of orders are kept, with a smaller percentage returned or exchanged.
-- Recommendation: Returns should be monitored closely as they directly impact revenue and customer experience.


-- Correlation between returns and customers rating
SELECT
    return_status,
    ROUND(AVG(customer_rating), 1) AS avg_rating
FROM sales
GROUP BY return_status
;
-- Insight: Customer ratings are similar across all return statuses, suggesting that returns are not strongly driven by customer satisfaction.
-- Recommendation: Returns may be influenced by other factors such as product expectations, delivery issues, or pricing; further investigation is needed.