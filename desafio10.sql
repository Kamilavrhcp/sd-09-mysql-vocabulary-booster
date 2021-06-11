SELECT
    ProductName AS `Produto`,
    MIN(Quantity) AS `Mínima`,
    MAX(Quantity) AS `Máxima`,
    ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.orders
JOIN w3schools.order_details ON w3schools.orders.OrderID = w3schools.order_details.OrderID
JOIN w3schools.products ON w3schools.order_details.ProductID = w3schools.products.ProductID
GROUP BY ProductName
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
