
-- Retail Business Analysis SQL Queries

-- 1. Total Sales and Profit
SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore;


-- 2. Category-wise Sales, Profit and Profit Margin
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin
FROM superstore
GROUP BY Category
ORDER BY Profit_Margin DESC;


-- 3. Sub-Category-wise Profitability
SELECT
    [Sub-Category],
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin
FROM superstore
GROUP BY [Sub-Category]
ORDER BY Total_Profit ASC;


-- 4. Region-wise Sales and Profit
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;


-- 5. Discount vs Profit
SELECT
    ROUND(Discount * 100, 0) AS Discount_Percent,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;


-- 6. Top 10 Products by Profit
SELECT
    [Product Name],
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY [Product Name]
ORDER BY Total_Profit DESC
LIMIT 10;


-- 7. Bottom 10 Products by Profit
SELECT
    [Product Name],
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY [Product Name]
ORDER BY Total_Profit ASC
LIMIT 10;
