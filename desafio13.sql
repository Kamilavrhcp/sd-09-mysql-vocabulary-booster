SELECT  products.ProductName AS `Produto`,
        products.Price AS `Preço`
FROM w3schools.products
JOIN w3schools.order_details ON products.ProductID = order_details.ProductID
GROUP BY  `Produto`,
          `Preço`,
          order_details.Quantity
HAVING order_details.Quantity > 80
ORDER BY products.ProductName;
