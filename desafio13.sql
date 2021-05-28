SELECT 
    ProductName AS 'Produto',
    Price AS 'Preço'
FROM
    w3schools.products AS p

INNER JOIN
w3schools.order_details AS o_d ON o_d.ProductID = p.ProductID

WHERE o_d.Quantity > 80

GROUP BY ProductName, Price

ORDER BY ProductName;
    