SELECT TOP (5)
    category,
    inventory_pressure,
    state,
    discount_percent,
    sales_event,
    brand_type
FROM dbo.Sales data
ORDER BY
    CASE inventory_pressure
        WHEN 'High' THEN 1
        WHEN 'Low' THEN 2
        ELSE 3
    END,
    CASE brand_type
        WHEN 'Premium' THEN 1
        WHEN 'Mass' THEN 2
        ELSE 3
    END,
    discount_percent DESC;