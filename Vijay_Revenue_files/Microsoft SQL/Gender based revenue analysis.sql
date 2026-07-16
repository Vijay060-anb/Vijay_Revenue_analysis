SELECT TOP (10)
    customer_gender,
    state,
    SUM(revenue) AS Total_Revenue,
    COUNT(*) AS Total_Orders,
    AVG(revenue) AS Avg_Revenue
FROM dbo.Sales_data
GROUP BY
    customer_gender,
    state
ORDER BY
    Total_Revenue DESC;