SELECT 
    p.category,
    SUM(o.quantity * p.price) AS category_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;
