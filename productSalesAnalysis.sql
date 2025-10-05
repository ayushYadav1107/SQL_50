
SELECT product_name, year, price
FROM Sales as s
LEFT JOIN
Product as P
ON
s.product_id = P.product_id