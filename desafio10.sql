SELECT  products.ProductName AS `Produto`,
        MIN(order_details.Quantity) AS `Mínima`,
        MAX(order_details.Quantity) AS `Máxima`,
        ROUND(AVG(order_details.Quantity), 2) AS `Média`
FROM w3schools.products
JOIN w3schools.order_details ON products.ProductID = order_details.ProductID
GROUP BY products.ProductName
HAVING ROUND(AVG(order_details.Quantity), 2) > 20.00
ORDER BY  `Média`,
          `Produto`;
