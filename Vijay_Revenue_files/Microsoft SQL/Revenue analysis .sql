SELECT * FROM Sales_data;

WITH Overall AS
(
    SELECT
        customer_age,
        category,
        state,
        revenue,

        CASE
            WHEN customer_age BETWEEN 18 AND 25 THEN 'TEENAGE'
            WHEN customer_age BETWEEN 26 AND 35 THEN 'YOUNG'
            WHEN customer_age BETWEEN 36 AND 45 THEN 'MIDDLE_AGE'
            WHEN customer_age BETWEEN 46 AND 55 THEN 'ELDER_AGE'
            ELSE 'OLDAGE'
        END AS AGE_GROUP

    FROM dbo.Sales_data
)

SELECT TOP (5)
    AGE_GROUP,
    category,
    state,
    SUM(revenue) AS STATE_REVENUE
FROM Overall
GROUP BY
    AGE_GROUP,
    category,
    state
ORDER BY
    STATE_REVENUE DESC;