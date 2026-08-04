SELECT
    Name,
    Product_Purchased,
    Amount,
    COUNT(*) AS occurrences
FROM customer_sales
GROUP BY
    Name,
    Product_Purchased,
    Amount
HAVING COUNT(*) > 1;
